@interface MAGAngelProxy
- (_TtC14MagnifierAngel13MAGAngelProxy)init;
- (void)finishWithCompletionHandler:(id)handler;
- (void)startWithCompletionHandler:(id)handler;
@end

@implementation MAGAngelProxy

- (void)startWithCompletionHandler:(id)handler
{
  v5 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100039BF0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100039BF8;
  v12[5] = v11;
  selfCopy = self;
  sub_10002EA70(0, 0, v7, &unk_100039C00, v12);
}

- (void)finishWithCompletionHandler:(id)handler
{
  v5 = sub_10000D3B8(&unk_10004F870, &qword_100038BF0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100039BA8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100039BB8;
  v12[5] = v11;
  selfCopy = self;
  sub_10002EA70(0, 0, v7, &unk_100039BC8, v12);
}

- (_TtC14MagnifierAngel13MAGAngelProxy)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MAGAngelProxy();
  return [(MAGAngelProxy *)&v3 init];
}

@end