void closure #1 in ModelObjectBackedStoreItemMetadata.collectionStoreID.getter(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = &selRef_album;
    }

    else
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
        return;
      }

      v6 = &selRef_season;
    }

    v7 = [v5 *v6];
    v8 = *a2;
    *a2 = v7;
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.isCompilation.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isCompilation.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_63_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.composerName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.composerName.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_73;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void *closure #1 in ModelObjectBackedStoreItemMetadata.collectionName.getter(uint64_t a1, uint64_t *a2, SEL *a3, const char **a4)
{
  v8 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (v10)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v11 = result;
      v12 = v10;
      v13 = [v11 *a3];
      if (v13 && (v14 = *a4, v15 = v13, v16 = [v13 v14], v15, v16))
      {
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {

        v17 = 0;
        v19 = 0;
      }

      *a2 = v17;
      a2[1] = v19;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.copyrightText.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.copyrightText.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_83;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.curatorName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.curatorName.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_93;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.curatorName.getter(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 curator];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 name];
        if (v11)
        {
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;
        }

        else
        {
          v16 = [v10 shortName];
          if (v16)
          {
            v17 = v16;
            v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v15 = v18;
          }

          else
          {

            v13 = 0;
            v15 = 0;
          }
        }

        *a2 = v13;
        a2[1] = v15;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.descriptionText.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.descriptionText.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_103;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void *closure #1 in ModelObjectBackedStoreItemMetadata.descriptionText.getter(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = [v8 descriptionText];
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v9 = v6;
        v10 = [v12 descriptionText];
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v14 = v13;
          v9 = v6;
          v10 = [v14 descriptionText];
          if (!v10)
          {
LABEL_13:

            v16 = 0;
            v18 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (!result)
          {
            return result;
          }

          v19 = result;
          v9 = v6;
          v10 = [v19 descriptionText];
          if (!v10)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v15 = v10;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

LABEL_14:
    *a2 = v16;
    a2[1] = v18;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.discCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.discCount.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_113;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.discNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.discNumber.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_123_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.duration.getter()
{
  v9 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.duration.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_133_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
  }

  __break(1u);
  return result;
}

id closure #1 in ModelObjectBackedStoreItemMetadata.duration.getter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result duration];
      *a2 = v6;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.editorNotes.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.editorNotes.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_143_0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void *closure #1 in ModelObjectBackedStoreItemMetadata.shortEditorNotes.getter(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v6 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      v12 = [v10 *a3];
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v11 = v8;
        v12 = [v14 *a3];
        if (!v12)
        {
          goto LABEL_13;
        }
      }

      else
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = v15;
          v11 = v8;
          v12 = [v16 *a3];
          if (!v12)
          {
LABEL_13:

            v18 = 0;
            v20 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (!result)
          {
            return result;
          }

          v21 = result;
          v11 = v8;
          v12 = [v21 *a3];
          if (!v12)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v17 = v12;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

LABEL_14:
    *a2 = v18;
    a2[1] = v20;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.shortEditorNotes.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.shortEditorNotes.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_153;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.episodeCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.episodeCount.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_163;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.explicitRating.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.explicitRating.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_173;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id closure #1 in ModelObjectBackedStoreItemMetadata.explicitRating.getter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result explicitRating];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.genreNames.getter()
{
  v16 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v16;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.genreNames.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_183_0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v16 && (v8 = [v16 name]) != 0)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1004F2400;
      *(v13 + 56) = &type metadata for String;
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v16;

    return v13;
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.genreNames.getter(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
    {
      v6 = [v5 genre];
      v7 = *a2;
      *a2 = v6;
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.handle.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.handle.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_193;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.hasArtistBiography.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.hasArtistBiography.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_203;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.hasLyrics.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.hasLyrics.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_213;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.hasLyrics.getter(uint64_t a1, unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 lyrics];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 hasStoreLyrics];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.hasTimeSyncedLyrics.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.hasTimeSyncedLyrics.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_223;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.hasTimeSyncedLyrics.getter(uint64_t a1, unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 lyrics];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 hasTimeSyncedLyrics];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.hasSocialPosts.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.hasSocialPosts.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_233;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id closure #1 in ModelObjectBackedStoreItemMetadata.hasSocialPosts.getter(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result hasSocialPosts];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isExplicitContent.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isExplicitContent.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_243;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id closure #1 in ModelObjectBackedStoreItemMetadata.isExplicitContent.getter(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          v6 = &selRef_isExplicitSong;
          goto LABEL_5;
        }

        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (!result)
        {
          return result;
        }
      }
    }

    v6 = &selRef_hasExplicitContent;
LABEL_5:
    result = [result *v6];
    *a2 = result;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isMasteredForiTunes.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isMasteredForiTunes.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_253;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t closure #1 in ModelObjectBackedStoreItemMetadata.isMasteredForiTunes.getter(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result traits];
      *a2 = result & 1;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isPreorder.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isPreorder.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_263;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isPrivatePerson.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isPrivatePerson.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_273;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isVerifiedPerson.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isVerifiedPerson.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_283;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isOnboardedPerson.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isOnboardedPerson.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_293;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t closure #1 in ModelObjectBackedStoreItemMetadata.isOnboardedPerson.getter(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result hasLightweightProfile];
      *a2 = result ^ 1;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.itemKind.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.itemKind.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_303;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.itemKind.getter(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v5;
      v10 = [v8 curatorKind];
      if (v10 <= 1)
      {
        if (!v10)
        {

          return;
        }

        if (v10 == 1)
        {
          goto LABEL_22;
        }
      }

      else if (v10 == 2 || v10 == 3 || v10 == 4)
      {
        goto LABEL_22;
      }

      _StringGuts.grow(_:)(24);
      v16._countAndFlagsBits = 0xD000000000000013;
      v16._object = 0x80000001004C7BF0;
      String.append(_:)(v16);
      v17._object = 0x80000001004CBE40;
      v17._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v17);
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      type metadata accessor for MPModelCuratorKind(0);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v9 = v5;
      [v15 isArtistUploadedContent];
      [v15 hasVideo];
LABEL_22:
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *a2 = v11;
      a2[1] = v13;
      goto LABEL_5;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
LABEL_4:
      *a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a2[1] = v6;
LABEL_5:
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.lastModifiedDate.getter;
  *(v6 + 24) = v5;
  v11[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_313;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.lastModifiedDate.getter(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = type metadata accessor for Calendar();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v8 = &v23 - v7;
  v9 = type metadata accessor for DateComponents();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v23 - v13;
  v15 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v16 = *(a1 + v15);
  if (v16)
  {
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = v16;
      v20 = [v18 lastModifiedDateComponents];
      if (v20)
      {
        v21 = v20;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v10 + 32))(v14, v12, v9);
        v22 = [objc_opt_self() storeServerCalendar];
        static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

        Calendar.date(from:)();
        (*(v4 + 8))(v6, v3);
        (*(v10 + 8))(v14, v9);
        outlined assign with take of PlaybackIntentDescriptor.IntentType?(v8, v23, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.movementCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.movementCount.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_323;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.movementName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.movementName.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_333;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.movementNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.movementNumber.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_343;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.name.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.name.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_353;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void *closure #1 in ModelObjectBackedStoreItemMetadata.name.getter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
LABEL_15:
      v12 = v7;
      v10 = v6;
      v11 = [v12 title];
LABEL_16:
      v13 = v11;
      if (v13)
      {
LABEL_17:
        v14 = v13;
LABEL_18:
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

LABEL_27:
        *a2 = v15;
        a2[1] = v17;
      }

      goto LABEL_25;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          goto LABEL_15;
        }

        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (!v8)
        {
          objc_opt_self();
          v8 = swift_dynamicCastObjCClass();
          if (!v8)
          {
            objc_opt_self();
            v8 = swift_dynamicCastObjCClass();
            if (!v8)
            {
              objc_opt_self();
              v7 = swift_dynamicCastObjCClass();
              if (!v7)
              {
                objc_opt_self();
                v7 = swift_dynamicCastObjCClass();
                if (!v7)
                {
                  objc_opt_self();
                  v18 = swift_dynamicCastObjCClass();
                  if (v18)
                  {
                    v19 = v18;
                    v10 = v6;
                    v20 = [v19 show];
                    v15 = v20;
                    if (!v20)
                    {

                      goto LABEL_26;
                    }

                    v14 = [v20 title];

                    if (v14)
                    {
                      goto LABEL_18;
                    }
                  }

                  else
                  {
                    objc_opt_self();
                    result = swift_dynamicCastObjCClass();
                    if (!result)
                    {
                      return result;
                    }

                    v21 = result;
                    v10 = v6;
                    v13 = [v21 title];
                    if (v13)
                    {
                      goto LABEL_17;
                    }
                  }

LABEL_25:

                  v15 = 0;
LABEL_26:
                  v17 = 0;
                  goto LABEL_27;
                }
              }

              goto LABEL_15;
            }
          }
        }
      }
    }

    v9 = v8;
    v10 = v6;
    v11 = [v9 name];
    goto LABEL_16;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.nameRaw.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.nameRaw.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_363;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

Class @objc ModelObjectBackedStoreItemMetadata.lastModifiedDate.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v6 = &v14 - v5;
  v7 = a1;
  a3();

  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

uint64_t ModelObjectBackedStoreItemMetadata.releaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.releaseDate.getter;
  *(v6 + 24) = v5;
  v11[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_373;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void *closure #1 in ModelObjectBackedStoreItemMetadata.releaseDate.getter(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = type metadata accessor for DateComponents();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin();
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  __chkstk_darwin();
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v57 - v7;
  __chkstk_darwin();
  v10 = &v57 - v9;
  __chkstk_darwin();
  v12 = &v57 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v57 - v15;
  __chkstk_darwin();
  v18 = &v57 - v17;
  __chkstk_darwin();
  v20 = &v57 - v19;
  v21 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v23 = *(a1 + v21);
  if (v23)
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = v24;
      v26 = v23;
      v27 = [v25 releaseDateComponents];
      if (v27)
      {
        v28 = v27;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v29 = 0;
      }

      else
      {
        v29 = 1;
      }

      v37 = v59;
      v36 = v60;
      (*(v59 + 56))(v10, v29, 1, v60);
      outlined init with take of DateComponents?(v10, v12);
      if ((*(v37 + 48))(v12, 1, v36))
      {

        outlined destroy of TaskPriority?(v12, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
        v38 = type metadata accessor for Date();
        (*(*(v38 - 8) + 56))(v20, 1, 1, v38);
      }

      else
      {
        v39 = v58;
        (*(v37 + 16))(v58, v12, v36);
        outlined destroy of TaskPriority?(v12, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
        DateComponents.date.getter();

        (*(v37 + 8))(v39, v36);
      }

      v16 = v20;
    }

    else
    {
      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v31 = v30;
        v32 = v23;
        v33 = [v31 releaseDateComponents];
        if (v33)
        {
          v34 = v33;
          static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v35 = 0;
        }

        else
        {
          v35 = 1;
        }

        v47 = v59;
        v46 = v60;
        (*(v59 + 56))(v6, v35, 1, v60);
        outlined init with take of DateComponents?(v6, v8);
        if ((*(v47 + 48))(v8, 1, v46))
        {

          outlined destroy of TaskPriority?(v8, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
          v48 = type metadata accessor for Date();
          (*(*(v48 - 8) + 56))(v18, 1, 1, v48);
        }

        else
        {
          v49 = v58;
          (*(v47 + 16))(v58, v8, v46);
          outlined destroy of TaskPriority?(v8, &_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
          DateComponents.date.getter();

          (*(v47 + 8))(v49, v46);
        }

        v16 = v18;
      }

      else
      {
        objc_opt_self();
        v40 = swift_dynamicCastObjCClass();
        if (v40)
        {
          v41 = v40;
          v42 = v23;
          v43 = [v41 releaseDate];
          if (v43)
          {
            v44 = v43;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v45 = 0;
            v42 = v44;
          }

          else
          {
            v45 = 1;
          }

          v55 = type metadata accessor for Date();
          (*(*(v55 - 8) + 56))(v16, v45, 1, v55);
        }

        else
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (!result)
          {
            return result;
          }

          v50 = result;
          v51 = v23;
          v52 = [v50 releaseDate];
          if (v52)
          {
            v53 = v52;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v54 = 0;
            v51 = v53;
          }

          else
          {
            v54 = 1;
          }

          v56 = type metadata accessor for Date();
          (*(*(v56 - 8) + 56))(v14, v54, 1, v56);
          v16 = v14;
        }
      }
    }

    return outlined assign with take of PlaybackIntentDescriptor.IntentType?(v16, v61, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  return result;
}

id @objc ModelObjectBackedStoreItemMetadata.artistStoreID.getter(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v12);

  v5 = v13;
  if (v13)
  {
    __swift_project_boxed_opaque_existential_0Tm(v12, v13);
    v6 = *(v5 - 8);
    v7 = __chkstk_darwin();
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t ModelObjectBackedStoreItemMetadata.socialProfileID.getter@<X0>(_OWORD *a1@<X8>)
{
  *a1 = 0u;
  a1[1] = 0u;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.socialProfileID.getter;
  *(v5 + 24) = v4;
  v10[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed () -> ();
  v10[3] = &block_descriptor_383;
  v6 = _Block_copy(v10);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in ModelObjectBackedStoreItemMetadata.socialProfileID.getter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v6 = (a1 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
      swift_beginAccess();
      v7 = v6[1];
      if (v7)
      {
        v8 = *v6;
        v9 = &type metadata for String;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10[2] = 0;
      }

      v10[0] = v8;
      v10[1] = v7;
      v10[3] = v9;

      return outlined assign with take of PlaybackIntentDescriptor.IntentType?(v10, a2, &_sypSgMd_0, &_sypSgMR_0);
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.seasonNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.seasonNumber.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_393;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.seasonNumber.getter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 season];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 number];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.shortName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.shortName.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_403;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void *closure #1 in ModelObjectBackedStoreItemMetadata.copyrightText.getter(uint64_t a1, uint64_t *a2, void *a3, SEL *a4, void *a5, SEL *a6)
{
  v10 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v12 = *(a1 + v10);
  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      v16 = [v14 *a4];
      if (v16)
      {
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

LABEL_11:
        *a2 = v18;
        a2[1] = v20;
      }
    }

    else
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        return result;
      }

      v21 = result;
      v22 = v12;
      v23 = [v21 *a6];
      if (v23)
      {
        v24 = v23;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v25;

        goto LABEL_11;
      }
    }

    v18 = 0;
    v20 = 0;
    goto LABEL_11;
  }

  return result;
}

id @objc ModelObjectBackedStoreItemMetadata.url.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v6 = &v15 - v5;
  v7 = a1;
  a3();

  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v13 = v12;
    (*(v9 + 8))(v6, v8);
    v11 = v13;
  }

  return v11;
}

uint64_t ModelObjectBackedStoreItemMetadata.shortURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.shortURL.getter;
  *(v6 + 24) = v5;
  v11[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_413;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.showComposer.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.showComposer.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_423;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id closure #1 in ModelObjectBackedStoreItemMetadata.isBeats1.getter(uint64_t a1, _BYTE *a2, void *a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v7))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result *a4];
      *a2 = result;
    }
  }

  return result;
}

double ModelObjectBackedStoreItemMetadata.storeID.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = &type metadata for String;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  a1[3] = v6;

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isStoreRedownloadable.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.isStoreRedownloadable.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_433;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void closure #1 in ModelObjectBackedStoreItemMetadata.isStoreRedownloadable.getter(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    ObjectType = swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      v8 = *(v7 + 16);
      v9 = v7;
      v10 = v5;
      v11 = v8(ObjectType, v9);

      *a2 = v11 & 1;
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.trackCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.trackCount.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_443;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id closure #1 in ModelObjectBackedStoreItemMetadata.discCount.getter(uint64_t a1, void *a2, void *a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v7))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result *a4];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.trackNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.trackNumber.getter;
  *(v3 + 24) = v2;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_453;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id closure #1 in ModelObjectBackedStoreItemMetadata.trackNumber.getter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v6 = &selRef_trackNumber;
    }

    else
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        return result;
      }

      v6 = &selRef_episodeNumber;
    }

    result = [result *v6];
    *a2 = result;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.url.getter;
  *(v6 + 24) = v5;
  v11[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_463;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void *closure #1 in ModelObjectBackedStoreItemMetadata.shortURL.getter(uint64_t a1, uint64_t a2, SEL *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v7 = &v17 - v6;
  v8 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (v10)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v11 = result;
      v12 = v10;
      v13 = [v11 *a3];
      if (v13)
      {
        v14 = v13;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = 0;
        v12 = v14;
      }

      else
      {
        v15 = 1;
      }

      v16 = type metadata accessor for URL();
      (*(*(v16 - 8) + 56))(v7, v15, 1, v16);
      return outlined assign with take of PlaybackIntentDescriptor.IntentType?(v7, a2, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }
  }

  return result;
}

id @objc ModelObjectBackedStoreItemMetadata.artistName.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t ModelObjectBackedStoreItemMetadata.workName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.workName.getter;
  *(v3 + 24) = v2;
  v9[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_473;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void *closure #1 in ModelObjectBackedStoreItemMetadata.handle.getter(uint64_t a1, uint64_t *a2, void *a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v9 = *(a1 + v7);
  if (v9)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v10 = result;
      v11 = v9;
      v12 = [v10 *a4];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
      }

      else
      {

        v14 = 0;
        v16 = 0;
      }

      *a2 = v14;
      a2[1] = v16;
    }
  }

  return result;
}

id ModelObjectBackedStoreItemMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id specialized ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:parentStoreItemMetadata:expirationDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  __chkstk_darwin();
  v8 = &v17 - v7;
  *&v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v9 = &v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  outlined init with copy of Date?(a3, v8);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  isa = 0;
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v12 + 8))(v8, v11);
  }

  v14 = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v17.receiver = v4;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, "initWithStorePlatformDictionary:parentStoreItemMetadata:expirationDate:", v10.super.isa, a2, isa);

  outlined destroy of TaskPriority?(a3, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v15;
}

uint64_t sub_1001B3B44()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with take of DateComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation14DateComponentsVSgMd, &_s10Foundation14DateComponentsVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MotionMode.allowsMotion.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MotionMode();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MotionMode.off(_:))
  {
    return 0;
  }

  if (v7 == enum case for MotionMode.wifiOnly(_:))
  {
    v9 = [objc_opt_self() sharedMonitor];
    [v9 networkType];

    return ICEnvironmentNetworkTypeIsWiFi();
  }

  else if (v7 == enum case for MotionMode.on(_:))
  {
    return 1;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v11 = 0xD00000000000001ELL;
    v12 = 0x80000001004CBE80;
    lazy protocol witness table accessor for type MotionMode and conformance MotionMode();
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MotionMode and conformance MotionMode()
{
  result = lazy protocol witness table cache variable for type MotionMode and conformance MotionMode;
  if (!lazy protocol witness table cache variable for type MotionMode and conformance MotionMode)
  {
    type metadata accessor for MotionMode();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MotionMode and conformance MotionMode);
  }

  return result;
}

uint64_t NetworkMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  NetworkMonitor.init()();
  return v0;
}

uint64_t *NetworkMonitor.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static NetworkMonitor.shared;
}

