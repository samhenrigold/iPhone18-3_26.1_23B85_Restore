@interface NSError(KCJoiningError)
+ (id)errorWithJoiningError:()KCJoiningError format:;
+ (id)errorWithJoiningError:()KCJoiningError format:arguments:;
@end

@implementation NSError(KCJoiningError)

+ (id)errorWithJoiningError:()KCJoiningError format:
{
  v9 = [MEMORY[0x277CCA9B8] errorWithJoiningError:a3 format:a4 arguments:{&a9, a6, a7, a8}];

  return v9;
}

+ (id)errorWithJoiningError:()KCJoiningError format:arguments:
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CCA9B8];
  v8 = a4;
  v9 = [v7 alloc];
  v14 = *MEMORY[0x277CCA450];
  v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v8 arguments:a5];

  v15[0] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v12 = [v9 initWithJoiningError:a3 userInfo:v11];

  return v12;
}

@end