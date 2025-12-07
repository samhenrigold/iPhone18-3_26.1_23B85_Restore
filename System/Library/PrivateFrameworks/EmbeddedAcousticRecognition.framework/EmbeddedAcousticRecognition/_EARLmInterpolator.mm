@interface _EARLmInterpolator
+ (id)interpolateArpaFilePaths:(id)paths configPath:(id)path dataRoot:(id)root modelRoot:(id)modelRoot;
@end

@implementation _EARLmInterpolator

+ (id)interpolateArpaFilePaths:(id)paths configPath:(id)path dataRoot:(id)root modelRoot:(id)modelRoot
{
  v21 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  pathCopy = path;
  rootCopy = root;
  modelRootCopy = modelRoot;
  if (pathCopy)
  {
    objc_msgSend_ear_toString(pathCopy);
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v16 = 0;
  }

  memset(v14, 0, sizeof(v14));
  *buf = 0u;
  v19 = 0u;
  v20 = 1065353216;
  quasar::SystemConfig::SystemConfig(v17, __p, v14, buf);
}

@end