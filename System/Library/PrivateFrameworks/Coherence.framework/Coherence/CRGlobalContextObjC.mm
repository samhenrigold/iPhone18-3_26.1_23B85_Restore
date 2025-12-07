@interface CRGlobalContextObjC
+ (id)newObjCReplicaFor:(id)for;
+ (id)objCRenames;
+ (id)renameObjCSequence:(id)sequence after:(int64_t)after in:(id)in;
+ (int64_t)renameGeneration;
+ (void)releaseObjCSequence:(id)sequence;
+ (void)retainObjCSequence:(id)sequence;
+ (void)retainOrReleaseWithInitial:(id)initial current:(id)current forReplica:(id)replica;
+ (void)retainOrReleaseWithInitial:(id)initial current:(id)current forReplica:(id)replica copyingFrom:(id)from;
- (_TtC9Coherence19CRGlobalContextObjC)init;
@end

@implementation CRGlobalContextObjC

+ (id)newObjCReplicaFor:(id)for
{
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23BF9C();
  v7 = sub_1ADDED2C8(v6);
  (*(v4 + 8))(v6, v3);
  return v7;
}

+ (id)objCRenames
{
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1AE23D6AC();
  v2 = v11;
  v3 = v12;
  v4 = type metadata accessor for ObjCRenames();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtC9Coherence11ObjCRenames_renames];
  *v6 = v10;
  v6[8] = v2;
  *(v6 + 2) = v3;
  v9.receiver = v5;
  v9.super_class = v4;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

+ (void)releaseObjCSequence:(id)sequence
{
  sequenceCopy = sequence;
  sub_1ADE42A7C(sequenceCopy, sub_1ADF8DC64);
}

+ (int64_t)renameGeneration
{
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1AE23D6AC();
  return v3;
}

+ (id)renameObjCSequence:(id)sequence after:(int64_t)after in:(id)in
{
  sequenceCopy = sequence;
  inCopy = in;
  v9 = sub_1ADE419F0(sequenceCopy, after, inCopy);

  return v9;
}

+ (void)retainOrReleaseWithInitial:(id)initial current:(id)current forReplica:(id)replica
{
  initialCopy = initial;
  currentCopy = current;
  replicaCopy = replica;
  sub_1ADE41BE4(initialCopy, currentCopy, replicaCopy);
}

+ (void)retainOrReleaseWithInitial:(id)initial current:(id)current forReplica:(id)replica copyingFrom:(id)from
{
  initialCopy = initial;
  currentCopy = current;
  replicaCopy = replica;
  fromCopy = from;
  sub_1ADE422E4(initialCopy, currentCopy, replicaCopy, fromCopy);
}

+ (void)retainObjCSequence:(id)sequence
{
  sequenceCopy = sequence;
  sub_1ADE42A7C(sequenceCopy, sub_1ADF8D99C);
}

- (_TtC9Coherence19CRGlobalContextObjC)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CRGlobalContextObjC *)&v3 init];
}

@end