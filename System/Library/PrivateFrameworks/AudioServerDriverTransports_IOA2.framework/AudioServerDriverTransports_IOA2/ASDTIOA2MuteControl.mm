@interface ASDTIOA2MuteControl
- (ASDTIOA2MuteControl)initWithIOA2Device:(id)device userClientID:(unsigned int)d isSettable:(BOOL)settable element:(unsigned int)element scope:(unsigned int)scope dictionary:(id)dictionary;
@end

@implementation ASDTIOA2MuteControl

- (ASDTIOA2MuteControl)initWithIOA2Device:(id)device userClientID:(unsigned int)d isSettable:(BOOL)settable element:(unsigned int)element scope:(unsigned int)scope dictionary:(id)dictionary
{
  v9.receiver = self;
  v9.super_class = ASDTIOA2MuteControl;
  return [(ASDTIOA2BooleanControl *)&v9 initWithIOA2Device:device userClientID:*&d isSettable:settable element:*&element scope:*&scope objectClassID:1836414053 dictionary:dictionary];
}

@end