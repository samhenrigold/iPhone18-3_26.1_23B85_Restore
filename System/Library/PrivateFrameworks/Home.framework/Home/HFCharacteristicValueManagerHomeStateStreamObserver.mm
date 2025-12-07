@interface HFCharacteristicValueManagerHomeStateStreamObserver
- (BOOL)homeStateStreamHasInProgressWriteFor:(id)for;
- (HFCharacteristicValueManagerHomeStateStreamObserver)init;
- (id)homeStateStreamCachedValueFor:(id)for;
- (void)cancelObservation;
- (void)startObserving;
@end

@implementation HFCharacteristicValueManagerHomeStateStreamObserver

- (BOOL)homeStateStreamHasInProgressWriteFor:(id)for
{
  sub_20D9C7830();
  sub_20DA5A66C(&unk_280E020F0, sub_20D9C7830, MEMORY[0x277D85378]);
  v4 = sub_20DD651E4();
  selfCopy = self;
  sub_20DA569DC(v4);
  v7 = v6;

  return v7 & 1;
}

- (id)homeStateStreamCachedValueFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_20DA57188(forCopy, &v13);

  v6 = v14;
  if (v14)
  {
    v7 = __swift_project_boxed_opaque_existential_0(&v13, v14);
    v8 = *(v6 - 8);
    MEMORY[0x28223BE20](v7);
    v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10);
    v11 = sub_20DD65964();
    (*(v8 + 8))(v10, v6);
    __swift_destroy_boxed_opaque_existential_0(&v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)startObserving
{
  selfCopy = self;
  sub_20DA57A64();
}

- (void)cancelObservation
{
  v3 = OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_observingTask;
  if (*(&self->super.isa + OBJC_IVAR___HFCharacteristicValueManagerHomeStateStreamObserver_observingTask))
  {
    selfCopy = self;

    sub_20DD65174();
  }

  else
  {
    selfCopy2 = self;
  }

  *(&self->super.isa + v3) = 0;
}

- (HFCharacteristicValueManagerHomeStateStreamObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end