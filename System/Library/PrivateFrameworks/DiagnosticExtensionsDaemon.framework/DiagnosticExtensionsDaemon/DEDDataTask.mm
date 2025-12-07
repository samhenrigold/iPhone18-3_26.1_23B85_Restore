@interface DEDDataTask
- (DEDDataTask)initWithDataTask:(id)task;
- (id)description;
@end

@implementation DEDDataTask

- (DEDDataTask)initWithDataTask:(id)task
{
  taskCopy = task;
  v8.receiver = self;
  v8.super_class = DEDDataTask;
  v5 = [(DEDDataTask *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(DEDDataTask *)v5 setDataTask:taskCopy];
    [taskCopy resume];
  }

  return v6;
}

- (id)description
{
  v15[4] = *MEMORY[0x277D85DE8];
  v14[0] = @"dataTask";
  dataTask = [(DEDDataTask *)self dataTask];
  v15[0] = dataTask;
  v14[1] = @"data";
  data = [(DEDDataTask *)self data];
  v15[1] = data;
  v14[2] = @"response";
  response = [(DEDDataTask *)self response];
  v15[2] = response;
  v14[3] = @"isFinished";
  isFinished = [(DEDDataTask *)self isFinished];
  v7 = @"false";
  if (isFinished)
  {
    v7 = @"true";
  }

  v15[3] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:4];

  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"%@: %@", v11, v8];

  return v12;
}

@end