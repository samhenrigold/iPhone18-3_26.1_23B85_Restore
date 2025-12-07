unint64_t sub_450444(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  v14 = 16 * v12;
  v15 = v13 + 16 * v12;
  if (result != v13 || result >= v15)
  {
    result = memmove(result, v13, v14);
  }

  v17 = *(v7 + 16);
  v9 = __OFADD__(v17, v10);
  v18 = v17 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v18;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_450504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * a1);
  swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      v17 = &v12[2 * a3];
      v18 = (v11 + 32 + 16 * a2);
      if (v17 != v18 || v17 >= &v18[16 * v16])
      {
        memmove(v17, v18, 16 * v16);
      }

      v20 = *(v11 + 16);
      v13 = __OFADD__(v20, v14);
      v21 = v20 + v14;
      if (!v13)
      {
        *(v11 + 16) = v21;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }
}

char *sub_4505E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for JSOrderedPlaylistSelectorItem(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_ABB060();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_ABB060();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t sub_450704(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_4507C4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_CF17F8;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 5)
  {
    return 5;
  }

  else
  {
    return v4;
  }
}

void sub_450810(uint64_t *a2@<X8>)
{
  v4 = sub_AB2C10();
  v73 = *(v4 - 8);
  __chkstk_darwin();
  v6 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07D68, &qword_B0FC78);
  __chkstk_darwin();
  v71 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v72 = v63 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E07D40, &unk_AFD280);
  __chkstk_darwin();
  v10 = v63 - v9;
  v11 = sub_AB2CE0();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2C40();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_12E1C(v10, &unk_E07D40, &unk_AFD280);
    sub_4514F8();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0;
    *(v15 + 16) = 4;
    swift_willThrow();
    return;
  }

  (*(v12 + 32))(v14, v10, v11);
  v16 = sub_AB2C60();
  if (!v17)
  {
    sub_4514F8();
    swift_allocError();
    *v26 = xmmword_AF8620;
    v27 = 4;
    goto LABEL_8;
  }

  v18 = v16;
  v19 = v17;
  v67 = a2;
  v76 = v16;
  v77 = v17;
  __chkstk_darwin();
  v63[-2] = &v76;
  if ((sub_1B39BC(sub_45154C, &v63[-4], &off_CF17C8) & 1) == 0)
  {
    sub_4514F8();
    swift_allocError();
    *v28 = v18;
    *(v28 + 8) = v19;
    *(v28 + 16) = 0;
    goto LABEL_10;
  }

  v76 = sub_AB2C90();
  v77 = v20;
  v74 = 47;
  v75 = 0xE100000000000000;
  sub_36A48();
  v21 = sub_ABAA30();

  v22 = *(v21 + 16);
  if (v22 < 4)
  {

    v23 = sub_AB2C90();
    v25 = v24;
    sub_4514F8();
    swift_allocError();
    *v26 = v23;
    *(v26 + 8) = v25;
    v27 = 1;
LABEL_8:
    *(v26 + 16) = v27;
LABEL_10:
    swift_willThrow();
LABEL_11:
    (*(v12 + 8))(v14, v11);
    return;
  }

  v63[1] = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v78 = v21;
  if (!isUniquelyReferenced_nonNull_native || v22 - 1 > *(v21 + 24) >> 1)
  {
    v21 = sub_6B0F0(isUniquelyReferenced_nonNull_native, v22, 1, v21);
    v78 = v21;
  }

  v30 = v72;
  sub_450704(0, 1, 0);
  v31 = *(v21 + 16);
  if (!v31)
  {
    goto LABEL_46;
  }

  v78 = v21;
  if ((v31 - 1) > *(v21 + 24) >> 1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    sub_450704(0, 1, 0);
    v32 = *(v21 + 16);
    if (v32)
    {
      v34 = *(v21 + 32);
      v33 = *(v21 + 40);
      v78 = v21;
      v64 = v34;
      v65 = v33;
      v66 = v21;
      v35 = *(v21 + 24);

      if (v32 - 1 <= v35 >> 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    v66 = sub_6B0F0(&dword_0 + 1, v32, 1, v66);
    v78 = v66;
LABEL_19:
    sub_450704(0, 1, 0);
    v36 = sub_AB2C20();
    v70 = v14;
    if (!v36)
    {
      break;
    }

    v37 = v36;
    v38 = v73;
    v68 = *(v36 + 16);
    if (!v68)
    {
LABEL_27:
      v30 = v72;
      (*(v38 + 56))(v72, 1, 1, v4);

      goto LABEL_31;
    }

    v30 = 0;
    v69 = v73 + 16;
    v21 = v73 + 8;
    while (v30 < *(v37 + 16))
    {
      (*(v38 + 16))(v6, v37 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v30, v4);
      if (sub_AB2BF0() == 105 && v39 == 0xE100000000000000)
      {

LABEL_30:
        v30 = v72;
        v38 = v73;
        (*(v73 + 32))(v72, v6, v4);
        (*(v38 + 56))(v30, 0, 1, v4);

        v14 = v70;
        goto LABEL_31;
      }

      v40 = sub_ABB3C0();

      if (v40)
      {
        goto LABEL_30;
      }

      ++v30;
      (*v21)(v6, v4);
      v14 = v70;
      v38 = v73;
      if (v68 == v30)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v21 = sub_6B0F0(&dword_0 + 1, v31, 1, v21);
    v78 = v21;
  }

  v38 = v73;
  (*(v73 + 56))(v30, 1, 1, v4);
LABEL_31:
  v41 = v71;
  sub_15F84(v30, v71, &qword_E07D68, &qword_B0FC78);
  if ((*(v38 + 48))(v41, 1, v4) == 1)
  {
    sub_12E1C(v41, &qword_E07D68, &qword_B0FC78);
    v42 = v66;
    goto LABEL_36;
  }

  v43 = v38;
  v44 = sub_AB2C00();
  v46 = v45;
  (*(v43 + 8))(v41, v4);
  v42 = v66;
  if (!v46)
  {
LABEL_36:
    v54 = v65;

    v55 = v64;
    v56 = sub_4507C4(v64, v54);
    if (v56 == 5)
    {

      sub_4514F8();
      swift_allocError();
      *v57 = v55;
      *(v57 + 8) = v54;
      v58 = 3;
    }

    else
    {
      v50 = v56;

      v59 = v42 + 16;
      v60 = *(v42 + 2);
      if (v60)
      {
        v52 = 0;
        v53 = 0;
        v61 = &v59[16 * v60];
        v44 = *v61;
        v46 = v61[1];
LABEL_40:

        goto LABEL_44;
      }

      sub_4514F8();
      swift_allocError();
      *v57 = xmmword_AF89D0;
      v58 = 4;
    }

    *(v57 + 16) = v58;
    swift_willThrow();
    sub_12E1C(v30, &qword_E07D68, &qword_B0FC78);
    goto LABEL_11;
  }

  v49 = *(v42 + 2);
  v48 = v42 + 16;
  v47 = v49;
  if (v49)
  {
    v50 = 0;
    v51 = &v48[16 * v47];
    v52 = *v51;
    v53 = *(v51 + 1);
    goto LABEL_40;
  }

  v50 = 0;
  v52 = 0;
  v53 = 0;
LABEL_44:
  sub_12E1C(v30, &qword_E07D68, &qword_B0FC78);
  (*(v12 + 8))(v70, v11);

  v62 = v67;
  *v67 = v44;
  v62[1] = v46;
  *(v62 + 16) = v50;
  v62[3] = v52;
  v62[4] = v53;
}

uint64_t objectdestroy_45Tm()
{

  return swift_deallocObject();
}

void sub_451180(void *a1)
{
  v2 = sub_AB9260();
  [a1 setStationStringID:v2];
}

uint64_t sub_4511DC(uint64_t a1)
{
  BagProvider.shared.unsafeMutableAddressor();

  v1 = BagProvider.bag.getter();

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 dictionaryForBagKey:ICURLBagKeyMusicCommon];
  if (v2)
  {
    v3 = v2;
    v4 = sub_AB8FF0();

    sub_16A318(v4);
    v6 = v5;

    if (v6)
    {
      v7 = sub_AB92A0();
      if (*(v6 + 16))
      {
        v9 = sub_2EBF88(v7, v8);
        if (v10)
        {
          v11 = *(*(v6 + 56) + 8 * v9);
          swift_unknownObjectRetain();

          v19._countAndFlagsBits = v11;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07D60, &qword_B0FC70);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_13;
          }

          if (*(v20 + 16))
          {
            sub_2EBF88(0x746C7561666564, 0xE700000000000000);
            if (v12)
            {
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {
                v13 = [v1 stringForBagKey:ICURLBagKeyCountryCode];
                if (v13)
                {
                  v14 = v13;
                  v15 = sub_AB92A0();
                  v17 = v16;

                  sub_ABAD90(24);

                  sub_AB94A0(v19);
                  v21._countAndFlagsBits = 0x617461632F31762FLL;
                  v21._object = 0xEC0000002F676F6CLL;
                  sub_AB94A0(v21);
                  v22._countAndFlagsBits = v15;
                  v22._object = v17;
                  sub_AB94A0(v22);

                  return 0x2F2F3A7370747468;
                }

                goto LABEL_13;
              }
            }
          }
        }
      }

LABEL_13:
    }
  }

  return 0;
}

unint64_t sub_4514A4()
{
  result = qword_E07D50;
  if (!qword_E07D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07D50);
  }

  return result;
}

unint64_t sub_4514F8()
{
  result = qword_E07D70;
  if (!qword_E07D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07D70);
  }

  return result;
}

uint64_t sub_45154C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_ABB3C0() & 1;
  }
}

uint64_t sub_4515A4()
{

  return swift_deallocObject();
}

void sub_4515FC(uint64_t isEscapingClosureAtFileLocation, uint64_t a2, uint64_t a3)
{
  v53 = a3;
  v52 = a2;
  v4 = &selRef__authenticateReturningError_;
  v5 = [objc_allocWithZone(MPModelRequest) init];
  v6 = sub_AB9260();
  [v5 setLabel:v6];

  if (qword_DE6C40 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v54 = v5;
    v64 = qword_E71870;
    [v5 setItemProperties:{v52, v53}];
    v65 = [objc_opt_self() sharedServerObjectDatabase];
    v7 = [objc_allocWithZone(MPMutableSectionedCollection) v4[124]];
    v8 = sub_AB9260();
    v57 = v7;
    [v7 appendSection:v8];

    v9 = [objc_allocWithZone(MPMutableSectionedCollection) v4[124]];
    v10 = sub_AB9260();
    v56 = v9;
    [v9 appendSection:v10];

    v11 = swift_allocObject();
    v12 = sub_99EB0(_swiftEmptyArrayStorage);
    v55 = v11;
    *(v11 + 16) = v12;
    v13 = *(isEscapingClosureAtFileLocation + 16);
    if (!v13)
    {
      break;
    }

    v63 = objc_opt_self();
    v62 = objc_opt_self();
    v61 = objc_opt_self();
    v60 = sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
    sub_13C80(0, &unk_E25110, MPModelRadioStationKind_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v58 = &v73;
    v14 = (isEscapingClosureAtFileLocation + 72);
    while (1)
    {
      v69 = v13;
      v17 = *(v14 - 32);
      v18 = *(v14 - 3);
      v19 = *(v14 - 2);
      v21 = *(v14 - 1);
      v20 = *v14;
      *&v77 = *(v14 - 5);
      v16 = v77;
      BYTE8(v77) = v17;
      v78 = v18;
      v79 = v19;
      v80 = v21;
      v81 = v20;
      v67 = v20;

      v66 = v16;
      v68 = v19;

      v22 = [v63 kindWithVariants:7];
      v23 = [v62 kindWithSongKind:v22];
      v24 = static MPModelPlaylistEntry.defaultMusicKind.getter();
      v25 = [v61 kindWithPlaylistEntryKind:v24 options:0];

      v26 = [ObjCClassFromMetadata identityKind];
      v4 = v26;
      v70 = v23;
      if (v17 <= 1)
      {
        if (!v17)
        {
          v23 = v22;
        }
      }

      else
      {
        v23 = v25;
        if (v17 != 2)
        {
          v23 = v22;
          if (v17 != 3)
          {
            v23 = v26;
          }
        }
      }

      v27 = v23;
      v5 = &v52;
      __chkstk_darwin();
      v51[2] = &v77;
      v28 = objc_allocWithZone(MPIdentifierSet);
      v29 = swift_allocObject();
      *(v29 + 16) = sub_4522F4;
      *(v29 + 24) = v51;
      v75 = sub_C3FB8;
      v76 = v29;
      aBlock = _NSConcreteStackBlock;
      v72 = 1107296256;
      v73 = sub_41A314;
      v74 = &block_descriptor_79_1;
      v30 = _Block_copy(&aBlock);
      v31 = v27;

      v32 = [v28 initWithModelKind:v31 block:v30];

      _Block_release(v30);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      v33 = [v65 modelObjectMatchingIdentifierSet:v32 propertySet:v64];

      if (v33)
      {
        v34 = v33;
        v35 = MPModelObject.bestIdentifier(for:)(3, 2u);
        if (v36)
        {
          v37 = v35;
          v38 = v36;
          v39 = v66;

          v40 = v55;
          v41 = *(v55 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock = v41;
          *(v40 + 16) = 0x8000000000000000;
          sub_95060(&v77, v37, v38, isUniquelyReferenced_nonNull_native);

          *(v40 + 16) = aBlock;

          [v56 appendItem:v34];
          v15 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v34 personalizationStyle:1];

          [v57 appendItem:v15];
        }

        else
        {

          v15 = v34;
        }
      }

      else
      {

        v15 = v66;
      }

      v14 += 6;

      v13 = v69 - 1;
      if (v69 == 1)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

LABEL_17:
  v43 = objc_allocWithZone(MPStoreLibraryPersonalizationRequest);
  v44 = v54;
  v45 = v57;
  v46 = [v43 initWithUnpersonalizedRequest:v54 unpersonalizedContentDescriptors:v57];
  v47 = v56;
  [v46 setRepresentedObjects:v56];
  v48 = swift_allocObject();
  v49 = v53;
  v48[2] = v52;
  v48[3] = v49;
  v48[4] = v55;
  v75 = sub_451DFC;
  v76 = v48;
  aBlock = _NSConcreteStackBlock;
  v72 = 1107296256;
  v73 = sub_151E0;
  v74 = &block_descriptor_85_1;
  v50 = _Block_copy(&aBlock);

  [v46 performWithResponseHandler:v50];
  _Block_release(v50);
}

uint64_t sub_451DBC()
{

  return swift_deallocObject();
}

uint64_t sub_451E08()
{

  return swift_deallocObject();
}

uint64_t sub_451E68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication12InterstellarO8ResolverV9HighlightV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_451ECC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_451F14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_451F58(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication12InterstellarO8ResolverV5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_451FA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_452008(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_452058(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SortOptions.ViewType.Albums(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SortOptions.ViewType.Albums(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_452240()
{
  result = qword_E07DA8;
  if (!qword_E07DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E07DA8);
  }

  return result;
}

void _BrowseCollectionViewCustomLayoutProviding<>._updateMetricsOfCustomCollectionViewLayout(_:)(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  swift_getAssociatedTypeWitness();
  v7 = swift_dynamicCastUnknownClass();
  if (v7)
  {
    v8 = v7;
    v9 = *(a3 + 32);
    v10 = a1;
    v9(v8, a2, a3);
  }
}

uint64_t _BrowseCollectionViewCellArtworkPrefetching<>._artworkCatalogToPrefetch(for:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_ABA9C0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v19 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v14 = v19 - v13;
  v19[1] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07E10, &unk_B0FF30);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (v15)
  {
    v16(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v14, v11, AssociatedTypeWitness);
    v17 = (*(a3 + 24))(v14, a2, a3);
    (*(v12 + 8))(v14, AssociatedTypeWitness);
    return v17;
  }

  else
  {
    v16(v11, 1, 1, AssociatedTypeWitness);
    (*(v9 + 8))(v11, v8);
    return 0;
  }
}

id _BrowseCollectionViewCellConfiguring<>._prepareCell(itemModelObject:presentationIndexPath:modelIndexPath:collectionView:reuseConfigurationHandler:)(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = UICollectionView.dequeueReusableBrowseCell<A>(for:)(a3, AssociatedTypeWitness, v13);
  a6();
  v15 = *(*(a9 + 8) + 40);
  v16 = v14;
  v15();

  return v16;
}

uint64_t _BrowseCollectionViewCellConfiguring<>._configure(cell:modelIndexPath:itemModelObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v22 = a2;
  v21 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_ABA9C0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v21 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v16 = &v21 - v15;
  v23 = a3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07E10, &unk_B0FF30);
  v17 = swift_dynamicCast();
  v18 = *(v14 + 56);
  if (v17)
  {
    v18(v13, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v16, v13, AssociatedTypeWitness);
    swift_getAssociatedTypeWitness();
    v19 = swift_dynamicCastUnknownClassUnconditional();
    (*(a5 + 32))(v19, v16, v22, a4, a5);
    return (*(v14 + 8))(v16, AssociatedTypeWitness);
  }

  else
  {
    v18(v13, 1, 1, AssociatedTypeWitness);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t _BrowseCollectionViewCellConfiguring<>._configureForDisplay(cell:modelIndexPath:itemModelObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v22 = a2;
  v21 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_ABA9C0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v21 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v16 = &v21 - v15;
  v23 = a3;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07E10, &unk_B0FF30);
  v17 = swift_dynamicCast();
  v18 = *(v14 + 56);
  if (v17)
  {
    v18(v13, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v16, v13, AssociatedTypeWitness);
    swift_getAssociatedTypeWitness();
    v19 = swift_dynamicCastUnknownClassUnconditional();
    (*(a5 + 40))(v19, v16, v22, a4, a5);
    return (*(v14 + 8))(v16, AssociatedTypeWitness);
  }

  else
  {
    v18(v13, 1, 1, AssociatedTypeWitness);
    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t _BrowseCollectionViewCellConfiguring<>._artworkCatalogToPrefetch(for:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_ABA9C0();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v19 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v14 = v19 - v13;
  v19[1] = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07E10, &unk_B0FF30);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (v15)
  {
    v16(v11, 0, 1, AssociatedTypeWitness);
    (*(v12 + 32))(v14, v11, AssociatedTypeWitness);
    v17 = (*(a3 + 48))(v14, a2, a3);
    (*(v12 + 8))(v14, AssociatedTypeWitness);
    return v17;
  }

  else
  {
    v16(v11, 1, 1, AssociatedTypeWitness);
    (*(v9 + 8))(v11, v8);
    return 0;
  }
}

void sub_452F68(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v4 = (&v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for PlaybackIntentDescriptor(0);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v20 = v7;
    v8 = sub_17559C(v7);
    if (v8)
    {
      v10 = v9;
      v11 = v8;
      v8();
      sub_17654(v11, v10);
    }

    else
    {
      v12 = [v1 traitCollection];
      v13 = UITraitCollection.isMediaPicker.getter(v12);

      if (!v13)
      {
        v14 = sub_175E9C();
        if (v14)
        {
          *v4 = v14;
          v15 = v14;
          swift_storeEnumTagMultiPayload();
          v24 = 0;
          memset(v23, 0, sizeof(v23));
          v22 = 0;
          memset(v21, 0, sizeof(v21));
          v16 = v15;
          v17 = v2;
          PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v4, v23, 3, 0, 0, 1, 0, 1, v6, v2, v21);
          sub_37D3DC(0);

          sub_1914D8(v6);
          return;
        }
      }
    }

    v18 = v20;
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

uint64_t _BrowseCollectionViewCellConfiguring<>._performPrimaryAction(itemModelObject:at:presentationIndexPath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v22 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_ABA9C0();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v21 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v17 = &v21 - v16;
  v23 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07E10, &unk_B0FF30);
  v18 = swift_dynamicCast();
  v19 = *(v15 + 56);
  if (v18)
  {
    v19(v14, 0, 1, AssociatedTypeWitness);
    (*(v15 + 32))(v17, v14, AssociatedTypeWitness);
    (*(a5 + 64))(v17, a2, v22, a4, a5);
    return (*(v15 + 8))(v17, AssociatedTypeWitness);
  }

  else
  {
    v19(v14, 1, 1, AssociatedTypeWitness);
    return (*(v12 + 8))(v14, v11);
  }
}

id _BrowseCollectionViewSectionHeaderConfiguring<>._prepareHeaderView(sectionModelObject:presentationIndexPath:modelIndexPath:collectionView:reuseConfigurationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v31 = a2;
  v33 = a6;
  v34 = a5;
  v32 = a4;
  v29 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_ABA9C0();
  v27 = *(v13 - 8);
  v28 = v13;
  __chkstk_darwin();
  v15 = &v27 - v14;
  v16 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v18 = &v27 - v17;
  v19 = sub_AB92A0();
  v21 = v20;
  v30 = a7;
  v22 = swift_getAssociatedTypeWitness();
  v24 = UICollectionView.dequeueReusableBrowseSupplementaryView<A>(elementKind:forIndexPath:)(v19, v21, v31, v22, v23);

  v25 = v24;
  v34();
  v35 = a1;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07E10, &unk_B0FF30);
  if (swift_dynamicCast())
  {
    (*(v16 + 56))(v15, 0, 1, AssociatedTypeWitness);
    (*(v16 + 32))(v18, v15, AssociatedTypeWitness);
    (*(a8 + 32))(v25, v18, v29, v30, a8);

    (*(v16 + 8))(v18, AssociatedTypeWitness);
  }

  else
  {

    (*(v16 + 56))(v15, 1, 1, AssociatedTypeWitness);
    (*(v27 + 8))(v15, v28);
  }

  return v25;
}

uint64_t sub_453BF4(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for AlbumCell(0);
  v7 = swift_conformsToProtocol2();
  result = 0;
  if (v7)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    return (*(v7 + 8))(a1, v6, a2, a3);
  }

  return result;
}

id sub_453D20(uint64_t a1)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1795A0(v1);

    return v3;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

id sub_453F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  (a3)(0, a2);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_13C80(0, &qword_E07E18, UICollectionViewTableCell_ptr);
  if ([ObjCClassFromMetadata isSubclassOfClass:swift_getObjCClassFromMetadata()])
  {
    return &dword_0 + 1;
  }

  sub_13C80(0, &unk_DF0CF0, UICollectionViewListCell_ptr);
  return [ObjCClassFromMetadata isSubclassOfClass:swift_getObjCClassFromMetadata()];
}

id sub_454000(uint64_t a1)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 artworkCatalog];
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v3;
}

double sub_454074(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v5 = v3;
    sub_1B3FE4(a2);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_454390(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  a3();
  return v4;
}

id sub_4546D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t), uint64_t *a10, void (*a11)(id, uint64_t, uint64_t))
{
  v13 = a9(a2);
  a5();
  swift_unknownObjectRetain();
  v14 = v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    a11(v14, v15, a3);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v14;
}

double sub_454814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v9 = v3;
    type metadata accessor for SongCell(0);
    v4 = swift_dynamicCastClassUnconditional();
    v5 = [v9 artworkCatalog];
    v6 = *(v4 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
    *(v4 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v5;
    v7 = v5;

    sub_74EA4(v5);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_454920(uint64_t a1)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

double sub_454980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = (a4)(0, a2, a3);
  v5 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v4, v5, v6);

  return result;
}

id sub_454A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t), uint64_t *a10, void (*a11)(id, uint64_t, uint64_t))
{
  v13 = a9(a2);
  a5();
  swift_unknownObjectRetain();
  v14 = v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    a11(v14, v15, a3);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v14;
}