uint64_t static NetworkMonitor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t NetworkMonitor.isOnline.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for NetworkMonitor.isOnline : NetworkMonitor@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v4;
  return result;
}

uint64_t key path setter for NetworkMonitor.isOnline : NetworkMonitor(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t NetworkMonitor.$isOnline.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path getter for NetworkMonitor.$isOnline : NetworkMonitor(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for NetworkMonitor.$isOnline : NetworkMonitor(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

id NetworkMonitor.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = aBlock - v3;
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
    v8 = [result hasProperNetworkConditionsToShowCloudMedia];

    LOBYTE(aBlock[0]) = v8;
    Published.init(initialValue:)();
    (*(v2 + 32))(v0 + v7, v4, v1);
    v9 = [objc_opt_self() defaultCenter];
    v10 = MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification;
    v11 = [objc_opt_self() mainQueue];
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in NetworkMonitor.init();
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
    aBlock[3] = &block_descriptor_26;
    v13 = _Block_copy(aBlock);

    v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001B4E54()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id closure #1 in NetworkMonitor.init()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    result = [objc_opt_self() sharedCloudController];
    if (result)
    {
      v3 = result;
      if (([result shouldProhibitMusicActionForCurrentNetworkConditions] & 1) == 0)
      {
        [v3 hasProperNetworkConditionsToShowCloudMedia];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      return static Published.subscript.setter();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t NetworkMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NetworkMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkMonitor(uint64_t a1)
{
  result = type metadata singleton initialization cache for NetworkMonitor;
  if (!type metadata singleton initialization cache for NetworkMonitor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for NetworkMonitor(uint64_t a1)
{
  type metadata accessor for Published<Bool>();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Published<Bool>()
{
  if (!lazy cache variable for type metadata for Published<Bool>)
  {
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<Bool>);
    }
  }
}

uint64_t static Notice.variant(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v205 = a2;
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin();
  v210 = type metadata accessor for Notice.Thumbnail(0);
  v208 = *(v210 - 8);
  __chkstk_darwin();
  v4 = &v198 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);
  __chkstk_darwin();
  v6 = &v198 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v198 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd, &_s9MusicCore6NoticeV9ThumbnailOSgMR);
  __chkstk_darwin();
  v10 = &v198 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (&v198 - v11);
  __chkstk_darwin();
  v203 = (&v198 - v13);
  type metadata accessor for Locale();
  __chkstk_darwin();
  v209 = &v198 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for String.LocalizationValue();
  v16 = *(v15 - 8);
  v206 = v15;
  v207 = v16;
  __chkstk_darwin();
  v204 = &v198 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v198 - v18;
  type metadata accessor for Notice.Variant(0);
  __chkstk_darwin();
  v21 = (&v198 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Notice.Variant(a1, v21, type metadata accessor for Notice.Variant);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v79 = *v21;
      v78 = v21[1];
      v80 = Notice.Variant.id.getter();
      v198 = v81;
      v199 = v80;
      if (v78)
      {
        v201 = v78;
        v202 = v79;
        v200 = 0x7265646C6F66;
        v82 = v210;
        v83 = v207;
        v84 = v208;
        v85 = v19;
        v86 = v205;
        v87 = v206;
        v88 = v204;
      }

      else
      {
        v85 = v19;
        String.LocalizationValue.init(stringLiteral:)();
        v87 = v206;
        v83 = v207;
        v88 = v204;
        (*(v207 + 16))(v204, v19, v206);
        v82 = v210;
        v84 = v208;
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v200 = 0x672E657261757173;
        v183 = static NSBundle.module;
        static Locale.current.getter();
        v184 = String.init(localized:table:bundle:locale:comment:)();
        v201 = v185;
        v202 = v184;
        (*(v83 + 8))(v19, v87);
        v86 = v205;
      }

      String.LocalizationValue.init(stringLiteral:)();
      (*(v83 + 16))(v88, v85, v87);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v186 = static NSBundle.module;
      static Locale.current.getter();
      v210 = String.init(localized:table:bundle:locale:comment:)();
      v188 = v187;
      (*(v83 + 8))(v85, v87);
      v189 = Image.init(_internalSystemName:)();
      v190 = v203;
      *v203 = v189;
      swift_storeEnumTagMultiPayload();
      v191 = *(v84 + 56);
      v191(v190, 0, 1, v82);
      v192 = type metadata accessor for Notice(0);
      v193 = v192[5];
      v191(v86 + v193, 1, 1, v82);
      v194 = (v86 + v192[7]);
      v179 = (v86 + v192[8]);
      v112 = v86 + v192[9];
      v113 = v86 + v192[10];
      v195 = v198;
      *v86 = v199;
      v86[1] = v195;
      result = outlined assign with take of Notice.Thumbnail?(v190, v86 + v193);
      v196 = (v86 + v192[6]);
      v197 = v201;
      *v196 = v202;
      v196[1] = v197;
      *v194 = v210;
      v194[1] = v188;
      goto LABEL_74;
    case 2u:
      v62 = *v21;
      v61 = v21[1];
      v63 = v21[2];
      v64 = Notice.Variant.id.getter();
      v199 = v65;
      v200 = v64;
      if (v63)
      {
        v201 = v63;
        v202 = v61;
        v67 = v206;
        v66 = v207;
        v68 = v19;
        v70 = v204;
        v69 = v205;
      }

      else
      {
        v68 = v19;
        String.LocalizationValue.init(stringLiteral:)();
        v67 = v206;
        v66 = v207;
        v70 = v204;
        (*(v207 + 16))(v204, v19, v206);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v158 = static NSBundle.module;
        static Locale.current.getter();
        v159 = String.init(localized:table:bundle:locale:comment:)();
        v201 = v160;
        v202 = v159;
        (*(v66 + 8))(v19, v67);
        v69 = v205;
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v161._countAndFlagsBits = 0;
      v161._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v161);
      v211 = v62;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v162 = 0x80000001004CBF70;
      v163 = 0xD000000000000015;
      goto LABEL_65;
    case 3u:
      v74 = *v21;
      v73 = v21[1];
      v75 = v21[2];
      v76 = Notice.Variant.id.getter();
      v199 = v77;
      v200 = v76;
      if (v75)
      {
        v201 = v75;
        v202 = v73;
        v67 = v206;
        v66 = v207;
        v68 = v19;
        v70 = v204;
        v69 = v205;
      }

      else
      {
        v68 = v19;
        String.LocalizationValue.init(stringLiteral:)();
        v67 = v206;
        v66 = v207;
        v70 = v204;
        (*(v207 + 16))(v204, v19, v206);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v164 = static NSBundle.module;
        static Locale.current.getter();
        v165 = String.init(localized:table:bundle:locale:comment:)();
        v201 = v166;
        v202 = v165;
        (*(v66 + 8))(v19, v67);
        v69 = v205;
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v167._countAndFlagsBits = 0;
      v167._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v167);
      v211 = v74;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v163 = 0xD000000000000013;
      v162 = 0x80000001004CBF50;
LABEL_65:
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v163);
      String.LocalizationValue.init(stringInterpolation:)();
      (*(v66 + 16))(v70, v68, v67);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v168 = static NSBundle.module;
      static Locale.current.getter();
      v169 = String.init(localized:table:bundle:locale:comment:)();
      v171 = v170;
      (*(v66 + 8))(v68, v67);
      v172 = Image.init(_internalSystemName:)();
      v173 = v203;
      *v203 = v172;
      v174 = v210;
      swift_storeEnumTagMultiPayload();
      v175 = *(v208 + 56);
      v175(v173, 0, 1, v174);
      v176 = type metadata accessor for Notice(0);
      v177 = v176[5];
      v175(v69 + v177, 1, 1, v174);
      v178 = (v69 + v176[7]);
      v179 = (v69 + v176[8]);
      v112 = v69 + v176[9];
      v113 = v69 + v176[10];
      v180 = v199;
      *v69 = v200;
      v69[1] = v180;
      result = outlined assign with take of Notice.Thumbnail?(v173, v69 + v177);
      v181 = (v69 + v176[6]);
      v182 = v201;
      *v181 = v202;
      v181[1] = v182;
      *v178 = v169;
      v178[1] = v171;
LABEL_74:
      *v179 = 0;
      v179[1] = 0;
      break;
    case 4u:
      v47 = *v21;
      v46 = v21[1];
      v48 = Notice.Variant.id.getter();
      v199 = v49;
      if (v46)
      {
        v201 = v46;
        v202 = v47;
        v50 = v210;
        v52 = v206;
        v51 = v207;
        v53 = v19;
      }

      else
      {
        v53 = v19;
        String.LocalizationValue.init(stringLiteral:)();
        v52 = v206;
        v51 = v207;
        (*(v207 + 16))(v204, v19, v206);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v136 = static NSBundle.module;
        static Locale.current.getter();
        v137 = String.init(localized:table:bundle:locale:comment:)();
        v201 = v138;
        v202 = v137;
        (*(v51 + 8))(v19, v52);
        v50 = v210;
      }

      v139 = v205;
      v140 = one-time initialization token for isInternalInstall;

      if (v140 != -1)
      {
        swift_once();
      }

      v200 = v48;
      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        String.LocalizationValue.init(stringLiteral:)();
        (*(v51 + 16))(v204, v53, v52);
        if (one-time initialization token for module != -1)
        {
          swift_once();
        }

        v141 = static NSBundle.module;
        static Locale.current.getter();
        v142 = String.init(localized:table:bundle:locale:comment:)();
        v209 = v143;
        v210 = v142;
        (*(v51 + 8))(v53, v52);
        v145 = swift_allocObject();
        *(v145 + 16) = v47;
        *(v145 + 24) = v46;
        v144 = partial apply for closure #1 in static Notice.variant(_:);
      }

      else
      {

        v144 = 0;
        v145 = 0;
        v209 = 0;
        v210 = 0;
      }

      v146 = Image.init(_internalSystemName:)();
      v147 = v203;
      *v203 = v146;
      swift_storeEnumTagMultiPayload();
      v148 = *(v208 + 56);
      v148(v147, 0, 1, v50);
      v149 = type metadata accessor for Notice(0);
      v150 = v50;
      v151 = v149[5];
      v148(v139 + v151, 1, 1, v150);
      v152 = (v139 + v149[7]);
      v153 = (v139 + v149[8]);
      v112 = v139 + v149[9];
      v113 = v139 + v149[10];
      v154 = v199;
      *v139 = v200;
      v139[1] = v154;
      result = outlined assign with take of Notice.Thumbnail?(v147, v139 + v151);
      v155 = (v139 + v149[6]);
      v156 = v201;
      *v155 = v202;
      v155[1] = v156;
      v157 = v209;
      *v152 = v210;
      v152[1] = v157;
      *v153 = v144;
      v153[1] = v145;
      *v112 = 2;
      goto LABEL_37;
    case 5u:
      v91 = Notice.Variant.id.getter();
      v201 = v92;
      v202 = v91;
      v41 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v43 = v206;
      v42 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 6u:
    case 7u:
    case 8u:
      v99 = Notice.Variant.id.getter();
      v201 = v100;
      v202 = v99;
      v41 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v43 = v206;
      v42 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 9u:
      v59 = Notice.Variant.id.getter();
      v201 = v60;
      v202 = v59;
      v41 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v43 = v206;
      v42 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xAu:
      v95 = Notice.Variant.id.getter();
      v201 = v96;
      v202 = v95;
      v56 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v58 = v206;
      v57 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xBu:
      v44 = Notice.Variant.id.getter();
      v201 = v45;
      v202 = v44;
      v41 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v43 = v206;
      v42 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xCu:
      v54 = Notice.Variant.id.getter();
      v201 = v55;
      v202 = v54;
      v56 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v58 = v206;
      v57 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xDu:
      v93 = Notice.Variant.id.getter();
      v201 = v94;
      v202 = v93;
      v56 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v58 = v206;
      v57 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xEu:
      v39 = Notice.Variant.id.getter();
      v201 = v40;
      v202 = v39;
      v41 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v43 = v206;
      v42 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_34;
      }

LABEL_75:
      swift_once();
LABEL_34:
      v101 = static NSBundle.module;
      static Locale.current.getter();
      v36 = String.init(localized:table:bundle:locale:comment:)();
      v38 = v102;
      (*(v42 + 8))(v41, v43);
      goto LABEL_35;
    case 0xFu:
      v71 = Notice.Variant.id.getter();
      v201 = v72;
      v202 = v71;
      v56 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v58 = v206;
      v57 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0x10u:
      v31 = Notice.Variant.id.getter();
      v201 = v32;
      v202 = v31;
      String.LocalizationValue.init(stringLiteral:)();
      v34 = v206;
      v33 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v35 = static NSBundle.module;
      static Locale.current.getter();
      v36 = String.init(localized:table:bundle:locale:comment:)();
      v38 = v37;
      (*(v33 + 8))(v19, v34);
      goto LABEL_35;
    case 0x11u:
      v89 = Notice.Variant.id.getter();
      v201 = v90;
      v202 = v89;
      v56 = v19;
      String.LocalizationValue.init(stringLiteral:)();
      v58 = v206;
      v57 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (one-time initialization token for module == -1)
      {
        goto LABEL_32;
      }

LABEL_81:
      swift_once();
LABEL_32:
      v97 = static NSBundle.module;
      static Locale.current.getter();
      v36 = String.init(localized:table:bundle:locale:comment:)();
      v38 = v98;
      (*(v57 + 8))(v56, v58);
LABEL_35:
      v103 = Image.init(_internalSystemName:)();
      v104 = v203;
      *v203 = v103;
      v105 = v210;
      swift_storeEnumTagMultiPayload();
      v106 = *(v208 + 56);
      v106(v104, 0, 1, v105);
      v107 = type metadata accessor for Notice(0);
      v108 = v107[5];
      v109 = v205;
      v106(v205 + v108, 1, 1, v105);
      v110 = (v109 + v107[7]);
      v111 = (v109 + v107[8]);
      v112 = v109 + v107[9];
      v113 = v109 + v107[10];
      v114 = v201;
      *v109 = v202;
      v109[1] = v114;
      result = outlined assign with take of Notice.Thumbnail?(v104, v109 + v108);
      v116 = (v109 + v107[6]);
      *v116 = v36;
      v116[1] = v38;
      *v110 = 0;
      v110[1] = 0;
      *v111 = 0;
      v111[1] = 0;
      break;
    default:
      v22 = *v21;
      v202 = v21[1];
      v203 = v22;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS12playlistName_8MusicKit7ArtworkVSg7artworkSi9songCounttMd, &_sSS12playlistName_8MusicKit7ArtworkVSg7artworkSi9songCounttMR);
      v24 = *(v23 + 48);
      v198 = *(v21 + *(v23 + 64));
      outlined init with take of Artwork?(v21 + v24, v8);
      v25 = Notice.Variant.id.getter();
      v200 = v26;
      v201 = v25;
      outlined init with copy of TaskPriority?(v8, v6, &_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);
      v27 = type metadata accessor for Artwork();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v6, 1, v27) == 1)
      {
        outlined destroy of TaskPriority?(v6, &_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);
        v29 = 1;
        v30 = v210;
      }

      else
      {
        (*(v28 + 32))(v4, v6, v27);
        v30 = v210;
        swift_storeEnumTagMultiPayload();
        outlined init with take of Notice.Thumbnail(v4, v10);
        v29 = 0;
      }

      v117 = v208;
      v118 = *(v208 + 56);
      v118(v10, v29, 1, v30);
      v208 = *(v117 + 48);
      v119 = (v208)(v10, 1, v30);
      v199 = v118;
      if (v119 == 1)
      {
        *v12 = Image.init(_internalSystemName:)();
        swift_storeEnumTagMultiPayload();
        v118(v12, 0, 1, v30);
        if ((v208)(v10, 1, v30) != 1)
        {
          outlined destroy of TaskPriority?(v10, &_s9MusicCore6NoticeV9ThumbnailOSgMd, &_s9MusicCore6NoticeV9ThumbnailOSgMR);
        }
      }

      else
      {
        outlined init with take of Notice.Thumbnail(v10, v12);
        v118(v12, 0, 1, v30);
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v120._countAndFlagsBits = 0;
      v120._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v120);
      v211 = v198;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v121._countAndFlagsBits = 0x297328676E6F7320;
      v121._object = 0xEE00646564646120;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v121);
      String.LocalizationValue.init(stringInterpolation:)();
      v123 = v206;
      v122 = v207;
      (*(v207 + 16))(v204, v19, v206);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v124 = static NSBundle.module;
      static Locale.current.getter();
      v125 = String.init(localized:table:bundle:locale:comment:)();
      v127 = v126;
      (*(v122 + 8))(v19, v123);
      outlined destroy of TaskPriority?(v8, &_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);
      v128 = type metadata accessor for Notice(0);
      v129 = v128[5];
      v130 = v205;
      v199(v205 + v129, 1, 1, v210);
      v131 = (v130 + v128[7]);
      v132 = (v130 + v128[8]);
      v112 = v130 + v128[9];
      v113 = v130 + v128[10];
      v133 = v200;
      *v130 = v201;
      v130[1] = v133;
      result = outlined assign with take of Notice.Thumbnail?(v12, v130 + v129);
      v134 = (v130 + v128[6]);
      v135 = v202;
      *v134 = v203;
      v134[1] = v135;
      *v131 = v125;
      v131[1] = v127;
      *v132 = 0;
      v132[1] = 0;
      break;
  }

  *v112 = 0;
LABEL_37:
  v112[8] = 0;
  *v113 = 1;
  return result;
}

uint64_t Notice.thumbnail.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Notice(0) + 20);

  return outlined assign with take of Notice.Thumbnail?(a1, v3);
}

uint64_t Notice.message.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 24));

  return v1;
}

uint64_t Notice.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.headnote.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 28));

  return v1;
}

