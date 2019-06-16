Alamofire.upload(
    multipartFormData: { multipartFormData in
    multipartFormData.append((userId.data(using: String.Encoding.utf8, allowLossyConversion: false))!, withName: "userID")

       for (index,image) in self.spottingImages.enumerated() {
          if let imageData = UIImageJPEGRepresentation(image, 1) {
            multipartFormData.append(imageData, withName: "filename[\(index)]", fileName: "filename.jpg", mimeType: "image/jpeg")  }
                                    }
    },
                to: url,
                encodingCompletion: { encodingResult in
                    switch encodingResult {
                    case .success(let upload, _, _):
                        print(upload)
                    case .failure(let encodingError):
                        print(encodingError)}
            })