double sub_454B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, id, uint64_t))
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v14 = v11;
    a7(0);
    v12 = swift_dynamicCastClassUnconditional();
    a8(v12, v14, a2);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_454C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(void), void (*a8)(uint64_t, id, uint64_t))
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v14 = v11;
    a7(0);
    v12 = swift_dynamicCastClassUnconditional();
    a8(v12, v14, a2);
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

id sub_454D54(uint64_t a1)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 playlist];
    if (v3)
    {
      v4 = v3;
      v5 = MPModelPlaylist.preferredArtworkCatalog.getter();

      return v5;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

double sub_454DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_454ED0(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v9 = a1;
    a5(v8);
  }
}

uint64_t sub_45517C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6, double a7)
{
  v8 = a6.n128_f64[0];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_conformsToProtocol2();
  result = 0;
  if (v11)
  {
    v13 = AssociatedTypeWitness == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    return (*(v11 + 8))(a1, AssociatedTypeWitness, v8, a7);
  }

  return result;
}

double sub_455230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    type metadata accessor for SocialPersonHorizontalCell(0);
    v5 = swift_dynamicCastClassUnconditional();
    v6 = [v4 artworkCatalog];
    v7 = *(v5 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
    *(v5 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v6;
    v9 = v6;

    sub_74EA4(v6);
    sub_B0D4C();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

id _s16MusicApplication36_BrowseCollectionViewCellConfiguringPA2A0cdefG0RzrlE27_cellTypeImpliesTableLayoutSbyF_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  swift_getAssociatedTypeWitness();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_13C80(0, &qword_E07E18, UICollectionViewTableCell_ptr);
  if ([ObjCClassFromMetadata isSubclassOfClass:swift_getObjCClassFromMetadata()])
  {
    return &dword_0 + 1;
  }

  sub_13C80(0, &unk_DF0CF0, UICollectionViewListCell_ptr);
  return [ObjCClassFromMetadata isSubclassOfClass:swift_getObjCClassFromMetadata()];
}

double _s16MusicApplication36_BrowseCollectionViewCellConfiguringPA2A0cdefG0RzrlE09_registerF5Class010collectionE0ySo012UICollectionE0C_tF_0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(AssociatedTypeWitness, v5, v6);

  return result;
}

double _s16MusicApplication45_BrowseCollectionViewSectionHeaderConfiguringPA2A0cdefgH0RzrlE09_registerfgE5Class010collectionE0ySo012UICollectionE0C_tF_0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_AB92A0();
  v7 = v6;
  v8 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(AssociatedTypeWitness, v5, v7, v8, v9);

  return result;
}

char *JSPrivacyLinkViewController.init(privacyLinkViewModel:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewModel] = a1;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v12, "initWithNibName:bundle:", 0, 0);
  swift_beginAccess();
  v6 = objc_opt_self();

  v7 = v5;
  v8 = sub_AB9260();
  v9 = [v6 linkWithBundleIdentifier:v8];

  v10 = v7;
  if (v9)
  {
    v10 = *&v7[OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewController];
    *&v7[OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewController] = v9;
  }

  return v7;
}

void JSPrivacyLinkViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewController) = 0;
  sub_ABAFD0();
  __break(1u);
}

Swift::Void __swiftcall JSPrivacyLinkViewController.viewDidLoad()()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      [v4 setMaximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];

      v6 = [v3 view];
      if (v6)
      {
        v7 = v6;
        v8 = AccessibilityIdentifier.privacyTermsLink.unsafeMutableAddressor();
        v9 = *v8;
        v10 = v8[1];
        v11 = v8[2];
        v12 = v8[3];
        sub_74390();

        UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v9, v10, v13, v11, v12);
        [v1 addChildViewController:v3];
        [v3 didMoveToParentViewController:v1];
        v14 = [v1 view];
        if (v14)
        {
          v15 = v14;
          [v14 addSubview:v7];

          sub_45592C();
          return;
        }

LABEL_9:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_45592C()
{
  if ([v0 isViewLoaded])
  {
    v1 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewController];
    if (v1)
    {
      v24 = v1;
      v2 = [v24 view];
      if (v2)
      {
        v3 = v2;
        v4 = [v0 view];
        if (!v4)
        {
          __break(1u);
          return;
        }

        v5 = v4;
        [v4 bounds];
        v7 = v6;
        v9 = v8;
        v11 = v10;
        v13 = v12;

        v26.origin.x = v7;
        v26.origin.y = v9;
        v26.size.width = v11;
        v26.size.height = v13;
        Width = CGRectGetWidth(v26);
        LODWORD(v15) = 1148846080;
        LODWORD(v16) = 1112014848;
        [v3 systemLayoutSizeFittingSize:Width withHorizontalFittingPriority:1.79769313e308 verticalFittingPriority:{v15, v16}];
        v18 = v17;
        v20 = fmax(v19, 70.0) + 22.0;
        [v0 preferredContentSize];
        if (v22 != v18 || v21 != v20)
        {
          [v0 setPreferredContentSize:{v18, v20}];
        }
      }
    }
  }
}

Swift::Void __swiftcall JSPrivacyLinkViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v8.receiver = v0;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewDidLayoutSubviews");
  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSPrivacyLinkViewController_privacyLinkViewController];
  if (v2)
  {
    v3 = v2;
    v4 = [v3 view];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 view];
      if (v6)
      {
        v7 = v6;
        [v6 bounds];
        [v5 setFrame:?];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void JSPrivacyLinkViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_455D58;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_CF24C;
  v10[3] = &block_descriptor_144;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

uint64_t sub_455D20()
{

  return swift_deallocObject();
}

double block_copy_helper_144(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

Swift::Void __swiftcall JSPrivacyLinkViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v13.receiver = v1;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", isa);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (!isa || v4 != [(objc_class *)isa horizontalSizeClass])
  {
    goto LABEL_7;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [(objc_class *)isa preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {

    return;
  }

  v12 = sub_ABB3C0();

  if ((v12 & 1) == 0)
  {
LABEL_7:
    sub_45592C();
  }
}

Swift::Void __swiftcall JSPrivacyLinkViewController.systemLayoutFittingSizeDidChange(forChildViewController:)(UIViewController forChildViewController)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "systemLayoutFittingSizeDidChangeForChildViewController:", forChildViewController.super.super.isa);
  sub_45592C();
}

double sub_456244(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_subtitle);
  v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_subtitle);
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_subtitle + 8);
  *v3 = a1;
  v3[1] = a2;
  if (a2)
  {
    if (v5)
    {
      v6 = v4 == a1 && v5 == a2;
      if (v6 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  sub_458374();
LABEL_11:

  return result;
}

char *sub_4562C4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundCornerRadius] = 0x4020000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication15MultilineButton_hasBackground] = 1;
  *&v4[OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive] = 0;
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets];
  *v9 = xmmword_B0B770;
  v9[1] = xmmword_B0B770;
  *&v4[OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents] = _swiftEmptyArrayStorage;
  v10 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_textStackView;
  type metadata accessor for TextStackView();
  *&v4[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImageView;
  *&v4[v11] = [objc_allocWithZone(UIImageView) init];
  v12 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImagesForStates;
  *&v4[v12] = sub_9769C(_swiftEmptyArrayStorage);
  *&v4[OBJC_IVAR____TtC16MusicApplication15MultilineButton_activityIndicatorView] = 0;
  v22.receiver = v4;
  v22.super_class = type metadata accessor for MultilineButton();
  v13 = objc_msgSendSuper2(&v22, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_textStackView;
  v15 = *&v13[OBJC_IVAR____TtC16MusicApplication15MultilineButton_textStackView];
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  v16 = v13;
  v17 = v15;
  v18 = TextDrawing.Cache.init()();
  v19 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v20 = *&v17[v19];
  *&v17[v19] = v18;

  sub_2E6210(v20);

  [v16 addSubview:*&v16[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImageView]];
  [v16 addSubview:*&v13[v14]];
  sub_457634();

  return v16;
}

void sub_456524(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor;
  v5 = *&v2[OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor];
  if (v5)
  {
    if (!a1)
    {
      goto LABEL_5;
    }

    sub_13C80(0, qword_DFAAC0, UIColor_ptr);
    v6 = v5;
    v7 = a1;
    v8 = sub_ABA790();

    if (v8)
    {
      return;
    }

    v5 = *&v2[v4];
    if (v5)
    {
LABEL_5:
      v9 = v5;
      v10 = [v2 layer];
      v11 = [v9 cgColor];
      if (!v11)
      {
        __break(1u);
        return;
      }

      v12 = v11;
      [v10 setBorderColor:v12];

      v13 = [v2 layer];
      v14 = [v2 traitCollection];
      [v14 displayScale];
      v16 = v15;

      [v13 setBorderWidth:2.0 / v16];
      v17 = [v2 layer];
      [v17 setCornerRadius:*&v2[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundCornerRadius]];

      goto LABEL_9;
    }
  }

  else if (!a1)
  {
    return;
  }

  v18 = [v2 layer];
  [v18 setBorderColor:0];

  v19 = [v2 layer];
  [v19 setBorderWidth:0.0];

  v17 = [v2 layer];
  [v17 setCornerRadius:0.0];
LABEL_9:

  sub_457634();
}

void sub_45677C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents;

  LOBYTE(a1) = sub_12C54C(v4, a1);

  if ((a1 & 1) == 0)
  {
    v47 = *(v1 + v3);
    v5 = *(v47 + 16);
    v6 = _swiftEmptyArrayStorage;
    if (v5)
    {
      v60 = _swiftEmptyArrayStorage;

      sub_ABAEC0();
      type metadata accessor for TextStackView.Component();
      v7 = 0;
      for (i = v5 - 1; ; --i)
      {
        if (v48 = v7, v8 = v47 + v7, v9 = *(v8 + 32), v10 = *(v8 + 40), v11 = *(v8 + 48), v12 = *(v8 + 56), v13 = *(v8 + 64), v14 = *(v8 + 72), v15 = *(v8 + 80), v16 = *(v8 + 88), v17 = *(v8 + 96), v18 = *(v8 + 104), v19 = *(v8 + 112), v20 = *(v8 + 120), v21 = *(v8 + 128), *&v55 = v13, *(&v55 + 1) = v14, v51 = v16, v52 = v15, *&v56 = v15, *(&v56 + 1) = v16, v49 = v18, v50 = v17, *&v57 = v17, *(&v57 + 1) = v18, v58 = v19, *&v59 = v20, *(&v59 + 1) = v21, v22 = swift_allocObject(), v23 = v58, *(v22 + 64) = v57, *(v22 + 80) = v23, v25 = v57, v24 = v58, *(v22 + 96) = v59, v26 = v56, v27 = v55, v28 = v56, *(v22 + 32) = v55, *(v22 + 48) = v26, v29 = v59, *(v22 + 192) = v24, *(v22 + 208) = v29, *(v22 + 160) = v28, *(v22 + 176) = v25, *(v22 + 112) = 0, *(v22 + 128) = 0, *(v22 + 136) = 0, *(v22 + 120) = 0xE000000000000000, *(v22 + 224) = 0, *(v22 + 232) = 0xE000000000000000, *(v22 + 248) = 0, *(v22 + 256) = 0, *(v22 + 240) = 0, *(v22 + 16) = v9, *(v22 + 24) = v10, *(v22 + 144) = v27, swift_beginAccess(), *(v22 + 112) = v11, *(v22 + 120) = v12, !v11) && v12 == 0xE000000000000000 || (sub_ABB3C0())
        {
          sub_2F118(&v55, v54);
          sub_2F118(&v55, v54);
          v30 = v14;
          v31 = v19;
          v32 = v13;
          v33 = v30;
          v34 = v31;
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v35 = v32;
        }

        else
        {
          *(v22 + 224) = v11;
          *(v22 + 232) = v12;
          sub_2F118(&v55, v54);

          sub_2F118(&v55, v54);
          v36 = *(v22 + 240);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          v37 = v13;
          v38 = v14;
          v39 = v19;
          v35 = v37;
          v33 = v38;
          v40 = v39;
          if (v36)
          {
            v41 = *(v22 + 248);

            v36(v42);
            sub_17654(v36, v41);
          }
        }

        v54[0] = v13;
        v54[1] = v14;
        v54[2] = v52;
        v54[3] = v51;
        v54[4] = v50;
        v54[5] = v49;
        v54[6] = v19;
        v54[7] = 0;
        v54[8] = v20;
        v54[9] = v21;
        sub_2F174(v54);

        sub_ABAE90();
        sub_ABAED0();
        sub_ABAEE0();
        sub_ABAEA0();
        if (!i)
        {
          break;
        }

        v7 = v48 + 104;
      }

      v6 = v60;
    }

    TextStackView.removeAll()();
    if (v6 >> 62)
    {
      v44 = sub_ABB060();
      if (v44)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v44 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
      if (v44)
      {
LABEL_15:
        if (v44 < 1)
        {
          __break(1u);
          return;
        }

        for (j = 0; j != v44; ++j)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v46 = sub_36003C(j, v6, v43);
          }

          else
          {
            v46 = *(v6 + 8 * j + 32);
          }

          TextStackView.add(_:)(v46);
        }
      }
    }
  }
}

id sub_456BEC(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = type metadata accessor for MultilineButton();
  v19.receiver = v2;
  v19.super_class = v4;
  v5 = objc_msgSendSuper2(&v19, "isHighlighted");
  v18.receiver = v2;
  v18.super_class = v4;
  objc_msgSendSuper2(&v18, "setHighlighted:", v3 & 1);
  result = [v2 isHighlighted];
  if (v5 != result)
  {
    v7 = *&v2[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImageView];
    v8 = [v2 state];
    v9 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImagesForStates;
    swift_beginAccess();
    v10 = *&v2[v9];
    if (*(v10 + 16) && ((v11 = sub_2F5A90(v8), (v12 & 1) != 0) || (v11 = sub_2F5A90(0), (v13 & 1) != 0)))
    {
      v14 = *(*(v10 + 56) + 8 * v11);
    }

    else
    {
      v14 = 0;
    }

    [v7 setImage:v14];

    v15 = *&v2[OBJC_IVAR____TtC16MusicApplication15MultilineButton_textStackView];
    v16 = [v2 isHighlighted];
    v17 = 1.0;
    if (v16)
    {
      v17 = 0.25;
    }

    return [v15 setAlpha:v17];
  }

  return result;
}

id sub_456D48(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for MultilineButton();
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_456D9C(void *a1, uint64_t a2, uint64_t a3, SEL *a4, SEL *a5)
{
  v9 = type metadata accessor for MultilineButton();
  v13.receiver = a1;
  v13.super_class = v9;
  v10 = *a4;
  v11 = a1;
  LODWORD(v10) = objc_msgSendSuper2(&v13, v10);
  v12.receiver = v11;
  v12.super_class = v9;
  objc_msgSendSuper2(&v12, *a5, a3);
  if (v10 != [v11 *a4])
  {
    sub_4580D4();
  }
}

void sub_456E38(uint64_t a1)
{
  v29.receiver = v1;
  v29.super_class = type metadata accessor for MultilineButton();
  objc_msgSendSuper2(&v29, "layoutSubviews");
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = UIEdgeInsetsInsetRect(v2, v4, v6, v8, *&v1[OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets], *&v1[OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets + 8]);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [*&v1[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImageView] setFrame:{v3, v5, v7, v9}];
  v17 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultilineButton_textStackView];
  [v17 setFrame:{v10, v12, v14, v16}];
  v18 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive;
  [v17 setHidden:v1[OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive]];
  v19 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_activityIndicatorView;
  v20 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultilineButton_activityIndicatorView];
  if (v1[v18] == 1)
  {
    if (v20)
    {
      v21 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultilineButton_activityIndicatorView];
    }

    else
    {
      v22 = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
      v23 = objc_opt_self();
      v21 = v22;
      v24 = [v23 whiteColor];
      [v21 setColor:v24];

      v25 = *&v1[v19];
      *&v1[v19] = v21;

      v20 = 0;
    }

    v26 = v20;
    v27 = [v21 isDescendantOfView:v1];

    if ((v27 & 1) == 0)
    {
      [v1 addSubview:v21];
    }

    [v21 startAnimating];
    v28 = v21;
    [v28 setFrame:{v10, v12, v14, v16}];
    [v28 setHidesWhenStopped:1];
  }

  else
  {
    [v20 stopAnimating];
  }
}

double sub_4570DC(double a1, double a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets);
  v6 = *(v2 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets + 8);
  v7 = *(v2 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets + 16);
  v8 = *(v2 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets + 24);
  v9 = sub_AB38D0();
  v10 = v6 + v8;
  v11 = a1 - v10;
  if (a1 - v10 <= 0.0)
  {
    v11 = 0.0;
  }

  if (v9)
  {
    a1 = v11;
  }

  v12 = sub_AB38D0();
  v13 = a2 - (v5 + v7);
  if (v13 <= 0.0)
  {
    v13 = 0.0;
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = a2;
  }

  [*(v2 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_textStackView) sizeThatFits:{a1, v14, 0, *&a2}];
  return v10 + v15;
}

