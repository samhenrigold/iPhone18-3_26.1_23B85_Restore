@interface SUControllerApply
- (SUControllerApply)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUControllerApply

- (SUControllerApply)initWithCoder:(id)coder
{
  v19[6] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = SUControllerApply;
  v5 = [(SUControllerApply *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v19[3] = objc_opt_class();
    v19[4] = objc_opt_class();
    v19[5] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:6];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"descriptor"];
    descriptor = v5->_descriptor;
    v5->_descriptor = v9;

    v11 = MEMORY[0x277CBEB98];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
    v13 = [v11 setWithArray:v12];

    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"progress"];
    progress = v5->_progress;
    v5->_progress = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  descriptor = [(SUControllerApply *)self descriptor];
  [coderCopy encodeObject:descriptor forKey:@"descriptor"];

  progress = [(SUControllerApply *)self progress];
  [coderCopy encodeObject:progress forKey:@"progress"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  descriptor = [(SUControllerApply *)self descriptor];
  progress = [(SUControllerApply *)self progress];
  v6 = [v3 stringWithFormat:@"Descriptor: %@\nProgress: %@", descriptor, progress];

  return v6;
}

@end