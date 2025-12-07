@interface MLCMultiheadAttentionDescriptor
+ (MLCMultiheadAttentionDescriptor)descriptorWithModelDimension:(NSUInteger)modelDimension headCount:(NSUInteger)headCount;
+ (MLCMultiheadAttentionDescriptor)descriptorWithModelDimension:(NSUInteger)modelDimension keyDimension:(NSUInteger)keyDimension valueDimension:(NSUInteger)valueDimension headCount:(NSUInteger)headCount dropout:(float)dropout hasBiases:(BOOL)hasBiases hasAttentionBiases:(BOOL)hasAttentionBiases addsZeroAttention:(BOOL)addsZeroAttention;
- (BOOL)isEqual:(id)equal;
- (MLCMultiheadAttentionDescriptor)initWithModelDimension:(unint64_t)dimension keyDimension:(unint64_t)keyDimension valueDimension:(unint64_t)valueDimension headCount:(unint64_t)count dropout:(float)dropout hasBias:(BOOL)bias hasAttentionBias:(BOOL)attentionBias addsZeroAttention:(BOOL)self0;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation MLCMultiheadAttentionDescriptor

+ (MLCMultiheadAttentionDescriptor)descriptorWithModelDimension:(NSUInteger)modelDimension keyDimension:(NSUInteger)keyDimension valueDimension:(NSUInteger)valueDimension headCount:(NSUInteger)headCount dropout:(float)dropout hasBiases:(BOOL)hasBiases hasAttentionBiases:(BOOL)hasAttentionBiases addsZeroAttention:(BOOL)addsZeroAttention
{
  v10 = hasAttentionBiases;
  v11 = hasBiases;
  v17 = [self alloc];
  LOBYTE(v21) = addsZeroAttention;
  *&v18 = dropout;
  v19 = [v17 initWithModelDimension:modelDimension keyDimension:keyDimension valueDimension:valueDimension headCount:headCount dropout:v11 hasBias:v10 hasAttentionBias:v18 addsZeroAttention:v21];

  return v19;
}

+ (MLCMultiheadAttentionDescriptor)descriptorWithModelDimension:(NSUInteger)modelDimension headCount:(NSUInteger)headCount
{
  LOBYTE(v6) = 0;
  v4 = [[self alloc] initWithModelDimension:modelDimension keyDimension:modelDimension valueDimension:modelDimension headCount:headCount dropout:1 hasBias:0 hasAttentionBias:0.0 addsZeroAttention:v6];

  return v4;
}

- (MLCMultiheadAttentionDescriptor)initWithModelDimension:(unint64_t)dimension keyDimension:(unint64_t)keyDimension valueDimension:(unint64_t)valueDimension headCount:(unint64_t)count dropout:(float)dropout hasBias:(BOOL)bias hasAttentionBias:(BOOL)attentionBias addsZeroAttention:(BOOL)self0
{
  selfCopy = self;
  if (dropout < 0.0 || dropout > 1.0)
  {
    v14 = [MLCLog framework:dimension];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionDescriptor initWithModelDimension:a2 keyDimension:? valueDimension:? headCount:? dropout:? hasBias:? hasAttentionBias:? addsZeroAttention:?];
    }

LABEL_11:

    v17 = 0;
    goto LABEL_12;
  }

  if (!count || dimension % count)
  {
    v14 = [MLCLog framework:dimension];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MLCMultiheadAttentionDescriptor initWithModelDimension:a2 keyDimension:? valueDimension:? headCount:? dropout:? hasBias:? hasAttentionBias:? addsZeroAttention:?];
    }

    goto LABEL_11;
  }

  v24.receiver = self;
  v24.super_class = MLCMultiheadAttentionDescriptor;
  v23 = [(MLCMultiheadAttentionDescriptor *)&v24 init];
  if (v23)
  {
    *(v23 + 3) = dimension;
    *(v23 + 4) = keyDimension;
    *(v23 + 5) = valueDimension;
    *(v23 + 6) = count;
    *(v23 + 4) = dropout;
    v23[8] = bias;
    v23[9] = attentionBias;
    v23[10] = attention;
    *(v23 + 11) = 0;
  }

  selfCopy = v23;
  v17 = selfCopy;