void sub_4573F8()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents) + 16);

  v12 = v1;
  if (v1)
  {
    v3 = 0;
    v4 = v2 + 56;
    v11 = v2;
    while (v3 < *(v2 + 16))
    {
      v13 = *(v4 - 8);
      v5 = *v4;
      v6 = *(v4 + 8);
      v7 = *(v4 + 56);
      v8 = *(v4 + 16);
      v9 = v7;

      v10 = v6;
      ++v3;
      v14._countAndFlagsBits = v13;
      v14._object = v5;
      sub_AB94A0(v14);

      v4 += 104;
      v2 = v11;
      if (v12 == v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
  }
}

void sub_457634()
{
  v1 = v0;
  if (v0[OBJC_IVAR____TtC16MusicApplication15MultilineButton_hasBackground] == 1)
  {
    v2 = [v0 tintColor];
    if (!v2)
    {
      v2 = *UIColor.MusicTint.normal.unsafeMutableAddressor();
    }

    v3 = *&v0[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundCornerRadius];
    _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v2, v3);
    v123 = v4;
    v5 = [objc_opt_self() systemGray3Color];
    _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v5, v3);
    v7 = v6;

    v8 = [v2 colorWithAlphaComponent:0.5];
    _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v8, v3);
    v121 = v9;

    v10 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.25];
    v11 = kCAFilterPlusD;
    v12 = [v2 _colorBlendedWithColor:v10 compositingFilter:kCAFilterPlusD];

    if (v12)
    {
      _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v12, v3);
      v14 = v13;

      v15 = [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.25];
      v16 = [v2 _colorBlendedWithColor:v15 compositingFilter:v11];

      if (v16)
      {
        v17 = [v16 colorWithAlphaComponent:0.5];

        _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(v17, v3);
        v19 = v18;

        swift_beginAccess();
        if (v123)
        {
          v20 = v123;
          sub_2E4FA4(v123, 0);
          swift_endAccess();
        }

        else
        {
          v65 = sub_27B478(0);
          swift_endAccess();
        }

        v66 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImageView];
        v67 = [v1 state];
        v68 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImagesForStates;
        swift_beginAccess();
        v69 = *&v1[v68];
        if (*(v69 + 16) && ((v70 = sub_2F5A90(v67), (v71 & 1) != 0) || (v70 = sub_2F5A90(0), (v72 & 1) != 0)))
        {
          v73 = *(*(v69 + 56) + 8 * v70);
        }

        else
        {
          v73 = 0;
        }

        [v66 setImage:v73];

        swift_beginAccess();
        if (v7)
        {
          v74 = v7;
          sub_2E4FA4(v7, 2);
          swift_endAccess();
        }

        else
        {
          v75 = sub_27B478(2);
          swift_endAccess();
        }

        v76 = [v1 state];
        v77 = *&v1[v68];
        if (*(v77 + 16) && ((v78 = sub_2F5A90(v76), (v79 & 1) != 0) || (v78 = sub_2F5A90(0), (v80 & 1) != 0)))
        {
          v81 = *(*(v77 + 56) + 8 * v78);
        }

        else
        {
          v81 = 0;
        }

        [v66 setImage:v81];

        swift_beginAccess();
        if (v7)
        {
          v82 = v7;
          sub_2E4FA4(v7, 6);
          swift_endAccess();
        }

        else
        {
          v83 = sub_27B478(6);
          swift_endAccess();
        }

        v84 = [v1 state];
        v85 = *&v1[v68];
        if (*(v85 + 16) && ((v86 = sub_2F5A90(v84), (v87 & 1) != 0) || (v86 = sub_2F5A90(0), (v88 & 1) != 0)))
        {
          v89 = *(*(v85 + 56) + 8 * v86);
        }

        else
        {
          v89 = 0;
        }

        [v66 setImage:v89];

        swift_beginAccess();
        if (v122)
        {
          v90 = v122;
          sub_2E4FA4(v122, 1);
          swift_endAccess();
        }

        else
        {
          v91 = sub_27B478(1);
          swift_endAccess();
        }

        v92 = [v1 state];
        v93 = *&v1[v68];
        if (*(v93 + 16) && ((v94 = sub_2F5A90(v92), (v95 & 1) != 0) || (v94 = sub_2F5A90(0), (v96 & 1) != 0)))
        {
          v97 = *(*(v93 + 56) + 8 * v94);
        }

        else
        {
          v97 = 0;
        }

        [v66 setImage:v97];

        swift_beginAccess();
        if (v14)
        {
          v98 = v14;
          sub_2E4FA4(v14, 4);
          swift_endAccess();
        }

        else
        {
          v99 = sub_27B478(4);
          swift_endAccess();
        }

        v100 = [v1 state];
        v101 = *&v1[v68];
        if (*(v101 + 16) && ((v102 = sub_2F5A90(v100), (v103 & 1) != 0) || (v102 = sub_2F5A90(0), (v104 & 1) != 0)))
        {
          v105 = *(*(v101 + 56) + 8 * v102);
        }

        else
        {
          v105 = 0;
        }

        [v66 setImage:v105];

        swift_beginAccess();
        if (v19)
        {
          v106 = v19;
          sub_2E4FA4(v19, 5);
          swift_endAccess();
        }

        else
        {
          v107 = sub_27B478(5);
          swift_endAccess();
        }

        v108 = [v1 state];
        v109 = *&v1[v68];
        if (*(v109 + 16) && ((v110 = sub_2F5A90(v108), (v111 & 1) != 0) || (v110 = sub_2F5A90(0), (v112 & 1) != 0)))
        {
          v113 = *(*(v109 + 56) + 8 * v110);
        }

        else
        {
          v113 = 0;
        }

        [v66 setImage:v113];

        v114 = [v1 state];
        v115 = *&v1[v68];
        if (*(v115 + 16))
        {
          v116 = sub_2F5A90(v114);
          v117 = v123;
          if (v118 & 1) != 0 || (v116 = sub_2F5A90(0), (v119))
          {
            v120 = *(*(v115 + 56) + 8 * v116);
          }

          else
          {
            v120 = 0;
          }
        }

        else
        {
          v120 = 0;
          v117 = v123;
        }

        [v66 setImage:v120];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v21 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImagesForStates;
  swift_beginAccess();
  v22 = sub_27B478(0);
  swift_endAccess();

  v23 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImageView];
  v24 = [v1 state];
  v25 = *&v1[v21];
  if (*(v25 + 16) && ((v26 = sub_2F5A90(v24), (v27 & 1) != 0) || (v26 = sub_2F5A90(0), (v28 & 1) != 0)))
  {
    v29 = *(*(v25 + 56) + 8 * v26);
  }

  else
  {
    v29 = 0;
  }

  [v23 setImage:v29];

  swift_beginAccess();
  v30 = sub_27B478(2);
  swift_endAccess();

  v31 = [v1 state];
  v32 = *&v1[v21];
  if (*(v32 + 16) && ((v33 = sub_2F5A90(v31), (v34 & 1) != 0) || (v33 = sub_2F5A90(0), (v35 & 1) != 0)))
  {
    v36 = *(*(v32 + 56) + 8 * v33);
  }

  else
  {
    v36 = 0;
  }

  [v23 setImage:v36];

  swift_beginAccess();
  v37 = sub_27B478(6);
  swift_endAccess();

  v38 = [v1 state];
  v39 = *&v1[v21];
  if (*(v39 + 16) && ((v40 = sub_2F5A90(v38), (v41 & 1) != 0) || (v40 = sub_2F5A90(0), (v42 & 1) != 0)))
  {
    v43 = *(*(v39 + 56) + 8 * v40);
  }

  else
  {
    v43 = 0;
  }

  [v23 setImage:v43];

  swift_beginAccess();
  v44 = sub_27B478(1);
  swift_endAccess();

  v45 = [v1 state];
  v46 = *&v1[v21];
  if (*(v46 + 16) && ((v47 = sub_2F5A90(v45), (v48 & 1) != 0) || (v47 = sub_2F5A90(0), (v49 & 1) != 0)))
  {
    v50 = *(*(v46 + 56) + 8 * v47);
  }

  else
  {
    v50 = 0;
  }

  [v23 setImage:v50];

  swift_beginAccess();
  v51 = sub_27B478(4);
  swift_endAccess();

  v52 = [v1 state];
  v53 = *&v1[v21];
  if (*(v53 + 16) && ((v54 = sub_2F5A90(v52), (v55 & 1) != 0) || (v54 = sub_2F5A90(0), (v56 & 1) != 0)))
  {
    v57 = *(*(v53 + 56) + 8 * v54);
  }

  else
  {
    v57 = 0;
  }

  [v23 setImage:v57];

  swift_beginAccess();
  v58 = sub_27B478(5);
  swift_endAccess();

  v59 = [v1 state];
  v60 = *&v1[v21];
  if (*(v60 + 16) && ((v61 = sub_2F5A90(v59), (v62 & 1) != 0) || (v61 = sub_2F5A90(0), (v63 & 1) != 0)))
  {
    v64 = *(*(v60 + 56) + 8 * v61);
  }

  else
  {
    v64 = 0;
  }

  [v23 setImage:v64];

  [v23 setImage:0];
}

void sub_4580D4()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImageView];
  v2 = [v0 state];
  v3 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImagesForStates;
  swift_beginAccess();
  v4 = *&v0[v3];
  if (*(v4 + 16) && ((v5 = sub_2F5A90(v2), (v6 & 1) != 0) || (v5 = sub_2F5A90(0), (v7 & 1) != 0)))
  {
    v8 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v8 = 0;
  }

  [v1 setImage:v8];
}

BOOL sub_458190(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 3);
  v20[0] = *(a1 + 2);
  v20[1] = v8;
  v20[2] = *(a1 + 4);
  v21 = a1[10];
  v10 = *(a1 + 11);
  v9 = *(a1 + 12);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v23 = a2[10];
  v15 = *(a2 + 4);
  v22[1] = *(a2 + 3);
  v22[2] = v15;
  v22[0] = *(a2 + 2);
  v17 = *(a2 + 11);
  v16 = *(a2 + 12);
  if ((v4 != v11 || v5 != v12) && (sub_ABB3C0() & 1) == 0 || (v6 != v13 || v7 != v14) && (sub_ABB3C0() & 1) == 0)
  {
    return 0;
  }

  v18 = _s16MusicApplication14TextAttributesV2eeoiySbAC_ACtFZ_0(v20, v22) && v10 == v17;
  return v9 == v16 && v18;
}

id sub_458290(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MultilineButton();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_458374()
{
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title);
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_title + 8);

  sub_45882C(&v40);
  *&v34 = 0x656C746974;
  *(&v34 + 1) = 0xE500000000000000;
  *&v35 = v2;
  *(&v35 + 1) = v1;
  v36 = v40;
  LOBYTE(v37) = v41;
  *(&v37 + 1) = v42;
  *&v38 = v43;
  BYTE8(v38) = v44;
  *v39 = v45;
  *&v39[8] = xmmword_B04340;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA930, &qword_AF8F80);
  v3 = swift_allocObject();
  v4 = v38;
  v5 = *v39;
  v53[4] = v38;
  v53[5] = *v39;
  v54 = 0x4030000000000000;
  v6 = v34;
  v53[0] = v34;
  v53[1] = v35;
  v8 = v36;
  v7 = v37;
  v53[2] = v36;
  v53[3] = v37;
  *(v3 + 48) = v35;
  *(v3 + 64) = v8;
  *(v3 + 16) = xmmword_AF4EC0;
  *(v3 + 32) = v6;
  *(v3 + 128) = 0x4030000000000000;
  *(v3 + 96) = v4;
  *(v3 + 112) = v5;
  *(v3 + 80) = v7;
  v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_subtitle + 8);
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = *(v0 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_subtitle);
  v11 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    *&v39[8] = 0x4037000000000000;
    sub_1323DC(v53, v32);

    sub_45882C(v46);
    sub_458AC8(v46, &v36);
    sub_45882C(&v47);
    v12 = v47;
    v13 = v48;
    v14 = v49;
    v15 = v50;
    v16 = v51;
    v17 = v52;
    v19 = *(v3 + 16);
    v18 = *(v3 + 24);
    if (v19 >= v18 >> 1)
    {
      v28 = v3;
      v31 = v47;
      v29 = v48;
      v30 = sub_6B43C((v18 > 1), v19 + 1, 1, v28);
      v13 = v29;
      v12 = v31;
      v3 = v30;
    }

    *(v3 + 16) = v19 + 1;
    v20 = v3 + 104 * v19;
    *(v20 + 32) = 0x656C746974627573;
    *(v20 + 40) = 0xE800000000000000;
    *(v20 + 48) = v10;
    *(v20 + 56) = v9;
    *(v20 + 64) = v12;
    *(v20 + 80) = v13;
    *(v20 + 88) = v14;
    *(v20 + 96) = v15;
    *(v20 + 104) = v16;
    *(v20 + 112) = v17;
    __asm { FMOV            V0.2D, #16.0 }

    *(v20 + 120) = _Q0;
  }

  else
  {
LABEL_8:
    sub_1323DC(v53, v32);
  }

  v26 = *(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents);
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents) = v3;
  sub_45677C(v26);

  v32[4] = v38;
  v32[5] = *v39;
  v33 = *&v39[16];
  v32[0] = v34;
  v32[1] = v35;
  v32[2] = v36;
  v32[3] = v37;
  return sub_132438(v32);
}

void sub_45882C(uint64_t a3@<X8>)
{
  v4 = v3;
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v6 = sub_ABA550();
  v7 = objc_opt_self();
  v8 = [v7 blackColor];
  v9 = [v7 clearColor];
  v10 = *(v4 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_textColor);

  *a3 = v10;
  *(a3 + 8) = v9;
  *(a3 + 16) = 3;
  *(a3 + 24) = 4;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = v6;
}

void sub_45890C()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication15SubtitledButton_textColor);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_458A18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_458A60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_458B24()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundCornerRadius) = 0x4020000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_hasBackground) = 1;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_borderColor) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_isActivityIndicatorActive) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_contentEdgeInsets);
  *v1 = xmmword_B0B770;
  v1[1] = xmmword_B0B770;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_lineComponents) = _swiftEmptyArrayStorage;
  v2 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_textStackView;
  type metadata accessor for TextStackView();
  *(v0 + v2) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImageView;
  *(v0 + v3) = [objc_allocWithZone(UIImageView) init];
  v4 = OBJC_IVAR____TtC16MusicApplication15MultilineButton_backgroundImagesForStates;
  *(v0 + v4) = sub_9769C(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultilineButton_activityIndicatorView) = 0;
  sub_ABAFD0();
  __break(1u);
}

char *sub_458C54()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title];
  *v2 = 0;
  *(v2 + 1) = 0xE000000000000000;
  *&v0[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeValue] = 0;
  v0[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_isBackgroundViewHidden] = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_backgroundView;
  *&v1[v3] = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeView;
  v5 = objc_allocWithZone(type metadata accessor for NotificationBadgeView());
  *&v1[v4] = sub_308B4(0);
  v6 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_chevronImageView;
  *&v1[v6] = [objc_allocWithZone(UIImageView) init];
  v7 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_titleCompositingView;
  if (qword_DE6A20 != -1)
  {
    swift_once();
  }

  v8 = qword_E713D0;
  sub_89F60();
  v9 = v8;
  v10 = sub_ABA550();
  if (qword_DE6A28 != -1)
  {
    v28 = v10;
    swift_once();
    v10 = v28;
  }

  v11 = qword_E713D8;
  LOBYTE(v30) = 0;
  *(&v30 + 1) = 0;
  v31 = v9;
  v32 = v10;
  v33 = 4;
  v34 = 0;
  v35 = 1;
  v36 = qword_E713D8;
  v12 = objc_allocWithZone(type metadata accessor for VibrancyLabelCompositingView());
  v13 = v11;
  *&v1[v7] = sub_38F7B8(&v30);
  v29.receiver = v1;
  v29.super_class = type metadata accessor for SocialProfileHeaderRow();
  v14 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v15 = [v14 layer];
  [v15 setAllowsGroupBlending:0];

  v16 = [v14 layer];
  [v16 setAllowsGroupOpacity:0];

  v17 = objc_opt_self();
  v18 = [v17 clearColor];
  [v14 setBackgroundColor:v18];

  v19 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_backgroundView;
  v20 = *&v14[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_backgroundView];
  v21 = [v14 traitCollection];
  if ([v21 horizontalSizeClass] == &dword_0 + 2)
  {
    v22 = [v17 clearColor];
  }

  else
  {
    if (qword_DE6A18 != -1)
    {
      swift_once();
    }

    v22 = qword_E713C8;
  }

  v23 = v22;

  [v20 setBackgroundColor:v23];
  v24 = [*&v14[v19] layer];
  v25 = [v14 traitCollection];

  [v25 userInterfaceStyle];
  sub_AB92A0();

  v26 = sub_AB9260();

  [v24 setCompositingFilter:v26];

  [v14 addSubview:*&v14[v19]];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_titleCompositingView]];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeView]];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_chevronImageView]];
  sub_459E74();

  return v14;
}

uint64_t sub_459108(uint64_t result, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title];
  v3 = *&v2[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title + 8];
  if (v4 != result || v3 != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v6 = (*&v2[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_titleCompositingView] + OBJC_IVAR____TtC16MusicApplication28VibrancyLabelCompositingView_text);
      v7 = *v6;
      v8 = v6[1];
      *v6 = v4;
      v6[1] = v3;

      sub_38FB24(v7, v8, v9);

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

id sub_4592A8(char a1)
{
  v2 = a1 & 1;
  result = [v1 isHighlighted];
  if (result != v2)
  {
    v4 = *&v1[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_backgroundView];
    v5 = [v1 state];
    v6 = [v1 traitCollection];
    v7 = sub_45A12C(v5, v6);

    [v4 setBackgroundColor:v7];
    v8 = *&v1[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_chevronImageView];
    v9 = [v1 isHighlighted];

    return [v8 setHighlighted:v9];
  }

  return result;
}

id sub_4593A4(uint64_t a1)
{
  v34.receiver = v1;
  v34.super_class = type metadata accessor for SocialProfileHeaderRow();
  objc_msgSendSuper2(&v34, "layoutSubviews");
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v1 traitCollection];
  [v10 displayScale];

  [v1 effectiveUserInterfaceLayoutDirection];
  [v1 music_inheritedLayoutInsets];
  v13 = UIEdgeInsetsInsetRect(v3, v5, v7, v9, v11, v12);
  v15 = v14;
  v32 = v16;
  v18 = v17;
  [*&v1[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_backgroundView] setFrame:{v3, v5, v7, v9}];
  v19 = *&v1[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_chevronImageView];
  [v19 sizeThatFits:?];
  v21 = v20;
  v23 = v22;
  v33 = v15;
  v35.origin.x = v13;
  v35.origin.y = v15;
  v35.size.width = v32;
  v35.size.height = v18;
  CGRectGetMaxX(v35);
  v36.origin.x = 0.0;
  v36.origin.y = 0.0;
  v36.size.width = v21;
  v36.size.height = v23;
  CGRectGetWidth(v36);
  sub_ABA470();
  v24 = v32 - (CGRectGetWidth(v37) + 12.0);
  if (*&v1[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeValue] >= 1)
  {
    [*&v1[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeView] sizeThatFits:{0.0, 0.0, *&v23}];
    v26 = v25;
    v28 = v27;
    v38.origin.y = v33;
    v38.origin.x = v13;
    v38.size.width = v24;
    v38.size.height = v18;
    CGRectGetMaxX(v38);
    v39.origin.x = 0.0;
    v39.origin.y = 0.0;
    v39.size.width = v26;
    v39.size.height = v28;
    CGRectGetWidth(v39);
    sub_ABA470();
    CGRectGetWidth(v40);
  }

  sub_ABA490();
  [v19 setFrame:?];
  v29 = *&v1[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeView];
  sub_ABA490();
  [v29 setFrame:?];
  v30 = *&v1[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_titleCompositingView];
  sub_ABA490();
  return [v30 setFrame:?];
}

double sub_4598C8()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title + 8);
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title) & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    [*(v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_titleCompositingView) sizeThatFits:{0.0, 0.0}];
    v4 = v3 + 12.0;
  }

  else
  {
    v4 = 0.0;
  }

  if (*(v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeValue) >= 1)
  {
    [*(v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeView) sizeThatFits:{0.0, 0.0}];
    v4 = v4 + v5 + 12.0;
  }

  [*(v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_chevronImageView) sizeThatFits:{0.0, 0.0}];
  return v4 + v6;
}

void sub_4599A4(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for SocialProfileHeaderRow();
  objc_msgSendSuper2(&v10, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_backgroundView];
  v4 = [v1 state];
  v5 = [v1 traitCollection];
  v6 = sub_45A12C(v4, v5);

  [v3 setBackgroundColor:v6];
  v7 = [v3 layer];
  v8 = [v1 traitCollection];
  [v8 userInterfaceStyle];
  sub_AB92A0();

  v9 = sub_AB9260();

  [v7 setCompositingFilter:v9];

  sub_459E74();
}

uint64_t sub_459CC4(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SocialProfileHeaderRow();
  v2 = objc_msgSendSuper2(&v6, "accessibilityValue");
  if (v2)
  {
    v3 = v2;
    v4 = sub_AB92A0();
  }

  else
  {
    v4 = 0;
  }

  if (*&v1[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeValue] < 1)
  {
    return v4;
  }

  return sub_ABB330();
}

void sub_459D8C(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_AB92A0();
    v6 = a1;
    v7 = sub_AB9260();
  }

  else
  {
    v8 = a1;
    v7 = 0;
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for SocialProfileHeaderRow();
  objc_msgSendSuper2(&v9, *a4, v7);
}

void sub_459E74()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_45B16C(v2);
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = [v4 blackColor];
    v6 = [v3 flattenedImageWithColor:v5];
    v7 = [v6 imageWithRenderingMode:1];

    v3 = v7;
    v8 = [v4 whiteColor];
    v9 = [v3 flattenedImageWithColor:v8];
    v11 = [v9 imageWithRenderingMode:1];
  }

  else
  {
    v11 = 0;
  }

  v10 = *&v0[OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_chevronImageView];
  [v10 setImage:v3];
  [v10 setHighlightedImage:v11];
}

id sub_45A054(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SocialProfileHeaderRow();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_45A12C(char a1, id a2)
{
  if ([a2 horizontalSizeClass] == &dword_0 + 2)
  {
    v3 = [objc_opt_self() clearColor];
LABEL_7:

    return v3;
  }

  if ((a1 & 5) != 0)
  {
    if (qword_DE6A18 != -1)
    {
      swift_once();
    }

    v3 = [qword_E713C8 colorWithAlphaComponent:0.4];
    goto LABEL_7;
  }

  if (qword_DE6A18 != -1)
  {
    swift_once();
  }

  v5 = qword_E713C8;

  return v5;
}

void sub_45A240()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_title);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeValue) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_isBackgroundViewHidden) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_backgroundView;
  *(v1 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_badgeView;
  v5 = objc_allocWithZone(type metadata accessor for NotificationBadgeView());
  *(v1 + v4) = sub_308B4(0);
  v6 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_chevronImageView;
  *(v1 + v6) = [objc_allocWithZone(UIImageView) init];
  v7 = OBJC_IVAR____TtC16MusicApplication22SocialProfileHeaderRow_titleCompositingView;
  if (qword_DE6A20 != -1)
  {
    swift_once();
  }

  v8 = qword_E713D0;
  sub_89F60();
  v9 = v8;
  v10 = sub_ABA550();
  if (qword_DE6A28 != -1)
  {
    swift_once();
  }

  v11 = qword_E713D8;
  LOBYTE(v14) = 0;
  *(&v14 + 1) = 0;
  v15 = v9;
  v16 = v10;
  v17 = 4;
  v18 = 0;
  v19 = 1;
  v20 = qword_E713D8;
  v12 = objc_allocWithZone(type metadata accessor for VibrancyLabelCompositingView());
  v13 = v11;
  *(v1 + v7) = sub_38F7B8(&v14);
  sub_ABAFD0();
  __break(1u);
}

uint64_t *sub_45A430()
{
  if (qword_DE6CB8 != -1)
  {
    swift_once();
  }

  return &qword_E718F8;
}

UIImage __swiftcall UIImage.applying(tintColor:)(UIColor tintColor)
{
  v2 = [v1 flattenedImageWithColor:tintColor.super.isa];
  v3 = [v2 imageWithRenderingMode:1];

  return v3;
}

id sub_45A4E0()
{
  sub_B9A4C();
  result = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(140, 142, 148, 1.0);
  qword_E71890 = result;
  return result;
}

id sub_45A560(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != &dword_0 + 2)
  {
    v3 = &selRef_blackColor;
  }

  v4 = [v2 *v3];
  v5 = [v4 colorWithAlphaComponent:0.15];

  return v5;
}

id sub_45A618(void *a1)
{
  if ([a1 userInterfaceStyle] == &dword_0 + 2)
  {
    v1 = [objc_opt_self() tertiaryLabelColor];

    return v1;
  }

  else
  {
    if (qword_DE6C90 != -1)
    {
      swift_once();
    }

    v3 = qword_E718D0;

    return v3;
  }
}

id sub_45A72C()
{
  sub_B9A4C();
  result = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(229, 229, 234, 1.0);
  qword_E718D0 = result;
  return result;
}

id sub_45A7CC(void *a1, uint64_t a2, uint64_t a3)
{
  if ([a1 userInterfaceStyle] == &dword_0 + 2)
  {
    v5 = [objc_opt_self() secondarySystemBackgroundColor];

    return v5;
  }

  else
  {
    sub_B9A4C();
    return UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(a2, a2, a3, 1.0);
  }
}

id sub_45A860()
{
  result = [objc_allocWithZone(AVTimeFormatter) init];
  qword_E718F0 = result;
  return result;
}

void sub_45A894()
{
  v0 = sub_AB3760();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB36A0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(NSDateFormatter) init];
  [v8 setDateStyle:3];
  v9 = Calendar.musicDefaultCalendar.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v9, v4);
  sub_AB3670();
  (*(v5 + 8))(v7, v4);
  isa = sub_AB3750().super.isa;
  (*(v1 + 8))(v3, v0);
  [v8 setTimeZone:isa];

  qword_E718F8 = v8;
}

void sub_45AA70()
{
  v0 = sub_AB3760();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB36A0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(NSDateFormatter) init];
  v9 = Calendar.musicDefaultCalendar.unsafeMutableAddressor();
  (*(v5 + 16))(v7, v9, v4);
  sub_AB3670();
  (*(v5 + 8))(v7, v4);
  isa = sub_AB3750().super.isa;
  (*(v1 + 8))(v3, v0);
  [v8 setTimeZone:isa];

  qword_E07F70 = v8;
}