uint64_t Notice.headnote.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.link.getter()
{
  v1 = (v0 + *(type metadata accessor for Notice(0) + 32));
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t Notice.link.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 32));
  result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.hapticFeedback.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for Notice(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t Notice.isDismissable.setter(char a1)
{
  result = type metadata accessor for Notice(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t Notice.init(id:image:message:headnote:link:hapticFeedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v38 = a7;
  v39 = a8;
  v36 = a5;
  v37 = a6;
  v35 = a12;
  v33 = a11;
  v34 = a4;
  v32 = a10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd, &_s9MusicCore6NoticeV9ThumbnailOSgMR);
  __chkstk_darwin();
  v17 = &v32 - v16;
  *(&v32 - v16) = a3;
  v18 = type metadata accessor for Notice.Thumbnail(0);
  swift_storeEnumTagMultiPayload();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 0, 1, v18);
  v20 = type metadata accessor for Notice(0);
  v21 = v20[5];
  v19(&a9[v21], 1, 1, v18);
  v22 = &a9[v20[7]];
  v23 = &a9[v20[8]];
  v24 = v20[10];
  v25 = &a9[v20[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = outlined assign with take of Notice.Thumbnail?(v17, &a9[v21]);
  v27 = &a9[v20[6]];
  v28 = v36;
  *v27 = v34;
  *(v27 + 1) = v28;
  v29 = v38;
  *v22 = v37;
  *(v22 + 1) = v29;
  v31 = v32;
  v30 = v33;
  *v23 = v39;
  *(v23 + 1) = v31;
  *v25 = v30;
  v25[8] = v35 & 1;
  a9[v24] = 1;
  return result;
}

uint64_t Notice.init(id:thumbnail:message:headnote:link:hapticFeedback:isDismissable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13)
{
  v17 = type metadata accessor for Notice(0);
  v18 = v17[5];
  v19 = type metadata accessor for Notice.Thumbnail(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = &a9[v17[7]];
  v21 = &a9[v17[8]];
  v22 = v17[10];
  v23 = &a9[v17[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = outlined assign with take of Notice.Thumbnail?(a3, &a9[v18]);
  v25 = &a9[v17[6]];
  *v25 = a4;
  *(v25 + 1) = a5;
  *v20 = a6;
  *(v20 + 1) = a7;
  *v21 = a8;
  *(v21 + 1) = a10;
  *v23 = a11;
  v23[8] = a12 & 1;
  a9[v22] = a13;
  return result;
}

uint64_t Notice.init(id:symbol:message:headnote:link:hapticFeedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v37 = a7;
  v38 = a8;
  v36 = a6;
  v35 = a13;
  v33 = a12;
  v34 = a5;
  v31 = a10;
  v32 = a11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd, &_s9MusicCore6NoticeV9ThumbnailOSgMR);
  __chkstk_darwin();
  v17 = (&v31 - v16);
  *v17 = Image.init(_internalSystemName:)();
  v18 = type metadata accessor for Notice.Thumbnail(0);
  swift_storeEnumTagMultiPayload();
  v19 = *(*(v18 - 8) + 56);
  v19(v17, 0, 1, v18);
  v20 = type metadata accessor for Notice(0);
  v21 = v20[5];
  v19((a9 + v21), 1, 1, v18);
  v22 = (a9 + v20[7]);
  v23 = (a9 + v20[8]);
  v24 = v20[10];
  v25 = a9 + v20[9];
  *a9 = a1;
  a9[1] = a2;
  result = outlined assign with take of Notice.Thumbnail?(v17, a9 + v21);
  v27 = (a9 + v20[6]);
  v28 = v36;
  *v27 = v34;
  v27[1] = v28;
  v29 = v38;
  *v22 = v37;
  v22[1] = v29;
  v30 = v32;
  *v23 = v31;
  v23[1] = v30;
  *v25 = v33;
  v25[8] = v35 & 1;
  *(a9 + v24) = 1;
  return result;
}

uint64_t Notice.withLink(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of Notice.Variant(v3, a3, type metadata accessor for Notice);
  v7 = (a3 + *(type metadata accessor for Notice(0) + 32));
  v8 = *v7;
  v9 = v7[1];

  result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v8, v9);
  *v7 = a1;
  v7[1] = a2;
  return result;
}

unint64_t Notice.Variant.id.getter()
{
  type metadata accessor for Notice.Variant(0);
  __chkstk_darwin();
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Notice.Variant(v0, v2, type metadata accessor for Notice.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7478654E79616C70;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      _s9MusicCore6NoticeV7VariantOWOhTm_2(v2, type metadata accessor for Notice.Variant);
      result = 0x466F546465766F6DLL;
      break;
    case 2:
      _s9MusicCore6NoticeV7VariantOWOhTm_2(v2, type metadata accessor for Notice.Variant);
      result = 0xD000000000000016;
      break;
    case 3:
      _s9MusicCore6NoticeV7VariantOWOhTm_2(v2, type metadata accessor for Notice.Variant);
      result = 0xD000000000000014;
      break;
    case 4:
      _s9MusicCore6NoticeV7VariantOWOhTm_2(v2, type metadata accessor for Notice.Variant);
      result = 0x726F727265;
      break;
    case 5:
      return result;
    case 6:
      result = 0x7473614C79616C70;
      break;
    case 7:
      result = 0x6575516F54646461;
      break;
    case 8:
      result = 0x6574664179616C70;
      break;
    case 9:
      result = 0x417972617262696CLL;
      break;
    case 10:
      result = 0x72437265646C6F66;
      break;
    case 11:
      result = 0x436E6F6974617473;
      break;
    case 12:
      result = 0x64656E6E6970;
      break;
    case 13:
      result = 0x64656E6E69706E75;
      break;
    case 14:
      result = 0x657469726F766166;
      break;
    case 15:
      result = 0x69726F7661666E75;
      break;
    case 16:
      result = 0x4C74736567677573;
      break;
    case 17:
      result = 0xD00000000000001DLL;
      break;
    default:

      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS12playlistName_8MusicKit7ArtworkVSg7artworkSi9songCounttMd, &_sSS12playlistName_8MusicKit7ArtworkVSg7artworkSi9songCounttMR);
      outlined destroy of TaskPriority?(&v2[*(v5 + 48)], &_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);
      result = 0x506F546465646461;
      break;
  }

  return result;
}

uint64_t closure #1 in static Notice.variant(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin();
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v27 - v9;
  if (a2)
  {
    v11 = a2;
  }

  else
  {
    a1 = 0xD000000000000010;
    v11 = 0x80000001004CC090;
  }

  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0gq5Tf4g_n(_swiftEmptyArrayStorage);
  static URL.tapToRadar(title:description:screenshots:attachments:files:keywords:withDevicePrefix:)(a1, v11, 0xD000000000000032, 0x80000001004C8F70, _swiftEmptyArrayStorage, v12, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v10, 1u);
  v13 = v4;

  outlined init with copy of TaskPriority?(v10, v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v5 + 48))(v8, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v14 = v28;
    (*(v5 + 32))(v28, v8, v4);
    v15 = objc_opt_self();
    v16 = [v15 sharedApplication];
    URL._bridgeToObjectiveC()(v17);
    v19 = v18;
    v20 = [v16 canOpenURL:v18];

    if (v20)
    {
      v21 = [v15 sharedApplication];
      URL._bridgeToObjectiveC()(v22);
      v24 = v23;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo38UIApplicationOpenExternalURLOptionsKeya_ypTt0g5Tf4g_n(_swiftEmptyArrayStorage);
      type metadata accessor for UIApplicationOpenExternalURLOptionsKey(0);
      lazy protocol witness table accessor for type UIApplicationOpenExternalURLOptionsKey and conformance UIApplicationOpenExternalURLOptionsKey();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v21 openURL:v24 options:isa completionHandler:0];
    }

    (*(v5 + 8))(v14, v13);
    v8 = v10;
  }

  return outlined destroy of TaskPriority?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
}

uint64_t outlined assign with take of Notice.Thumbnail?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd, &_s9MusicCore6NoticeV9ThumbnailOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001B8368()
{

  return swift_deallocObject();
}

uint64_t outlined init with take of Artwork?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Notice.Thumbnail(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice.Thumbnail(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized static Notice.Thumbnail.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v21 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Notice.Thumbnail(0);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v20 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailO_AEtMd, &_s9MusicCore6NoticeV9ThumbnailO_AEtMR);
  __chkstk_darwin();
  v12 = &v20 - v11;
  v14 = *(v13 + 56);
  outlined init with copy of Notice.Variant(a1, &v20 - v11, type metadata accessor for Notice.Thumbnail);
  outlined init with copy of Notice.Variant(a2, &v12[v14], type metadata accessor for Notice.Thumbnail);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of Notice.Variant(v12, v10, type metadata accessor for Notice.Thumbnail);
    if (!swift_getEnumCaseMultiPayload())
    {
      v17 = static Image.== infix(_:_:)();

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of Notice.Variant(v12, v8, type metadata accessor for Notice.Thumbnail);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = v21;
      (*(v21 + 32))(v6, &v12[v14], v4);
      v17 = static Artwork.== infix(_:_:)();
      v18 = *(v16 + 8);
      v18(v6, v4);
      v18(v8, v4);
LABEL_12:
      _s9MusicCore6NoticeV7VariantOWOhTm_2(v12, type metadata accessor for Notice.Thumbnail);
      return v17 & 1;
    }

    (*(v21 + 8))(v8, v4);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    outlined destroy of TaskPriority?(v12, &_s9MusicCore6NoticeV9ThumbnailO_AEtMd, &_s9MusicCore6NoticeV9ThumbnailO_AEtMR);
    v17 = 0;
    return v17 & 1;
  }

  _s9MusicCore6NoticeV7VariantOWOhTm_2(v12, type metadata accessor for Notice.Thumbnail);
  v17 = 1;
  return v17 & 1;
}

