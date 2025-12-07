@interface HTMLMarkupStringGenerator
- (void)parser:(id)parser didEndElement:(unint64_t)element;
- (void)parser:(id)parser didFindCharacters:(id)characters;
- (void)parser:(id)parser didStartElement:(unint64_t)element;
- (void)parser:(id)parser parseErrorOccurred:(id)occurred;
- (void)parserDidFindNewline:(id)newline;
@end

@implementation HTMLMarkupStringGenerator

- (void)parser:(id)parser parseErrorOccurred:(id)occurred
{
  parserCopy = parser;
  occurredCopy = occurred;
  selfCopy = self;
  sub_1E3763590(occurredCopy);
}

- (void)parser:(id)parser didStartElement:(unint64_t)element
{
  parserCopy = parser;
  selfCopy = self;
  sub_1E3763740(element);
}

- (void)parser:(id)parser didEndElement:(unint64_t)element
{
  parserCopy = parser;
  selfCopy = self;
  sub_1E3763850();
}

- (void)parser:(id)parser didFindCharacters:(id)characters
{
  sub_1E4205F14();
  parserCopy = parser;
  selfCopy = self;
  sub_1E3763910();
}

- (void)parserDidFindNewline:(id)newline
{
  newlineCopy = newline;
  selfCopy = self;
  sub_1E3763C18();
}

@end