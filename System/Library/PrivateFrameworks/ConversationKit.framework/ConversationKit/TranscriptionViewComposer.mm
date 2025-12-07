@interface TranscriptionViewComposer
- (id)compose;
- (id)composeBackgroundWithView:(id)view;
- (id)composeWithCall:(id)call;
- (id)composeWithCall:(id)call createTextField:(BOOL)field;
- (id)composeWithCall:(id)call createTextField:(BOOL)field liveReply:(BOOL)reply;
- (id)composeWithCall:(id)call createTextField:(BOOL)field liveReply:(BOOL)reply textFieldPadding:(double)padding;
@end

@implementation TranscriptionViewComposer

- (id)composeWithCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  TranscriptionViewComposer.compose(with:)(call);
  v8 = v7;

  return v8;
}

- (id)composeWithCall:(id)call createTextField:(BOOL)field
{
  fieldCopy = field;
  callCopy = call;
  selfCopy = self;
  TranscriptionViewComposer.compose(with:createTextField:)(call, fieldCopy);
  v10 = v9;

  return v10;
}

- (id)composeWithCall:(id)call createTextField:(BOOL)field liveReply:(BOOL)reply
{
  replyCopy = reply;
  fieldCopy = field;
  callCopy = call;
  selfCopy = self;
  TranscriptionViewComposer.compose(with:createTextField:liveReply:)(call, fieldCopy, replyCopy);
  v12 = v11;

  return v12;
}

- (id)composeWithCall:(id)call createTextField:(BOOL)field liveReply:(BOOL)reply textFieldPadding:(double)padding
{
  callCopy = call;
  selfCopy = self;
  TranscriptionViewComposer.compose(with:createTextField:liveReply:textFieldPadding:)(call, field, reply, padding);
  v14 = v13;

  return v14;
}

- (id)compose
{
  selfCopy = self;
  TranscriptionViewComposer.compose()(v3);
  v5 = v4;

  return v5;
}

- (id)composeBackgroundWithView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  TranscriptionViewComposer.composeBackground(with:)(v6, viewCopy);
  v8 = v7;

  return v8;
}

@end