void sub_45AC6C(void *a1, void *a2, double *a3, void **a4, CGFloat a5)
{
  v10 = sub_AB39E0();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin().n128_u64[0];
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 CGContext];
  v16 = [a2 cgColor];
  if (v16)
  {
    v17 = v16;
    CGContextSetFillColorWithColor(v15, v17);

    v18 = *a3;
    v19 = a3[1];
    if (a5 <= 0.0)
    {
      [a1 fillRect:{0.0, 0.0, v18, v19}];
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = CGPathCreateWithRoundedRect(*(&v18 - 2), a5, a5, 0);
      v23 = [a1 CGContext];
      CGContextAddPath(v23, v22);

      v24 = [a1 CGContext];
      (*(v11 + 104))(v14, enum case for CGPathFillRule.winding(_:), v10);
      sub_AB9E40();
      (*(v11 + 8))(v14, v10);
    }

    v25 = [a1 currentImage];
    v26 = *a4;
    *a4 = v25;
  }

  else
  {
    __break(1u);
  }
}

void _sSo7UIImageC16MusicApplicationE16stretchableImage10filledWith12cornerRadiusABSgSo7UIColorC_12CoreGraphics7CGFloatVtFZ_0(void *a1, double a2)
{
  __asm { FMOV            V0.2D, #1.0 }

  v24 = _Q0;
  v9 = 1.0;
  if (a2 > 0.0)
  {
    v9 = a2 + a2 + 1.0;
    *&v24 = v9;
    *(&v24 + 1) = v9;
  }

  v10 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  v11 = [objc_opt_self() mainScreen];
  [v11 scale];
  v13 = v12;

  [v10 setScale:v13];
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v10 format:{v9, v9}];
  v23 = 0;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = &v24;
  *(v15 + 32) = a2;
  *(v15 + 40) = &v23;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_45C2D4;
  *(v16 + 24) = v15;
  aBlock[4] = sub_57B84;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_41A314;
  aBlock[3] = &block_descriptor_15_3;
  v17 = _Block_copy(aBlock);
  v18 = a1;

  v19 = [v14 imageWithActions:v17];
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!v23)
  {

    goto LABEL_10;
  }

  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (a2 < 9.22337204e18)
  {
    v20 = v23;
    [v20 stretchableImageWithLeftCapWidth:a2 topCapHeight:a2];

LABEL_10:
    v21 = v23;

    return;
  }

LABEL_14:
  __break(1u);
}

id sub_45B16C(uint64_t a1)
{
  if (sub_ABA320())
  {
    v1 = 1;
  }

  else
  {
    v1 = -1;
  }

  v2 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleSubheadline scale:v1];
  v3 = sub_AB9260();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  if (v4)
  {
    v5 = [objc_opt_self() secondaryLabelColor];
    v6 = [v4 flattenedImageWithColor:v5];
    v7 = [v6 imageWithRenderingMode:1];
  }

  else
  {

    return 0;
  }

  return v7;
}

uint64_t sub_45B2C4(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_ABA320();

  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  CGRectGetWidth(v14);
  sub_471A4();
  if (sub_AB38F0())
  {
    if (v10)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }

  else
  {
    v15.origin.x = a2;
    v15.origin.y = a3;
    v15.size.width = a4;
    v15.size.height = a5;
    CGRectGetWidth(v15);
    if (sub_AB38F0())
    {
      if (v10)
      {
        return 6;
      }

      else
      {
        return 7;
      }
    }

    else
    {
      v16.origin.x = a2;
      v16.origin.y = a3;
      v16.size.width = a4;
      v16.size.height = a5;
      CGRectGetWidth(v16);
      if (sub_AB38F0())
      {
        if (v10)
        {
          return 5;
        }

        else
        {
          return 6;
        }
      }

      else
      {
        v17.origin.x = a2;
        v17.origin.y = a3;
        v17.size.width = a4;
        v17.size.height = a5;
        CGRectGetWidth(v17);
        if (sub_AB38F0())
        {
          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }

        else
        {
          v18.origin.x = a2;
          v18.origin.y = a3;
          v18.size.width = a4;
          v18.size.height = a5;
          CGRectGetWidth(v18);
          if (sub_AB38F0())
          {
            if (v10)
            {
              return 3;
            }

            else
            {
              return 4;
            }
          }

          else
          {
            v19.origin.x = a2;
            v19.origin.y = a3;
            v19.size.width = a4;
            v19.size.height = a5;
            CGRectGetWidth(v19);
            v12 = sub_AB38F0();
            if (v10)
            {
              v13 = 2;
            }

            else
            {
              v13 = 3;
            }

            if (v12)
            {
              return v13;
            }

            else
            {
              return 2;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_45B594()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  __chkstk_darwin();
  v1 = &v13 - v0;
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB2D90();
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_45BB38(v1);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v5, v1, v2);
    if (qword_DE6CC0 != -1)
    {
      swift_once();
    }

    v7 = qword_E07F70;
    isa = sub_AB34E0().super.isa;
    [v7 setLocale:isa];

    v9 = sub_AB9260();
    [v7 setLocalizedDateFormatFromTemplate:v9];

    v10 = sub_AB3370().super.isa;
    v11 = [v7 stringFromDate:v10];

    v12 = sub_AB92A0();
    (*(v3 + 8))(v5, v2);

    return v12;
  }
}

uint64_t sub_45B7DC(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07F78, &qword_B10368);
  __chkstk_darwin();
  v19 = &v18 - v2;
  v3 = sub_AB2DC0();
  v21 = *(v3 - 8);
  v22 = v3;
  __chkstk_darwin();
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB36A0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Calendar.musicDefaultCalendar.unsafeMutableAddressor();
  v18 = *(v7 + 16);
  v18(v9, v10, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07F80, &qword_B10370);
  v11 = sub_AB3690();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_AF4EC0;
  (*(v12 + 104))(v14 + v13, enum case for Calendar.Component.year(_:), v11);
  sub_11594(v14);
  swift_setDeallocating();
  (*(v12 + 8))(v14 + v13, v11);
  swift_deallocClassInstance();
  sub_AB3620();

  v15 = v19;
  v18(v19, v9, v6);
  (*(v7 + 56))(v15, 0, 1, v6);
  sub_AB2DB0();
  v16 = sub_45B594();
  (*(v21 + 8))(v5, v22);
  (*(v7 + 8))(v9, v6);
  return v16;
}

uint64_t sub_45BB38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double block_copy_helper_145(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_45BBB8(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_ABA320();

  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGRectGetWidth(v12);
  sub_471A4();
  if (sub_AB38F0())
  {
    if (v10)
    {
      return 7;
    }

    else
    {
      return 9;
    }
  }

  else
  {
    v13.origin.x = a2;
    v13.origin.y = a3;
    v13.size.width = a4;
    v13.size.height = a5;
    CGRectGetWidth(v13);
    if (sub_AB38F0())
    {
      if (v10)
      {
        return 6;
      }

      else
      {
        return 8;
      }
    }

    else
    {
      v14.origin.x = a2;
      v14.origin.y = a3;
      v14.size.width = a4;
      v14.size.height = a5;
      CGRectGetWidth(v14);
      if (sub_AB38F0())
      {
        if (v10)
        {
          return 5;
        }

        else
        {
          return 7;
        }
      }

      else
      {
        v15.origin.x = a2;
        v15.origin.y = a3;
        v15.size.width = a4;
        v15.size.height = a5;
        CGRectGetWidth(v15);
        if (sub_AB38F0())
        {
          if (v10)
          {
            return 4;
          }

          else
          {
            return 6;
          }
        }

        else
        {
          v16.origin.x = a2;
          v16.origin.y = a3;
          v16.size.width = a4;
          v16.size.height = a5;
          CGRectGetWidth(v16);
          if (sub_AB38F0())
          {
            if (v10)
            {
              return 3;
            }

            else
            {
              return 5;
            }
          }

          else
          {
            v17.origin.x = a2;
            v17.origin.y = a3;
            v17.size.width = a4;
            v17.size.height = a5;
            CGRectGetWidth(v17);
            if (sub_AB38F0())
            {
              if (v10)
              {
                return 2;
              }

              else
              {
                return 4;
              }
            }

            else if (v10)
            {
              return 2;
            }

            else
            {
              return 3;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_45BEA8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGRectGetWidth(*&a1);
  sub_471A4();
  result = sub_AB38F0();
  if ((result & 1) == 0)
  {
    v9.origin.x = a1;
    v9.origin.y = a2;
    v9.size.width = a3;
    v9.size.height = a4;
    CGRectGetWidth(v9);
    return sub_AB38F0();
  }

  return result;
}

uint64_t sub_45BF9C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07F88, &qword_B10378);
  __chkstk_darwin();
  v3 = &v16 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E07F78, &qword_B10368);
  __chkstk_darwin();
  v5 = &v16 - v4;
  v6 = sub_AB2DC0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 1)
  {
    return 0;
  }

  v10 = Calendar.musicDefaultCalendar.unsafeMutableAddressor();
  v11 = sub_AB36A0();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v5, v10, v11);
  (*(v12 + 56))(v5, 0, 1, v11);
  v13 = sub_AB3760();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_AB2DA0();
  v14 = sub_45B594();
  (*(v7 + 8))(v9, v6);
  return v14;
}

uint64_t sub_45C29C()
{

  return swift_deallocObject();
}

id sub_45C314()
{
  v1 = [*(*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112) image];

  return v1;
}

double sub_45C35C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_45C3A4(double a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  result = sub_AB38D0();
  if (result)
  {
    result = sub_35D498();
  }

  if (v4 != *&v1[v3])
  {
    result = [v1 setNeedsLayout];
    v6 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_artworkAspectRatioDidChangeHandler];
    if (v6)
    {
      v7 = *&v1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_artworkAspectRatioDidChangeHandler + 8];

      v6(v8);
      return sub_17654(v6, v7);
    }
  }

  return result;
}

void (*sub_45C488(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkAspectRatio;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_45C520;
}

void sub_45C520(uint64_t a1)
{
  v1 = *a1;
  sub_45C3A4(*(*a1 + 24));

  free(v1);
}

id sub_45C560()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell____lazy_storage___playButton;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell____lazy_storage___playButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell____lazy_storage___playButton);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(UIButton) init];
    sub_13C80(0, &qword_DE8700, UIImage_ptr);
    v6 = UIImage.init(systemName:pointSize:weight:)(0xD000000000000010, 0x8000000000B4A550, 4, 34.0);
    if (v6)
    {
      v7 = v6;
      v8 = [v6 imageWithRenderingMode:2];
    }

    else
    {
      v8 = 0;
    }

    [v5 setImage:v8 forState:0];

    v9 = [objc_opt_self() whiteColor];
    v10 = [v9 colorWithAlphaComponent:0.8];

    [v5 setTintColor:v10];
    v11 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

id sub_45C6D4()
{
  [*(*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112) frame];
  x = v14.origin.x;
  width = v14.size.width;
  height = v14.size.height;
  MaxY = CGRectGetMaxY(v14);
  v5 = (*&stru_388.segname[(swift_isaMask & *v0) - 8])();
  v15.origin.x = x;
  v15.origin.y = MaxY;
  v15.size.width = width;
  v15.size.height = v5;
  v6 = CGRectGetHeight(v15);
  v16.origin.x = x;
  v16.origin.y = MaxY;
  v16.size.width = width;
  v16.size.height = height;
  v7 = CGRectGetHeight(v16);
  if (v6 > v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView);
  if (v9)
  {
    [v9 setFrame:{x, MaxY, width, v8}];
  }

  [*(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView) setFrame:{x, MaxY, width, v8}];
  v10 = (v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame);
  *v10 = x;
  v10[1] = MaxY;
  v10[2] = width;
  v10[3] = v5;
  v11 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialHighlightOverlayView);

  return [v11 setFrame:{x, MaxY, width, v5}];
}

void sub_45C850()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView;
  if (([*&v0[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView] isHidden] & 1) == 0)
  {
    v2 = [*&v0[v1] layer];
    v3 = [v2 animationKeys];

    if (!v3 || (v4 = sub_AB9760(), v3, v5 = *(v4 + 16), , !v5))
    {
      v6 = *(*&v0[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 48);
      if (v6 != 255 && (v6 & 1) == 0)
      {
        v7 = objc_opt_self();
        v8 = swift_allocObject();
        *(v8 + 16) = v0;
        v18 = sub_45E13C;
        v19 = v8;
        v14 = _NSConcreteStackBlock;
        v15 = 1107296256;
        v16 = sub_1B5EB4;
        v17 = &block_descriptor_146;
        v9 = _Block_copy(&v14);
        v10 = v0;

        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        v18 = sub_45E174;
        v19 = v11;
        v14 = _NSConcreteStackBlock;
        v15 = 1107296256;
        v16 = sub_1811AC;
        v17 = &block_descriptor_71_0;
        v12 = _Block_copy(&v14);
        v13 = v10;

        [v7 animateWithDuration:v9 animations:v12 completion:0.2];
        _Block_release(v12);
        _Block_release(v9);
      }
    }
  }
}

void sub_45CA84()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_113380();
  if (v2)
  {
    v4 = v3;
    v5 = *(*(v1 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112);
    v6 = v2;
    v7 = v2;
    v8 = v4;
    v8[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_cropStyle] = sub_37B9F4([v5 contentMode]) & 1;

    [*(v1 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView) insertSubview:v7 atIndex:0];
    v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView);
    *(v1 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView) = v6;
    v10 = v7;

    v11 = *(v1 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer);
    *(v1 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer) = v4;
  }
}

void sub_45CBB4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
  if (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_isVideoArtworkAllowed) == 1 && (*(v1 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_prefersImageArtwork) & 1) == 0 && (v2 = *(v1 + 72)) != 0 || (v2 = *(v1 + 64)) != 0)
  {
    v7 = v2;
    v3 = [v2 existingColorAnalysisWithAlgorithm:1];
    v4 = [v3 backgroundColor];

    if (v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0;
  }

  v4 = [objc_opt_self() systemGrayColor];
LABEL_9:
  v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView);
  v6 = v4;
  [v5 setBackgroundColor:v6];
  [*(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView) setBackgroundColor:v6];
}

double sub_45CCF4()
{
  [*(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView) bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  [*(*(v0 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112) frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  MaxY = CGRectGetMaxY(v19);
  v20.origin.x = v10;
  v20.origin.y = v12;
  v20.size.width = v14;
  v20.size.height = v16;
  return MaxY - CGRectGetMaxY(v20);
}

char *sub_45CDB0(double a1, double a2, double a3, double a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFFBC0, &unk_AF85C0);
  __chkstk_darwin();
  v10 = &v75 - v9;
  v78 = sub_ABA680();
  v11 = *(v78 - 8);
  __chkstk_darwin();
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView;
  *&v4[v14] = [objc_allocWithZone(UIView) init];
  v15 = &v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame];
  *v15 = 0u;
  v15[1] = 0u;
  v16 = &v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_artworkAspectRatioDidChangeHandler];
  *v16 = 0;
  v16[1] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_lockupVideoArtworkCatalog] = 0;
  v17 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView;
  v18 = [objc_allocWithZone(UIView) init];
  v77 = objc_opt_self();
  v19 = [v77 clearColor];
  [v18 setBackgroundColor:v19];

  *&v4[v17] = v18;
  v20 = &v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHorizontalInsets];
  *v21 = xmmword_AFB130;
  v21[1] = xmmword_B0B770;
  *&v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell____lazy_storage___playButton] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_hasAppliedMaterialTexture] = 0;
  v22 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialHighlightOverlayView;
  v23 = [objc_allocWithZone(UIView) init];
  if (qword_DE6C60 != -1)
  {
    swift_once();
  }

  [v23 setBackgroundColor:qword_E718A0];
  [v23 setHidden:1];
  *&v4[v22] = v23;
  v4[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout] = 0;
  v24 = type metadata accessor for FeaturedMaterialCell(0);
  v79.receiver = v4;
  v79.super_class = v24;
  v25 = objc_msgSendSuper2(&v79, "initWithFrame:", a1, a2, a3, a4);
  v26 = UIView.Corner.extraLarge.unsafeMutableAddressor();
  v27 = v11;
  v76 = v11;
  v28 = *(v11 + 16);
  v29 = v13;
  v30 = v78;
  v28(v13, v26, v78);
  v75 = v13;
  sub_ABA5F0();
  v31 = *(v27 + 56);
  v31(v10, 0, 1, v30);
  VerticalLockupCollectionViewCell.artworkCornerTreatment.setter(v10);
  v32 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView;
  [*&v25[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView] setClipsToBounds:1];
  v33 = *&v25[v32];
  v28(v10, v29, v30);
  v31(v10, 0, 1, v30);
  v34 = v33;
  sub_ABA6A0();

  v35 = [v25 contentView];
  [v35 addSubview:*&v25[v32]];

  sub_45CA84();
  v36 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent;
  [*&v25[v32] addSubview:*(*&v25[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + 112)];
  [*&v25[v32] addSubview:*&v25[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView]];
  v37 = *&v25[v32];
  v38 = *&v25[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_textStackView];
  v39 = v25;
  [v37 addSubview:v38];
  v40 = *&v25[v32];
  v41 = sub_45C560();
  [v40 addSubview:v41];

  [*&v25[v32] addSubview:*&v39[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialHighlightOverlayView]];
  v42 = *&v39[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell____lazy_storage___playButton];
  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44 = sub_13C80(0, &qword_DF13D0, UIButton_ptr);
  v45 = v42;
  ControlEventHandling<>.on(_:handler:)(64, sub_45E0E4, v43, v44);

  v46 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = &v39[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_imageDidChangeHandler];
  v48 = *&v39[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_imageDidChangeHandler];
  v49 = *&v39[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_imageDidChangeHandler + 8];
  *v47 = sub_45E0EC;
  v47[1] = v46;

  sub_17654(v48, v49);

  v50 = *&v25[v36];
  v51 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v52 = (v50 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageViewDidResetHandler);
  v53 = *(v50 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageViewDidResetHandler);
  v54 = *(v50 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageViewDidResetHandler + 8);
  *v52 = sub_45E0F4;
  v52[1] = v51;

  sub_17654(v53, v54);

  v55 = *&v25[v36];
  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v57 = (v55 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_contentModeDidChangeHandler);
  v58 = *(v55 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_contentModeDidChangeHandler);
  v59 = *(v55 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_contentModeDidChangeHandler + 8);
  *v57 = sub_45E0FC;
  v57[1] = v56;

  sub_17654(v58, v59);

  v60 = *&v25[v32];
  v61 = v60;
  sub_AB9EA0();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = [v77 systemLightGrayColor];
  (*(v76 + 8))(v75, v30);
  v71 = &v39[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_selectedBackgroundViewConfiguration];
  v72 = *&v39[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_selectedBackgroundViewConfiguration];
  v73 = *&v39[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_selectedBackgroundViewConfiguration + 8];
  *v71 = v60;
  *(v71 + 1) = v70;
  *(v71 + 2) = v63;
  *(v71 + 3) = v65;
  *(v71 + 4) = v67;
  *(v71 + 5) = v69;

  return v39;
}

void sub_45D4E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler);
    if (v4)
    {
      v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler + 8);

      v6 = sub_45C560();
      v4(v3, v6);

      sub_17654(v4, v5);
    }
  }
}

void sub_45D590(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_397F8();
  }
}

void sub_45D5E4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView);

    v4 = [v3 layer];
    [v4 removeAllAnimations];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_397F8();
  }
}

void sub_45D6B0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent);
    v3 = Strong;

    v4 = *(v2 + 112);

    v5 = [v4 contentMode];

    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer);
      if (v8)
      {
        v9 = v8;

        v9[OBJC_IVAR____TtC16MusicApplication16MaterialRenderer_cropStyle] = sub_37B9F4(v5) & 1;
        v7 = v9;
      }
    }
  }
}

id sub_45D878(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for FeaturedMaterialCell(0);
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_45D920(char a1, SEL *a2, SEL *a3)
{
  v7 = type metadata accessor for FeaturedMaterialCell(0);
  v12.receiver = v3;
  v12.super_class = v7;
  v8 = objc_msgSendSuper2(&v12, *a2);
  v11.receiver = v3;
  v11.super_class = v7;
  objc_msgSendSuper2(&v11, *a3, a1 & 1);
  result = [v3 *a2];
  if (v8 != result)
  {
    if ([v3 isHighlighted])
    {
      v10 = 0;
    }

    else
    {
      v10 = [v3 isSelected] ^ 1;
    }

    return [*&v3[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialHighlightOverlayView] setHidden:v10];
  }

  return result;
}

void sub_45DB0C()
{
  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_artworkAspectRatioDidChangeHandler), *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_artworkAspectRatioDidChangeHandler + 8));

  sub_17654(*(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler), *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler + 8));
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialHighlightOverlayView);
}

id sub_45DBC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeaturedMaterialCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FeaturedMaterialCell(uint64_t a1)
{
  result = qword_E07FC8;
  if (!qword_E07FC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_45DD94()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView);
  v2 = v1;
  return v1;
}

void *sub_45DDC4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer);
  v2 = v1;
  return v1;
}

id sub_45DE50()
{
  sub_45CBB4();
  v1 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView;
  [*(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView) setAlpha:1.0];
  v2 = *(v0 + v1);

  return [v2 setHidden:0];
}

