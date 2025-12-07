void sub_100262DB0(uint64_t a1, char **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (!v5)
  {
    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    goto LABEL_3;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      return;
    }

LABEL_3:
    v7 = v6;
    v8 = v5;
    if (([v7 traits] & 0x10) != 0)
    {
      v9 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_1000CF25C(0, *(v9 + 2) + 1, 1, v9);
        *a2 = v9;
      }

      v11 = *(v9 + 2);
      v12 = *(v9 + 3);
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        v62 = v11 + 1;
        v50 = v9;
        v51 = *(v9 + 2);
        v52 = sub_1000CF25C((v12 > 1), v11 + 1, 1, v50);
        v11 = v51;
        v13 = v62;
        v9 = v52;
        *a2 = v52;
      }

      *(v9 + 2) = v13;
      v14 = &v9[16 * v11];
      *(v14 + 4) = 0x736F6D7461;
      *(v14 + 5) = 0xE500000000000000;
    }

    if (([v7 traits] & 4) != 0)
    {
      v15 = *a2;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v15;
      if ((v16 & 1) == 0)
      {
        v15 = sub_1000CF25C(0, *(v15 + 2) + 1, 1, v15);
        *a2 = v15;
      }

      v17 = *(v15 + 2);
      v18 = *(v15 + 3);
      v19 = v17 + 1;
      if (v17 >= v18 >> 1)
      {
        v63 = v17 + 1;
        v53 = v15;
        v54 = *(v15 + 2);
        v55 = sub_1000CF25C((v18 > 1), v17 + 1, 1, v53);
        v17 = v54;
        v19 = v63;
        v15 = v55;
        *a2 = v55;
      }

      *(v15 + 2) = v19;
      v20 = &v15[16 * v17];
      *(v20 + 4) = 0x6C2D7365722D6968;
      *(v20 + 5) = 0xEF7373656C73736FLL;
    }

    if (([v7 traits] & 2) == 0)
    {
      goto LABEL_29;
    }

    v21 = *a2;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v21;
    if ((v22 & 1) == 0)
    {
      v21 = sub_1000CF25C(0, *(v21 + 2) + 1, 1, v21);
      *a2 = v21;
    }

    v23 = *(v21 + 2);
    v24 = *(v21 + 3);
    v25 = v23 + 1;
    if (v23 >= v24 >> 1)
    {
      v62 = v23 + 1;
      v56 = v21;
      v57 = *(v21 + 2);
      v58 = sub_1000CF25C((v24 > 1), v23 + 1, 1, v56);
      v23 = v57;
      v25 = v62;
      v21 = v58;
      *a2 = v58;
    }

    *(v21 + 2) = v25;
    v26 = &v21[16 * v23];
    v27 = 0x7373656C73736F6CLL;
    v28 = 0xE800000000000000;
    goto LABEL_28;
  }

  v7 = v29;
  v8 = v5;
  if (([v7 traits] & 0x10) != 0)
  {
    v30 = *a2;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v30;
    if ((v31 & 1) == 0)
    {
      v30 = sub_1000CF25C(0, *(v30 + 2) + 1, 1, v30);
      *a2 = v30;
    }

    v32 = *(v30 + 2);
    v33 = *(v30 + 3);
    v34 = v32 + 1;
    if (v32 >= v33 >> 1)
    {
      v62 = v32 + 1;
      v59 = v30;
      v60 = *(v30 + 2);
      v61 = sub_1000CF25C((v33 > 1), v32 + 1, 1, v59);
      v32 = v60;
      v34 = v62;
      v30 = v61;
      *a2 = v61;
    }

    *(v30 + 2) = v34;
    v26 = &v30[16 * v32];
    v27 = 0x736F6D7461;
    v28 = 0xE500000000000000;
LABEL_28:
    *(v26 + 4) = v27;
    *(v26 + 5) = v28;
  }

LABEL_29:
  if (([v7 traits] & 8) != 0)
  {
    v35 = *a2;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_1000CF25C(0, *(v35 + 2) + 1, 1, v35);
      *a2 = v35;
    }

    v37 = *(v35 + 2);
    v38 = *(v35 + 3);
    v39 = v37 + 1;
    if (v37 >= v38 >> 1)
    {
      v64 = v37 + 1;
      v47 = v35;
      v48 = *(v35 + 2);
      v49 = sub_1000CF25C((v38 > 1), v37 + 1, 1, v47);
      v37 = v48;
      v39 = v64;
      v35 = v49;
      *a2 = v49;
    }

    *(v35 + 2) = v39;
    v40 = &v35[16 * v37];
    *(v40 + 4) = 0x6C616974617073;
    *(v40 + 5) = 0xE700000000000000;
  }

  if (([v7 traits] & 0x20) != 0)
  {
    v41 = *a2;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v41;
    if ((v42 & 1) == 0)
    {
      v41 = sub_1000CF25C(0, *(v41 + 2) + 1, 1, v41);
      *a2 = v41;
    }

    v44 = *(v41 + 2);
    v43 = *(v41 + 3);
    if (v44 >= v43 >> 1)
    {
      *a2 = sub_1000CF25C((v43 > 1), v44 + 1, 1, v41);
    }

    v45 = *a2;
    *(v45 + 2) = v44 + 1;
    v46 = &v45[16 * v44];
    *(v46 + 4) = 0x646E756F72727573;
    *(v46 + 5) = 0xE800000000000000;
  }

  else
  {
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.isBeats1.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10026AAE4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100694AB8;
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

uint64_t ModelObjectBackedStoreItemMetadata.collectionName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_10026AB10;
  *(v3 + 24) = v2;
  v9[4] = sub_10019CED8;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001D41F8;
  v9[3] = &unk_100694B30;
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

void ModelObjectBackedStoreItemMetadata.collectionStoreID.getter(uint64_t a1@<X8>)
{
  v25 = 0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = &v25;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10026AB3C;
  *(v5 + 24) = v4;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100694BA8;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v25;
    if (!v25)
    {
      goto LABEL_11;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = [v11 anyObject];
    }

    else
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      v15 = v9;
      if (!v14)
      {
LABEL_8:
        v16 = v9;
LABEL_9:
        v17 = v16;
        ObjectType = swift_getObjectType();
        v19 = [v17 identifiers];
        v20 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v19);
        v22 = v21;

        if (v22)
        {
          *(a1 + 24) = &type metadata for String;
          *a1 = v20;
          *(a1 + 8) = v22;
LABEL_12:
          v23 = v25;

          return;
        }

LABEL_11:
        *a1 = 0u;
        *(a1 + 16) = 0u;
        goto LABEL_12;
      }

      v13 = [v14 innerObject];
    }

    v16 = v13;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_10026384C(uint64_t a1, void **a2)
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
  *(v3 + 16) = sub_10026AB44;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100694C20;
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
  *(v3 + 16) = sub_10026AB70;
  *(v3 + 24) = v2;
  v9[4] = sub_10019CED8;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001D41F8;
  v9[3] = &unk_100694C98;
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

void *sub_100263C3C(uint64_t a1, uint64_t *a2, SEL *a3, const char **a4)
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
        v17 = sub_1005728D8();
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
  *(v3 + 16) = sub_10026AB9C;
  *(v3 + 24) = v2;
  v9[4] = sub_10019CED8;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001D41F8;
  v9[3] = &unk_100694D10;
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
  *(v3 + 16) = sub_10026ABD4;
  *(v3 + 24) = v2;
  v9[4] = sub_10019CED8;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001D41F8;
  v9[3] = &unk_100694D88;
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

void sub_100264050(uint64_t a1, uint64_t *a2)
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
          v13 = sub_1005728D8();
          v15 = v14;
        }

        else
        {
          v16 = [v10 shortName];
          if (v16)
          {
            v17 = v16;
            v13 = sub_1005728D8();
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
  *(v3 + 16) = sub_10026ABDC;
  *(v3 + 24) = v2;
  v9[4] = sub_10019CED8;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001D41F8;
  v9[3] = &unk_100694E00;
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

void *sub_10026431C(uint64_t a1, uint64_t *a2)
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
    v16 = sub_1005728D8();
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
  *(v3 + 16) = sub_10026ABE4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100694E78;
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
  *(v3 + 16) = sub_10026AC20;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100694EF0;
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
  *(v3 + 16) = sub_10026AC4C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100694F68;
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

id sub_1002649C4(uint64_t a1, void *a2)
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
  *(v3 + 16) = sub_10026AC54;
  *(v3 + 24) = v2;
  v9[4] = sub_10019CED8;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001D41F8;
  v9[3] = &unk_100694FE0;
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

void *sub_100264C0C(uint64_t a1, uint64_t *a2, SEL *a3)
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
    v18 = sub_1005728D8();
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
  *(v3 + 16) = sub_10026AC78;
  *(v3 + 24) = v2;
  v9[4] = sub_10019CED8;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001D41F8;
  v9[3] = &unk_100695058;
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
  *(v3 + 16) = sub_10026AC9C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_1006950D0;
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
  *(v3 + 16) = sub_10026ACC8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100695148;
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

id sub_100265280(uint64_t a1, void *a2)
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
  *(v3 + 16) = sub_10026ACD0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_1006951C0;
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
      v10 = sub_1005728D8();
      v12 = v11;

      sub_100009DCC(&qword_1006E7DE0, &qword_100589E38);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_10057B510;
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

void sub_100265580(uint64_t a1, void **a2)
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
  *(v3 + 16) = sub_10026ACD8;
  *(v3 + 24) = v2;
  v9[4] = sub_10019CED8;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001D41F8;
  v9[3] = &unk_100695238;
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
  *(v3 + 16) = sub_10026AD04;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_1006952B0;
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
  *(v3 + 16) = sub_10026AD30;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100695328;
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

void sub_100265B20(uint64_t a1, unsigned __int8 *a2)
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
  *(v3 + 16) = sub_10026AD38;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_1006953A0;
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

void sub_100265D88(uint64_t a1, unsigned __int8 *a2)
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
  *(v3 + 16) = sub_10026AD40;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100695418;
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

id sub_100265FF0(uint64_t a1, _BYTE *a2)
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
  *(v3 + 16) = sub_10026AD48;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100695490;
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

id sub_100266234(uint64_t a1, _BYTE *a2)
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
  *(v3 + 16) = sub_10026AD50;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100695508;
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

uint64_t sub_1002664C4(uint64_t a1, _BYTE *a2)
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
  *(v3 + 16) = sub_10026AD58;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100695580;
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
  *(v3 + 16) = sub_10026AD84;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_1006955F8;
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
  *(v3 + 16) = sub_10026ADB0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100695670;
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
  *(v3 + 16) = sub_10026ADDC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_1006956E8;
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

uint64_t sub_100266BF8(uint64_t a1, _BYTE *a2)
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
  *(v3 + 16) = sub_10026ADE4;
  *(v3 + 24) = v2;
  v9[4] = sub_10019CED8;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001D41F8;
  v9[3] = &unk_100695760;
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

void sub_100266E0C(uint64_t a1, uint64_t *a2)
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

      sub_100573ED8(24);
      v16._countAndFlagsBits = 0xD000000000000013;
      v16._object = 0x80000001005AEE90;
      sub_100572A98(v16);
      v17._object = 0x80000001005B30D0;
      v17._countAndFlagsBits = 0xD000000000000012;
      sub_100572A98(v17);
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      sub_100572A98(v18);
      type metadata accessor for MPModelCuratorKind(0);
      sub_100574098();
      sub_1005740F8();
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
      v11 = sub_1005728D8();
      v13 = v12;

      *a2 = v11;
      a2[1] = v13;
      goto LABEL_5;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
LABEL_4:
      *a2 = sub_1005728D8();
      a2[1] = v6;
LABEL_5:
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10056CAA8();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10026ADEC;
  *(v6 + 24) = v5;
  v11[4] = sub_10019CED8;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1001D41F8;
  v11[3] = &unk_1006957D8;
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

void sub_1002673DC(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v3 = sub_10056CD08();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E8040, &qword_10058A600);
  __chkstk_darwin();
  v8 = &v23 - v7;
  v9 = sub_10056C538();
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
        sub_10056C4F8();

        (*(v10 + 32))(v14, v12, v9);
        v22 = [objc_opt_self() storeServerCalendar];
        sub_10056CCA8();

        sub_10056CCB8();
        (*(v4 + 8))(v6, v3);
        (*(v10 + 8))(v14, v9);
        sub_10008B71C(v8, v23, &qword_1006E8040, &qword_10058A600);
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
  *(v3 + 16) = sub_10026ADF4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100695850;
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
  *(v3 + 16) = sub_10026AE20;
  *(v3 + 24) = v2;
  v9[4] = sub_10019CED8;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001D41F8;
  v9[3] = &unk_1006958C8;
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
  *(v3 + 16) = sub_10026AE4C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100695940;
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
  *(v3 + 16) = sub_10026AE78;
  *(v3 + 24) = v2;
  v9[4] = sub_10019CED8;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001D41F8;
  v9[3] = &unk_1006959B8;
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

void *sub_100267D10(uint64_t a1, void *a2)
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
        v15 = sub_1005728D8();
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
  *(v3 + 16) = sub_10026AE80;
  *(v3 + 24) = v2;
  v9[4] = sub_10019CED8;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001D41F8;
  v9[3] = &unk_100695A30;
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

Class sub_10026824C(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_100009DCC(&qword_1006E8040, &qword_10058A600);
  __chkstk_darwin();
  v6 = &v14 - v5;
  v7 = a1;
  a3();

  v8 = sub_10056CAA8();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = sub_10056C9E8().super.isa;
    (*(v9 + 8))(v6, v8);
    v11 = isa;
  }

  return v11;
}

uint64_t ModelObjectBackedStoreItemMetadata.releaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10056CAA8();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10026AEAC;
  *(v6 + 24) = v5;
  v11[4] = sub_10019CED8;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1001D41F8;
  v11[3] = &unk_100695AA8;
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

void *sub_100268520(uint64_t a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_10056C538();
  v59 = *(v3 - 8);
  v60 = v3;
  __chkstk_darwin();
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006EA0C0, &qword_10058F1F8);
  __chkstk_darwin();
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v57 - v7;
  __chkstk_darwin();
  v10 = &v57 - v9;
  __chkstk_darwin();
  v12 = &v57 - v11;
  sub_100009DCC(&qword_1006E8040, &qword_10058A600);
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
        sub_10056C4F8();

        v29 = 0;
      }

      else
      {
        v29 = 1;
      }

      v37 = v59;
      v36 = v60;
      (*(v59 + 56))(v10, v29, 1, v60);
      sub_10026B030(v10, v12);
      if ((*(v37 + 48))(v12, 1, v36))
      {

        sub_10001036C(v12, &qword_1006EA0C0, &qword_10058F1F8);
        v38 = sub_10056CAA8();
        (*(*(v38 - 8) + 56))(v20, 1, 1, v38);
      }

      else
      {
        v39 = v58;
        (*(v37 + 16))(v58, v12, v36);
        sub_10001036C(v12, &qword_1006EA0C0, &qword_10058F1F8);
        sub_10056C518();

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
          sub_10056C4F8();

          v35 = 0;
        }

        else
        {
          v35 = 1;
        }

        v47 = v59;
        v46 = v60;
        (*(v59 + 56))(v6, v35, 1, v60);
        sub_10026B030(v6, v8);
        if ((*(v47 + 48))(v8, 1, v46))
        {

          sub_10001036C(v8, &qword_1006EA0C0, &qword_10058F1F8);
          v48 = sub_10056CAA8();
          (*(*(v48 - 8) + 56))(v18, 1, 1, v48);
        }

        else
        {
          v49 = v58;
          (*(v47 + 16))(v58, v8, v46);
          sub_10001036C(v8, &qword_1006EA0C0, &qword_10058F1F8);
          sub_10056C518();

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
            sub_10056CA58();

            v45 = 0;
            v42 = v44;
          }

          else
          {
            v45 = 1;
          }

          v55 = sub_10056CAA8();
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
            sub_10056CA58();

            v54 = 0;
            v51 = v53;
          }

          else
          {
            v54 = 1;
          }

          v56 = sub_10056CAA8();
          (*(*(v56 - 8) + 56))(v14, v54, 1, v56);
          v16 = v14;
        }
      }
    }

    return sub_10008B71C(v16, v61, &qword_1006E8040, &qword_10058A600);
  }

  return result;
}

