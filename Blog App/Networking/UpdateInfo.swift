import Foundation

import Alamofire
import PromiseKit

class UpdateInfo {
  class func get() -> Promise<Versions> {
    return Promise { seal in
      Alamofire.request("https://automatic-update-demo-e5449.firebaseio.com/.json")
        .validate()
        .responseJSON { response in
          switch response.result {
          case .success(let json):
            guard let _ = json as? [String: Any], let jsonData = response.data else {
              return seal.reject(AFError.responseValidationFailed(reason: .dataFileNil))
            }

            let decoder = JSONDecoder()

            do {
              let versions = try decoder.decode(Versions.self, from: jsonData)

              seal.fulfill(versions)

            } catch {
              seal.reject(error)
            }

          case .failure(let error):
            seal.reject(error)
          }
      }
    }
  }
}