LABEL_12:

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  modelDimension = [(MLCMultiheadAttentionDescriptor *)self modelDimension];
  keyDimension = [(MLCMultiheadAttentionDescriptor *)self keyDimension];
  valueDimension = [(MLCMultiheadAttentionDescriptor *)self valueDimension];
  headCount = [(MLCMultiheadAttentionDescriptor *)self headCount];
  [(MLCMultiheadAttentionDescriptor *)self dropout];
  v11 = [v3 stringWithFormat:@"%@: { modelDimension=%lu : keyDimension=%lu : valueDimension=%lu : headCount=%lu : dropout=%f : hasBias=%d : hasAttentionBias=%d : addsZeroAttention=%d }", v5, modelDimension, keyDimension, valueDimension, headCount, v10, -[MLCMultiheadAttentionDescriptor hasBiases](self, "hasBiases"), -[MLCMultiheadAttentionDescriptor hasAttentionBiases](self, "hasAttentionBiases"), -[MLCMultiheadAttentionDescriptor addsZeroAttention](self, "addsZeroAttention")];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    modelDimension = [v5 modelDimension];
    if (modelDimension == -[MLCMultiheadAttentionDescriptor modelDimension](self, "modelDimension") && (v7 = [v5 keyDimension], v7 == -[MLCMultiheadAttentionDescriptor keyDimension](self, "keyDimension")) && (v8 = objc_msgSend(v5, "headCount"), v8 == -[MLCMultiheadAttentionDescriptor headCount](self, "headCount")) && (objc_msgSend(v5, "dropout"), v10 = v9, -[MLCMultiheadAttentionDescriptor dropout](self, "dropout"), v10 == v11) && (v12 = objc_msgSend(v5, "hasBiases"), v12 == -[MLCMultiheadAttentionDescriptor hasBiases](self, "hasBiases")) && (v13 = objc_msgSend(v5, "hasAttentionBiases"), v13 == -[MLCMultiheadAttentionDescriptor hasAttentionBiases](self, "hasAttentionBiases")))
    {
      addsZeroAttention = [v5 addsZeroAttention];
      v14 = addsZeroAttention ^ [(MLCMultiheadAttentionDescriptor *)self addsZeroAttention]^ 1;
    }

    else
    {
      LOBYTE(v14) = 0;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
  }

  return v14;
}

- (unint64_t)hash
{
  v14 = 0;
  modelDimension = [(MLCMultiheadAttentionDescriptor *)self modelDimension];
  [(MLCMultiheadAttentionDescriptor *)self keyDimension];
  [(MLCMultiheadAttentionDescriptor *)self valueDimension];
  [(MLCMultiheadAttentionDescriptor *)self headCount];
  v4 = MEMORY[0x277CCABB0];
  [(MLCMultiheadAttentionDescriptor *)self dropout];
  v5 = [v4 numberWithFloat:?];
  [v5 hash];
  [(MLCMultiheadAttentionDescriptor *)self hasBiases];
  [(MLCMultiheadAttentionDescriptor *)self hasAttentionBiases];
  [(MLCMultiheadAttentionDescriptor *)self addsZeroAttention];
  hashCombine_1(&v14, v6, v7, v8, v9, v10, v11, v12, modelDimension);

  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  modelDimension = [(MLCMultiheadAttentionDescriptor *)self modelDimension];
  keyDimension = [(MLCMultiheadAttentionDescriptor *)self keyDimension];
  valueDimension = [(MLCMultiheadAttentionDescriptor *)self valueDimension];
  headCount = [(MLCMultiheadAttentionDescriptor *)self headCount];
  [(MLCMultiheadAttentionDescriptor *)self dropout];
  v10 = v9;
  hasBiases = [(MLCMultiheadAttentionDescriptor *)self hasBiases];
  hasAttentionBiases = [(MLCMultiheadAttentionDescriptor *)self hasAttentionBiases];
  LOBYTE(v15) = [(MLCMultiheadAttentionDescriptor *)self addsZeroAttention];
  LODWORD(v13) = v10;
  return [v4 initWithModelDimension:modelDimension keyDimension:keyDimension valueDimension:valueDimension headCount:headCount dropout:hasBiases hasBias:hasAttentionBiases hasAttentionBias:v13 addsZeroAttention:v15];
}

- (void)initWithModelDimension:(const char *)a1 keyDimension:valueDimension:headCount:dropout:hasBias:hasAttentionBias:addsZeroAttention:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@ model dimension must be divisible by number of heads", v4, v5, v6, v7, v8, DWORD2(v8));
}

- (void)initWithModelDimension:(const char *)a1 keyDimension:valueDimension:headCount:dropout:hasBias:hasAttentionBias:addsZeroAttention:.cold.2(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  OUTLINED_FUNCTION_0_0(&dword_238C1D000, v2, v3, "%@ droupout is a probability between zero and one", v4, v5, v6, v7, v8, DWORD2(v8));
}

@end