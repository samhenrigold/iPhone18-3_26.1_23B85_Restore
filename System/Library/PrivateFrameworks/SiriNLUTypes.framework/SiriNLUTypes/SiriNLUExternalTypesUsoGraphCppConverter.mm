@interface SiriNLUExternalTypesUsoGraphCppConverter
+ (id)convertCppGraph:(const void *)graph;
@end

@implementation SiriNLUExternalTypesUsoGraphCppConverter

+ (id)convertCppGraph:(const void *)graph
{
  if (graph)
  {
    siri::ontology::UsoGraphProtoWriter::toProtobuf();
  }

  return 0;
}

@end