@interface ICArchiveImporter
- (BOOL)importArchiveAtURL:(id)l intoNoteContainerWithID:(id)d progress:(id)progress error:(id *)error;
- (NSDictionary)errors;
- (_TtC26NotesAppMigrationExtension17ICArchiveImporter)init;
- (_TtC26NotesAppMigrationExtension17ICArchiveImporter)initWithContext:(id)context;
- (void)dealloc;
- (void)setErrors:(id)errors;
@end

@implementation ICArchiveImporter

- (_TtC26NotesAppMigrationExtension17ICArchiveImporter)init
{
  result = [objc_opt_self() sharedContext];
  if (result && (v4 = result, v5 = [(ICArchiveImporter *)result snapshotManagedObjectContext], v4, v5))
  {
    v6 = [(ICArchiveImporter *)self initWithContext:v5];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC26NotesAppMigrationExtension17ICArchiveImporter)initWithContext:(id)context
{
  swift_getObjectType();
  v4 = objc_opt_self();
  contextCopy = context;
  defaultManager = [v4 defaultManager];
  LOBYTE(v9) = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  BYTE1(v9) = ICInternalSettingsIsAlexandriaDemoModeEnabled();
  v10 = 0;
  v11 = 0;
  *(&v9 + 1) = 0;
  v12 = 2;
  v7 = sub_10003D07C(contextCopy, &v9, defaultManager, 0, 0);
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  sub_100044ED4();
  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(ICArchiveImporter *)&v5 dealloc];
}

- (NSDictionary)errors
{
  swift_beginAccess();
  sub_1000847C8();

  sub_100005740(&qword_1000A5B98, &unk_10008B760);
  sub_10004F178(&qword_1000A5C70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v2.super.isa = sub_100084FF8().super.isa;

  return v2.super.isa;
}

- (void)setErrors:(id)errors
{
  sub_1000847C8();
  sub_100005740(&qword_1000A5B98, &unk_10008B760);
  sub_10004F178(&qword_1000A5C70, &type metadata accessor for URL, &protocol conformance descriptor for URL);
  v4 = sub_100085008();
  v5 = OBJC_IVAR____TtC26NotesAppMigrationExtension17ICArchiveImporter_errors;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (BOOL)importArchiveAtURL:(id)l intoNoteContainerWithID:(id)d progress:(id)progress error:(id *)error
{
  v9 = sub_1000847C8();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100084768();
  selfCopy = self;
  dCopy = d;
  v20 = v12;
  progressCopy = progress;
  dCopy2 = d;
  progressCopy2 = progress;
  selfCopy2 = self;
  sub_100085488();

  (*(v10 + 8))(v12, v9);
  return 1;
}

@end