void sub_45DEB0()
{
  v1 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_roundedArtworkView;
  *(v0 + v1) = [objc_allocWithZone(UIView) init];
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_clippedMaterialFrame);
  *v2 = 0u;
  v2[1] = 0u;
  v3 = (v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_artworkAspectRatioDidChangeHandler);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_lockupVideoArtworkCatalog) = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView;
  v5 = [objc_allocWithZone(UIView) init];
  v6 = [objc_opt_self() clearColor];
  [v5 setBackgroundColor:v6];

  *(v0 + v4) = v5;
  v7 = (v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHorizontalInsets);
  *v8 = xmmword_AFB130;
  v8[1] = xmmword_B0B770;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell____lazy_storage___playButton) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_renderer) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_hasAppliedMaterialTexture) = 0;
  v9 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialHighlightOverlayView;
  v10 = [objc_allocWithZone(UIView) init];
  if (qword_DE6C60 != -1)
  {
    swift_once();
  }

  [v10 setBackgroundColor:qword_E718A0];
  [v10 setHidden:1];
  *(v0 + v9) = v10;
  *(v0 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_45E0AC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_45E104()
{

  return swift_deallocObject();
}

double block_copy_helper_146(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

id sub_45E174()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView;
  [*(v1 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_materialLoadingView) setBackgroundColor:0];
  v3 = *(v1 + v2);

  return [v3 setHidden:1];
}

void sub_45E210()
{
  v1 = v0;
  v15.receiver = v0;
  v15.super_class = type metadata accessor for JSLiveRadioCaseViewController(0);
  objc_msgSendSuper2(&v15, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;

  type metadata accessor for CGSize(0);
  v8 = &v1[qword_E08008];
  v14 = *&v1[qword_E08008];
  if ((sub_AB38D0() & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = *v8;
  if (*v8 != v5)
  {
    sub_464F8C();
  }

  *v8 = v5;
  *(v8 + 1) = v7;
  [v1 loadViewIfNeeded];
  v10 = *&v1[qword_DFE2F8];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = [v10 collectionViewLayout];
  v12 = &v1[qword_E08000];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  [swift_getObjCClassFromObject() invalidationContextClass];
  swift_getObjCClassMetadata();
  sub_13C80(0, &unk_DFED50, UICollectionViewLayoutInvalidationContext_ptr);
  swift_dynamicCastMetatypeUnconditional();
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v11 invalidateLayoutWithContext:v13];

LABEL_7:
  if (*&v1[qword_E71970])
  {

    sub_38AC10();
  }
}

void sub_45E3EC(void *a1)
{
  v1 = a1;
  sub_45E210();
}

void sub_45E434()
{
  v1 = v0;
  v28.receiver = v0;
  v28.super_class = type metadata accessor for JSLiveRadioCaseViewController(0);
  objc_msgSendSuper2(&v28, "viewDidLoad");
  [v0 loadViewIfNeeded];
  v2 = *&v0[qword_DFE2F8];
  if (v2)
  {
    v3 = *&v0[qword_DFE2F0];
    type metadata accessor for CollectionViewArtworkVideoPlaybackController(0);
    swift_allocObject();
    v4 = v3;
    v5 = sub_389BA0(v2, v3);
    *(v5 + 224) = sub_464B90();
    v6 = sub_4645CC();
    v7 = *(v5 + 56);
    *(v6 + 80) = v7;
    swift_retain_n();
    if (v7 == 1)
    {
      *(v6 + 144) = 1;
    }

    swift_retain_n();

    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = *(v5 + 40);
    v10 = *(v5 + 48);
    *(v5 + 40) = sub_4667FC;
    *(v5 + 48) = v8;

    sub_17654(v9, v10);

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = *(v5 + 80);
    v13 = *(v5 + 88);
    *(v5 + 80) = sub_466804;
    *(v5 + 88) = v11;
    sub_17654(v12, v13);

    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = *(v5 + 96);
    v16 = *(v5 + 104);
    *(v5 + 96) = sub_46680C;
    *(v5 + 104) = v14;
    sub_17654(v15, v16);

    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = *(v5 + 112);
    v19 = *(v5 + 120);
    *(v5 + 112) = sub_466814;
    *(v5 + 120) = v17;
    sub_17654(v18, v19);

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = *(v5 + 64);
    v22 = *(v5 + 72);
    *(v5 + 64) = sub_46681C;
    *(v5 + 72) = v20;
    sub_17654(v21, v22);

    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = *(v5 + 128);
    v25 = *(v5 + 136);
    *(v5 + 128) = sub_466824;
    *(v5 + 136) = v23;
    sub_17654(v24, v25);

    *&v1[qword_E71970] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E087F0, &unk_B0CE70);
    swift_allocObject();
    v26 = ArtworkVideoReportingController.init()();
    (*(*v26 + 136))(*(v5 + 56));
    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(*v26 + 160))(sub_46682C, v27);

    *&v1[qword_E07FF8] = v26;
  }

  else
  {
    __break(1u);
  }
}

double sub_45E7D8(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[qword_E07FF8];
    if (v5)
    {

      (*(*v5 + 136))(a1 & 1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v8 = v6;
    v9 = sub_4645CC();

    *(v9 + 80) = a1 & 1;
    if (a1)
    {
      *(v9 + 144) = 1;
    }
  }

  return result;
}

void sub_45E8D0(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *&Strong[qword_E07FF8];
    if (v7)
    {

      (*(*v7 + 192))(a1, a2 & 1);
    }

    else
    {
    }
  }
}

double sub_45E988(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[qword_E07FF8];
    if (v5)
    {

      (*(*v5 + 216))(a1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v8 = v6;
    sub_4645CC();

    sub_4A3B04(a1);
  }

  return result;
}

void sub_45EA78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[qword_E07FF8];
    if (v5)
    {

      (*(*v5 + 224))(a1);
    }

    else
    {
    }
  }
}

void sub_45EB24(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[qword_E07FF8];
    if (v5)
    {

      (*(*v5 + 200))(a1);
    }

    else
    {
    }
  }
}

void sub_45EBD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[qword_E07FF8];
    if (v5)
    {

      (*(*v5 + 208))(a1);
    }

    else
    {
    }
  }
}

void sub_45EC7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[qword_DFE2F0];
    if (v4)
    {
      v5 = v4;

      v6 = [v5 results];
      if (v6)
      {
        isa = sub_AB3770().super.isa;
        v8 = [v6 itemAtIndexPath:isa];

        if (v8)
        {
          objc_opt_self();
          v9 = swift_dynamicCastObjCClass();
          if (v9 && (v10 = v9, swift_unknownObjectRetain(), v11 = [v10 contentItem], swift_unknownObjectRelease(), v11))
          {
            v12 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
            MPModelObject.bestIdentifier(for:)(*v12, 1u);

            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_45EDE8(void *a1)
{
  v1 = a1;
  sub_45E434();
}

id sub_45EE30(uint64_t a1)
{
  swift_beginAccess();

  v1 = sub_AB9260();

  return v1;
}

Class sub_45EEC0()
{
  v0 = JSViewModel.playActivityRecommendationData.getter();
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    isa = sub_AB3250().super.isa;
    sub_466A4(v3, v4);
    v2 = isa;
  }

  return v2;
}

void sub_45EF44(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_465D50(v14, v12);

  (*(v10 + 8))(v12, v9);
}

void sub_45F064(void *a1)
{
  v2 = v1;
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for JSLiveRadioCaseViewController(0);
  v49.receiver = v1;
  v49.super_class = v8;
  objc_msgSendSuper2(&v49, "traitCollectionDidChange:", a1);
  v9 = [v1 isViewLoaded];
  v43 = v1;
  v45 = v4;
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [v1 traitCollection];
  v11 = [v10 horizontalSizeClass];

  if (!a1 || v11 != [a1 horizontalSizeClass])
  {
    goto LABEL_8;
  }

  v12 = [v2 traitCollection];
  v13 = [v12 preferredContentSizeCategory];

  v14 = [a1 preferredContentSizeCategory];
  v15 = sub_AB92A0();
  v17 = v16;
  if (v15 == sub_AB92A0() && v17 == v18)
  {

    v2 = v43;
    v4 = v45;
    goto LABEL_9;
  }

  v19 = sub_ABB3C0();

  v2 = v43;
  v4 = v45;
  if ((v19 & 1) == 0)
  {
LABEL_8:
    sub_464F8C();
  }

LABEL_9:
  v20 = [v2 traitCollection];
  v21 = UITraitCollection.isMediaPicker.getter(v20);

  v23 = v2;
  if (a1 && UITraitCollection.isMediaPicker.getter(v22) == v21)
  {
    return;
  }

  [v2 loadViewIfNeeded];
  v48 = qword_DFE2F8;
  v24 = *&v2[qword_DFE2F8];
  if (!v24)
  {
    goto LABEL_33;
  }

  v25 = v24;
  v26 = [v25 indexPathsForVisibleItems];
  v27 = sub_AB9760();

  v47 = *(v27 + 16);
  if (!v47)
  {
LABEL_28:

    return;
  }

  v28 = 0;
  v44 = qword_DFE2F0;
  v46 = v5 + 16;
  v29 = (v5 + 8);
  while (v28 < *(v27 + 16))
  {
    (*(v5 + 16))(v7, v27 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v28, v4);
    [v23 loadViewIfNeeded];
    v30 = *&v23[v48];
    if (!v30)
    {
      goto LABEL_31;
    }

    v31 = v30;
    isa = sub_AB3770().super.isa;
    v33 = [v31 cellForItemAtIndexPath:isa];

    if (!v33)
    {
      goto LABEL_15;
    }

    type metadata accessor for LiveRadioCell(0);
    v34 = swift_dynamicCastClass();
    if (!v34)
    {

LABEL_15:
      (*v29)(v7, v4);
      goto LABEL_16;
    }

    v35 = v34;
    v36 = *&v23[v44];
    if (!v36)
    {
      goto LABEL_27;
    }

    v37 = [v36 results];
    if (!v37)
    {
      goto LABEL_32;
    }

    v38 = v37;
    v39 = sub_AB3770().super.isa;
    v40 = [v38 itemAtIndexPath:v39];

    v23 = v43;
    if (!v40)
    {
      goto LABEL_27;
    }

    objc_opt_self();
    v41 = swift_dynamicCastObjCClass();
    if (!v41)
    {
      swift_unknownObjectRelease();
LABEL_27:
      v4 = v45;
      (*v29)(v7, v45);

      goto LABEL_16;
    }

    sub_45F6CC(v35, v41, v7);
    v42 = v45;
    (*v29)(v7, v45);

    v4 = v42;
    swift_unknownObjectRelease();
LABEL_16:
    if (v47 == ++v28)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void sub_45F544(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_45F064(a3);
}

void sub_45F5B0(void *a1)
{
  sub_3B316C(a1);
  [a1 setShowsHorizontalScrollIndicator:0];
  [a1 setShowsVerticalScrollIndicator:0];
  type metadata accessor for LiveRadioCell(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  type metadata accessor for FeaturedMaterialCell(0);
  static UICollectionReusableView.reuseIdentifier.getter();
  v3 = sub_AB9260();

  [a1 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v3];

  sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
  v4 = swift_getObjCClassFromMetadata();
  v5 = sub_AB9260();
  [a1 registerClass:v4 forCellWithReuseIdentifier:v5];
}

void sub_45F6CC(char *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for CollectionViewCellArtworkComponentLoggingContext(0);
  __chkstk_darwin();
  v10 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v146 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v14 = __chkstk_darwin().n128_u64[0];
  v16 = &v129 - v15;
  v148 = a2;
  v17 = [a2 contentItem];
  if (!v17)
  {
    return;
  }

  v145 = v16;
  v147 = v17;
  v18 = MPModelStoreBrowseContentItem.kind.getter();
  v20 = v18;
  if (v19 == 5)
  {
    v144 = v12;
    v141 = v11;
    v134 = v8;
    v22 = *&v4[qword_E07FF0];
    v23 = OBJC_IVAR____TtC11MusicJSCore15JSLiveRadioCase_usesFlowLayout;
    swift_beginAccess();
    a1[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout] = *(v22 + v23);
    v24 = v20;
    sub_152CCC();
    v25 = sub_AB37E0();
    v26 = v25 < sub_464988();
    a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isHeaderRowCell] = v26;
    v27 = [v148 headerTitleText];
    if (v27)
    {
      v28 = v27;
      v29 = sub_AB92A0();
      v31 = v30;
    }

    else
    {
      v29 = 0;
      v31 = 0xE000000000000000;
    }

    v32 = &a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTitle];
    v33 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTitle];
    v34 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerTitle + 8];
    *v32 = v29;
    *(v32 + 1) = v31;
    sub_151A2C(v33, v34);

    v35 = [v148 headerSubtitleText];
    if (v35)
    {
      v36 = v35;
      v37 = sub_AB92A0();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0xE000000000000000;
    }

    v40 = &a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerSubtitle];
    v41 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerSubtitle];
    v42 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headerSubtitle + 8];
    *v40 = v37;
    *(v40 + 1) = v39;
    sub_151B0C(v41, v42);

    v43 = [v148 headlineText];
    if (v43)
    {
      v44 = v43;
      v45 = sub_AB92A0();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0xE000000000000000;
    }

    v48 = &a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headline];
    v49 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headline];
    v50 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_headline + 8];
    *v48 = v45;
    *(v48 + 1) = v47;
    sub_151BF0(v49, v50);

    v51 = [v148 titleText];
    if (v51 || (v51 = [v24 name]) != 0)
    {
      v52 = v51;
      v53 = sub_AB92A0();
      v55 = v54;
    }

    else
    {
      v53 = 0;
      v55 = 0xE000000000000000;
    }

    v56 = &a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_title];
    v57 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_title];
    v58 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_title + 8];
    *v56 = v53;
    *(v56 + 1) = v55;
    sub_151CE4(v57, v58);

    v59 = [v148 subtitleText];
    if (v59 || (v59 = [v24 shortEditorNotes]) != 0)
    {
      v60 = v59;
      v61 = sub_AB92A0();
      v63 = v62;
    }

    else
    {
      v61 = 0;
      v63 = 0xE000000000000000;
    }

    v64 = &a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_subtitle];
    v65 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_subtitle];
    v66 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_subtitle + 8];
    *v64 = v61;
    *(v64 + 1) = v63;
    sub_151DDC(v65, v66);

    v67 = [v148 accessoryButtonTitleText];
    v137 = v24;
    if (v67)
    {
      v68 = v67;
      v69 = sub_AB92A0();
      v71 = v70;
    }

    else
    {
      v69 = 0;
      v71 = 0xE000000000000000;
    }

    v72 = &a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonTitle];
    v73 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonTitle];
    v74 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonTitle + 8];
    *v72 = v69;
    *(v72 + 1) = v71;
    v143 = a1;
    v135 = v10;
    v138 = v20;
    v140 = v13;
    if (v73 == v69 && v74 == v71 || (sub_ABB3C0() & 1) != 0)
    {
    }

    else
    {
      v75 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButton];

      v76 = sub_AB9260();

      [v75 setTitle:v76 forState:0];

      v77 = *&a1[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryCalendarButton];

      v78 = sub_AB9260();

      [v77 setAccessibilityLabel:v78];

      v79 = [a1 traitCollection];
      sub_151ED4(v79);
    }

    v80 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v82 = v144;
    v81 = v145;
    v83 = v144 + 16;
    v84 = v141;
    v136 = *(v144 + 16);
    v136(v145, a3, v141);
    v139 = a3;
    v85 = *(v82 + 80);
    v131 = ~v85;
    v86 = (v85 + 24) & ~v85;
    v129 = v86 + v140;
    v87 = swift_allocObject();
    *(v87 + 16) = v80;
    v88 = *(v82 + 32);
    v130 = v86;
    v88(v87 + v86, v81, v84);
    v89 = &v143[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonHandler];
    v90 = *&v143[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonHandler];
    v91 = *&v143[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_accessoryButtonHandler + 8];
    *v89 = sub_466114;
    v89[1] = v87;

    sub_17654(v90, v91);

    v92 = [v4 traitCollection];
    LOBYTE(v90) = UITraitCollection.isMediaPicker.getter(v92);

    v142 = v4;
    v144 = v82 + 32;
    v133 = v83;
    v132 = v88;
    if (v90)
    {
      v93 = v143;
      v94 = &v143[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler];
      v95 = *&v143[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler];
      v96 = *&v143[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler + 8];
      *v94 = 0;
      *(v94 + 1) = 0;
      if (!v95)
      {
        goto LABEL_37;
      }

      [v93 setNeedsLayout];
    }

    else
    {
      v97 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v98 = v146;
      v136(v146, v139, v84);
      v99 = (v129 + 7) & 0xFFFFFFFFFFFFFFF8;
      v100 = swift_allocObject();
      *(v100 + 16) = v97;
      v88(v100 + v130, v98, v84);
      *(v100 + v99) = v137;
      v101 = v148;
      *(v100 + ((v99 + 15) & 0xFFFFFFFFFFFFFFF8)) = v148;
      v102 = v143;
      v103 = &v143[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler];
      v95 = *&v143[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler];
      v96 = *&v143[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_playButtonHandler + 8];
      *v103 = sub_466288;
      v103[1] = v100;
      sub_37C074(v138, 5);
      v104 = v101;
      v93 = v102;
      if (!v95)
      {
        [v102 setNeedsLayout];
LABEL_37:
        v105 = *&v93[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];
        v106 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v107 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v108 = v145;
        v109 = v139;
        v110 = v141;
        v111 = v136;
        v136(v145, v139, v141);
        v112 = (v85 + 32) & v131;
        v113 = v109;
        v114 = swift_allocObject();
        *(v114 + 16) = v106;
        *(v114 + 24) = v107;
        v132(v114 + v112, v108, v110);
        v115 = (v105 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
        v116 = *(v105 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
        v117 = *(v105 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler + 8);
        *v115 = sub_466410;
        v115[1] = v114;

        sub_17654(v116, v117);

        v118 = v135;
        v111(v135, v113, v110);
        v119 = v143;
        v120 = v134;
        swift_unknownObjectWeakInit();
        v149[3] = v120;
        v149[4] = sub_466474(&unk_E087E0, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext, &unk_AF9750);
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v149);
        sub_4666C8(v118, boxed_opaque_existential_0, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext);
        v122 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_loggingContext;
        swift_beginAccess();
        sub_160B4(v149, v105 + v122, &unk_E03770, &unk_B105D0);
        swift_endAccess();
        v123 = v142;
        v124 = sub_4A3F1C();
        v125 = v137;
        v126 = v138;
        sub_10AC20(v138);
        v128 = v127;
        sub_3EB30(v126, 5);

        sub_1523E8([v125 shouldVisuallyDisableFor:v128]);
        sub_1522F0(v123[qword_E07FE0]);
        if (*&v123[qword_E71970])
        {

          sub_389E3C(v113, v119);
          sub_3EB30(v126, 5);
          sub_3EB30(v126, 5);
          sub_4664BC(v118, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext);
        }

        else
        {
          sub_4664BC(v118, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext);
          sub_3EB30(v126, 5);
          sub_3EB30(v126, 5);
        }

        return;
      }
    }

    sub_17654(v95, v96);
    goto LABEL_37;
  }

  if (v19 != 255)
  {
    sub_3EB30(v18, v19);
  }

  v21 = v147;
}

void sub_460288(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_AB3430();
  v76 = *(v4 - 8);
  v77 = v4;
  __chkstk_darwin();
  v75 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  v78 = v6;
  v79 = v7;
  __chkstk_darwin();
  v74 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v13 = &v68 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v68 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v19 = &v68 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v21 = Strong;
  v73 = v19;
  v22 = *(Strong + qword_DFE2F0);
  if (!v22 || (type metadata accessor for JSLiveRadioCaseModelResponse(), (v23 = swift_dynamicCastClass()) == 0))
  {

    return;
  }

  v72 = v9;
  v24 = *(v23 + OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_jsResults);
  v25 = v22;
  isa = sub_AB3770().super.isa;
  v27 = [v24 itemAtIndexPath:isa];

  type metadata accessor for JSLiveRadioCaseItem(0);
  v28 = swift_dynamicCastClass();
  if (!v28)
  {

    swift_unknownObjectRelease();
    return;
  }

  v70 = v28;
  v68 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v29 = *(*&a1[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent] + 112);
  v30 = v21;
  [v29 frame];
  v94[0] = a1;
  v94[1] = v31;
  v94[2] = v32;
  v94[3] = v33;
  v94[4] = v34;
  v95 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v94, 15, v86);
  v90[0] = v86[0];
  v90[1] = v86[1];
  v91 = v87;
  v92 = v88;
  v93 = v89;
  v35 = a1;
  v69 = v30;
  PresentationSource.init(viewController:position:)(v30, v90, v85);
  v36 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v83, 0, sizeof(v83));
  v84 = 0;
  (*(*(v36 - 8) + 56))(v73, 1, 1, v36);
  sub_15F84(v83, &v80, &unk_DE8E30, "\b]\r");
  if (*(&v81 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
    v37 = _s30CollectionViewSelectionHandlerVMa(0);
    v38 = swift_dynamicCast();
    v39 = *(v37 - 8);
    (*(v39 + 56))(v13, v38 ^ 1u, 1, v37);
    v40 = (*(v39 + 48))(v13, 1, v37);
    v41 = v78;
    if (v40 != 1)
    {
      v42 = *(v37 + 20);
      v43 = v79;
      v79[2](v17, &v13[v42], v78);
      sub_4664BC(v13, _s30CollectionViewSelectionHandlerVMa);
      v44 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    sub_12E1C(&v80, &unk_DE8E30, "\b]\r");
    v45 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v45 - 8) + 56))(v13, 1, 1, v45);
    v41 = v78;
  }

  sub_12E1C(v13, &qword_E037A0, &unk_AF8B30);
  v44 = 1;
  v43 = v79;
LABEL_12:
  (v43[7])(v17, v44, 1, v41);
  v46 = swift_unknownObjectWeakLoadStrong();
  if (v46 && (v47 = v46, sub_12B2FC(), v49 = v48, v51 = v50, v47, v49))
  {
    ObjectType = swift_getObjectType();
    (*(v51 + 8))(ObjectType, v51);
    v54 = v53;
    swift_unknownObjectRelease();
    sub_15F84(v17, v15, &unk_DE8E20, &qword_AF7990);
    v55 = v79;
    if ((v79[6])(v15, 1, v41) == 1)
    {
      sub_12E1C(v15, &unk_DE8E20, &qword_AF7990);
      v80 = 0u;
      v81 = 0u;
      v82 = 0;
    }

    else
    {
      v55[4](v74, v15, v41);
      sub_466474(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      sub_ABAD10();
    }

    v57 = swift_getObjectType();
    v58 = v75;
    sub_3B8F68(v57);
    v56 = sub_21CCAC(1, v58, &v80, v57, v54);
    (*(v76 + 8))(v58, v77);
    sub_12E1C(&v80, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v17, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v17, &unk_DE8E20, &qword_AF7990);
    v56 = 0;
  }

  v79 = v27;
  v59 = swift_unknownObjectWeakLoadStrong();
  v71 = v25;
  if (v59)
  {
    v60 = v59;
    sub_12AFE8();
    v62 = v61;
  }

  else
  {
    v62 = 0;
  }

  sub_15F28(v85, &v80);
  sub_15F84(v83, (v11 + 104), &unk_DE8E30, "\b]\r");
  v64 = v72;
  v63 = v73;
  sub_15F84(v73, &v11[*(v72 + 28)], &unk_DEA510, "\b]\r");
  *v11 = 0u;
  *(v11 + 1) = 0u;
  *(v11 + 2) = 0u;
  *(v11 + 3) = 0u;
  *(v11 + 8) = 1;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0;
  *(v11 + 11) = 0;
  sub_160B4(&v80, v11, &unk_DEA520, &unk_AFDBF0);
  *(v11 + 12) = 0;
  v65 = *v68;
  *(&v81 + 1) = v64;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v80);
  sub_4666C8(v11, boxed_opaque_existential_0, _s23MusicPerformanceContextVMa);
  v67 = v65;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v70, 1, v56, v62, &v80);

  sub_12E1C(v63, &unk_DEA510, "\b]\r");
  sub_12E1C(v83, &unk_DE8E30, "\b]\r");
  sub_1611C(v85);
  sub_4664BC(v11, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v80, &unk_DE8E40, &unk_AF8050);

  swift_unknownObjectRelease();
}