id sub_100268BF4(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v12);

  v5 = v13;
  if (v13)
  {
    sub_10000C8CC(v12, v13);
    v6 = *(v5 - 8);
    v7 = __chkstk_darwin();
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = sub_100574478();
    (*(v6 + 8))(v9, v5);
    sub_100010474(v12);
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
  *(v5 + 16) = sub_10026AEB4;
  *(v5 + 24) = v4;
  v10[4] = sub_10019CED8;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1001D41F8;
  v10[3] = &unk_100695B20;
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

uint64_t sub_100268EA4(uint64_t a1, uint64_t a2)
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

      return sub_10008B71C(v10, a2, &qword_1006EA040, &unk_10058A5D0);
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
  *(v3 + 16) = sub_10026AEBC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100695B98;
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

void sub_100269128(uint64_t a1, void *a2)
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
  *(v3 + 16) = sub_10026AEC4;
  *(v3 + 24) = v2;
  v9[4] = sub_10019CED8;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001D41F8;
  v9[3] = &unk_100695C10;
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

void *sub_100269378(uint64_t a1, uint64_t *a2, void *a3, SEL *a4, void *a5, SEL *a6)
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
        v18 = sub_1005728D8();
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
        v18 = sub_1005728D8();
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

id sub_1002694D8(void *a1, uint64_t a2, void (*a3)(void))
{
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
  __chkstk_darwin();
  v6 = &v15 - v5;
  v7 = a1;
  a3();

  v8 = sub_10056C8A8();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    sub_10056C7E8(v10);
    v13 = v12;
    (*(v9 + 8))(v6, v8);
    v11 = v13;
  }

  return v11;
}

uint64_t ModelObjectBackedStoreItemMetadata.shortURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10056C8A8();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10026AF00;
  *(v6 + 24) = v5;
  v11[4] = sub_10019CED8;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1001D41F8;
  v11[3] = &unk_100695C88;
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
  *(v3 + 16) = sub_10026AF24;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100695D00;
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

id sub_100269950(uint64_t a1, _BYTE *a2, void *a3, SEL *a4)
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
  *(v3 + 16) = sub_10026AF50;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100695D78;
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

void sub_100269C88(uint64_t a1, _BYTE *a2)
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
  *(v3 + 16) = sub_10026AF58;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100695DF0;
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

id sub_100269EEC(uint64_t a1, void *a2, void *a3, SEL *a4)
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
  *(v3 + 16) = sub_10026AF84;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10019CED8;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D41F8;
  aBlock[3] = &unk_100695E68;
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

id sub_10026A11C(uint64_t a1, void *a2)
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
  v3 = sub_10056C8A8();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10026AF8C;
  *(v6 + 24) = v5;
  v11[4] = sub_10019CED8;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1001D41F8;
  v11[3] = &unk_100695EE0;
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

void *sub_10026A388(uint64_t a1, uint64_t a2, SEL *a3)
{
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
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
        sub_10056C838();

        v15 = 0;
        v12 = v14;
      }

      else
      {
        v15 = 1;
      }

      v16 = sub_10056C8A8();
      (*(*(v16 - 8) + 56))(v7, v15, 1, v16);
      return sub_10008B71C(v7, a2, &qword_1006E5D10, &unk_100583A20);
    }
  }

  return result;
}

id sub_10026A510(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_100572898();
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
  *(v3 + 16) = sub_10026AFB0;
  *(v3 + 24) = v2;
  v9[4] = sub_10019CED8;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1001D41F8;
  v9[3] = &unk_100695F58;
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

void *sub_10026A704(uint64_t a1, uint64_t *a2, void *a3, SEL *a4)
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
        v14 = sub_1005728D8();
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

id sub_10026A8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_100009DCC(&qword_1006E8040, &qword_10058A600);
  __chkstk_darwin();
  v8 = &v17 - v7;
  *&v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v9 = &v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10.super.isa = sub_100572688().super.isa;

  sub_1001AF618(a3, v8);
  v11 = sub_10056CAA8();
  v12 = *(v11 - 8);
  isa = 0;
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    isa = sub_10056C9E8().super.isa;
    (*(v12 + 8))(v8, v11);
  }

  v14 = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v17.receiver = v4;
  v17.super_class = v14;
  v15 = objc_msgSendSuper2(&v17, "initWithStorePlatformDictionary:parentStoreItemMetadata:expirationDate:", v10.super.isa, a2, isa);

  sub_10001036C(a3, &qword_1006E8040, &qword_10058A600);
  return v15;
}

uint64_t sub_10026AA7C()
{

  return swift_deallocObject();
}

uint64_t sub_10026AABC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10026B030(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006EA0C0, &qword_10058F1F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MotionMode.allowsMotion.getter()
{
  v1 = v0;
  v2 = sub_10056CE48();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v10 = 0;
    v11 = 0xE000000000000000;
    sub_100573ED8(24);

    v10 = 0xD00000000000001ELL;
    v11 = 0x80000001005B3110;
    sub_10026B59C();
    v12._countAndFlagsBits = sub_100574408();
    sub_100572A98(v12);

    result = sub_1005740F8();
    __break(1u);
  }

  return result;
}

unint64_t sub_10026B59C()
{
  result = qword_1006EA0C8;
  if (!qword_1006EA0C8)
  {
    sub_10056CE48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EA0C8);
  }

  return result;
}

id sub_10026B5F4()
{
  type metadata accessor for NetworkMonitor(0);
  v0 = swift_allocObject();
  result = NetworkMonitor.init()();
  static NetworkMonitor.shared = v0;
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
  if (qword_1006E4F48 != -1)
  {
    swift_once();
  }

  return &static NetworkMonitor.shared;
}

uint64_t static NetworkMonitor.shared.getter()
{
  if (qword_1006E4F48 != -1)
  {
    swift_once();
  }
}

uint64_t NetworkMonitor.isOnline.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  return v1;
}

uint64_t sub_10026B7BC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();

  *a2 = v4;
  return result;
}

uint64_t sub_10026B83C(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10056E488();
}

uint64_t NetworkMonitor.$isOnline.getter()
{
  swift_beginAccess();
  sub_100009DCC(&qword_1006EA0D8, &qword_1005962B0);
  sub_10056E448();
  return swift_endAccess();
}

uint64_t sub_10026B924(void *a1)
{
  swift_beginAccess();
  sub_100009DCC(&qword_1006EA0D8, &qword_1005962B0);
  sub_10056E448();
  return swift_endAccess();
}

uint64_t sub_10026B99C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100009DCC(&qword_1006EAC40, &qword_1005932B0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin();
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3, v7);
  (v10)(v6, v9, v3);
  swift_beginAccess();
  sub_100009DCC(&qword_1006EA0D8, &qword_1005962B0);
  sub_10056E458();
  swift_endAccess();
  return (*(v4 + 8))(v9, v3);
}

