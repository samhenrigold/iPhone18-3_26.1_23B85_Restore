void sub_18EFCCAEC(uint64_t a1)
{
  _s14CodableWrapperVMa_22(319);
  if (v1 <= 0x3F)
  {
    sub_18EF802BC(319, &qword_1ED5FD2A0, &_s14CodableWrapperON_1, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18EFCCB94(uint64_t a1)
{
  type metadata accessor for LNActionConfigurationConditionComparisonOperator(319);
  if (v1 <= 0x3F)
  {
    sub_18EFBDB20(319, &unk_1ED5FDCA8, _s19BasicCodableWrapperOMa, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18EFCCC74(uint64_t a1@<X0>, void *a2@<X2>, void *a3@<X8>)
{
  v84 = a3;
  v89 = sub_18F0939FC();
  v82 = *(v89 - 8);
  v5 = MEMORY[0x1EEE9AC00](v89);
  v79 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v77 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v77 - v10;
  v12 = type metadata accessor for LNEntityMetadata.CodableWrapper(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18EF825F4(0, &qword_1ED5FF428, off_1E72B0020);
  v80 = a1;
  sub_18EF86A14(a1, v14);
  sub_18EF9FE2C();
  v15 = a2;
  LNEntityMetadata.init(from:bundleURL:effectiveBundleIdentifier:)(v14, v11, a2, v16, v17, v18, v19, v20, v77, v78, v79, v80, a2, v82, v15, v84, v85, v86, v87, v88);
  v22 = v21;
  v23 = [v21 systemProtocolMetadata];
  type metadata accessor for LNSystemEntityProtocolIdentifier(0, v24, v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72E0, &qword_18F09BD28);
  sub_18EF8558C(&qword_1ED5FE770);
  v27 = sub_18F093A4C();

  v28 = sub_18EFCD438(@"com.apple.appintents.entity.URLRepresentable", v27);

  if (!v28)
  {
    goto LABEL_21;
  }

  swift_unknownObjectRelease();
  v29 = [v22 transferableContentTypes];
  if (!v29)
  {
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8760, &qword_18F0AC410);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_18F09BCD0;
    sub_18EF825F4(0, &qword_1ED5FE1A8, off_1E72AFFC8);
    v49 = v79;
    sub_18F0939EC();
    v50 = sub_18F0939DC();
    v52 = v51;
    (*(v82 + 8))(v49, v89);
    *(v48 + 32) = sub_18EF9EB60(v50, v52, &selRef_initWithContentType_);
    v53 = objc_allocWithZone(LNContentTypeMetadata);
    v54 = sub_18F00DC9C(v48, MEMORY[0x1E69E7CC0]);
    v55 = [v22 copyWithAdditionalTransferableContentTypes_];

    v22 = v55;
LABEL_21:
    v56 = [v22 effectiveBundleIdentifiers];
    v57 = [v56 array];

    v58 = MEMORY[0x1E69E7CA0];
    v59 = sub_18F093DCC();

    v60 = *(v59 + 16);

    v61 = v83;
    if (v60 || (v63 = *(v80 + 32)) == 0)
    {
      v62 = v84;
    }

    else
    {
      v64 = *(v80 + 24);
      if (v81)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8748, &qword_18F0A1350);
        v65 = swift_allocObject();
        *(v65 + 16) = xmmword_18F09BCC0;
        *(v65 + 56) = sub_18EF825F4(0, &qword_1ED5FF350, off_1E72AFFF8);
        *(v65 + 32) = v61;
      }

      else
      {
        v65 = MEMORY[0x1E69E7CC0];
      }

      sub_18EF825F4(0, qword_1ED5FF370, 0x1E695DFB8);
      v66 = v61;
      v67 = sub_18EF9CBD0(v65, v58 + 8, &selRef_initWithArray_);
      if (v81)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8740, &qword_18F0A1348);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_18F09BCC0;
        v69 = v66;
        v70 = [v69 bundleIdentifier];
        v71 = sub_18F093B8C();
        v72 = v22;
        v74 = v73;

        *(inited + 32) = v71;
        *(inited + 40) = v74;
        v22 = v72;
        *(inited + 48) = v64;
        *(inited + 56) = v63;

        sub_18F093A5C();
      }

      else
      {
        sub_18F093A5C();
      }

      v62 = v84;
      v75 = sub_18F093A3C();

      v76 = [v22 metadataByAddingEffectiveBundleIdentifiers:v67 mangledTypeNameByBundleIdentifier:v75];

      v22 = v76;
    }

    *v62 = v22;
    return;
  }

  v30 = [v22 transferableContentTypes];
  if (!v30)
  {
    goto LABEL_21;
  }

  v31 = v30;
  v78 = v22;
  v32 = [v30 exportableTypes];

  sub_18EF825F4(0, &qword_1ED5FE1A8, off_1E72AFFC8);
  v33 = sub_18F093DCC();

  v34 = sub_18EFA0A7C(v33);
  v35 = 0;
  v87 = v33 & 0xC000000000000001;
  v88 = v34;
  v86 = v33 & 0xFFFFFFFFFFFFFF8;
  v36 = (v82 + 8);
  while (1)
  {
    if (v88 == v35)
    {

      v22 = v78;
      goto LABEL_18;
    }

    if (v87)
    {
      v37 = MEMORY[0x193AD8BA0](v35, v33);
    }

    else
    {
      if (v35 >= *(v86 + 16))
      {
        goto LABEL_33;
      }

      v37 = *(v33 + 8 * v35 + 32);
    }

    v38 = v37;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    v39 = [v37 contentType];
    v40 = sub_18F093B8C();
    v42 = v41;

    sub_18F0939EC();
    v43 = sub_18F0939DC();
    v45 = v44;
    (*v36)(v8, v89);
    if (v40 == v43 && v42 == v45)
    {

LABEL_20:

      v22 = v78;
      goto LABEL_21;
    }

    v47 = sub_18F09444C();

    ++v35;
    if (v47)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_18EFCD438(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_18EF952E4(a1);
  if (v2)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

id sub_18EFCD4A4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  v9 = _s14CodableWrapperVMa_33(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18EF825F4(0, &qword_1ED5FE338, off_1E72B0130);
  sub_18EF86A14(a1, v11);
  sub_18EF9FE2C();
  v12 = a2;
  result = sub_18EFCD618(v11, v8, a2);
  *a3 = result;
  return result;
}

id sub_18EFCD618(void *a1, uint64_t a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v30 - v8;
  v10 = a1[1];
  v33 = v3;
  if (v10)
  {
    v34 = sub_18F093B5C();
  }

  else
  {
    v34 = 0;
  }

  v11 = _s14CodableWrapperVMa_33(0);
  MEMORY[0x1EEE9AC00](v11);
  v30[-2] = a2;
  v30[-1] = a3;
  result = sub_18EF9EBC8(sub_18EFA3E10);
  v37 = a2;
  v35 = a3;
  v30[1] = 0;
  if (!result)
  {
    v13 = sub_18F0932BC();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v13);
    v14 = objc_allocWithZone(LNStaticDeferredLocalizedString);
    result = sub_18EFABD08(0, 0xE000000000000000, 0, 0, v9);
  }

  v32 = result;
  v15 = 0;
  v16 = *(v11 + 24);
  v36 = a1;
  v17 = *(a1 + v16);
  v38 = MEMORY[0x1E69E7CC0];
  v39 = MEMORY[0x1E69E7CC0];
  v18 = *(v17 + 16);
  v19 = v17 + 48;
  v31 = v17 + 48;
LABEL_7:
  v20 = (v19 + 24 * v15);
  while (1)
  {
    if (v18 == v15)
    {
      v25 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_18EF825F4(0, &qword_1EACB71E8, off_1E72B0128);
      v26 = sub_18F093DBC();

      v27 = v34;
      v28 = v32;
      v29 = [v25 initWithPropertyIdentifier:v34 localizedTitle:v32 comparators:v26];

      sub_18EF86A6C();
      sub_18EF933AC(v37, &qword_1EACB72C8);
      return v29;
    }

    if (v15 >= *(v17 + 16))
    {
      break;
    }

    ++v15;
    v21 = v20 + 3;
    v23 = *(v20 - 1);
    v22 = *v20;
    v24 = *(v20 - 2);
    sub_18EF825F4(0, &qword_1EACB71E8, off_1E72B0128);

    sub_18EFA3D24(v22);
    result = sub_18EFCD93C(v24, v23, v22);
    v20 = v21;
    if (result)
    {
      MEMORY[0x193AD88C0]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_18F093DFC();
      }

      result = sub_18F093E3C();
      v38 = v39;
      v19 = v31;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id sub_18EFCD93C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  result = sub_18EF9E62C(a3);
  if (result)
  {
    v19 = result;
    v20 = a1;
    v21 = a3;
    v7 = 0;
    v22 = MEMORY[0x1E69E7CC0];
    v8 = *(a2 + 16);
    v9 = a2 + 56;
LABEL_3:
    v10 = (v9 + 32 * v7);
    while (1)
    {
      if (v8 == v7)
      {
        v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_18EF825F4(0, &unk_1ED5FF090, off_1E72B0158);
        v17 = sub_18F093DBC();

        v18 = [v16 initWithComparatorType:v20 valueType:v19 resolvableInputTypes:v17];

        sub_18EFA3DA4(v21);
        return v18;
      }

      if (v7 >= *(a2 + 16))
      {
        break;
      }

      ++v7;
      v11 = v10 + 4;
      v13 = *(v10 - 1);
      v12 = *v10;
      v15 = *(v10 - 3);
      v14 = *(v10 - 2);
      sub_18EF825F4(0, &unk_1ED5FF090, off_1E72B0158);

      sub_18EFA3F8C(v12);
      result = sub_18EFA3E28(v15, v14, v13, v12);
      v10 = v11;
      if (result)
      {
        MEMORY[0x193AD88C0]();
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_18F093DFC();
        }

        result = sub_18F093E3C();
        v9 = a2 + 56;
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  else
  {

    sub_18EFA3DA4(a3);
    return 0;
  }

  return result;
}

id sub_18EFCDB4C@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v14 - v7;
  v9 = _s14CodableWrapperVMa_35(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_18EF825F4(0, &qword_1ED5FE320, off_1E72B0140);
  sub_18EF86A14(a1, v11);
  sub_18EF9FE2C();
  v12 = a2;
  result = sub_18EFCDCC0(v11, v8, a2);
  *a3 = result;
  return result;
}

id sub_18EFCDCC0(void *a1, uint64_t a2, void *a3)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = sub_18F093B5C();
  v7 = sub_18F093B5C();
  v8 = [v5 initWithPropertyIdentifier:v6 entityType:v7];

  sub_18EF933AC(a2, &qword_1EACB72C8);
  sub_18EF86A6C();
  return v8;
}

BOOL sub_18EFCDF6C()
{
  OUTLINED_FUNCTION_396();
  sub_18F09420C();
  OUTLINED_FUNCTION_216();

  return v0 != 0;
}

BOOL sub_18EFCDFE4(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_18EFCE120@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFD64C8();
  *a1 = result;
  return result;
}

unint64_t sub_18EFCE1A0()
{
  OUTLINED_FUNCTION_396();
  sub_18F09420C();
  OUTLINED_FUNCTION_216();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_18EFCE1E4(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_182();
  }

  if (a1 == 1)
  {
    return 0x6570795474696E75;
  }

  return 0x626D795374696E75;
}

uint64_t sub_18EFCE348(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_18EFCE3BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFE4AB8();
  *a1 = result;
  return result;
}

uint64_t sub_18EFCE4A0(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_18EFCE4C4(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_18EFCE594@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_18F019430(a2);
  *a1 = result;
  return result;
}

uint64_t sub_18EFCE5BC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_235(a1);
  result = sub_18EFCE488(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_18EFCE5E4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_235(a1);
  result = sub_18EFCE490(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_18EFCE60C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_235(a1);
  result = sub_18EFCE498(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_18EFCE6AC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_235(a1);
  result = sub_18EFCE500(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_18EFCE720@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_18EFD50DC(a2);
  *a1 = result;
  return result;
}

uint64_t sub_18EFCE754@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18EFCE46C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18EFCE79C()
{
  OUTLINED_FUNCTION_62();
  if (v2)
  {
    return OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_51();
  if (*(v4 + 84) == v0)
  {
    v5 = *(v1 + 36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
    v5 = *(v1 + 40);
  }

  v6 = OUTLINED_FUNCTION_120(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_18EFCE848()
{
  OUTLINED_FUNCTION_29();
  if (v2)
  {
    OUTLINED_FUNCTION_217();
  }

  else
  {
    OUTLINED_FUNCTION_157();
    OUTLINED_FUNCTION_51();
    if (*(v3 + 84) == v1)
    {
      v4 = *(v0 + 36);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
      v4 = *(v0 + 40);
    }

    v5 = OUTLINED_FUNCTION_52(v4);

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_18EFCE8F4()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_51();
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_18(*(v0 + *(v2 + 20) + 8));
  }

  v4 = OUTLINED_FUNCTION_156();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

uint64_t sub_18EFCE97C()
{
  OUTLINED_FUNCTION_34();
  result = OUTLINED_FUNCTION_51();
  if (*(v5 + 84) == v3)
  {
    v6 = OUTLINED_FUNCTION_66();

    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }

  return result;
}

uint64_t sub_18EFCEA08()
{
  v1 = OUTLINED_FUNCTION_70();
  _s14CodableWrapperVMa_0(v1);
  v2 = OUTLINED_FUNCTION_270();

  return __swift_getEnumTagSinglePayload(v2, v0, v3);
}

uint64_t sub_18EFCEA44()
{
  v0 = OUTLINED_FUNCTION_70();
  _s14CodableWrapperVMa_0(v0);
  v1 = OUTLINED_FUNCTION_66();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_18EFCEAAC()
{
  OUTLINED_FUNCTION_62();
  if (v1)
  {
    return OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_161();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7310, &qword_18F09BD48);
  v3 = OUTLINED_FUNCTION_120(*(v0 + 64));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_18EFCEB20()
{
  OUTLINED_FUNCTION_29();
  if (v1)
  {
    OUTLINED_FUNCTION_217();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7310, &qword_18F09BD48);
    v3 = OUTLINED_FUNCTION_52(*(v2 + 64));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_18EFCEB94()
{
  OUTLINED_FUNCTION_62();
  if (v0)
  {
    return OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_161();
  _s14CodableWrapperVMa_0(0);
  v2 = OUTLINED_FUNCTION_85();

  return __swift_getEnumTagSinglePayload(v2, v3, v4);
}

void sub_18EFCEBF8()
{
  OUTLINED_FUNCTION_29();
  if (v0)
  {
    OUTLINED_FUNCTION_217();
  }

  else
  {
    _s14CodableWrapperVMa_0(0);
    OUTLINED_FUNCTION_331();
    v2 = OUTLINED_FUNCTION_52(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_18EFCEC5C()
{
  OUTLINED_FUNCTION_304();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_106();
  if (*(v3 + 84) != v2)
  {
    return OUTLINED_FUNCTION_18(*(v0 + *(v1 + 24)));
  }

  v4 = OUTLINED_FUNCTION_240();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_18EFCECF4()
{
  OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_106();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_254();
    v4 = OUTLINED_FUNCTION_52(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_388(*(v0 + 24));
  }
}

uint64_t _s14CodableWrapperVwet_1(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_170(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18EFCEDD0()
{
  OUTLINED_FUNCTION_62();
  if (v0)
  {
    return OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_161();
  _s14CodableWrapperVMa_2(0);
  OUTLINED_FUNCTION_333();
  v3 = OUTLINED_FUNCTION_120(v2);

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_18EFCEE34()
{
  OUTLINED_FUNCTION_29();
  if (v0)
  {
    OUTLINED_FUNCTION_217();
  }

  else
  {
    _s14CodableWrapperVMa_2(0);
    OUTLINED_FUNCTION_254();
    v2 = OUTLINED_FUNCTION_52(v1);

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_18EFCEEA0(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_99(*(a1 + 8));
  }

  OUTLINED_FUNCTION_161();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v3 = OUTLINED_FUNCTION_85();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_18EFCEF1C()
{
  OUTLINED_FUNCTION_115();
  if (v2 == 2147483646)
  {
    *(v1 + 8) = v0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
    OUTLINED_FUNCTION_331();
    v4 = OUTLINED_FUNCTION_52(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_18EFCEF98()
{
  v1 = OUTLINED_FUNCTION_70();
  _s14CodableWrapperOMa(v1);
  v2 = OUTLINED_FUNCTION_270();

  return __swift_getEnumTagSinglePayload(v2, v0, v3);
}

uint64_t sub_18EFCEFD4()
{
  v0 = OUTLINED_FUNCTION_70();
  _s14CodableWrapperOMa(v0);
  v1 = OUTLINED_FUNCTION_66();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_18EFCF00C()
{
  OUTLINED_FUNCTION_304();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_106();
  if (*(v3 + 84) != v2)
  {
    return OUTLINED_FUNCTION_18(*(v0 + *(v1 + 36)));
  }

  v4 = OUTLINED_FUNCTION_240();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_18EFCF0A4()
{
  OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  OUTLINED_FUNCTION_106();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_254();
    v4 = OUTLINED_FUNCTION_52(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_388(*(v0 + 36));
  }
}

uint64_t sub_18EFCF13C()
{
  OUTLINED_FUNCTION_62();
  if (v1)
  {
    return OUTLINED_FUNCTION_16();
  }

  OUTLINED_FUNCTION_161();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v3 = OUTLINED_FUNCTION_120(*(v0 + 28));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_18EFCF1B0()
{
  OUTLINED_FUNCTION_29();
  if (v1)
  {
    OUTLINED_FUNCTION_217();
  }

  else
  {
    v2 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
    v3 = OUTLINED_FUNCTION_52(*(v2 + 28));

    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }
}

uint64_t sub_18EFCF22C()
{
  OUTLINED_FUNCTION_62();
  if (v1)
  {
    return OUTLINED_FUNCTION_18(*(v0 + 16));
  }

  OUTLINED_FUNCTION_161();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v3 = OUTLINED_FUNCTION_85();

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void sub_18EFCF2A0()
{
  OUTLINED_FUNCTION_29();
  if (v2)
  {
    *(v1 + 16) = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
    OUTLINED_FUNCTION_331();
    v4 = OUTLINED_FUNCTION_52(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_18EFCF314()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_18EFCF38C()
{
  OUTLINED_FUNCTION_160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  OUTLINED_FUNCTION_106();
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_156();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    v8 = *(v0 + *(v2 + 20));
    if (v8 >= 2)
    {
      v9 = ((v8 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v9 = -2;
    }

    if (v9 < 0)
    {
      v9 = -1;
    }

    return (v9 + 1);
  }
}

void sub_18EFCF44C()
{
  OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  OUTLINED_FUNCTION_106();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_66();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 2;
  }
}

uint64_t sub_18EFCF534()
{
  OUTLINED_FUNCTION_160();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB87C8, &qword_18F0A13A0);
  OUTLINED_FUNCTION_106();
  if (*(v3 + 84) != v1)
  {
    return OUTLINED_FUNCTION_18(*(v0 + *(v2 + 24) + 8));
  }

  v4 = OUTLINED_FUNCTION_156();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_18EFCF5D0()
{
  OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB87C8, &qword_18F0A13A0);
  OUTLINED_FUNCTION_106();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_66();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = (v0 - 1);
  }
}

uint64_t sub_18EFCF66C()
{
  OUTLINED_FUNCTION_160();
  _s14CodableWrapperVMa_22(0);
  OUTLINED_FUNCTION_106();
  if (*(v3 + 84) == v1)
  {
    v4 = OUTLINED_FUNCTION_156();

    return __swift_getEnumTagSinglePayload(v4, v5, v6);
  }

  else
  {
    v8 = *(v0 + *(v2 + 20));
    LODWORD(v8) = ((v8 >> 57) >> 5) | (4 * ((v8 >> 57) & 0x18 | v8 & 7));
    v9 = v8 ^ 0x7F;
    v10 = 128 - v8;
    if (v9 >= 0x7D)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }
}

void sub_18EFCF71C(uint64_t a1)
{
  OUTLINED_FUNCTION_157();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_204();
  _s14CodableWrapperVMa_22(v6);
  OUTLINED_FUNCTION_106();
  if (*(v8 + 84) == v3)
  {

    __swift_storeEnumTagSinglePayload(v1, v5, v5, v7);
  }

  else
  {
    v9 = (-v5 >> 2) & 0x1F | (32 * (-v5 & 0x7F));
    *(v1 + *(v2 + 20)) = (v9 | (v9 << 57)) & 0xF000000000000007;
  }
}

uint64_t sub_18EFCF7C8()
{
  OUTLINED_FUNCTION_304();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_106();
  if (*(v3 + 84) != v2)
  {
    return OUTLINED_FUNCTION_18(*(v0 + *(v1 + 28)));
  }

  v4 = OUTLINED_FUNCTION_240();

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_18EFCF860()
{
  OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  OUTLINED_FUNCTION_106();
  if (*(v2 + 84) == v1)
  {
    OUTLINED_FUNCTION_254();
    v4 = OUTLINED_FUNCTION_52(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }

  else
  {
    OUTLINED_FUNCTION_388(*(v0 + 28));
  }
}

unint64_t sub_18EFCF9B4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x69747265706F7270;
      break;
    case 2:
      result = 0x617461646174656DLL;
      break;
    case 3:
      result = 0x616D726F666E6F63;
      break;
    case 4:
      result = 0x696C696269736976;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_18EFCFC58()
{
  v0 = sub_18F09420C();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_18EFCFCA4(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x617461646174656DLL;
      break;
    case 2:
      result = 0x616D726F666E6F63;
      break;
    case 3:
      result = 0x696C696269736976;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

Class sub_18EFCFDE8@<X0>(Swift::String *a1@<X0>, Class *a2@<X8>)
{
  result = LNContentType.init(stringLiteral:)(*a1).super.isa;
  *a2 = result;
  return result;
}

uint64_t MetadataError.errorDescription.getter()
{
  sub_18F0932BC();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_22();
  v2 = *v0;
  switch(*(v0 + 8))
  {
    case 2:
      OUTLINED_FUNCTION_246();
      sub_18F09406C();
      MEMORY[0x193AD8780](0xD00000000000002ALL, 0x800000018F0ADAC0);
      OUTLINED_FUNCTION_273();
      v5 = sub_18F0943FC();
      MEMORY[0x193AD8780](v5);

      MEMORY[0x193AD8780](0xD000000000000024, 0x800000018F0ADAF0);
      OUTLINED_FUNCTION_273();
      v6 = sub_18F0943FC();
      MEMORY[0x193AD8780](v6);

      MEMORY[0x193AD8780](0x2E736574796220, 0xE700000000000000);
      return v19;
    case 3:
      OUTLINED_FUNCTION_246();
      sub_18F09406C();

      OUTLINED_FUNCTION_402();
      v19 = v7 + 13;
      v8 = [v2 bundleURL];
      sub_18F09327C();

      OUTLINED_FUNCTION_203();
      sub_18EF8558C(v9);
      v10 = sub_18F0943FC();
      MEMORY[0x193AD8780](v10);

      v11 = OUTLINED_FUNCTION_189();
      v12(v11);
      return v19;
    case 4:
      switch(v2)
      {
        case 1uLL:
          OUTLINED_FUNCTION_132();
          result = v18 + 19;
          break;
        case 2uLL:
          OUTLINED_FUNCTION_132();
          result = v16 - 8;
          break;
        case 3uLL:
          OUTLINED_FUNCTION_132();
          result = v17 - 11;
          break;
        default:
          OUTLINED_FUNCTION_132();
          result = v3 + 29;
          break;
      }

      return result;
    default:
      OUTLINED_FUNCTION_246();
      sub_18F09406C();

      OUTLINED_FUNCTION_402();
      v19 = v13;
      v14 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72B8, &unk_18F09BD00);
      v15 = sub_18F093BEC();
      MEMORY[0x193AD8780](v15);

      return v19;
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t MetadataError.errorCode.getter()
{
  result = 8000;
  switch(*(v0 + 8))
  {
    case 1:
      result = 8001;
      break;
    case 2:
      result = 8003;
      break;
    case 3:
      result = 8007;
      break;
    case 4:
      result = qword_18F0AA088[*v0];
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EFD02CC(uint64_t a1)
{
  v2 = sub_18F019BA8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18EFD0308(uint64_t a1)
{
  v2 = sub_18F019BA8();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_18EFD034C()
{
  v0 = sub_18F09420C();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_18EFD03AC(char a1)
{
  result = 0x766974696D697270;
  switch(a1)
  {
    case 1:
      result = 0x797469746E65;
      break;
    case 2:
      v3 = 1919251825;
      goto LABEL_9;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      v3 = 1634890337;
LABEL_9:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
      break;
    case 5:
      result = 0x6D756E456B6E696CLL;
      break;
    case 6:
      result = 0x74616E7265746C61;
      break;
    case 7:
      result = OUTLINED_FUNCTION_182();
      break;
    case 8:
      result = 0x73746E65746E69;
      break;
    case 9:
      result = 0x7243686372616573;
      break;
    case 10:
      result = 0x6E49746C697562;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0x697461646E756F66;
      break;
    case 13:
      result = 0x716553636E797361;
      break;
    case 14:
      result = 0x656C6261646F63;
      break;
    case 15:
      result = 0x6156707041796E61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EFD0584(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x626174726F706D69;
  }

  else
  {
    v2 = 0x626174726F707865;
  }

  if (a2)
  {
    v3 = 0x626174726F706D69;
  }

  else
  {
    v3 = 0x626174726F707865;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_18F09444C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_18EFD0610(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x766972446C6F6F74;
  }

  else
  {
    v3 = 0x6C6F636F746F7270;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006E65;
  }

  if (a2)
  {
    v5 = 0x766972446C6F6F74;
  }

  else
  {
    v5 = 0x6C6F636F746F7270;
  }

  if (a2)
  {
    v6 = 0xEA00000000006E65;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_332();
    v8 = sub_18F09444C();
  }

  return v8 & 1;
}

uint64_t sub_18EFD06B0(unsigned __int8 a1, char a2)
{
  v2 = 0x63696C627570;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6C616E7265746E69;
    }

    else
    {
      v4 = 0x6D706F6C65766564;
    }

    if (v3 == 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEB00000000746E65;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x63696C627570;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6C616E7265746E69;
    }

    else
    {
      v2 = 0x6D706F6C65766564;
    }

    if (a2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000746E65;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_332();
    v8 = sub_18F09444C();
  }

  return v8 & 1;
}

uint64_t sub_18EFD07B4()
{
  OUTLINED_FUNCTION_75();
  v4 = "requiredEntitlements";
  v5 = v3;
  v6 = "exampleUtterances";
  switch(v7)
  {
    case 1:
      v5 = 0xD000000000000011;
      v1 = 0x800000018F0AC730;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_154();
      break;
    case 3:
      v5 = 0x657669746167656ELL;
      v1 = 0xEF73657361726850;
      break;
    case 4:
      v5 = OUTLINED_FUNCTION_87();
      break;
    case 5:
      v5 = OUTLINED_FUNCTION_153();
      break;
    case 6:
      v1 = 0x800000018F0AC6E0;
      v5 = 0xD000000000000014;
      break;
    default:
      break;
  }

  switch(v2)
  {
    case 1:
      v3 = 0xD000000000000011;
      v0 = (v6 - 32) | 0x8000000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_152();
      break;
    case 3:
      v3 = 0x657669746167656ELL;
      v0 = 0xEF73657361726850;
      break;
    case 4:
      OUTLINED_FUNCTION_83();
      break;
    case 5:
      OUTLINED_FUNCTION_151();
      break;
    case 6:
      v0 = (v4 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000014;
      break;
    default:
      break;
  }

  if (v5 == v3 && v1 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_296(v5, v1, v3);
  }

  return v9 & 1;
}

uint64_t sub_18EFD0930()
{
  OUTLINED_FUNCTION_75();
  v4 = v3;
  switch(v5)
  {
    case 1:
      v4 = 0x69747265706F7270;
      v1 = v0 + 256;
      break;
    case 2:
      v4 = OUTLINED_FUNCTION_154();
      break;
    case 3:
      v4 = OUTLINED_FUNCTION_87();
      break;
    case 4:
      v4 = OUTLINED_FUNCTION_153();
      break;
    case 5:
      v4 = OUTLINED_FUNCTION_378();
      break;
    default:
      break;
  }

  switch(v2)
  {
    case 1:
      v3 = 0x69747265706F7270;
      v0 += 256;
      break;
    case 2:
      OUTLINED_FUNCTION_152();
      break;
    case 3:
      OUTLINED_FUNCTION_83();
      break;
    case 4:
      OUTLINED_FUNCTION_151();
      break;
    case 5:
      OUTLINED_FUNCTION_377();
      break;
    default:
      break;
  }

  if (v4 == v3 && v1 == v0)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_296(v4, v1, v3);
  }

  return v7 & 1;
}

uint64_t sub_18EFD0A44()
{
  OUTLINED_FUNCTION_75();
  v4 = v3;
  switch(v5)
  {
    case 1:
      v4 = OUTLINED_FUNCTION_154();
      break;
    case 2:
      v4 = OUTLINED_FUNCTION_87();
      break;
    case 3:
      v4 = OUTLINED_FUNCTION_153();
      break;
    case 4:
      v4 = OUTLINED_FUNCTION_378();
      break;
    default:
      break;
  }

  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_152();
      break;
    case 2:
      OUTLINED_FUNCTION_83();
      break;
    case 3:
      OUTLINED_FUNCTION_151();
      break;
    case 4:
      OUTLINED_FUNCTION_377();
      break;
    default:
      break;
  }

  if (v4 == v3 && v1 == v0)
  {
    v7 = 1;
  }

  else
  {
    v7 = OUTLINED_FUNCTION_296(v4, v1, v3);
  }

  return v7 & 1;
}

uint64_t sub_18EFD0B28(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000746E65;
  v3 = 0x6D6572757361656DLL;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6570795474696E75;
    }

    else
    {
      v5 = 0x626D795374696E75;
    }

    if (v4 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEA00000000006C6FLL;
    }
  }

  else
  {
    v5 = 0x6D6572757361656DLL;
    v6 = 0xEB00000000746E65;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6570795474696E75;
    }

    else
    {
      v3 = 0x626D795374696E75;
    }

    if (a2 == 1)
    {
      v2 = 0xE800000000000000;
    }

    else
    {
      v2 = 0xEA00000000006C6FLL;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18F09444C();
  }

  return v8 & 1;
}

uint64_t sub_18EFD0C30(char a1, char a2)
{
  v3 = sub_18EFD03AC(a1);
  v5 = v4;
  if (v3 == sub_18EFD03AC(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_18F09444C();
  }

  return v8 & 1;
}

unint64_t sub_18EFD0CCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFD034C();
  *a1 = result;
  return result;
}

unint64_t sub_18EFD0CFC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18EFD03AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18EFD0D48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFD0398();
  *a1 = result;
  return result;
}

uint64_t sub_18EFD0D70(uint64_t a1)
{
  v2 = sub_18EF8DBC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD0DAC(uint64_t a1)
{
  v2 = sub_18EF8DBC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL sub_18EFD0E10@<W0>(_BYTE *a1@<X8>)
{
  result = sub_18EFCDF6C();
  *a1 = result;
  return result;
}

uint64_t sub_18EFD0E44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18EFD0DE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_18EFD0E70@<W0>(_BYTE *a1@<X8>)
{
  result = sub_18EFCDF6C();
  *a1 = result;
  return result;
}

uint64_t sub_18EFD0EB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFD0608();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18EFD0EE4(uint64_t a1)
{
  v2 = sub_18F0169CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD0F20(uint64_t a1)
{
  v2 = sub_18F0169CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_18EFD0F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = a3[4];
  v11[128] = 1;
  *&__src[0] = a1;
  *(&__src[0] + 1) = a2;
  memset(&__src[1], 0, 40);
  *(&__src[3] + 1) = 1;
  __src[4] = 0uLL;
  *&__src[5] = v5;
  *(&__src[5] + 1) = v6;
  *&__src[6] = v7;
  *(&__src[6] + 1) = v8;
  *&__src[7] = v9;
  BYTE8(__src[7]) = 1;
  v13[0] = a1;
  v13[1] = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0;
  v17 = 1;
  v18 = 0;
  v19 = 0;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = 1;
  sub_18F017B38(__src, v11);
  sub_18F017B08(v13);
  return memcpy(a4, __src, 0x79uLL);
}

uint64_t sub_18EFD1004(void *a1, unint64_t a2)
{
  v103 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7B10, &qword_18F0A0C28);
  v4 = *(v3 - 8);
  v95 = v3;
  v96 = v4;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v94 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v93 = &v86 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v92 = &v86 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v91 = &v86 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v90 = &v86 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v89 = &v86 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v88 = &v86 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v87 = &v86 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v86 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v86 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v86 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v86 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7B18, &qword_18F0A0C30);
  v33 = *(v32 - 8);
  v99 = v32;
  v100 = v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v86 - v34;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF8DBC0();
  v98 = v35;
  sub_18F0945BC();
  v36 = v103;
  switch(v103 >> 60)
  {
    case 1uLL:
      memcpy(__dst, ((v103 & 0xFFFFFFFFFFFFFFFLL) + 16), 0x79uLL);
      v101[0] = 1;
      sub_18F0169CC();
      v77 = v98;
      v76 = v99;
      sub_18F09431C();
      memcpy(v101, __dst, sizeof(v101));
      sub_18F016D68();
      v78 = v95;
      sub_18F0943CC();
      (*(v96 + 8))(v29, v78);
      v57 = *(v100 + 8);
      v58 = v77;
      goto LABEL_22;
    case 2uLL:
      v63 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v64 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v65 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      LOBYTE(__dst[0]) = 4;
      sub_18F0169CC();
      v67 = v98;
      v66 = v99;
      sub_18F09431C();
      __dst[0] = v63;
      __dst[1] = v64;
      LOBYTE(__dst[2]) = v65;
      sub_18F016D14();
      v68 = v95;
      sub_18F0943CC();
      (*(v96 + 8))(v26, v68);
      return (*(v100 + 8))(v67, v66);
    case 3uLL:
      v70 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v71 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(__dst[0]) = 5;
      sub_18F0169CC();
      v73 = v98;
      v72 = v99;
      sub_18F09431C();
      __dst[0] = v70;
      __dst[1] = v71;
      sub_18F016CC0();
      v74 = v95;
      sub_18F0943CC();
      (*(v96 + 8))(v23, v74);
      return (*(v100 + 8))(v73, v72);
    case 4uLL:
      v45 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(__dst[0]) = 6;
      sub_18F0169CC();
      v31 = v87;
      v39 = v98;
      v38 = v99;
      sub_18F09431C();
      __dst[0] = v45;
      sub_18F016C6C();
      goto LABEL_19;
    case 5uLL:
      v79 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(__dst[0]) = 7;
      sub_18F0169CC();
      v31 = v88;
      v39 = v98;
      v38 = v99;
      sub_18F09431C();
      __dst[0] = v79;
      sub_18F016C18();
      goto LABEL_19;
    case 6uLL:
      v81 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(__dst[0]) = 8;
      sub_18F0169CC();
      v31 = v89;
      v39 = v98;
      v38 = v99;
      sub_18F09431C();
      __dst[0] = v81;
      sub_18F016BC4();
      goto LABEL_19;
    case 7uLL:
      v75 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(__dst[0]) = 9;
      sub_18F0169CC();
      v31 = v90;
      v39 = v98;
      v38 = v99;
      sub_18F09431C();
      __dst[0] = v75;
      sub_18F016B70();
      goto LABEL_19;
    case 8uLL:
      v83 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(__dst[0]) = 10;
      sub_18F0169CC();
      v31 = v91;
      v39 = v98;
      v38 = v99;
      sub_18F09431C();
      __dst[0] = v83;
      sub_18F016B1C();
      goto LABEL_19;
    case 9uLL:
      v59 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v60 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(__dst[0]) = 11;
      sub_18F0169CC();
      v42 = v92;
      v44 = v98;
      v43 = v99;
      sub_18F09431C();
      __dst[0] = v59;
      __dst[1] = v60;
      sub_18F016AC8();
      goto LABEL_7;
    case 0xAuLL:
      v82 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(__dst[0]) = 12;
      sub_18F0169CC();
      v31 = v93;
      v39 = v98;
      v38 = v99;
      sub_18F09431C();
      __dst[0] = v82;
      sub_18F016A74();
      goto LABEL_19;
    case 0xBuLL:
      v40 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v41 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(__dst[0]) = 13;
      sub_18F0169CC();
      v42 = v94;
      v44 = v98;
      v43 = v99;
      sub_18F09431C();
      __dst[0] = v40;
      __dst[1] = v41;
      sub_18F016A20();
LABEL_7:
      v61 = v95;
      sub_18F0943CC();
      (*(v96 + 8))(v42, v61);
      v57 = *(v100 + 8);
      v58 = v44;
      goto LABEL_8;
    case 0xCuLL:
      v46 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v103 = *((v103 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v47 = *((v36 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v48 = *((v36 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v49 = *((v36 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v96 = *((v36 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      v97 = v47;
      v50 = *((v36 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v51 = sub_18F0940DC();
      swift_allocError();
      v53 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7B28, &qword_18F0A0C38);
      v53[3] = &_s21CodableCodableWrapperVN;
      v54 = swift_allocObject();
      *v53 = v54;
      v54[2] = v103;
      v54[3] = v46;
      v55 = v96;
      v54[4] = v97;
      v54[5] = v48;
      v54[6] = v49;
      v54[7] = v55;
      v54[8] = v50;

      v56 = v98;
      v43 = v99;
      sub_18F09432C();
      sub_18F0940AC();
      (*(*(v51 - 8) + 104))(v53, *MEMORY[0x1E69E6B30], v51);
      swift_willThrow();
      v57 = *(v100 + 8);
      v58 = v56;
LABEL_8:
      v62 = v43;
      goto LABEL_23;
    case 0xDuLL:
      if (v103 == 0xD000000000000000)
      {
        v80 = 2;
      }

      else
      {
        v80 = 3;
      }

      LOBYTE(__dst[0]) = v80;
      v85 = v98;
      v76 = v99;
      sub_18F0943EC();
      v57 = *(v100 + 8);
      v58 = v85;
LABEL_22:
      v62 = v76;
LABEL_23:
      result = v57(v58, v62);
      break;
    default:
      v37 = *(v103 + 16);
      LOBYTE(__dst[0]) = 0;
      sub_18F0169CC();
      v39 = v98;
      v38 = v99;
      sub_18F09431C();
      __dst[0] = v37;
      sub_18F016DBC();
LABEL_19:
      v84 = v95;
      sub_18F0943CC();
      (*(v96 + 8))(v31, v84);
      result = (*(v100 + 8))(v39, v38);
      break;
  }

  return result;
}

unint64_t sub_18EFD1A70()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    v3 = swift_allocObject();
    *(v3 + 16) = [v2 typeIdentifier];
    return v3;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v4 = swift_allocObject();
    sub_18EFD2008(__src);
LABEL_5:
    memcpy((v4 + 16), __src, 0x79uLL);
    return v4 | 0x1000000000000000;
  }

  v3 = 0xD000000000000008;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return v3;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_18EFD21C4();
    *(v5 + 24) = v6;
    *(v5 + 32) = v7 & 1;
    return v5 | 0x2000000000000000;
  }

  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    v11 = [v9 enumerationIdentifier];
    v12 = sub_18F093B8C();
    v14 = v13;

    *(v10 + 16) = v12;
    *(v10 + 24) = v14;
    return v10 | 0x3000000000000000;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v15 = swift_allocObject();
    sub_18EFD2230();
    *(v15 + 16) = v16;
    return v15 | 0x4000000000000000;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = [v18 unitType];
    v20 = 0x5000000000000000;
    return v19 | v20;
  }

  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = [v22 typeIdentifier];
    return v23 | 0x6000000000000000;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = [v25 typeIdentifier];
    return v26 | 0x7000000000000000;
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    v29 = swift_allocObject();
    *(v29 + 16) = [v28 builtInType];
    return v29 | 0x8000000000000000;
  }

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (v31)
  {
    v32 = v31;
    v19 = swift_allocObject();
    v33 = [v32 identifier];
    v34 = sub_18F093B8C();
    v36 = v35;

    *(v19 + 16) = v34;
    *(v19 + 24) = v36;
    v20 = 0x9000000000000000;
    return v19 | v20;
  }

  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (v37)
  {
    v38 = v37;
    v19 = swift_allocObject();
    *(v19 + 16) = [v38 typeIdentifier];
    v20 = 0xA000000000000000;
    return v19 | v20;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v19 = swift_allocObject();
    *(v19 + 16) = sub_18EFD23A0();
    *(v19 + 24) = v39;
    v20 = 0xB000000000000000;
    return v19 | v20;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v4 = swift_allocObject();
    sub_18EFD2408(__src);
    goto LABEL_5;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v4 = swift_allocObject();
    sub_18EFD47D0(__src);
    goto LABEL_5;
  }

  sub_18F09406C();

  v40 = [v0 description];
  v41 = sub_18F093B8C();
  v43 = v42;

  MEMORY[0x193AD8780](v41, v43);

  result = sub_18F0941AC();
  __break(1u);
  return result;
}

double sub_18EFD2008@<D0>(uint64_t a1@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = v1;
    v6 = [v5 identifier];
    v7 = sub_18F093B8C();
    v9 = v8;

    v10 = [v4 bundleIdentifier];
    v11 = sub_18F093B8C();
    v13 = v12;

    v14 = [v4 contentType];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 contentType];

      v15 = sub_18F093B8C();
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    sub_18EFD473C(v7, v9, v11, v13, v15, v18, v30);
  }

  else
  {
    v19 = [v1 identifier];
    v20 = sub_18F093B8C();
    v22 = v21;

    sub_18EFD46A8(v20, v22, v30);
  }

  v24 = v37;
  v25 = v30[1];
  v23 = v38;
  *a1 = v30[0];
  *(a1 + 8) = v25;
  v26 = v32;
  *(a1 + 16) = v31;
  *(a1 + 32) = v26;
  v27 = v34;
  *(a1 + 48) = v33;
  *(a1 + 64) = v27;
  result = *&v35;
  v29 = v36;
  *(a1 + 80) = v35;
  *(a1 + 96) = v29;
  *(a1 + 112) = v24;
  *(a1 + 120) = v23;
  return result;
}

unint64_t sub_18EFD21C4()
{
  v1 = v0;
  v2 = [v0 memberValueType];
  v3 = sub_18EFD1A70();

  [v1 capabilities];
  return v3;
}

void sub_18EFD2230()
{
  v1 = [v0 memberValueTypes];
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  v2 = sub_18F093DCC();

  v3 = sub_18EFA0A7C(v2);
  if (!v3)
  {
LABEL_10:

    return;
  }

  v4 = v3;
  v11 = MEMORY[0x1E69E7CC0];
  sub_18F00F080(0, v3 & ~(v3 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193AD8BA0](i, v2);
      }

      else
      {
        v6 = *(v2 + 8 * i + 32);
      }

      v7 = v6;
      v8 = sub_18EFD1A70();

      v10 = *(v11 + 16);
      v9 = *(v11 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_18F00F080(v9 > 1, v10 + 1, 1);
      }

      *(v11 + 16) = v10 + 1;
      *(v11 + 8 * v10 + 32) = v8;
    }

    goto LABEL_10;
  }

  __break(1u);
}

unint64_t sub_18EFD23A0()
{
  v1 = v0;
  v2 = [v0 memberValueType];
  v3 = sub_18EFD1A70();

  [v1 capabilities];
  return v3;
}

void *sub_18EFD2408@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 identifier];
  v5 = sub_18F093B8C();
  v7 = v6;

  v8 = [v2 mangledTypeName];
  v9 = sub_18F093B8C();
  v11 = v10;

  v12 = sub_18F013B0C(v2);
  if (v12)
  {
    v13 = sub_18EFD61FC(v12);
  }

  else
  {
    v13 = 0;
  }

  v14 = [v2 contentType];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 contentType];

    v15 = sub_18F093B8C();
    v18 = v17;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  v21[0] = v9;
  v21[1] = v11;
  v21[2] = v13;
  v21[3] = v15;
  v21[4] = v18;
  sub_18EFD0F5C(v5, v7, v21, __src);
  return memcpy(a1, __src, 0x79uLL);
}

id sub_18EFD255C(uint64_t *a1)
{
  v1 = a1[11];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[10];
  v4 = a1[12];
  v3 = a1[13];
  v5 = a1[14];
  v6 = *a1;
  v7 = a1[1];

  if (v4)
  {
    v4 = sub_18EF94FC0(v4);
  }

  objc_allocWithZone(LNCodableValueType);

  return sub_18F00DA80(v6, v7, v2, v1, v4, v3, v5);
}

void *sub_18EFD261C(void *result)
{
  v1 = result;
  v2 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v3 = result[2];
  while (1)
  {
    if (v3 == v2)
    {

      v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
      v8 = sub_18F093DBC();

      v9 = [v7 initWithMemberValueTypes_];

      return v9;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    v4 = *(v1 + 8 * v2 + 32);
    sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
    sub_18EFA3D24(v4);
    v5 = sub_18EF9E62C(v4);
    if (!v5)
    {

      sub_18EFA3DA4(v4);

      return 0;
    }

    v6 = v5;
    MEMORY[0x193AD88C0]();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_18F093DFC();
    }

    sub_18F093E3C();

    result = sub_18EFA3DA4(v4);
    ++v2;
  }

  __break(1u);
  return result;
}

id sub_18EFD27C4(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return [objc_opt_self() *off_1E72B0C60[a1]];
  }
}

id sub_18EFD2818(unint64_t a1, uint64_t a2)
{
  sub_18EF825F4(0, &unk_1ED5FFA60, off_1E72B0220);
  v4 = sub_18EF9E62C(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [objc_allocWithZone(LNAsyncSequenceValueType) initWithMemberValueType:v4 capabilities:a2];

  return v6;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNValueType.asJson(prettyPrinted:sortedKeys:)(Swift::Bool prettyPrinted, Swift::Bool sortedKeys)
{
  OUTLINED_FUNCTION_180();
  v4 = v3;
  v6 = v5;
  sub_18F09305C();
  OUTLINED_FUNCTION_7();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_301();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_18F0930BC();
  OUTLINED_FUNCTION_277(v11);
  sub_18F0930AC();
  if (v6)
  {
    sub_18F09304C();
    v12 = OUTLINED_FUNCTION_411();
    v13 = OUTLINED_FUNCTION_266();
    sub_18EFD2A7C(v13, v14);
    v2 = *(v8 + 8);
    v15 = OUTLINED_FUNCTION_230();
    v2(v15);
    v16 = OUTLINED_FUNCTION_140();
    v2(v16);
    v17 = OUTLINED_FUNCTION_369();
    v12(v17);
  }

  if (v4)
  {
    sub_18F09303C();
    v2 = &v34;
    v18 = OUTLINED_FUNCTION_411();
    v19 = OUTLINED_FUNCTION_266();
    sub_18EFD2A7C(v19, v20);
    v21 = *(v8 + 8);
    v22 = OUTLINED_FUNCTION_230();
    v21(v22);
    v23 = OUTLINED_FUNCTION_140();
    v21(v23);
    v24 = OUTLINED_FUNCTION_369();
    v18(v24);
  }

  v25 = sub_18EFD1A70();
  v26 = OUTLINED_FUNCTION_264();
  sub_18EFD2D80(v26, v27);
  OUTLINED_FUNCTION_48();

  sub_18EFA3DA4(v25);
  if (v2)
  {
    v28 = sub_18EFD2EC8();
    v29 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v28);
    OUTLINED_FUNCTION_43(v29, v30);
  }

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_177();
  result._object = v32;
  result._countAndFlagsBits = v31;
  return result;
}

uint64_t sub_18EFD2A7C(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB88A0, &qword_18F0A1460);
  v4 = MEMORY[0x1EEE9AC00](v26);
  v27 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v8 = sub_18F09305C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = *(v9 + 16);
  v25 = v2;
  v15(v12, v2, v8);
  v23 = sub_18EF8558C(&unk_1EACB6B68);
  sub_18F093FBC();
  v16 = v26;
  sub_18EF8558C(&unk_1EACB6B70);
  v24 = a2;
  v17 = sub_18F093AAC();
  v18 = *(v16 + 48);
  *v7 = (v17 & 1) == 0;
  if (v17)
  {
    (*(v9 + 32))(&v7[v18], v14, v8);
  }

  else
  {
    (*(v9 + 8))(v14, v8);
    v19 = v24;
    v15(&v7[v18], v24, v8);
    v15(v12, v19, v8);
    sub_18F093FCC();
  }

  v20 = v27;
  sub_18EF869B4();
  v21 = *v20;
  (*(v9 + 32))(v28, &v20[*(v16 + 48)], v8);
  return v21;
}

char *sub_18EFD2D80(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F093BCC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = a2;
  sub_18F012B0C();
  v7 = sub_18F09308C();
  if (v2)
  {
    return v6;
  }

  v9 = v7;
  v10 = v8;
  sub_18F093BBC();
  v6 = sub_18F093BAC();
  v12 = v11;
  sub_18EF9A4AC(v9, v10);
  if (v12)
  {
    return v6;
  }

  result = sub_18F0941AC();
  __break(1u);
  return result;
}

unint64_t sub_18EFD2EC8()
{
  result = qword_1ED5FD5F0;
  if (!qword_1ED5FD5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED5FD5F0);
  }

  return result;
}

_BYTE *sub_18EFD2F1C()
{
  v2 = sub_18F093BCC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &__dst[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  memcpy(__dst, v0, sizeof(__dst));
  sub_18F019DD0();
  v5 = sub_18F09308C();
  if (v1)
  {
    return v4;
  }

  v7 = v5;
  v8 = v6;
  sub_18F093BBC();
  v4 = sub_18F093BAC();
  v10 = v9;
  sub_18EF9A4AC(v7, v8);
  if (v10)
  {
    return v4;
  }

  result = sub_18F0941AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFD3070()
{
  OUTLINED_FUNCTION_227();
  v2 = sub_18F093BCC();
  v3 = OUTLINED_FUNCTION_95(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_22();
  v4 = OUTLINED_FUNCTION_104();
  v1(v4);
  v5 = OUTLINED_FUNCTION_264();
  sub_18EF8558C(v5);
  OUTLINED_FUNCTION_270();
  sub_18F09308C();
  if (v0)
  {
    return OUTLINED_FUNCTION_257();
  }

  sub_18F093BBC();
  OUTLINED_FUNCTION_289();
  sub_18F093BAC();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_289();
  sub_18EF9A4AC(v8, v9);
  if (v7)
  {
    return OUTLINED_FUNCTION_257();
  }

  OUTLINED_FUNCTION_248();
  result = OUTLINED_FUNCTION_410(v11, v12, v13, v14, v15, v16);
  __break(1u);
  return result;
}

char *sub_18EFD3198(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_18F093BCC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = a2;
  v19 = a3 & 1;
  v20 = a4;
  sub_18F019C7C();
  v11 = sub_18F09308C();
  if (v4)
  {
    return v10;
  }

  v13 = v11;
  v14 = v12;
  sub_18F093BBC();
  v10 = sub_18F093BAC();
  v16 = v15;
  sub_18EF9A4AC(v13, v14);
  if (v16)
  {
    return v10;
  }

  result = sub_18F0941AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFD3378(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8C78, &qword_18F0A7C08);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF99908();
  sub_18F0945BC();
  v9[1] = a2;
  type metadata accessor for LNPrimitiveValueTypeIdentifier(0);
  sub_18EF8558C(&unk_1EACB8C88);
  sub_18F0943CC();
  return (*(v5 + 8))(v7, v4);
}

void sub_18EFD34F8()
{
  OUTLINED_FUNCTION_180();
  v1 = v0;
  v3 = v2;
  v6 = OUTLINED_FUNCTION_269(v2, v4, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_164();
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  v1();
  sub_18F0945BC();
  sub_18F0943AC();
  v9 = OUTLINED_FUNCTION_265();
  v10(v9);
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_177();
}

uint64_t sub_18EFD3600(uint64_t a1)
{
  v2 = sub_18EF99908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD363C(uint64_t a1)
{
  v2 = sub_18EF99908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFD3694(uint64_t a1)
{
  v2 = sub_18EFA1A00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD36D0(uint64_t a1)
{
  v2 = sub_18EFA1A00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFD3754(uint64_t a1)
{
  v2 = sub_18EFA742C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD3790(uint64_t a1)
{
  v2 = sub_18EFA742C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFD3814(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000018F0AE4E0 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000018F0AE970 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t sub_18EFD38F0(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_18EFD392C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB9008, &qword_18F0A9C90);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F02015C();
  sub_18F0945BC();
  v14 = 0;
  sub_18F09433C();
  if (!v5)
  {
    v13 = 1;
    sub_18F09433C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_18EFD3AA4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9038, &qword_18F0A9CA8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F02015C();
  sub_18F09459C();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_18F09423C();
    v10 = 1;
    sub_18F09423C();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t sub_18EFD3C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFD3814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFD3CA0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFD38E8();
  *a1 = result;
  return result;
}

uint64_t sub_18EFD3CC8(uint64_t a1)
{
  v2 = sub_18F02015C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD3D04(uint64_t a1)
{
  v2 = sub_18F02015C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFD3D40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18EFD3AA4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_18EFD3D90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5464656C676E616DLL && a2 == 0xEF656D614E657079;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x800000018F0ADF90 == a2;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x800000018F0AE970 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
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

uint64_t sub_18EFD3EC0(char a1)
{
  if (!a1)
  {
    return 0x5464656C676E616DLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  return 0xD000000000000015;
}

uint64_t sub_18EFD3F30(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9018, &qword_18F0A9C98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F0201B0();
  sub_18F0945BC();
  v12 = 0;
  sub_18F09437C();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18F012DE0();
    sub_18F09436C();
    v10[14] = 2;
    sub_18F09437C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18EFD40E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9040, &qword_18F0A9CB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F0201B0();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v25 = 0;
  v9 = sub_18F09427C();
  v11 = v10;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
  v24 = 1;
  sub_18EF9CC4C();
  sub_18F09426C();
  v20 = v22;
  v23 = 2;
  v12 = sub_18F09427C();
  v13 = v8;
  v15 = v14;
  (*(v6 + 8))(v13, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v18 = v20;
  v17 = v21;
  *v21 = v9;
  v17[1] = v11;
  v17[2] = v18;
  v17[3] = v12;
  v17[4] = v15;
  return result;
}

uint64_t sub_18EFD436C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB9028, &qword_18F0A9CA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F020204();
  sub_18F0945BC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_18EFD44B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFD3D90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFD44D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFD3EB8();
  *a1 = result;
  return result;
}

uint64_t sub_18EFD4500(uint64_t a1)
{
  v2 = sub_18F0201B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD453C(uint64_t a1)
{
  v2 = sub_18F0201B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_18EFD4578@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18EFD40E8(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_18EFD4600(uint64_t a1)
{
  v2 = sub_18F020204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD463C(uint64_t a1)
{
  v2 = sub_18F020204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_18EFD46A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[128] = 1;
  __src[0] = a1;
  __src[1] = a2;
  memset(&__src[2], 0, 40);
  __src[7] = 1;
  memset(&__src[8], 0, 56);
  LOBYTE(__src[15]) = 1;
  v7[0] = a1;
  v7[1] = a2;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  v16 = 1;
  sub_18F017B38(__src, v5);
  sub_18F017B08(v7);
  return memcpy(a3, __src, 0x79uLL);
}

void *sub_18EFD473C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v9[128] = 1;
  __src[0] = a1;
  __src[1] = a2;
  memset(&__src[2], 0, 32);
  __src[6] = a3;
  __src[7] = a4;
  __src[8] = a5;
  __src[9] = a6;
  memset(&__src[10], 0, 40);
  LOBYTE(__src[15]) = 1;
  v11[0] = a1;
  v11[1] = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  v21 = 1;
  sub_18F017B38(__src, v9);
  sub_18F017B08(v11);
  return memcpy(a7, __src, 0x79uLL);
}

void *sub_18EFD47D0@<X0>(void *a1@<X8>)
{
  v3[128] = 0;
  __src[0] = 0xD000000000000012;
  __src[1] = 0x800000018F0AE420;
  memset(&__src[2], 0, 40);
  __src[7] = 1;
  memset(&__src[8], 0, 57);
  v5[0] = 0xD000000000000012;
  v5[1] = 0x800000018F0AE420;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  v9 = 1;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = 0;
  sub_18F017B38(__src, v3);
  sub_18F017B08(v5);
  return memcpy(a1, __src, 0x79uLL);
}

uint64_t sub_18EFD487C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E65707974 && a2 == 0xE800000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x800000018F0AE4E0 == a2;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000015 && 0x800000018F0AE970 == a2;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D6574737973 && a2 == 0xE600000000000000;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x656C6261646F63 && a2 == 0xE700000000000000;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 7958113 && a2 == 0xE300000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_18F09444C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18EFD4A74(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8C70, &qword_18F0A7C00);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF8E900();
  sub_18F0945BC();
  LOBYTE(v12) = 0;
  sub_18F09437C();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_18F09433C();
    LOBYTE(v12) = 2;
    sub_18F09433C();
    v9 = *(v3 + 64);
    v12 = *(v3 + 48);
    v13 = v9;
    v15 = 3;
    sub_18F01E0E0();
    sub_18F09436C();
    v10 = *(v3 + 96);
    v12 = *(v3 + 80);
    v13 = v10;
    v14 = *(v3 + 112);
    v15 = 4;
    sub_18F01E134();
    sub_18F09436C();
    LOBYTE(v12) = *(v3 + 120);
    v15 = 5;
    sub_18F01E188();
    sub_18F09436C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18EFD4CC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFD487C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFD4CF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFD4A6C();
  *a1 = result;
  return result;
}

uint64_t sub_18EFD4D18(uint64_t a1)
{
  v2 = sub_18EF8E900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD4D54(uint64_t a1)
{
  v2 = sub_18EF8E900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFD4E64(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8C58, &qword_18F0A7BF8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA16C8();
  sub_18F0945BC();
  v13 = a2;
  v16 = 0;
  sub_18F012B0C();
  sub_18F0943CC();
  if (!v4)
  {
    v13 = a3;
    v14 = v15 & 1;
    v16 = 1;
    type metadata accessor for LNArrayValueTypeCapabilities(0);
    sub_18EF8558C(&unk_1EACB8C68);
    sub_18F09436C();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_18EFD5044(uint64_t a1)
{
  v2 = sub_18EFA16C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD5080(uint64_t a1)
{
  v2 = sub_18EFA16C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFD50DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_18EFD5130(uint64_t a1)
{
  v2 = sub_18EF8EABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD516C(uint64_t a1)
{
  v2 = sub_18EF8EABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18EFD51F0()
{
  OUTLINED_FUNCTION_180();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_50();
  __swift_project_boxed_opaque_existential_1Tm(v3, v3[3]);
  v1();
  sub_18F0945BC();
  sub_18F09437C();
  v7 = OUTLINED_FUNCTION_266();
  v8(v7);
  OUTLINED_FUNCTION_225();
  OUTLINED_FUNCTION_177();
}

uint64_t sub_18EFD5308(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_296(0x6E65644965707974, 0xEE00726569666974, a1);
    OUTLINED_FUNCTION_354();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFD5378(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8BC0, &qword_18F0A7BB0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01DF0C();
  sub_18F0945BC();
  v9[1] = a2;
  type metadata accessor for LNFoundationValueTypeIdentifier(0);
  sub_18EF8558C(&unk_1EACB8BD0);
  sub_18F0943CC();
  return (*(v5 + 8))(v7, v4);
}

void *sub_18EFD54F8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8D28, &qword_18F0A7C50);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01DF0C();
  sub_18F09459C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    type metadata accessor for LNFoundationValueTypeIdentifier(0);
    sub_18EF8558C(&unk_1EACB6EE0);
    sub_18F0942CC();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

uint64_t sub_18EFD56A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5464656C676E616DLL && a2 == 0xEF656D614E657079;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x800000018F0ADF90 == a2;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x800000018F0AE970 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_18F09444C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_18EFD5820(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x5464656C676E616DLL;
      break;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EFD58C0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8EB0, &unk_18F0A7D50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01E338();
  sub_18F0945BC();
  v13 = 0;
  sub_18F09437C();
  if (!v2)
  {
    v12 = 1;
    sub_18F09437C();
    v11 = *(v3 + 32);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
    sub_18F012DE0();
    sub_18F09436C();
    v10[14] = 3;
    sub_18F09437C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18EFD5AA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8D08, &qword_18F0A7C40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01E338();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v32 = 0;
  v9 = sub_18F09427C();
  v11 = v10;
  v26 = v9;
  v31 = 1;
  v12 = sub_18F09427C();
  v27 = v13;
  v25 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7470, &qword_18F09BDB0);
  v30 = 2;
  sub_18EF9CC4C();
  sub_18F09426C();
  v24 = v28;
  v29 = 3;
  v14 = sub_18F09427C();
  v16 = v15;
  v17 = *(v6 + 8);
  v23 = v14;
  v17(v8, v5);
  v18 = v24;

  v19 = v27;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  v21 = v25;
  *a2 = v26;
  a2[1] = v11;
  a2[2] = v21;
  a2[3] = v19;
  v22 = v23;
  a2[4] = v18;
  a2[5] = v22;
  a2[6] = v16;
  return result;
}

uint64_t sub_18EFD5DC4(uint64_t a1)
{
  v2 = sub_18F01DF60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD5E00(uint64_t a1)
{
  v2 = sub_18F01DF60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFD5FD8(uint64_t a1)
{
  v2 = sub_18F01DF0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD6014(uint64_t a1)
{
  v2 = sub_18F01DF0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_18EFD6050@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_18EFD54F8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_18EFD60A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFD56A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFD60C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFD5818();
  *a1 = result;
  return result;
}

uint64_t sub_18EFD60F0(uint64_t a1)
{
  v2 = sub_18F01E338();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD612C(uint64_t a1)
{
  v2 = sub_18F01E338();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_18EFD6168@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18EFD5AA0(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

void *sub_18EFD61FC(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC8];
  v33 = v5;
  v34 = v1;
  if (v4)
  {
    while (1)
    {
      v8 = v6;
LABEL_8:
      v9 = (v8 << 9) | (8 * __clz(__rbit64(v4)));
      v10 = *(*(a1 + 48) + v9);
      v11 = *(*(a1 + 56) + v9);
      v12 = sub_18F093B8C();
      v14 = v13;
      v42 = v10;
      v15 = v11;
      v40 = sub_18F013BD0(v15, &selRef_introducedVersion);
      v41 = v16;
      v38 = sub_18F013BD0(v15, &selRef_deprecatedVersion);
      v39 = v17;
      v36 = sub_18F013BD0(v15, &selRef_obsoletedVersion);
      v37 = v18;
      swift_isUniquelyReferenced_nonNull_native();
      v19 = v12;
      v20 = sub_18EFAF54C();
      if (__OFADD__(v7[2], (v21 & 1) == 0))
      {
        break;
      }

      v22 = v20;
      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8818, &qword_18F0A13E8);
      if (sub_18F09417C())
      {
        v24 = sub_18EFAF54C();
        if ((v23 & 1) != (v25 & 1))
        {
          goto LABEL_22;
        }

        v22 = v24;
      }

      v4 &= v4 - 1;
      if (v23)
      {

        v26 = (v7[7] + 48 * v22);
        *v26 = v40;
        v26[1] = v41;
        v26[2] = v38;
        v26[3] = v39;
        v26[4] = v36;
        v26[5] = v37;
      }

      else
      {
        v7[(v22 >> 6) + 8] |= 1 << v22;
        v27 = (v7[6] + 16 * v22);
        *v27 = v19;
        v27[1] = v14;
        v28 = (v7[7] + 48 * v22);
        *v28 = v40;
        v28[1] = v41;
        v28[2] = v38;
        v28[3] = v39;
        v28[4] = v36;
        v28[5] = v37;

        v29 = v7[2];
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_21;
        }

        v7[2] = v31;
      }

      v6 = v8;
      v5 = v33;
      v1 = v34;
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= v5)
      {

        return v7;
      }

      v4 = *(v1 + 8 * v8);
      ++v6;
      if (v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFD64C8()
{
  OUTLINED_FUNCTION_115();
  v2 = v1 == 0x61567265626D656DLL && v0 == 0xEF6570795465756CLL;
  if (v2 || (OUTLINED_FUNCTION_291(0x61567265626D656DLL, 0xEF6570795465756CLL) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0x696C696261706163 && v0 == 0xEC00000073656974)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_291(0x696C696261706163, 0xEC00000073656974);
    OUTLINED_FUNCTION_354();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18EFD6578(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8BA8, &qword_18F0A7BA8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01DEB8();
  sub_18F0945BC();
  v14 = a2;
  v13 = 0;
  sub_18F012B0C();
  sub_18F0943CC();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    type metadata accessor for LNAsyncSequenceValueTypeCapabilities(0);
    sub_18EF8558C(&unk_1EACB8BB8);
    sub_18F0943CC();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_18EFD6748(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8D18, &qword_18F0A7C48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01DEB8();
  sub_18F09459C();
  HIBYTE(v8) = 0;
  sub_18EF8882C();
  sub_18F0942CC();
  v7 = v9;
  type metadata accessor for LNAsyncSequenceValueTypeCapabilities(0);
  HIBYTE(v8) = 1;
  sub_18EF8558C(&unk_1EACB8D20);
  sub_18F0942CC();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

uint64_t sub_18EFD6A78(uint64_t a1)
{
  v2 = sub_18F01DEB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD6AB4(uint64_t a1)
{
  v2 = sub_18F01DEB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFD6AF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18EFD6748(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_18EFD6B38(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000018F0AE950 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFD6BD4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8C28, &qword_18F0A7BE0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01E008();
  sub_18F0945BC();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8C38, &qword_18F0A7BE8);
  sub_18F01E05C();
  sub_18F0943CC();
  return (*(v5 + 8))(v7, v4);
}

void *sub_18EFD6D30(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8D60, &qword_18F0A7C80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01E008();
  sub_18F09459C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8C38, &qword_18F0A7BE8);
    sub_18F01E38C();
    sub_18F0942CC();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

uint64_t sub_18EFD6EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFD6B38(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFD6EE4(uint64_t a1)
{
  v2 = sub_18F01E008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD6F20(uint64_t a1)
{
  v2 = sub_18F01E008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_18EFD6F5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_18EFD6D30(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_18EFD6FA4(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = _s14CodableWrapperVMa_0(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 16);
  if (v13)
  {
    v17 = v3;
    v21 = MEMORY[0x1E69E7CC0];
    sub_18F09411C();
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
    v19 = *(v10 + 72);
    v20 = v15;
    do
    {
      sub_18EF86A14(v14, v12);
      sub_18EF9FE2C();
      v18 = a3;
      sub_18EF9CEB8(v12, v8, a3);
      sub_18F0940FC();
      sub_18F09412C();
      sub_18F09413C();
      sub_18F09410C();
      v14 += v19;
      --v13;
    }

    while (v13);

    return v21;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_18EFD71E0(uint64_t a1)
{
  v3 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v34 = v1;
    v42 = MEMORY[0x1E69E7CC0];
    sub_18F00F258();
    v8 = v42;
    result = sub_18F0193F0(a1);
    v11 = result;
    v12 = 0;
    v40 = a1 + 64;
    v35 = a1 + 72;
    v36 = v6;
    if ((result & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(a1 + 32))
      {
        v13 = v11 >> 6;
        if ((*(v40 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v9)
        {
          goto LABEL_25;
        }

        HIDWORD(v38) = v10;
        v39 = v9;
        v14 = *(*(a1 + 56) + 8 * v11);
        LNEnumMetadata.wrapper.getter(v14, v15, v16, v17, v18, v19, v20, v21, v33, v34, v35, v36, SHIDWORD(v36), v37, v38, v39, v40, v41, v42, v43, v44);

        v22 = v8;
        v42 = v8;
        v23 = *(v8 + 16);
        if (v23 >= *(v8 + 24) >> 1)
        {
          sub_18F00F258();
          v22 = v42;
        }

        *(v22 + 16) = v23 + 1;
        v8 = v22;
        result = sub_18EF88240(v5, v22 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v23);
        v24 = 1 << *(a1 + 32);
        if (v11 >= v24)
        {
          goto LABEL_26;
        }

        v25 = *(v40 + 8 * v13);
        if ((v25 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(a1 + 36) != v39)
        {
          goto LABEL_28;
        }

        v26 = v25 & (-2 << (v11 & 0x3F));
        if (v26)
        {
          v24 = __clz(__rbit64(v26)) | v11 & 0x7FFFFFFFFFFFFFC0;
          v27 = v36;
        }

        else
        {
          v28 = v13 << 6;
          v29 = v13 + 1;
          v27 = v36;
          v30 = (v35 + 8 * v13);
          while (v29 < (v24 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              result = sub_18F019E24(v11, v39, BYTE4(v38) & 1);
              v24 = __clz(__rbit64(v31)) + v28;
              goto LABEL_18;
            }
          }

          result = sub_18F019E24(v11, v39, BYTE4(v38) & 1);
        }

LABEL_18:
        if (++v12 == v27)
        {
          return v8;
        }

        v10 = 0;
        v9 = *(a1 + 36);
        v11 = v24;
        if (v24 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

uint64_t sub_18EFD74D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6570795474696E75 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFD7548(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x546E49746C697562 && a2 == 0xEB00000000657079)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFD75E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFD74D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFD7610(uint64_t a1)
{
  v2 = sub_18EFABF2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD764C(uint64_t a1)
{
  v2 = sub_18EFABF2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFD76D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFD7548(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFD7700(uint64_t a1)
{
  v2 = sub_18F01DFB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD773C(uint64_t a1)
{
  v2 = sub_18F01DFB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18EFD7778(uint64_t *a1@<X8>)
{
  sub_18EFA1880();
  if (!v1)
  {
    *a1 = v3;
  }
}

id sub_18EFD7818@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v91 - v5);
  v98 = _s19BasicCodableWrapperOMa(0);
  v7 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 valueType];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {

    v18 = [v1 value];
    sub_18F093FAC();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      v97 = v9;
      v19 = v7;
      v20 = v101;
      v21 = [v1 valueType];
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = v22;
        v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84C8, &qword_18F0A1180) + 64);
        *a1 = v20;
        v25 = [v23 enumerationIdentifier];
        v26 = sub_18F093B8C();
        v28 = v27;

        a1[2] = v26;
        a1[3] = v28;
        v29 = [v2 displayRepresentation];
        if (v29)
        {
          v30 = v29;
          sub_18EFE6608(a1 + v24);

          v31 = 0;
        }

        else
        {
          v31 = 1;
        }

        v74 = _s14CodableWrapperVMa_2(0);
        __swift_storeEnumTagSinglePayload(a1 + v24, v31, 1, v74);
        v75 = v98;
LABEL_65:
        swift_storeEnumTagMultiPayload();
        v86 = a1;
LABEL_66:
        v87 = 0;
        v88 = v75;
        return __swift_storeEnumTagSinglePayload(v86, v87, 1, v88);
      }

      v7 = v19;
      v9 = v97;
    }

    v32 = [v1 value];
    sub_18F093FAC();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8888, &qword_18F0A1448);
    if (swift_dynamicCast())
    {
      v33 = v101;
      v94 = v1;
      v95 = a1;
      v34 = [v1 valueType];
      objc_opt_self();
      v35 = swift_dynamicCastObjCClass();
      if (v35)
      {
        v92 = v35;
        v93 = v34;
        v97 = v9;
        v91 = v7;
        result = sub_18EFA0A7C(v33);
        v37 = result;
        v38 = 0;
        v96 = MEMORY[0x1E69E7CC0];
        while (v37 != v38)
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            result = MEMORY[0x193AD8BA0](v38, v33);
          }

          else
          {
            if (v38 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_72;
            }

            result = *(v33 + 8 * v38 + 32);
          }

          v39 = result;
          v40 = (v38 + 1);
          if (__OFADD__(v38, 1))
          {
            __break(1u);
LABEL_72:
            __break(1u);
            return result;
          }

          sub_18EFD7818(v6);

          if (__swift_getEnumTagSinglePayload(v6, 1, v98) == 1)
          {
            result = sub_18EF933AC(v6, &unk_1EACB72F8);
            ++v38;
          }

          else
          {
            sub_18EF88240(v6, v97);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v96 = sub_18F00E59C(0, v96[2] + 1, 1, v96);
            }

            v42 = v96[2];
            v41 = v96[3];
            if (v42 >= v41 >> 1)
            {
              v96 = sub_18F00E59C((v41 > 1), v42 + 1, 1, v96);
            }

            v44 = v96;
            v43 = v97;
            v96[2] = v42 + 1;
            result = sub_18EF88240(v43, v44 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v42);
            v38 = v40;
          }
        }

        v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84B8, &qword_18F0A1178) + 64);
        v46 = v95;
        *v95 = v96;
        v47 = [v92 memberValueType];
        v48 = sub_18EFD1A70();

        v46[1] = v48;
        v49 = [v94 displayRepresentation];
        if (v49)
        {
          v50 = v49;
          sub_18EFE6608(v46 + v45);

          v51 = 0;
        }

        else
        {
          v51 = 1;
        }

        v89 = _s14CodableWrapperVMa_2(0);
        __swift_storeEnumTagSinglePayload(v46 + v45, v51, 1, v89);
        v75 = v98;
        swift_storeEnumTagMultiPayload();
        v86 = v46;
        goto LABEL_66;
      }

      v2 = v94;
      a1 = v95;
    }

    v62 = [v2 value];
    sub_18F093FAC();
    swift_unknownObjectRelease();
    sub_18EF825F4(0, &unk_1ED5FCDB0, off_1E72B0008);
    if (swift_dynamicCast())
    {
      v63 = v101;
      v64 = [v2 valueType];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84B0, &qword_18F0A1170) + 96);
        *a1 = [v63 isTransient];
        v66 = [v63 identifier];
        sub_18EFE417C(v102);

        v67 = v102[1];
        *(a1 + 1) = v102[0];
        *(a1 + 3) = v67;
        a1[5] = v103;
        v68 = v64;
        v69 = sub_18EFD1A70();

        a1[6] = v69;
        a1[7] = sub_18F013BD0(v63, &selRef_managedAccountIdentifier);
        a1[8] = v70;
        v71 = [v2 displayRepresentation];
        if (v71)
        {
          v72 = v71;
          sub_18EFE6608(a1 + v65);

          v73 = 0;
        }

        else
        {
          v73 = 1;
        }

        v90 = _s14CodableWrapperVMa_2(0);
        __swift_storeEnumTagSinglePayload(a1 + v65, v73, 1, v90);
        v75 = v98;
        goto LABEL_65;
      }
    }

    v76 = [v2 value];
    sub_18F093FAC();
    swift_unknownObjectRelease();
    sub_18EF825F4(0, &unk_1EACB6AB8, off_1E72B0010);
    if (!swift_dynamicCast())
    {
      v86 = a1;
      v87 = 1;
      v88 = v98;
      return __swift_storeEnumTagSinglePayload(v86, v87, 1, v88);
    }

    v77 = v101;
    v78 = [v101 instanceIdentifier];
    v79 = sub_18F093B8C();
    v81 = v80;

    v82 = [v77 typeIdentifier];
    v83 = sub_18F093B8C();
    v85 = v84;

    *a1 = v79;
    a1[1] = v81;
    a1[2] = v83;
    a1[3] = v85;
    v75 = v98;
    goto LABEL_65;
  }

  v12 = [v11 typeIdentifier];
  v13 = [v2 value];
  sub_18F093FAC();
  swift_unknownObjectRelease();
  sub_18EF914D4(&v101, (v102 + 8));
  switch(v12)
  {
    case 0uLL:
      if (!swift_dynamicCast())
      {
        goto LABEL_46;
      }

      v14 = v99;
      v15 = v100;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84D8, &qword_18F0A1188) + 48);
      *a1 = v14;
      a1[1] = v15;
      v17 = [v2 displayRepresentation];
      if (v17)
      {
        goto LABEL_40;
      }

      v55 = 1;
      goto LABEL_48;
    case 1uLL:
      if (!swift_dynamicCast())
      {
        goto LABEL_46;
      }

      v53 = v99;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84E8, &qword_18F0A1190) + 48);
      *a1 = v53;
      v17 = [v2 displayRepresentation];
      if (v17)
      {
        goto LABEL_40;
      }

      v55 = 1;
      goto LABEL_48;
    case 2uLL:
      if (swift_dynamicCast())
      {
        goto LABEL_44;
      }

      goto LABEL_46;
    case 3uLL:
      if (swift_dynamicCast())
      {
        goto LABEL_44;
      }

      goto LABEL_46;
    case 4uLL:
      if (swift_dynamicCast())
      {
        goto LABEL_44;
      }

      goto LABEL_46;
    case 5uLL:
      if (swift_dynamicCast())
      {
        goto LABEL_44;
      }

      goto LABEL_46;
    case 6uLL:
      if (!swift_dynamicCast())
      {
        goto LABEL_46;
      }

LABEL_44:
      v56 = v99;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8508, &qword_18F0A11A0) + 48);
      *a1 = v56;
      v17 = [v2 displayRepresentation];
      if (v17)
      {
        goto LABEL_40;
      }

      v55 = 1;
      goto LABEL_48;
    case 7uLL:
      if (!swift_dynamicCast())
      {
        goto LABEL_46;
      }

      v52 = v99;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84F8, &qword_18F0A1198) + 48);
      *a1 = v52;
      v17 = [v2 displayRepresentation];
      if (v17)
      {
LABEL_40:
        v54 = v17;
        sub_18EFE6608(a1 + v16);

        v55 = 0;
      }

      else
      {
        v55 = 1;
      }

LABEL_48:

      v60 = _s14CodableWrapperVMa_2(0);
      __swift_storeEnumTagSinglePayload(a1 + v16, v55, 1, v60);
      v61 = v98;
      swift_storeEnumTagMultiPayload();
      v57 = a1;
      v58 = 0;
      v59 = v61;
      break;
    default:
LABEL_46:

      v57 = a1;
      v58 = 1;
      v59 = v98;
      break;
  }

  __swift_storeEnumTagSinglePayload(v57, v58, 1, v59);
  return __swift_destroy_boxed_opaque_existential_1Tm(v102 + 1);
}

void *sub_18EFD8644(uint64_t a1)
{
  v2 = _s14CodableWrapperVMa_0(0);
  v31 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v32 = a1;

  v10 = 0;
  v11 = MEMORY[0x1E69E7CC8];
  v29 = v9;
  v30 = a1 + 64;
  if (v8)
  {
LABEL_8:
    while (1)
    {
      v13 = (v10 << 9) | (8 * __clz(__rbit64(v8)));
      v14 = *(*(v32 + 56) + v13);
      v15 = *(*(v32 + 48) + v13);
      v16 = v14;
      v17 = v4;
      sub_18EFD9154(v4);
      swift_isUniquelyReferenced_nonNull_native();
      v33 = v11;
      sub_18EF952E4(v15);
      if (__OFADD__(v11[2], (v19 & 1) == 0))
      {
        break;
      }

      v20 = v18;
      v21 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB86B8, &qword_18F0A12D8);
      if (sub_18F09417C())
      {
        sub_18EF952E4(v15);
        if ((v21 & 1) != (v23 & 1))
        {
          goto LABEL_22;
        }

        v20 = v22;
      }

      v11 = v33;
      if (v21)
      {
        v4 = v17;
        sub_18F019D78(v17, v33[7] + *(v31 + 72) * v20);

        v16 = v15;
      }

      else
      {
        v33[(v20 >> 6) + 8] |= 1 << v20;
        *(v11[6] + 8 * v20) = v15;
        v4 = v17;
        sub_18EF88240(v17, v11[7] + *(v31 + 72) * v20);
        v24 = v11[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_21;
        }

        v11[2] = v26;
      }

      v8 &= v8 - 1;

      v9 = v29;
      v5 = v30;
      if (!v8)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        return v11;
      }

      v8 = *(v5 + 8 * v12);
      ++v10;
      if (v8)
      {
        v10 = v12;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  type metadata accessor for LNStaticDeferredLocalizedStringAlternativeKind(0);
  result = sub_18F0944AC();
  __break(1u);
  return result;
}

uint64_t sub_18EFD8920(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x56746C7561666564 && a2 == 0xEC00000065756C61;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C626174 && a2 == 0xE500000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x5255656C646E7562 && a2 == 0xE90000000000004CLL;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x800000018F0AE500 == a2;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x74616E7265746C61 && a2 == 0xEC00000073657669)
          {

            return 5;
          }

          else
          {
            v11 = sub_18F09444C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18EFD8B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFD8920(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFD8B44(uint64_t a1)
{
  v2 = sub_18EF870B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFD8B80(uint64_t a1)
{
  v2 = sub_18EF870B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFD8BBC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AE0, &qword_18F0A0C08);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v26 - v4;
  v5 = sub_18F09416C();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7AE8, &qword_18F0A0C10);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF870B4();
  sub_18F0945BC();
  LOBYTE(v34) = 0;
  v12 = v33;
  sub_18F09437C();
  if (v12)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v33 = v7;
  v14 = v9;
  v15 = v32;
  LOBYTE(v34) = 1;
  sub_18F09433C();
  LOBYTE(v34) = 2;
  sub_18F09433C();
  v16 = _s14CodableWrapperVMa_0(0);
  v28 = v8;
  v29 = v1;
  v17 = v16;
  LOBYTE(v34) = 3;
  sub_18F0932BC();
  sub_18EF8558C(&unk_1EACB6B48);
  sub_18F09436C();
  v27 = v17;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v18 = sub_18F0945AC();
  v19 = v30;
  sub_18F09415C();
  result = __swift_getEnumTagSinglePayload(v19, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v20 = v31;
    v21 = v33;
    (*(v31 + 32))(v33, v19, v15);
    sub_18EFD90D8(v18, &v34, v21);

    (*(v20 + 8))(v21, v15);
    if (v35)
    {
      v22 = swift_dynamicCast();
      v24 = v28;
      v23 = v29;
      v25 = v27;
      if ((v22 & 1) != 0 && v36 == 1)
      {
        LOBYTE(v34) = 4;
        sub_18F0931CC();
        sub_18EF8558C(&unk_1EACB6B58);
        v24 = v28;
        v23 = v29;
        sub_18F09436C();
      }
    }

    else
    {
      sub_18EF933AC(&v34, &qword_1EACB9180);
      v24 = v28;
      v23 = v29;
      v25 = v27;
    }

    *&v34 = *(v23 + *(v25 + 36));
    v36 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78B0, &qword_18F09DDE0);
    sub_18F01688C();
    sub_18F09436C();
    return (*(v14 + 8))(v11, v24);
  }

  return result;
}

double sub_18EFD90D8@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  if (*(a1 + 16) && (v5 = sub_18F010414(a3), (v6 & 1) != 0))
  {
    v7 = *(a1 + 56) + 32 * v5;

    sub_18EFB6E2C(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_18EFD9154@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB78A0, &qword_18F09DDD8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v71 = &v65 - v4;
  v5 = _s14CodableWrapperVMa_0(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v65 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v65 - v15;
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    v19 = v2;
    v20 = [v19 key];
    v21 = sub_18F093B8C();
    v69 = v22;
    v70 = v21;

    v23 = sub_18F013BD0(v19, &selRef_defaultValue);
    v67 = v24;
    v68 = v23;
    v25 = sub_18F013BD0(v19, &selRef_table);
    v66 = v26;
    v27 = [v19 bundleURL];
    if (v27)
    {
      v28 = v27;
      sub_18F09327C();

      v29 = sub_18F0932BC();
      v30 = 0;
    }

    else
    {
      v29 = sub_18F0932BC();
      v30 = 1;
    }

    __swift_storeEnumTagSinglePayload(v16, v30, 1, v29);
    v43 = [v19 localizedStringResource];
    v44 = [v18 alternatives];
    type metadata accessor for LNStaticDeferredLocalizedStringAlternativeKind(0);
    sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
    sub_18EF8558C(&unk_1ED5FD778);
    v45 = sub_18F093A4C();

    v46 = v5[7];
    sub_18F0932BC();
    __swift_storeEnumTagSinglePayload(v10 + v46, 1, 1, v29);
    v47 = v5[8];
    v48 = sub_18F0931CC();
    __swift_storeEnumTagSinglePayload(v10 + v47, 1, 1, v48);
    v49 = v69;
    *v10 = v70;
    v10[1] = v49;
    v50 = v67;
    v10[2] = v68;
    v10[3] = v50;
    v51 = v66;
    v10[4] = v25;
    v10[5] = v51;
    sub_18F019D08(v16, v10 + v46);
    if (v43)
    {
      v74 = sub_18EF825F4(0, &qword_1ED5FD160, 0x1E696B100);
      v73 = v43;
      v52 = v43;
      v53 = v71;
      sub_18F09319C();
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v48);
      sub_18EF872D4();
    }

    else
    {
      sub_18EF933AC(v10 + v47, &qword_1EACB78A0);
      __swift_storeEnumTagSinglePayload(v10 + v47, 1, 1, v48);
    }

    v54 = (v10 + v5[9]);
    v55 = sub_18EFD8644(v45);
  }

  else
  {
    v31 = [v2 key];
    v32 = sub_18F093B8C();
    v69 = v33;
    v70 = v32;

    v34 = sub_18F013BD0(v2, &selRef_defaultValue);
    v67 = v35;
    v68 = v34;
    v36 = sub_18F013BD0(v2, &selRef_table);
    v38 = v37;
    v39 = [v2 bundleURL];
    if (v39)
    {
      v40 = v39;
      sub_18F09327C();

      v41 = sub_18F0932BC();
      v42 = 0;
    }

    else
    {
      v41 = sub_18F0932BC();
      v42 = 1;
    }

    __swift_storeEnumTagSinglePayload(v14, v42, 1, v41);
    v19 = [v2 unsafeLocalizedStringResource];
    type metadata accessor for LNStaticDeferredLocalizedStringAlternativeKind(0);
    sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
    sub_18EF8558C(&unk_1ED5FD778);
    v56 = sub_18F093A5C();
    v57 = v5[7];
    sub_18F0932BC();
    __swift_storeEnumTagSinglePayload(v8 + v57, 1, 1, v41);
    v58 = v5[8];
    v59 = sub_18F0931CC();
    __swift_storeEnumTagSinglePayload(v8 + v58, 1, 1, v59);
    v60 = v69;
    *v8 = v70;
    v8[1] = v60;
    v61 = v67;
    v8[2] = v68;
    v8[3] = v61;
    v8[4] = v36;
    v8[5] = v38;
    sub_18F019D08(v14, v8 + v57);
    if (v19)
    {
      v74 = sub_18EF825F4(0, &qword_1ED5FD160, 0x1E696B100);
      v73 = v19;
      v62 = v19;
      v63 = v71;
      sub_18F09319C();
      __swift_storeEnumTagSinglePayload(v63, 0, 1, v59);
      sub_18EF872D4();
    }

    else
    {
      sub_18EF933AC(v8 + v58, &qword_1EACB78A0);
      __swift_storeEnumTagSinglePayload(v8 + v58, 1, 1, v59);
    }

    v54 = (v8 + v5[9]);
    v55 = sub_18EFD8644(v56);
    v16 = v14;
    v10 = v8;
  }

  sub_18EF933AC(v16, &qword_1EACB72C8);
  *v54 = v55;
  return sub_18EF88240(v10, v72);
}

uint64_t sub_18EFD9810(void (*a1)(uint64_t *__return_ptr, char *))
{
  v3 = _s14CodableWrapperVMa_1(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7310, &qword_18F09BD48);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) == 1)
  {
    return 0;
  }

  sub_18EF88240(v8, v5);
  a1(&v11, v5);
  if (v1)
  {
    result = sub_18EF86A6C();
    __break(1u);
  }

  else
  {
    sub_18EF86A6C();
    return v11;
  }

  return result;
}

uint64_t sub_18EFD99B4(void (*a1)(uint64_t *__return_ptr, char *))
{
  v3 = _s14CodableWrapperVMa_8(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7308, &qword_18F09BD40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) == 1)
  {
    return 0;
  }

  sub_18EF88240(v8, v5);
  a1(&v11, v5);
  if (v1)
  {
    result = sub_18EF86A6C();
    __break(1u);
  }

  else
  {
    sub_18EF86A6C();
    return v11;
  }

  return result;
}

uint64_t sub_18EFD9B58(void (*a1)(uint64_t *__return_ptr, char *))
{
  v3 = _s14CodableWrapperVMa_2(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7860, &qword_18F09DA60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - v7;
  sub_18EF9FE2C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v3) == 1)
  {
    return 0;
  }

  sub_18EF88240(v8, v5);
  a1(&v11, v5);
  if (v1)
  {
    result = sub_18EF86A6C();
    __break(1u);
  }

  else
  {
    sub_18EF86A6C();
    return v11;
  }

  return result;
}

uint64_t sub_18EFD9F00(uint64_t a1, uint64_t a2)
{
  v2 = sub_18F093BCC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F093BBC();
  v6 = sub_18F093B9C();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    return 0;
  }

  sub_18EF844C4(v6, v8);
  v9 = sub_18F00D47C();
  sub_18EF9A498(v6, v8);
  sub_18EF9A498(v6, v8);
  return v9;
}

uint64_t sub_18EFDA054(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F093BCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F093BBC();
  v8 = sub_18F093B9C();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    return 0;
  }

  sub_18EF844C4(v8, v10);
  v11 = sub_18F00D52C();
  if (!v2)
  {
    a2 = v11;
  }

  sub_18EF9A498(v8, v10);
  sub_18EF9A498(v8, v10);
  return a2;
}

uint64_t sub_18EFDA1DC@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_18F093BCC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F093BBC();
  v9 = sub_18F093B9C();
  v11 = v10;
  result = (*(v6 + 8))(v8, v5);
  if (v11 >> 60 == 15)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  else
  {
    sub_18EF844C4(v9, v11);
    sub_18F00D5D0(&v19);
    if (v3)
    {
      sub_18EF9A498(v9, v11);
      return sub_18EF9A498(v9, v11);
    }

    v13 = v19;
    v14 = v21;
    v17 = v22;
    v18 = v20;
    sub_18EF9A498(v9, v11);
    result = sub_18EF9A498(v9, v11);
    v16 = v17;
    v15 = v18;
  }

  *a3 = v13;
  *(a3 + 8) = v15;
  *(a3 + 24) = v14;
  *(a3 + 32) = v16;
  return result;
}

uint64_t sub_18EFDA384(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F093BCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F093BBC();
  v8 = sub_18F093B9C();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    return 0;
  }

  sub_18EF844C4(v8, v10);
  v11 = sub_18F00D694();
  if (!v2)
  {
    a2 = v11;
  }

  sub_18EF9A498(v8, v10);
  sub_18EF9A498(v8, v10);
  return a2;
}

uint64_t sub_18EFDA50C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F093BCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F093BBC();
  v8 = sub_18F093B9C();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  if (v10 >> 60 == 15)
  {
    return 0;
  }

  sub_18EF844C4(v8, v10);
  v11 = sub_18F00D734();
  if (!v2)
  {
    a2 = v11;
  }

  sub_18EF9A498(v8, v10);
  sub_18EF9A498(v8, v10);
  return a2;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNStaticDeferredLocalizedString.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  v3 = OUTLINED_FUNCTION_146();
  v4 = _s14CodableWrapperVMa_0(v3);
  v5 = OUTLINED_FUNCTION_95(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_141();
  sub_18EFD9154(v2);
  OUTLINED_FUNCTION_109();
  sub_18EFDADC8();
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_26();
  sub_18EF86A6C();
  if (v1)
  {
    v6 = sub_18EFD2EC8();
    v7 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v6);
    OUTLINED_FUNCTION_43(v7, v8);
  }

  v9 = OUTLINED_FUNCTION_49();
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

char *sub_18EFDA788(uint64_t a1)
{
  v2 = sub_18F093BCC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F0930BC();
  swift_allocObject();
  sub_18F0930AC();

  sub_18F09309C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  sub_18F01A078();
  v5 = sub_18F09308C();
  if (v1 || (v7 = v5, v8 = v6, sub_18F093BBC(), v4 = sub_18F093BAC(), v10 = v9, sub_18EF9A4AC(v7, v8), v10))
  {

    return v4;
  }

  else
  {
    result = sub_18F0941AC();
    __break(1u);
  }

  return result;
}

char *sub_18EFDA918(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F093BCC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14[1] = a2;
  sub_18F0930BC();
  swift_allocObject();
  sub_18F0930AC();

  sub_18F09309C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB75A8, &qword_18F09BE28);
  sub_18F013694();
  v7 = sub_18F09308C();
  if (v2 || (v9 = v7, v10 = v8, sub_18F093BBC(), v6 = sub_18F093BAC(), v12 = v11, sub_18EF9A4AC(v9, v10), v12))
  {

    return v6;
  }

  else
  {
    result = sub_18F0941AC();
    __break(1u);
  }

  return result;
}

_BYTE *sub_18EFDAAB0(uint64_t a1)
{
  v3 = sub_18F093BCC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &__dst[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  memcpy(__dst, v1, sizeof(__dst));
  sub_18F0930BC();
  swift_allocObject();
  sub_18F0930AC();

  sub_18F09309C();
  sub_18F019C18();
  v6 = sub_18F09308C();
  if (v2 || (v8 = v6, v9 = v7, sub_18F093BBC(), v5 = sub_18F093BAC(), v11 = v10, sub_18EF9A4AC(v8, v9), v11))
  {

    return v5;
  }

  else
  {
    result = sub_18F0941AC();
    __break(1u);
  }

  return result;
}

char *sub_18EFDAC3C(uint64_t a1)
{
  v3 = sub_18F093BCC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  v14[0] = *v1;
  v14[1] = v6;
  v15 = *(v1 + 32);
  sub_18F0930BC();
  swift_allocObject();
  sub_18F0930AC();

  sub_18F09309C();
  sub_18F013F24();
  v7 = sub_18F09308C();
  if (v2 || (v9 = v7, v10 = v8, sub_18F093BBC(), v5 = sub_18F093BAC(), v12 = v11, sub_18EF9A4AC(v9, v10), v12))
  {

    return v5;
  }

  else
  {
    result = sub_18F0941AC();
    __break(1u);
  }

  return result;
}

void sub_18EFDADC8()
{
  OUTLINED_FUNCTION_180();
  v2 = v1;
  v3 = sub_18F093BCC();
  v4 = OUTLINED_FUNCTION_95(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_330();
  v5 = sub_18F0930BC();
  OUTLINED_FUNCTION_277(v5);
  sub_18F0930AC();
  OUTLINED_FUNCTION_352();
  sub_18F09309C();
  v2(0);
  v6 = OUTLINED_FUNCTION_265();
  sub_18EF8558C(v6);
  OUTLINED_FUNCTION_363();
  sub_18F09308C();
  if (v0 || (sub_18F093BBC(), OUTLINED_FUNCTION_252(), sub_18F093BAC(), v8 = v7, v9 = OUTLINED_FUNCTION_252(), sub_18EF9A4AC(v9, v10), v8))
  {

    OUTLINED_FUNCTION_215();
    OUTLINED_FUNCTION_177();
  }

  else
  {
    OUTLINED_FUNCTION_248();
    OUTLINED_FUNCTION_410(v11, v12, v13, v14, v15, v16);
    __break(1u);
  }
}

char *sub_18EFDAF20(uint64_t a1)
{
  v3 = sub_18F093BCC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[1];
  v14[0] = *v1;
  v14[1] = v6;
  v14[2] = v1[2];
  sub_18F0930BC();
  swift_allocObject();
  sub_18F0930AC();

  sub_18F09309C();
  sub_18F019174();
  v7 = sub_18F09308C();
  if (v2 || (v9 = v7, v10 = v8, sub_18F093BBC(), v5 = sub_18F093BAC(), v12 = v11, sub_18EF9A4AC(v9, v10), v12))
  {

    return v5;
  }

  else
  {
    result = sub_18F0941AC();
    __break(1u);
  }

  return result;
}

char *sub_18EFDB0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18F093BCC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  sub_18F0930BC();
  swift_allocObject();
  sub_18F0930AC();

  sub_18F09309C();
  sub_18F01924C();
  v11 = sub_18F09308C();
  if (v4 || (v13 = v11, v14 = v12, sub_18F093BBC(), v10 = sub_18F093BAC(), v16 = v15, sub_18EF9A4AC(v13, v14), v16))
  {

    return v10;
  }

  else
  {
    result = sub_18F0941AC();
    __break(1u);
  }

  return result;
}

char *sub_18EFDB23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_18F093BCC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  sub_18F0930BC();
  swift_allocObject();
  sub_18F0930AC();

  sub_18F09309C();
  sub_18F019324();
  v13 = sub_18F09308C();
  if (v5 || (v15 = v13, v16 = v14, sub_18F093BBC(), v12 = sub_18F093BAC(), v18 = v17, sub_18EF9A4AC(v15, v16), v18))
  {

    return v12;
  }

  else
  {
    result = sub_18F0941AC();
    __break(1u);
  }

  return result;
}

uint64_t sub_18EFDB3D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB87C8, &qword_18F0A13A0);
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  v6 = sub_18F0930CC();
  v7 = LNMeasurementUnitTypeOfUnit(v6);

  v8 = type metadata accessor for MeasurementWrapper(0);
  *(a2 + *(v8 + 20)) = v7;
  v9 = sub_18F0930CC();
  v10 = [v9 symbol];

  v11 = sub_18F093B8C();
  v13 = v12;

  result = (*(v5 + 8))(a1, v4);
  v15 = (a2 + *(v8 + 24));
  *v15 = v11;
  v15[1] = v13;
  return result;
}

unint64_t sub_18EFDB53C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFCE1A0();
  *a1 = result;
  return result;
}

uint64_t sub_18EFDB56C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18EFCE1E4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_18EFDB5A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFCE1A0();
  *a1 = result;
  return result;
}

uint64_t sub_18EFDB5C8(uint64_t a1)
{
  v2 = sub_18F01E290();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDB604(uint64_t a1)
{
  v2 = sub_18F01E290();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDB640@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB87C8, &qword_18F0A13A0);
  v44 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8DC8, &qword_18F0A7CC0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - v9;
  v47 = type metadata accessor for MeasurementWrapper(0);
  MEMORY[0x1EEE9AC00](v47);
  v45 = a1;
  v46 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01E290();
  sub_18F09459C();
  if (v2)
  {
    v13 = 0;
    goto LABEL_4;
  }

  v42 = v6;
  v50 = 1;
  v12 = sub_18F0942AC();
  v16 = v46;
  v15 = v47;
  *&v46[*(v47 + 20)] = v12;
  v49 = 2;
  v17 = v12;
  v18 = sub_18F09427C();
  v39 = v17;
  v40 = v19;
  v20 = &v16[*(v15 + 24)];
  *v20 = v18;
  v20[1] = v19;
  v48 = 0;
  v41 = v18;
  sub_18EF8992C(&unk_1EACB8DD0);
  sub_18F0942CC();
  v38 = v7;
  v21 = sub_18F0930CC();
  v22 = [v21 symbol];

  v23 = sub_18F093B8C();
  v25 = v24;

  if (v23 == v41 && v25 == v40)
  {

    v28 = v44;
    goto LABEL_14;
  }

  v27 = sub_18F09444C();

  v28 = v44;
  if (v27)
  {
LABEL_14:
    sub_18F0930EC();
    v34 = sub_18F093B5C();
    v35 = LNMeasurementUnitTypeToUnit(v39, v34);

    sub_18EF825F4(0, &qword_1ED5FE5D8, 0x1E696AFD0);
    v36 = v46;
    sub_18F0930DC();
    (*(v28 + 8))(v42, v4);
    (*(v8 + 8))(v10, v38);
    sub_18EF86A14(v36, v43);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    return sub_18EF86A6C();
  }

  v29 = sub_18F0940BC();
  swift_allocError();
  v30 = v4;
  v32 = v31;
  v33 = v38;
  sub_18F09422C();
  sub_18F0940AC();
  (*(*(v29 - 8) + 104))(v32, *MEMORY[0x1E69E6B00], v29);
  swift_willThrow();
  (*(v28 + 8))(v42, v30);
  (*(v8 + 8))(v10, v33);
  v13 = 1;
LABEL_4:
  result = __swift_destroy_boxed_opaque_existential_1Tm(v45);
  if (v13)
  {
  }

  return result;
}

uint64_t sub_18EFDBBDC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8CE0, &qword_18F0A7C30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F01E290();
  sub_18F0945BC();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB87C8, &qword_18F0A13A0);
  sub_18EF8992C(&unk_1EACB8CF0);
  sub_18F0943CC();
  if (!v1)
  {
    type metadata accessor for MeasurementWrapper(0);
    v8[14] = 1;
    sub_18F0943AC();
    v8[13] = 2;
    sub_18F09437C();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_18EFDBE00(uint64_t a1)
{
  v90[4] = *MEMORY[0x1E69E9840];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB87C8, &qword_18F0A13A0);
  v84 = *(v86 - 8);
  v2 = MEMORY[0x1EEE9AC00](v86);
  v83 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v83 - v5;
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v83 - v7;
  v9 = sub_18F09310C();
  v85 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_18F09331C();
  v87 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18F0932BC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v83 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18EFB6E2C(a1, v90);
  if (swift_dynamicCast())
  {
    v19 = v89[0];
    *(swift_allocObject() + 16) = v19;
LABEL_53:
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    return;
  }

  if (swift_dynamicCast())
  {
    v20 = v89[0];
    *(swift_allocObject() + 16) = v20;
    goto LABEL_53;
  }

  if (swift_dynamicCast())
  {
    v21 = v89[0];
    v22 = v89[1];
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v22;
    goto LABEL_53;
  }

  sub_18EF825F4(0, &qword_1ED5FF4D0, off_1E72B0180);
  if (swift_dynamicCast())
  {
    v24 = v89[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7E40, &qword_18F0A0DA0);
    swift_allocBox();
    sub_18EFD9154(v25);

    goto LABEL_53;
  }

  if (swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7E30, &qword_18F0A0D98);
    swift_allocBox();
    (*(v16 + 32))(v26, v18, v15);
    goto LABEL_53;
  }

  if (swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7E18, &qword_18F0A0D90);
    swift_allocBox();
    (*(v87 + 32))(v27, v14, v12);
    goto LABEL_53;
  }

  if (swift_dynamicCast())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7E00, &qword_18F0A0D88);
    swift_allocBox();
    (*(v85 + 32))(v28, v11, v9);
    goto LABEL_53;
  }

  v29 = v86;
  if (swift_dynamicCast())
  {
    v30 = v84;
    (*(v84 + 32))(v6, v8, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7DE8, &qword_18F0A0D80);
    swift_allocBox();
    v32 = v31;
    v33 = v83;
    (*(v30 + 16))(v83, v6, v29);
    sub_18EFDB3D8(v33, v32);
    (*(v30 + 8))(v6, v29);
    goto LABEL_53;
  }

  sub_18EF825F4(0, &qword_1EACB87C0, 0x1E696E840);
  if (swift_dynamicCast())
  {
    v34 = v89[0];
    v35 = swift_allocObject();
    v36 = objc_opt_self();
    v88 = 0;
    v37 = [v36 archivedDataWithRootObject:v34 requiringSecureCoding:1 error:&v88];
    v38 = v88;
    if (v37)
    {
LABEL_19:
      v39 = v37;
      v40 = v88;
      v41 = sub_18F09330C();
      v43 = v42;

      *(v35 + 16) = v41;
      *(v35 + 24) = v43;
      goto LABEL_53;
    }

LABEL_22:
    v45 = v38;
    v46 = sub_18F09318C();

    swift_willThrow();
    swift_deallocUninitializedObject();

    goto LABEL_53;
  }

  sub_18EF825F4(0, &qword_1EACB87B8, 0x1E695FC20);
  if (swift_dynamicCast())
  {
    v34 = v89[0];
    v35 = swift_allocObject();
    v44 = objc_opt_self();
    v88 = 0;
    v37 = [v44 archivedDataWithRootObject:v34 requiringSecureCoding:1 error:&v88];
    v38 = v88;
    if (v37)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8798, &qword_18F0A1388);
  if (swift_dynamicCast())
  {
    v47 = *(v88 + 2);
    if (v47)
    {
      v48 = v88 + 32;
      v49 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_18EFB6E2C(v48, v89);
        sub_18EFDBE00(v89);
        v51 = v50;
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        if ((~v51 & 0xF000000000000007) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_18F00E6C0(0, *(v49 + 2) + 1, 1, v49);
          }

          v53 = *(v49 + 2);
          v52 = *(v49 + 3);
          if (v53 >= v52 >> 1)
          {
            v49 = sub_18F00E6C0((v52 > 1), v53 + 1, 1, v49);
          }

          *(v49 + 2) = v53 + 1;
          *&v49[8 * v53 + 32] = v51;
        }

        v48 += 32;
        --v47;
      }

      while (v47);
    }

    else
    {

      v49 = MEMORY[0x1E69E7CC0];
    }

    *(swift_allocObject() + 16) = v49;
    goto LABEL_53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB87B0, &qword_18F0A1398);
  if (!swift_dynamicCast())
  {
    sub_18EF825F4(0, &qword_1EACB87A0, 0x1E695DFB0);
    if (swift_dynamicCast())
    {
    }

    goto LABEL_53;
  }

  v54 = v89[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8870, &qword_18F0A1438);
  v55 = sub_18F0941CC();
  v56 = v55;
  v57 = 0;
  v59 = (v54 + 8);
  v58 = v54[8];
  v85 = v55;
  v86 = v54;
  v60 = 1 << *(v54 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & v58;
  v63 = (v60 + 63) >> 6;
  v84 = v55 + 64;
  if ((v61 & v58) == 0)
  {
LABEL_40:
    v65 = v57;
    while (1)
    {
      v57 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        __break(1u);
      }

      if (v57 >= v63)
      {
        break;
      }

      v66 = *&v59[8 * v57];
      ++v65;
      if (v66)
      {
        v64 = __clz(__rbit64(v66));
        v62 = (v66 - 1) & v66;
        goto LABEL_45;
      }
    }

    v82 = swift_allocObject();

    *(v82 + 16) = v56;
    goto LABEL_53;
  }

  while (1)
  {
    v64 = __clz(__rbit64(v62));
    v62 &= v62 - 1;
LABEL_45:
    v67 = v64 | (v57 << 6);
    v68 = *(v86 + 56);
    v69 = (*(v86 + 48) + 16 * v67);
    v70 = v69[1];
    v87 = *v69;
    v71 = *(v68 + 8 * v67);

    v72 = v71;
    v73 = [v72 min];
    v74 = [v73 integerValue];

    v75 = [v72 max];
    v76 = [v75 integerValue];

    v56 = v85;
    *(v84 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
    v77 = (v56[6] + 16 * v67);
    *v77 = v87;
    v77[1] = v70;
    v78 = (v56[7] + 16 * v67);
    *v78 = v74;
    v78[1] = v76;
    v79 = v56[2];
    v80 = __OFADD__(v79, 1);
    v81 = v79 + 1;
    if (v80)
    {
      break;
    }

    v56[2] = v81;
    if (!v62)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
}

uint64_t sub_18EFDC8E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFDC960(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73657A6973 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFDC9E8(void *a1, unint64_t a2)
{
  v139 = a2;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7CE8, &qword_18F0A0CE0);
  v90 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v136 = v83 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7CF0, &qword_18F0A0CE8);
  v133 = *(v4 - 8);
  v134 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v130 = v83 - v5;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7CF8, &qword_18F0A0CF0);
  v89 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v131 = v83 - v6;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D00, &qword_18F0A0CF8);
  v88 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v129 = v83 - v7;
  v127 = type metadata accessor for LNEnumMetadata.CodableWrapper(0);
  MEMORY[0x1EEE9AC00](v127);
  v128 = v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D08, &qword_18F0A0D00);
  v87 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v125 = v83 - v9;
  v123 = type metadata accessor for LNEntityMetadata.CodableWrapper(0);
  MEMORY[0x1EEE9AC00](v123);
  v124 = v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D10, &qword_18F0A0D08);
  v86 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v121 = v83 - v11;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D18, &qword_18F0A0D10);
  v85 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v118 = v83 - v12;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D20, &qword_18F0A0D18);
  v84 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = v83 - v13;
  v115 = type metadata accessor for MeasurementWrapper(0);
  MEMORY[0x1EEE9AC00](v115);
  v116 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D28, &qword_18F0A0D20);
  v83[3] = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v111 = v83 - v15;
  v113 = sub_18F09310C();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v110 = v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D30, &qword_18F0A0D28);
  v83[2] = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v106 = v83 - v17;
  v108 = sub_18F09331C();
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v105 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D38, &qword_18F0A0D30);
  v83[1] = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v101 = v83 - v19;
  v103 = sub_18F0932BC();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v100 = v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D40, &qword_18F0A0D38);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = v83 - v21;
  v95 = _s14CodableWrapperVMa_0(0);
  MEMORY[0x1EEE9AC00](v95);
  v96 = v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D48, &qword_18F0A0D40);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v24 = v83 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D50, &qword_18F0A0D48);
  v92 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = v83 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D58, &qword_18F0A0D50);
  v91 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v83 - v29;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D60, &qword_18F0A0D58);
  v138 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v32 = v83 - v31;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF9F4F8();
  v140 = v32;
  sub_18F0945BC();
  switch(v139 >> 60)
  {
    case 1uLL:
      LOBYTE(v142) = 1;
      sub_18F017694();
      v71 = v140;
      v33 = v141;
      sub_18F09431C();
      sub_18F09439C();
      (*(v92 + 8))(v27, v25);
      v72 = *(v138 + 8);
      v73 = v71;
      goto LABEL_16;
    case 2uLL:
      LOBYTE(v142) = 2;
      sub_18EF97950();
      v62 = v140;
      v63 = v141;
      sub_18F09431C();
      v64 = v94;
      sub_18F09437C();
      (*(v93 + 8))(v24, v64);
      return (*(v138 + 8))(v62, v63);
    case 3uLL:
      v65 = swift_projectBox();
      sub_18EF86A14(v65, v96);
      LOBYTE(v142) = 3;
      sub_18F017640();
      v66 = v97;
      v42 = v140;
      v41 = v141;
      sub_18F09431C();
      sub_18EF8558C(&unk_1EACB6A38);
      v67 = v99;
      sub_18F0943CC();
      (*(v98 + 8))(v66, v67);
      goto LABEL_20;
    case 4uLL:
      v44 = swift_projectBox();
      v45 = v102;
      v46 = v100;
      v47 = v103;
      (*(v102 + 16))(v100, v44, v103);
      LOBYTE(v142) = 4;
      sub_18F0175EC();
      v48 = v101;
      v42 = v140;
      v41 = v141;
      sub_18F09431C();
      sub_18EF8558C(&unk_1EACB6B48);
      v49 = v104;
      sub_18F0943CC();
      v50 = &v113;
      goto LABEL_18;
    case 5uLL:
      v74 = swift_projectBox();
      v45 = v107;
      v46 = v105;
      v47 = v108;
      (*(v107 + 16))(v105, v74, v108);
      LOBYTE(v142) = 5;
      sub_18F017598();
      v48 = v106;
      v42 = v140;
      v41 = v141;
      sub_18F09431C();
      sub_18EF8558C(&unk_1EACB7E28);
      v49 = v109;
      sub_18F0943CC();
      v50 = &v114;
      goto LABEL_18;
    case 6uLL:
      v77 = swift_projectBox();
      v45 = v112;
      v46 = v110;
      v47 = v113;
      (*(v112 + 16))(v110, v77, v113);
      LOBYTE(v142) = 6;
      sub_18F017544();
      v48 = v111;
      v42 = v140;
      v41 = v141;
      sub_18F09431C();
      sub_18EF8558C(&unk_1EACB7E10);
      v49 = v114;
      sub_18F0943CC();
      v50 = &v115;
LABEL_18:
      (*(*(v50 - 32) + 8))(v48, v49);
      (*(v45 + 8))(v46, v47);
      return (*(v138 + 8))(v42, v41);
    case 7uLL:
      v68 = swift_projectBox();
      sub_18EF86A14(v68, v116);
      LOBYTE(v142) = 7;
      sub_18F0174F0();
      v69 = v117;
      v42 = v140;
      v41 = v141;
      sub_18F09431C();
      sub_18EF8558C(&unk_1EACB7DF8);
      v70 = v119;
      sub_18F0943CC();
      (*(v84 + 8))(v69, v70);
      goto LABEL_20;
    case 8uLL:
      v81 = *((v139 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v82 = *((v139 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v142) = 8;
      sub_18F01749C();
      v57 = v118;
      v59 = v140;
      v58 = v141;
      sub_18F09431C();
      v142 = v81;
      v143 = v82;
      sub_18F017448();
      v60 = v120;
      sub_18F0943CC();
      v61 = &v117;
      goto LABEL_23;
    case 9uLL:
      v55 = *((v139 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v56 = *((v139 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v142) = 9;
      sub_18F0173F4();
      v57 = v121;
      v59 = v140;
      v58 = v141;
      sub_18F09431C();
      v142 = v55;
      v143 = v56;
      sub_18F017448();
      v60 = v122;
      sub_18F0943CC();
      v61 = &v118;
LABEL_23:
      (*(*(v61 - 32) + 1))(v57, v60);
      v72 = *(v138 + 8);
      v73 = v59;
      v76 = v58;
      return v72(v73, v76);
    case 0xAuLL:
      v78 = swift_projectBox();
      sub_18EF86A14(v78, v124);
      LOBYTE(v142) = 10;
      sub_18EF97B84();
      v79 = v125;
      v42 = v140;
      v41 = v141;
      sub_18F09431C();
      sub_18EF8558C(&unk_1EACB7DC8);
      v80 = v126;
      sub_18F0943CC();
      (*(v87 + 8))(v79, v80);
      goto LABEL_20;
    case 0xBuLL:
      v39 = swift_projectBox();
      sub_18EF86A14(v39, v128);
      LOBYTE(v142) = 11;
      sub_18EF8F39C();
      v40 = v129;
      v42 = v140;
      v41 = v141;
      sub_18F09431C();
      sub_18EF8558C(&unk_1EACB7DB0);
      v43 = v132;
      sub_18F0943CC();
      (*(v88 + 8))(v40, v43);
LABEL_20:
      sub_18EF86A6C();
      return (*(v138 + 8))(v42, v41);
    case 0xCuLL:
      v51 = *((v139 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v142) = 12;
      sub_18F0172C0();
      v52 = v131;
      v34 = v140;
      v33 = v141;
      sub_18F09431C();
      v142 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D88, &qword_18F0A0D68);
      sub_18F017314();
      v53 = v135;
      sub_18F0943CC();
      v54 = &v121;
      goto LABEL_14;
    case 0xDuLL:
      v75 = *((v139 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v142) = 14;
      sub_18EFA1AE4();
      v52 = v136;
      v34 = v140;
      v33 = v141;
      sub_18F09431C();
      v142 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7D68, &qword_18F0A0D60);
      sub_18F0171E8();
      v53 = v137;
      sub_18F0943CC();
      v54 = &v122;
LABEL_14:
      (*(*(v54 - 32) + 8))(v52, v53);
      goto LABEL_15;
    case 0xEuLL:
      LOBYTE(v142) = 13;
      sub_18F01726C();
      v35 = v130;
      v37 = v140;
      v36 = v141;
      sub_18F09431C();
      (*(v133 + 8))(v35, v134);
      return (*(v138 + 8))(v37, v36);
    default:
      LOBYTE(v142) = 0;
      sub_18EFAC048();
      v34 = v140;
      v33 = v141;
      sub_18F09431C();
      sub_18F0943AC();
      (*(v91 + 8))(v30, v28);
LABEL_15:
      v72 = *(v138 + 8);
      v73 = v34;
LABEL_16:
      v76 = v33;
      return v72(v73, v76);
  }
}

uint64_t sub_18EFDE15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFDC8E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFDE188(uint64_t a1)
{
  v2 = sub_18EFA1AE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDE1C4(uint64_t a1)
{
  v2 = sub_18EFA1AE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDE200@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFDC958();
  *a1 = result;
  return result;
}

uint64_t sub_18EFDE228(uint64_t a1)
{
  v2 = sub_18EF9F4F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDE264(uint64_t a1)
{
  v2 = sub_18EF9F4F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDE2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFDC960(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFDE2D0(uint64_t a1)
{
  v2 = sub_18F0172C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDE30C(uint64_t a1)
{
  v2 = sub_18F0172C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDE348(uint64_t a1)
{
  v2 = sub_18F017598();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDE384(uint64_t a1)
{
  v2 = sub_18F017598();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDE3C0(uint64_t a1)
{
  v2 = sub_18F017544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDE3FC(uint64_t a1)
{
  v2 = sub_18F017544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDE438(uint64_t a1)
{
  v2 = sub_18F017694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDE474(uint64_t a1)
{
  v2 = sub_18F017694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDE4B0(uint64_t a1)
{
  v2 = sub_18EF97B84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDE4EC(uint64_t a1)
{
  v2 = sub_18EF97B84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDE528(uint64_t a1)
{
  v2 = sub_18EF8F39C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDE564(uint64_t a1)
{
  v2 = sub_18EF8F39C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDE5A0(uint64_t a1)
{
  v2 = sub_18F01749C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDE5DC(uint64_t a1)
{
  v2 = sub_18F01749C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDE618(uint64_t a1)
{
  v2 = sub_18EFAC048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDE654(uint64_t a1)
{
  v2 = sub_18EFAC048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDE690(uint64_t a1)
{
  v2 = sub_18F0174F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDE6CC(uint64_t a1)
{
  v2 = sub_18F0174F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDE708(uint64_t a1)
{
  v2 = sub_18F01726C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDE744(uint64_t a1)
{
  v2 = sub_18F01726C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDE780(uint64_t a1)
{
  v2 = sub_18F0173F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDE7BC(uint64_t a1)
{
  v2 = sub_18F0173F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDE7F8(uint64_t a1)
{
  v2 = sub_18F017640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDE834(uint64_t a1)
{
  v2 = sub_18F017640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDE870(uint64_t a1)
{
  v2 = sub_18EF97950();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDE8AC(uint64_t a1)
{
  v2 = sub_18EF97950();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDE8E8(uint64_t a1)
{
  v2 = sub_18F0175EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDE924(uint64_t a1)
{
  v2 = sub_18F0175EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDE97C(unsigned __int8 *a1, int8x16_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v4 = *(a1 + 1);
  switch(a1[32])
  {
    case 1u:
      if (a2[2].i8[0] != 1)
      {
        goto LABEL_39;
      }

      goto LABEL_22;
    case 2u:
      if (a2[2].i8[0] != 2)
      {
        goto LABEL_39;
      }

LABEL_22:
      v13 = a2->i64[0];

      return sub_18EFAD634(v2 | (v3 << 8), v13);
    case 3u:
      if (a2[2].i8[0] != 3)
      {
        goto LABEL_39;
      }

      v6 = a2->i64[0];
      v7 = a2->i64[1];
      v8 = a2[1].i64[0];
      v9 = a2[1].i64[1];
      if ((v2 | (v3 << 8)) != *(a1 + 2) || v4 != *(a1 + 3))
      {
        v11 = sub_18F09444C();
        v5 = 0;
        if ((v11 & 1) == 0)
        {
          return v5 & 1;
        }
      }

      if (v6 == v8 && v7 == v9)
      {
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_108();
LABEL_30:

      return sub_18F09444C();
    case 4u:
      if (a2[2].i8[0] != 4)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    case 5u:
      if (a2[2].i8[0] != 5)
      {
        goto LABEL_39;
      }

LABEL_26:
      if ((v2 | (v3 << 8)) != a2->i64[0] || v4 != a2->i64[1])
      {
        goto LABEL_30;
      }

LABEL_41:
      v5 = 1;
      return v5 & 1;
    case 6u:
      if (a2[2].i8[0] != 6)
      {
        goto LABEL_39;
      }

      v16 = a2->i64[0];

      return sub_18F024944(v2 | (v3 << 8), v16);
    case 7u:
      if (a2[2].i8[0] != 7)
      {
        goto LABEL_39;
      }

      v5 = (v2 | (v3 << 8)) == a2->i64[0];
      return v5 & 1;
    case 8u:
      if (a2[2].i8[0] != 8)
      {
        goto LABEL_39;
      }

      v17 = vorrq_s8(*a2, a2[1]);
      if (vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))
      {
        goto LABEL_39;
      }

      goto LABEL_41;
    default:
      if (a2[2].i8[0])
      {
LABEL_39:
        v5 = 0;
      }

      else
      {
        v5 = v2 ^ a2->i8[0] ^ 1;
      }

      return v5 & 1;
  }
}

uint64_t sub_18EFDEB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  switch(a5)
  {
    case 1:
    case 2:
    case 6:

      goto LABEL_4;
    case 3:

      goto LABEL_4;
    case 4:
    case 5:

LABEL_4:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EFDEC10(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x5374736973726570 && a2 == 0xEC00000065746174)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFDECAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFDED34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000018F0AE670 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFDEDD0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x800000018F0AE690 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFDEE6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79747265706F7270 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18EFDEF30(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6353686372616573 && a2 == 0xEC0000007365706FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFDEFAC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001DLL && 0x800000018F0AE650 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFDF048(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000018F0AE250 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_18EFDF0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_180();
  a19 = v23;
  a20 = v24;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7BE8, &qword_18F0A0C58);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_135();
  v93 = v26;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7BF0, &qword_18F0A0C60);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_135();
  v92 = v28;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7BF8, &qword_18F0A0C68);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_135();
  v90 = v30;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7C00, &qword_18F0A0C70);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_135();
  v87 = v32;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7C08, &qword_18F0A0C78);
  OUTLINED_FUNCTION_7();
  v80 = v33;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_133(v35, v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7C10, &qword_18F0A0C80);
  OUTLINED_FUNCTION_7();
  v85 = v37;
  v86 = v36;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_135();
  v84 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7C18, &qword_18F0A0C88);
  OUTLINED_FUNCTION_7();
  v82 = v41;
  v83 = v40;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_135();
  v81 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7C20, &qword_18F0A0C90);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_55();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7C28, &qword_18F0A0C98);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_50();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7C30, &qword_18F0A0CA0);
  OUTLINED_FUNCTION_7();
  v96 = v47;
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_164();
  v49 = OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_190(v49, v50);
  sub_18EF8BDF8();
  OUTLINED_FUNCTION_329();
  sub_18F0945BC();
  v51 = *v20;
  v52 = *(v20 + 1) | ((*(v20 + 5) | (v20[7] << 16)) << 32);
  switch(v20[32])
  {
    case 1u:
      v68 = v51 | (v52 << 8);
      LOBYTE(a10) = 2;
      sub_18EFA7480();
      v57 = v81;
      OUTLINED_FUNCTION_78(&type metadata for LNSystemProtocolMetadataStorage.ShowInAppStringSearchResultsCodingKeys, &a10);
      a10 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
      v69 = OUTLINED_FUNCTION_90(&unk_1EACB7770);
      v58 = v83;
      OUTLINED_FUNCTION_275(&a10, v70, v71, v72, v69);
      v65 = v82;
      goto LABEL_13;
    case 2u:
      v60 = v51 | (v52 << 8);
      LOBYTE(a10) = 3;
      sub_18F0170EC();
      v57 = v84;
      OUTLINED_FUNCTION_78(&type metadata for LNSystemProtocolMetadataStorage.PlayVideoCodingKeys, &a10);
      a10 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
      v61 = OUTLINED_FUNCTION_90(&unk_1EACB7770);
      v58 = v86;
      OUTLINED_FUNCTION_275(&a10, v62, v63, v64, v61);
      v65 = v85;
      goto LABEL_13;
    case 3u:
      OUTLINED_FUNCTION_379();
      sub_18EFA76BC();
      OUTLINED_FUNCTION_166();
      sub_18F09431C();
      LOBYTE(a10) = 0;
      OUTLINED_FUNCTION_340();
      v58 = v88;
      sub_18F09437C();
      if (!v21)
      {
        OUTLINED_FUNCTION_250();
        OUTLINED_FUNCTION_393();
        sub_18F09437C();
      }

      v66 = OUTLINED_FUNCTION_102();
      goto LABEL_14;
    case 4u:
      OUTLINED_FUNCTION_343();
      sub_18F017098();
      v57 = v87;
      OUTLINED_FUNCTION_78(&type metadata for LNSystemProtocolMetadataStorage.EntityUpdaterCodingKeys, &a10);
      OUTLINED_FUNCTION_340();
      v58 = v89;
      sub_18F09437C();
      v59 = &a14;
      goto LABEL_12;
    case 5u:
      LOBYTE(a10) = 6;
      sub_18F017044();
      v57 = v90;
      OUTLINED_FUNCTION_78(&type metadata for LNSystemProtocolMetadataStorage.UpdatableEntityCodingKeys, &a10);
      OUTLINED_FUNCTION_340();
      v58 = v91;
      sub_18F09437C();
      v59 = &a15;
      goto LABEL_12;
    case 6u:
      v73 = v51 | (v52 << 8);
      LOBYTE(a10) = 7;
      sub_18F016F3C();
      v57 = v92;
      OUTLINED_FUNCTION_78(&type metadata for LNSystemProtocolMetadataStorage.PersistentFileIdentifiableEntityCodingKeys, &a10);
      a10 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7C40, &qword_18F0A0CA8);
      v74 = sub_18F016F90();
      v58 = v94;
      OUTLINED_FUNCTION_275(&a10, v75, v76, v77, v74);
      v59 = &a16;
      goto LABEL_12;
    case 7u:
      LOBYTE(a10) = 8;
      sub_18F016EE8();
      v57 = v93;
      OUTLINED_FUNCTION_78(&type metadata for LNSystemProtocolMetadataStorage.StructuredDataRepresentableCodingKeys, &a10);
      v58 = v95;
      sub_18F0943AC();
      v59 = &a17;
LABEL_12:
      v65 = *(v59 - 32);
LABEL_13:
      v67 = *(v65 + 8);
      v66 = v57;
LABEL_14:
      v67(v66, v58);
      v55 = OUTLINED_FUNCTION_137();
      goto LABEL_15;
    case 8u:
      LOBYTE(a10) = 0;
      sub_18EF8C154();
      OUTLINED_FUNCTION_166();
      sub_18F09431C();
      v78 = OUTLINED_FUNCTION_102();
      v79(v78, v45);
      (*(v96 + 8))(v22, v97);
      goto LABEL_16;
    default:
      OUTLINED_FUNCTION_250();
      sub_18F017140();
      sub_18F09431C();
      sub_18F09438C();
      v53 = OUTLINED_FUNCTION_137();
      v54(v53);
      v55 = OUTLINED_FUNCTION_265();
LABEL_15:
      v56(v55);
LABEL_16:
      OUTLINED_FUNCTION_225();
      OUTLINED_FUNCTION_177();
      return;
  }
}

uint64_t sub_18EFDF9AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFDEC08();
  *a1 = result;
  return result;
}

uint64_t sub_18EFDF9D4(uint64_t a1)
{
  v2 = sub_18EF8BDF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDFA10(uint64_t a1)
{
  v2 = sub_18EF8BDF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDFA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFDEC10(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFDFA7C(uint64_t a1)
{
  v2 = sub_18F017140();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDFAB8(uint64_t a1)
{
  v2 = sub_18F017140();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDFAF4(uint64_t a1)
{
  v2 = sub_18EF8C154();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDFB30(uint64_t a1)
{
  v2 = sub_18EF8C154();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDFB70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFDECAC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFDFB9C(uint64_t a1)
{
  v2 = sub_18F017098();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDFBD8(uint64_t a1)
{
  v2 = sub_18F017098();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDFC18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFDED34(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFDFC44(uint64_t a1)
{
  v2 = sub_18F016F3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDFC80(uint64_t a1)
{
  v2 = sub_18F016F3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDFCC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFDEDD0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFDFCEC(uint64_t a1)
{
  v2 = sub_18F0170EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDFD28(uint64_t a1)
{
  v2 = sub_18F0170EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDFD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFDEE6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFDFD8C(uint64_t a1)
{
  v2 = sub_18EFA76BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDFDC8(uint64_t a1)
{
  v2 = sub_18EFA76BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDFE04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFDEF30(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFDFE30(uint64_t a1)
{
  v2 = sub_18EFA7480();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDFE6C(uint64_t a1)
{
  v2 = sub_18EFA7480();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDFEAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFDEFAC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFDFED8(uint64_t a1)
{
  v2 = sub_18F016EE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDFF14(uint64_t a1)
{
  v2 = sub_18F016EE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFDFF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFDF048(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFDFF80(uint64_t a1)
{
  v2 = sub_18F017044();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFDFFBC(uint64_t a1)
{
  v2 = sub_18F017044();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE0014(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7055797469746E65 && a2 == 0xEE00676E69746164)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFE00B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000018F0AC5B0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F09444C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_18EFE0154(void *a1, uint64_t a2, uint64_t a3)
{
  v13[0] = a2;
  v13[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7E98, &qword_18F0A0DC8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7EA0, &qword_18F0A0DD0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F0176E8();
  sub_18F0945BC();
  sub_18F01773C();
  sub_18F09431C();
  sub_18F09437C();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

void sub_18EFE034C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8080, &qword_18F0A0F48);
  v33 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v31 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8088, &qword_18F0A0F50);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v31 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F0176E8();
  v9 = a1;
  sub_18F09459C();
  if (v1)
  {
    goto LABEL_9;
  }

  v10 = v5;
  v32 = v3;
  v11 = sub_18F0942EC();
  sub_18EF89690(v11, 0);
  v16 = v6;
  if (v14 == v15 >> 1)
  {
    v17 = v9;
LABEL_8:
    v26 = sub_18F0940BC();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7F98, &qword_18F0A0E80);
    *v28 = &type metadata for LNAssistantDefinedSchemaTraitStorage;
    sub_18F09422C();
    sub_18F0940AC();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v34 + 8))(v8, v16);
    v9 = v17;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    return;
  }

  if (v14 < (v15 >> 1))
  {
    v17 = v9;
    v18 = v6;
    sub_18F019378(v14 + 1, v15 >> 1, v12, v13, v14, v15);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    swift_unknownObjectRelease();
    if (v22 == v24 >> 1)
    {
      v31[1] = v20;
      sub_18F01773C();
      v25 = v10;
      sub_18F09421C();
      v29 = v32;
      sub_18F09427C();
      v30 = v34;
      v31[0] = v25;
      swift_unknownObjectRelease();
      (*(v33 + 8))(v31[0], v29);
      (*(v30 + 8))(v8, v18);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      return;
    }

    v16 = v6;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_18EFE0794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE0014(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFE07C0(uint64_t a1)
{
  v2 = sub_18F0176E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE07FC(uint64_t a1)
{
  v2 = sub_18F0176E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE083C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE00B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18EFE0868(uint64_t a1)
{
  v2 = sub_18F01773C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE08A4(uint64_t a1)
{
  v2 = sub_18F01773C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18EFE08E0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_18EFE034C(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
  }
}

uint64_t sub_18EFE0B28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000014 && 0x800000018F0AE540 == a2;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x70795465756C6176 && a2 == 0xE900000000000065;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F6974704F7369 && a2 == 0xEA00000000006C61;
          if (v9 || (sub_18F09444C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000014 && 0x800000018F0AE560 == a2;
            if (v10 || (sub_18F09444C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000014 && 0x800000018F0ADF50 == a2;
              if (v11 || (sub_18F09444C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000015 && 0x800000018F0AE580 == a2;
                if (v12 || (sub_18F09444C() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7475706E497369 && a2 == 0xE700000000000000;
                  if (v13 || (sub_18F09444C() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000017 && 0x800000018F0AE5A0 == a2;
                    if (v14 || (sub_18F09444C() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x696C696261706163 && a2 == 0xEC00000073656974;
                      if (v15 || (sub_18F09444C() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0x6564497972657571 && a2 == 0xEF7265696669746ELL)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = sub_18F09444C();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18EFE0EE8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7B98, &qword_18F0A0C40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EF892F4();
  sub_18F0945BC();
  LOBYTE(v15) = 0;
  sub_18F09433C();
  if (!v2)
  {
    v9 = _s14CodableWrapperVMa_10(0);
    LOBYTE(v15) = 1;
    _s14CodableWrapperVMa_0(0);
    sub_18EF8558C(&unk_1EACB6A38);
    sub_18F09436C();
    LOBYTE(v15) = 2;
    sub_18F09436C();
    v15 = *(v3 + v9[7]);
    v17 = 3;
    sub_18F012B0C();
    sub_18F0943CC();
    LOBYTE(v15) = 4;
    sub_18F09438C();
    v15 = *(v3 + v9[9]);
    v17 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7BA8, &qword_18F0A0C48);
    sub_18F016E10();
    sub_18F0943CC();
    v15 = *(v3 + v9[10]);
    v17 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7BC0, &qword_18F0A0C50);
    sub_18EF8992C(&unk_1EACB7BC8);
    sub_18F0943CC();
    v15 = *(v3 + v9[11]);
    v17 = 7;
    type metadata accessor for LNActionParameterMetadataDynamicOptionsSupport(0);
    sub_18EF8558C(&unk_1EACB7BD0);
    sub_18F0943CC();
    LOBYTE(v15) = 8;
    sub_18F09438C();
    v10 = (v3 + v9[13]);
    v11 = *v10;
    LOBYTE(v10) = *(v10 + 8);
    v15 = v11;
    v16 = v10;
    v17 = 9;
    type metadata accessor for LNActionParameterMetadataInputConnectionBehavior(0);
    sub_18EF8558C(&unk_1EACB7BD8);
    sub_18F09436C();
    v12 = (v3 + v9[14]);
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    v15 = v13;
    v16 = v12;
    v17 = 10;
    type metadata accessor for LNActionParameterMetadataCapabilities(0);
    sub_18EF8558C(&unk_1EACB7BE0);
    sub_18F09436C();
    LOBYTE(v15) = 11;
    sub_18F09433C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18EFE1418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE0B28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE1440@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18EFE0EE0();
  *a1 = result;
  return result;
}

uint64_t sub_18EFE1468(uint64_t a1)
{
  v2 = sub_18EF892F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE14A4(uint64_t a1)
{
  v2 = sub_18EF892F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_18EFE14F8(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v57 - v8;
  v10 = sub_18F013BD0(v1, &selRef_name);
  v12 = v11;
  v13 = [v1 title];
  if (v13)
  {
    v14 = v13;
    sub_18EFD9154(v9);

    v15 = _s14CodableWrapperVMa_0(0);
    v16 = 0;
  }

  else
  {
    v15 = _s14CodableWrapperVMa_0(0);
    v16 = 1;
  }

  v17 = 1;
  __swift_storeEnumTagSinglePayload(v9, v16, 1, v15);
  v18 = [v2 parameterDescription];
  if (v18)
  {
    v19 = v18;
    sub_18EFD9154(v7);

    v17 = 0;
  }

  v20 = _s14CodableWrapperVMa_0(0);
  __swift_storeEnumTagSinglePayload(v7, v17, 1, v20);
  v21 = [v2 valueType];
  v61 = sub_18EFD1A70();

  v60 = [v2 isOptional];
  v22 = [v2 resolvableInputTypes];
  sub_18EF825F4(0, &unk_1ED5FF090, off_1E72B0158);
  v23 = sub_18F093DCC();

  v24 = sub_18EFA0A7C(v23);
  v63 = v7;
  v64 = a1;
  v62 = v9;
  if (!v24)
  {

    v27 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v40 = [v2 typeSpecificMetadata];
    type metadata accessor for LNValueTypeSpecificMetadataKey(0, v41, v42, v43);
    sub_18EF8558C(&qword_1ED5FF088);
    v44 = sub_18F093A4C();

    v66 = sub_18EFE1A78(v44);

    v65 = [v2 dynamicOptionsSupport];
    v45 = [v2 inputConnectionBehavior] == 2;
    v46 = [v2 inputConnectionBehavior];
    v47 = [v2 capabilities];
    v48 = sub_18F013BD0(v2, &selRef_queryIdentifier);
    v50 = v49;
    v51 = v64;
    *v64 = v10;
    v51[1] = v12;
    v52 = _s14CodableWrapperVMa_10(0);
    sub_18EF869B4();
    sub_18EF869B4();
    *(v51 + v52[7]) = v61;
    *(v51 + v52[8]) = v60;
    *(v51 + v52[9]) = v27;
    v53 = v65;
    *(v51 + v52[10]) = v66;
    *(v51 + v52[11]) = v53;
    *(v51 + v52[12]) = v45;
    v54 = v51 + v52[13];
    *v54 = v46;
    v54[8] = 0;
    v55 = v51 + v52[14];
    *v55 = v47;
    v55[8] = 0;
    v56 = (v51 + v52[15]);
    *v56 = v48;
    v56[1] = v50;
    return;
  }

  v25 = v24;
  v67 = MEMORY[0x1E69E7CC0];
  sub_18F00F110(0, v24 & ~(v24 >> 63), 0);
  if ((v25 & 0x8000000000000000) == 0)
  {
    v57 = v12;
    v58 = v10;
    v59 = v2;
    v26 = 0;
    v27 = v67;
    v65 = (v23 & 0xC000000000000001);
    v66 = v23;
    do
    {
      if (v65)
      {
        v28 = MEMORY[0x193AD8BA0](v26, v23);
      }

      else
      {
        v28 = *(v23 + 8 * v26 + 32);
      }

      v29 = v28;
      v30 = sub_18EFE19D8();
      v32 = v31;
      v34 = v33;
      v36 = v35;

      v67 = v27;
      v38 = *(v27 + 16);
      v37 = *(v27 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_18F00F110(v37 > 1, v38 + 1, 1);
        v27 = v67;
      }

      ++v26;
      *(v27 + 16) = v38 + 1;
      v39 = (v27 + 32 * v38);
      v39[4] = v30;
      v39[5] = v32;
      v39[6] = v34;
      v39[7] = v36;
      v23 = v66;
    }

    while (v25 != v26);

    v10 = v58;
    v2 = v59;
    v12 = v57;
    goto LABEL_17;
  }

  __break(1u);
}

id sub_18EFE19D8()
{
  v1 = [v0 kind];
  sub_18F013BD0(v0, &selRef_queryType);
  v2 = [v0 valueType];
  if (v2)
  {
    v3 = v2;
    sub_18EFD1A70();
  }

  return v1;
}

uint64_t sub_18EFE1A78(uint64_t a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E69E7CC8];
  v56 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v36 = result;
  while (v6)
  {
LABEL_10:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(v1 + 48) + 8 * v12);
    sub_18EFB6E2C(*(v1 + 56) + 32 * v12, v54 + 8);
    *&v54[0] = v13;
    v50 = v54[0];
    v51 = v54[1];
    v52 = v55;
    v14 = v13;
    sub_18EFDBE00(&v50 + 8);
    if ((~v15 & 0xF000000000000007) != 0)
    {
      v22 = v15;
      v48 = v52;
      v46 = v50;
      v47 = v51;
      v23 = *(v2 + 16);
      if (*(v2 + 24) <= v23)
      {
        sub_18F02A00C(v23 + 1, 1, v16, v17, v18, v19, v20, v21, v34, v35, v36, *v37, v37[4], v38, v39, v40, v41, v42, v43, v44, v45, v46, *(&v46 + 1), v47, *(&v47 + 1), v48, v49, v50, *(&v50 + 1), v51, *(&v51 + 1), v52, v53, *&v54[0], *(&v54[0] + 1));
      }

      v2 = v56;
      v57 = v46;
      sub_18F093B8C();
      sub_18F09452C();
      sub_18F093C1C();
      v24 = sub_18F09456C();

      v25 = v2 + 64;
      v26 = -1 << *(v2 + 32);
      v27 = v24 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v2 + 64 + 8 * (v27 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v26) >> 6;
        v1 = v36;
        while (++v28 != v31 || (v30 & 1) == 0)
        {
          v32 = v28 == v31;
          if (v28 == v31)
          {
            v28 = 0;
          }

          v30 |= v32;
          v33 = *(v25 + 8 * v28);
          if (v33 != -1)
          {
            v29 = __clz(__rbit64(~v33)) + (v28 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v29 = __clz(__rbit64((-1 << v27) & ~*(v2 + 64 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v1 = v36;
LABEL_23:
      *(v25 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      *(*(v2 + 48) + 8 * v29) = v57;
      *(*(v2 + 56) + 8 * v29) = v22;
      ++*(v2 + 16);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v46 + 1);
    }

    else
    {
      result = sub_18EF933AC(&v50, &unk_1EACB8868);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_18EFE1D28(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v55 = a1;
  v56 = a2;
  v6 = &qword_18F0A12A8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8668, &qword_18F0A12A8);
  v7 = MEMORY[0x1EEE9AC00](v57);
  v51 = (&v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v60 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v54 = &v50 - v11;
  v52 = MEMORY[0x1E69E7CC8];
  v62 = MEMORY[0x1E69E7CC8];
  v12 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a3 + 64);
  v16 = (v13 + 63) >> 6;
  v58 = a3;

  v18 = 0;
  v53 = v16;
LABEL_5:
  v19 = v18;
  if (!v15)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v20 = v6;
    v59 = v4;
    v18 = v19;
LABEL_11:
    v21 = __clz(__rbit64(v15)) | (v18 << 6);
    v22 = *(v58 + 56);
    v23 = (*(v58 + 48) + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v22 + *(*(_s19BasicCodableWrapperOMa(0) - 8) + 72) * v21;
    v27 = v57;
    v28 = v54;
    sub_18EF86A14(v26, &v54[*(v57 + 48)]);
    *v28 = v25;
    v28[1] = v24;
    v29 = v60;
    v6 = v20;
    sub_18EF869B4();
    v30 = *(v27 + 48);

    v31 = v29 + v30;
    v32 = v59;
    v55(v61, v31);
    v4 = v32;
    if (v32)
    {
      break;
    }

    v15 &= v15 - 1;
    v33 = v61[0];
    if (v61[0])
    {
      sub_18EF869B4();
      v34 = v52;
      v35 = *(v52 + 16);
      if (*(v52 + 24) <= v35)
      {
        sub_18F02A20C(v35 + 1, 1);
        v34 = v62;
      }

      v52 = v34;
      v37 = *v51;
      v36 = v51[1];
      sub_18F09452C();
      v59 = v36;
      sub_18F093C1C();
      result = sub_18F09456C();
      v38 = v52;
      v39 = v52 + 64;
      v40 = -1 << *(v52 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v52 + 64 + 8 * (v41 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v40) >> 6;
        while (++v42 != v45 || (v44 & 1) == 0)
        {
          v46 = v42 == v45;
          if (v42 == v45)
          {
            v42 = 0;
          }

          v44 |= v46;
          v47 = *(v39 + 8 * v42);
          if (v47 != -1)
          {
            v43 = __clz(__rbit64(~v47)) + (v42 << 6);
            goto LABEL_26;
          }
        }

        goto LABEL_30;
      }

      v43 = __clz(__rbit64((-1 << v41) & ~*(v52 + 64 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
      *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      v48 = (v38[6] + 16 * v43);
      v49 = v59;
      *v48 = v37;
      v48[1] = v49;
      *(v38[7] + 8 * v43) = v33;
      ++v38[2];
      result = sub_18EF86A6C();
      v16 = v53;
      goto LABEL_5;
    }

    result = sub_18EF933AC(v60, &qword_1EACB8668);
    v19 = v18;
    v16 = v53;
    if (!v15)
    {
LABEL_7:
      while (1)
      {
        v18 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v18 >= v16)
        {
          goto LABEL_28;
        }

        v15 = *(v12 + 8 * v18);
        ++v19;
        if (v15)
        {
          v20 = v6;
          v59 = v4;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }
  }

  sub_18EF933AC(v60, &qword_1EACB8668);

LABEL_28:

  return v52;
}

uint64_t sub_18EFE2134(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D65726975716572 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x726F697661686562 && a2 == 0xE800000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_18F09444C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_18EFE2298(char a1)
{
  result = 0x6D65726975716572;
  switch(a1)
  {
    case 1:
      result = 0x6F697469646E6F63;
      break;
    case 2:
      result = 0x726F697661686562;
      break;
    case 3:
      result = 0x6567617373656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EFE2328(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB7EB8, &qword_18F0A0DE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F017790();
  sub_18F0945BC();
  v8[15] = 0;
  sub_18F09437C();
  if (!v1)
  {
    v8[14] = 1;
    sub_18F09433C();
    v8[13] = 2;
    sub_18F0943AC();
    _s14CodableWrapperVMa_24(0);
    v8[12] = 3;
    _s14CodableWrapperVMa_0(0);
    sub_18EF8558C(&unk_1EACB6A38);
    sub_18F09436C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_18EFE2530@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8098, &qword_18F0A0F60);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - v6;
  v8 = _s14CodableWrapperVMa_24(0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v9 + 36);
  v13 = _s14CodableWrapperVMa_0(0);
  v23 = v12;
  __swift_storeEnumTagSinglePayload(v11 + v12, 1, 1, v13);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F017790();
  sub_18F09459C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF933AC(v11 + v23, &qword_1EACB72D0);
  }

  else
  {
    v19[1] = v13;
    v15 = v21;
    v14 = v22;
    v27 = 0;
    *v11 = sub_18F09427C();
    v11[1] = v16;
    v26 = 1;
    v11[2] = sub_18F09423C();
    v11[3] = v17;
    v19[0] = v17;
    v25 = 2;
    v11[4] = sub_18F0942AC();
    v24 = 3;
    sub_18EF8558C(&unk_1ED5FF4F8);
    sub_18F09426C();
    (*(v15 + 8))(v7, v14);
    sub_18EF872D4();
    sub_18EF86A14(v11, v20);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_18EF86A6C();
  }
}

uint64_t sub_18EFE2904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE2134(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE292C(uint64_t a1)
{
  v2 = sub_18F017790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE2968(uint64_t a1)
{
  v2 = sub_18F017790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE29D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72D0, &unk_18F09BD10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = [v1 requirement];
  v7 = [v6 predicateFormat];

  v8 = sub_18F093B8C();
  v10 = v9;

  v11 = [v1 condition];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 predicateFormat];

    v12 = sub_18F093B8C();
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = [v1 behavior];
  v17 = [v1 message];
  if (v17)
  {
    v18 = v17;
    sub_18EFD9154(v5);

    v19 = _s14CodableWrapperVMa_0(0);
    v20 = 0;
  }

  else
  {
    v19 = _s14CodableWrapperVMa_0(0);
    v20 = 1;
  }

  __swift_storeEnumTagSinglePayload(v5, v20, 1, v19);
  *a1 = v8;
  a1[1] = v10;
  a1[2] = v12;
  a1[3] = v15;
  a1[4] = v16;
  _s14CodableWrapperVMa_24(0);
  return sub_18EF869B4();
}

id sub_18EFE2BA8(void *a1, uint64_t a2, void *a3)
{
  sub_18EF825F4(0, &qword_1EACB6F80, 0x1E696AE18);
  v6 = sub_18F093E9C();
  if (a1[3])
  {

    v7 = sub_18F093E9C();
  }

  else
  {
    v7 = 0;
  }

  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = a1[4];
  v10 = _s14CodableWrapperVMa_24(0);
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_18EF9EBC8(sub_18EFA3E10);
  v12 = [v8 initWithRequirement:v6 condition:v7 behavior:v9 message:v11];

  sub_18EF86A6C();
  sub_18EF933AC(a2, &qword_1EACB72C8);
  return v12;
}

uint64_t sub_18EFE2D44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x745374616D726F66 && a2 == 0xEC000000676E6972;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018F0AE9B0 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18EFE2E18(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8E00, &qword_18F0A7CE0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA3B74();
  sub_18F0945BC();
  v13 = 0;
  sub_18F09437C();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    sub_18EFA3C14(&unk_1EACB7770);
    sub_18F0943CC();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_18EFE32E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE2D44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE3308(uint64_t a1)
{
  v2 = sub_18EFA3B74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE3344(uint64_t a1)
{
  v2 = sub_18EFA3B74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE33A0()
{
  v1 = [v0 formatString];
  v2 = sub_18F093B8C();

  v3 = [v0 parameterIdentifiers];
  sub_18F093DCC();

  return v2;
}

uint64_t sub_18EFE342C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x537972616D6D7573 && a2 == 0xED0000676E697274;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x5255656C646E7562 && a2 == 0xE90000000000004CLL;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C626174 && a2 == 0xE500000000000000;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000019 && 0x800000018F0AE990 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_18F09444C();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_18EFE3598(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8CD0, &qword_18F0A7C28);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFA3620();
  sub_18F0945BC();
  v9 = *(v3 + 2);
  v14 = *v3;
  v15 = v9;
  v13 = 0;
  sub_18F018880();
  sub_18F09436C();
  if (!v2)
  {
    v10 = _s27ActionSummaryCodableWrapperVMa(0);
    LOBYTE(v14) = 1;
    sub_18F0932BC();
    sub_18EF8558C(&unk_1EACB6B48);
    sub_18F09436C();
    LOBYTE(v14) = 2;
    sub_18F09433C();
    *&v14 = *(v3 + *(v10 + 28));
    v13 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7768, &qword_18F09BEF0);
    sub_18EFA3C14(&unk_1EACB7770);
    sub_18F0943CC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18EFE3820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE342C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE3848(uint64_t a1)
{
  v2 = sub_18EFA3620();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE3884(uint64_t a1)
{
  v2 = sub_18EFA3620();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18EFE38D8@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB72C8, &qword_18F0AAE80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = [v1 summaryString];
  if (v7)
  {
    v8 = v7;
    v9 = sub_18EFE33A0();
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v13 = 0;
  }

  v14 = [v2 bundleURL];
  if (v14)
  {
    v15 = v14;
    sub_18F09327C();

    v16 = sub_18F0932BC();
    v17 = 0;
  }

  else
  {
    v16 = sub_18F0932BC();
    v17 = 1;
  }

  __swift_storeEnumTagSinglePayload(v6, v17, 1, v16);
  v18 = sub_18F013BD0(v2, &selRef_table);
  v20 = v19;
  v21 = [v2 otherParameterIdentifiers];
  v22 = sub_18F093DCC();

  *a1 = v9;
  a1[1] = v11;
  a1[2] = v13;
  v23 = _s27ActionSummaryCodableWrapperVMa(0);
  result = sub_18EF869B4();
  v25 = (a1 + *(v23 + 24));
  *v25 = v18;
  v25[1] = v20;
  *(a1 + *(v23 + 28)) = v22;
  return result;
}

uint64_t sub_18EFE3A9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E65707974 && a2 == 0xE800000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
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

uint64_t sub_18EFE3BAC(char a1)
{
  if (!a1)
  {
    return 0x656D614E65707974;
  }

  if (a1 == 1)
  {
    return 0x65756C6176;
  }

  return 0x65706F6373;
}

uint64_t sub_18EFE3BFC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8578, &qword_18F0A11F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F019B54();
  sub_18F0945BC();
  v8[15] = 0;
  sub_18F09437C();
  if (!v1)
  {
    v8[14] = 1;
    sub_18F09437C();
    v8[13] = 2;
    sub_18F0943AC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_18EFE3D88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8568, &qword_18F0A11F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F019B54();
  sub_18F09459C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = 0;
  v9 = sub_18F09427C();
  v19 = v10;
  v21 = 1;
  v17 = sub_18F09427C();
  v18 = v11;
  v20 = 2;
  v12 = sub_18F0942AC();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v14 = v19;
  *a2 = v9;
  a2[1] = v14;
  v15 = v18;
  a2[2] = v17;
  a2[3] = v15;
  a2[4] = v12;
  return result;
}

uint64_t sub_18EFE4058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18EFE3A9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18EFE4080(uint64_t a1)
{
  v2 = sub_18F019B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18EFE40BC(uint64_t a1)
{
  v2 = sub_18F019B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_18EFE40F8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_18EFE3D88(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

void sub_18EFE417C(uint64_t *a1@<X8>)
{
  v3 = [v1 typeIdentifier];
  v4 = sub_18F093B8C();
  v6 = v5;

  v7 = [v1 instanceIdentifier];
  v8 = sub_18F093B8C();
  v10 = v9;

  *a1 = v4;
  a1[1] = v6;
  a1[2] = v8;
  a1[3] = v10;
  a1[4] = 0;
}

void static LNValue.fromJSON(_:bundleURL:effectiveBundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB72F8, &qword_18F09BD38);
  OUTLINED_FUNCTION_95(v8);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_163();
  v10 = _s19BasicCodableWrapperOMa(0);
  OUTLINED_FUNCTION_36();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_330();
  v12 = OUTLINED_FUNCTION_178();
  sub_18EF84150(v12, v13, v14, v15, v16, v17, v18, v19, v30, v31, v32, v33, v34, v35, v36, v37, vars0, vars8);
  v20 = v5;
  if (v5)
  {
    goto LABEL_7;
  }

  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    sub_18EF933AC(v6, &unk_1EACB72F8);
    v21 = sub_18EFD2EC8();
    v20 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v21);
    OUTLINED_FUNCTION_38(v20, v22);
LABEL_7:
    v27 = sub_18EFD2EC8();
    v28 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v27);
    *v29 = v20;
    OUTLINED_FUNCTION_278(v28, v29);
    goto LABEL_8;
  }

  sub_18EF88240(v6, v4);
  sub_18EF825F4(0, &qword_1ED5FE060, off_1E72B0218);
  v23 = OUTLINED_FUNCTION_244();
  if (!sub_18EFC6ADC(v23, v24, a4))
  {
    v25 = sub_18EFD2EC8();
    v20 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v25);
    OUTLINED_FUNCTION_38(v20, v26);
    OUTLINED_FUNCTION_222();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_222();
LABEL_8:
  OUTLINED_FUNCTION_400();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LNValue.asJson(userInfo:)(Swift::OpaquePointer userInfo)
{
  OUTLINED_FUNCTION_176();
  v3 = OUTLINED_FUNCTION_263();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_95(v5);
  OUTLINED_FUNCTION_94();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_162();
  sub_18EFD7818(v2);
  sub_18EFDA788(v1);
  OUTLINED_FUNCTION_48();
  v7 = OUTLINED_FUNCTION_184();
  sub_18EF933AC(v7, v8);
  if (v1)
  {
    v9 = sub_18EFD2EC8();
    v10 = OUTLINED_FUNCTION_249(&type metadata for MetadataError, v9);
    OUTLINED_FUNCTION_43(v10, v11);
  }

  v12 = OUTLINED_FUNCTION_49();
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

uint64_t sub_18EFE44E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7365756C6176 && a2 == 0xE600000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x70795465756C6176 && a2 == 0xE900000000000065;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x800000018F0AE7B0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
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

uint64_t sub_18EFE4604(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6569736E617274 && a2 == 0xE900000000000074;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x70795465756C6176 && a2 == 0xE900000000000065;
      if (v7 || (sub_18F09444C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000018 && 0x800000018F0AE910 == a2;
        if (v8 || (sub_18F09444C() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000015 && 0x800000018F0AE7B0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_18F09444C();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_18EFE47C4(char a1)
{
  result = 0x6E6569736E617274;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x70795465756C6176;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18EFE487C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000018F0AE8F0 == a2;
  if (v3 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974)
  {

    return 1;
  }

  else
  {
    v7 = sub_18F09444C();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18EFE4954(char a1)
{
  if (a1)
  {
    return 0x6E65644965707974;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_18EFE499C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_18F09444C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_18F09444C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000015 && 0x800000018F0AE7B0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_18F09444C();

      if (v8)
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

uint64_t sub_18EFE4AB8()
{
  OUTLINED_FUNCTION_115();
  v3 = v1 == 0x65756C6176 && v2 == 0xE500000000000000;
  if (v3 || (OUTLINED_FUNCTION_291(0x65756C6176, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0xD000000000000015 && 0x800000018F0AE7B0 == v0)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_291(0xD000000000000015, 0x800000018F0AE7B0);
    OUTLINED_FUNCTION_354();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_18EFE4B60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8510, &qword_18F0A11A8);
  v102 = *(v2 - 8);
  v103 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v100 = &v83 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8518, &qword_18F0A11B0);
  v107 = *(v4 - 8);
  v108 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v106 = &v83 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8520, &qword_18F0A11B8);
  v104 = *(v6 - 8);
  v105 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v83 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8528, &qword_18F0A11C0);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v83 - v8;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8530, &qword_18F0A11C8);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v83 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8538, &qword_18F0A11D0);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v83 - v10;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8540, &qword_18F0A11D8);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v87 = &v83 - v11;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8548, &qword_18F0A11E0);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v83 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7860, &qword_18F09DA60);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v110 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v91 = &v83 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v109 = &v83 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v83 = &v83 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v83 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v83 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v83 - v28;
  v30 = _s19BasicCodableWrapperOMa(0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = (&v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB8550, &qword_18F0A11E8);
  v34 = *(v33 - 8);
  v113 = v33;
  v114 = v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v83 - v35;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18EFC04F8();
  v115 = v36;
  sub_18F0945BC();
  sub_18EF86A14(v111, v32);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84F8, &qword_18F0A1198);
      sub_18EF869B4();
      LOBYTE(v117[0]) = 1;
      sub_18F0199A4();
      v59 = v87;
      v38 = v113;
      v39 = v115;
      sub_18F09431C();
      LOBYTE(v117[0]) = 0;
      v60 = v89;
      v61 = v112;
      sub_18F09439C();
      if (!v61)
      {
        LOBYTE(v117[0]) = 1;
        _s14CodableWrapperVMa_2(0);
        sub_18EF8558C(&unk_1EACB6AA0);
        sub_18F09436C();
      }

      (*(v88 + 8))(v59, v60);
      v62 = v27;
      goto LABEL_26;
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84E8, &qword_18F0A1190);
      sub_18EF869B4();
      LOBYTE(v117[0]) = 2;
      sub_18F019950();
      v49 = v90;
      v50 = v113;
      v51 = v115;
      sub_18F09431C();
      LOBYTE(v117[0]) = 0;
      v52 = v93;
      v53 = v112;
      sub_18F09438C();
      if (!v53)
      {
        LOBYTE(v117[0]) = 1;
        _s14CodableWrapperVMa_2(0);
        sub_18EF8558C(&unk_1EACB6AA0);
        sub_18F09436C();
      }

      (*(v92 + 8))(v49, v52);
      sub_18EF933AC(v24, &qword_1EACB7860);
      return (*(v114 + 8))(v51, v50);
    case 3u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84D8, &qword_18F0A1188);
      v29 = v83;
      sub_18EF869B4();
      LOBYTE(v117[0]) = 3;
      sub_18F0198FC();
      v37 = v94;
      v38 = v113;
      v39 = v115;
      sub_18F09431C();
      LOBYTE(v117[0]) = 0;
      v40 = v96;
      v55 = v112;
      sub_18F09437C();

      if (!v55)
      {
        LOBYTE(v117[0]) = 1;
        _s14CodableWrapperVMa_2(0);
        sub_18EF8558C(&unk_1EACB6AA0);
        sub_18F09436C();
      }

      v42 = &v118;
      goto LABEL_25;
    case 4u:
      v111 = v32[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84C8, &qword_18F0A1180);
      v43 = v109;
      sub_18EF869B4();
      LOBYTE(v117[0]) = 4;
      sub_18EFC083C();
      v44 = v97;
      v45 = v113;
      v46 = v115;
      sub_18F09431C();
      LOBYTE(v117[0]) = 0;
      v47 = v99;
      v48 = v112;
      sub_18F09437C();

      if (v48)
      {
      }

      else
      {
        LOBYTE(v117[0]) = 1;
        sub_18F09437C();

        LOBYTE(v117[0]) = 2;
        _s14CodableWrapperVMa_2(0);
        sub_18EF8558C(&unk_1EACB6AA0);
        v43 = v109;
        sub_18F09436C();
      }

      (*(v98 + 8))(v44, v47);
      sub_18EF933AC(v43, &qword_1EACB7860);
      return (*(v114 + 8))(v46, v45);
    case 5u:
      v64 = *v32;
      v63 = v32[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACB84B8, &qword_18F0A1178);
      v65 = v91;
      sub_18EF869B4();
      LOBYTE(v117[0]) = 5;
      sub_18EFC07E8();
      v66 = v101;
      v38 = v113;
      v39 = v115;
      sub_18F09431C();
      v117[0] = v64;
      v116 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB7898, &qword_18F09DC48);
      sub_18F019AA0();
      v67 = v105;
      v68 = v112;
      sub_18F0943CC();
      if (v68)
      {
        sub_18EFA3DA4(v63);
        (*(v104 + 8))(v66, v67);
        sub_18EF933AC(v65, &qword_1EACB7860);
        (*(v114 + 8))(v39, v38);
      }

      else
      {

        v117[0] = v63;
        v116 = 1;
        sub_18F012B0C();
        sub_18F0943CC();
        LOBYTE(v117[0]) = 2;
        _s14CodableWrapperVMa_2(0);
        sub_18EF8558C(&unk_1EACB6AA0);
        sub_18F09436C();
        sub_18EFA3DA4(v63);
        (*(v104 + 8))(v66, v67);
        v62 = v65;
LABEL_26:
        sub_18EF933AC(v62, &qword_1EACB7860);
        return (*(v114 + 8))(v39, v38);
      }

    case 6u:
      v69 = v32[1];
      v70 = v32[2];
      v71 = v32[4];
      v104 = v32[3];
      v105 = v69;
      v111 = v71;
      v72 = v32[5];
      v109 = v32[6];
      v102 = v32[7];
      v103 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB84B0, &qword_18F0A1170);
      v73 = v110;
      sub_18EF869B4();
      LOBYTE(v117[0]) = 6;
      sub_18F019854();
      v74 = v106;
      v75 = v113;
      v76 = v115;
      sub_18F09431C();
      LOBYTE(v117[0]) = 0;
      v77 = v108;
      v78 = v112;
      sub_18F09438C();
      if (v78)
      {

        sub_18EFA3DA4(v109);
        (*(v107 + 8))(v74, v77);
        sub_18EF933AC(v73, &qword_1EACB7860);
        return (*(v114 + 8))(v76, v75);
      }

      else
      {
        v79 = v109;
        v117[0] = v105;
        v117[1] = v70;
        v117[2] = v104;
        v117[3] = v111;
        v117[4] = v103;
        v116 = 1;
        sub_18F019A4C();
        sub_18F0943CC();

        v80 = v79;
        v117[0] = v79;
        v116 = 2;
        sub_18F012B0C();
        sub_18F0943CC();
        v81 = v115;
        v82 = v110;
        LOBYTE(v117[0]) = 3;
        sub_18F09433C();

        LOBYTE(v117[0]) = 4;
        _s14CodableWrapperVMa_2(0);
        sub_18EF8558C(&unk_1EACB6AA0);
        sub_18F09436C();
        sub_18EFA3DA4(v80);
        (*(v107 + 8))(v74, v77);
        sub_18EF933AC(v82, &qword_1EACB7860);
        return (*(v114 + 8))(v81, v75);
      }

    case 7u:
      LOBYTE(v117[0]) = 7;
      sub_18F019800();
      v56 = v100;
      v45 = v113;
      v46 = v115;
      sub_18F09431C();
      LOBYTE(v117[0]) = 0;
      v57 = v103;
      v58 = v112;
      sub_18F09437C();

      if (!v58)
      {
        LOBYTE(v117[0]) = 1;
        sub_18F09437C();
      }

      (*(v102 + 8))(v56, v57);
      return (*(v114 + 8))(v46, v45);
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACB8508, &qword_18F0A11A0);
      sub_18EF869B4();
      LOBYTE(v117[0]) = 0;
      sub_18F0199F8();
      v37 = v84;
      v38 = v113;
      v39 = v115;
      sub_18F09431C();
      LOBYTE(v117[0]) = 0;
      v40 = v86;
      v41 = v112;
      sub_18F0943AC();
      if (!v41)
      {
        LOBYTE(v117[0]) = 1;
        _s14CodableWrapperVMa_2(0);
        sub_18EF8558C(&unk_1EACB6AA0);
        sub_18F09436C();
      }

      v42 = v117;
LABEL_25:
      (*(*(v42 - 32) + 8))(v37, v40);
      v62 = v29;
      goto LABEL_26;
  }
}