uint64_t outlined init with copy of Notice.Variant(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized static Notice.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Notice.Thumbnail(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd, &_s9MusicCore6NoticeV9ThumbnailOSgMR);
  __chkstk_darwin();
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSg_AFtMd, &_s9MusicCore6NoticeV9ThumbnailOSg_AFtMR);
  __chkstk_darwin();
  v12 = &v37 - v11;
  v13 = *a1;
  v14 = a1[1];
  v38 = a1;
  if ((v13 != *a2 || v14 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = a2;
  v37 = type metadata accessor for Notice(0);
  v16 = *(v37 + 20);
  v17 = *(v10 + 48);
  outlined init with copy of TaskPriority?(v38 + v16, v12, &_s9MusicCore6NoticeV9ThumbnailOSgMd, &_s9MusicCore6NoticeV9ThumbnailOSgMR);
  v18 = v15 + v16;
  v19 = v15;
  outlined init with copy of TaskPriority?(v18, &v12[v17], &_s9MusicCore6NoticeV9ThumbnailOSgMd, &_s9MusicCore6NoticeV9ThumbnailOSgMR);
  v20 = *(v5 + 48);
  if (v20(v12, 1, v4) == 1)
  {
    if (v20(&v12[v17], 1, v4) == 1)
    {
      outlined destroy of TaskPriority?(v12, &_s9MusicCore6NoticeV9ThumbnailOSgMd, &_s9MusicCore6NoticeV9ThumbnailOSgMR);
      goto LABEL_13;
    }

LABEL_9:
    outlined destroy of TaskPriority?(v12, &_s9MusicCore6NoticeV9ThumbnailOSg_AFtMd, &_s9MusicCore6NoticeV9ThumbnailOSg_AFtMR);
    return 0;
  }

  outlined init with copy of TaskPriority?(v12, v9, &_s9MusicCore6NoticeV9ThumbnailOSgMd, &_s9MusicCore6NoticeV9ThumbnailOSgMR);
  if (v20(&v12[v17], 1, v4) == 1)
  {
    _s9MusicCore6NoticeV7VariantOWOhTm_2(v9, type metadata accessor for Notice.Thumbnail);
    goto LABEL_9;
  }

  outlined init with take of Notice.Thumbnail(&v12[v17], v7);
  v22 = specialized static Notice.Thumbnail.__derived_enum_equals(_:_:)(v9, v7);
  _s9MusicCore6NoticeV7VariantOWOhTm_2(v7, type metadata accessor for Notice.Thumbnail);
  _s9MusicCore6NoticeV7VariantOWOhTm_2(v9, type metadata accessor for Notice.Thumbnail);
  outlined destroy of TaskPriority?(v12, &_s9MusicCore6NoticeV9ThumbnailOSgMd, &_s9MusicCore6NoticeV9ThumbnailOSgMR);
  if ((v22 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v23 = v37;
  v24 = *(v37 + 24);
  v25 = (v38 + v24);
  v26 = *(v38 + v24 + 8);
  v27 = (v19 + v24);
  if ((*v25 != *v27 || v26 != v27[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v28 = *(v23 + 28);
  v29 = (v38 + v28);
  v30 = *(v38 + v28 + 8);
  v31 = (v19 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (v32 && (*v29 == *v31 && v30 == v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v32)
  {
    return 0;
  }

LABEL_23:
  v33 = *(v23 + 36);
  v34 = (v38 + v33);
  v35 = *(v38 + v33 + 8);
  v36 = v19 + v33;
  result = v36[8];
  if ((v35 & 1) == 0)
  {
    return (*v34 == *v36) & ~result;
  }

  return result;
}

uint64_t sub_1001B8C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd, &_s9MusicCore6NoticeV9ThumbnailOSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001B8CF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd, &_s9MusicCore6NoticeV9ThumbnailOSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Notice(uint64_t a1)
{
  type metadata accessor for Notice.Thumbnail?(319, &lazy cache variable for type metadata for Notice.Thumbnail?, type metadata accessor for Notice.Thumbnail);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (())?(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Notice.Thumbnail?(319, &lazy cache variable for type metadata for UINotificationFeedbackType?, type metadata accessor for UINotificationFeedbackType);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Notice.Thumbnail?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata completion function for Notice.Thumbnail(uint64_t a1)
{
  result = type metadata accessor for Artwork();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for Notice.Variant(uint64_t a1)
{
  type metadata accessor for (playlistName: String, artwork: Artwork?, songCount: Int)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (folderName: String?)(319, &lazy cache variable for type metadata for (folderName: String?));
    if (v2 <= 0x3F)
    {
      type metadata accessor for (playlistCount: Int, folderName: String?)(319, &lazy cache variable for type metadata for (playlistCount: Int, folderName: String?), "playlistCount folderName ");
      if (v3 <= 0x3F)
      {
        type metadata accessor for (playlistCount: Int, folderName: String?)(319, &lazy cache variable for type metadata for (folderCount: Int, folderName: String?), "folderCount folderName ");
        if (v4 <= 0x3F)
        {
          type metadata accessor for (folderName: String?)(319, &lazy cache variable for type metadata for (message: String?));
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for (playlistName: String, artwork: Artwork?, songCount: Int)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (playlistName: String, artwork: Artwork?, songCount: Int))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8MusicKit7ArtworkVSgMd, &_s8MusicKit7ArtworkVSgMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (playlistName: String, artwork: Artwork?, songCount: Int));
    }
  }
}

void type metadata accessor for (playlistCount: Int, folderName: String?)(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for (folderName: String?)(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    type metadata accessor for String?();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t _s9MusicCore6NoticeV7VariantOWOhTm_2(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v13 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v14 = v13[7];
  v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = v13[8];
  a7[v13[9]] = 1;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(a4, &a7[v13[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = outlined assign with take of NowPlaying.TrackMetadata.StringKind?(a5, &a7[v14]);
  *&a7[v16] = a6;
  return result;
}

uint64_t outlined assign with take of NowPlaying.TrackMetadata.StringKind?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v21 = a3;
  v22 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
  __chkstk_darwin();
  v13 = &v21 - v12;
  v14 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v15 = &a7[v14[6]];
  *v15 = a4;
  *(v15 + 1) = a5;
  v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v17 = *(*(v16 - 8) + 56);
  v17(v13, 1, 1, v16);
  v18 = v14[7];
  v17(&a7[v18], 1, 1, v16);
  v19 = v14[8];
  a7[v14[9]] = 1;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = v21;
  result = outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v13, &a7[v18]);
  *&a7[v19] = v22;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v31 = a3;
  v32 = a7;
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
  __chkstk_darwin();
  v14 = &v29 - v13;
  v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = a4;
  v18[1] = a5;
  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for AttributedString();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(a6, 1, v19) == 1)
  {
    outlined destroy of TaskPriority?(a6, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    v21 = 1;
  }

  else
  {
    (*(v20 + 32))(v14, a6, v19);
    swift_storeEnumTagMultiPayload();
    v21 = 0;
  }

  v22 = *(v16 + 56);
  v22(v14, v21, 1, v15);
  v23 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v24 = v23[7];
  v22(&a8[v24], 1, 1, v15);
  v25 = v23[8];
  a8[v23[9]] = 1;
  v27 = v30;
  v26 = v31;
  *a8 = a1;
  *(a8 + 1) = v27;
  *(a8 + 2) = v26;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v18, &a8[v23[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v14, &a8[v24]);
  *&a8[v25] = v32;
  return result;
}

uint64_t NowPlaying.TrackMetadata.StringKind.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    outlined destroy of TaskPriority?(a1, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    v6 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v7 = *(*(v6 - 8) + 56);
    v8 = v6;
    v9 = a2;
    v10 = 1;
  }

  else
  {
    (*(v5 + 32))(a2, a1, v4);
    v11 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    swift_storeEnumTagMultiPayload();
    v7 = *(*(v11 - 8) + 56);
    v9 = a2;
    v10 = 0;
    v8 = v11;
  }

  return v7(v9, v10, 1, v8);
}

{
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v27 = a3;
  v28 = a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
  __chkstk_darwin();
  v15 = (&v27 - v14);
  v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AttributedString();
  (*(*(v20 - 8) + 32))(v19, a4, v20);
  swift_storeEnumTagMultiPayload();
  if (a6)
  {
    *v15 = a5;
    v15[1] = a6;
    swift_storeEnumTagMultiPayload();
    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = *(v17 + 56);
  v22(v15, v21, 1, v16);
  v23 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v24 = v23[7];
  v22((a8 + v24), 1, 1, v16);
  v25 = v23[8];
  *(a8 + v23[9]) = 1;
  *a8 = a1;
  a8[1] = a2;
  a8[2] = v27;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v19, a8 + v23[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v15, a8 + v24);
  *(a8 + v25) = v28;
  return result;
}

uint64_t NowPlaying.TrackMetadata.StringKind.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    *a3 = a1;
    a3[1] = a2;
    v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    swift_storeEnumTagMultiPayload();
    v5 = *(*(v4 - 8) + 56);
    v6 = a3;
    v7 = 0;
    v8 = v4;
  }

  else
  {
    v9 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v5 = *(*(v9 - 8) + 56);
    v8 = v9;
    v6 = a3;
    v7 = 1;
  }

  return v5(v6, v7, 1, v8);
}

{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NowPlaying.TrackMetadata.title.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 24);

  return outlined assign with take of NowPlaying.TrackMetadata.StringKind(a1, v3);
}

uint64_t NowPlaying.TrackMetadata.subtitle.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 28);

  return outlined assign with take of NowPlaying.TrackMetadata.StringKind?(a1, v3);
}

void *NowPlaying.TrackMetadata.artwork.getter()
{
  v1 = *(v0 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 32));
  v2 = v1;
  return v1;
}

void NowPlaying.TrackMetadata.artwork.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NowPlaying.TrackMetadata(0) + 32);

  *(v1 + v3) = a1;
}

uint64_t outlined assign with take of NowPlaying.TrackMetadata.StringKind(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlaying.TrackMetadata.StringKind.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NowPlaying.TrackMetadata.StringKind(v1, v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v7;
  }

  (*(v3 + 32))(v5, v7, v2);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString();
  v8 = AttributedStringProtocol.description.getter();
  (*(v3 + 8))(v5, v2);
  return v8;
}

unint64_t lazy protocol witness table accessor for type AttributedString and conformance AttributedString()
{
  result = lazy protocol witness table cache variable for type AttributedString and conformance AttributedString;
  if (!lazy protocol witness table cache variable for type AttributedString and conformance AttributedString)
  {
    type metadata accessor for AttributedString();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString and conformance AttributedString);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NowPlaying.TrackMetadata.StringKind(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NowPlaying.TrackMetadata.StringKind(v2, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v4 + 32))(v6, v8, v3);
  lazy protocol witness table accessor for type AttributedString and conformance AttributedString();
  v9 = AttributedStringProtocol.description.getter();
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t NowPlaying.TrackMetadata.isArtworkVisuallyEqual(to:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataVSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR);
  __chkstk_darwin();
  v4 = &v12 - v3;
  v5 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v6 = *(v1 + *(v5 + 32));
  outlined init with copy of TaskPriority?(a1, v4, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    v7 = v6;
    outlined destroy of TaskPriority?(v4, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *&v4[*(v5 + 32)];
    v7 = v9;
    v10 = v6;
    outlined destroy of NowPlaying.TrackMetadata(v4, type metadata accessor for NowPlaying.TrackMetadata);
    if (v6)
    {
      if (v9)
      {
        if ([v10 isArtworkVisuallyIdenticalToCatalog:v7])
        {
          v8 = 1;
        }

        else
        {
          type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
          v8 = static NSObject.== infix(_:_:)();
        }
      }

      else
      {
        v8 = 0;
        v7 = v10;
      }

      goto LABEL_13;
    }

    if (v9)
    {
LABEL_3:
      v8 = 0;
LABEL_13:

      return v8 & 1;
    }
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t NowPlaying.TrackMetadata.isEmpty.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (one-time initialization token for notPlaying != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v4 = __swift_project_value_buffer(v3, static NowPlaying.TrackMetadata.notPlaying);
  if (v1 == *v4 && v2 == v4[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void one-time initialization function for notPlaying()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
  __chkstk_darwin();
  v25 = &v23 - v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v23 - v5;
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __swift_allocate_value_buffer(v11, static NowPlaying.TrackMetadata.notPlaying);
  v12 = __swift_project_value_buffer(v11, static NowPlaying.TrackMetadata.notPlaying);
  String.LocalizationValue.init(stringLiteral:)();
  v13 = *(v2 + 16);
  v24 = v1;
  v13(v4, v6, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v14 = static NSBundle.module;
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  (*(v2 + 8))(v6, v24);
  *v10 = v15;
  v10[1] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = *(v8 + 56);
  v19 = v25;
  v18(v25, 1, 1, v7);
  v20 = v11[7];
  v18(&v12[v20], 1, 1, v7);
  v21 = v11[8];
  *&v12[v21] = 0;
  v12[v11[9]] = 1;
  *v12 = 0x79616C705F746F6ELL;
  *(v12 + 1) = 0xEB00000000676E69;
  *(v12 + 2) = 0;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v10, &v12[v11[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v19, &v12[v20]);
  v22 = *&v12[v21];
  *&v12[v21] = 0;
}

void one-time initialization function for loading()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
  __chkstk_darwin();
  v25 = &v23 - v0;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v23 - v5;
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __swift_allocate_value_buffer(v11, static NowPlaying.TrackMetadata.loading);
  v12 = __swift_project_value_buffer(v11, static NowPlaying.TrackMetadata.loading);
  String.LocalizationValue.init(stringLiteral:)();
  v13 = *(v2 + 16);
  v24 = v1;
  v13(v4, v6, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v14 = static NSBundle.module;
  static Locale.current.getter();
  v15 = String.init(localized:table:bundle:locale:comment:)();
  v17 = v16;
  (*(v2 + 8))(v6, v24);
  *v10 = v15;
  v10[1] = v17;
  swift_storeEnumTagMultiPayload();
  v18 = *(v8 + 56);
  v19 = v25;
  v18(v25, 1, 1, v7);
  v20 = v11[7];
  v18((v12 + v20), 1, 1, v7);
  v21 = v11[8];
  *(v12 + v21) = 0;
  *(v12 + v11[9]) = 1;
  strcpy(v12, "i_am_loading");
  *(v12 + 13) = 0;
  *(v12 + 14) = -5120;
  *(v12 + 16) = 0;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v10, v12 + v11[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v19, v12 + v20);
  v22 = *(v12 + v21);
  *(v12 + v21) = 0;
}

uint64_t NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t static NowPlaying.TrackMetadata.notPlaying.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return outlined init with copy of NowPlaying.TrackMetadata.StringKind(v7, a4, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t NowPlaying.TrackMetadata.init(playerPath:item:subtitled:)@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v62) = a3;
  v69 = a2;
  v71 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
  __chkstk_darwin();
  v68 = &v58 - v5;
  v70 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin();
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AttributeContainer();
  __chkstk_darwin();
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for AttributedString();
  v65 = *(v67 - 8);
  __chkstk_darwin();
  v63 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v58 - v9;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v10 = type metadata accessor for String.LocalizationValue();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v58 - v14;
  String.LocalizationValue.init(stringLiteral:)();
  v16 = *(v11 + 16);
  v16(v13, v15, v10);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v17 = static NSBundle.module;
  static Locale.current.getter();
  v18 = v17;
  v19 = String.init(localized:table:bundle:locale:comment:)();
  v59 = v20;
  v60 = v19;
  v21 = *(v11 + 8);
  v21(v15, v10);
  String.LocalizationValue.init(stringLiteral:)();
  v16(v13, v15, v10);
  static Locale.current.getter();
  v22 = String.init(localized:table:bundle:locale:comment:)();
  v24 = v23;
  v21(v15, v10);
  v25 = [a1 route];
  v26 = a1;
  if (v25)
  {
    v27 = v25;
    v28 = [v25 routeName];

    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = [a1 representedBundleDisplayName];
  if (!v32)
  {
    if (v62)
    {
      goto LABEL_11;
    }

LABEL_12:

    v37 = v59;

    v31 = v37;
    v36 = v60;
    v29 = v60;
    goto LABEL_13;
  }

  v33 = v32;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  if ((v62 & 1) == 0)
  {
    goto LABEL_12;
  }

  if (!v35)
  {
LABEL_11:

    v37 = v59;

    v36 = v60;
    goto LABEL_13;
  }

  v31 = v24;
  v29 = v22;
  v37 = v59;
  v36 = v60;
LABEL_13:
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v38 = [v26 representedBundleID];
  if (!v38)
  {
    v38 = [v26 bundleID];
    if (!v38)
    {
      v61 = 0xD000000000000013;
      v62 = 0x80000001004CC0D0;
      v66 = v26;
      if (v31)
      {
        goto LABEL_16;
      }

LABEL_18:
      v29 = v36;
      goto LABEL_19;
    }
  }

  v39 = v38;
  v61 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v62 = v40;

  v66 = v26;
  if (!v31)
  {
    goto LABEL_18;
  }

LABEL_16:

  v37 = v31;
LABEL_19:
  v41 = v65;
  v42 = v63;
  v43 = v67;
  (*(v65 + 16))(v63, v72, v67);
  v44 = v70;
  v45 = v64;
  v46 = &v64[*(v70 + 24)];
  *v46 = v29;
  v46[1] = v37;
  v47 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v48 = v68;
  (*(v41 + 32))(v68, v42, v43);
  swift_storeEnumTagMultiPayload();
  v49 = *(*(v47 - 8) + 56);
  v49(v48, 0, 1, v47);
  v50 = v44[7];
  v49(v45 + v50, 1, 1, v47);
  v51 = v44[8];
  *(v45 + v44[9]) = 1;
  v52 = v62;
  *v45 = v61;
  v45[1] = v52;
  v53 = v69;
  v45[2] = v69;
  v54 = v53;
  outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v48, v45 + v50);
  *(v45 + v51) = 0;
  v55 = v71;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v45, v71, type metadata accessor for NowPlaying.TrackMetadata);
  v56 = v66;
  LOBYTE(v46) = [v66 isSystemMusicPath];

  result = (*(v41 + 8))(v72, v43);
  *(v55 + v44[9]) = v46;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:)@<X0>(void *a1@<X0>, void *a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  __chkstk_darwin();
  v11 = (&v65 - v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
  __chkstk_darwin();
  v73 = &v65 - v12;
  v13 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v71 = *(v13 - 8);
  v72 = v13;
  __chkstk_darwin();
  v76 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = (&v65 - v15);
  v17 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v18 = *(v17 - 1);
  __chkstk_darwin();
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v77 = a2;
    v78 = a3;
    v74 = v17;
    v75 = a4;
    v21 = a1;
    v22 = [v21 metadataObject];
    if (v22)
    {
      v68 = v22;
      v23 = [v22 innermostModelObject];
      objc_opt_self();
      v24 = swift_dynamicCastObjCClass();
      v67 = a5;
      v69 = v18;
      v70 = v24;
      v25 = v78;
      if (v24)
      {

        if (v77 && (v26 = [v77 items], v27 = objc_msgSend(v26, "firstSection"), v26, v27) && (v28 = objc_msgSend(v27, "metadataObject"), v27, v28))
        {
          v29 = [v28 anyObject];

          v30 = v72;
          if (v29)
          {
            objc_opt_self();
            v65 = v29;
            v29 = swift_dynamicCastObjCClass();
            if (!v29)
            {
            }
          }
        }

        else
        {
          v29 = 0;
          v30 = v72;
        }

        v66 = a1;
        if (v25)
        {
          MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(v29, v25, v75);
        }

        else
        {
          *v16 = MPModelSong.nowPlayingTitle(from:)(v29);
          v16[1] = v35;
        }

        swift_storeEnumTagMultiPayload();
        v36 = [v21 queueItemIdentifier];
        v72 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v37;

        outlined init with copy of NowPlaying.TrackMetadata.StringKind(v16, v76, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        v38 = v29;
        MPModelSong.preferredBylineAttribution(with:from:)(&outlined read-only object #0 of NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:), v29, v11);
        v39 = type metadata accessor for AttributedString();
        v40 = *(v39 - 8);
        if ((*(v40 + 48))(v11, 1, v39) == 1)
        {
          outlined destroy of TaskPriority?(v11, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
          v41 = 1;
          v42 = v73;
        }

        else
        {
          v42 = v73;
          (*(v40 + 32))(v73, v11, v39);
          swift_storeEnumTagMultiPayload();
          v41 = 0;
        }

        v43 = v30;
        v44 = *(v71 + 56);
        v44(v42, v41, 1, v43);
        v45 = [v70 artworkCatalog];

        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v78, v75);
        outlined destroy of NowPlaying.TrackMetadata(v16, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        v17 = v74;
        v46 = v74[7];
        v44(v20 + v46, 1, 1, v43);
        v47 = v17[8];
        *(v20 + v17[9]) = 1;
        v49 = v65;
        v48 = v66;
        *v20 = v72;
        v20[1] = v49;
        v20[2] = v48;
        outlined init with take of NowPlaying.TrackMetadata.StringKind(v76, v20 + v17[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v42, v20 + v46);
        *(v20 + v47) = v45;
        a5 = v67;
      }

      else
      {
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (v32)
        {
          v33 = v32;
          v34 = v23;
          NowPlaying.TrackMetadata.init(tvEpisode:item:)(v33, v21, v20);

          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v25, v75);
          v17 = v74;
        }

        else
        {
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          v17 = v74;
          v52 = v75;
          if (!v51)
          {

            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v55 = type metadata accessor for Logger();
            __swift_project_value_buffer(v55, static NowPlaying.TrackMetadata.logger);
            v56 = v68;
            v57 = Logger.logObject.getter();
            v58 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v57, v58))
            {
              v59 = v21;
              v60 = swift_slowAlloc();
              v61 = swift_slowAlloc();
              v80 = v61;
              *v60 = 136315138;
              v79 = [v56 type];
              type metadata accessor for MPModelGenericObjectType(0);
              v62 = String.init<A>(describing:)();
              v64 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_0(v62, v63, &v80);
              a5 = v67;

              *(v60 + 4) = v64;
              _os_log_impl(&_mh_execute_header, v57, v58, "Unexpected metadataObject type %s", v60, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v61);

              outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v78, v52);
            }

            else
            {

              outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v78, v52);
            }

            v31 = 1;
            goto LABEL_23;
          }

          v53 = v51;
          v54 = v23;
          NowPlaying.TrackMetadata.init(movie:item:)(v53, v21, v20);

          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v78, v52);
        }
      }

      outlined init with take of NowPlaying.TrackMetadata.StringKind(v20, a5, type metadata accessor for NowPlaying.TrackMetadata);
      v31 = 0;
LABEL_23:
      v18 = v69;
      return (*(v18 + 56))(a5, v31, 1, v17);
    }

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v78, v75);
    v31 = 1;
    v17 = v74;
  }

  else
  {
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a3, a4);

    v31 = 1;
  }

  return (*(v18 + 56))(a5, v31, 1, v17);
}

uint64_t NowPlaying.TrackMetadata.init(song:from:item:explicitBadgeConfigurator:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a5@<X4>, char *a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  __chkstk_darwin();
  v12 = (&v36 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
  __chkstk_darwin();
  v14 = &v36 - v13;
  v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v43 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = (&v36 - v19);
  v40 = v18;
  v41 = a5;
  if (v18)
  {
    MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(a2, v18, a5);
  }

  else
  {
    *v20 = MPModelSong.nowPlayingTitle(from:)(a2);
    v20[1] = v21;
  }

  swift_storeEnumTagMultiPayload();
  v42 = a3;
  v22 = [a3 queueItemIdentifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v24;
  v38 = v23;

  outlined init with copy of NowPlaying.TrackMetadata.StringKind(v20, v43, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v39 = a2;
  MPModelSong.preferredBylineAttribution(with:from:)(&outlined read-only object #0 of NowPlaying.TrackMetadata.init(song:from:item:explicitBadgeConfigurator:), a2, v12);
  v25 = type metadata accessor for AttributedString();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v12, 1, v25) == 1)
  {
    outlined destroy of TaskPriority?(v12, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    v27 = 1;
  }

  else
  {
    (*(v26 + 32))(v14, v12, v25);
    swift_storeEnumTagMultiPayload();
    v27 = 0;
  }

  v28 = *(v16 + 56);
  v28(v14, v27, 1, v15);
  v29 = [a1 artworkCatalog];

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v40, v41);
  outlined destroy of NowPlaying.TrackMetadata(v20, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v30 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v31 = v30[7];
  v28(&a6[v31], 1, 1, v15);
  v32 = v30[8];
  a6[v30[9]] = 1;
  v33 = v37;
  *a6 = v38;
  *(a6 + 1) = v33;
  v34 = v43;
  *(a6 + 2) = v42;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v34, &a6[v30[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v14, &a6[v31]);
  *&a6[v32] = v29;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(tvEpisode:item:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
  __chkstk_darwin();
  v47 = &v42 - v6;
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin();
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
  __chkstk_darwin();
  v11 = &v42 - v10;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v12 = type metadata accessor for String.LocalizationValue();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v18 = &v42 - v17;
  v48 = a2;
  v19 = [a2 queueItemIdentifier];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v42 = v21;
  v43 = v20;

  v44 = a1;
  v22 = [a1 title];
  if (v22)
  {
    v23 = v22;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v13 + 16))(v15, v18, v12);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v27 = static NSBundle.module;
    static Locale.current.getter();
    v24 = String.init(localized:table:bundle:locale:comment:)();
    v26 = v28;
    (*(v13 + 8))(v18, v12);
  }

  v29 = type metadata accessor for AttributedString();
  v30 = *(v29 - 8);
  (*(v30 + 56))(v11, 1, 1, v29);
  v31 = v44;
  v32 = [v44 artworkCatalog];

  *v9 = v24;
  v9[1] = v26;
  v33 = v46;
  swift_storeEnumTagMultiPayload();
  if ((*(v30 + 48))(v11, 1, v29) == 1)
  {
    outlined destroy of TaskPriority?(v11, &_s10Foundation16AttributedStringVSgMd, &_s10Foundation16AttributedStringVSgMR);
    v34 = 1;
    v35 = v47;
  }

  else
  {
    v35 = v47;
    (*(v30 + 32))(v47, v11, v29);
    swift_storeEnumTagMultiPayload();
    v34 = 0;
  }

  v36 = *(v45 + 56);
  v36(v35, v34, 1, v33);
  v37 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v38 = v37[7];
  v36(a3 + v38, 1, 1, v33);
  v39 = v37[8];
  *(a3 + v37[9]) = 1;
  v40 = v42;
  *a3 = v43;
  a3[1] = v40;
  a3[2] = v48;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(v9, a3 + v37[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v35, a3 + v38);
  *(a3 + v39) = v32;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(movie:item:)@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
  __chkstk_darwin();
  v7 = &v34 - v6;
  type metadata accessor for Locale();
  __chkstk_darwin();
  v8 = type metadata accessor for String.LocalizationValue();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v34 - v13;
  v15 = [a2 queueItemIdentifier];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v17;
  v36 = v16;

  v18 = [a1 title];
  if (v18)
  {
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;
  }

  else
  {
    String.LocalizationValue.init(stringLiteral:)();
    (*(v9 + 16))(v11, v14, v8);
    if (one-time initialization token for module != -1)
    {
      swift_once();
    }

    v23 = static NSBundle.module;
    static Locale.current.getter();
    v20 = String.init(localized:table:bundle:locale:comment:)();
    v22 = v24;
    (*(v9 + 8))(v14, v8);
  }

  v25 = [a1 artworkCatalog];

  v26 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v27 = &a3[v26[6]];
  *v27 = v20;
  v27[1] = v22;
  v28 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v29 = *(*(v28 - 8) + 56);
  v29(v7, 1, 1, v28);
  v30 = v26[7];
  v29(&a3[v30], 1, 1, v28);
  v31 = v26[8];
  a3[v26[9]] = 1;
  v32 = v35;
  *a3 = v36;
  *(a3 + 1) = v32;
  *(a3 + 2) = a2;
  result = outlined assign with take of NowPlaying.TrackMetadata.StringKind?(v7, &a3[v30]);
  *&a3[v31] = v25;
  return result;
}

uint64_t static Logger.nowPlaying(_:)(uint64_t a1, uint64_t a2)
{
  String.append(_:)(*&a1);

  return Logger.init(subsystem:category:)();
}

uint64_t specialized static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v24 = type metadata accessor for AttributedString();
  v4 = *(v24 - 8);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v23 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO_AGtMd, _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO_AGtMR);
  __chkstk_darwin();
  v12 = &v23 - v11;
  v14 = (&v23 + *(v13 + 56) - v11);
  outlined init with copy of NowPlaying.TrackMetadata.StringKind(a1, &v23 - v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined init with copy of NowPlaying.TrackMetadata.StringKind(a2, v14, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    outlined init with copy of NowPlaying.TrackMetadata.StringKind(v12, v10, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v19 = *v10;
    v18 = v10[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v19 == *v14 && v18 == v14[1])
      {
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          outlined destroy of NowPlaying.TrackMetadata(v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
          goto LABEL_8;
        }
      }

      outlined destroy of NowPlaying.TrackMetadata(v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      v16 = 1;
      return v16 & 1;
    }

LABEL_7:
    outlined destroy of TaskPriority?(v12, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO_AGtMd, _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO_AGtMR);
LABEL_8:
    v16 = 0;
    return v16 & 1;
  }

  outlined init with copy of NowPlaying.TrackMetadata.StringKind(v12, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v8, v24);
    goto LABEL_7;
  }

  v15 = v24;
  (*(v4 + 32))(v6, v14, v24);
  v16 = static AttributedString.== infix(_:_:)();
  v17 = *(v4 + 8);
  v17(v6, v15);
  v17(v8, v15);
  outlined destroy of NowPlaying.TrackMetadata(v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  return v16 & 1;
}

uint64_t specialized static NowPlaying.TrackMetadata.== infix(_:_:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataVSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR);
  __chkstk_darwin();
  v5 = &v24 - v4;
  v6 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
  __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMR);
  __chkstk_darwin();
  v14 = &v24 - v13;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_10;
  }

  v15 = type metadata accessor for NowPlaying.TrackMetadata(0);
  if ((specialized static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(a1 + *(v15 + 24), a2 + *(v15 + 24)) & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v9;
  v26 = v15;
  v27 = v5;
  v16 = *(v15 + 28);
  v17 = *(v12 + 48);
  outlined init with copy of TaskPriority?(a1 + v16, v14, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
  outlined init with copy of TaskPriority?(a2 + v16, &v14[v17], &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
  v18 = *(v7 + 48);
  if (v18(v14, 1, v6) == 1)
  {
    if (v18(&v14[v17], 1, v6) == 1)
    {
      outlined destroy of TaskPriority?(v14, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
LABEL_13:
      v23 = v27;
      outlined init with copy of NowPlaying.TrackMetadata.StringKind(a2, v27, type metadata accessor for NowPlaying.TrackMetadata);
      (*(*(v26 - 8) + 56))(v23, 0, 1);
      v19 = NowPlaying.TrackMetadata.isArtworkVisuallyEqual(to:)(v23);
      outlined destroy of TaskPriority?(v23, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataVSgMR);
      return v19 & 1;
    }

    goto LABEL_9;
  }

  outlined init with copy of TaskPriority?(v14, v11, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
  if (v18(&v14[v17], 1, v6) == 1)
  {
    outlined destroy of NowPlaying.TrackMetadata(v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_9:
    outlined destroy of TaskPriority?(v14, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSg_AHtMR);
    goto LABEL_10;
  }

  v21 = v25;
  outlined init with take of NowPlaying.TrackMetadata.StringKind(&v14[v17], v25, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v22 = specialized static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(v11, v21);
  outlined destroy of NowPlaying.TrackMetadata(v21, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined destroy of NowPlaying.TrackMetadata(v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  outlined destroy of TaskPriority?(v14, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
  if (v22)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = 0;
  return v19 & 1;
}

uint64_t outlined init with copy of NowPlaying.TrackMetadata.StringKind(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of NowPlaying.TrackMetadata.StringKind(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NowPlaying.TrackMetadata(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001BD41C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1001BD560(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMd, &_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindOSgMR);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void type metadata completion function for NowPlaying.TrackMetadata(uint64_t a1)
{
  type metadata accessor for MPCPlayerResponseItem?(319, &lazy cache variable for type metadata for MPCPlayerResponseItem?, &lazy cache variable for type metadata for MPCPlayerResponseItem, MPCPlayerResponseItem_ptr);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NowPlaying.TrackMetadata.StringKind?(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MPCPlayerResponseItem?(319, &lazy cache variable for type metadata for MPArtworkCatalog?, &lazy cache variable for type metadata for MPArtworkCatalog, MPArtworkCatalog_ptr);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for NowPlaying.TrackMetadata.StringKind?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for NowPlaying.TrackMetadata.StringKind?)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for NowPlaying.TrackMetadata.StringKind?);
    }
  }
}

void type metadata accessor for MPCPlayerResponseItem?(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    type metadata accessor for UIAction(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t type metadata completion function for NowPlaying.TrackMetadata.StringKind(uint64_t a1)
{
  result = type metadata accessor for AttributedString();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t KeyboardObserverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = static Edge.Set.top.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI5StateVy12CoreGraphics7CGFloatVGMR);
  State.wrappedValue.getter();
  EdgeInsets.init(_all:)();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy9MusicCore016KeyboardObserverD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy9MusicCore016KeyboardObserverD0VGMR);
  (*(*(v17 - 8) + 16))(a3, a1, v17);
  v18 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy9MusicCore016KeyboardObserverF0VGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy9MusicCore016KeyboardObserverF0VGAA14_PaddingLayoutVGMR) + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  v19 = specialized static Publishers.keyboardHeight.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16SubscriptionViewVy7Combine12AnyPublisherVy12CoreGraphics7CGFloatVs5NeverOGAA15ModifiedContentVyAA01_d9Modifier_M0Vy05MusicH0016KeyboardObserverN0VGAA14_PaddingLayoutVGGMd, &_s7SwiftUI16SubscriptionViewVy7Combine12AnyPublisherVy12CoreGraphics7CGFloatVs5NeverOGAA15ModifiedContentVyAA01_d9Modifier_M0Vy05MusicH0016KeyboardObserverN0VGAA14_PaddingLayoutVGGMR);
  *(a3 + *(v21 + 52)) = v19;
  v22 = (a3 + *(v21 + 56));
  *v22 = partial apply for closure #1 in KeyboardObserverModifier.body(content:);
  v22[1] = v20;
}

uint64_t closure #1 in KeyboardObserverModifier.body(content:)(uint64_t *a1, uint64_t a2, double a3)
{
  static Animation.easeInOut(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t View.keyboardReactive()(uint64_t a1)
{
  v1 = __chkstk_darwin();
  (*(v3 + 16))(v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v5[1] = 0;
  State.init(wrappedValue:)();
  return ModifiedContent.init(content:modifier:)();
}

uint64_t sub_1001BDBE4(void *a1)
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type KeyboardObserverModifier and conformance KeyboardObserverModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type KeyboardObserverModifier and conformance KeyboardObserverModifier()
{
  result = lazy protocol witness table cache variable for type KeyboardObserverModifier and conformance KeyboardObserverModifier;
  if (!lazy protocol witness table cache variable for type KeyboardObserverModifier and conformance KeyboardObserverModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KeyboardObserverModifier and conformance KeyboardObserverModifier);
  }

  return result;
}

CGFloat Notification.keyboardHeight.getter()
{
  v0 = Notification.userInfo.getter();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v1 + 16) || (v2 = specialized __RawDictionaryStorage.find<A>(_:)(&v5), (v3 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v5);
LABEL_8:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v2, &v6);
  outlined destroy of AnyHashable(&v5);

  if (!*(&v7 + 1))
  {
LABEL_9:
    outlined destroy of Any?(&v6);
    return 0.0;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    return CGRectGetHeight(v5);
  }

  return 0.0;
}

uint64_t specialized static Publishers.keyboardHeight.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9MergeManyVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherV12CoreGraphics7CGFloatVGGMd, &_s7Combine10PublishersO9MergeManyVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherV12CoreGraphics7CGFloatVGGMR);
  v1 = *(v0 - 8);
  v31 = v0;
  v32 = v1;
  __chkstk_darwin();
  v30 = &v27 - v2;
  v3 = type metadata accessor for NSNotificationCenter.Publisher();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherV12CoreGraphics7CGFloatVGMd, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherV12CoreGraphics7CGFloatVGMR);
  v29 = *(v7 - 8);
  v8 = v29;
  __chkstk_darwin();
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v27 - v10;
  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher();
  Publisher.map<A>(_:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  v14 = [v11 defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v15 = v28;
  Publisher.map<A>(_:)();
  v13(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherV12CoreGraphics7CGFloatVGGMd, &_ss23_ContiguousArrayStorageCy7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherV12CoreGraphics7CGFloatVGGMR);
  v16 = *(v29 + 72);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1004F2EF0;
  v19 = v18 + v17;
  v20 = *(v8 + 16);
  v21 = v27;
  v20(v19, v27, v7);
  v20(v19 + v16, v15, v7);
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.Map<NSNotificationCenter.Publisher, CGFloat> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherV12CoreGraphics7CGFloatVGMd, &_s7Combine10PublishersO3MapVy_So20NSNotificationCenterC10FoundationE9PublisherV12CoreGraphics7CGFloatVGMR, &protocol conformance descriptor for Publishers.Map<A, B>);
  v22 = v30;
  Publishers.MergeMany.init(_:)();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type Publishers.MergeMany<Publishers.Map<NSNotificationCenter.Publisher, CGFloat>> and conformance Publishers.MergeMany<A>, &_s7Combine10PublishersO9MergeManyVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherV12CoreGraphics7CGFloatVGGMd, &_s7Combine10PublishersO9MergeManyVy_AC3MapVy_So20NSNotificationCenterC10FoundationE9PublisherV12CoreGraphics7CGFloatVGGMR, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v23 = v31;
  v24 = Publisher.eraseToAnyPublisher()();
  (*(v32 + 8))(v22, v23);
  v25 = *(v8 + 8);
  v25(v15, v7);
  v25(v21, v7);
  return v24;
}

uint64_t sub_1001BE264()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher()
{
  result = lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher;
  if (!lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher)
  {
    type metadata accessor for NSNotificationCenter.Publisher();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSNotificationCenter.Publisher and conformance NSNotificationCenter.Publisher);
  }

  return result;
}

uint64_t Published.init(wrappedValue:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = __chkstk_darwin();
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  Published.init(initialValue:)();
  return (*(v4 + 8))(a1, a2);
}

uint64_t property wrapper backing initializer of OptionalObservableObject.output(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, a1, v3, v5);
  Published.init(wrappedValue:)(v7, v3);
  return (*(v4 + 8))(a1, v3);
}

uint64_t OptionalObservableObject.output.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t OptionalObservableObject.output.setter(uint64_t a1)
{
  specialized OptionalObservableObject.output.setter(a1);
  v2 = type metadata accessor for Optional();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t (*OptionalObservableObject.output.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  __chkstk_darwin();
  v3[4] = swift_getKeyPath();
  __chkstk_darwin();
  v3[5] = swift_getKeyPath();
  v3[6] = static Published.subscript.modify();
  return OptionalObservableObject.output.modify;
}

void OptionalObservableObject.output.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t OptionalObservableObject.$output.getter()
{
  swift_beginAccess();
  type metadata accessor for Optional();
  type metadata accessor for Published();
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t OptionalObservableObject.$output.setter(uint64_t a1)
{
  specialized OptionalObservableObject.$output.setter(a1);
  type metadata accessor for Optional();
  v2 = type metadata accessor for Published.Publisher();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*OptionalObservableObject.$output.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  type metadata accessor for Optional();
  v5 = type metadata accessor for Published.Publisher();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v4[2] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[4] = v8;
  OptionalObservableObject.$output.getter();
  return OptionalObservableObject.$output.modify;
}

void OptionalObservableObject.$output.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    specialized OptionalObservableObject.$output.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized OptionalObservableObject.$output.setter(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t OptionalObservableObject.__allocating_init(publisher:)(__int128 *a1)
{
  v2 = swift_allocObject();
  OptionalObservableObject.init(publisher:)(a1);
  return v2;
}

uint64_t *OptionalObservableObject.init(publisher:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  type metadata accessor for Optional();
  v6 = type metadata accessor for Published();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = __chkstk_darwin();
  v12 = &v21 - v11;
  v13 = *(v4 + 88);
  (*(*(v5 - 8) + 56))(&v21 - v11, 1, 1, v5, v10);
  property wrapper backing initializer of OptionalObservableObject.output(v12, v5);
  (*(v7 + 32))(v2 + v13, v9, v6);
  *(v2 + *(*v2 + 104)) = 0;
  v14 = v2 + *(*v2 + 96);
  if (!*(a1 + 3))
  {
    v18 = a1[1];
    *v14 = *a1;
    *(v14 + 16) = v18;
    *(v14 + 32) = *(a1 + 4);
LABEL_8:
    v19 = a1[1];
    v21 = *a1;
    v22 = v19;
    v23 = *(a1 + 4);
    v15 = *(&v19 + 1);
    if (!*(&v19 + 1))
    {
      goto LABEL_4;
    }

LABEL_9:
    __swift_project_boxed_opaque_existential_0Tm(&v21, v15);

    v17 = Publisher.sink(receiveCompletion:receiveValue:)();

    if (*(a1 + 3))
    {
      __swift_destroy_boxed_opaque_existential_0Tm(a1);
    }

    goto LABEL_11;
  }

  outlined init with copy of ActionPerforming(a1, v14);
  if (!*(a1 + 3))
  {
    goto LABEL_8;
  }

  outlined init with copy of ActionPerforming(a1, &v21);
  v15 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    goto LABEL_9;
  }

LABEL_4:
  v16 = *(a1 + 3);
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v17 = 0;
    v16 = 0;
    if (*(&v22 + 1))
    {
LABEL_11:
      __swift_destroy_boxed_opaque_existential_0Tm(&v21);
      v16 = v17;
    }
  }

  *(v2 + *(*v2 + 104)) = v16;

  return v2;
}

uint64_t closure #2 in OptionalObservableObject.init(publisher:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 - 8);
  (*(v9 + 16))(&v11 - v7, a1, v3, v6);
  (*(v9 + 56))(v8, 0, 1, v3);
  specialized OptionalObservableObject.output.setter(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t *OptionalObservableObject.deinit()
{
  v1 = *(*v0 + 88);
  type metadata accessor for Optional();
  v2 = type metadata accessor for Published();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = (v0 + *(*v0 + 96));
  if (v3[3])
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
  }

  return v0;
}

uint64_t OptionalObservableObject.__deallocating_deinit()
{
  OptionalObservableObject.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance OptionalObservableObject<A>@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t x2_0@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for OptionalObservableObject(0, *(a1 + 80), x2_0, a4);
  result = ObservableObject<>.objectWillChange.getter();
  *a3 = result;
  return result;
}

uint64_t specialized OptionalObservableObject.output.setter(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v9 - v6;
  v9[2] = v3;
  swift_getKeyPath();
  v9[0] = v3;
  swift_getKeyPath();
  (*(v5 + 16))(v7, a1, v4);

  return static Published.subscript.setter();
}

uint64_t specialized OptionalObservableObject.$output.setter(uint64_t a1)
{
  type metadata accessor for Optional();
  type metadata accessor for Published.Publisher();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - v3, a1, v2);
  swift_beginAccess();
  type metadata accessor for Published();
  Published.projectedValue.setter();
  return swift_endAccess();
}

uint64_t type metadata completion function for OptionalObservableObject(uint64_t a1)
{
  type metadata accessor for Optional();
  result = type metadata accessor for Published();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t PrivacyAcknowledgementObserver.__allocating_init(dispatchOnMainThread:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = swift_allocObject();
  PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(v5, a2, a3);
  return v6;
}

uint64_t PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(char a1, uint64_t a2, uint64_t a3)
{
  v4 = ICPrivacyIdentifierMusic;
  *(v3 + 16) = ICPrivacyIdentifierMusic;
  *(v3 + 24) = 0;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  v5 = objc_opt_self();
  v6 = v4;

  v7 = [v5 sharedPrivacyInfo];
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v14[4] = partial apply for closure #1 in PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:);
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed (@guaranteed ICPrivacyIdentifier, @unowned Bool) -> ();
  v14[3] = &block_descriptor_27;
  v10 = _Block_copy(v14);
  v11 = v8;

  v12 = [v7 beginObservingPrivacyAcknowledgementForIdentifier:v11 handler:v10];

  _Block_release(v10);

  *(v3 + 24) = v12;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1001BF6A4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t closure #1 in PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 32) == 1)
    {
      type metadata accessor for OS_dispatch_queue();
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = a2 & 1;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(partial apply for closure #1 in PrivacyAcknowledgementObserver.handlePrivacyAcknowledgementChanged(_:), v6);
    }

    else
    {
      (*(result + 40))(a2 & 1);
    }
  }

  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed ICPrivacyIdentifier, @unowned Bool) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t PrivacyAcknowledgementObserver.deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 sharedPrivacyInfo];
    [v3 endObservingPrivacyAcknowledgementForIdentifier:*(v0 + 16) withToken:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return v0;
}

uint64_t PrivacyAcknowledgementObserver.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 sharedPrivacyInfo];
    [v3 endObservingPrivacyAcknowledgementForIdentifier:*(v0 + 16) withToken:v1];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in PrivacyAcknowledgementObserver.handlePrivacyAcknowledgementChanged(_:)(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 40);

    v4(a2 & 1);
  }

  return result;
}

uint64_t sub_1001BFA78()
{

  return swift_deallocObject();
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      specialized _NativeDictionary._delete(at:)(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PushNotificationObserverC17RegisteredHandlerVSgMd, &_s9MusicCore24PushNotificationObserverC17RegisteredHandlerVSgMR);
  __chkstk_darwin();
  v6 = &v15 - v5;
  type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  v7 = __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v7) == 1)
  {
    outlined destroy of TaskPriority?(a1, &_s9MusicCore24PushNotificationObserverC17RegisteredHandlerVSgMd, &_s9MusicCore24PushNotificationObserverC17RegisteredHandlerVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v6);
    v11 = type metadata accessor for UUID();
    (*(*(v11 - 8) + 8))(a2, v11);
    return outlined destroy of TaskPriority?(v6, &_s9MusicCore24PushNotificationObserverC17RegisteredHandlerVSgMd, &_s9MusicCore24PushNotificationObserverC17RegisteredHandlerVSgMR);
  }

  else
  {
    outlined init with take of PushNotificationObserver.RegisteredHandler(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, isUniquelyReferenced_nonNull_native);
    v14 = type metadata accessor for UUID();
    result = (*(*(v14 - 8) + 8))(a2, v14);
    *v2 = v16;
  }

  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GSgMd, &_sScS12ContinuationVySaySfG_GSgMR);
  __chkstk_darwin();
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySaySfG_GMd, &_sScS12ContinuationVySaySfG_GMR);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v16 - v10;
  if ((*(v8 + 48))(a1, 1, v7, v9) == 1)
  {
    outlined destroy of TaskPriority?(a1, &_sScS12ContinuationVySaySfG_GSgMd, &_sScS12ContinuationVySaySfG_GSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v6);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return outlined destroy of TaskPriority?(v6, &_sScS12ContinuationVySaySfG_GSgMd, &_sScS12ContinuationVySaySfG_GSgMR);
  }

  else
  {
    (*(v8 + 32))(v11, a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for UUID();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    outlined destroy of TaskPriority?(a1, &_sypSgMd_0, &_sypSgMR_0);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v6);

    outlined destroy of TaskPriority?(v6, &_sypSgMd_0, &_sypSgMR_0);
  }
}

id PushNotificationObserver.__allocating_init()()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_9MusicCore24PushNotificationObserverC17RegisteredHandlerVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t *PushNotificationObserver.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static PushNotificationObserver.shared;
}

uint64_t static PushNotificationObserver.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t PushNotificationObserver.register(for:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PushNotificationObserverC17RegisteredHandlerVSgMd, &_s9MusicCore24PushNotificationObserverC17RegisteredHandlerVSgMR);
  v6[11] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(PushNotificationObserver.register(for:handler:), v5, 0);
}

uint64_t PushNotificationObserver.register(for:handler:)()
{
  v1 = *(v0 + 80);
  if (*(v1 + 120))
  {
    v3 = *(v0 + 104);
    v2 = *(v0 + 112);
    v5 = *(v0 + 88);
    v4 = *(v0 + 96);
    v6 = *(v0 + 72);
    v7 = *(v0 + 40);
    v8 = *(v0 + 56);
    *v7 = *(v0 + 48);
    *(v7 + 8) = v8;
    *(v7 + 24) = v6;
    v9 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
    v10 = *(v9 + 24);

    UUID.init()();
    (*(v3 + 16))(v2, v7 + v10, v4);
    outlined init with copy of PushNotificationObserver.RegisteredHandler(v7, v5);
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    swift_beginAccess();
    specialized Dictionary.subscript.setter(v5, v2);
    swift_endAccess();
    v11 = *(v1 + 120);
    if (v11)
    {
      v12 = *(v0 + 80);
      v14 = *(v12 + 128);
      v13 = *(v12 + 136);
      outlined copy of PushNotificationObserver.Connection?(*(v1 + 120), v14, v13);
      v15 = v11;
      outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(v11, v14, v13);
      PushNotificationObserver.registeredPushTopics.getter();
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v15 _setEnabledTopics:isa];
    }

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = swift_task_alloc();
    *(v0 + 120) = v19;
    *v19 = v0;
    v19[1] = PushNotificationObserver.register(for:handler:);

    return PushNotificationObserver.setupConnection()();
  }
}

{
  v1 = *(*v0 + 80);

  return _swift_task_switch(PushNotificationObserver.register(for:handler:), v1, 0);
}

{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  v8 = *(v0 + 56);
  *v7 = *(v0 + 48);
  *(v7 + 8) = v8;
  *(v7 + 24) = v5;
  v9 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  v10 = *(v9 + 24);

  UUID.init()();
  (*(v2 + 16))(v1, v7 + v10, v3);
  outlined init with copy of PushNotificationObserver.RegisteredHandler(v7, v4);
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v4, v1);
  swift_endAccess();
  v11 = *(v6 + 120);
  if (v11)
  {
    v12 = *(v0 + 80);
    v14 = *(v12 + 128);
    v13 = *(v12 + 136);
    outlined copy of PushNotificationObserver.Connection?(*(v6 + 120), v14, v13);
    v15 = v11;
    outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(v11, v14, v13);
    PushNotificationObserver.registeredPushTopics.getter();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 _setEnabledTopics:isa];
  }

  v17 = *(v0 + 8);

  return v17();
}

void PushNotificationObserver.unregister(registeredHandler:)(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore24PushNotificationObserverC17RegisteredHandlerVSgMd, &_s9MusicCore24PushNotificationObserverC17RegisteredHandlerVSgMR);
  __chkstk_darwin();
  v5 = &v20 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(v7 + 16))(v9, a1 + *(v10 + 24), v6);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v5, v9);
  swift_endAccess();
  v12 = (v2 + 120);
  v11 = *(v2 + 120);
  if (v11)
  {
    v14 = *(v2 + 128);
    v13 = *(v2 + 136);
    outlined copy of PushNotificationObserver.Connection?(*(v2 + 120), v14, v13);
    v15 = v11;
    outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(v11, v14, v13);
    PushNotificationObserver.registeredPushTopics.getter();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 _setEnabledTopics:isa];
  }

  if (!*(*(v2 + 112) + 16))
  {
    v17 = *v12;
    if (*v12)
    {
      [v17 setDelegate:0];
      v17 = *v12;
      if (*v12)
      {
        [v17 shutdown];
        v17 = *v12;
      }
    }

    v18 = *(v2 + 128);
    v19 = *(v2 + 136);
    *v12 = 0;
    *(v2 + 128) = 0;
    *(v2 + 136) = 0;
    outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(v17, v18, v19);
  }
}

void PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd_0, &_sScPSgMR_0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  if (a4)
  {
    v10 = type metadata accessor for TaskPriority();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v4;
    v11[5] = a2;
    v11[6] = a3;
    v11[7] = a4;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5_0(0, 0, v9, &async function pointer to partial apply for closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:), v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:), 0, 0);
}

uint64_t closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 32))
  {
    return _swift_task_switch(closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:), *(v3 + 16), 0);
  }

  __break(1u);
  return _swift_task_switch(a1, a2, a3);
}

uint64_t closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)()
{
  PushNotificationObserver.executeMatchingHandlers(topic:userInfo:)(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

void *PushNotificationObserver.registeredPushTopics.getter()
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMd, &_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMR);
  __chkstk_darwin();
  v55 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v46 - v2;
  __chkstk_darwin();
  v53 = &v46 - v3;
  __chkstk_darwin();
  v52 = &v46 - v4;
  if (!*(v0 + 152))
  {
    return _swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v5 = *(*(v0 + 112) + 16);
  v6 = _swiftEmptyArrayStorage;
  if (!v5)
  {
    return v6;
  }

  v60 = _swiftEmptyArrayStorage;

  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
  v8 = v7;
  v6 = v60;
  v9 = v8 + 64;
  result = _HashTable.startBucket.getter();
  v11 = result;
  v12 = 0;
  v13 = *(v8 + 36);
  v47 = v8 + 72;
  v48 = v5;
  v49 = v13;
  v50 = v8 + 64;
  v51 = v8;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v8 + 32))
  {
    v15 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_25;
    }

    if (v13 != *(v8 + 36))
    {
      goto LABEL_26;
    }

    v57 = v12;
    v58 = 1 << v11;
    v16 = v56;
    v17 = *(v56 + 48);
    v18 = *(v8 + 48);
    v19 = type metadata accessor for UUID();
    v20 = *(v19 - 8);
    v21 = v20;
    v22 = v18 + *(v20 + 72) * v11;
    v23 = *(v20 + 16);
    v59 = v6;
    v24 = v52;
    v23(v52, v22, v19);
    v25 = *(v8 + 56);
    v26 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
    outlined init with copy of PushNotificationObserver.RegisteredHandler(v25 + *(*(v26 - 8) + 72) * v11, &v24[v17]);
    v27 = *(v21 + 32);
    v28 = v53;
    v27(v53, v24, v19);
    outlined init with take of PushNotificationObserver.RegisteredHandler(&v24[v17], v28 + *(v16 + 48));
    v29 = v54;
    outlined init with copy of (key: UUID, value: PushNotificationObserver.RegisteredHandler)(v28, v54);
    v30 = *(v16 + 48);
    v31 = v55;
    v32 = &v55[v30];
    v27(v55, v29, v19);
    v33 = v29 + v30;
    v6 = v59;
    outlined init with take of PushNotificationObserver.RegisteredHandler(v33, v31 + v30);
    v34 = *v32;
    v35 = *(v32 + 1);

    outlined destroy of TaskPriority?(v31, &_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMd, &_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMR);
    result = outlined destroy of TaskPriority?(v28, &_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMd, &_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMR);
    v60 = v6;
    v37 = v6[2];
    v36 = v6[3];
    if (v37 >= v36 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
      v6 = v60;
    }

    v6[2] = v37 + 1;
    v38 = &v6[2 * v37];
    v38[4] = v34;
    v38[5] = v35;
    v8 = v51;
    v14 = 1 << *(v51 + 32);
    if (v11 >= v14)
    {
      goto LABEL_27;
    }

    v9 = v50;
    v39 = *(v50 + 8 * v15);
    if ((v39 & v58) == 0)
    {
      goto LABEL_28;
    }

    LODWORD(v13) = v49;
    if (v49 != *(v51 + 36))
    {
      goto LABEL_29;
    }

    v40 = v39 & (-2 << (v11 & 0x3F));
    if (v40)
    {
      v14 = __clz(__rbit64(v40)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v41 = v15 << 6;
      v42 = v15 + 1;
      v43 = (v47 + 8 * v15);
      while (v42 < (v14 + 63) >> 6)
      {
        v45 = *v43++;
        v44 = v45;
        v41 += 64;
        ++v42;
        if (v45)
        {
          result = outlined consume of [UUID : PushNotificationObserver.RegisteredHandler].Index._Variant(v11, v49, 0);
          v14 = __clz(__rbit64(v44)) + v41;
          goto LABEL_5;
        }
      }

      result = outlined consume of [UUID : PushNotificationObserver.RegisteredHandler].Index._Variant(v11, v49, 0);
    }

LABEL_5:
    v12 = v57 + 1;
    v11 = v14;
    if (v57 + 1 == v48)
    {

      return v6;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void PushNotificationObserver.executeMatchingHandlers(topic:userInfo:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v36 = a3;
  v51 = a1;
  v46 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  __chkstk_darwin();
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v45 = &v34 - v7;
  v50 = type metadata accessor for UUID();
  v8 = *(v50 - 8);
  __chkstk_darwin();
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetSgMd, &_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetSgMR);
  __chkstk_darwin();
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v34 - v12;
  swift_beginAccess();
  v14 = *(v3 + 112);
  v15 = 1 << *(v14 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v14 + 64);
  v35 = (v15 + 63) >> 6;
  v38 = v8 + 32;
  v39 = v8 + 16;
  v44 = v8;
  v18 = (v8 + 8);
  v19 = v14 + 64;
  v48 = v14;
  v49 = v18;

  v20 = 0;
  v47 = a2;
  v41 = v11;
  v42 = v6;
  v40 = v13;
  v37 = v19;
  while (v17)
  {
    v21 = v20;
LABEL_16:
    v24 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v25 = v24 | (v21 << 6);
    v26 = v48;
    v27 = v44;
    (*(v44 + 16))(v43, *(v48 + 48) + *(v44 + 72) * v25, v50);
    v28 = *(v26 + 56);
    v29 = v45;
    outlined init with copy of PushNotificationObserver.RegisteredHandler(v28 + *(v46 + 72) * v25, v45);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMd, &_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMR);
    v31 = *(v30 + 48);
    v11 = v41;
    (*(v27 + 32))();
    outlined init with take of PushNotificationObserver.RegisteredHandler(v29, &v11[v31]);
    (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
    a2 = v47;
    v6 = v42;
    v13 = v40;
    v19 = v37;
LABEL_17:
    outlined init with take of (key: UUID, value: PushNotificationObserver.RegisteredHandler)?(v11, v13);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMd, &_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMR);
    if ((*(*(v32 - 8) + 48))(v13, 1, v32) == 1)
    {

      return;
    }

    outlined init with take of PushNotificationObserver.RegisteredHandler(&v13[*(v32 + 48)], v6);
    if (*v6 == v51 && v6[1] == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v6[2](v51, a2, v36);
    }

    outlined destroy of PushNotificationObserver.RegisteredHandler(v6);
    (*v49)(v13, v50);
  }

  if (v35 <= v20 + 1)
  {
    v22 = v20 + 1;
  }

  else
  {
    v22 = v35;
  }

  v23 = v22 - 1;
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v35)
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMd, &_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMR);
      (*(*(v33 - 8) + 56))(v11, 1, 1, v33);
      v17 = 0;
      v20 = v23;
      goto LABEL_17;
    }

    v17 = *(v19 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void *PushNotificationObserver.connection.setter(id a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[15];
  if (v7)
  {
    [v7 setDelegate:0];
    v8 = v3[15];
    if (v8)
    {
      [v8 shutdown];
    }
  }

  if (a1)
  {
    [a1 setDelegate:v3];
  }

  v9 = v3[15];
  v10 = v3[16];
  v11 = v3[17];
  v3[15] = a1;
  v3[16] = a2;
  v3[17] = a3;

  return outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(v9, v10, v11);
}

uint64_t PushNotificationObserver.setupConnection()()
{
  *(v1 + 32) = v0;
  v2 = lazy protocol witness table accessor for type PushNotificationObserver and conformance PushNotificationObserver();
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = PushNotificationObserver.setupConnection();

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, v0, v2, 0xD000000000000017, 0x80000001004CC250, closure #1 in PushNotificationObserver.loadPushConfiguration(), 0, &unk_1005B74C0);
}

{
  v1 = *(*v0 + 32);

  return _swift_task_switch(PushNotificationObserver.setupConnection(), v1, 0);
}

{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  *(v1 + 144) = v3;
  *(v1 + 152) = v2;

  if (v2)
  {
    v4 = HIBYTE(v2) & 0xF;
    if ((v2 & 0x2000000000000000) == 0)
    {
      v4 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v4)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      type metadata accessor for OS_dispatch_queue();

      v5 = static OS_dispatch_queue.main.getter();
      v6 = objc_allocWithZone(APSConnection);
      v7 = String._bridgeToObjectiveC()();
      v8 = String._bridgeToObjectiveC()();

      v9 = [v6 initWithEnvironmentName:v7 namedDelegatePort:v8 queue:v5];

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {

      v9 = 0;
    }

    v3 = 0;
    v2 = 0;
  }

  else
  {
    v9 = 0;
    v3 = 0;
  }

LABEL_10:
  v10 = v0[4];
  v11 = v10[15];
  v12 = v10[16];
  v13 = v10[17];
  if (v11)
  {

    v14 = v12;
    v15 = v13;
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  outlined copy of PushNotificationObserver.Connection?(v11, v12, v13);
  outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(v11, v12, v13);
  if (!v9)
  {
    if (!v15)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (!v15)
  {
    if (!v2)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (!v2)
  {
LABEL_22:

    goto LABEL_23;
  }

  if (v14 != v3 || v15 != v2)
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_25;
    }

LABEL_23:
    PushNotificationObserver.connection.setter(v9, v3, v2);
    goto LABEL_26;
  }

LABEL_25:
  outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(v9, v3, v2);
LABEL_26:
  v17 = v0[1];

  return v17();
}

uint64_t type metadata accessor for PushNotificationObserver.RegisteredHandler(uint64_t a1)
{
  result = type metadata singleton initialization cache for PushNotificationObserver.RegisteredHandler;
  if (!type metadata singleton initialization cache for PushNotificationObserver.RegisteredHandler)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double outlined copy of PushNotificationObserver.Connection?(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
  }

  return result;
}

uint64_t partial apply for closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t closure #1 in PushNotificationObserver.loadPushConfiguration()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore24PushNotificationObserverC0C13Configuration33_5C1C26A04A82BCA536AC905390491108LLOs5NeverOGMd, &_sScCy9MusicCore24PushNotificationObserverC0C13Configuration33_5C1C26A04A82BCA536AC905390491108LLOs5NeverOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v21 - v6;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static BagProvider.shared;
  v9 = *(v3 + 16);
  v9(v7, a1, v2);
  v9(v5, v7, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v7, v2);
  v12 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8ICURLBagCSgMd, &_sSo8ICURLBagCSgMR);
  UnfairLock.locked<A>(_:)(partial apply for closure #1 in BagProvider.bag.getter);
  v13 = v22;
  if (v22)
  {
    closure #1 in closure #1 in PushNotificationObserver.loadPushConfiguration()(v22);
  }

  else
  {
    type metadata accessor for BagProvider.Observer();
    v14 = swift_allocObject();
    v21[1] = v12;
    v15 = v14;
    swift_weakInit();
    *(v15 + 24) = 0;
    *(v15 + 32) = 0;
    swift_weakAssign();
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = partial apply for closure #1 in closure #1 in PushNotificationObserver.loadPushConfiguration();
    v17[3] = v11;
    v17[4] = v16;
    v17[5] = v15;
    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    *(v15 + 24) = partial apply for closure #1 in BagProvider.getBag(completion:);
    *(v15 + 32) = v17;

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v18, v19);

    __chkstk_darwin();
    v21[-2] = v8;
    v21[-1] = v15;
    UnfairLock.locked<A>(_:)(partial apply for closure #2 in BagProvider.getBag(completion:));
    BagProvider.fetchBag(forceReload:)(0);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #1 in closure #1 in PushNotificationObserver.loadPushConfiguration()(void *a1)
{
  v1 = [a1 dictionaryForBagKey:ICURLBagKeyPushNotifications];
  if (!v1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v2 = v1;
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  AnyHashable.init<A>(_:)();
  if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(&v10), (v5 & 1) == 0))
  {

    outlined destroy of AnyHashable(&v10);
    goto LABEL_8;
  }

  outlined init with copy of Any(*(v3 + 56) + 32 * v4, v12);
  outlined destroy of AnyHashable(&v10);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v8;
    goto LABEL_10;
  }

  v6 = objc_opt_self();
  v7 = String._bridgeToObjectiveC()();
  LODWORD(v6) = [v6 isValidEnvironment:v7];

  if (!v6)
  {

    goto LABEL_8;
  }

  v10 = 0x6D6E6F7269766E65;
  v11 = 0xEB00000000746E65;
LABEL_10:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore24PushNotificationObserverC0C13Configuration33_5C1C26A04A82BCA536AC905390491108LLOs5NeverOGMd, &_sScCy9MusicCore24PushNotificationObserverC0C13Configuration33_5C1C26A04A82BCA536AC905390491108LLOs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t PushNotificationObserver.deinit()
{

  outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(*(v0 + 120), *(v0 + 128), *(v0 + 136));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PushNotificationObserver.__deallocating_deinit()
{

  outlined consume of MetricsEvent.Click.ActionDetails.SearchSource(*(v0 + 120), *(v0 + 128), *(v0 + 136));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1001C2584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001C2644(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t type metadata completion function for PushNotificationObserver.RegisteredHandler(uint64_t a1)
{
  result = type metadata accessor for ()();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for PushNotificationObserver.UncheckedSendableWrapper(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PushNotificationObserver.UncheckedSendableWrapper(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *storeEnumTagSinglePayload for PushNotificationObserver.UncheckedSendableWrapper(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t getEnumTagSinglePayload for PushNotificationObserver.PushConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PushNotificationObserver.PushConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTag for PushNotificationObserver.PushConfiguration(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t outlined init with take of (key: UUID, value: PushNotificationObserver.RegisteredHandler)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetSgMd, &_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of PushNotificationObserver.RegisteredHandler(uint64_t a1)
{
  v2 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_9()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)partial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in static MusicEngagementExtension.performRequest(with:completion:);

  return closure #1 in PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t outlined init with copy of (key: UUID, value: PushNotificationObserver.RegisteredHandler)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMd, &_s10Foundation4UUIDV3key_9MusicCore24PushNotificationObserverC17RegisteredHandlerV5valuetMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PushNotificationObserver and conformance PushNotificationObserver()
{
  result = lazy protocol witness table cache variable for type PushNotificationObserver and conformance PushNotificationObserver;
  if (!lazy protocol witness table cache variable for type PushNotificationObserver and conformance PushNotificationObserver)
  {
    type metadata accessor for PushNotificationObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PushNotificationObserver and conformance PushNotificationObserver);
  }

  return result;
}

uint64_t sub_1001C2EE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore24PushNotificationObserverC0C13Configuration33_5C1C26A04A82BCA536AC905390491108LLOs5NeverOGMd, &_sScCy9MusicCore24PushNotificationObserverC0C13Configuration33_5C1C26A04A82BCA536AC905390491108LLOs5NeverOGMR);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t partial apply for closure #1 in closure #1 in PushNotificationObserver.loadPushConfiguration()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MusicCore24PushNotificationObserverC0C13Configuration33_5C1C26A04A82BCA536AC905390491108LLOs5NeverOGMd, &_sScCy9MusicCore24PushNotificationObserverC0C13Configuration33_5C1C26A04A82BCA536AC905390491108LLOs5NeverOGMR);

  return closure #1 in closure #1 in PushNotificationObserver.loadPushConfiguration()(a1);
}

uint64_t sub_1001C2FF8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1001C3030()
{

  return swift_deallocObject();
}

uint64_t Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v66 = a5;
  v67 = a6;
  v72 = a4;
  v64 = a9;
  v65 = a3;
  v69 = a2;
  v60 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v71 = *(v60 + 64);
  __chkstk_darwin();
  v63 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v52 - v14;
  v15 = *(a7 - 8);
  __chkstk_darwin();
  v62 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v52 - v17;
  v19 = v18;
  v59 = v18;
  __chkstk_darwin();
  v21 = &v52 - v20;
  v22 = a8;
  v68 = a8;
  PinnableMusicItem.musicPinItem.getter(a7, a9);
  v53 = *(v15 + 16);
  v58 = a1;
  v53(v21, a1, a7);
  v23 = *(v15 + 80);
  v24 = (v23 + 32) & ~v23;
  v55 = v23 | 7;
  v25 = v19 + 7;
  v26 = (v19 + 7 + v24) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = a7;
  *(v27 + 24) = v22;
  v54 = *(v15 + 32);
  v56 = v15 + 32;
  v28 = v27 + v24;
  v29 = v27;
  v61 = v27;
  v54(v28, v21, a7);
  v30 = v69;
  *(v29 + v26) = v69;
  v31 = v57;
  v53(v57, a1, a7);
  outlined init with copy of TaskPriority?(v72, v70, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v32 = (v23 + 40) & ~v23;
  v33 = (v25 + v32) & 0xFFFFFFFFFFFFFFF8;
  v34 = *(v60 + 80);
  v35 = swift_allocObject();
  v36 = v68;
  v35[2] = a7;
  v35[3] = v36;
  v35[4] = v30;
  v37 = v54;
  v54(v35 + v32, v31, a7);
  outlined init with take of PresentationSource(v65, v35 + v33);
  outlined init with take of URL?(v70, v35 + ((v33 + v34 + 96) & ~v34), &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v38 = v63;
  outlined init with take of URL?(v72, v63, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v39 = v62;
  v37(v62, v58, a7);
  v40 = (v34 + 48) & ~v34;
  v41 = (v71 + v23 + v40) & ~v23;
  v42 = swift_allocObject();
  v43 = v68;
  *(v42 + 2) = a7;
  *(v42 + 3) = v43;
  v44 = v67;
  *(v42 + 4) = v66;
  *(v42 + 5) = v44;
  outlined init with take of URL?(v38, &v42[v40], &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v37(&v42[v41], v39, a7);
  v45 = type metadata accessor for Actions.Pin.Context(0);
  v46 = v64;
  v47 = (v64 + v45[5]);
  v48 = v61;
  *v47 = partial apply for closure #1 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  v47[1] = v48;
  v49 = (v46 + v45[6]);
  *v49 = &async function pointer to partial apply for closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  v49[1] = v35;
  v50 = (v46 + v45[7]);
  *v50 = &async function pointer to partial apply for closure #3 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  v50[1] = v42;
}

int *static Actions.Pin.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Actions.Pin.Context(a1, a2, type metadata accessor for Actions.Pin.Context);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO3PinO7ContextVytGMR);
  *(a2 + result[9]) = 7;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = closure #1 in static Actions.Pin.action(context:);
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &async function pointer to closure #2 in static Actions.Pin.action(context:);
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &async function pointer to closure #3 in static Actions.Pin.action(context:);
  v6[1] = 0;
  return result;
}

uint64_t Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v53 = a5;
  v54 = a6;
  v55 = a4;
  v50 = a3;
  v57 = a2;
  v52 = a9;
  v11 = *(a7 - 8);
  __chkstk_darwin();
  v49 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v46 = &v42 - v13;
  v15 = v14;
  v48 = v14;
  __chkstk_darwin();
  v17 = &v42 - v16;
  v19 = v18;
  v56 = v18;
  PinnableMusicItem.musicPinItem.getter(v20, v21);
  v45 = *(v11 + 16);
  v45(v17, v19, a7);
  v47 = *(v11 + 80);
  v22 = (v47 + 40) & ~v47;
  v23 = swift_allocObject();
  v51 = v23;
  *(v23 + 2) = a7;
  *(v23 + 3) = a8;
  v24 = v57;
  *(v23 + 4) = v57;
  v43 = *(v11 + 32);
  v44 = v11 + 32;
  v43(v23 + v22, v17, a7);
  v25 = v46;
  v45(v46, v56, a7);
  v26 = swift_allocObject();
  *(v26 + 2) = a7;
  *(v26 + 3) = a8;
  *(v26 + 4) = v24;
  v27 = v25;
  v28 = v43;
  v43(&v26[v22], v27, a7);
  outlined init with take of PresentationSource(v50, &v26[(v22 + v15 + 7) & 0xFFFFFFFFFFFFFFF8]);
  v29 = v49;
  v28(v49, v56, a7);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v31 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v32 = (*(v30 + 64) + v47 + v31) & ~v47;
  v33 = swift_allocObject();
  *(v33 + 2) = a7;
  *(v33 + 3) = a8;
  v34 = v54;
  *(v33 + 4) = v53;
  *(v33 + 5) = v34;
  outlined init with take of URL?(v55, &v33[v31], &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v28(&v33[v32], v29, a7);
  v35 = type metadata accessor for Actions.Unpin.Context(0);
  v37 = v51;
  v36 = v52;
  v38 = (v52 + v35[5]);
  *v38 = partial apply for closure #1 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  v38[1] = v37;
  v39 = (v36 + v35[6]);
  *v39 = &async function pointer to partial apply for closure #2 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  v39[1] = v26;
  v40 = (v36 + v35[7]);
  *v40 = &async function pointer to partial apply for closure #3 in Actions.Unpin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  v40[1] = v33;
}

int *static Actions.Unpin.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of Actions.Pin.Context(a1, a2, type metadata accessor for Actions.Unpin.Context);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO5UnpinO7ContextVytGMR);
  *(a2 + result[9]) = 8;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = closure #1 in static Actions.Unpin.action(context:);
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &async function pointer to closure #2 in static Actions.Unpin.action(context:);
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &async function pointer to closure #3 in static Actions.Unpin.action(context:);
  v6[1] = 0;
  return result;
}

uint64_t closure #2 in static Actions.Pin.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Pin.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #3 in static Actions.Collaborate.action(context:);

  return v5();
}

uint64_t closure #3 in static Actions.Pin.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Pin.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #3 in static Actions.Collaborate.action(context:);

  return v5();
}

uint64_t closure #2 in static Actions.Unpin.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Unpin.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #3 in static Actions.Collaborate.action(context:);

  return v5();
}

uint64_t closure #3 in static Actions.Unpin.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Unpin.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #3 in static Actions.Collaborate.action(context:);

  return v5();
}

int *static Actions.UpdatePinAction.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MusicPin.Action();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Actions.UpdatePinAction.Context(0) - 8;
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Actions.Pin.Context(a1, v10, type metadata accessor for Actions.UpdatePinAction.Context);
  (*(v5 + 16))(v7, a1 + *(v8 + 28), v4);
  v11 = (*(v5 + 88))(v7, v4);
  if (v11 != enum case for MusicPin.Action.navigate(_:))
  {
    if (v11 != enum case for MusicPin.Action.play(_:))
    {
      if (v11 == enum case for MusicPin.Action.shuffle(_:))
      {
        v12 = 45;
        goto LABEL_8;
      }

      (*(v5 + 8))(v7, v4);
    }

    v12 = 44;
    goto LABEL_8;
  }

  v12 = 46;
LABEL_8:
  outlined init with take of Actions.UpdatePinAction.Context(v10, a2, type metadata accessor for Actions.UpdatePinAction.Context);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6ActionVyAA7ActionsO09UpdatePinC0O7ContextVytGMd, &_s9MusicCore6ActionVyAA7ActionsO09UpdatePinC0O7ContextVytGMR);
  *(a2 + result[9]) = v12;
  *(a2 + result[11]) = 0x4014000000000000;
  v14 = (a2 + result[10]);
  *v14 = closure #1 in static Actions.UpdatePinAction.action(context:);
  v14[1] = 0;
  v15 = (a2 + result[12]);
  *v15 = &async function pointer to closure #2 in static Actions.UpdatePinAction.action(context:);
  v15[1] = 0;
  v16 = (a2 + result[13]);
  *v16 = &async function pointer to closure #3 in static Actions.UpdatePinAction.action(context:);
  v16[1] = 0;
  return result;
}