void sub_460BF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v58 = a4;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = *(Strong + qword_DFE2F0);
    if (v14 && (type metadata accessor for JSLiveRadioCaseModelResponse(), (v15 = swift_dynamicCastClass()) != 0))
    {
      v52 = a6;
      v53 = a2;
      v55 = v9;
      v54 = v15;
      v16 = *&v15[OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_jsResults];
      v17 = v13;
      v18 = v14;
      isa = sub_AB3770().super.isa;
      v20 = [v16 itemAtIndexPath:isa];

      type metadata accessor for JSLiveRadioCaseItem(0);
      v57 = v20;
      v21 = swift_dynamicCastClass();
      if (v21)
      {
        v22 = v17;
        v56 = v21;
        v51 = v18;
        v23 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
        v24 = MPModelObject.bestIdentifier(for:)(*v23, 1u);
        if (v25)
        {
          v49 = v24;
          v50 = v25;
          v26 = [v52 innermostModelObject];
          v48 = v26;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
          v47 = swift_allocBox();
          v28 = v27;
          v29 = v22;
          v52 = v26;
          sub_2641C4(v26, v13, static MPMediaLibraryFilteringOptions.none.getter, 0, v28);
          v30 = v53;
          [v53 bounds];
          v68[0] = v30;
          v68[1] = v31;
          v68[2] = v32;
          v68[3] = v33;
          v68[4] = v34;
          v69 = 0;
          PresentationSource.Position.init(source:permittedArrowDirections:)(v68, 15, v60);
          v64[0] = v60[0];
          v64[1] = v60[1];
          v65 = v61;
          v66 = v62;
          v67 = v63;
          v35 = v30;
          PresentationSource.init(viewController:position:)(v29, v64, v59);
          v53 = sub_4A3F1C();

          v46 = v29;
          v36 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v37 = v55;
          (*(v55 + 16))(&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v58, v8);
          v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
          v39 = (v10 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
          v40 = swift_allocObject();
          *(v40 + 16) = v47;
          *(v40 + 24) = v36;
          (*(v37 + 32))(v40 + v38, v11, v8);
          v41 = (v40 + v39);
          v42 = v50;
          *v41 = v49;
          v41[1] = v42;
          *(v40 + ((v39 + 23) & 0xFFFFFFFFFFFFFFF8)) = v56;
          v43 = v51;

          swift_unknownObjectRetain();
          v44 = v53;
          sub_1109D4(v48, v54, 0, 1, v59, sub_466618, v40);

          v45 = v52;
          swift_unknownObjectRelease();
          sub_1611C(v59);
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

void sub_461048(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v90 = a7;
  v89 = a6;
  v88 = a5;
  v86 = a4;
  v7 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v92 = &v84 - v8;
  v91 = type metadata accessor for MetricsPageProperties(0);
  v95 = *(v91 - 8);
  __chkstk_darwin();
  v94 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v85 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v84 - v11;
  __chkstk_darwin();
  v93 = &v84 - v13;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v87 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_AB3820();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PlaybackIntentDescriptor(0);
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_projectBox();
  if (v7 == 1)
  {
    v24 = v23;
    swift_beginAccess();
    if (!(*(v20 + 48))(v24, 1, v19))
    {
      sub_4666C8(v24, v22, type metadata accessor for PlaybackIntentDescriptor);
      sub_37D3DC(0);
      sub_4664BC(v22, type metadata accessor for PlaybackIntentDescriptor);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      sub_12B2FC();
      v28 = v27;
      v30 = v29;

      if (v28)
      {
        ObjectType = swift_getObjectType();
        (*(v30 + 8))(ObjectType, v30);
        v33 = v32;
        swift_unknownObjectRelease();
        v34 = swift_getObjectType();
        (*(v16 + 16))(v18, v86, v15);
        sub_466474(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        sub_ABAD10();
        v35 = (*(v33 + 128))(v96, v34, v33);
        v37 = v36;
        sub_8085C(v96);
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0;
        v35 = 1;
      }

      v39 = v93;
      v38 = v94;
      v40 = v90;
      v41 = v91;
      v42 = v95;
      v43 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
      swift_beginAccess();
      v44 = *(v40 + v43);
      if (v44)
      {
        v45 = v44;
        v46 = [v45 URL];
        if (v46)
        {
          v47 = v46;
          sub_AB3150();

          v48 = 0;
        }

        else
        {
          v48 = 1;
        }

        v50 = sub_AB31C0();
        (*(*(v50 - 8) + 56))(v12, v48, 1, v50);
        sub_F78B4(v12, v39);
      }

      else
      {
        v49 = sub_AB31C0();
        (*(*(v49 - 8) + 56))(v39, 1, 1, v49);
      }

      v51 = v92;
      if (v35 == 1)
      {
        v52 = 0;
      }

      else
      {

        v52 = v35;
      }

      v53 = qword_E71968;
      swift_beginAccess();
      sub_15F84(v26 + v53, v51, &unk_DF1330, &qword_AF9120);
      v56 = v42[6];
      v55 = v42 + 6;
      v54 = v56;
      if (v56(v51, 1, v41) == 1)
      {
        v57 = sub_AB31C0();
        v58 = *(*(v57 - 8) + 56);
        v95 = v55;
        v59 = v35;
        v60 = v37;
        v61 = v26;
        v62 = v41;
        v63 = v39;
        v64 = v52;
        v65 = v85;
        v58(v85, 1, 1, v57);
        v66 = v65;
        v52 = v64;
        v39 = v63;
        MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(0, 0xE000000000000000, 0, 0xE000000000000000, v66, 0, 0, 0, v38);
        v67 = v62;
        v26 = v61;
        v37 = v60;
        if (v54(v51, 1, v67) != 1)
        {
          sub_12E1C(v51, &unk_DF1330, &qword_AF9120);
        }

        if (v59 == 1)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_465FE8(v51, v38, type metadata accessor for MetricsPageProperties);
        if (v35 == 1)
        {
          goto LABEL_33;
        }
      }

      if (v37)
      {
        if (v37 >> 62)
        {
          v68 = sub_ABB060();
          if (v68)
          {
            goto LABEL_26;
          }
        }

        else
        {
          v68 = *(&dword_10 + (v37 & 0xFFFFFFFFFFFFFF8));
          if (v68)
          {
LABEL_26:
            v97 = _swiftEmptyArrayStorage;
            sub_6D410(0, v68 & ~(v68 >> 63), 0);
            if (v68 < 0)
            {
              __break(1u);
              return;
            }

            v95 = v26;
            v70 = v97;
            if ((v37 & 0xC000000000000001) != 0)
            {
              for (i = 0; i != v68; ++i)
              {
                v72 = *(sub_35FC58(i, v37, v69) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

                swift_unknownObjectRelease();
                v97 = v70;
                v74 = v70[2];
                v73 = v70[3];
                if (v74 >= v73 >> 1)
                {
                  sub_6D410((v73 > 1), v74 + 1, 1);
                  v70 = v97;
                }

                v70[2] = v74 + 1;
                v70[v74 + 4] = v72;
              }
            }

            else
            {
              v75 = (v37 + 32);
              do
              {
                v76 = *(*v75 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
                v97 = v70;
                v78 = v70[2];
                v77 = v70[3];

                if (v78 >= v77 >> 1)
                {
                  sub_6D410((v77 > 1), v78 + 1, 1);
                  v70 = v97;
                }

                v70[2] = v78 + 1;
                v70[v78 + 4] = v76;
                ++v75;
                --v68;
              }

              while (v68);
            }

            v39 = v93;
            v38 = v94;
            v26 = v95;
            goto LABEL_41;
          }
        }

        v70 = _swiftEmptyArrayStorage;
        goto LABEL_41;
      }

LABEL_33:
      v70 = 0;
LABEL_41:
      v79 = v89;

      v80 = v87;
      MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v88, v79, 5, 31, v39, v52, 0, 12, v87, 0, 0, 0xFF00u, v38, v70);
      v81 = MetricsReportingController.shared.unsafeMutableAddressor();
      v82 = *&stru_B8.sectname[swift_isaMask & **v81];
      v83 = *v81;
      v82(v80, 0, 0, 0, 0, 0);

      sub_4664BC(v80, type metadata accessor for MetricsEvent.Click);
    }
  }
}

void sub_461A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = *&v6[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_imageDidChangeHandler];
      if (v8)
      {
        v9 = *&v6[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_imageDidChangeHandler + 8];
        v10 = v6;
        v11 = sub_307CC(v8, v9);
        v8(v11);
        sub_17654(v8, v9);
      }

      else
      {
        v12 = v6;
      }

      v13 = *&v7[OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent];

      v14 = *(v13 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_appliedContent + 48);
      if (v14 != 255 && (v14 & 1) == 0)
      {

        v15 = *&v5[qword_E07FF8];
        if (!v15)
        {

          goto LABEL_12;
        }

        v16 = *(*v15 + 184);

        v16(a3);
      }
    }

    else
    {
      v7 = v5;
    }

LABEL_12:
  }
}

void sub_461B78(uint64_t a1, void *a2, uint64_t a3)
{
  sub_4651A0(a1);
  v6 = [a2 contentItem];
  if (!v6)
  {
    return;
  }

  v12 = v6;
  v7 = MPModelStoreBrowseContentItem.kind.getter();
  if (v8 != 5)
  {
    if (v8 == 255)
    {
LABEL_12:

      return;
    }

LABEL_11:
    sub_3EB30(v7, v8);
    goto LABEL_12;
  }

  v9 = *(v3 + qword_E07FF8);
  if (!v9)
  {
    v8 = 5;
    goto LABEL_11;
  }

  v10 = *(*v9 + 176);
  v11 = v7;

  v10(a3);
  sub_3EB30(v11, 5);
}

double sub_461CB8()
{
  v1 = [v0 traitCollection];
  v2 = &v0[qword_E08000];
  if (v0[qword_E08000 + 16])
  {
    sub_464C60();
    v4 = v3;
    v5 = [v0 traitCollection];
    v6 = *&v0[qword_E07FF0];
    v7 = OBJC_IVAR____TtC11MusicJSCore15JSLiveRadioCase_usesFlowLayout;
    swift_beginAccess();
    v8 = sub_155278(v5, *(v6 + v7), v4);

    *v2 = v4;
    v2[1] = v8;
    *(v2 + 16) = 0;
  }

  else
  {
    v4 = *v2;
  }

  left = UIEdgeInsetsZero.left;
  right = UIEdgeInsetsZero.right;
  v11 = *&v0[qword_E71970];
  if (!v11 || (*(v11 + 56) & 1) == 0)
  {
    [v1 horizontalSizeClass];
  }

  [v1 displayScale];
  sub_AB3A00();

  return v4 - right - left;
}

void sub_461E2C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v195 = a3;
  v196 = a2;
  v197 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v191 = &v165 - v5;
  v6 = type metadata accessor for MetricsPageProperties(0);
  v189 = *(v6 - 8);
  v190 = v6;
  __chkstk_darwin();
  v192 = &v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v182 = &v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v188 = &v165 - v9;
  __chkstk_darwin();
  v194 = &v165 - v10;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v12 = &v165 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB3430();
  v180 = *(v13 - 8);
  v181 = v13;
  __chkstk_darwin();
  v179 = &v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_AB3820();
  v184 = *(v193 - 8);
  __chkstk_darwin();
  v183 = &v165 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v187 = &v165 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v18 = &v165 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v178 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v185 = &v165 - v20;
  v21 = type metadata accessor for PlaybackIntentDescriptor(0);
  v22 = *(v21 - 8);
  __chkstk_darwin();
  v24 = &v165 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v26 = &v165 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v28 = &v165 - v27;
  v29 = *&v3[qword_DFE2F0];
  if (v29)
  {
    type metadata accessor for JSLiveRadioCaseModelResponse();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v174 = v12;
      v177 = v28;
      v31 = *(v30 + OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_jsResults);
      v32 = v29;
      isa = sub_AB3770().super.isa;
      v34 = [v31 itemAtIndexPath:isa];

      type metadata accessor for JSLiveRadioCaseItem(0);
      v35 = swift_dynamicCastClass();
      if (!v35)
      {

        goto LABEL_12;
      }

      v36 = v35;
      v175 = v32;
      v176 = v34;
      swift_unknownObjectRetain();
      v37 = v36;
      v38 = [v197 contentItem];
      v39 = [v38 innerObject];

      v173 = v37;
      sub_2641C4(v39, v4, static MPMediaLibraryFilteringOptions.none.getter, 0, v177);

      v40 = [v4 traitCollection];
      v41 = UITraitCollection.mediaPickerConfiguration.getter();

      if (v41)
      {
        v42 = *&v4[qword_DFE298];
        if (v42)
        {

          v43 = [v41 selectionMode];
          v44 = [v197 pickableObjectFor:v43];
          if (v44)
          {
            v45 = v44;
            *&v172 = v42;
            v46 = [v44 musicTypeIdentifier];
            if (v46)
            {
              v47 = v46;
              swift_unknownObjectRelease();

              v48 = v177;
              sub_15F84(v177, v26, &unk_DEA510, "\b]\r");
              if ((*(v22 + 48))(v26, 1, v21) == 1)
              {
                sub_12E1C(v48, &unk_DEA510, "\b]\r");
                swift_unknownObjectRelease();
                sub_12E1C(v26, &unk_DEA510, "\b]\r");

                return;
              }

              sub_465FE8(v26, v24, type metadata accessor for PlaybackIntentDescriptor);
              [v4 loadViewIfNeeded];
              v89 = *&v4[qword_DFE2F8];
              if (v89)
              {
                v90 = v89;
                v91 = sub_AB3770().super.isa;
                v92 = [v90 cellForItemAtIndexPath:v91];

                v93 = v175;
                if (v92)
                {
                  swift_getObjectType();
                  v94 = swift_conformsToProtocol2();
                  if (v94)
                  {
                    v95 = v94;
LABEL_77:
                    sub_3B8FA0(v24, v197, v92, v95);
                    swift_unknownObjectRelease();
                    sub_4664BC(v24, type metadata accessor for PlaybackIntentDescriptor);
                    sub_12E1C(v177, &unk_DEA510, "\b]\r");

                    goto LABEL_12;
                  }

                  v92 = 0;
                }

                v95 = 0;
                goto LABEL_77;
              }

              goto LABEL_91;
            }
          }

          else
          {
          }
        }

        else
        {
        }
      }

      v49 = [v197 contentItem];
      if (v49 && (v50 = v49, v51 = [v49 innerObject], v50, v51))
      {
        v52 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
        v53 = MPModelObject.bestIdentifier(for:)(*v52, 1u);
        if (v54)
        {
          v168 = v54;
          v169 = v53;
          v170 = v51;
          v55 = JSSegueCoordinator.shared.unsafeMutableAddressor();
          [v4 loadViewIfNeeded];
          v56 = qword_DFE2F8;
          v57 = *&v4[qword_DFE2F8];
          if (!v57)
          {
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
            return;
          }

          v58 = v57;
          v59 = sub_AB3770().super.isa;
          v60 = [v58 cellForItemAtIndexPath:v59];

          if (v60)
          {
            sub_D5958(v203);
            v171 = v203[1];
            v172 = v203[0];
            v61 = v204;
            v62 = v205;
            v63 = v206;

            v65 = v171;
            v64 = v172;
          }

          else
          {
            v61 = 0;
            v63 = 0;
            v64 = 0uLL;
            v62 = 255;
            v65 = 0uLL;
          }

          *&v171 = v55;
          v207[0] = v64;
          v207[1] = v65;
          v208 = v61;
          v209 = v62;
          v210 = v63;
          v66 = v4;
          *&v67 = PresentationSource.init(viewController:position:)(v66, v207, v202).n128_u64[0];
          *&v172 = v66;
          [v66 loadViewIfNeeded];
          if (!*&v4[v56])
          {
            goto LABEL_90;
          }

          v68 = _s30CollectionViewSelectionHandlerVMa(0);
          v201[3] = v68;
          v201[4] = &off_CF7E60;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v201);
          v70 = v184;
          v71 = v184 + 16;
          v72 = *(v184 + 16);
          v73 = v193;
          v72(boxed_opaque_existential_0 + *(v68 + 20), v195, v193);
          swift_unknownObjectWeakInit();
          sub_15F84(v201, &v198, &unk_DE8E30, "\b]\r");
          v74 = v185;
          v167 = v71;
          if (*(&v199 + 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
            v75 = swift_dynamicCast();
            v76 = *(v68 - 8);
            (*(v76 + 56))(v18, v75 ^ 1u, 1, v68);
            if ((*(v76 + 48))(v18, 1, v68) != 1)
            {
              v72(v74, &v18[*(v68 + 20)], v73);
              sub_4664BC(v18, _s30CollectionViewSelectionHandlerVMa);
              v77 = 0;
LABEL_32:
              (*(v70 + 56))(v74, v77, 1, v73);
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong && (v79 = Strong, sub_12B2FC(), v81 = v80, v83 = v82, v79, v81))
              {
                ObjectType = swift_getObjectType();
                (*(v83 + 8))(ObjectType, v83);
                v86 = v85;
                swift_unknownObjectRelease();
                v87 = v178;
                sub_15F84(v74, v178, &unk_DE8E20, &qword_AF7990);
                if ((*(v70 + 48))(v87, 1, v73) == 1)
                {
                  sub_12E1C(v87, &unk_DE8E20, &qword_AF7990);
                  v198 = 0u;
                  v199 = 0u;
                  v200 = 0;
                }

                else
                {
                  (*(v70 + 32))(v183, v87, v73);
                  sub_466474(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                  sub_ABAD10();
                }

                v97 = v180;
                v96 = v181;
                v98 = v179;
                v99 = swift_getObjectType();
                sub_3B8F68(v99);
                v88 = sub_21CCAC(1, v98, &v198, v99, v86);
                (*(v97 + 8))(v98, v96);
                sub_12E1C(&v198, &qword_DF2BD0, &unk_AFDC00);
                sub_12E1C(v74, &unk_DE8E20, &qword_AF7990);
                swift_unknownObjectRelease();
              }

              else
              {
                sub_12E1C(v74, &unk_DE8E20, &qword_AF7990);
                v88 = 0;
              }

              v100 = swift_unknownObjectWeakLoadStrong();
              v166 = v72;
              if (v100)
              {
                v101 = v100;
                sub_12AFE8();
                v103 = v102;
              }

              else
              {
                v103 = 0;
              }

              sub_15F28(v202, &v198);
              v104 = v187;
              sub_15F84(v201, (v187 + 104), &unk_DE8E30, "\b]\r");
              v105 = v186;
              sub_15F84(v177, v104 + *(v186 + 28), &unk_DEA510, "\b]\r");
              *v104 = 0u;
              *(v104 + 16) = 0u;
              *(v104 + 32) = 0u;
              *(v104 + 48) = 0u;
              v106 = (&dword_0 + 1);
              *(v104 + 64) = 1;
              *(v104 + 72) = 0;
              *(v104 + 80) = 0;
              *(v104 + 88) = 0;
              sub_160B4(&v198, v104, &unk_DEA520, &unk_AFDBF0);
              v107 = v197;
              *(v104 + 96) = v197;
              v108 = *v171;
              *(&v199 + 1) = v105;
              v109 = __swift_allocate_boxed_opaque_existential_0(&v198);
              sub_4666C8(v104, v109, _s23MusicPerformanceContextVMa);
              v110 = v107;
              v111 = v108;
              JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v173, 0, v88, v103, &v198);
              sub_1611C(v202);
              sub_4664BC(v104, _s23MusicPerformanceContextVMa);

              sub_12E1C(&v198, &unk_DE8E40, &unk_AF8050);

              sub_12E1C(v201, &unk_DE8E30, "\b]\r");
              sub_12B2FC();
              if (v113)
              {
                v114 = v112;
                v115 = swift_getObjectType();
                (*(v114 + 8))(v115, v114);
                v117 = v116;
                swift_unknownObjectRelease();
                v118 = swift_getObjectType();
                v166(v183, v196, v193);
                sub_466474(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                sub_ABAD10();
                v106 = (*(v117 + 128))(v202, v118, v117);
                v120 = v119;
                sub_8085C(v202);
                swift_unknownObjectRelease();
              }

              else
              {
                v120 = 0;
              }

              v121 = v191;
              v122 = v192;
              v123 = v194;
              v124 = v190;
              v125 = v188;
              v126 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
              v127 = v173;
              swift_beginAccess();
              v128 = *&v127[v126];
              v129 = v128;
              swift_unknownObjectRelease();
              if (v128)
              {
                v130 = [v129 URL];
                if (v130)
                {
                  v131 = v130;
                  sub_AB3150();

                  v132 = 0;
                }

                else
                {
                  v132 = 1;
                }

                v134 = sub_AB31C0();
                (*(*(v134 - 8) + 56))(v125, v132, 1, v134);
                sub_F78B4(v125, v123);
              }

              else
              {
                v133 = sub_AB31C0();
                (*(*(v133 - 8) + 56))(v123, 1, 1, v133);
              }

              v135 = v177;
              if (v106 == &dword_0 + 1)
              {
                v197 = 0;
              }

              else
              {

                v197 = v106;
              }

              v136 = qword_E71968;
              v137 = v172;
              swift_beginAccess();
              sub_15F84(v137 + v136, v121, &unk_DF1330, &qword_AF9120);
              v138 = *(v189 + 48);
              if (v138(v121, 1, v124) == 1)
              {
                v139 = sub_AB31C0();
                v140 = v182;
                (*(*(v139 - 8) + 56))(v182, 1, 1, v139);
                MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)(0, 0xE000000000000000, 0, 0xE000000000000000, v140, 0, 0, 0, v122);
                v141 = v138(v121, 1, v124);
                v142 = v175;
                if (v141 != 1)
                {
                  sub_12E1C(v121, &unk_DF1330, &qword_AF9120);
                }
              }

              else
              {
                sub_465FE8(v121, v122, type metadata accessor for MetricsPageProperties);
                v142 = v175;
              }

              if (v106 == &dword_0 + 1)
              {
                v143 = 0;
                v145 = v168;
                v144 = v169;
                v146 = v197;
                v147 = v194;
LABEL_86:
                v161 = v174;
                MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v144, v145, 7, 31, v147, v146, 0, 12, v174, 0x1CuLL, 0, 0, v122, v143);
                v162 = MetricsReportingController.shared.unsafeMutableAddressor();
                v163 = *&stru_B8.sectname[swift_isaMask & **v162];
                v164 = *v162;
                v163(v161, 0, 0, 0, 0, 0);
                swift_unknownObjectRelease();
                sub_4664BC(v161, type metadata accessor for MetricsEvent.Click);
                sub_12E1C(v135, &unk_DEA510, "\b]\r");

                return;
              }

              v147 = v194;
              if (v120)
              {
                if (v120 >> 62)
                {
                  v158 = v194;
                  v159 = sub_ABB060();
                  v147 = v158;
                  v148 = v159;
                  if (v159)
                  {
                    goto LABEL_67;
                  }
                }

                else
                {
                  v148 = *(&dword_10 + (v120 & 0xFFFFFFFFFFFFFF8));
                  if (v148)
                  {
LABEL_67:
                    v201[0] = _swiftEmptyArrayStorage;
                    sub_6D410(0, v148 & ~(v148 >> 63), 0);
                    if ((v148 & 0x8000000000000000) == 0)
                    {
                      v143 = v201[0];
                      if ((v120 & 0xC000000000000001) != 0)
                      {
                        v150 = 0;
                        do
                        {
                          v151 = *(sub_35FC58(v150, v120, v149) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

                          swift_unknownObjectRelease();
                          v201[0] = v143;
                          v153 = v143[2];
                          v152 = v143[3];
                          if (v153 >= v152 >> 1)
                          {
                            sub_6D410((v152 > 1), v153 + 1, 1);
                            v143 = v201[0];
                          }

                          ++v150;
                          v143[2] = v153 + 1;
                          v143[v153 + 4] = v151;
                        }

                        while (v148 != v150);
                      }

                      else
                      {
                        v154 = (v120 + 32);
                        do
                        {
                          v155 = *(*v154 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
                          v201[0] = v143;
                          v157 = v143[2];
                          v156 = v143[3];

                          if (v157 >= v156 >> 1)
                          {
                            sub_6D410((v156 > 1), v157 + 1, 1);
                            v143 = v201[0];
                          }

                          v143[2] = v157 + 1;
                          v143[v157 + 4] = v155;
                          ++v154;
                          --v148;
                        }

                        while (v148);
                      }

                      v142 = v175;
                      v135 = v177;
                      v122 = v192;
                      v147 = v194;
                      goto LABEL_85;
                    }

                    __break(1u);
                    goto LABEL_89;
                  }
                }

                v160 = v147;

                v147 = v160;
                v143 = _swiftEmptyArrayStorage;
              }

              else
              {
                v143 = 0;
              }

LABEL_85:
              v145 = v168;
              v144 = v169;
              v146 = v197;
              goto LABEL_86;
            }
          }

          else
          {
            sub_12E1C(&v198, &unk_DE8E30, "\b]\r");
            (*(*(v68 - 8) + 56))(v18, 1, 1, v68);
          }

          sub_12E1C(v18, &qword_E037A0, &unk_AF8B30);
          v77 = 1;
          goto LABEL_32;
        }

        swift_unknownObjectRelease();
        sub_12E1C(v177, &unk_DEA510, "\b]\r");
      }

      else
      {
        swift_unknownObjectRelease();
        sub_12E1C(v177, &unk_DEA510, "\b]\r");
      }

LABEL_12:
      swift_unknownObjectRelease();
    }
  }
}

void sub_463420()
{
  v1 = *(v0 + qword_E07FF0);
  v2 = type metadata accessor for JSLiveRadioCaseModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication27JSLiveRadioCaseModelRequest_liveRadioCaseViewModel] = v1;
  v49.receiver = v3;
  v49.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v49, "init");
  sub_13C80(0, &qword_DF9840, off_CE5588);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v47 = v5;
  v8 = [v7 kindWithModelClass:ObjCClassFromMetadata];
  [v47 setItemKind:v8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_B00DB0;
  *(v9 + 32) = sub_AB92A0();
  *(v9 + 40) = v10;
  *(v9 + 48) = sub_AB92A0();
  *(v9 + 56) = v11;
  *(v9 + 64) = sub_AB92A0();
  *(v9 + 72) = v12;
  *(v9 + 80) = sub_AB92A0();
  *(v9 + 88) = v13;
  *(v9 + 96) = sub_AB92A0();
  *(v9 + 104) = v14;
  *(v9 + 112) = sub_AB92A0();
  *(v9 + 120) = v15;
  *(v9 + 128) = sub_AB92A0();
  *(v9 + 136) = v16;
  *(v9 + 144) = sub_AB92A0();
  *(v9 + 152) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_AF4EC0;
  *(v20 + 32) = sub_AB92A0();
  *(v20 + 40) = v21;
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_AF4EC0;
  *(v22 + 32) = sub_AB92A0();
  *(v22 + 40) = v23;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_AF85F0;
  *(v24 + 32) = sub_AB92A0();
  *(v24 + 40) = v25;
  *(v24 + 48) = sub_AB92A0();
  *(v24 + 56) = v26;
  isa = sub_AB9740().super.isa;
  v28 = [objc_opt_self() propertySetWithProperties:isa];

  v29 = sub_13C80(0, &unk_E087D0, MPModelRadioStation_ptr);
  v30 = sub_10F414(v29);
  v31 = [v28 propertySetByCombiningWithPropertySet:v30];

  v32 = swift_getObjCClassFromMetadata();
  v33 = [v32 requiredLibraryNavigationHandlerProperties];
  v34 = [v32 requiredStoreNavigationHandlerProperties];
  v35 = [v33 propertySetByCombiningWithPropertySet:v34];

  v36 = [v31 propertySetByCombiningWithPropertySet:v35];
  *(v22 + 48) = v36;
  sub_96EA4(v22);
  swift_setDeallocating();
  sub_12E1C(v22 + 32, &unk_DE8E80, &unk_AF87C0);
  v37 = objc_allocWithZone(MPPropertySet);
  v38 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v39 = sub_AB8FD0().super.isa;

  v40 = [v37 initWithProperties:v38 relationships:v39];

  *(inited + 48) = v40;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80, &unk_AF87C0);
  v41 = objc_allocWithZone(MPPropertySet);
  v42 = sub_AB9740().super.isa;

  v43 = sub_AB8FD0().super.isa;

  v44 = [v41 initWithProperties:v42 relationships:v43];

  [v47 setItemProperties:v44];
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_465F80;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_147;
  v46 = _Block_copy(aBlock);

  [v47 performWithResponseHandler:v46];
  _Block_release(v46);
}

