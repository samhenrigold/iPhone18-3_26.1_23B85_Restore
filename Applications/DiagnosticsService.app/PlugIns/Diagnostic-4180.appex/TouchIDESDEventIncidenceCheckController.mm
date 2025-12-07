@interface TouchIDESDEventIncidenceCheckController
- (void)start;
@end

@implementation TouchIDESDEventIncidenceCheckController

- (void)start
{
  if ((-[TouchIDESDEventIncidenceCheckController isCancelled](self, "isCancelled") & 1) != 0 || (-[TouchIDESDEventIncidenceCheckController inputs](self, "inputs"), v3 = objc_claimAutoreleasedReturnValue(), [v3 biokitOptions], v4 = objc_claimAutoreleasedReturnValue(), +[TouchIDManager runTouchIDDiagnostic:options:](TouchIDManager, "runTouchIDDiagnostic:options:", 5, v4), v9 = objc_claimAutoreleasedReturnValue(), v4, v3, !v9))
  {
    v9 = 0;
  }

  else if (([(TouchIDESDEventIncidenceCheckController *)self isCancelled]& 1) == 0)
  {
    v5 = [v9 objectForKeyedSubscript:@"data"];
    result = [(TouchIDESDEventIncidenceCheckController *)self result];
    [result setData:v5];

    v7 = [v9 objectForKeyedSubscript:@"testStatus"];
    result2 = [(TouchIDESDEventIncidenceCheckController *)self result];
    [result2 setStatusCode:v7];
  }

  [(TouchIDESDEventIncidenceCheckController *)self setFinished:1];
}

@end