id NetworkMonitor.init()()
{
  v1 = sub_100009DCC(&qword_1006EA0D8, &qword_1005962B0);
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
    sub_10056E438();
    (*(v2 + 32))(v0 + v7, v4, v1);
    v9 = [objc_opt_self() defaultCenter];
    v10 = MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification;
    v11 = [objc_opt_self() mainQueue];
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_10026BEA8;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10026BEB0;
    aBlock[3] = &unk_100695FA8;
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

uint64_t sub_10026BD8C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_10026BDC4(uint64_t a1, uint64_t a2)
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
      return sub_10056E488();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10026BEB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_10056C368();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_10056C338();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10026BFA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t NetworkMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = sub_100009DCC(&qword_1006EA0D8, &qword_1005962B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NetworkMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = sub_100009DCC(&qword_1006EA0D8, &qword_1005962B0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkMonitor(uint64_t a1)
{
  result = qword_1006EA108;
  if (!qword_1006EA108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10026C12C(uint64_t a1)
{
  sub_10026C1BC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10026C1BC()
{
  if (!qword_1006EACB0)
  {
    v0 = sub_10056E4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1006EACB0);
    }
  }
}

uint64_t static Notice.variant(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v200 = a2;
  sub_100572868();
  __chkstk_darwin();
  v205 = type metadata accessor for Notice.Thumbnail(0);
  v203 = *(v205 - 8);
  __chkstk_darwin();
  v4 = &v193 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&unk_1006E8E60, &unk_10058B9F8);
  __chkstk_darwin();
  v6 = &v193 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v193 - v7;
  sub_100009DCC(&qword_1006EA190, &qword_10058F2A8);
  __chkstk_darwin();
  v10 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (&v193 - v11);
  __chkstk_darwin();
  v198 = (&v193 - v13);
  sub_10056CC38();
  __chkstk_darwin();
  v204 = &v193 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100572888();
  v16 = *(v15 - 8);
  v201 = v15;
  v202 = v16;
  __chkstk_darwin();
  v199 = &v193 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v193 - v18;
  type metadata accessor for Notice.Variant(0);
  __chkstk_darwin();
  v21 = (&v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10026F710(a1, v21, type metadata accessor for Notice.Variant);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v79 = *v21;
      v78 = v21[1];
      v80 = Notice.Variant.id.getter();
      v193 = v81;
      v194 = v80;
      if (v78)
      {
        v196 = v78;
        v197 = v79;
        v195 = 0x7265646C6F66;
        v82 = v205;
        v83 = v202;
        v84 = v203;
        v85 = v19;
        v86 = v200;
        v87 = v201;
        v88 = v199;
      }

      else
      {
        v85 = v19;
        sub_100572818();
        v87 = v201;
        v83 = v202;
        v88 = v199;
        (*(v202 + 16))(v199, v19, v201);
        v82 = v205;
        v84 = v203;
        if (qword_1006E4C60 != -1)
        {
          swift_once();
        }

        v195 = 0x672E657261757173;
        v178 = qword_1006FC3B8;
        sub_10056CBC8();
        v179 = sub_100572948();
        v196 = v180;
        v197 = v179;
        (*(v83 + 8))(v19, v87);
        v86 = v200;
      }

      sub_100572818();
      (*(v83 + 16))(v88, v85, v87);
      if (qword_1006E4C60 != -1)
      {
        swift_once();
      }

      v181 = qword_1006FC3B8;
      sub_10056CBC8();
      v205 = sub_100572948();
      v183 = v182;
      (*(v83 + 8))(v85, v87);
      v184 = sub_100570578();
      v185 = v198;
      *v198 = v184;
      swift_storeEnumTagMultiPayload();
      v186 = *(v84 + 56);
      v186(v185, 0, 1, v82);
      v187 = type metadata accessor for Notice(0);
      v188 = v187[5];
      v186(v86 + v188, 1, 1, v82);
      v189 = (v86 + v187[7]);
      v174 = (v86 + v187[8]);
      v112 = v86 + v187[9];
      v113 = v86 + v187[10];
      v190 = v193;
      *v86 = v194;
      v86[1] = v190;
      result = sub_10026F230(v185, v86 + v188);
      v191 = (v86 + v187[6]);
      v192 = v196;
      *v191 = v197;
      v191[1] = v192;
      *v189 = v205;
      v189[1] = v183;
      goto LABEL_74;
    case 2u:
      v62 = *v21;
      v61 = v21[1];
      v63 = v21[2];
      v64 = Notice.Variant.id.getter();
      v194 = v65;
      v195 = v64;
      if (v63)
      {
        v196 = v63;
        v197 = v61;
        v67 = v201;
        v66 = v202;
        v68 = v19;
        v70 = v199;
        v69 = v200;
      }

      else
      {
        v68 = v19;
        sub_100572818();
        v67 = v201;
        v66 = v202;
        v70 = v199;
        (*(v202 + 16))(v199, v19, v201);
        if (qword_1006E4C60 != -1)
        {
          swift_once();
        }

        v156 = qword_1006FC3B8;
        sub_10056CBC8();
        v157 = sub_100572948();
        v196 = v158;
        v197 = v157;
        (*(v66 + 8))(v19, v67);
        v69 = v200;
      }

      sub_100572858();
      v209._countAndFlagsBits = 0;
      v209._object = 0xE000000000000000;
      sub_100572848(v209);
      v206 = v62;
      sub_100572828();
      v159._object = 0x80000001005B3200;
      v159._countAndFlagsBits = 0xD000000000000015;
      goto LABEL_65;
    case 3u:
      v74 = *v21;
      v73 = v21[1];
      v75 = v21[2];
      v76 = Notice.Variant.id.getter();
      v194 = v77;
      v195 = v76;
      if (v75)
      {
        v196 = v75;
        v197 = v73;
        v67 = v201;
        v66 = v202;
        v68 = v19;
        v70 = v199;
        v69 = v200;
      }

      else
      {
        v68 = v19;
        sub_100572818();
        v67 = v201;
        v66 = v202;
        v70 = v199;
        (*(v202 + 16))(v199, v19, v201);
        if (qword_1006E4C60 != -1)
        {
          swift_once();
        }

        v160 = qword_1006FC3B8;
        sub_10056CBC8();
        v161 = sub_100572948();
        v196 = v162;
        v197 = v161;
        (*(v66 + 8))(v19, v67);
        v69 = v200;
      }

      sub_100572858();
      v210._countAndFlagsBits = 0;
      v210._object = 0xE000000000000000;
      sub_100572848(v210);
      v206 = v74;
      sub_100572828();
      v159._countAndFlagsBits = 0xD000000000000013;
      v159._object = 0x80000001005B31E0;
LABEL_65:
      sub_100572848(v159);
      sub_100572878();
      (*(v66 + 16))(v70, v68, v67);
      if (qword_1006E4C60 != -1)
      {
        swift_once();
      }

      v163 = qword_1006FC3B8;
      sub_10056CBC8();
      v164 = sub_100572948();
      v166 = v165;
      (*(v66 + 8))(v68, v67);
      v167 = sub_100570578();
      v168 = v198;
      *v198 = v167;
      v169 = v205;
      swift_storeEnumTagMultiPayload();
      v170 = *(v203 + 56);
      v170(v168, 0, 1, v169);
      v171 = type metadata accessor for Notice(0);
      v172 = v171[5];
      v170(v69 + v172, 1, 1, v169);
      v173 = (v69 + v171[7]);
      v174 = (v69 + v171[8]);
      v112 = v69 + v171[9];
      v113 = v69 + v171[10];
      v175 = v194;
      *v69 = v195;
      v69[1] = v175;
      result = sub_10026F230(v168, v69 + v172);
      v176 = (v69 + v171[6]);
      v177 = v196;
      *v176 = v197;
      v176[1] = v177;
      *v173 = v164;
      v173[1] = v166;
LABEL_74:
      *v174 = 0;
      v174[1] = 0;
      break;
    case 4u:
      v47 = *v21;
      v46 = v21[1];
      v48 = Notice.Variant.id.getter();
      v194 = v49;
      if (v46)
      {
        v196 = v46;
        v197 = v47;
        v50 = v205;
        v52 = v201;
        v51 = v202;
        v53 = v19;
      }

      else
      {
        v53 = v19;
        sub_100572818();
        v52 = v201;
        v51 = v202;
        (*(v202 + 16))(v199, v19, v201);
        if (qword_1006E4C60 != -1)
        {
          swift_once();
        }

        v134 = qword_1006FC3B8;
        sub_10056CBC8();
        v135 = sub_100572948();
        v196 = v136;
        v197 = v135;
        (*(v51 + 8))(v19, v52);
        v50 = v205;
      }

      v137 = v200;
      v138 = qword_1006E5608;

      if (v138 != -1)
      {
        swift_once();
      }

      v195 = v48;
      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        sub_100572818();
        (*(v51 + 16))(v199, v53, v52);
        if (qword_1006E4C60 != -1)
        {
          swift_once();
        }

        v139 = qword_1006FC3B8;
        sub_10056CBC8();
        v140 = sub_100572948();
        v204 = v141;
        v205 = v140;
        (*(v51 + 8))(v53, v52);
        v143 = swift_allocObject();
        *(v143 + 16) = v47;
        *(v143 + 24) = v46;
        v142 = sub_10026F2D8;
      }

      else
      {

        v142 = 0;
        v143 = 0;
        v204 = 0;
        v205 = 0;
      }

      v144 = sub_100570578();
      v145 = v198;
      *v198 = v144;
      swift_storeEnumTagMultiPayload();
      v146 = *(v203 + 56);
      v146(v145, 0, 1, v50);
      v147 = type metadata accessor for Notice(0);
      v148 = v50;
      v149 = v147[5];
      v146(v137 + v149, 1, 1, v148);
      v150 = (v137 + v147[7]);
      v151 = (v137 + v147[8]);
      v112 = v137 + v147[9];
      v113 = v137 + v147[10];
      v152 = v194;
      *v137 = v195;
      v137[1] = v152;
      result = sub_10026F230(v145, v137 + v149);
      v153 = (v137 + v147[6]);
      v154 = v196;
      *v153 = v197;
      v153[1] = v154;
      v155 = v204;
      *v150 = v205;
      v150[1] = v155;
      *v151 = v142;
      v151[1] = v143;
      *v112 = 2;
      goto LABEL_37;
    case 5u:
      v91 = Notice.Variant.id.getter();
      v196 = v92;
      v197 = v91;
      v41 = v19;
      sub_100572818();
      v43 = v201;
      v42 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_1006E4C60 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 6u:
    case 7u:
    case 8u:
      v99 = Notice.Variant.id.getter();
      v196 = v100;
      v197 = v99;
      v41 = v19;
      sub_100572818();
      v43 = v201;
      v42 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_1006E4C60 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 9u:
      v59 = Notice.Variant.id.getter();
      v196 = v60;
      v197 = v59;
      v41 = v19;
      sub_100572818();
      v43 = v201;
      v42 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_1006E4C60 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xAu:
      v95 = Notice.Variant.id.getter();
      v196 = v96;
      v197 = v95;
      v56 = v19;
      sub_100572818();
      v58 = v201;
      v57 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_1006E4C60 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xBu:
      v44 = Notice.Variant.id.getter();
      v196 = v45;
      v197 = v44;
      v41 = v19;
      sub_100572818();
      v43 = v201;
      v42 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_1006E4C60 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xCu:
      v54 = Notice.Variant.id.getter();
      v196 = v55;
      v197 = v54;
      v56 = v19;
      sub_100572818();
      v58 = v201;
      v57 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_1006E4C60 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xDu:
      v93 = Notice.Variant.id.getter();
      v196 = v94;
      v197 = v93;
      v56 = v19;
      sub_100572818();
      v58 = v201;
      v57 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_1006E4C60 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xEu:
      v39 = Notice.Variant.id.getter();
      v196 = v40;
      v197 = v39;
      v41 = v19;
      sub_100572818();
      v43 = v201;
      v42 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_1006E4C60 == -1)
      {
        goto LABEL_34;
      }

LABEL_75:
      swift_once();
LABEL_34:
      v101 = qword_1006FC3B8;
      sub_10056CBC8();
      v36 = sub_100572948();
      v38 = v102;
      (*(v42 + 8))(v41, v43);
      goto LABEL_35;
    case 0xFu:
      v71 = Notice.Variant.id.getter();
      v196 = v72;
      v197 = v71;
      v56 = v19;
      sub_100572818();
      v58 = v201;
      v57 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_1006E4C60 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0x10u:
      v31 = Notice.Variant.id.getter();
      v196 = v32;
      v197 = v31;
      sub_100572818();
      v34 = v201;
      v33 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_1006E4C60 != -1)
      {
        swift_once();
      }

      v35 = qword_1006FC3B8;
      sub_10056CBC8();
      v36 = sub_100572948();
      v38 = v37;
      (*(v33 + 8))(v19, v34);
      goto LABEL_35;
    case 0x11u:
      v89 = Notice.Variant.id.getter();
      v196 = v90;
      v197 = v89;
      v56 = v19;
      sub_100572818();
      v58 = v201;
      v57 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_1006E4C60 == -1)
      {
        goto LABEL_32;
      }

LABEL_81:
      swift_once();
LABEL_32:
      v97 = qword_1006FC3B8;
      sub_10056CBC8();
      v36 = sub_100572948();
      v38 = v98;
      (*(v57 + 8))(v56, v58);
LABEL_35:
      v103 = sub_100570578();
      v104 = v198;
      *v198 = v103;
      v105 = v205;
      swift_storeEnumTagMultiPayload();
      v106 = *(v203 + 56);
      v106(v104, 0, 1, v105);
      v107 = type metadata accessor for Notice(0);
      v108 = v107[5];
      v109 = v200;
      v106(v200 + v108, 1, 1, v105);
      v110 = (v109 + v107[7]);
      v111 = (v109 + v107[8]);
      v112 = v109 + v107[9];
      v113 = v109 + v107[10];
      v114 = v196;
      *v109 = v197;
      v109[1] = v114;
      result = sub_10026F230(v104, v109 + v108);
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
      v197 = v21[1];
      v198 = v22;
      v23 = sub_100009DCC(&qword_1006EA198, &qword_10058F2B0);
      v24 = *(v23 + 48);
      v193 = *(v21 + *(v23 + 64));
      sub_10026F2E0(v21 + v24, v8);
      v25 = Notice.Variant.id.getter();
      v195 = v26;
      v196 = v25;
      sub_10000CC8C(v8, v6, &unk_1006E8E60, &unk_10058B9F8);
      v27 = sub_100571E58();
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(v6, 1, v27) == 1)
      {
        sub_10001036C(v6, &unk_1006E8E60, &unk_10058B9F8);
        v29 = 1;
        v30 = v205;
      }

      else
      {
        (*(v28 + 32))(v4, v6, v27);
        v30 = v205;
        swift_storeEnumTagMultiPayload();
        sub_10026F350(v4, v10);
        v29 = 0;
      }

      v117 = v203;
      v118 = *(v203 + 56);
      v118(v10, v29, 1, v30);
      v203 = *(v117 + 48);
      v119 = (v203)(v10, 1, v30);
      v194 = v118;
      if (v119 == 1)
      {
        *v12 = sub_100570578();
        swift_storeEnumTagMultiPayload();
        v118(v12, 0, 1, v30);
        if ((v203)(v10, 1, v30) != 1)
        {
          sub_10001036C(v10, &qword_1006EA190, &qword_10058F2A8);
        }
      }

      else
      {
        sub_10026F350(v10, v12);
        v118(v12, 0, 1, v30);
      }

      sub_100572858();
      v207._countAndFlagsBits = 0;
      v207._object = 0xE000000000000000;
      sub_100572848(v207);
      v206 = v193;
      sub_100572828();
      v208._countAndFlagsBits = 0x297328676E6F7320;
      v208._object = 0xEE00646564646120;
      sub_100572848(v208);
      sub_100572878();
      v121 = v201;
      v120 = v202;
      (*(v202 + 16))(v199, v19, v201);
      if (qword_1006E4C60 != -1)
      {
        swift_once();
      }

      v122 = qword_1006FC3B8;
      sub_10056CBC8();
      v123 = sub_100572948();
      v125 = v124;
      (*(v120 + 8))(v19, v121);
      sub_10001036C(v8, &unk_1006E8E60, &unk_10058B9F8);
      v126 = type metadata accessor for Notice(0);
      v127 = v126[5];
      v128 = v200;
      v194(v200 + v127, 1, 1, v205);
      v129 = (v128 + v126[7]);
      v130 = (v128 + v126[8]);
      v112 = v128 + v126[9];
      v113 = v128 + v126[10];
      v131 = v195;
      *v128 = v196;
      v128[1] = v131;
      result = sub_10026F230(v12, v128 + v127);
      v132 = (v128 + v126[6]);
      v133 = v197;
      *v132 = v198;
      v132[1] = v133;
      *v129 = v123;
      v129[1] = v125;
      *v130 = 0;
      v130[1] = 0;
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

  return sub_10026F230(a1, v3);
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
  sub_1000E672C(*v1, v1[1]);
  return v2;
}

uint64_t Notice.link.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 32));
  result = sub_1000F3E14(*v5, v5[1]);
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
  sub_100009DCC(&qword_1006EA190, &qword_10058F2A8);
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
  result = sub_10026F230(v17, &a9[v21]);
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
  result = sub_10026F230(a3, &a9[v18]);
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
  sub_100009DCC(&qword_1006EA190, &qword_10058F2A8);
  __chkstk_darwin();
  v17 = (&v31 - v16);
  *v17 = sub_100570578();
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
  result = sub_10026F230(v17, a9 + v21);
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
  sub_10026F710(v3, a3, type metadata accessor for Notice);
  v7 = (a3 + *(type metadata accessor for Notice(0) + 32));
  v8 = *v7;
  v9 = v7[1];

  result = sub_1000F3E14(v8, v9);
  *v7 = a1;
  v7[1] = a2;
  return result;
}