void sub_463A50(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_AB7C10();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB7C50();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
    v21 = sub_ABA150();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = a1;
    aBlock[4] = sub_465FE0;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_91_0;
    v15 = _Block_copy(aBlock);
    v20 = v8;
    v16 = v15;
    v17 = a1;
    v19 = v13;

    sub_AB7C30();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_466474(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
    sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
    sub_ABABB0();
    v18 = v21;
    sub_ABA160();

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v20);
    _Block_release(v16);
  }
}

double sub_463D7C(uint64_t a1, void *a2)
{
  v4 = a2;
  sub_3B4724(a2);
  v5 = *(a1 + qword_E71970);
  if (v5)
  {
    v6 = *(v5 + 216);
    *(v5 + 216) = a2;
    v7 = v4;
  }

  if (*(sub_4645CC() + 81) == 1)
  {
    v9 = sub_4A3ECC(v12);
    if (*v8)
    {
      v10 = v8;

      *v10 = &_swiftEmptySetSingleton;
    }

    (v9)(v12, 0);
  }

  else
  {
  }

  return result;
}

void sub_463E64(void *a1)
{
  type metadata accessor for FeaturedMaterialCell(0);
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    return;
  }

  v4 = *(v1 + qword_DFE2F0);
  if (!v4)
  {
    return;
  }

  v5 = v3;
  v22 = a1;
  v6 = [v4 results];
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  isa = sub_AB3770().super.isa;
  v9 = [v7 itemAtIndexPath:isa];

  if (!v9)
  {
    goto LABEL_10;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
LABEL_16:

    goto LABEL_17;
  }

  v11 = [v10 contentItem];
  if (!v11)
  {
LABEL_9:
    swift_unknownObjectRelease();
LABEL_10:

    return;
  }

  v12 = v11;
  v13 = MPModelStoreBrowseContentItem.kind.getter();
  v15 = v14;

  if (v15 != 5)
  {
    if (v15 == 255)
    {
      goto LABEL_9;
    }

    sub_3EB30(v13, v15);
    goto LABEL_16;
  }

  v16 = sub_4A3F1C();
  v17 = v13;
  sub_10AC20(v13);
  v19 = v18;
  sub_3EB30(v13, 5);

  v20 = v22;
  v21 = [v17 shouldVisuallyDisableFor:v19];
  (*(&stru_158.offset + (swift_isaMask & *v5)))(v21);

  sub_3EB30(v13, 5);
LABEL_17:

  swift_unknownObjectRelease();
}

double sub_4640C8(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB3790();
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a1;
  sub_466730();
  v18 = v17;

  (*(v10 + 8))(v12, v9);
  return v18;
}

void sub_4641FC(void *a1)
{
  v1 = a1;
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 music_inheritedLayoutInsets];
  }

  else
  {
    __break(1u);
  }
}

