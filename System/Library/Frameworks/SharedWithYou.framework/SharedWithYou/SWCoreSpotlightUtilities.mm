@interface SWCoreSpotlightUtilities
+ (id)CSQueryStringForSLHighlightsForContentType:(unsigned __int8)type forChatIdentifiers:(id)identifiers;
+ (id)CSSearchQueryContextForSLHighlightsForContentType:(unsigned __int8)type;
+ (id)fetchCSSearchableItemForUniqueIdentifier:(id)identifier forContentType:(unsigned __int8)type withRequiredAttributes:(id)attributes error:(id *)error;
@end

@implementation SWCoreSpotlightUtilities

+ (id)fetchCSSearchableItemForUniqueIdentifier:(id)identifier forContentType:(unsigned __int8)type withRequiredAttributes:(id)attributes error:(id *)error
{
  typeCopy = type;
  v9 = MEMORY[0x1E69D37E0];
  attributesCopy = attributes;
  identifierCopy = identifier;
  v12 = [v9 fetchCSSearchableItemForUniqueIdentifier:identifierCopy forContentType:+[SWHighlight highlightContentTypeForType:](SWHighlight withRequiredAttributes:"highlightContentTypeForType:" error:{typeCopy), attributesCopy, error}];

  return v12;
}

+ (id)CSSearchQueryContextForSLHighlightsForContentType:(unsigned __int8)type
{
  v3 = MEMORY[0x1E69D37E0];
  v4 = [SWHighlight highlightContentTypeForType:type];

  return [v3 CSSearchQueryContextForSLHighlightsForContentType:v4];
}

+ (id)CSQueryStringForSLHighlightsForContentType:(unsigned __int8)type forChatIdentifiers:(id)identifiers
{
  typeCopy = type;
  v5 = MEMORY[0x1E69D37E0];
  identifiersCopy = identifiers;
  v7 = [v5 CSQueryStringForSLHighlightsForContentType:+[SWHighlight highlightContentTypeForType:](SWHighlight forChatIdentifiers:{"highlightContentTypeForType:", typeCopy), identifiersCopy}];

  return v7;
}

@end