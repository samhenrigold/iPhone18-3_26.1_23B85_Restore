@interface CRCodeRedeemerController
+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage;
+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage roi:(CGRect)roi;
- (CRCodeRedeemerController)init;
- (CRCodeRedeemerControllerDelegate)delegate;
- (void)cameraReader:(id)reader didFailWithError:(id)error;
- (void)cameraReader:(id)reader didRecognizeObjects:(id)objects;
- (void)cameraReaderDidCancel:(id)cancel;
- (void)cameraReaderDidDisplayMessage:(id)message;
- (void)cameraReaderDidFindTarget:(id)target;
- (void)showMessage:(id)message color:(id)color style:(unint64_t)style duration:(double)duration;
@end

@implementation CRCodeRedeemerController

- (CRCodeRedeemerController)init
{
  v10 = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = CRCodeRedeemerController;
  v2 = [(CRCameraReader *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v7.receiver = v2;
    v7.super_class = CRCodeRedeemerController;
    [(CRCameraReader *)&v7 setDelegate:v2];
    v9 = @"CROutputTypeiTunesCode";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v6.receiver = v3;
    v6.super_class = CRCodeRedeemerController;
    [(CRCameraReader *)&v6 setOutputObjectTypes:v4];

    [(CRCodeRedeemerController *)v3 setDelegateQueue:?];
  }

  return v3;
}

+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage
{
  v4 = *&image->width;
  v7 = *&image->data;
  v5 = [CRCodeRedeemerController findCodeInImage:v7 maxStage:v4 roi:?];

  return v5;
}

+ (id)findCodeInImage:(vImage_Buffer *)image maxStage:(unint64_t)stage roi:(CGRect)roi
{
  v5 = *&image->width;
  v8 = *&image->data;
  v6 = [CRCameraReader findCodeInImage:v8 maxStage:v5 roi:?];

  return v6;
}

- (void)showMessage:(id)message color:(id)color style:(unint64_t)style duration:(double)duration
{
  v6.receiver = self;
  v6.super_class = CRCodeRedeemerController;
  [(CRCameraReader *)&v6 showMessage:message color:color style:style duration:duration];
}

- (void)cameraReader:(id)reader didFailWithError:(id)error
{
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObject:? forKey:?];
  delegate = [(CRCodeRedeemerController *)self delegate];
  [delegate codeRedeemerController:? didEndWithInfo:?];
}

- (void)cameraReader:(id)reader didRecognizeObjects:(id)objects
{
  objectsCopy = objects;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = objectsCopy;
  v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = MEMORY[0];
    do
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(8 * i);
        type = [v10 type];
        v12 = [type isEqualToString:?];

        if (v12)
        {
          stringValue = [v10 stringValue];
          [dictionary setObject:? forKey:?];
        }
      }

      v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v7);
  }

  delegate = [(CRCodeRedeemerController *)self delegate];
  [delegate codeRedeemerController:? didEndWithInfo:?];
}

- (void)cameraReaderDidCancel:(id)cancel
{
  delegate = [(CRCodeRedeemerController *)self delegate];
  [delegate codeRedeemerControllerDidCancel:?];
}

- (void)cameraReaderDidDisplayMessage:(id)message
{
  delegate = [(CRCodeRedeemerController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CRCodeRedeemerController *)self delegate];
    [delegate2 codeRedeemerControllerDidDisplayMessage:?];
  }
}

- (void)cameraReaderDidFindTarget:(id)target
{
  delegate = [(CRCodeRedeemerController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(CRCodeRedeemerController *)self delegate];
    [delegate2 codeRedeemerControllerDidFindBox:?];
  }
}

- (CRCodeRedeemerControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end