uint64_t closure #2 in static Actions.UpdatePinAction.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.UpdatePinAction.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #2 in static Actions.Collaborate.action(context:);

  return v5();
}

uint64_t closure #3 in static Actions.UpdatePinAction.action(context:)()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.UpdatePinAction.Context(0) + 32));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = closure #3 in static Actions.Collaborate.action(context:);

  return v5();
}

uint64_t PinnableMusicItem.musicPinItem.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v89 = type metadata accessor for MusicPin();
  v87 = *(v89 - 8);
  __chkstk_darwin();
  v86 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v86 - v4;
  v99 = type metadata accessor for RecentlyAddedMusicItem();
  v92 = *(v99 - 8);
  __chkstk_darwin();
  v90 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v86 - v6;
  __chkstk_darwin();
  v93 = &v86 - v7;
  v96 = type metadata accessor for Playlist.Entry.InternalItem();
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for Playlist.Entry();
  v98 = *(v104 - 8);
  __chkstk_darwin();
  v97 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v86 - v10;
  v106 = type metadata accessor for Track();
  v103 = *(v106 - 8);
  __chkstk_darwin();
  v101 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v86 - v12;
  __chkstk_darwin();
  v105 = &v86 - v13;
  v110 = type metadata accessor for Song();
  v107 = *(v110 - 8);
  __chkstk_darwin();
  v108 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for Playlist();
  v109 = *(v111 - 8);
  __chkstk_darwin();
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MusicVideo();
  v112 = *(v17 - 8);
  v113 = v17;
  __chkstk_darwin();
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Artist();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Album();
  v25 = *(v24 - 8);
  __chkstk_darwin();
  v27 = &v86 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin();
  v30 = &v86 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = v31;
  (*(v31 + 16))(v30, v114, a1, v28);
  if (swift_dynamicCast())
  {
    v32 = v115;
    (*(v25 + 32))(v115, v27, v24);
    v33 = &enum case for MusicPin.Item.album(_:);
LABEL_3:
    v34 = *v33;
    v35 = type metadata accessor for MusicPin.Item();
    v36 = *(v35 - 8);
    (*(v36 + 104))(v32, v34, v35);
    (*(v36 + 56))(v32, 0, 1, v35);
    return (*(v116 + 8))(v30, a1);
  }

  v37 = v115;
  if (swift_dynamicCast())
  {
    v38 = v37;
    (*(v21 + 32))(v37, v23, v20);
    v39 = enum case for MusicPin.Item.artist(_:);
    v40 = type metadata accessor for MusicPin.Item();
    v41 = *(v40 - 8);
    (*(v41 + 104))(v38, v39, v40);
    (*(v41 + 56))(v38, 0, 1, v40);
    return (*(v116 + 8))(v30, a1);
  }

  v43 = v113;
  if (swift_dynamicCast())
  {
    v32 = v37;
    (*(v112 + 32))(v37, v19, v43);
    v33 = &enum case for MusicPin.Item.musicVideo(_:);
    goto LABEL_3;
  }

  v44 = v111;
  v32 = v37;
  if (swift_dynamicCast())
  {
    (*(v109 + 32))(v37, v16, v44);
    v33 = &enum case for MusicPin.Item.playlist(_:);
    goto LABEL_3;
  }

  v45 = v108;
  v46 = v110;
  if (swift_dynamicCast())
  {
    (*(v107 + 32))(v32, v45, v46);
    v33 = &enum case for MusicPin.Item.song(_:);
    goto LABEL_3;
  }

  v47 = v105;
  v48 = v106;
  if (swift_dynamicCast())
  {
    v50 = v102;
    v49 = v103;
    (*(v103 + 32))(v102, v47, v48);
    v51 = v101;
    (*(v49 + 16))(v101, v50, v48);
    v52 = (*(v49 + 88))(v51, v48);
    if (v52 == enum case for Track.song(_:))
    {
      (*(v49 + 96))(v51, v48);
      (*(v107 + 32))(v32, v51, v46);
LABEL_16:
      v53 = &enum case for MusicPin.Item.song(_:);
LABEL_29:
      v71 = *v53;
      v72 = type metadata accessor for MusicPin.Item();
      v73 = *(v72 - 8);
      (*(v73 + 104))(v32, v71, v72);
      (*(v73 + 56))(v32, 0, 1, v72);
      goto LABEL_30;
    }

    if (v52 != enum case for Track.musicVideo(_:))
    {
      v74 = type metadata accessor for MusicPin.Item();
      (*(*(v74 - 8) + 56))(v32, 1, 1, v74);
      v75 = *(v49 + 8);
      v75(v51, v48);
      v75(v50, v48);
      return (*(v116 + 8))(v30, a1);
    }

    (*(v49 + 96))(v51, v48);
    (*(v112 + 32))(v32, v51, v43);
LABEL_28:
    v53 = &enum case for MusicPin.Item.musicVideo(_:);
    goto LABEL_29;
  }

  v54 = v100;
  v48 = v104;
  if (swift_dynamicCast())
  {
    v50 = v97;
    v49 = v98;
    (*(v98 + 32))(v97, v54, v48);
    v55 = v94;
    Playlist.Entry.internalItem.getter();
    v56 = v95;
    v57 = v96;
    v58 = (*(v95 + 88))(v55, v96);
    if (v58 != enum case for Playlist.Entry.InternalItem.musicMovie(_:))
    {
      if (v58 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
      {
        (*(v56 + 96))(v55, v57);
        (*(v112 + 32))(v32, v55, v113);
        goto LABEL_28;
      }

      if (v58 == enum case for Playlist.Entry.InternalItem.song(_:))
      {
        (*(v56 + 96))(v55, v57);
        (*(v107 + 32))(v32, v55, v110);
        goto LABEL_16;
      }

      if (v58 != enum case for Playlist.Entry.InternalItem.tvEpisode(_:) && v58 != enum case for Playlist.Entry.InternalItem.uploadedAudio(_:) && v58 != enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
      {
        v84 = type metadata accessor for MusicPin.Item();
        (*(*(v84 - 8) + 56))(v32, 1, 1, v84);
        (*(v56 + 8))(v55, v57);
        goto LABEL_30;
      }
    }

    (*(v56 + 8))(v55, v57);
    v59 = type metadata accessor for MusicPin.Item();
    (*(*(v59 - 8) + 56))(v32, 1, 1, v59);
LABEL_30:
    (*(v49 + 8))(v50, v48);
    return (*(v116 + 8))(v30, a1);
  }

  v60 = v93;
  v61 = v99;
  if (swift_dynamicCast())
  {
    v62 = v92;
    v63 = v91;
    (*(v92 + 32))(v91, v60, v61);
    v64 = v90;
    (*(v62 + 16))(v90, v63, v61);
    v65 = (*(v62 + 88))(v64, v61);
    if (v65 == enum case for RecentlyAddedMusicItem.album(_:))
    {
      (*(v62 + 96))(v64, v61);
      (*(v25 + 32))(v32, v64, v24);
      v66 = &enum case for MusicPin.Item.album(_:);
LABEL_25:
      v67 = *v66;
      v68 = v63;
      v69 = type metadata accessor for MusicPin.Item();
      v70 = *(v69 - 8);
      (*(v70 + 104))(v32, v67, v69);
      (*(v70 + 56))(v32, 0, 1, v69);
      (*(v62 + 8))(v68, v61);
      return (*(v116 + 8))(v30, a1);
    }

    if (v65 == enum case for RecentlyAddedMusicItem.musicMovie(_:))
    {
      goto LABEL_35;
    }

    if (v65 == enum case for RecentlyAddedMusicItem.musicVideo(_:))
    {
      (*(v62 + 96))(v64, v61);
      (*(v112 + 32))(v32, v64, v113);
      v66 = &enum case for MusicPin.Item.musicVideo(_:);
      goto LABEL_25;
    }

    if (v65 == enum case for RecentlyAddedMusicItem.playlist(_:))
    {
      (*(v62 + 96))(v64, v61);
      (*(v109 + 32))(v32, v64, v111);
      v66 = &enum case for MusicPin.Item.playlist(_:);
      goto LABEL_25;
    }

    if (v65 == enum case for RecentlyAddedMusicItem.tvSeason(_:) || v65 == enum case for RecentlyAddedMusicItem.uploadedVideo(_:))
    {
LABEL_35:
      v81 = *(v62 + 8);
      v81(v64, v61);
      v82 = type metadata accessor for MusicPin.Item();
      (*(*(v82 - 8) + 56))(v32, 1, 1, v82);
    }

    else
    {
      v85 = type metadata accessor for MusicPin.Item();
      (*(*(v85 - 8) + 56))(v32, 1, 1, v85);
      v81 = *(v62 + 8);
      v81(v64, v61);
    }

    v81(v63, v61);
    return (*(v116 + 8))(v30, a1);
  }

  v76 = v88;
  v77 = v89;
  if (swift_dynamicCast())
  {
    v78 = v87;
    v79 = v86;
    (*(v87 + 32))(v86, v76, v77);
    MusicPin.item.getter();
    (*(v78 + 8))(v79, v77);
    v80 = type metadata accessor for MusicPin.Item();
    (*(*(v80 - 8) + 56))(v32, 0, 1, v80);
  }

  else
  {
    v83 = type metadata accessor for MusicPin.Item();
    (*(*(v83 - 8) + 56))(v32, 1, 1, v83);
  }

  return (*(v116 + 8))(v30, a1);
}

uint64_t closure #1 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v35 = a2;
  v32 = type metadata accessor for MusicLibrary.PinAction();
  v34 = *(v32 - 8);
  __chkstk_darwin();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9PinActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9PinActionVGMR);
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin();
  v10 = &v28 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
  __chkstk_darwin();
  v12 = &v28 - v11;
  v13 = *(a3 - 8);
  __chkstk_darwin();
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Album();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin();
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v13 + 16);
  v33 = a1;
  v21(v15, a1, a3, v18);
  v22 = swift_dynamicCast();
  v23 = *(v17 + 56);
  if ((v22 & 1) == 0)
  {
    v23(v12, 1, 1, v16);
    outlined destroy of TaskPriority?(v12, &_s8MusicKit5AlbumVSgMd, &_s8MusicKit5AlbumVSgMR);
    goto LABEL_5;
  }

  v23(v12, 0, 1, v16);
  (*(v17 + 32))(v20, v12, v16);
  v24 = Album.childrenAddStatus(_:)(v35);
  (*(v17 + 8))(v20, v16);
  if (v24 != 1)
  {
LABEL_5:
    static MusicLibraryAction<>.pin.getter();
    v26 = v32;
    MusicLibrary.supportedStatus<A, B>(for:action:)();
    (*(v34 + 8))(v7, v26);
    v25 = MusicLibrary.SupportedStatus<>.actionSupportedStatus.getter();
    (*(v29 + 8))(v10, v30);
    return v25;
  }

  return 0x206C616974726150;
}