void sub_46427C()
{
  v1 = v0;
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v0 isViewLoaded])
  {
    return;
  }

  [v0 loadViewIfNeeded];
  v31 = qword_DFE2F8;
  v7 = *&v0[qword_DFE2F8];
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = v7;
  v9 = [v8 indexPathsForVisibleItems];
  v10 = sub_AB9760();

  v30 = *(v10 + 16);
  if (!v30)
  {
LABEL_19:

    return;
  }

  v11 = 0;
  v26 = v1;
  v27 = qword_E07FE0;
  v28 = v2;
  v29 = v3 + 16;
  v12 = (v3 + 8);
  while (v11 < *(v10 + 16))
  {
    (*(v3 + 16))(v6, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v2);
    [v1 loadViewIfNeeded];
    v13 = *&v1[v31];
    if (!v13)
    {
      goto LABEL_22;
    }

    v14 = v13;
    isa = sub_AB3770().super.isa;
    v16 = [v14 cellForItemAtIndexPath:isa];

    if (v16)
    {
      type metadata accessor for LiveRadioCell(0);
      v17 = swift_dynamicCastClass();
      if (v17)
      {
        v18 = v17;
        v19 = v1[v27];
        v20 = OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isTopHairlineVisible;
        v21 = v17[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isTopHairlineVisible];
        v17[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isTopHairlineVisible] = v19;
        if (v19 == v21)
        {
          v2 = v28;
          (*v12)(v6, v28);
        }

        else
        {
          v22 = [v17 traitCollection];
          v23 = [v22 horizontalSizeClass];

          if (v23 == &dword_0 + 2 && v18[OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_alwaysUseCompactLayout] == 1)
          {
            v24 = v18[OBJC_IVAR____TtC16MusicApplication13LiveRadioCell_isHeaderRowCell] ^ 1;
          }

          else
          {
            v24 = 0;
          }

          v25 = sub_151290();
          [v25 setHidden:v24 & 1 | ((v18[v20] & 1) == 0)];
          v2 = v28;
          (*v12)(v6, v28);

          v1 = v26;
        }

        goto LABEL_7;
      }
    }

    (*v12)(v6, v2);
LABEL_7:
    if (v30 == ++v11)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void *sub_4645CC()
{
  v1 = qword_E07FE8;
  if (*&v0[qword_E07FE8])
  {
    v2 = *&v0[qword_E07FE8];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E086F0, &qword_B104D0);
    swift_allocObject();
    v2 = sub_2C01E0(v0, v4, 0, 1);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_464698@<D0>(_OWORD *a1@<X8>)
{
  if (!*(v1 + qword_DFE2F0))
  {
    goto LABEL_9;
  }

  type metadata accessor for JSLiveRadioCaseModelResponse();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = *(v3 + OBJC_IVAR____TtC16MusicApplication28JSLiveRadioCaseModelResponse_jsResults);
  isa = sub_AB3770().super.isa;
  v6 = [v4 itemAtIndexPath:isa];

  if (!v6)
  {
    goto LABEL_9;
  }

  type metadata accessor for JSLiveRadioCaseItem(0);
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_9:
    sub_465CC(&v59);
    goto LABEL_10;
  }

  v8 = v7;
  v27 = IndexPath.safeItem.getter();
  v9 = sub_27EEA4(v8);
  v26 = v10;
  v11 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_storeItemMetadata;
  swift_beginAccess();
  v12 = *(v8 + v11);
  if (v12)
  {
    v13 = v12;
    v14 = [v13 name];
    if (v14)
    {
      v15 = v14;
      v16 = sub_AB92A0();
      v18 = v17;
    }

    else
    {

      v16 = 0;
      v18 = 0;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v24 = OBJC_IVAR____TtC11MusicJSCore11JSMediaItem_videoBackgroundArtwork;
  swift_beginAccess();
  v25 = *(v8 + v24) != 0;
  *&v28 = v9;
  *(&v28 + 1) = v26;
  *&v29 = v16;
  *(&v29 + 1) = v18;
  *&v30 = v8;
  *(&v30 + 1) = v27;
  LOBYTE(v31) = v25;
  *(&v31 + 1) = 5122;
  *(&v31 + 1) = 0;
  *&v32 = 0;
  *(&v32 + 1) = v8;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36[0] = 1;
  *&v36[8] = 0;
  *&v36[16] = 0;
  v36[24] = 2;
  v37[0] = v9;
  v37[1] = v26;
  v37[2] = v16;
  v37[3] = v18;
  v37[4] = v8;
  v37[5] = v27;
  v38 = v25;
  v39 = 5122;
  v40 = 0;
  v41 = 0;
  v42 = v8;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 1;
  v47 = 0;
  v48 = 0;
  v49 = 2;
  swift_unknownObjectRetain();
  sub_465F4(&v28, &v59);
  sub_46650(v37);
  v56 = v34;
  v57 = v35;
  v58[0] = *v36;
  *(v58 + 9) = *&v36[9];
  v52 = v30;
  v53 = v31;
  v54 = v32;
  v55 = v33;
  v50 = v28;
  v51 = v29;
  UIScreen.Dimensions.size.getter();
  v65 = v56;
  v66 = v57;
  v67[0] = v58[0];
  *(v67 + 9) = *(v58 + 9);
  v61 = v52;
  v62 = v53;
  v63 = v54;
  v64 = v55;
  v59 = v50;
  v60 = v51;
LABEL_10:
  v19 = v66;
  a1[6] = v65;
  a1[7] = v19;
  a1[8] = v67[0];
  *(a1 + 137) = *(v67 + 9);
  v20 = v62;
  a1[2] = v61;
  a1[3] = v20;
  v21 = v64;
  a1[4] = v63;
  a1[5] = v21;
  result = *&v59;
  v23 = v60;
  *a1 = v59;
  a1[1] = v23;
  return result;
}

id sub_464988()
{
  v1 = v0;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  [result bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  Width = CGRectGetWidth(v26);
  sub_471A4();
  if (sub_AB38F0())
  {
    result = [v1 view];
    if (result)
    {
      v12 = result;
      [result bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v27.origin.x = v14;
      v27.origin.y = v16;
      v27.size.width = v18;
      v27.size.height = v20;
      Width = CGRectGetWidth(v27);
      if (sub_AB3900())
      {
        return &dword_0 + 2;
      }

      goto LABEL_5;
    }

LABEL_11:
    __break(1u);
    return result;
  }

LABEL_5:
  v21 = [v1 traitCollection];
  v22 = [v21 preferredContentSizeCategory];

  LOBYTE(v21) = sub_ABA320();
  if (v21)
  {
    return &dword_0 + 2;
  }

  v23 = *&v1[qword_E07FF0];
  v24 = OBJC_IVAR____TtC11MusicJSCore15JSLiveRadioCase_usesFlowLayout;
  swift_beginAccess();
  if (*(v23 + v24))
  {
    return &dword_0 + 2;
  }

  else
  {
    return &dword_0 + 3;
  }
}

id sub_464B90()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    [result bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v11.origin.x = v4;
    v11.origin.y = v6;
    v11.size.width = v8;
    v11.size.height = v10;
    CGRectGetWidth(v11);
    sub_471A4();
    return (sub_AB38F0() & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_464C60()
{
  v1 = v0;
  [v0 loadViewIfNeeded];
  v2 = qword_DFE2F8;
  v3 = *&v0[qword_DFE2F8];
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v0 loadViewIfNeeded];
  v12 = *&v0[v2];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v24 = v11;
  v25 = v7;
  [v12 music_inheritedLayoutInsets];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v14 = v13;
  [v13 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v27.origin.x = v16;
  v27.origin.y = v18;
  v27.size.width = v20;
  v27.size.height = v22;
  Width = CGRectGetWidth(v27);
  sub_471A4();
  if (sub_AB38F0())
  {
    v23 = [v1 traitCollection];
    sub_464988();
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1, 1u, 0, &Width, v9);
    [v23 displayScale];
    v28.origin.x = v5;
    v28.size.height = v24;
    v28.origin.y = v25;
    v28.size.width = v9;
    CGRectGetWidth(v28);
    sub_AB3A00();
  }
}

id sub_464E60()
{
  v1 = v0;
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v16.origin.x = v5;
    v16.origin.y = v7;
    v16.size.width = v9;
    v16.size.height = v11;
    Width = CGRectGetWidth(v16);
    sub_471A4();
    if ((sub_AB38F0() & 1) != 0 && (v12 = *&v1[qword_E07FF0], v13 = OBJC_IVAR____TtC11MusicJSCore15JSLiveRadioCase_usesFlowLayout, swift_beginAccess(), (*(v12 + v13) & 1) == 0))
    {
      v14 = type metadata accessor for ShelfCollectionViewLayout(0);
    }

    else
    {
      v14 = UICollectionViewFlowLayout;
    }

    return [objc_allocWithZone(v14) init];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_464F8C()
{
  v12 = sub_464E60();
  [v0 loadViewIfNeeded];
  v1 = qword_DFE2F8;
  v2 = *&v0[qword_DFE2F8];
  if (!v2)
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = [v2 collectionViewLayout];

  if (v3 != v12)
  {
    [v0 loadViewIfNeeded];
    v4 = *&v0[v1];
    if (v4)
    {
      [v4 setCollectionViewLayout:v12 animated:0];
      type metadata accessor for ShelfCollectionViewLayout(0);
      if (swift_dynamicCastClass())
      {
        [v0 loadViewIfNeeded];
        v5 = *&v0[v1];
        if (!v5)
        {
LABEL_17:
          __break(1u);
          return;
        }

        [v5 setContentOffset:0 animated:{0.0, 0.0}];
      }

      [v0 loadViewIfNeeded];
      v6 = *&v0[v1];
      if (v6)
      {
        v7 = [v6 collectionViewLayout];
        v8 = &v0[qword_E08000];
        *v8 = 0;
        *(v8 + 1) = 0;
        v8[16] = 1;
        [swift_getObjCClassFromObject() invalidationContextClass];
        swift_getObjCClassMetadata();
        sub_13C80(0, &unk_DFED50, UICollectionViewLayoutInvalidationContext_ptr);
        swift_dynamicCastMetatypeUnconditional();
        v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        [v7 invalidateLayoutWithContext:v9];

        v10 = qword_E71970;
        v11 = *&v0[qword_E71970];
        if (v11)
        {

          *(v11 + 224) = sub_464B90();

          if (*&v0[v10])
          {

            sub_38AC10();
          }
        }

        goto LABEL_11;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_11:
}

void sub_4651A0(uint64_t a1)
{
  v3 = *(v1 + qword_DFE2F0);
  if (v3)
  {
    v4 = [v3 results];
    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = v4;
    isa = sub_AB3770().super.isa;
    v7 = [v5 itemAtIndexPath:isa];

    if (v7)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8 || (v9 = v8, (v10 = [v8 contentItem]) == 0))
      {
LABEL_9:

        swift_unknownObjectRelease();
        return;
      }

      v11 = v10;
      v12 = MPModelStoreBrowseContentItem.kind.getter();
      v14 = v13;

      if (v14 != 5)
      {
        if (v14 != 255)
        {
          sub_3EB30(v12, v14);
        }

        goto LABEL_9;
      }

      v15 = [v9 videoBackgroundArtworkCatalog];
      v16 = *(a1 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_lockupVideoArtworkCatalog);
      *(a1 + OBJC_IVAR____TtC16MusicApplication20FeaturedMaterialCell_lockupVideoArtworkCatalog) = v15;
      v17 = v15;

      v18 = v17;
      sub_751F4(v15);
      sub_45CBB4();

      v19 = [v9 backgroundArtworkCatalog];
      if (!v19)
      {
        v19 = [v12 artworkCatalog];
      }

      v20 = OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_lockupImageArtworkCatalog;
      swift_beginAccess();
      v21 = *(a1 + v20);
      *(a1 + v20) = v19;
      v22 = v19;

      sub_74EA4(v19);
      sub_3EB30(v12, 5);
      swift_unknownObjectRelease();
    }
  }
}

double sub_465414()
{

  sub_12E1C(v0 + qword_E71968, &unk_DF1330, &qword_AF9120);

  return result;
}

id sub_465494()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSLiveRadioCaseViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

double sub_4654CC(uint64_t a1)
{

  sub_12E1C(a1 + qword_E71968, &unk_DF1330, &qword_AF9120);

  return result;
}

uint64_t type metadata accessor for JSLiveRadioCaseViewController(uint64_t a1)
{
  result = qword_E08038;
  if (!qword_E08038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_4655A4(uint64_t a1)
{
  sub_70A34(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_465738(void *a1)
{
  v3 = *v1 + qword_E08000;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  [swift_getObjCClassFromObject() invalidationContextClass];
  swift_getObjCClassMetadata();
  sub_13C80(0, &unk_DFED50, UICollectionViewLayoutInvalidationContext_ptr);
  swift_dynamicCastMetatypeUnconditional();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [a1 invalidateLayoutWithContext:v4];
}

double sub_465830(void *a1)
{
  [a1 bounds];
  HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(0, 1u, 0, v4, v1);
  v2 = *&v4[1];
  sub_464988();
  return v2;
}

uint64_t sub_4658B8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = qword_E71968;
  swift_beginAccess();
  return sub_15F84(v3 + v4, a1, &unk_DF1330, &qword_AF9120);
}

double sub_465924(uint64_t a1)
{
  v3 = *v1;
  v4 = qword_E71968;
  swift_beginAccess();
  sub_160B4(a1, v3 + v4, &unk_DF1330, &qword_AF9120);
  swift_endAccess();
  return result;
}

double sub_4659FC@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + qword_E71970);

  return result;
}

double sub_465A14@<D0>(_OWORD *a1@<X8>)
{
  sub_464698(v7);
  v2 = v7[7];
  a1[6] = v7[6];
  a1[7] = v2;
  a1[8] = v8[0];
  *(a1 + 137) = *(v8 + 9);
  v3 = v7[3];
  a1[2] = v7[2];
  a1[3] = v3;
  v4 = v7[5];
  a1[4] = v7[4];
  a1[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  a1[1] = v6;
  return result;
}

uint64_t sub_465B00(uint64_t a1)
{
  *(a1 + 8) = sub_466474(&qword_E08720, type metadata accessor for JSLiveRadioCaseViewController, &unk_B104B0);
  result = sub_466474(&qword_E08728, type metadata accessor for JSLiveRadioCaseViewController, &unk_B104D8);
  *(a1 + 16) = result;
  return result;
}

void sub_465B84()
{
  v1 = &v0[qword_E08000];
  if (v0[qword_E08000 + 16])
  {
    sub_464C60();
    v3 = v2;
    v4 = [v0 traitCollection];
    v5 = *&v0[qword_E07FF0];
    v6 = OBJC_IVAR____TtC11MusicJSCore15JSLiveRadioCase_usesFlowLayout;
    swift_beginAccess();
    v7 = sub_155278(v4, *(v5 + v6), v3);

    *v1 = v3;
    v1[1] = v7;
    *(v1 + 16) = 0;
  }
}

void sub_465C4C()
{
  *(v0 + qword_E07FE0) = 0;
  *(v0 + qword_E07FE8) = 0;
  v1 = qword_E71968;
  v2 = type metadata accessor for MetricsPageProperties(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + qword_E71970) = 0;
  *(v0 + qword_E07FF8) = 0;
  v3 = v0 + qword_E08000;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = (v0 + qword_E08008);
  *v4 = 0;
  v4[1] = 0;
  sub_ABAFD0();
  __break(1u);
}

void sub_465D50(void *a1, uint64_t a2)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v16[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 clearArtworkCatalogs];
  ObjectType = swift_getObjectType();
  v11 = swift_conformsToProtocol2();
  if (v11)
  {
    (*(v11 + 8))(ObjectType, v11);
    v13 = v12;
    v14 = swift_getObjectType();
    (*(v6 + 16))(v9, a2, v5);
    sub_466474(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    sub_ABAD10();
    (*(v13 + 120))(a1, v16, v14, v13);
    sub_8085C(v16);
    swift_unknownObjectRelease();
    if (*(v2 + qword_E71970))
    {

      sub_38E908(a2, a1);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_465F48()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double block_copy_helper_147(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_465FA0()
{

  return swift_deallocObject();
}

uint64_t sub_465FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_466050()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_466114(char *a1, uint64_t a2)
{
  sub_AB3820();
  v5 = *(v2 + 16);

  sub_460288(a1, a2, v5);
}

uint64_t sub_466198()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_466288(uint64_t a1, void *a2)
{
  v5 = *(sub_AB3820() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 16);
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_460BF4(a1, a2, v8, v2 + v6, v9, v10);
}

uint64_t sub_466344()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_466410()
{
  v1 = *(sub_AB3820() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_461A08(v2, v3, v4);
}

uint64_t sub_466474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4664BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_46651C()
{
  v1 = sub_AB3820();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_466618(unsigned __int8 a1)
{
  v3 = *(sub_AB3820() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + v5);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v6);

  sub_461048(a1, v7, v8, v1 + v4, v10, v11, v12);
}

uint64_t sub_4666C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_466730()
{
  v1 = &v0[qword_E08000];
  if (v0[qword_E08000 + 16])
  {
    sub_464C60();
    v3 = v2;
    v4 = [v0 traitCollection];
    v5 = *&v0[qword_E07FF0];
    v6 = OBJC_IVAR____TtC11MusicJSCore15JSLiveRadioCase_usesFlowLayout;
    swift_beginAccess();
    v7 = sub_155278(v4, *(v5 + v6), v3);

    v8 = v3;
    *v1 = v3;
    v1[1] = v7;
    *(v1 + 16) = 0;
  }

  else
  {
    v8 = *v1;
  }

  CGSize.nonNegative()(v8);
}

double sub_46687C(void *a1, unint64_t a2, void (*a3)(_OWORD *__return_ptr, uint64_t), uint64_t a4, uint64_t a5, void (*a6)(uint64_t, double))
{
  v41 = a1;
  v42 = a6;
  v40 = a5;
  v37 = a4;
  v8 = v6;
  v45 = a2;
  v39 = sub_AB3820();
  v9 = *(v39 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB3430();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v44 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v34 - v14;
  sub_AB3420();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v43 = v11;
    a3(v47, v45);

    v55 = v47[6];
    v56 = v47[7];
    v57[0] = v48[0];
    *(v57 + 9) = *(v48 + 9);
    v51 = v47[2];
    v52 = v47[3];
    v53 = v47[4];
    v54 = v47[5];
    v49 = v47[0];
    v50 = v47[1];
    if (sub_A996C(&v49) == 1)
    {
      (*(v12 + 8))(v15, v43);
    }

    else
    {
      v64 = v55;
      v65 = v56;
      v66[0] = v57[0];
      *(v66 + 9) = *(v57 + 9);
      v60 = v51;
      v61 = v52;
      v62 = v53;
      v63 = v54;
      v58 = v49;
      v59 = v50;
      v36 = *(v8 + 88);
      v19 = swift_allocObject();
      v37 = v19;
      swift_weakInit();
      v21 = v38;
      v20 = v39;
      (*(v9 + 16))(v38, v45, v39);
      (*(v12 + 16))(v44, v15, v43);
      v22 = (*(v9 + 80) + 24) & ~*(v9 + 80);
      v23 = (v10 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v34 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
      v35 = (v23 + 175) & 0xFFFFFFFFFFFFFFF8;
      v45 = (*(v12 + 80) + v35 + 10) & ~*(v12 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = v19;
      (*(v9 + 32))(v24 + v22, v21, v20);
      v25 = v41;
      *(v24 + v23) = v41;
      v26 = (v24 + v34);
      v27 = v59;
      *v26 = v58;
      v26[1] = v27;
      v28 = v63;
      v26[4] = v62;
      v26[5] = v28;
      v29 = v61;
      v26[2] = v60;
      v26[3] = v29;
      *(v26 + 137) = *(v66 + 9);
      v30 = v66[0];
      v26[7] = v65;
      v26[8] = v30;
      v26[6] = v64;
      v31 = v24 + v35;
      *v31 = 0;
      *(v31 + 8) = 1025;
      v32 = v43;
      (*(v12 + 32))(v24 + v45, v44, v43);

      v33 = v25;
      sub_15F84(v47, &v46, qword_DF1340, &unk_B07BD0);
      sub_48C6A0(v42, v24);
      sub_12E1C(v47, qword_DF1340, &unk_B07BD0);
      (*(v12 + 8))(v15, v32);
    }
  }

  else
  {
    (*(v12 + 8))(v15, v11);
  }

  return result;
}

uint64_t sub_466CE8()
{
  v0 = sub_AB7CC0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v3 = sub_ABA150();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = sub_AB7CF0();
  result = (*(v1 + 8))(v3, v0);
  if (v4)
  {
    v6 = [objc_opt_self() sharedApplication];
    v7 = [v6 applicationState];

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v10 = Strong;
        v11 = UIScrollView.isScrolling.getter();

        if ((v11 & 1) == 0)
        {
          v12 = swift_unknownObjectWeakLoadStrong();
          if (v12)
          {
            v13 = v12;
            v14 = sub_4D39CC();
            if (v14)
            {
              v15 = v14;
              v16 = sub_4D3DD0();
              v17 = UIScrollView.isScrolling.getter();

              if ((v17 & 1) == 0)
              {
                v18 = OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_visibleViewControllers;
                swift_beginAccess();
                v19 = *&v15[v18];

                v8 = sub_472FF8(v13, v19);

                return v8 & 1;
              }
            }

            else
            {
            }
          }
        }
      }

      v8 = 1;
    }

    return v8 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_466F18()
{
  v0 = sub_AB7CC0();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v3 = sub_ABA150();
  (*(v1 + 104))(v3, enum case for DispatchPredicate.onQueue(_:), v0);
  v4 = sub_AB7CF0();
  result = (*(v1 + 8))(v3, v0);
  if (v4)
  {
    v6 = [objc_opt_self() sharedApplication];
    v7 = [v6 applicationState];

    if (!v7)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        v10 = UIScrollView.isScrolling.getter();

        if ((v10 & 1) == 0)
        {
          v11 = swift_unknownObjectWeakLoadStrong();
          if (v11)
          {
          }
        }
      }
    }

    return v7 == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_467134(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v59 = a2;
  v9 = sub_AB3430();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v57[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_AB7CC0();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v57[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v16 = sub_ABA150();
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v17 = sub_AB7CF0();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (qword_DE6D68 != -1)
  {
LABEL_56:
    swift_once();
  }

  if (byte_E71A90 & 1) == 0 && *(v5 + 145) == 1 && (sub_466F18())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v21 = sub_AB4BA0();
      v27 = sub_AB9F10();
      if (os_log_type_enabled(v21, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v21, v27, "Paused tracking.  Container view was deallocated", v28, 2u);
      }

      goto LABEL_50;
    }

    v19 = Strong;
    v20 = swift_unknownObjectWeakLoadStrong();
    if (!v20)
    {

      return;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
    }

    v21 = v19;
    v58 = sub_4686C8(a1, v19, sub_468ABC, a4);

    v22 = *(a1 + 88);
    if (*(a1 + 144))
    {
      v23 = *(a1 + 16);
    }

    else
    {
      v23 = 0;
    }

    if (*(a1 + 144))
    {
      v24 = *(a1 + 24);
    }

    else
    {
      v24 = 0;
    }

    if (v22)
    {
      v25 = (v22 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v23 = *v25;
      v24 = v25[1];
    }

    else if (!v24)
    {
      v60[0] = *(a1 + 56);
      v23 = sub_ABB330();
      v24 = v56;
LABEL_25:
      swift_beginAccess();
      v29 = *(v5 + 104);
      if (*(v29 + 16))
      {

        v30 = sub_2EBF88(v23, v24);
        if (v31)
        {
          v32 = *(*(v29 + 56) + 8 * v30);

          swift_beginAccess();
          v34 = *(v32 + 200);
          v37 = *(v34 + 16);
          v35 = v34 + 16;
          v36 = v37;
          if (v37)
          {
            v38 = *(v35 + 16 * v36 + 8);
            if ((v58 & 1) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_39;
          }

LABEL_38:
          v38 = 2;
          if ((v58 & 1) == 0)
          {
LABEL_29:
            if (v38 == 2 || (v38 & 1) != 0)
            {
              goto LABEL_47;
            }

            v39 = sub_2C21FC(a1, v33);
            (*(v10 + 16))(v12, a3, v9);
            sub_AB33D0();
            v41 = v40;
            (*(v10 + 8))(v12, v9);
            swift_beginAccess();
            v42 = *(v39 + 200);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v39 + 200) = v42;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v42 = sub_6A900(0, *(v42 + 2) + 1, 1, v42);
              *(v39 + 200) = v42;
            }

            v45 = *(v42 + 2);
            v44 = *(v42 + 3);
            if (v45 >= v44 >> 1)
            {
              v42 = sub_6A900((v44 > 1), v45 + 1, 1, v42);
            }

            *(v42 + 2) = v45 + 1;
            v46 = &v42[16 * v45];
            *(v46 + 4) = v41;
            v46[40] = 1;
LABEL_46:
            *(v39 + 200) = v42;
            swift_endAccess();

LABEL_47:
            swift_beginAccess();
            if (!*(v5 + 152))
            {

              goto LABEL_52;
            }

            if (v32)
            {
              v53 = sub_472E58(v59, *(v5 + 152));
              v54 = v21;
              v55 = v53;

              *(v32 + 193) = v55;

LABEL_52:

              return;
            }

LABEL_50:

            return;
          }

LABEL_39:
          if (v38 != 2 && (v38 & 1) == 0)
          {
            goto LABEL_47;
          }

          v39 = sub_2C21FC(a1, v33);
          (*(v10 + 16))(v12, a3, v9);
          sub_AB33D0();
          v48 = v47;
          (*(v10 + 8))(v12, v9);
          swift_beginAccess();
          v42 = *(v39 + 200);
          v49 = swift_isUniquelyReferenced_nonNull_native();
          *(v39 + 200) = v42;
          if ((v49 & 1) == 0)
          {
            v42 = sub_6A900(0, *(v42 + 2) + 1, 1, v42);
            *(v39 + 200) = v42;
          }

          v51 = *(v42 + 2);
          v50 = *(v42 + 3);
          if (v51 >= v50 >> 1)
          {
            v42 = sub_6A900((v50 > 1), v51 + 1, 1, v42);
          }

          *(v42 + 2) = v51 + 1;
          v52 = &v42[16 * v51];
          *(v52 + 4) = v48;
          v52[40] = 0;
          goto LABEL_46;
        }
      }

      v32 = 0;
      goto LABEL_38;
    }

    goto LABEL_25;
  }
}

void sub_467824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id, uint64_t, void), uint64_t (*a5)(uint64_t, __n128), uint64_t (*a6)(BOOL, uint64_t, uint64_t, uint64_t), double a7)
{
  v60 = a6;
  v61 = a2;
  v62 = a5;
  v63 = a3;
  v9 = v7;
  v12 = sub_AB3430();
  v13 = *(v12 - 8);
  __chkstk_darwin();
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_AB7CC0();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = (&v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v19 = sub_ABA150();
  (*(v17 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v16);
  v20 = sub_AB7CF0();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (qword_DE6D68 != -1)
  {
LABEL_54:
    swift_once();
  }

  if ((byte_E71A90 & 1) != 0 || *(v9 + 145) != 1 || (sub_466CE8() & 1) == 0)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (qword_DE6888 != -1)
    {
      swift_once();
    }

    v29 = sub_AB4BC0();
    __swift_project_value_buffer(v29, qword_E70EB0);
    v22 = sub_AB4BA0();
    v30 = sub_AB9F10();
    if (os_log_type_enabled(v22, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v22, v30, "Paused tracking.  Container view was deallocated", v31, 2u);
    }

    goto LABEL_20;
  }

  v22 = Strong;
  v23 = swift_unknownObjectWeakLoadStrong();
  if (!v23)
  {
LABEL_20:

    return;
  }

  sub_4684D8();
  v24 = v22;
  LODWORD(v59) = sub_4686C8(a1, v22, a4, a7);

  v25 = *(a1 + 88);
  if (*(a1 + 144))
  {
    v26 = *(a1 + 16);
  }

  else
  {
    v26 = 0;
  }

  if (*(a1 + 144))
  {
    v27 = *(a1 + 24);
  }

  else
  {
    v27 = 0;
  }

  if (v25)
  {
    v28 = (v25 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v26 = *v28;
    v27 = v28[1];
LABEL_22:

    goto LABEL_23;
  }

  if (v27)
  {
    goto LABEL_22;
  }

  v64[0] = *(a1 + 56);
  v26 = sub_ABB330();
  v27 = v58;
LABEL_23:
  swift_beginAccess();
  v32 = *(v9 + 104);
  if (!*(v32 + 16))
  {
LABEL_35:

    v35 = 0;
    goto LABEL_36;
  }

  v33 = sub_2EBF88(v26, v27);
  if ((v34 & 1) == 0)
  {

    goto LABEL_35;
  }

  v35 = *(*(v32 + 56) + 8 * v33);

  swift_beginAccess();
  v36 = *(v35 + 200);
  v39 = *(v36 + 16);
  v37 = v36 + 16;
  v38 = v39;
  if (v39)
  {
    v40 = *(v37 + 16 * v38 + 8);
    if ((v59 & 1) == 0)
    {
      goto LABEL_27;
    }

LABEL_37:
    if (v40 != 2 && (v40 & 1) == 0)
    {
      goto LABEL_45;
    }

    v59 = v35;
    v41 = (v62)(a1);
    (*(v13 + 16))(v15, v63, v12);
    sub_AB33D0();
    v51 = v50;
    (*(v13 + 8))(v15, v12);
    swift_beginAccess();
    v44 = *(v41 + 200);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v41 + 200) = v44;
    v46 = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = v60(0, *(v44 + 16) + 1, 1, v44);
      *(v41 + 200) = v44;
    }

    v54 = *(v44 + 16);
    v53 = *(v44 + 24);
    if (v54 >= v53 >> 1)
    {
      v44 = v60(v53 > 1, v54 + 1, 1, v44);
    }

    *(v44 + 16) = v54 + 1;
    v55 = v44 + 16 * v54;
    *(v55 + 32) = v51;
    *(v55 + 40) = 0;
    goto LABEL_44;
  }

LABEL_36:
  v40 = 2;
  if (v59)
  {
    goto LABEL_37;
  }

LABEL_27:
  if (v40 == 2 || (v40 & 1) != 0)
  {
    goto LABEL_45;
  }

  v59 = v35;
  v41 = (v62)(a1);
  (*(v13 + 16))(v15, v63, v12);
  sub_AB33D0();
  v43 = v42;
  (*(v13 + 8))(v15, v12);
  swift_beginAccess();
  v44 = *(v41 + 200);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  *(v41 + 200) = v44;
  v46 = v24;
  if ((v45 & 1) == 0)
  {
    v44 = v60(0, *(v44 + 16) + 1, 1, v44);
    *(v41 + 200) = v44;
  }

  v48 = *(v44 + 16);
  v47 = *(v44 + 24);
  if (v48 >= v47 >> 1)
  {
    v44 = v60(v47 > 1, v48 + 1, 1, v44);
  }

  *(v44 + 16) = v48 + 1;
  v49 = v44 + 16 * v48;
  *(v49 + 32) = v43;
  *(v49 + 40) = 1;
LABEL_44:
  *(v41 + 200) = v44;
  swift_endAccess();

  v24 = v46;
  v35 = v59;
LABEL_45:
  swift_beginAccess();
  v56 = *(v9 + 152);
  if (!v56)
  {

    goto LABEL_49;
  }

  if (v35)
  {

    v57 = sub_4732A8(v61, v56);

    *(v35 + 193) = v57 & 1;

LABEL_49:

    return;
  }
}

void sub_467F10(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v51 = a2;
  v9 = sub_AB3430();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_AB7CC0();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  *v16 = sub_ABA150();
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v17 = sub_AB7CF0();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (qword_DE6D68 != -1)
  {
LABEL_46:
    swift_once();
  }

  if (byte_E71A90 & 1) == 0 && *(v5 + 145) == 1 && (sub_466CE8())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      if (qword_DE6888 != -1)
      {
        swift_once();
      }

      v26 = sub_AB4BC0();
      __swift_project_value_buffer(v26, qword_E70EB0);
      v21 = sub_AB4BA0();
      v27 = sub_AB9F10();
      if (os_log_type_enabled(v21, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v21, v27, "Paused tracking.  Container view was deallocated", v28, 2u);
      }

      goto LABEL_40;
    }

    v19 = Strong;
    v20 = swift_unknownObjectWeakLoadStrong();
    if (!v20)
    {

      return;
    }

    sub_4684D8();
    v21 = v19;
    v50 = sub_4686C8(a1, v19, sub_1298E0, a4);

    v22 = *(a1 + 88);
    if (*(a1 + 144))
    {
      v23 = *(a1 + 16);
    }

    else
    {
      v23 = 0;
    }

    if (*(a1 + 144))
    {
      v24 = *(a1 + 24);
    }

    else
    {
      v24 = 0;
    }

    if (v22)
    {
      v25 = (v22 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
      v23 = *v25;
      v24 = v25[1];
    }

    else if (!v24)
    {
      v52[0] = *(a1 + 56);
      v23 = sub_ABB330();
      v24 = v48;
LABEL_23:
      swift_beginAccess();
      v29 = *(v5 + 104);
      if (*(v29 + 16))
      {

        v30 = sub_2EBF88(v23, v24);
        if (v31)
        {
          v32 = *(*(v29 + 56) + 8 * v30);

          swift_beginAccess();
          v34 = *(v32 + 200);
          v37 = *(v34 + 16);
          v35 = v34 + 16;
          v36 = v37;
          if (v37)
          {
            v38 = *(v35 + 16 * v36 + 8);
            if ((v50 & 1) == 0)
            {
              goto LABEL_27;
            }

            goto LABEL_33;
          }

LABEL_32:
          v38 = 2;
          if ((v50 & 1) == 0)
          {
LABEL_27:
            if (v38 == 2 || (v38 & 1) != 0)
            {
              goto LABEL_37;
            }

            sub_2C2184(a1, v33);
            (*(v10 + 16))(v12, a3, v9);
            sub_AB33D0();
            v40 = v39;
            (*(v10 + 8))(v12, v9);
            swift_beginAccess();
            v41 = v40;
            v42 = 1;
LABEL_36:
            sub_2C1F68(v42, v41);
            swift_endAccess();

LABEL_37:
            swift_beginAccess();
            if (!*(v5 + 152))
            {

              goto LABEL_42;
            }

            if (v32)
            {
              v45 = sub_472E58(v51, *(v5 + 152));
              v46 = v21;
              v47 = v45;

              *(v32 + 193) = v47;

LABEL_42:

              return;
            }

LABEL_40:

            return;
          }

LABEL_33:
          if (v38 != 2 && (v38 & 1) == 0)
          {
            goto LABEL_37;
          }

          sub_2C2184(a1, v33);
          (*(v10 + 16))(v12, a3, v9);
          sub_AB33D0();
          v44 = v43;
          (*(v10 + 8))(v12, v9);
          swift_beginAccess();
          v41 = v44;
          v42 = 0;
          goto LABEL_36;
        }
      }

      v32 = 0;
      goto LABEL_32;
    }

    goto LABEL_23;
  }
}