unint64_t Notice.Variant.id.getter()
{
  type metadata accessor for Notice.Variant(0);
  __chkstk_darwin();
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10026F710(v0, v2, type metadata accessor for Notice.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7478654E79616C70;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1002700C0(v2, type metadata accessor for Notice.Variant);
      result = 0x466F546465766F6DLL;
      break;
    case 2:
      sub_1002700C0(v2, type metadata accessor for Notice.Variant);
      result = 0xD000000000000016;
      break;
    case 3:
      sub_1002700C0(v2, type metadata accessor for Notice.Variant);
      result = 0xD000000000000014;
      break;
    case 4:
      sub_1002700C0(v2, type metadata accessor for Notice.Variant);
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

      v5 = sub_100009DCC(&qword_1006EA198, &qword_10058F2B0);
      sub_10001036C(&v2[*(v5 + 48)], &unk_1006E8E60, &unk_10058B9F8);
      result = 0x506F546465646461;
      break;
  }

  return result;
}

uint64_t sub_10026EEA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056C8A8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v28 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E5D10, &unk_100583A20);
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
    v11 = 0x80000001005B3320;
  }

  v12 = sub_1000F4304(_swiftEmptyArrayStorage);
  sub_1001FA980(a1, v11, 0xD000000000000032, 0x80000001005B0230, _swiftEmptyArrayStorage, v12, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v10, 1u);
  v13 = v4;

  sub_10000CC8C(v10, v8, &qword_1006E5D10, &unk_100583A20);
  if ((*(v5 + 48))(v8, 1, v4) == 1)
  {
    sub_10001036C(v10, &qword_1006E5D10, &unk_100583A20);
  }

  else
  {
    v14 = v28;
    (*(v5 + 32))(v28, v8, v4);
    v15 = objc_opt_self();
    v16 = [v15 sharedApplication];
    sub_10056C7E8(v17);
    v19 = v18;
    v20 = [v16 canOpenURL:v18];

    if (v20)
    {
      v21 = [v15 sharedApplication];
      sub_10056C7E8(v22);
      v24 = v23;
      sub_1000F41C8(_swiftEmptyArrayStorage);
      type metadata accessor for OpenExternalURLOptionsKey(0);
      sub_10017F9CC();
      isa = sub_100572688().super.isa;

      [v21 openURL:v24 options:isa completionHandler:0];
    }

    (*(v5 + 8))(v14, v13);
    v8 = v10;
  }

  return sub_10001036C(v8, &qword_1006E5D10, &unk_100583A20);
}

