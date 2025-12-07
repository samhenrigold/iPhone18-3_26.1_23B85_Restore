@interface SCNActionReference
- (SCNActionReference)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCNActionReference

- (void)dealloc
{
  [(SCNActionReference *)self setReferenceName:0];
  v3.receiver = self;
  v3.super_class = SCNActionReference;
  [(SCNActionGroup *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SCNActionReference;
  v4 = [(SCNActionGroup *)&v6 copyWithZone:zone];
  [v4 setReferenceName:{-[SCNActionReference referenceName](self, "referenceName")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:-[SCNActionReference referenceName](self forKey:{"referenceName"), @"referenceName"}];
  v5.receiver = self;
  v5.super_class = SCNActionReference;
  [(SCNActionGroup *)&v5 encodeWithCoder:coder];
}

- (SCNActionReference)initWithCoder:(id)coder
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = SCNActionReference;
  v4 = [(SCNActionGroup *)&v10 init];
  if (!v4)
  {
    goto LABEL_7;
  }

  -[SCNActionReference setReferenceName:](v4, "setReferenceName:", [coder decodeObjectOfClass:objc_opt_class() forKey:@"referenceName"]);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v8 = scn_default_log(isKindOfClass, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SCNActionReference initWithCoder:];
    }

    goto LABEL_7;
  }

  v7 = [objc_msgSend(coder "assetCatalog")];
  if (!v7)
  {
LABEL_7:

    return 0;
  }

  v11[0] = v7;
  -[SCNActionGroup setupWithActions:](v4, "setupWithActions:", [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1]);
  return v4;
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end