uint64_t sub_1001C592C()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[68] = a6;
  v6[67] = a5;
  v6[66] = a4;
  v6[65] = a3;
  v6[63] = a1;
  v6[64] = a2;
  v8 = type metadata accessor for MusicLibrary.InternalError();
  v6[69] = v8;
  v6[70] = *(v8 - 8);
  v6[71] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v6[72] = v9;
  v6[73] = *(v9 - 8);
  v6[74] = swift_task_alloc();
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v6[75] = v10;
  v6[76] = *(v10 + 64);
  v6[77] = swift_task_alloc();
  type metadata accessor for Locale();
  v6[78] = swift_task_alloc();
  v11 = type metadata accessor for String.LocalizationValue();
  v6[79] = v11;
  v6[80] = *(v11 - 8);
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue.StringInterpolation();
  v6[83] = swift_task_alloc();
  v12 = type metadata accessor for MusicLibrary.PinAction.UnsupportedReason();
  v6[84] = v12;
  v6[85] = *(v12 - 8);
  v6[86] = swift_task_alloc();
  v6[87] = swift_task_alloc();
  v13 = *(a5 - 8);
  v6[88] = v13;
  v6[89] = *(v13 + 64);
  v6[90] = swift_task_alloc();
  v6[91] = swift_task_alloc();
  v6[92] = type metadata accessor for Notice.Variant(0);
  v6[93] = swift_task_alloc();
  v14 = type metadata accessor for MusicPin.Action();
  v6[94] = v14;
  v6[95] = *(v14 - 8);
  v6[96] = swift_task_alloc();
  v15 = type metadata accessor for MusicLibrary.PinAction();
  v6[97] = v15;
  v6[98] = *(v15 - 8);
  v6[99] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9PinActionVGMd, &_s8MusicKit0A7LibraryC0aB8InternalE15SupportedStatusOy_AcDE9PinActionVGMR);
  v6[100] = v16;
  v6[101] = *(v16 - 8);
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