uint64_t sub_10026F230(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006EA190, &qword_10058F2A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026F2A0()
{

  return swift_deallocObject();
}

uint64_t sub_10026F2E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&unk_1006E8E60, &unk_10058B9F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10026F350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice.Thumbnail(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s9MusicCore6NoticeV9ThumbnailO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100571E58();
  v21 = *(v4 - 8);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Notice.Thumbnail(0);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v20 - v9;
  sub_100009DCC(&qword_1006EA3D8, &unk_10058F378);
  __chkstk_darwin();
  v12 = &v20 - v11;
  v14 = *(v13 + 56);
  sub_10026F710(a1, &v20 - v11, type metadata accessor for Notice.Thumbnail);
  sub_10026F710(a2, &v12[v14], type metadata accessor for Notice.Thumbnail);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_10026F710(v12, v10, type metadata accessor for Notice.Thumbnail);
    if (!swift_getEnumCaseMultiPayload())
    {
      v17 = sub_1005705A8();

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_10026F710(v12, v8, type metadata accessor for Notice.Thumbnail);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = v21;
      (*(v21 + 32))(v6, &v12[v14], v4);
      v17 = sub_100571E48();
      v18 = *(v16 + 8);
      v18(v6, v4);
      v18(v8, v4);
LABEL_12:
      sub_1002700C0(v12, type metadata accessor for Notice.Thumbnail);
      return v17 & 1;
    }

    (*(v21 + 8))(v8, v4);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_10001036C(v12, &qword_1006EA3D8, &unk_10058F378);
    v17 = 0;
    return v17 & 1;
  }

  sub_1002700C0(v12, type metadata accessor for Notice.Thumbnail);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_10026F710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s9MusicCore6NoticeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Notice.Thumbnail(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006EA190, &qword_10058F2A8);
  __chkstk_darwin();
  v9 = &v37 - v8;
  v10 = sub_100009DCC(&qword_1006EA3D0, &qword_10058F370);
  __chkstk_darwin();
  v12 = &v37 - v11;
  v13 = *a1;
  v14 = a1[1];
  v38 = a1;
  if ((v13 != *a2 || v14 != a2[1]) && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

  v15 = a2;
  v37 = type metadata accessor for Notice(0);
  v16 = *(v37 + 20);
  v17 = *(v10 + 48);
  sub_10000CC8C(v38 + v16, v12, &qword_1006EA190, &qword_10058F2A8);
  v18 = v15 + v16;
  v19 = v15;
  sub_10000CC8C(v18, &v12[v17], &qword_1006EA190, &qword_10058F2A8);
  v20 = *(v5 + 48);
  if (v20(v12, 1, v4) == 1)
  {
    if (v20(&v12[v17], 1, v4) == 1)
    {
      sub_10001036C(v12, &qword_1006EA190, &qword_10058F2A8);
      goto LABEL_13;
    }

LABEL_9:
    sub_10001036C(v12, &qword_1006EA3D0, &qword_10058F370);
    return 0;
  }

  sub_10000CC8C(v12, v9, &qword_1006EA190, &qword_10058F2A8);
  if (v20(&v12[v17], 1, v4) == 1)
  {
    sub_1002700C0(v9, type metadata accessor for Notice.Thumbnail);
    goto LABEL_9;
  }

  sub_10026F350(&v12[v17], v7);
  v22 = _s9MusicCore6NoticeV9ThumbnailO21__derived_enum_equalsySbAE_AEtFZ_0(v9, v7);
  sub_1002700C0(v7, type metadata accessor for Notice.Thumbnail);
  sub_1002700C0(v9, type metadata accessor for Notice.Thumbnail);
  sub_10001036C(v12, &qword_1006EA190, &qword_10058F2A8);
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
  if ((*v25 != *v27 || v26 != v27[1]) && (sub_100574498() & 1) == 0)
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
    if (v32 && (*v29 == *v31 && v30 == v32 || (sub_100574498() & 1) != 0))
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

uint64_t sub_10026FB5C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100009DCC(&qword_1006EA190, &qword_10058F2A8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10026FC2C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009DCC(&qword_1006EA190, &qword_10058F2A8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10026FCDC(uint64_t a1)
{
  sub_10026FDE0(319, &qword_1006EA208, type metadata accessor for Notice.Thumbnail);
  if (v1 <= 0x3F)
  {
    sub_10019B158();
    if (v2 <= 0x3F)
    {
      sub_1000E517C(319);
      if (v3 <= 0x3F)
      {
        sub_10026FDE0(319, &unk_1006EA210, type metadata accessor for FeedbackType);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10026FDE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100573C28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10026FE34(uint64_t a1)
{
  result = sub_100571E58();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10026FEA0(uint64_t a1)
{
  sub_10026FF80(319);
  if (v1 <= 0x3F)
  {
    sub_100270078(319, &qword_1006EA388);
    if (v2 <= 0x3F)
    {
      sub_100270000(319, &qword_1006EA390, "playlistCount folderName ");
      if (v3 <= 0x3F)
      {
        sub_100270000(319, &qword_1006EA398, "folderCount folderName ");
        if (v4 <= 0x3F)
        {
          sub_100270078(319, &unk_1006EA3A0);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10026FF80(uint64_t a1)
{
  if (!qword_1006EA380)
  {
    sub_100010324(&unk_1006E8E60, &unk_10058B9F8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006EA380);
    }
  }
}

void sub_100270000(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_100010324(&unk_1006EB090, &qword_100587FB0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_100270078(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_10019B158();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1002700C0(uint64_t a1, uint64_t (*a2)(void))
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
  sub_100274280(a4, &a7[v13[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_100270274(a5, &a7[v14]);
  *&a7[v16] = a6;
  return result;
}

uint64_t sub_100270274(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006EA3F8, &qword_10058F398);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v21 = a3;
  v22 = a6;
  sub_100009DCC(&qword_1006EA3F8, &qword_10058F398);
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
  result = sub_100270274(v13, &a7[v18]);
  *&a7[v19] = v22;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v31 = a3;
  v32 = a7;
  v30 = a2;
  sub_100009DCC(&qword_1006EA3F8, &qword_10058F398);
  __chkstk_darwin();
  v14 = &v29 - v13;
  v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = (&v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v18 = a4;
  v18[1] = a5;
  swift_storeEnumTagMultiPayload();
  v19 = sub_10056C628();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(a6, 1, v19) == 1)
  {
    sub_10001036C(a6, &qword_1006E6118, &qword_10058C520);
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
  sub_100274280(v18, &a8[v23[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_100270274(v14, &a8[v24]);
  *&a8[v25] = v32;
  return result;
}

uint64_t NowPlaying.TrackMetadata.StringKind.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10056C628();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    sub_10001036C(a1, &qword_1006E6118, &qword_10058C520);
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
  v4 = sub_10056C628();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v27 = a3;
  v28 = a7;
  sub_100009DCC(&qword_1006EA3F8, &qword_10058F398);
  __chkstk_darwin();
  v15 = (&v27 - v14);
  v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10056C628();
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
  sub_100274280(v19, a8 + v23[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_100270274(v15, a8 + v24);
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

  return sub_100270E70(a1, v3);
}

uint64_t NowPlaying.TrackMetadata.subtitle.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 28);

  return sub_100270274(a1, v3);
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

uint64_t sub_100270E70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlaying.TrackMetadata.StringKind.description.getter()
{
  v1 = v0;
  v2 = sub_10056C628();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100274218(v1, v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v7;
  }

  (*(v3 + 32))(v5, v7, v2);
  sub_100271060();
  v8 = sub_10056C768();
  (*(v3 + 8))(v5, v2);
  return v8;
}

unint64_t sub_100271060()
{
  result = qword_1006E92D0;
  if (!qword_1006E92D0)
  {
    sub_10056C628();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E92D0);
  }

  return result;
}

uint64_t sub_1002710BC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10056C628();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100274218(v2, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v4 + 32))(v6, v8, v3);
  sub_100271060();
  v9 = sub_10056C768();
  (*(v4 + 8))(v6, v3);
  return v9;
}

uint64_t NowPlaying.TrackMetadata.isArtworkVisuallyEqual(to:)(uint64_t a1)
{
  sub_100009DCC(&qword_1006EA400, &qword_10058F3A0);
  __chkstk_darwin();
  v4 = &v12 - v3;
  v5 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v6 = *(v1 + *(v5 + 32));
  sub_10000CC8C(a1, v4, &qword_1006EA400, &qword_10058F3A0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    v7 = v6;
    sub_10001036C(v4, &qword_1006EA400, &qword_10058F3A0);
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
    sub_1002742E8(v4, type metadata accessor for NowPlaying.TrackMetadata);
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
          sub_1000D3B98(0, &qword_1006E93C0, NSObject_ptr);
          v8 = sub_100573A58();
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
  if (qword_1006E4F50 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v4 = sub_10000C49C(v3, static NowPlaying.TrackMetadata.notPlaying);
  if (v1 == *v4 && v2 == v4[1])
  {
    return 1;
  }

  return sub_100574498();
}

void sub_1002714CC()
{
  sub_100009DCC(&qword_1006EA3F8, &qword_10058F398);
  __chkstk_darwin();
  v25 = &v23 - v0;
  sub_10056CC38();
  __chkstk_darwin();
  v1 = sub_100572888();
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
  sub_10000C910(v11, static NowPlaying.TrackMetadata.notPlaying);
  v12 = sub_10000C49C(v11, static NowPlaying.TrackMetadata.notPlaying);
  sub_100572818();
  v13 = *(v2 + 16);
  v24 = v1;
  v13(v4, v6, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v14 = qword_1006FC3B8;
  sub_10056CBC8();
  v15 = sub_100572948();
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
  sub_100274280(v10, &v12[v11[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_100270274(v19, &v12[v20]);
  v22 = *&v12[v21];
  *&v12[v21] = 0;
}

void sub_1002718A0()
{
  sub_100009DCC(&qword_1006EA3F8, &qword_10058F398);
  __chkstk_darwin();
  v25 = &v23 - v0;
  sub_10056CC38();
  __chkstk_darwin();
  v1 = sub_100572888();
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
  sub_10000C910(v11, static NowPlaying.TrackMetadata.loading);
  v12 = sub_10000C49C(v11, static NowPlaying.TrackMetadata.loading);
  sub_100572818();
  v13 = *(v2 + 16);
  v24 = v1;
  v13(v4, v6, v1);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v14 = qword_1006FC3B8;
  sub_10056CBC8();
  v15 = sub_100572948();
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
  sub_100274280(v10, v12 + v11[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_100270274(v19, v12 + v20);
  v22 = *(v12 + v21);
  *(v12 + v21) = 0;
}

uint64_t sub_100271C70(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);

  return sub_10000C49C(v4, a2);
}

uint64_t sub_100271CE8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v7 = sub_10000C49C(v6, a2);
  return sub_100274218(v7, a4, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t NowPlaying.TrackMetadata.init(playerPath:item:subtitled:)@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v62) = a3;
  v69 = a2;
  v71 = a4;
  sub_100009DCC(&qword_1006EA3F8, &qword_10058F398);
  __chkstk_darwin();
  v68 = &v58 - v5;
  v70 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin();
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056C658();
  __chkstk_darwin();
  v61 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_10056C628();
  v65 = *(v67 - 8);
  __chkstk_darwin();
  v63 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = &v58 - v9;
  sub_10056CC38();
  __chkstk_darwin();
  v10 = sub_100572888();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v58 - v14;
  sub_100572818();
  v16 = *(v11 + 16);
  v16(v13, v15, v10);
  if (qword_1006E4C60 != -1)
  {
    swift_once();
  }

  v17 = qword_1006FC3B8;
  sub_10056CBC8();
  v18 = v17;
  v19 = sub_100572948();
  v59 = v20;
  v60 = v19;
  v21 = *(v11 + 8);
  v21(v15, v10);
  sub_100572818();
  v16(v13, v15, v10);
  sub_10056CBC8();
  v22 = sub_100572948();
  v24 = v23;
  v21(v15, v10);
  v25 = [a1 route];
  v26 = a1;
  if (v25)
  {
    v27 = v25;
    v28 = [v25 routeName];

    v29 = sub_1005728D8();
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
  sub_1005728D8();
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
  sub_10056C648();
  sub_10056C638();
  v38 = [v26 representedBundleID];
  if (!v38)
  {
    v38 = [v26 bundleID];
    if (!v38)
    {
      v61 = 0xD000000000000013;
      v62 = 0x80000001005B3360;
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
  v61 = sub_1005728D8();
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
  sub_100270274(v48, v45 + v50);
  *(v45 + v51) = 0;
  v55 = v71;
  sub_100274280(v45, v71, type metadata accessor for NowPlaying.TrackMetadata);
  v56 = v66;
  LOBYTE(v46) = [v66 isSystemMusicPath];

  result = (*(v41 + 8))(v72, v43);
  *(v55 + v44[9]) = v46;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(_:in:explicitBadgeConfigurator:)@<X0>(void *a1@<X0>, void *a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100009DCC(&qword_1006E6118, &qword_10058C520);
  __chkstk_darwin();
  v11 = (&v65 - v10);
  sub_100009DCC(&qword_1006EA3F8, &qword_10058F398);
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
        v72 = sub_1005728D8();
        v65 = v37;

        sub_100274218(v16, v76, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        v38 = v29;
        MPModelSong.preferredBylineAttribution(with:from:)(&off_100684FD0, v29, v11);
        v39 = sub_10056C628();
        v40 = *(v39 - 8);
        if ((*(v40 + 48))(v11, 1, v39) == 1)
        {
          sub_10001036C(v11, &qword_1006E6118, &qword_10058C520);
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

        sub_1000F3E14(v78, v75);
        sub_1002742E8(v16, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
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
        sub_100274280(v76, v20 + v17[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
        sub_100270274(v42, v20 + v46);
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

          sub_1000F3E14(v25, v75);
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

            if (qword_1006E4F60 != -1)
            {
              swift_once();
            }

            v55 = sub_10056DF88();
            sub_10000C49C(v55, qword_1006EA3E0);
            v56 = v68;
            v57 = sub_10056DF68();
            v58 = sub_100573438();

            if (os_log_type_enabled(v57, v58))
            {
              v59 = v21;
              v60 = swift_slowAlloc();
              v61 = swift_slowAlloc();
              v80 = v61;
              *v60 = 136315138;
              v79 = [v56 type];
              type metadata accessor for MPModelGenericObjectType(0);
              v62 = sub_100572978();
              v64 = sub_1000C9784(v62, v63, &v80);
              a5 = v67;

              *(v60 + 4) = v64;
              _os_log_impl(&_mh_execute_header, v57, v58, "Unexpected metadataObject type %s", v60, 0xCu);
              sub_100010474(v61);

              sub_1000F3E14(v78, v52);
            }

            else
            {

              sub_1000F3E14(v78, v52);
            }

            v31 = 1;
            goto LABEL_23;
          }

          v53 = v51;
          v54 = v23;
          NowPlaying.TrackMetadata.init(movie:item:)(v53, v21, v20);

          sub_1000F3E14(v78, v52);
        }
      }

      sub_100274280(v20, a5, type metadata accessor for NowPlaying.TrackMetadata);
      v31 = 0;
LABEL_23:
      v18 = v69;
      return (*(v18 + 56))(a5, v31, 1, v17);
    }

    sub_1000F3E14(v78, v75);
    v31 = 1;
    v17 = v74;
  }

  else
  {
    sub_1000F3E14(a3, a4);

    v31 = 1;
  }

  return (*(v18 + 56))(a5, v31, 1, v17);
}

uint64_t NowPlaying.TrackMetadata.init(song:from:item:explicitBadgeConfigurator:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, char *a5@<X8>)
{
  sub_100009DCC(&qword_1006E6118, &qword_10058C520);
  __chkstk_darwin();
  v11 = (&v35 - v10);
  sub_100009DCC(&qword_1006EA3F8, &qword_10058F398);
  __chkstk_darwin();
  v13 = &v35 - v12;
  v14 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v42 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = (&v35 - v18);
  v39 = v17;
  v40 = a4;
  if (v17)
  {
    MPModelSong.nowPlayingAttributedTitle(from:explicitBadgeConfigurator:)(a2, v17, a4);
  }

  else
  {
    *v19 = MPModelSong.nowPlayingTitle(from:)(a2);
    v19[1] = v20;
  }

  swift_storeEnumTagMultiPayload();
  v41 = a3;
  v21 = [a3 queueItemIdentifier];
  v22 = sub_1005728D8();
  v36 = v23;
  v37 = v22;

  sub_100274218(v19, v42, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v38 = a2;
  MPModelSong.preferredBylineAttribution(with:from:)(&off_100684FF8, a2, v11);
  v24 = sub_10056C628();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v11, 1, v24) == 1)
  {
    sub_10001036C(v11, &qword_1006E6118, &qword_10058C520);
    v26 = 1;
  }

  else
  {
    (*(v25 + 32))(v13, v11, v24);
    swift_storeEnumTagMultiPayload();
    v26 = 0;
  }

  v27 = *(v15 + 56);
  v27(v13, v26, 1, v14);
  v28 = [a1 artworkCatalog];

  sub_1000F3E14(v39, v40);
  sub_1002742E8(v19, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v29 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v30 = v29[7];
  v27(&a5[v30], 1, 1, v14);
  v31 = v29[8];
  a5[v29[9]] = 1;
  v32 = v36;
  *a5 = v37;
  *(a5 + 1) = v32;
  v33 = v42;
  *(a5 + 2) = v41;
  sub_100274280(v33, &a5[v29[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_100270274(v13, &a5[v30]);
  *&a5[v31] = v28;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(tvEpisode:item:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_100009DCC(&qword_1006EA3F8, &qword_10058F398);
  __chkstk_darwin();
  v47 = &v42 - v6;
  v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v45 = *(v7 - 8);
  v46 = v7;
  __chkstk_darwin();
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100009DCC(&qword_1006E6118, &qword_10058C520);
  __chkstk_darwin();
  v11 = &v42 - v10;
  sub_10056CC38();
  __chkstk_darwin();
  v12 = sub_100572888();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = __chkstk_darwin().n128_u64[0];
  v18 = &v42 - v17;
  v48 = a2;
  v19 = [a2 queueItemIdentifier];
  v20 = sub_1005728D8();
  v42 = v21;
  v43 = v20;

  v44 = a1;
  v22 = [a1 title];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1005728D8();
    v26 = v25;
  }

  else
  {
    sub_100572818();
    (*(v13 + 16))(v15, v18, v12);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v27 = qword_1006FC3B8;
    sub_10056CBC8();
    v24 = sub_100572948();
    v26 = v28;
    (*(v13 + 8))(v18, v12);
  }

  v29 = sub_10056C628();
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
    sub_10001036C(v11, &qword_1006E6118, &qword_10058C520);
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
  sub_100274280(v9, a3 + v37[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_100270274(v35, a3 + v38);
  *(a3 + v39) = v32;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(movie:item:)@<X0>(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  sub_100009DCC(&qword_1006EA3F8, &qword_10058F398);
  __chkstk_darwin();
  v7 = &v34 - v6;
  sub_10056CC38();
  __chkstk_darwin();
  v8 = sub_100572888();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v34 - v13;
  v15 = [a2 queueItemIdentifier];
  v16 = sub_1005728D8();
  v35 = v17;
  v36 = v16;

  v18 = [a1 title];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1005728D8();
    v22 = v21;
  }

  else
  {
    sub_100572818();
    (*(v9 + 16))(v11, v14, v8);
    if (qword_1006E4C60 != -1)
    {
      swift_once();
    }

    v23 = qword_1006FC3B8;
    sub_10056CBC8();
    v20 = sub_100572948();
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
  result = sub_100270274(v7, &a3[v30]);
  *&a3[v31] = v25;
  return result;
}

uint64_t sub_100273970()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006EA3E0);
  sub_10000C49C(v0, qword_1006EA3E0);
  return sub_10056DF78();
}

uint64_t sub_1002739F0(Swift::String a1)
{
  sub_100572A98(a1);

  return sub_10056DF78();
}

uint64_t _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v24 = sub_10056C628();
  v4 = *(v24 - 8);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = (&v23 - v9);
  sub_100009DCC(&qword_1006EA580, qword_10058F498);
  __chkstk_darwin();
  v12 = &v23 - v11;
  v14 = (&v23 + *(v13 + 56) - v11);
  sub_100274218(a1, &v23 - v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_100274218(a2, v14, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100274218(v12, v10, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v19 = *v10;
    v18 = v10[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v19 == *v14 && v18 == v14[1])
      {
      }

      else
      {
        v21 = sub_100574498();

        if ((v21 & 1) == 0)
        {
          sub_1002742E8(v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
          goto LABEL_8;
        }
      }

      sub_1002742E8(v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      v16 = 1;
      return v16 & 1;
    }

LABEL_7:
    sub_10001036C(v12, &qword_1006EA580, qword_10058F498);
LABEL_8:
    v16 = 0;
    return v16 & 1;
  }

  sub_100274218(v12, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(v8, v24);
    goto LABEL_7;
  }

  v15 = v24;
  (*(v4 + 32))(v6, v14, v24);
  v16 = sub_10056C5D8();
  v17 = *(v4 + 8);
  v17(v6, v15);
  v17(v8, v15);
  sub_1002742E8(v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  return v16 & 1;
}

uint64_t _s9MusicCore10NowPlayingO13TrackMetadataV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  sub_100009DCC(&qword_1006EA400, &qword_10058F3A0);
  __chkstk_darwin();
  v5 = &v24 - v4;
  v6 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006EA3F8, &qword_10058F398);
  __chkstk_darwin();
  v11 = &v24 - v10;
  v12 = sub_100009DCC(&qword_1006EA578, &qword_10058F490);
  __chkstk_darwin();
  v14 = &v24 - v13;
  if (*a1 != *a2 && (sub_100574498() & 1) == 0)
  {
    goto LABEL_10;
  }

  v15 = type metadata accessor for NowPlaying.TrackMetadata(0);
  if ((_s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(a1 + *(v15 + 24), a2 + *(v15 + 24)) & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v9;
  v26 = v15;
  v27 = v5;
  v16 = *(v15 + 28);
  v17 = *(v12 + 48);
  sub_10000CC8C(a1 + v16, v14, &qword_1006EA3F8, &qword_10058F398);
  sub_10000CC8C(a2 + v16, &v14[v17], &qword_1006EA3F8, &qword_10058F398);
  v18 = *(v7 + 48);
  if (v18(v14, 1, v6) == 1)
  {
    if (v18(&v14[v17], 1, v6) == 1)
    {
      sub_10001036C(v14, &qword_1006EA3F8, &qword_10058F398);
LABEL_13:
      v23 = v27;
      sub_100274218(a2, v27, type metadata accessor for NowPlaying.TrackMetadata);
      (*(*(v26 - 8) + 56))(v23, 0, 1);
      v19 = NowPlaying.TrackMetadata.isArtworkVisuallyEqual(to:)(v23);
      sub_10001036C(v23, &qword_1006EA400, &qword_10058F3A0);
      return v19 & 1;
    }

    goto LABEL_9;
  }

  sub_10000CC8C(v14, v11, &qword_1006EA3F8, &qword_10058F398);
  if (v18(&v14[v17], 1, v6) == 1)
  {
    sub_1002742E8(v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_9:
    sub_10001036C(v14, &qword_1006EA578, &qword_10058F490);
    goto LABEL_10;
  }

  v21 = v25;
  sub_100274280(&v14[v17], v25, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v22 = _s9MusicCore10NowPlayingO13TrackMetadataV10StringKindO21__derived_enum_equalsySbAG_AGtFZ_0(v11, v21);
  sub_1002742E8(v21, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1002742E8(v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001036C(v14, &qword_1006EA3F8, &qword_10058F398);
  if (v22)
  {
    goto LABEL_13;
  }

LABEL_10:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_100274218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100274280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002742E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10027435C(uint64_t a1, uint64_t a2, uint64_t a3)
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
      v13 = sub_100009DCC(&qword_1006EA3F8, &qword_10058F398);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1002744A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
      v13 = sub_100009DCC(&qword_1006EA3F8, &qword_10058F398);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1002745D0(uint64_t a1)
{
  sub_100274724(319, &qword_1006EA470, &qword_1006EA478, MPCPlayerResponseItem_ptr);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(319);
    if (v2 <= 0x3F)
    {
      sub_1002746CC(319);
      if (v3 <= 0x3F)
      {
        sub_100274724(319, &qword_1006EA488, &unk_1006EA490, MPArtworkCatalog_ptr);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002746CC(uint64_t a1)
{
  if (!qword_1006EA480)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(255);
    v1 = sub_100573C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1006EA480);
    }
  }
}

void sub_100274724(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1000D3B98(255, a3, a4);
    v5 = sub_100573C28();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10027477C(uint64_t a1)
{
  result = sub_10056C628();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002747FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_10056FA48();
  sub_100009DCC(&qword_1006EA590, &qword_10058F540);
  sub_100570678();
  sub_10056E598();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = sub_100009DCC(&qword_1006EA598, &qword_10058F548);
  (*(*(v17 - 8) + 16))(a3, a1, v17);
  v18 = a3 + *(sub_100009DCC(&qword_1006EA5A0, &qword_10058F550) + 36);
  *v18 = v8;
  *(v18 + 8) = v10;
  *(v18 + 16) = v12;
  *(v18 + 24) = v14;
  *(v18 + 32) = v16;
  *(v18 + 40) = 0;
  v19 = sub_100274D28();
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a2;
  v21 = sub_100009DCC(&qword_1006EA5A8, &qword_10058F558);
  *(a3 + *(v21 + 52)) = v19;
  v22 = (a3 + *(v21 + 56));
  *v22 = sub_1002751D4;
  v22[1] = v20;
}

uint64_t sub_100274984(uint64_t *a1, uint64_t a2, double a3)
{
  sub_100570A58();
  sub_10056EA28();
}

uint64_t View.keyboardReactive()(uint64_t a1)
{
  v1 = __chkstk_darwin();
  (*(v3 + 16))(v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v5[1] = 0;
  sub_100570668();
  return sub_10056EC98();
}

uint64_t sub_100274B1C(void *a1)
{
  sub_10056ECA8();
  sub_100274B80();
  return swift_getWitnessTable();
}

unint64_t sub_100274B80()
{
  result = qword_1006EA588;
  if (!qword_1006EA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EA588);
  }

  return result;
}

CGFloat sub_100274C2C()
{
  v0 = sub_10056C358();
  if (!v0)
  {
    goto LABEL_8;
  }

  v1 = v0;
  sub_1005728D8();
  sub_100573E78();
  if (!*(v1 + 16) || (v2 = sub_1000EB93C(&v5), (v3 & 1) == 0))
  {

    sub_1000F4130(&v5);
LABEL_8:
    v6 = 0u;
    v7 = 0u;
    goto LABEL_9;
  }

  sub_100081F38(*(v1 + 56) + 32 * v2, &v6);
  sub_1000F4130(&v5);

  if (!*(&v7 + 1))
  {
LABEL_9:
    sub_1001D36AC(&v6);
    return 0.0;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    return CGRectGetHeight(v5);
  }

  return 0.0;
}

uint64_t sub_100274D28()
{
  v0 = sub_100009DCC(&qword_1006EA5B0, &qword_10058F560);
  v1 = *(v0 - 8);
  v31 = v0;
  v32 = v1;
  __chkstk_darwin();
  v30 = &v27 - v2;
  v3 = sub_100573728();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009DCC(&qword_1006EA5B8, &qword_10058F568);
  v29 = *(v7 - 8);
  v8 = v29;
  __chkstk_darwin();
  v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v27 - v10;
  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  sub_100573738();

  sub_100275244();
  sub_10056E4C8();
  v13 = *(v4 + 8);
  v13(v6, v3);
  v14 = [v11 defaultCenter];
  sub_100573738();

  v15 = v28;
  sub_10056E4C8();
  v13(v6, v3);
  sub_100009DCC(&qword_1006EA5C8, &unk_10058F570);
  v16 = *(v29 + 72);
  v17 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10057B500;
  v19 = v18 + v17;
  v20 = *(v8 + 16);
  v21 = v27;
  v20(v19, v27, v7);
  v20(v19 + v16, v15, v7);
  sub_100010BC0(&qword_1006EA5D0, &qword_1006EA5B8, &qword_10058F568, &protocol conformance descriptor for Publishers.Map<A, B>);
  v22 = v30;
  sub_10056E398();
  sub_100010BC0(&qword_1006EA5D8, &qword_1006EA5B0, &qword_10058F560, &protocol conformance descriptor for Publishers.MergeMany<A>);
  v23 = v31;
  v24 = sub_10056E4B8();
  (*(v32 + 8))(v22, v23);
  v25 = *(v8 + 8);
  v25(v15, v7);
  v25(v21, v7);
  return v24;
}

uint64_t sub_10027519C()
{

  return swift_deallocObject();
}

unint64_t sub_100275244()
{
  result = qword_1006EA5C0;
  if (!qword_1006EA5C0)
  {
    sub_100573728();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EA5C0);
  }

  return result;
}

uint64_t sub_1002752E0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = __chkstk_darwin();
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_10056E438();
  return (*(v4 + 8))(a1, a2);
}

uint64_t property wrapper backing initializer of OptionalObservableObject.output(uint64_t a1, uint64_t a2)
{
  v3 = sub_100573C28();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, a1, v3, v5);
  sub_1002752E0(v7, v3);
  return (*(v4 + 8))(a1, v3);
}

uint64_t OptionalObservableObject.output.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10056E478();
}

uint64_t OptionalObservableObject.output.setter(uint64_t a1)
{
  sub_1002760DC(a1);
  v2 = sub_100573C28();
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
  v3[6] = sub_10056E468();
  return sub_100275754;
}

void sub_100275754(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t OptionalObservableObject.$output.getter()
{
  swift_beginAccess();
  sub_100573C28();
  sub_10056E4A8();
  sub_10056E448();
  return swift_endAccess();
}

uint64_t OptionalObservableObject.$output.setter(uint64_t a1)
{
  sub_100276210(a1);
  sub_100573C28();
  v2 = sub_10056E498();
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
  sub_100573C28();
  v5 = sub_10056E498();
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
  return sub_100275A10;
}

void sub_100275A10(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_100276210(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_100276210(*(*a1 + 32));
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
  sub_100573C28();
  v6 = sub_10056E4A8();
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
    sub_10000C8CC(&v21, v15);

    v17 = sub_10056E4D8();

    if (*(a1 + 3))
    {
      sub_100010474(a1);
    }

    goto LABEL_11;
  }

  sub_10002EA8C(a1, v14);
  if (!*(a1 + 3))
  {
    goto LABEL_8;
  }

  sub_10002EA8C(a1, &v21);
  v15 = *(&v22 + 1);
  if (*(&v22 + 1))
  {
    goto LABEL_9;
  }

LABEL_4:
  v16 = *(a1 + 3);
  if (v16)
  {
    sub_100010474(a1);
    v17 = 0;
    v16 = 0;
    if (*(&v22 + 1))
    {
LABEL_11:
      sub_100010474(&v21);
      v16 = v17;
    }
  }

  *(v2 + *(*v2 + 104)) = v16;

  return v2;
}

uint64_t sub_100275E10(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 80);
  v4 = sub_100573C28();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v11 - v7;
  v9 = *(v3 - 8);
  (*(v9 + 16))(&v11 - v7, a1, v3, v6);
  (*(v9 + 56))(v8, 0, 1, v3);
  sub_1002760DC(v8);
  return (*(v5 + 8))(v8, v4);
}

uint64_t *OptionalObservableObject.deinit()
{
  v1 = *(*v0 + 88);
  sub_100573C28();
  v2 = sub_10056E4A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = (v0 + *(*v0 + 96));
  if (v3[3])
  {
    sub_100010474(v3);
  }

  return v0;
}

uint64_t OptionalObservableObject.__deallocating_deinit()
{
  OptionalObservableObject.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100276098@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>, uint64_t x2_0@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for OptionalObservableObject(0, *(a1 + 80), x2_0, a4);
  result = sub_10056E408();
  *a3 = result;
  return result;
}

uint64_t sub_1002760DC(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_100573C28();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v9 - v6;
  v9[2] = v3;
  swift_getKeyPath();
  v9[0] = v3;
  swift_getKeyPath();
  (*(v5 + 16))(v7, a1, v4);

  return sub_10056E488();
}

uint64_t sub_100276210(uint64_t a1)
{
  sub_100573C28();
  sub_10056E498();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - v3, a1, v2);
  swift_beginAccess();
  sub_10056E4A8();
  sub_10056E458();
  return swift_endAccess();
}

uint64_t sub_100276344(uint64_t a1)
{
  sub_100573C28();
  result = sub_10056E4A8();
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
  v14[4] = sub_100276728;
  v14[5] = v9;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100276730;
  v14[3] = &unk_100696208;
  v10 = _Block_copy(v14);
  v11 = v8;

  v12 = [v7 beginObservingPrivacyAcknowledgementForIdentifier:v11 handler:v10];

  _Block_release(v10);

  *(v3 + 24) = v12;
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_1002765DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100276614(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 32) == 1)
    {
      sub_100155E5C();
      v5 = swift_allocObject();
      swift_weakInit();
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      *(v6 + 24) = a2 & 1;

      static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_1002769E8, v6);
    }

    else
    {
      (*(result + 40))(a2 & 1);
    }
  }

  return result;
}

void sub_100276730(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1002767A4(uint64_t a1, uint64_t a2)
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

uint64_t sub_100276930(uint64_t a1, char a2)
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

uint64_t sub_1002769B0()
{

  return swift_deallocObject();
}

uint64_t sub_1002769F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1000EF8D4(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_10056CAE8();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_1000EB9E8(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1000F0F80();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = sub_10056CAE8();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1002C72C4(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = sub_10056CAE8();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

void sub_100276BB4(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_1000F51DC(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    sub_1000EFAA0(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    sub_10001036C(a1, &qword_1006EA040, &unk_10058A5D0);
    sub_1002C698C(a2, v6);

    sub_10001036C(v6, &qword_1006EA040, &unk_10058A5D0);
  }
}

uint64_t sub_100276C68(uint64_t a1, uint64_t a2)
{
  sub_100009DCC(&unk_1006EA740, &qword_10058F718);
  __chkstk_darwin();
  v6 = &v15 - v5;
  type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  v7 = __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v7) == 1)
  {
    sub_10001036C(a1, &unk_1006EA740, &qword_10058F718);
    sub_1002C6A2C(a2, v6);
    v11 = sub_10056CAE8();
    (*(*(v11 - 8) + 8))(a2, v11);
    return sub_10001036C(v6, &unk_1006EA740, &qword_10058F718);
  }

  else
  {
    sub_1000F51EC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_1000EFBF0(v9, a2, isUniquelyReferenced_nonNull_native);
    v14 = sub_10056CAE8();
    result = (*(*(v14 - 8) + 8))(a2, v14);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_100276E74(uint64_t a1, uint64_t a2)
{
  sub_100009DCC(&unk_1006EC5A0, &unk_10058F898);
  __chkstk_darwin();
  v6 = &v16 - v5;
  v7 = sub_100009DCC(&qword_1006E6AC0, &qword_1005868A0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin();
  v11 = &v16 - v10;
  if ((*(v8 + 48))(a1, 1, v7, v9) == 1)
  {
    sub_10001036C(a1, &unk_1006EC5A0, &unk_10058F898);
    sub_1002C6D14(a2, v6);
    v12 = sub_10056CAE8();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_10001036C(v6, &unk_1006EC5A0, &unk_10058F898);
  }

  else
  {
    (*(v8 + 32))(v11, a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_1000F0208(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = sub_10056CAE8();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

id sub_1002770A8()
{
  v0 = type metadata accessor for PushNotificationObserver();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_1000F4B7C(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static PushNotificationObserver.shared = result;
  return result;
}

id sub_100277124()
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = sub_1000F4B7C(_swiftEmptyArrayStorage);
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  return objc_msgSendSuper2(&v3, "init");
}

uint64_t *PushNotificationObserver.shared.unsafeMutableAddressor()
{
  if (qword_1006E4F68 != -1)
  {
    swift_once();
  }

  return &static PushNotificationObserver.shared;
}

uint64_t static PushNotificationObserver.shared.getter()
{
  if (qword_1006E4F68 != -1)
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
  sub_100009DCC(&unk_1006EA740, &qword_10058F718);
  v6[11] = swift_task_alloc();
  v7 = sub_10056CAE8();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_100277340, v5, 0);
}

uint64_t sub_100277340()
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

    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    (*(v3 + 16))(v2, v7 + v10, v4);
    sub_1000F52B4(v7, v5);
    (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    swift_beginAccess();
    sub_100276C68(v5, v2);
    swift_endAccess();
    v11 = *(v1 + 120);
    if (v11)
    {
      v12 = *(v0 + 80);
      v14 = *(v12 + 128);
      v13 = *(v12 + 136);
      sub_100278DB8(*(v1 + 120), v14, v13);
      v15 = v11;
      sub_1001091B0(v11, v14, v13);
      sub_100277EF8();
      isa = sub_100572D08().super.isa;

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
    v19[1] = sub_1002775A0;

    return sub_1002788FC();
  }
}

uint64_t sub_1002775A0()
{
  v1 = *(*v0 + 80);

  return _swift_task_switch(sub_1002776B0, v1, 0);
}

uint64_t sub_1002776B0()
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

  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  (*(v2 + 16))(v1, v7 + v10, v3);
  sub_1000F52B4(v7, v4);
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  swift_beginAccess();
  sub_100276C68(v4, v1);
  swift_endAccess();
  v11 = *(v6 + 120);
  if (v11)
  {
    v12 = *(v0 + 80);
    v14 = *(v12 + 128);
    v13 = *(v12 + 136);
    sub_100278DB8(*(v6 + 120), v14, v13);
    v15 = v11;
    sub_1001091B0(v11, v14, v13);
    sub_100277EF8();
    isa = sub_100572D08().super.isa;

    [v15 _setEnabledTopics:isa];
  }

  v17 = *(v0 + 8);

  return v17();
}

void PushNotificationObserver.unregister(registeredHandler:)(uint64_t a1)
{
  v2 = v1;
  sub_100009DCC(&unk_1006EA740, &qword_10058F718);
  __chkstk_darwin();
  v5 = &v20 - v4;
  v6 = sub_10056CAE8();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(v7 + 16))(v9, a1 + *(v10 + 24), v6);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  swift_beginAccess();
  sub_100276C68(v5, v9);
  swift_endAccess();
  v12 = (v2 + 120);
  v11 = *(v2 + 120);
  if (v11)
  {
    v14 = *(v2 + 128);
    v13 = *(v2 + 136);
    sub_100278DB8(*(v2 + 120), v14, v13);
    v15 = v11;
    sub_1001091B0(v11, v14, v13);
    sub_100277EF8();
    isa = sub_100572D08().super.isa;

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
    sub_1001091B0(v17, v18, v19);
  }
}

void PushNotificationObserver.connection(_:didReceiveMessageForTopic:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100009DCC(&qword_1006E6420, &qword_100586E50);
  __chkstk_darwin();
  v9 = &v12 - v8;
  if (a4)
  {
    v10 = sub_100572F48();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v4;
    v11[5] = a2;
    v11[6] = a3;
    v11[7] = a4;

    sub_1001B3FAC(0, 0, v9, &unk_10058F738, v11);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100277C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100277C9C, 0, 0);
}

uint64_t sub_100277C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 32))
  {
    return _swift_task_switch(sub_100277CC4, *(v3 + 16), 0);
  }

  __break(1u);
  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100277CC4()
{
  sub_100278390(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

void *sub_100277EF8()
{
  v56 = sub_100009DCC(&qword_1006EA900, &qword_10058F888);
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

  sub_1000CC614(0, v5, 0);
  v8 = v7;
  v6 = v60;
  v9 = v8 + 64;
  result = sub_100573DB8();
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
    v19 = sub_10056CAE8();
    v20 = *(v19 - 8);
    v21 = v20;
    v22 = v18 + *(v20 + 72) * v11;
    v23 = *(v20 + 16);
    v59 = v6;
    v24 = v52;
    v23(v52, v22, v19);
    v25 = *(v8 + 56);
    v26 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
    sub_1000F52B4(v25 + *(*(v26 - 8) + 72) * v11, &v24[v17]);
    v27 = *(v21 + 32);
    v28 = v53;
    v27(v53, v24, v19);
    sub_1000F51EC(&v24[v17], v28 + *(v16 + 48));
    v29 = v54;
    sub_100279D44(v28, v54);
    v30 = *(v16 + 48);
    v31 = v55;
    v32 = &v55[v30];
    v27(v55, v29, v19);
    v33 = v29 + v30;
    v6 = v59;
    sub_1000F51EC(v33, v31 + v30);
    v34 = *v32;
    v35 = *(v32 + 1);

    sub_10001036C(v31, &qword_1006EA900, &qword_10058F888);
    result = sub_10001036C(v28, &qword_1006EA900, &qword_10058F888);
    v60 = v6;
    v37 = v6[2];
    v36 = v6[3];
    if (v37 >= v36 >> 1)
    {
      result = sub_1000CC614((v36 > 1), v37 + 1, 1);
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
          result = sub_100279DB4(v11, v49, 0);
          v14 = __clz(__rbit64(v44)) + v41;
          goto LABEL_5;
        }
      }

      result = sub_100279DB4(v11, v49, 0);
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

void sub_100278390(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v36 = a3;
  v51 = a1;
  v46 = *(type metadata accessor for PushNotificationObserver.RegisteredHandler(0) - 8);
  __chkstk_darwin();
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v45 = &v34 - v7;
  v50 = sub_10056CAE8();
  v8 = *(v50 - 8);
  __chkstk_darwin();
  v43 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006EA8F8, &qword_10058F880);
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
    sub_1000F52B4(v28 + *(v46 + 72) * v25, v45);
    v30 = sub_100009DCC(&qword_1006EA900, &qword_10058F888);
    v31 = *(v30 + 48);
    v11 = v41;
    (*(v27 + 32))();
    sub_1000F51EC(v29, &v11[v31]);
    (*(*(v30 - 8) + 56))(v11, 0, 1, v30);
    a2 = v47;
    v6 = v42;
    v13 = v40;
    v19 = v37;
LABEL_17:
    sub_100279B54(v11, v13);
    v32 = sub_100009DCC(&qword_1006EA900, &qword_10058F888);
    if ((*(*(v32 - 8) + 48))(v13, 1, v32) == 1)
    {

      return;
    }

    sub_1000F51EC(&v13[*(v32 + 48)], v6);
    if (*v6 == v51 && v6[1] == a2 || (sub_100574498() & 1) != 0)
    {
      v6[2](v51, a2, v36);
    }

    sub_100279BC4(v6);
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
      v33 = sub_100009DCC(&qword_1006EA900, &qword_10058F888);
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

void *sub_100278864(id a1, uint64_t a2, uint64_t a3)
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

  return sub_1001091B0(v9, v10, v11);
}

uint64_t sub_1002788FC()
{
  *(v1 + 32) = v0;
  v2 = sub_100279DC0();
  v3 = swift_task_alloc();
  *(v1 + 40) = v3;
  *v3 = v1;
  v3[1] = sub_1002789E8;

  return withCheckedContinuation<A>(isolation:function:_:)(v1 + 16, v0, v2, 0xD000000000000017, 0x80000001005B34E0, sub_100278ED0, 0, &type metadata for PushNotificationObserver.PushConfiguration);
}

uint64_t sub_1002789E8()
{
  v1 = *(*v0 + 32);

  return _swift_task_switch(sub_100278AF8, v1, 0);
}

uint64_t sub_100278AF8()
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
      sub_1005728D8();
      sub_100155E5C();

      v5 = sub_1005735E8();
      v6 = objc_allocWithZone(APSConnection);
      v7 = sub_100572898();
      v8 = sub_100572898();

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

  sub_100278DB8(v11, v12, v13);
  sub_1001091B0(v11, v12, v13);
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
    v16 = sub_100574498();

    if (v16)
    {
      goto LABEL_25;
    }

LABEL_23:
    sub_100278864(v9, v3, v2);
    goto LABEL_26;
  }

LABEL_25:
  sub_1001091B0(v9, v3, v2);
LABEL_26:
  v17 = v0[1];

  return v17();
}

uint64_t type metadata accessor for PushNotificationObserver.RegisteredHandler(uint64_t a1)
{
  result = qword_1006EA830;
  if (!qword_1006EA830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_100278DB8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
  }

  return result;
}

uint64_t sub_100278DFC(uint64_t a1)
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
  v10[1] = sub_1000116F0;

  return sub_100277C78(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100278ED0(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006EA918, &qword_10058F8A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = v21 - v6;
  if (qword_1006E4E08 != -1)
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
  sub_100009DCC(&qword_1006E8490, &qword_100582590);
  UnfairLock.locked<A>(_:)(sub_1000C5F9C);
  v13 = v22;
  if (v22)
  {
    sub_100279230(v22);
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
    v17[2] = sub_100279EA8;
    v17[3] = v11;
    v17[4] = v16;
    v17[5] = v15;
    v18 = *(v15 + 24);
    v19 = *(v15 + 32);
    *(v15 + 24) = sub_1001A9A80;
    *(v15 + 32) = v17;

    sub_1000F3E14(v18, v19);

    __chkstk_darwin();
    v21[-2] = v8;
    v21[-1] = v15;
    UnfairLock.locked<A>(_:)(sub_1001A9A8C);
    sub_1001B1500(0);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_100279230(void *a1)
{
  v1 = [a1 dictionaryForBagKey:ICURLBagKeyPushNotifications];
  if (!v1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_1005726A8();

  sub_100573E78();
  if (!*(v3 + 16) || (v4 = sub_1000EB93C(&v10), (v5 & 1) == 0))
  {

    sub_1000F4130(&v10);
    goto LABEL_8;
  }

  sub_100081F38(*(v3 + 56) + 32 * v4, v12);
  sub_1000F4130(&v10);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v10 = sub_1005728D8();
    v11 = v8;
    goto LABEL_10;
  }

  v6 = objc_opt_self();
  v7 = sub_100572898();
  LODWORD(v6) = [v6 isValidEnvironment:v7];

  if (!v6)
  {

    goto LABEL_8;
  }

  v10 = 0x6D6E6F7269766E65;
  v11 = 0xEB00000000746E65;
LABEL_10:
  sub_100009DCC(&qword_1006EA918, &qword_10058F8A8);
  return sub_100572E98();
}

uint64_t PushNotificationObserver.deinit()
{

  sub_1001091B0(*(v0 + 120), *(v0 + 128), *(v0 + 136));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PushNotificationObserver.__deallocating_deinit()
{

  sub_1001091B0(*(v0 + 120), *(v0 + 128), *(v0 + 136));

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1002794B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10056CAE8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100279570(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10056CAE8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_100279614(uint64_t a1)
{
  result = sub_1000D81FC();
  if (v2 <= 0x3F)
  {
    result = sub_10056CAE8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002796A8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100279718(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_100279858(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_100279A78(uint64_t a1, unsigned int a2)
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

uint64_t sub_100279AC8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100279B1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100279B54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006EA8F8, &qword_10058F880);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100279BC4(uint64_t a1)
{
  v2 = type metadata accessor for PushNotificationObserver.RegisteredHandler(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100279C20()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100279C70(uint64_t a1)
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
  v10[1] = sub_10000CB98;

  return sub_100277C78(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100279D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006EA900, &qword_10058F888);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100279DB4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

unint64_t sub_100279DC0()
{
  result = qword_1006EA908;
  if (!qword_1006EA908)
  {
    type metadata accessor for PushNotificationObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006EA908);
  }

  return result;
}

uint64_t sub_100279E14()
{
  v1 = sub_100009DCC(&qword_1006EA918, &qword_10058F8A8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100279EA8(void *a1)
{
  sub_100009DCC(&qword_1006EA918, &qword_10058F8A8);

  return sub_100279230(a1);
}

uint64_t sub_100279F24()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100279F5C()
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
  v60 = *(sub_100009DCC(&qword_1006E6B80, &unk_100586B90) - 8);
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
  sub_10027B2BC(a7, a9);
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
  sub_10000CC8C(v72, v70, &qword_1006E6B80, &unk_100586B90);
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
  sub_1000FF9D0(v65, v35 + v33);
  sub_100019B40(v70, v35 + ((v33 + v34 + 96) & ~v34), &qword_1006E6B80, &unk_100586B90);
  v38 = v63;
  sub_100019B40(v72, v63, &qword_1006E6B80, &unk_100586B90);
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
  sub_100019B40(v38, &v42[v40], &qword_1006E6B80, &unk_100586B90);
  v37(&v42[v41], v39, a7);
  v45 = type metadata accessor for Actions.Pin.Context(0);
  v46 = v64;
  v47 = (v64 + v45[5]);
  v48 = v61;
  *v47 = sub_10027C8EC;
  v47[1] = v48;
  v49 = (v46 + v45[6]);
  *v49 = &unk_10058F8B8;
  v49[1] = v35;
  v50 = (v46 + v45[7]);
  *v50 = &unk_10058F8C8;
  v50[1] = v42;
}

int *static Actions.Pin.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100282D9C(a1, a2, type metadata accessor for Actions.Pin.Context);
  result = sub_100009DCC(&qword_1006E6B98, &qword_100586BF0);
  *(a2 + result[9]) = 7;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_10027A900;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_10058F8D0;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_10058F8D8;
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
  sub_10027B2BC(v20, v21);
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
  sub_1000FF9D0(v50, &v26[(v22 + v15 + 7) & 0xFFFFFFFFFFFFFFF8]);
  v29 = v49;
  v28(v49, v56, a7);
  v30 = *(sub_100009DCC(&qword_1006E6B80, &unk_100586B90) - 8);
  v31 = (*(v30 + 80) + 48) & ~*(v30 + 80);
  v32 = (*(v30 + 64) + v47 + v31) & ~v47;
  v33 = swift_allocObject();
  *(v33 + 2) = a7;
  *(v33 + 3) = a8;
  v34 = v54;
  *(v33 + 4) = v53;
  *(v33 + 5) = v34;
  sub_100019B40(v55, &v33[v31], &qword_1006E6B80, &unk_100586B90);
  v28(&v33[v32], v29, a7);
  v35 = type metadata accessor for Actions.Unpin.Context(0);
  v37 = v51;
  v36 = v52;
  v38 = (v52 + v35[5]);
  *v38 = sub_100281460;
  v38[1] = v37;
  v39 = (v36 + v35[6]);
  *v39 = &unk_10058F8E8;
  v39[1] = v26;
  v40 = (v36 + v35[7]);
  *v40 = &unk_10058F8F8;
  v40[1] = v33;
}

int *static Actions.Unpin.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100282D9C(a1, a2, type metadata accessor for Actions.Unpin.Context);
  result = sub_100009DCC(&qword_1006E6B90, &qword_10058DDC0);
  *(a2 + result[9]) = 8;
  *(a2 + result[11]) = 0x4014000000000000;
  v4 = (a2 + result[10]);
  *v4 = sub_10027AB50;
  v4[1] = 0;
  v5 = (a2 + result[12]);
  *v5 = &unk_10058F900;
  v5[1] = 0;
  v6 = (a2 + result[13]);
  *v6 = &unk_10058F908;
  v6[1] = 0;
  return result;
}

uint64_t sub_10027A938()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Pin.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100114BFC;

  return v5();
}

uint64_t sub_10027AA54()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Pin.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100114BFC;

  return v5();
}

uint64_t sub_10027ABC8()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Unpin.Context(0) + 24));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100114BFC;

  return v5();
}

uint64_t sub_10027ACE4()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.Unpin.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100114BFC;

  return v5();
}

int *static Actions.UpdatePinAction.action(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10056D858();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Actions.UpdatePinAction.Context(0) - 8;
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100282D9C(a1, v10, type metadata accessor for Actions.UpdatePinAction.Context);
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
  sub_1002875F4(v10, a2, type metadata accessor for Actions.UpdatePinAction.Context);
  result = sub_100009DCC(&qword_1006EA920, &qword_10058F920);
  *(a2 + result[9]) = v12;
  *(a2 + result[11]) = 0x4014000000000000;
  v14 = (a2 + result[10]);
  *v14 = sub_10027B044;
  v14[1] = 0;
  v15 = (a2 + result[12]);
  *v15 = &unk_10058F910;
  v15[1] = 0;
  v16 = (a2 + result[13]);
  *v16 = &unk_10058F918;
  v16[1] = 0;
  return result;
}

uint64_t sub_10027B0A0()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.UpdatePinAction.Context(0) + 28));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100114460;

  return v5();
}

uint64_t sub_10027B1BC()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for Actions.UpdatePinAction.Context(0) + 32));
  v5 = (*v2 + **v2);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100114BFC;

  return v5();
}

uint64_t sub_10027B2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v89 = sub_10056D888();
  v87 = *(v89 - 8);
  __chkstk_darwin();
  v86 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v88 = &v86 - v4;
  v99 = sub_10056D3D8();
  v92 = *(v99 - 8);
  __chkstk_darwin();
  v90 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v86 - v6;
  __chkstk_darwin();
  v93 = &v86 - v7;
  v96 = sub_100572208();
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100572298();
  v98 = *(v104 - 8);
  __chkstk_darwin();
  v97 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v86 - v10;
  v106 = sub_100571C48();
  v103 = *(v106 - 8);
  __chkstk_darwin();
  v101 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v102 = &v86 - v12;
  __chkstk_darwin();
  v105 = &v86 - v13;
  v110 = sub_100571A68();
  v107 = *(v110 - 8);
  __chkstk_darwin();
  v108 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_1005722D8();
  v109 = *(v111 - 8);
  __chkstk_darwin();
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1005713A8();
  v112 = *(v17 - 8);
  v113 = v17;
  __chkstk_darwin();
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100571CF8();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_100571B78();
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
    v35 = sub_10056D818();
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
    v40 = sub_10056D818();
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
      v72 = sub_10056D818();
      v73 = *(v72 - 8);
      (*(v73 + 104))(v32, v71, v72);
      (*(v73 + 56))(v32, 0, 1, v72);
      goto LABEL_30;
    }

    if (v52 != enum case for Track.musicVideo(_:))
    {
      v74 = sub_10056D818();
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
    sub_100572218();
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
        v84 = sub_10056D818();
        (*(*(v84 - 8) + 56))(v32, 1, 1, v84);
        (*(v56 + 8))(v55, v57);
        goto LABEL_30;
      }
    }

    (*(v56 + 8))(v55, v57);
    v59 = sub_10056D818();
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
      v69 = sub_10056D818();
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
      v82 = sub_10056D818();
      (*(*(v82 - 8) + 56))(v32, 1, 1, v82);
    }

    else
    {
      v85 = sub_10056D818();
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
    sub_10056D828();
    (*(v78 + 8))(v79, v77);
    v80 = sub_10056D818();
    (*(*(v80 - 8) + 56))(v32, 0, 1, v80);
  }

  else
  {
    v83 = sub_10056D818();
    (*(*(v83 - 8) + 56))(v32, 1, 1, v83);
  }

  return (*(v116 + 8))(v30, a1);
}

uint64_t sub_10027C454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v35 = a2;
  v32 = sub_100571868();
  v34 = *(v32 - 8);
  __chkstk_darwin();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009DCC(&qword_1006EAB90, &qword_10058F9F0);
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin();
  v10 = &v28 - v9;
  sub_100009DCC(&qword_1006E6D78, &qword_1005870F0);
  __chkstk_darwin();
  v12 = &v28 - v11;
  v13 = *(a3 - 8);
  __chkstk_darwin();
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100571B78();
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
    sub_10001036C(v12, &qword_1006E6D78, &qword_1005870F0);
    goto LABEL_5;
  }

  v23(v12, 0, 1, v16);
  (*(v17 + 32))(v20, v12, v16);
  v24 = Album.childrenAddStatus(_:)(v35);
  (*(v17 + 8))(v20, v16);
  if (v24 != 1)
  {
LABEL_5:
    sub_10056D4D8();
    v26 = v32;
    sub_100571658();
    (*(v34 + 8))(v7, v26);
    v25 = sub_10027C954();
    (*(v29 + 8))(v10, v30);
    return v25;
  }

  return 0x206C616974726150;
}

uint64_t sub_10027C858()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_10027C954()
{
  v1 = sub_100571858();
  v25 = *(v1 - 8);
  __chkstk_darwin();
  v22 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v4 = &v22 - v3;
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = sub_100009DCC(&qword_1006EAB90, &qword_10058F9F0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v23 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin();
  v12 = &v22 - v11;
  v13 = *(v8 + 16);
  v24 = v0;
  v13(&v22 - v11, v0, v7, v10);
  v14 = (*(v8 + 88))(v12, v7);
  if (v14 != enum case for MusicLibrary.SupportedStatus.unsupported<A>(_:))
  {
    if (v14 != enum case for MusicLibrary.SupportedStatus.supported<A>(_:))
    {
      *&v34[0] = 0;
      *(&v34[0] + 1) = 0xE000000000000000;
      sub_100573ED8(27);

      *&v34[0] = 0xD000000000000019;
      *(&v34[0] + 1) = 0x80000001005ADFC0;
      (v13)(v23, v24, v7);
      v35._countAndFlagsBits = sub_100572978();
      sub_100572A98(v35);

      v19 = *&v34[0];
      (*(v8 + 8))(v12, v7);
      return v19;
    }

    return 0;
  }

  (*(v8 + 96))(v12, v7);
  v15 = v25;
  (*(v25 + 32))(v6, v12, v1);
  v16 = *(v15 + 16);
  v16(v4, v6, v1);
  v17 = (*(v15 + 88))(v4, v1);
  v18 = v6;
  if (v17 != enum case for MusicLibrary.PinAction.UnsupportedReason.unsupportedType(_:))
  {
    if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.alreadyPinned(_:))
    {
      (*(v15 + 8))(v6, v1);
      return 0x2079646165726C41;
    }

    if (v17 != enum case for MusicLibrary.PinAction.UnsupportedReason.allExplicitContentRestricted(_:))
    {
      if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryRequired(_:))
      {
        if (qword_1006E4D40 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_10056E478();

        v34[4] = v30;
        v34[5] = v31;
        v34[6] = v32;
        v34[7] = v33;
        v34[0] = v26;
        v34[1] = v27;
        v34[2] = v28;
        v34[3] = v29;
        sub_100108D2C(v34);
        if ((WORD4(v34[0]) & 0x100) != 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = 0xD000000000000016;
        }
      }

      else
      {
        if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryInitialImport(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0xD00000000000001CLL;
        }

        if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryIneligible(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0xD000000000000018;
        }

        if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.sharedLibrary(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0x6C20646572616853;
        }

        if (v17 == enum case for MusicLibrary.PinAction.UnsupportedReason.notInLibrary(_:))
        {
          (*(v15 + 8))(v6, v1);
          return 0x4C206E6920746F4ELL;
        }

        v19 = 0x206E776F6E6B6E55;
        if (v17 != enum case for MusicLibrary.PinAction.UnsupportedReason.unknown(_:))
        {
          *&v34[0] = 0;
          *(&v34[0] + 1) = 0xE000000000000000;
          sub_100573ED8(17);

          *&v34[0] = 0x206E776F6E6B6E55;
          *(&v34[0] + 1) = 0xEF206E6F73616572;
          v16(v22, v18, v1);
          v36._countAndFlagsBits = sub_100572978();
          sub_100572A98(v36);

          v19 = *&v34[0];
          v21 = *(v15 + 8);
          v21(v18, v1);
          v21(v4, v1);
          return v19;
        }
      }

      (*(v15 + 8))(v18, v1);
      return v19;
    }

    (*(v15 + 8))(v6, v1);
    return 0;
  }

  v19 = 0xD000000000000010;
  (*(v15 + 8))(v18, v1);
  return v19;
}

uint64_t sub_10027D090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[68] = a6;
  v6[67] = a5;
  v6[66] = a4;
  v6[65] = a3;
  v6[63] = a1;
  v6[64] = a2;
  v8 = sub_1005714A8();
  v6[69] = v8;
  v6[70] = *(v8 - 8);
  v6[71] = swift_task_alloc();
  v9 = sub_10056CAE8();
  v6[72] = v9;
  v6[73] = *(v9 - 8);
  v6[74] = swift_task_alloc();
  v10 = *(sub_100009DCC(&qword_1006E6B80, &unk_100586B90) - 8);
  v6[75] = v10;
  v6[76] = *(v10 + 64);
  v6[77] = swift_task_alloc();
  sub_10056CC38();
  v6[78] = swift_task_alloc();
  v11 = sub_100572888();
  v6[79] = v11;
  v6[80] = *(v11 - 8);
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  sub_100572868();
  v6[83] = swift_task_alloc();
  v12 = sub_100571858();
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
  v14 = sub_10056D858();
  v6[94] = v14;
  v6[95] = *(v14 - 8);
  v6[96] = swift_task_alloc();
  v15 = sub_100571868();
  v6[97] = v15;
  v6[98] = *(v15 - 8);
  v6[99] = swift_task_alloc();
  v16 = sub_100009DCC(&qword_1006EAB90, &qword_10058F9F0);
  v6[100] = v16;
  v6[101] = *(v16 - 8);
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();

  return _swift_task_switch(sub_10027D514, 0, 0);
}

uint64_t sub_10027D514(uint64_t a1)
{
  v2 = v1[103];
  v3 = v1[101];
  v35 = v1[100];
  v36 = v1[102];
  v4 = v1[99];
  v5 = v1[98];
  v6 = v1[97];
  sub_10056D4D8();
  sub_100571658();
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
      v1[118] = sub_100572F08();
      v1[119] = sub_100572EF8();
      v14 = sub_100572E78();
      v16 = v15;
      v17 = sub_10027E490;
      v18 = v14;
      v19 = v16;
LABEL_10:

      return _swift_task_switch(v17, v18, v19);
    }

    if (v13 == enum case for MusicLibrary.PinAction.UnsupportedReason.cloudLibraryRequired(_:))
    {
      v1[111] = sub_100572F08();
      v1[112] = sub_100572EF8();
      v28 = sub_100572E78();
      v19 = v29;
      v1[113] = v28;
      v1[114] = v29;
      v17 = sub_10027E030;
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
  v22 = sub_10056D858();
  (*(*(v22 - 8) + 104))(v20, v21, v22);
  v23 = swift_task_alloc();
  v1[104] = v23;
  *v23 = v1;
  v23[1] = sub_10027DA08;
  v24 = v1[96];
  v25 = v1[68];
  v26 = v1[67];
  v27 = v1[64];

  return MusicLibrary.pin<A>(_:defaultAction:)(v27, v24, v26, v25);
}

uint64_t sub_10027DA08()
{
  v2 = *(*v1 + 768);
  v3 = *(*v1 + 760);
  v4 = *(*v1 + 752);
  *(*v1 + 840) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_10027ECD0;
  }

  else
  {
    v5 = sub_10027DB78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10027DB78()
{
  swift_storeEnumTagMultiPayload();
  *(v0 + 848) = sub_100572F08();
  *(v0 + 856) = sub_100572EF8();
  v2 = sub_100572E78();

  return _swift_task_switch(sub_10027DC20, v2, v1);
}

uint64_t sub_10027DC20()
{
  v1 = *(v0 + 744);

  sub_10022F384(v1, 0);
  sub_10017A920(v1, type metadata accessor for Notice.Variant);

  return _swift_task_switch(sub_10027DCB8, 0, 0);
}

uint64_t sub_10027DCB8()
{
  (*(*(v0 + 704) + 16))(*(v0 + 728), *(v0 + 512), *(v0 + 536));
  sub_100009DCC(&qword_1006E6448, &unk_100585E10);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 472);
    v2 = *(v0 + 480);
    sub_10000C8CC((v0 + 448), v1);
    v3 = (*(v2 + 8))(v1, v2);
    v5 = v4;
    if (v4)
    {
      v6 = v3;
      sub_100010474((v0 + 448));
    }

    else
    {
      sub_100010474((v0 + 448));
      v6 = 0;
    }
  }

  else
  {
    *(v0 + 480) = 0;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    sub_10001036C(v0 + 448, &unk_1006EBE50, &qword_100587FE0);
    v6 = 0;
    v5 = 0;
  }

  *(v0 + 872) = v5;
  *(v0 + 864) = v6;
  *(v0 + 880) = sub_100572EF8();
  v8 = sub_100572E78();

  return _swift_task_switch(sub_10027DE30, v8, v7);
}