uint64_t closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1)
{
  v2 = v1[103];
  v3 = v1[101];
  v35 = v1[100];
  v36 = v1[102];
  v4 = v1[99];
  v5 = v1[98];
  v6 = v1[97];
  static MusicLibraryAction<>.pin.getter();
  MusicLibrary.supportedStatus<A, B>(for:action:)();
  (*(v5 + 8))(v4, v6);
  (*(v3 + 16))(v36, v2, v35);
  v7 = (*(v3 + 88))(v36, v35);
  if (v7 == enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    v8 = v1[102];
    v9 = v1[87];
    v10 = v1[86];
    v11 = v1[85];
    v12 = v1[84];
    (*(v1[101] + 96))(v8, v1[100]);
    (*(v11 + 32))(v9, v8, v12);
    (*(v11 + 16))(v10, v9, v12);
    v13 = (*(v11 + 88))(v10, v12);
    if (v13 == enum case for MusicLibrary.PinAction.UnsupportedReason.allExplicitContentRestricted(_:))
    {
      v1[118] = type metadata accessor for MainActor();
      v1[119] = static MainActor.shared.getter();
      v14 = dispatch thunk of Actor.unownedExecutor.getter();
      v16 = v15;
      v17 = closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
      v18 = v14;
      v19 = v16;
LABEL_10:

      return _swift_task_switch(v17, v18, v19);
    }

    if (v13 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      v1[111] = type metadata accessor for MainActor();
      v1[112] = static MainActor.shared.getter();
      v28 = dispatch thunk of Actor.unownedExecutor.getter();
      v19 = v29;
      v1[113] = v28;
      v1[114] = v29;
      v17 = closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
      v18 = v28;
      goto LABEL_10;
    }

    v30 = v1 + 87;
    v31 = v1 + 85;
    v32 = v1 + 84;
    (*(v1[85] + 8))(v1[86], v1[84]);
    goto LABEL_15;
  }

  if (v7 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
  {
    v30 = v1 + 102;
    v31 = v1 + 101;
    v32 = v1 + 100;
LABEL_15:
    (*(*v31 + 8))(*v30, *v32);
    (*(v1[101] + 8))(v1[103], v1[100]);

    v33 = v1[1];

    return v33();
  }

  v20 = v1[96];
  v21 = enum case for MusicPin.Action.navigate(_:);
  v22 = type metadata accessor for MusicPin.Action();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = swift_task_alloc();
  v1[104] = v23;
  *v23 = v1;
  v23[1] = closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  v24 = v1[96];
  v25 = v1[68];
  v26 = v1[67];
  v27 = v1[64];

  return MusicLibrary.pin<A>(_:defaultAction:)(v27, v24, v26, v25);
}

{
  v2 = v1[65];
  v3 = static MainActor.shared.getter();
  v1[115] = v3;
  v4 = swift_task_alloc();
  v1[116] = v4;
  *(v4 + 16) = 7;
  *(v4 + 24) = v2;
  *(v4 + 32) = 0;
  v5 = swift_task_alloc();
  v1[117] = v5;
  *v5 = v1;
  v5[1] = closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 122, v3, &protocol witness table for MainActor, 0xD00000000000003DLL, 0x80000001004C5A70, partial apply for closure #1 in static CloudLibrary.presentCloudLibraryEnabler(context:presentationSource:style:), v4, &type metadata for Bool);
}

{
  *(v1 + 960) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), v3, v2);
}

uint64_t closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)()
{
  v2 = *(*v1 + 768);
  v3 = *(*v1 + 760);
  v4 = *(*v1 + 752);
  *(*v1 + 840) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  }

  else
  {
    v5 = closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  swift_storeEnumTagMultiPayload();
  *(v0 + 848) = type metadata accessor for MainActor();
  *(v0 + 856) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), v2, v1);
}

{
  v1 = *(v0 + 744);

  specialized NoticePresenting.present(_:internalOnly:)(v1, 0);
  _s9MusicCore12MetricsEventV5ClickVWOhTm_1(v1, type metadata accessor for Notice.Variant);

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  (*(*(v0 + 704) + 16))(*(v0 + 728), *(v0 + 512), *(v0 + 536));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore18CatalogIDProviding_pMd, &_s9MusicCore18CatalogIDProviding_pMR);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 472);
    v2 = *(v0 + 480);
    __swift_project_boxed_opaque_existential_0Tm((v0 + 448), v1);
    v3 = (*(v2 + 8))(v1, v2);
    v5 = v4;
    if (v4)
    {
      v6 = v3;
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 448));
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0Tm((v0 + 448));
      v6 = 0;
    }
  }

  else
  {
    *(v0 + 480) = 0;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    outlined destroy of TaskPriority?(v0 + 448, &_s9MusicCore18CatalogIDProviding_pSgMd, &_s9MusicCore18CatalogIDProviding_pSgMR);
    v6 = 0;
    v5 = 0;
  }

  *(v0 + 872) = v5;
  *(v0 + 864) = v6;
  *(v0 + 880) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), v8, v7);
}

{
  v1 = v0[109];
  v2 = v0[108];
  v3 = v0[66];

  PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(v2, v1, v3);

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

{
  v1 = *v0;

  v2 = *(v1 + 912);
  v3 = *(v1 + 904);

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), v3, v2);
}

{

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  (*(v0[85] + 8))(v0[87], v0[84]);
  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

{

  specialized static Alert.explicitRestrictedAlert(traitCollection:)(0, v0 + 280);

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  v1 = *(v0 + 520);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)((v0 + 280), 0, 1);
  v3 = v2;
  v4 = *(v0 + 312);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = one-time initialization token for logger;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static PresentationSource.logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 520);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 384) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 392) = 0;
    *(v0 + 352) = _NSConcreteStackBlock;
    *(v0 + 360) = 1107296256;
    *(v0 + 368) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 376) = &block_descriptor_100;
    v14 = _Block_copy((v0 + 352));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    outlined init with copy of PresentationSource(v12, v0 + 16);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    outlined init with take of PresentationSource(v0 + 16, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v16);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);

    outlined destroy of Alert(v0 + 280);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 312), 1, 0, 0);

    outlined destroy of Alert(v0 + 280);
  }

  return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}

{
  v1 = *(v0 + 520);

  v2 = specialized static UIAlertController.alertController(with:overrideStyle:)((v0 + 208), 0, 1);
  v3 = v2;
  v4 = *(v0 + 240);
  v5 = *(v1 + 80);
  if (v5)
  {
    v6 = *(v1 + 88);
    v7 = one-time initialization token for logger;

    if (v7 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static PresentationSource.logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Deferring presentation…", v11, 2u);
    }

    v12 = *(v0 + 520);

    v13 = objc_allocWithZone(MSVBlockGuard);
    *(v0 + 432) = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
    *(v0 + 440) = 0;
    *(v0 + 400) = _NSConcreteStackBlock;
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
    *(v0 + 424) = &block_descriptor_114_1;
    v14 = _Block_copy((v0 + 400));
    v15 = [v13 initWithTimeout:v14 interruptionHandler:10.0];
    _Block_release(v14);

    outlined init with copy of PresentationSource(v12, v0 + 112);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    outlined init with take of PresentationSource(v0 + 112, v16 + 24);
    *(v16 + 120) = v3;
    *(v16 + 128) = v4;
    *(v16 + 129) = 1;
    *(v16 + 136) = 0;
    *(v16 + 144) = 0;
    v17 = v15;
    v18 = v3;
    v5(v12, v18, closure #2 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)partial apply, v16);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);

    outlined destroy of Alert(v0 + 208);
    v19 = closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  }

  else
  {
    PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v2, *(v0 + 240), 1, 0, 0);

    outlined destroy of Alert(v0 + 208);
    v19 = closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
  }

  return _swift_task_switch(v19, 0, 0);
}

{

  (*(v0[101] + 8))(v0[103], v0[100]);

  v1 = v0[1];

  return v1();
}

{
  *(v0 + 488) = *(v0 + 840);
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 560) + 88))(*(v0 + 568), *(v0 + 552)) == enum case for MusicLibrary.InternalError.maximumPinCountReached(_:))
    {
      v1 = *(v0 + 656);
      v2 = *(v0 + 648);
      v3 = *(v0 + 640);
      v4 = *(v0 + 632);

      type metadata accessor for MusicLibrary();
      static MusicLibrary.shared.getter();
      MusicLibrary.pinsObserver.getter();

      v5 = dispatch thunk of MusicLibraryPinsObserver.maximumPinCount.getter();

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v6._countAndFlagsBits = 0xD000000000000035;
      v6._object = 0x80000001004CC290;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v6);
      v51 = v5;
      *(v0 + 496) = v5;
      lazy protocol witness table accessor for type Int and conformance Int();
      v7 = BinaryInteger.formatted()();
      String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v7);

      v8._countAndFlagsBits = 0xD000000000000018;
      v8._object = 0x80000001004CC2D0;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v8);
      String.LocalizationValue.init(stringInterpolation:)();
      v41 = *(v3 + 16);
      v41(v2, v1, v4);
      if (one-time initialization token for module != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 656);
      v10 = *(v0 + 648);
      v11 = *(v0 + 640);
      v12 = *(v0 + 632);
      v43 = *(v0 + 720);
      v44 = *(v0 + 616);
      v46 = *(v0 + 712);
      v45 = *(v0 + 600);
      v47 = *(v0 + 592);
      v48 = *(v0 + 584);
      v49 = *(v0 + 576);
      v37 = *(v0 + 528);
      v38 = *(v0 + 704);
      v36 = *(v0 + 512);
      v13 = static NSBundle.module;
      v52 = *(v0 + 536);
      static Locale.current.getter();
      v14 = v13;
      v53 = String.init(localized:table:bundle:locale:comment:)();
      v35 = v15;
      v16 = *(v11 + 8);
      v16(v9, v12);
      v34 = v16;
      String.LocalizationValue.init(stringLiteral:)();
      v41(v10, v9, v12);
      static Locale.current.getter();
      v17 = String.init(localized:table:bundle:locale:comment:)();
      v39 = v18;
      v40 = v17;
      v16(v9, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMd, &_ss23_ContiguousArrayStorageCy9MusicCore5AlertV6ActionVGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1004F2400;
      String.LocalizationValue.init(stringLiteral:)();
      v41(v10, v9, v12);
      static Locale.current.getter();
      v50 = String.init(localized:table:bundle:locale:comment:)();
      v42 = v20;
      v34(v9, v12);
      (*(v38 + 16))(v43, v36, v52);
      outlined init with copy of TaskPriority?(v37, v44, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
      v21 = (*(v38 + 80) + 56) & ~*(v38 + 80);
      v22 = (v46 + *(v45 + 80) + v21) & ~*(v45 + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = v52;
      *(v23 + 32) = v53;
      *(v23 + 40) = v35;
      *(v23 + 48) = v51;
      (*(v38 + 32))(v23 + v21, v43, v52);
      outlined init with take of URL?(v44, v23 + v22, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

      UUID.init()();
      v24 = UUID.uuidString.getter();
      v26 = v25;
      (*(v48 + 8))(v47, v49);
      *(v19 + 32) = v24;
      *(v19 + 40) = v26;
      *(v19 + 48) = v50;
      *(v19 + 56) = v42;
      *(v19 + 64) = 2;
      *(v19 + 72) = &async function pointer to partial apply for closure #1 in closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:);
      *(v19 + 80) = v23;
      *(v0 + 208) = v40;
      *(v0 + 216) = v39;
      *(v0 + 224) = v53;
      *(v0 + 232) = v35;
      *(v0 + 240) = 0;
      *(v0 + 248) = 0;
      *(v0 + 256) = 1;
      *(v0 + 264) = v19;
      *(v0 + 272) = 0;
      type metadata accessor for MainActor();
      *(v0 + 968) = static MainActor.shared.getter();
      v28 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), v28, v27);
    }

    (*(*(v0 + 560) + 8))(*(v0 + 568), *(v0 + 552));
  }

  v29 = *(v0 + 824);
  v30 = *(v0 + 808);
  v31 = *(v0 + 800);

  (*(v30 + 8))(v29, v31);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1001C84DC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8) + 80);

  (*(v2 + 8))(v0 + v3, v1);
  v6 = v0 + v4;
  swift_unknownObjectWeakDestroy();
  v7 = *(v0 + v4 + 48);
  if (v7 != 255)
  {
    outlined consume of PresentationSource.Position.Source(*(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), v7);
  }

  if (*(v6 + 64))
  {
  }

  v8 = (v4 + v5 + 96) & ~v5;
  if (*(v6 + 80))
  {
  }

  v9 = v0 + v8;
  v10 = type metadata accessor for Actions.MetricsReportingContext(0);
  if (!(*(*(v10 - 8) + 48))(v0 + v8, 1, v10))
  {
    if (*(v9 + 8) >= 0xDuLL)
    {
    }

    v11 = v9 + *(v10 + 20);
    v12 = type metadata accessor for MetricsEvent.Page(0);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {

      v13 = *(v12 + 24);
      v14 = type metadata accessor for URL();
      v15 = *(v14 - 8);
      v19 = v13;
      v16 = v11 + v13;
      v17 = v14;
      if (!(*(v15 + 48))(v16, 1, v14))
      {
        (*(v15 + 8))(v11 + v19, v17);
      }
    }
  }

  return swift_deallocObject();
}

uint64_t partial apply for closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)()
{
  v3 = v0[2];
  v2 = v0[3];
  v4 = (*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  v7 = (v5 + *(v6 + 80) + 96) & ~*(v6 + 80);
  v8 = v0[4];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(v8, v0 + v4, v0 + v5, v0 + v7, v3, v2);
}

void PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR) - 8);
  __chkstk_darwin();
  v7 = &v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit0A14ItemCollectionVy0aB8Internal0A3PinVGMd, &_s8MusicKit0A14ItemCollectionVy0aB8Internal0A3PinVGMR);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v40 - v10;
  v43 = objc_opt_self();
  v12 = [v43 standardUserDefaults];
  v13 = lazy protocol witness table accessor for type NSUserDefaults.Keys and conformance NSUserDefaults.Keys();
  v14 = lazy protocol witness table accessor for type String and conformance String();
  v44 = v13;
  v42 = v14;
  NSUserDefaults.subscript.getter(&aBlock);

  if (v48)
  {
    if (swift_dynamicCast() & 1) != 0 && (v51[0])
    {
      return;
    }
  }

  else
  {
    outlined destroy of TaskPriority?(&aBlock, &_sypSgMd_0, &_sypSgMR_0);
  }

  type metadata accessor for MusicLibrary();
  static MusicLibrary.shared.getter();
  MusicLibrary.pinsObserver.getter();

  dispatch thunk of MusicLibraryPinsObserver.pins.getter();

  lazy protocol witness table accessor for type MusicItemCollection<MusicPin> and conformance MusicItemCollection<A>();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v15 = dispatch thunk of Collection.distance(from:to:)();
  (*(v9 + 8))(v11, v8);
  if (v15 >= 2)
  {
    v16 = [objc_opt_self() sharedCloudController];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 isAutomaticDownloadsEnabledForPinnedLibraryEntities];

      if ((v18 & 1) == 0)
      {
        outlined init with copy of TaskPriority?(a3, v7, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
        v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
        v20 = swift_allocObject();
        *(v20 + 16) = v41;
        *(v20 + 24) = a2;
        outlined init with take of URL?(v7, v20 + v19, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);

        specialized static Alert.downloadPinsAlert(completion:)(partial apply for closure #1 in PresentationSource.presentDownloadPinsAlertIfNecessary(catalogID:metricsReportingContext:), v20, v51);

        v21 = specialized static UIAlertController.alertController(with:overrideStyle:)(v51, 0, 1);
        v22 = v21;
        v23 = v52;
        v24 = v45;
        v25 = *(v45 + 80);
        if (v25)
        {
          v26 = *(v45 + 88);
          v27 = one-time initialization token for logger;

          if (v27 != -1)
          {
            swift_once();
          }

          v28 = type metadata accessor for Logger();
          __swift_project_value_buffer(v28, static PresentationSource.logger);
          v29 = Logger.logObject.getter();
          v30 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            *v31 = 0;
            _os_log_impl(&_mh_execute_header, v29, v30, "Deferring presentation…", v31, 2u);
          }

          v32 = objc_allocWithZone(MSVBlockGuard);
          v49 = closure #1 in PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:);
          v50 = 0;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          v47 = thunk for @escaping @callee_guaranteed (@unowned MSVBlockGuardInterruptionReason) -> ();
          v48 = &block_descriptor_28;
          v33 = _Block_copy(&aBlock);
          v34 = [v32 initWithTimeout:v33 interruptionHandler:10.0];
          _Block_release(v33);

          outlined init with copy of PresentationSource(v24, &aBlock);
          v35 = swift_allocObject();
          *(v35 + 16) = v34;
          outlined init with take of PresentationSource(&aBlock, v35 + 24);
          *(v35 + 120) = v22;
          *(v35 + 128) = v23;
          *(v35 + 129) = 1;
          *(v35 + 136) = 0;
          *(v35 + 144) = 0;
          v36 = v34;
          v37 = v22;
          v25(v24, v37, _s9MusicCore18PresentationSourceV7present_019wantsAutomaticModalC5Style8animated10completionySo16UIViewControllerC_S2byycSgtFyycfU0_TA_0, v35);
          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v25, v26);
        }

        else
        {
          PresentationSource._present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v21, v52, 1, 0, 0);
        }

        outlined destroy of Alert(v51);
        v38 = [v43 standardUserDefaults];
        v48 = &type metadata for Bool;
        LOBYTE(aBlock) = 1;
        NSUserDefaults.subscript.setter(&aBlock, v39, &type metadata for NSUserDefaults.Keys, v44, v42);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t closure #1 in closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[57] = a7;
  v8[58] = a8;
  v8[55] = a5;
  v8[56] = a6;
  v8[53] = a3;
  v8[54] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore7ActionsO23MetricsReportingContextVSgMd, &_s9MusicCore7ActionsO23MetricsReportingContextVSgMR);
  v8[59] = swift_task_alloc();
  v8[60] = *(a8 - 8);
  v8[61] = swift_task_alloc();

  return _swift_task_switch(closure #1 in closure #2 in Actions.Pin.Context.init<A>(item:library:presentationSource:metricsReportingContext:onFinish:), 0, 0);
}