void sub_1CF7BDD8C(uint64_t a1, uint64_t a2, __int16 a3)
{
  if ((a3 & 0x100) != 0)
  {
    v13 = a3;
    MEMORY[0x1D386A470](1);
    if (v13)
    {
      if (v13 == 1)
      {
        MEMORY[0x1D386A470](1);
        MEMORY[0x1D386A4A0](a2);
      }

      else
      {
        if (a2)
        {
          v14 = 3;
        }

        else
        {
          v14 = 2;
        }

        MEMORY[0x1D386A470](v14);
      }
    }

    else
    {
      MEMORY[0x1D386A470](0);
      sub_1CF9E8208();
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v5 = v4;
    sub_1CF9E69C8();

    v5, v6, v7, v8, v9, v10, v11, v12;
  }
}

uint64_t sub_1CF7BDE60()
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF7BDEDC(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  return sub_1CF9E8228();
}

void sub_1CF7BDF34(void *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_1CF9E7C78();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4 != 0;
}

void sub_1CF7BDF88(uint64_t a1@<X8>)
{
  strcpy(a1, "hourlyValues");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

void sub_1CF7BDFCC(_TtC18FileProviderDaemon8FSTester *a2@<X1>, BOOL *a3@<X8>)
{
  v5 = sub_1CF9E7C78();
  a2, v6, v7, v8, v9, v10, v11, v12;
  *a3 = v5 != 0;
}

uint64_t sub_1CF7BE024(uint64_t a1)
{
  v2 = sub_1CF7BE644();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF7BE060(uint64_t a1)
{
  v2 = sub_1CF7BE644();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id FPDDailyTelemetryCounter.init(from:)(void *a1)
{
  v76 = sub_1CF9E5CF8();
  v73 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v3 = v62 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v62 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48F0, &qword_1CFA16E70);
  v74 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v62 - v8;
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF7BE644();
  v11 = v75;
  sub_1CF9E8298();
  if (v11)
  {

    __swift_destroy_boxed_opaque_existential_1(a1);
    return v10;
  }

  else
  {
    v71 = v6;
    v75 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48F8, &unk_1CFA16E78);
    sub_1CF7D50B8(&qword_1EDEA3828, MEMORY[0x1E69E63E8], MEMORY[0x1E69E7320], MEMORY[0x1E69E5E58]);
    sub_1CF9E7D88();
    v62[1] = 0;
    v63 = v10;
    v64 = v7;
    v65 = a1;
    v13 = v77;
    v14 = sub_1CF4E3BA0(MEMORY[0x1E69E7CC0]);
    v15 = 0;
    v16 = v13 + 2;
    v17 = 1 << LOBYTE(v13[1].super.isa);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v13[2].super.isa;
    v20 = (v17 + 63) >> 6;
    v69 = v13;
    v70 = (v73 + 16);
    v67 = v9;
    v68 = (v73 + 8);
    v21 = v75;
    v22 = v71;
    v66 = v13 + 2;
    while (v19)
    {
      v25 = v15;
LABEL_15:
      v72 = *(*v69[1].tester + 4 * (__clz(__rbit64(v19)) | (v25 << 6)));
      sub_1CF9E5BE8();
      v26 = *v70;
      (*v70)(v21, v22, v76);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77 = v14;
      v29 = sub_1CF7BFDB0(v21);
      v30 = *v14->tree;
      v31 = (v28 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        goto LABEL_26;
      }

      v33 = v28;
      if (*v14->tester >= v32)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CF7D2FD0();
        }
      }

      else
      {
        sub_1CF7CB578(v32, isUniquelyReferenced_nonNull_native);
        v34 = sub_1CF7BFDB0(v75);
        if ((v33 & 1) != (v35 & 1))
        {
          goto LABEL_28;
        }

        v29 = v34;
      }

      v19 &= v19 - 1;
      v14 = v77;
      if (v33)
      {
        *(*v77[1].tester + 4 * v29) = v72;
        v23 = *v68;
        v21 = v75;
        v24 = v76;
        (*v68)(v75, v76);
        v22 = v71;
        v23(v71, v24);
      }

      else
      {
        *(&v77[2].super.isa + (v29 >> 6)) |= 1 << v29;
        v36 = v73;
        v38 = v75;
        v37 = v76;
        v26(*v14[1].tree + *(v73 + 72) * v29, v75, v76);
        *(*v14[1].tester + 4 * v29) = v72;
        v21 = v38;
        v39 = *(v36 + 8);
        v39(v38, v37);
        v22 = v71;
        v39(v71, v37);
        v40 = *v14->tree;
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_27;
        }

        *v14->tree = v42;
      }

      v15 = v25;
      v16 = v66;
      v9 = v67;
    }

    while (1)
    {
      v25 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v25 >= v20)
      {

        sub_1CF7BBC30(v14);
        v44 = v43;
        v14, v45, v46, v47, v48, v49, v50, v51;
        v52 = objc_allocWithZone(MEMORY[0x1E695DF90]);
        v53 = sub_1CF9E6618();
        v44, v54, v55, v56, v57, v58, v59, v60;
        v61 = [v52 initWithDictionary_];

        v10 = v63;
        [v63 setHourlyValues_];

        (*(v74 + 8))(v9, v64);
        __swift_destroy_boxed_opaque_existential_1(v65);
        return v10;
      }

      v19 = *(&v16->super.isa + v25);
      ++v15;
      if (v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_1CF9E8108();
    __break(1u);
  }

  return result;
}

unint64_t sub_1CF7BE644()
{
  result = qword_1EDEA3580;
  if (!qword_1EDEA3580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA3580);
  }

  return result;
}

uint64_t FPDDailyTelemetryCounter.encode(to:)(_TtC18FileProviderDaemon8FSTester *a1)
{
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v40 - v4;
  v6 = sub_1CF9E5CF8();
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4900, qword_1CFA16E88);
  v46 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v40 - v10;
  v11 = objc_sync_enter(v1);
  if (v11)
  {
    goto LABEL_28;
  }

  v12 = [(FSTester *)v1 hourlyValues];
  if (!v12 || (v13 = v12, [v12 copy], v13, sub_1CF9E7728(), swift_unknownObjectRelease(), sub_1CEFD57E0(0, &qword_1EDEA3708, 0x1E695DF20), (swift_dynamicCast() & 1) == 0))
  {
    *&v51 = 0;
  }

  result = objc_sync_exit(v1);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v40 - 2) = v1;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5290, (&v40 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v15 = v51;
  if (v51)
  {
    v43 = v9;
    v44 = v2;
    __swift_project_boxed_opaque_existential_1(v47, *v47->tester);
    sub_1CF7BE644();
    sub_1CF9E82A8();
    v47 = sub_1CF4E3D88(MEMORY[0x1E69E7CC0]);
    v42 = v15;
    sub_1CF9E7208();
    sub_1CF9E7218();
    v55 = v51;
    v56 = v52;
    v57 = v53;
    v58 = v54;
    if (*(&v52 + 1))
    {
      v16 = (v45 + 56);
      v17 = (v45 + 32);
      v18 = (v45 + 8);
      do
      {
        sub_1CEFE9EB8(&v57, &v51);
        sub_1CEFE9EB8(&v55, v50);
        if (swift_dynamicCast())
        {
          (*v16)(v5, 0, 1, v6);
          (*v17)(v8, v5, v6);
          sub_1CEFD1104(&v51, v50);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_13;
          }

          LODWORD(v45) = v49;
          sub_1CF9E5BF8();
          v20 = v19;
          v1 = v47;
          LODWORD(v41) = swift_isUniquelyReferenced_nonNull_native();
          *&v50[0] = v1;
          v22 = sub_1CF7BFE84(v20);
          v23 = *v1->tree;
          v24 = (v21 & 1) == 0;
          v11 = v23 + v24;
          if (__OFADD__(v23, v24))
          {
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            MEMORY[0x1EEE9AC00](v11);
            *(&v40 - 2) = v1;
            fp_preconditionFailure(_:file:line:)(sub_1CF1C5288, (&v40 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
          }

          if (*v1->tester >= v11)
          {
            if ((v41 & 1) == 0)
            {
              LODWORD(v47) = v21;
              v41 = v22;
              sub_1CF7D3240();
              v22 = v41;
              LOBYTE(v21) = v47;
            }
          }

          else
          {
            LODWORD(v47) = v21;
            sub_1CF7CB938(v11, v41);
            v25 = sub_1CF7BFE84(v20);
            v26 = v21 & 1;
            LOBYTE(v21) = v47;
            if ((v47 & 1) != v26)
            {
              result = sub_1CF9E8108();
              __break(1u);
              return result;
            }

            v22 = v25;
          }

          v1 = *&v50[0];
          v47 = *&v50[0];
          if (v21)
          {
            *(*(*&v50[0] + 56) + 4 * v22) = v45;
LABEL_13:
            (*v18)(v8, v6);
            __swift_destroy_boxed_opaque_existential_1(&v51);
            goto LABEL_10;
          }

          *(*&v50[0] + 8 * (v22 >> 6) + 64) |= 1 << v22;
          *(*v1[1].tree + 8 * v22) = v20;
          *(*v1[1].tester + 4 * v22) = v45;
          (*v18)(v8, v6);
          v11 = __swift_destroy_boxed_opaque_existential_1(&v51);
          v27 = *v1->tree;
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_27;
          }

          *v1->tree = v29;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v51);
          (*v16)(v5, 1, 1, v6);
          sub_1CEFCCC44(v5, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
        }

LABEL_10:
        sub_1CF9E7218();
        v55 = v51;
        v56 = v52;
        v57 = v53;
        v58 = v54;
      }

      while (*(&v52 + 1));
    }

    v30 = v47;
    *&v55 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C48F8, &unk_1CFA16E78);
    sub_1CF7D50B8(&qword_1EDEA3830, MEMORY[0x1E69E63C0], MEMORY[0x1E69E72F8], MEMORY[0x1E69E5E38]);
    v31 = v43;
    v32 = v48;
    sub_1CF9E7F08();
    v30, v33, v34, v35, v36, v37, v38, v39;

    return (*(v46 + 8))(v32, v31);
  }

  return result;
}

id sub_1CF7BEDC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = FPDDailyTelemetryCounter.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1CF7BEE14(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1CF9E5CF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_sync_enter(v2);
  if (v8)
  {
LABEL_8:
    MEMORY[0x1EEE9AC00](v8);
    *(&v14 - 2) = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, (&v14 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF9E5CE8();
  v9 = sub_1CF9E5C48();
  v10 = [v2 getValueAt_];

  v11 = v10 | a1;
  if (v11 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v11 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v12 = sub_1CF9E5C48();
  [v2 replaceValue:v11 at:v12];

  (*(v5 + 8))(v7, v4);
  result = objc_sync_exit(v2);
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    *(&v14 - 2) = v2;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, (&v14 - 4), "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  return result;
}

id sub_1CF7BF05C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SpeculativeDownloadsPreventReasonsTelem();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1CF7BF090(uint64_t a1)
{
  v1 = a1;
  sub_1CF9E81D8();
  sub_1CF9E8208();
  v2 = sub_1CF9E8228();
  return sub_1CF7C11DC(v1, v2);
}

unint64_t sub_1CF7BF0F8(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1CF486054(*(v1 + 40), a1);

  return sub_1CF7BFF98(v2, v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1CF7BF13C(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 26);
  v6 = *(a1 + 24);
  sub_1CF9E81D8();
  sub_1CF1A0B24(v9, v2, v3, v4, v6 | (v5 << 16));
  sub_1CF9E69C8();
  v7 = sub_1CF9E8228();

  return sub_1CF7C0244(a1, v7);
}

unint64_t sub_1CF7BF1F0(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF9E81F8();
  if (a1)
  {
    type metadata accessor for CFString(0);
    sub_1CF7D5264(&qword_1EC4C49A0, type metadata accessor for CFString, &unk_1CF9F9A70);
    sub_1CF9E5E78();
  }

  v2 = sub_1CF9E8228();

  return sub_1CF7C0408(a1, v2);
}

unint64_t sub_1CF7BF2C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_1CF9E81D8();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](a1);
    }

    else
    {
      if (a1)
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      MEMORY[0x1D386A470](v4);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
  }

  v5 = sub_1CF9E8228();

  return sub_1CF7C0528(a1, v2, v5);
}

unint64_t sub_1CF7BF3BC(uint64_t a1)
{
  v1 = a1;
  sub_1CF9E81D8();
  if (v1 <= 0x1Eu)
  {
    switch(v1)
    {
      case 0x1Cu:
        v2 = 0;
        goto LABEL_18;
      case 0x1Du:
        v2 = 1;
        goto LABEL_18;
      case 0x1Eu:
        v2 = 2;
        goto LABEL_18;
    }

LABEL_14:
    MEMORY[0x1D386A470](3);
    sub_1CF07FC44(v1);
    v4 = v3;
    sub_1CF9E69C8();
    v4, v5, v6, v7, v8, v9, v10, v11;
    goto LABEL_19;
  }

  if (v1 > 0x20u)
  {
    if (v1 == 33)
    {
      v2 = 6;
      goto LABEL_18;
    }

    if (v1 == 34)
    {
      v2 = 7;
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  if (v1 == 31)
  {
    v2 = 4;
    goto LABEL_18;
  }

  if (v1 != 32)
  {
    goto LABEL_14;
  }

  v2 = 5;
LABEL_18:
  MEMORY[0x1D386A470](v2);
LABEL_19:
  v12 = sub_1CF9E8228();

  return sub_1CF7C05F8(v1, v12, v13, v14, v15, v16, v17, v18);
}

unint64_t sub_1CF7BF520(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-1] - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-1] - v9;
  sub_1CF9E81D8();
  sub_1CEFCCBDC(a1, v10, &unk_1EC4BF650, &unk_1CF9FCB40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = &qword_1CFA12AC0;
    sub_1CEFE55D0(v10, v4, &unk_1EC4BFD70, &qword_1CFA12AC0);
    MEMORY[0x1D386A470](1);
    sub_1CF1CE0C8(v17);
    v12 = v4;
    v13 = &unk_1EC4BFD70;
  }

  else
  {
    v11 = &unk_1CF9FCB50;
    sub_1CEFE55D0(v10, v7, &unk_1EC4BFCC0, &unk_1CF9FCB50);
    MEMORY[0x1D386A470](0);
    sub_1CF1CDC08(v17);
    v12 = v7;
    v13 = &unk_1EC4BFCC0;
  }

  sub_1CEFCCC44(v12, v13, v11);
  v14 = sub_1CF9E8228();
  return sub_1CF7C1248(a1, v14);
}

unint64_t sub_1CF7BF73C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  sub_1CF9E81D8();
  sub_1CF7BD790(v10, a1, a2, a3, v4);
  v8 = sub_1CF9E8228();

  return sub_1CF7C1710(a1, a2, a3, v4, v8);
}

unint64_t sub_1CF7BF7D4(uint64_t *a1)
{
  sub_1CF9E81D8();
  sub_1CF7BDAE8();
  v2 = sub_1CF9E8228();

  return sub_1CF7C181C(a1, v2);
}

unint64_t sub_1CF7BF840(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  sub_1CF9E81D8();
  sub_1CF1A0B24(v10, a1, a2, a3, a4 & 0xFFFFFF);
  v8 = sub_1CF9E8228();

  return sub_1CF7C18D8(a1, a2, a3, a4 & 0xFFFFFF, v8);
}

unint64_t sub_1CF7BF978(uint64_t a1)
{
  sub_1CF9E5EE8();
  v2 = MEMORY[0x1E69E83D8];
  sub_1CF7D5264(&unk_1EDEA3990, MEMORY[0x1E69E83D8], MEMORY[0x1E69E83E0]);
  v3 = sub_1CF9E6748();
  return sub_1CF7C295C(a1, v3, MEMORY[0x1E69E83D8], &qword_1EDEA3988, v2, MEMORY[0x1E69E83E8]);
}

unint64_t sub_1CF7BFA4C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1CF9E81D8();
  a2(a1);
  v4 = sub_1CF9E8228();
  return sub_1CF7C1B34(a1, v4);
}

unint64_t sub_1CF7BFABC(uint64_t a1)
{
  v1 = a1;
  sub_1CF9E81D8();
  v2 = v1 >> 2;
  if (v2 == 55)
  {
    MEMORY[0x1D386A470](1);
  }

  else if (v2 == 63)
  {
    MEMORY[0x1D386A470](0);
  }

  else
  {
    MEMORY[0x1D386A470](2);
    sub_1CF1D88B0(v11, v1);
  }

  v3 = sub_1CF9E8228();

  return sub_1CF7C1BA0(v1, v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_1CF7BFB8C(uint64_t a1)
{
  v1 = a1;
  sub_1CF9E81D8();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0xE700000000000000;
    }

    else
    {
      v2 = 0xE800000000000000;
    }
  }

  else
  {
    v2 = 0xE400000000000000;
  }

  sub_1CF9E69C8();
  v2, v3, v4, v5, v6, v7, v8, v9;
  v10 = sub_1CF9E8228();
  return sub_1CF7C2364(v1, v10, v11, v12, v13, v14, v15, v16);
}

unint64_t sub_1CF7BFC48(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CEFF47E0(v4, *a1, *(a1 + 8) | (*(a1 + 9) << 8));
  sub_1CF1A0B24(v4, *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40) | (*(a1 + 42) << 16));
  v2 = sub_1CF9E8228();

  return sub_1CF7C24E4(a1, v2);
}

unint64_t sub_1CF7BFCDC(uint64_t a1)
{
  sub_1CF9E5A58();
  v2 = MEMORY[0x1E6968FB0];
  sub_1CF7D5264(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v3 = sub_1CF9E6748();
  return sub_1CF7C295C(a1, v3, MEMORY[0x1E6968FB0], &qword_1EDEAB410, v2, MEMORY[0x1E6968FC8]);
}

unint64_t sub_1CF7BFDB0(uint64_t a1)
{
  sub_1CF9E5CF8();
  v2 = MEMORY[0x1E6969530];
  sub_1CF7D5264(&unk_1EDEAB3C0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v3 = sub_1CF9E6748();
  return sub_1CF7C295C(a1, v3, MEMORY[0x1E6969530], &qword_1EDEAB3B0, v2, MEMORY[0x1E6969550]);
}

unint64_t sub_1CF7BFE84(double a1)
{
  v2 = sub_1CF9E81C8();

  return sub_1CF7C2AFC(v2, a1);
}

unint64_t sub_1CF7BFED0(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CEFF47E0(v4, *(a1 + 16), *(a1 + 24) | (*(a1 + 25) << 8));
  v2 = sub_1CF9E8228();

  return sub_1CF7C2B64(a1, v2);
}

unint64_t sub_1CF7BFF98(unsigned __int8 a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v52 = ~v9;
    v11 = 0xE500000000000000;
    v12 = a1;
    while (1)
    {
      v13 = *(*(v54 + 48) + v10);
      v55 = v10;
      if (v13 > 3)
      {
        if (*(*(v54 + 48) + v10) > 5u)
        {
          if (v13 == 6)
          {
            v18 = 0xD000000000000011;
            v19 = 0x80000001CFA2C070;
          }

          else
          {
            v18 = 0xD00000000000001ALL;
            v19 = 0x80000001CFA2C090;
          }
        }

        else
        {
          v18 = v13 == 4 ? 0x7272655F7473616CLL : 0x797469726F697270;
          v19 = (v13 == 4 ? 0xEA0000000000726FLL : 0xE800000000000000);
        }
      }

      else
      {
        v14 = 0xEF657461645F7972;
        if (v13 == 2)
        {
          v15 = 0x7465725F7478656ELL;
        }

        else
        {
          v15 = 0x7272655F7473616CLL;
        }

        if (v13 != 2)
        {
          v14 = 0xEF657461645F726FLL;
        }

        v16 = *(*(v54 + 48) + v10) ? 0x6F635F7972746572 : 0x6574617473;
        v17 = v13 ? 0xEB00000000746E75 : 0xE500000000000000;
        v18 = v13 <= 1 ? v16 : v15;
        v19 = (v13 <= 1 ? v17 : v14);
      }

      v20 = 0xD00000000000001ALL;
      if (v12 == 6)
      {
        v20 = 0xD000000000000011;
      }

      v21 = 0x80000001CFA2C090;
      if (v12 == 6)
      {
        v21 = 0x80000001CFA2C070;
      }

      v22 = 0x797469726F697270;
      if (v12 == 4)
      {
        v22 = 0x7272655F7473616CLL;
      }

      v23 = 0xEA0000000000726FLL;
      if (v12 != 4)
      {
        v23 = 0xE800000000000000;
      }

      if (v12 <= 5)
      {
        v20 = v22;
        v21 = v23;
      }

      v24 = 0xEF657461645F7972;
      if (v12 == 2)
      {
        v25 = 0x7465725F7478656ELL;
      }

      else
      {
        v25 = 0x7272655F7473616CLL;
      }

      if (v12 != 2)
      {
        v24 = 0xEF657461645F726FLL;
      }

      if (v12)
      {
        v26 = 0x6F635F7972746572;
      }

      else
      {
        v26 = 0x6574617473;
      }

      if (v12)
      {
        v11 = 0xEB00000000746E75;
      }

      if (v12 <= 1)
      {
        v25 = v26;
        v24 = v11;
      }

      v27 = v12 <= 3 ? v25 : v20;
      v28 = (v12 <= 3 ? v24 : v21);
      if (v18 == v27 && v19 == v28)
      {
        break;
      }

      v29 = sub_1CF9E8048();
      v19, v30, v31, v32, v33, v34, v35, v36;
      v28, v37, v38, v39, v40, v41, v42, v43;
      if (v29)
      {
        return v55;
      }

      v10 = (v55 + 1) & v52;
      v11 = 0xE500000000000000;
      if (((*(v53 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        return v10;
      }
    }

    v19, a2, v27, a4, a5, a6, a7, a8;
    v28, v44, v45, v46, v47, v48, v49, v50;
    return v55;
  }

  return v10;
}

unint64_t sub_1CF7C0244(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v26 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v25 = ~v3;
    v6 = *a1;
    v5 = a1[1];
    v24 = a1[2];
    v23 = *(a1 + 24);
    v22 = *(a1 + 25);
    v21 = *(a1 + 26);
    v19 = a1[5];
    v20 = a1[4];
    v7 = *(v2 + 48);
    do
    {
      v8 = v7 + 48 * v4;
      v9 = *(v8 + 16);
      v10 = *(v8 + 24);
      v11 = *(v8 + 25);
      v12 = *(v8 + 26);
      v13 = *(v8 + 32);
      v14 = *(v8 + 40);
      v15 = *v8 == v6 && *(v8 + 8) == v5;
      if (!v15 && (sub_1CF9E8048() & 1) == 0)
      {
        goto LABEL_3;
      }

      if (v9 != v24 || v10 != v23)
      {
        goto LABEL_3;
      }

      if (v11 == 89)
      {
        if (v22 != 89)
        {
          goto LABEL_3;
        }
      }

      else if (v22 == 89 || qword_1CFA172B8[v11] != qword_1CFA172B8[v22])
      {
        goto LABEL_3;
      }

      if (v12 == 2)
      {
        if (v21 != 2)
        {
          goto LABEL_3;
        }
      }

      else if (v21 == 2 || ((v12 ^ v21) & 1) != 0)
      {
        goto LABEL_3;
      }

      v17 = v13 == v20 && v14 == v19;
      if (v17 || (sub_1CF9E8048() & 1) != 0)
      {
        return v4;
      }

LABEL_3:
      v4 = (v4 + 1) & v25;
    }

    while (((*(v26 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1CF7C0408(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          type metadata accessor for CFString(0);
          sub_1CF7D5264(&qword_1EC4C49A0, type metadata accessor for CFString, &unk_1CF9F9A70);
          v10 = v9;
          v11 = sub_1CF9E5E68();

          if (v11)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1CF7C0528(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    v8 = a2 == 2;
    v9 = a1 == 1 && a2 == 2;
    if (a1)
    {
      v8 = 0;
    }

    do
    {
      v10 = *(v3 + 48) + 16 * result;
      v11 = *v10;
      v12 = *(v10 + 8);
      if (v12)
      {
        if (v12 == 1)
        {
          if (a2 == 1 && v11 == a1)
          {
            return result;
          }
        }

        else if (v11)
        {
          if (v9)
          {
            return result;
          }
        }

        else if (v8)
        {
          return result;
        }
      }

      else if (!a2 && v11 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1CF7C05F8(unsigned __int8 a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = a1;
    v12 = ~v9;
    v13 = a1 - 28;
    do
    {
      v14 = *(*(v8 + 48) + v10);
      if (v14 <= 0x1E)
      {
        if (v14 == 29)
        {
          if (v11 == 29)
          {
            return v10;
          }

          goto LABEL_3;
        }

        if (v14 == 30)
        {
          if (v11 == 30)
          {
            return v10;
          }

          goto LABEL_3;
        }
      }

      else
      {
        if (*(*(v8 + 48) + v10) <= 0x20u)
        {
          if (v14 == 31)
          {
            if (v11 == 31)
            {
              return v10;
            }
          }

          else if (v11 == 32)
          {
            return v10;
          }

          goto LABEL_3;
        }

        if (v14 == 33)
        {
          if (v11 == 33)
          {
            return v10;
          }

          goto LABEL_3;
        }

        if (v14 == 34)
        {
          if (v11 == 34)
          {
            return v10;
          }

          goto LABEL_3;
        }
      }

      if (v13 >= 7)
      {
        v15 = 0xE400000000000000;
        v16 = 1684957547;
        switch(*(*(v8 + 48) + v10))
        {
          case 0:
            break;
          case 1:
            v16 = 0x6C617461645F7369;
            v15 = 0xEB00000000737365;
            break;
          case 2:
            v16 = 1702521203;
            break;
          case 3:
            v16 = 0x656B636F6C5F7369;
            goto LABEL_40;
          case 4:
            v16 = 0xD000000000000011;
            v15 = 0x80000001CFA2C0E0;
            break;
          case 5:
            v16 = 0x6E6F697461657263;
            v17 = 1952539743;
            goto LABEL_43;
          case 6:
            v16 = 0xD000000000000019;
            v15 = 0x80000001CFA2C100;
            break;
          case 7:
            v16 = 0x6573755F7473616CLL;
            v15 = 0xEE00657461645F64;
            break;
          case 8:
            v15 = 0xE800000000000000;
            v16 = 0x617461645F676174;
            break;
          case 9:
            v16 = 0x657469726F766166;
            v15 = 0xED00006B6E61725FLL;
            break;
          case 0xA:
            v16 = 0x616B6361705F7369;
            v15 = 0xEA00000000006567;
            break;
          case 0xB:
            v16 = 0x65646469685F7369;
            v15 = 0xE90000000000006ELL;
            break;
          case 0xC:
            v16 = 0xD000000000000010;
            v15 = 0x80000001CFA2C160;
            break;
          case 0xD:
            v16 = 0xD000000000000010;
            v15 = 0x80000001CFA2C180;
            break;
          case 0xE:
            v16 = 0xD000000000000013;
            v15 = 0x80000001CFA2C1A0;
            break;
          case 0xF:
            v16 = 0x6C61636973796870;
            v17 = 2053731167;
LABEL_43:
            v15 = (v17 | 0xED00006500000000);
            break;
          case 0x10:
            v16 = 0x74636976655F7369;
            v15 = 0xEC000000656C6261;
            break;
          case 0x11:
            v16 = 0x656E6E69705F7369;
LABEL_40:
            v15 = 0xE900000000000064;
            break;
          case 0x12:
            v16 = 0xD000000000000013;
            v15 = 0x80000001CFA2C1E0;
            break;
          case 0x13:
            v16 = 0xD000000000000016;
            v15 = 0x80000001CFA2C200;
            break;
          case 0x14:
            v16 = 0x69746E6172617571;
            v15 = 0xEF626F6C625F656ELL;
            break;
          case 0x15:
            v16 = 0x72636E79735F7369;
            v15 = 0xEB00000000746F6FLL;
            break;
          case 0x16:
            v16 = 0x726F6E67695F7369;
            v15 = 0xED0000746F6F7265;
            break;
          case 0x17:
            v16 = 0xD000000000000010;
            v15 = 0x80000001CFA2C250;
            break;
          case 0x18:
            v15 = 0xE700000000000000;
            v16 = 0x657079745F736FLL;
            break;
          case 0x19:
            v16 = 0x756F635F6B6E696CLL;
            v15 = 0xEA0000000000746ELL;
            break;
          case 0x1A:
            v16 = 0xD000000000000018;
            v15 = 0x80000001CFA2C280;
            break;
          case 0x1B:
            v16 = 0xD000000000000010;
            v15 = 0x80000001CFA2C2A0;
            break;
          default:
            goto LABEL_3;
        }

        v18 = 0xE400000000000000;
        v19 = 1684957547;
        switch(v11)
        {
          case 0:
            goto LABEL_105;
          case 1:
            v19 = 0x6C617461645F7369;
            v20 = 7566181;
            goto LABEL_87;
          case 2:
            v19 = 1702521203;
            if (v16 != 1702521203)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 3:
            v19 = 0x656B636F6C5F7369;
            goto LABEL_80;
          case 4:
            v19 = 0xD000000000000011;
            v18 = 0x80000001CFA2C0E0;
            if (v16 != 0xD000000000000011)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 5:
            v19 = 0x6E6F697461657263;
            v22 = 1952539743;
            goto LABEL_85;
          case 6:
            v19 = 0xD000000000000019;
            v18 = 0x80000001CFA2C100;
            if (v16 != 0xD000000000000019)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 7:
            v19 = 0x6573755F7473616CLL;
            v18 = 0xEE00657461645F64;
            if (v16 != 0x6573755F7473616CLL)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 8:
            v18 = 0xE800000000000000;
            v19 = 0x617461645F676174;
            if (v16 != 0x617461645F676174)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 9:
            v19 = 0x657469726F766166;
            v21 = 0x6B6E61725FLL;
            goto LABEL_100;
          case 10:
            v19 = 0x616B6361705F7369;
            v18 = 0xEA00000000006567;
            if (v16 != 0x616B6361705F7369)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 11:
            v19 = 0x65646469685F7369;
            v18 = 0xE90000000000006ELL;
            if (v16 != 0x65646469685F7369)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 12:
            v19 = 0xD000000000000010;
            v18 = 0x80000001CFA2C160;
            if (v16 != 0xD000000000000010)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 13:
            v19 = 0xD000000000000010;
            v18 = 0x80000001CFA2C180;
            if (v16 != 0xD000000000000010)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 14:
            v19 = 0xD000000000000013;
            v18 = 0x80000001CFA2C1A0;
            if (v16 != 0xD000000000000013)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 15:
            v19 = 0x6C61636973796870;
            v22 = 2053731167;
LABEL_85:
            v21 = v22 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
            goto LABEL_100;
          case 16:
            v19 = 0x74636976655F7369;
            v18 = 0xEC000000656C6261;
            if (v16 != 0x74636976655F7369)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 17:
            v19 = 0x656E6E69705F7369;
LABEL_80:
            v18 = 0xE900000000000064;
            if (v16 != v19)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 18:
            v19 = 0xD000000000000013;
            v18 = 0x80000001CFA2C1E0;
            if (v16 != 0xD000000000000013)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 19:
            v19 = 0xD000000000000016;
            v18 = 0x80000001CFA2C200;
            if (v16 != 0xD000000000000016)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 20:
            v19 = 0x69746E6172617571;
            v18 = 0xEF626F6C625F656ELL;
            if (v16 != 0x69746E6172617571)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 21:
            v19 = 0x72636E79735F7369;
            v20 = 7630703;
LABEL_87:
            v18 = (v20 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000);
            if (v16 != v19)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 22:
            v19 = 0x726F6E67695F7369;
            v21 = 0x746F6F7265;
LABEL_100:
            v18 = (v21 & 0xFFFFFFFFFFFFLL | 0xED00000000000000);
            if (v16 != v19)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 23:
            v19 = 0xD000000000000010;
            v18 = 0x80000001CFA2C250;
LABEL_105:
            if (v16 == v19)
            {
              goto LABEL_106;
            }

            goto LABEL_107;
          case 24:
            v18 = 0xE700000000000000;
            v19 = 0x657079745F736FLL;
            if (v16 != 0x657079745F736FLL)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 25:
            v19 = 0x756F635F6B6E696CLL;
            v18 = 0xEA0000000000746ELL;
            if (v16 != 0x756F635F6B6E696CLL)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 26:
            v19 = 0xD000000000000018;
            v18 = 0x80000001CFA2C280;
            if (v16 != 0xD000000000000018)
            {
              goto LABEL_107;
            }

            goto LABEL_106;
          case 27:
            v19 = 0xD000000000000010;
            v18 = 0x80000001CFA2C2A0;
            if (v16 != 0xD000000000000010)
            {
              goto LABEL_107;
            }

LABEL_106:
            if (v15 == v18)
            {
              v15, a2, v19, a4, a5, a6, a7, a8;
              v18, v38, v39, v40, v41, v42, v43, v44;
              return v10;
            }

LABEL_107:
            v23 = sub_1CF9E8048();
            v15, v24, v25, v26, v27, v28, v29, v30;
            v18, v31, v32, v33, v34, v35, v36, v37;
            if (v23)
            {
              return v10;
            }

            break;
          default:
            return v10;
        }
      }

LABEL_3:
      v10 = (v10 + 1) & v12;
    }

    while (((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1CF7C0EA8(unsigned __int8 a1, uint64_t a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v50 = ~v9;
    v11 = a1;
    while (1)
    {
      v12 = *(*(v52 + 48) + v10);
      if (v12 <= 3)
      {
        if (v12 == 2)
        {
          v15 = 0xEC00000044495555;
        }

        else
        {
          v15 = 0xEF4449746E657645;
        }

        if (*(*(v52 + 48) + v10))
        {
          v16 = 0xD000000000000010;
        }

        else
        {
          v16 = 0x444955556264;
        }

        if (*(*(v52 + 48) + v10))
        {
          v17 = 0x80000001CFA2C2C0;
        }

        else
        {
          v17 = 0xE600000000000000;
        }

        if (*(*(v52 + 48) + v10) <= 1u)
        {
          v13 = v16;
        }

        else
        {
          v13 = 0x6D61657274537366;
        }

        if (*(*(v52 + 48) + v10) <= 1u)
        {
          v14 = v17;
        }

        else
        {
          v14 = v15;
        }
      }

      else if (*(*(v52 + 48) + v10) <= 5u)
      {
        if (v12 == 4)
        {
          v13 = 0xD000000000000011;
        }

        else
        {
          v13 = 0x65566E69616D6F64;
        }

        if (v12 == 4)
        {
          v14 = 0x80000001CFA2C2F0;
        }

        else
        {
          v14 = 0xED00006E6F697372;
        }
      }

      else if (v12 == 6)
      {
        v13 = 0x4665727574616566;
        v14 = 0xEC0000007367616CLL;
      }

      else if (v12 == 7)
      {
        v13 = 0x696C756465686373;
        v14 = 0xEF6574617453676ELL;
      }

      else
      {
        v13 = 0x6E6547726F727265;
        v14 = 0xEF6E6F6974617265;
      }

      v18 = 0x6E6547726F727265;
      if (v11 == 7)
      {
        v18 = 0x696C756465686373;
      }

      v19 = 0xEF6E6F6974617265;
      if (v11 == 7)
      {
        v19 = 0xEF6574617453676ELL;
      }

      if (v11 == 6)
      {
        v18 = 0x4665727574616566;
        v19 = 0xEC0000007367616CLL;
      }

      v20 = 0x65566E69616D6F64;
      if (v11 == 4)
      {
        v20 = 0xD000000000000011;
      }

      v21 = 0xED00006E6F697372;
      if (v11 == 4)
      {
        v21 = 0x80000001CFA2C2F0;
      }

      if (v11 <= 5)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = v11 == 2 ? 0xEC00000044495555 : 0xEF4449746E657645;
      v23 = v11 ? 0xD000000000000010 : 0x444955556264;
      v24 = v11 ? 0x80000001CFA2C2C0 : 0xE600000000000000;
      if (v11 <= 1)
      {
        v22 = v24;
      }

      else
      {
        v23 = 0x6D61657274537366;
      }

      v25 = v11 <= 3 ? v23 : v18;
      v26 = (v11 <= 3 ? v22 : v19);
      if (v13 == v25 && v14 == v26)
      {
        break;
      }

      v27 = sub_1CF9E8048();
      v14, v28, v29, v30, v31, v32, v33, v34;
      v26, v35, v36, v37, v38, v39, v40, v41;
      if ((v27 & 1) == 0)
      {
        v10 = (v10 + 1) & v50;
        if ((*(v51 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
        {
          continue;
        }
      }

      return v10;
    }

    v14, 0xE600000000000000, v25, a4, a5, a6, a7, a8;
    v26, v42, v43, v44, v45, v46, v47, v48;
  }

  return v10;
}

unint64_t sub_1CF7C11DC(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1CF7C1248(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = v33 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FB0, &unk_1CFA17180);
  MEMORY[0x1EEE9AC00](v41);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  MEMORY[0x1EEE9AC00](v10);
  v40 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v39 = v33 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v33 - v16;
  v43 = v2;
  v18 = -1 << *(v2 + 32);
  v19 = a2 & ~v18;
  v38 = v2 + 64;
  if ((*(v2 + 64 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    v21 = *(v15 + 72);
    v36 = ~v18;
    v37 = v21;
    v33[1] = v10;
    do
    {
      sub_1CEFCCBDC(*(v43 + 48) + v37 * v19, v17, &unk_1EC4BF650, &unk_1CF9FCB40);
      v25 = *(v41 + 48);
      sub_1CEFCCBDC(v17, v9, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CEFCCBDC(v42, &v9[v25], &unk_1EC4BF650, &unk_1CF9FCB40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1CEFCCBDC(v9, v40, &unk_1EC4BF650, &unk_1CF9FCB40);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v26 = v35;
          v27 = v40;
          sub_1CEFE55D0(&v9[v25], v35, &unk_1EC4BFD70, &qword_1CFA12AC0);
          v28 = sub_1CF469E78(v27, v26);
          sub_1CEFCCC44(v26, &unk_1EC4BFD70, &qword_1CFA12AC0);
          sub_1CEFCCC44(v17, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v27, &unk_1EC4BFD70, &qword_1CFA12AC0);
          if (v28)
          {
            goto LABEL_15;
          }

LABEL_12:
          sub_1CEFCCC44(v9, &unk_1EC4BF650, &unk_1CF9FCB40);
          v20 = v36;
          goto LABEL_5;
        }

        sub_1CEFCCC44(v17, &unk_1EC4BF650, &unk_1CF9FCB40);
        v22 = v40;
        v23 = &unk_1EC4BFD70;
        v24 = &qword_1CFA12AC0;
      }

      else
      {
        sub_1CEFCCBDC(v9, v39, &unk_1EC4BF650, &unk_1CF9FCB40);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v29 = v34;
          sub_1CEFE55D0(&v9[v25], v34, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          v30 = v39;
          v31 = sub_1CF4692CC(v39, v29);
          sub_1CEFCCC44(v29, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          sub_1CEFCCC44(v17, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v30, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          if (v31)
          {
LABEL_15:
            sub_1CEFCCC44(v9, &unk_1EC4BF650, &unk_1CF9FCB40);
            return v19;
          }

          goto LABEL_12;
        }

        sub_1CEFCCC44(v17, &unk_1EC4BF650, &unk_1CF9FCB40);
        v22 = v39;
        v23 = &unk_1EC4BFCC0;
        v24 = &unk_1CF9FCB50;
      }

      sub_1CEFCCC44(v22, v23, v24);
      sub_1CEFCCC44(v9, &qword_1EC4C4FB0, &unk_1CFA17180);
LABEL_5:
      v19 = (v19 + 1) & v20;
    }

    while (((*(v38 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
  }

  return v19;
}

unint64_t sub_1CF7C1710(unint64_t a1, unint64_t a2, unint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    do
    {
      v10 = *(v5 + 48) + 32 * v7;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      sub_1CF1FB2C0(*v10, v12, v13, v14);
      v15 = sub_1CF7BCC38(v11, v12, v13, v14, a1, a2, a3, a4);
      sub_1CF484340(v11, v12, v13, v14);
      if (v15)
      {
        break;
      }

      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_1CF7C181C(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      v7 = (*(v2 + 48) + 48 * v4);
      v8 = v7[1];
      v10 = *v7;
      v11[0] = v8;
      *(v11 + 10) = *(v7 + 26);
      if (sub_1CF7BD478(&v10, a1))
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1CF7C18D8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = *(v5 + 48);
    v23 = a4 & 0xFF0000;
    v22 = SBYTE1(a4);
    v24 = BYTE1(a4);
    v25 = a4;
    do
    {
      v13 = v12 + 32 * v8;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      v16 = *(v13 + 25);
      v17 = *(v13 + 26);
      v18 = *v13 == a1 && *(v13 + 8) == a2;
      if (!v18 && (sub_1CF9E8048() & 1) == 0)
      {
        goto LABEL_4;
      }

      if (v14 != a3 || v15 != v25)
      {
        goto LABEL_4;
      }

      if (v16 == 89)
      {
        if (v24 != 89)
        {
          goto LABEL_4;
        }
      }

      else if (v24 == 89 || qword_1CFA172B8[v16] != qword_1CFA172B8[v22])
      {
        goto LABEL_4;
      }

      if (v17 == 2)
      {
        if (v23 == 0x20000)
        {
          return v8;
        }
      }

      else if (v23 != 0x20000 && ((v17 ^ ((a4 & 0x10000u) >> 16)) & 1) == 0)
      {
        return v8;
      }

LABEL_4:
      v8 = (v8 + 1) & v11;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_1CF7C1A68(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1CEFD57E0(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1CF9E7568();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1CF7C1B34(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1CF7C1BA0(unsigned __int8 a1, const char *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = -1 << *(v8 + 32);
  result = a2 & ~v10;
  if ((*(v8 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v12 = ~v10;
    if (a1)
    {
      v13 = 0x6D617473656D6974;
    }

    else
    {
      v13 = 0x797469726F697270;
    }

    if (a1)
    {
      v14 = 0xE900000000000070;
    }

    else
    {
      v14 = 0xE800000000000000;
    }

    v15 = 0x80000001CFA2C410;
    v16 = 0x80000001CFA2C3F0;
    v17 = 0x6574617473;
    v18 = a1 & 0xE0;
    while (1)
    {
      v19 = *(*(v8 + 48) + result);
      if (v19 >> 2 == 55)
      {
        if ((a1 & 0xFC) == 0xDC)
        {
          return result;
        }

        goto LABEL_10;
      }

      if (v19 >> 2 == 63)
      {
        if (a1 > 0xFBu)
        {
          return result;
        }

        goto LABEL_10;
      }

      if ((((a1 & 0xFC) >> 2) | 8) == 0x3F)
      {
        goto LABEL_10;
      }

      v20 = v19 >> 5;
      if (v19 >> 5 > 1)
      {
        if (v20 == 4)
        {
          if (v19 == 128)
          {
            if (a1 == 128)
            {
              return result;
            }
          }

          else if (a1 == 129)
          {
            return result;
          }
        }

        else if (v20 == 3)
        {
          if (*(*(v8 + 48) + result) > 0x61u)
          {
            if (v19 == 98)
            {
              if (a1 == 98)
              {
                return result;
              }
            }

            else if (a1 == 99)
            {
              return result;
            }
          }

          else if (v19 == 96)
          {
            if (a1 == 96)
            {
              return result;
            }
          }

          else if (a1 == 97)
          {
            return result;
          }
        }

        else if (*(*(v8 + 48) + result) > 0x41u)
        {
          if (v19 == 66)
          {
            if (a1 == 66)
            {
              return result;
            }
          }

          else if (a1 == 67)
          {
            return result;
          }
        }

        else if (v19 == 64)
        {
          if (a1 == 64)
          {
            return result;
          }
        }

        else if (a1 == 65)
        {
          return result;
        }

        goto LABEL_10;
      }

      if (!v20)
      {
        break;
      }

      if (v18 == 32)
      {
        v25 = result;
        if (v19)
        {
          v26 = 0x6D617473656D6974;
        }

        else
        {
          v26 = 0x797469726F697270;
        }

        if (v19)
        {
          v27 = 0xE900000000000070;
        }

        else
        {
          v27 = 0xE800000000000000;
        }

        if (v26 == v13 && v27 == v14)
        {
          v70 = v14;
          v27, a2, 0x6574617473, v18, a5, a6, a7, a8;
          v70, v71, v72, v73, v74, v75, v76, v77;
          return v25;
        }

        v29 = v14;
        v83 = v13;
        v78 = v16;
        v80 = v15;
        v30 = sub_1CF9E8048();
        v27, v31, v32, v33, v34, v35, v36, v37;
        v29, v38, v39, v40, v41, v42, v43, v44;
        v18 = 32;
        v17 = 0x6574617473;
        v16 = v78;
        v15 = v80;
        v13 = v83;
        v14 = v29;
        result = v25;
        if (v30)
        {
          return result;
        }
      }

LABEL_10:
      result = (result + 1) & v12;
      if (((*(v8 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (a1 >= 0x20u)
    {
      goto LABEL_10;
    }

    if (*(*(v8 + 48) + result))
    {
      if (v19 == 1)
      {
        v21 = 0xD000000000000010;
        v22 = v16;
        v23 = a1;
        if (a1)
        {
LABEL_28:
          if (v23 == 1)
          {
            v17 = 0xD000000000000010;
          }

          else
          {
            v17 = 0xD000000000000012;
          }

          if (v23 == 1)
          {
            v24 = v16;
          }

          else
          {
            v24 = v15;
          }

          goto LABEL_72;
        }
      }

      else
      {
        v21 = 0xD000000000000012;
        v22 = v15;
        v23 = a1;
        if (a1)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      v22 = 0xE500000000000000;
      v21 = 0x6574617473;
      v23 = a1;
      if (a1)
      {
        goto LABEL_28;
      }
    }

    v24 = 0xE500000000000000;
LABEL_72:
    v81 = result;
    if (v21 == v17 && v22 == v24)
    {
      v22, v22, v17, v18, a5, a6, a7, a8;
      v24, v63, v64, v65, v66, v67, v68, v69;
      return v81;
    }

    v82 = v18;
    v79 = v14;
    v84 = v13;
    v45 = v15;
    v46 = v16;
    v47 = v22;
    v48 = sub_1CF9E8048();
    v47, v49, v50, v51, v52, v53, v54, v55;
    v24, v56, v57, v58, v59, v60, v61, v62;
    v18 = v82;
    v17 = 0x6574617473;
    v16 = v46;
    v15 = v45;
    v13 = v84;
    v14 = v79;
    result = v81;
    if (v48)
    {
      return result;
    }

    goto LABEL_10;
  }

  return result;
}

unint64_t sub_1CF7C1FEC(unsigned __int8 a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if (((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return v10;
  }

  v12 = ~v9;
  v13 = 0x797469726F697270;
  if (a1)
  {
    v13 = 0x6D617473656D6974;
  }

  v65 = v13;
  if (a1)
  {
    v14 = 0xE900000000000070;
  }

  else
  {
    v14 = 0xE800000000000000;
  }

  v15 = a1 & 0xE0;
  while (1)
  {
    v16 = *(*(v8 + 48) + v10);
    v17 = v16 >> 5;
    if (v16 >> 5 > 1)
    {
      if (v17 == 4)
      {
        if (v16 == 128)
        {
          if (a1 == 128)
          {
            return v10;
          }
        }

        else if (a1 == 129)
        {
          return v10;
        }
      }

      else if (v17 == 3)
      {
        if (*(*(v8 + 48) + v10) > 0x61u)
        {
          if (v16 == 98)
          {
            if (a1 == 98)
            {
              return v10;
            }
          }

          else if (a1 == 99)
          {
            return v10;
          }
        }

        else if (v16 == 96)
        {
          if (a1 == 96)
          {
            return v10;
          }
        }

        else if (a1 == 97)
        {
          return v10;
        }
      }

      else if (*(*(v8 + 48) + v10) > 0x41u)
      {
        if (v16 == 66)
        {
          if (a1 == 66)
          {
            return v10;
          }
        }

        else if (a1 == 67)
        {
          return v10;
        }
      }

      else if (v16 == 64)
      {
        if (a1 == 64)
        {
          return v10;
        }
      }

      else if (a1 == 65)
      {
        return v10;
      }

      goto LABEL_9;
    }

    if (!v17)
    {
      break;
    }

    if (v15 == 32)
    {
      if (v16)
      {
        v23 = 0x6D617473656D6974;
      }

      else
      {
        v23 = 0x797469726F697270;
      }

      if (v16)
      {
        v24 = 0xE900000000000070;
      }

      else
      {
        v24 = 0xE800000000000000;
      }

      if (v23 == v65 && v24 == v14)
      {
        v24, a2, v65, a4, a5, a6, a7, a8;
        v63 = v14;
        goto LABEL_74;
      }

      v26 = sub_1CF9E8048();
      v24, v27, v28, v29, v30, v31, v32, v33;
      v14, v34, v35, v36, v37, v38, v39, v40;
      if (v26)
      {
        return v10;
      }
    }

LABEL_9:
    v10 = (v10 + 1) & v12;
    if (((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return v10;
    }
  }

  if (a1 >= 0x20u)
  {
    goto LABEL_9;
  }

  if (*(*(v8 + 48) + v10))
  {
    if (v16 == 1)
    {
      v18 = 0xD000000000000010;
      v19 = 0x80000001CFA2C3F0;
      v20 = a1;
      if (a1)
      {
        goto LABEL_22;
      }

LABEL_65:
      v22 = 0xE500000000000000;
      v21 = 0x6574617473;
      if (v18 != 0x6574617473)
      {
        goto LABEL_67;
      }

      goto LABEL_66;
    }

    v18 = 0xD000000000000012;
    v19 = 0x80000001CFA2C410;
    v20 = a1;
    if (!a1)
    {
      goto LABEL_65;
    }
  }

  else
  {
    v19 = 0xE500000000000000;
    v18 = 0x6574617473;
    v20 = a1;
    if (!a1)
    {
      goto LABEL_65;
    }
  }

LABEL_22:
  if (v20 == 1)
  {
    v21 = 0xD000000000000010;
  }

  else
  {
    v21 = 0xD000000000000012;
  }

  if (v20 == 1)
  {
    v22 = 0x80000001CFA2C3F0;
  }

  else
  {
    v22 = 0x80000001CFA2C410;
  }

  if (v18 != v21)
  {
LABEL_67:
    v41 = sub_1CF9E8048();
    v19, v42, v43, v44, v45, v46, v47, v48;
    v22, v49, v50, v51, v52, v53, v54, v55;
    if (v41)
    {
      return v10;
    }

    goto LABEL_9;
  }

LABEL_66:
  if (v19 != v22)
  {
    goto LABEL_67;
  }

  v19, a2, v21, a4, a5, a6, a7, a8;
  v63 = v22;
LABEL_74:
  v63, v56, v57, v58, v59, v60, v61, v62;
  return v10;
}

unint64_t sub_1CF7C2364(unsigned __int8 a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = -1 << *(v8 + 32);
  v10 = a2 & ~v9;
  if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v12 = ~v9;
    while (1)
    {
      if (*(*(v8 + 48) + v10))
      {
        if (*(*(v8 + 48) + v10) == 1)
        {
          v13 = 0xE700000000000000;
          v14 = 0x64695F6D657469;
          v15 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v13 = 0xE800000000000000;
          v14 = 0x657079745F626F6ALL;
          v15 = a1;
          if (!a1)
          {
LABEL_17:
            v17 = 0xE400000000000000;
            v16 = 1684957547;
            if (v14 != 1684957547)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v13 = 0xE400000000000000;
        v14 = 1684957547;
        v15 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v15 == 1)
      {
        v16 = 0x64695F6D657469;
      }

      else
      {
        v16 = 0x657079745F626F6ALL;
      }

      if (v15 == 1)
      {
        v17 = 0xE700000000000000;
      }

      else
      {
        v17 = 0xE800000000000000;
      }

      if (v14 != v16)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v13 == v17)
      {
        v13, a2, v16, a4, a5, a6, a7, a8;
        v17, v33, v34, v35, v36, v37, v38, v39;
        return v10;
      }

LABEL_19:
      v18 = sub_1CF9E8048();
      v13, v19, v20, v21, v22, v23, v24, v25;
      v17, v26, v27, v28, v29, v30, v31, v32;
      if ((v18 & 1) == 0)
      {
        v10 = (v10 + 1) & v12;
        if ((*(v8 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
        {
          continue;
        }
      }

      return v10;
    }
  }

  return v10;
}

unint64_t sub_1CF7C24E4(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v69 = ~v4;
    v74 = *a1;
    v75 = *(a1 + 8);
    v67 = v2 + 64;
    do
    {
      v7 = (*(v2 + 48) + 48 * v5);
      v8 = *(v7 + 27);
      v9 = v7[1];
      v72 = *v7;
      *v73 = v9;
      *&v73[11] = v8;
      v10 = v72;
      v11 = BYTE8(v72);
      v12 = BYTE9(v72);
      v71 = BYTE9(v72);
      v13 = v74;
      v14 = v75;
      v15 = HIBYTE(v75);
      if (BYTE9(v72))
      {
        if ((v75 & 0x100) == 0)
        {
          goto LABEL_12;
        }

        v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v18 = v17;
        v19 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v21 = v20;
        if (v16 == v19 && v18 == v20)
        {
          sub_1CEFCCBDC(&v72, v70, &qword_1EC4BE1A0, &unk_1CFA17130);
          sub_1CEFD0988(v10, v11, 1);
          sub_1CEFCCBDC(&v74, v70, &unk_1EC4BFC10, &qword_1CF9FE510);
          v18, v22, v23, v24, v25, v26, v27, v28;
          v21, v29, v30, v31, v32, v33, v34, v35;
          sub_1CEFD0994(v13, v14, 1);
        }

        else
        {
          v39 = sub_1CF9E8048();
          sub_1CEFCCBDC(&v72, v70, &qword_1EC4BE1A0, &unk_1CFA17130);
          sub_1CEFD0988(v10, v11, 1);
          sub_1CEFCCBDC(&v74, v70, &unk_1EC4BFC10, &qword_1CF9FE510);
          v18, v40, v41, v42, v43, v44, v45, v46;
          v21, v47, v48, v49, v50, v51, v52, v53;
          sub_1CEFD0994(v13, v14, 1);
          if ((v39 & 1) == 0)
          {
            sub_1CEFD0994(v10, v11, v71);
LABEL_4:
            sub_1CEFCCC44(&v72, &qword_1EC4BE1A0, &unk_1CFA17130);
            v3 = v67;
            v2 = v68;
            goto LABEL_5;
          }
        }

        v54 = v71;
      }

      else
      {
        if ((v75 & 0x100) != 0)
        {
LABEL_12:
          sub_1CEFD0988(v72, BYTE8(v72), SBYTE9(v72));
          sub_1CEFCCBDC(&v74, v70, &unk_1EC4BFC10, &qword_1CF9FE510);
          sub_1CEFD0994(v10, v11, v12);
          v36 = v15 & 1;
          v37 = v13;
          v38 = v14;
LABEL_13:
          sub_1CEFD0994(v37, v38, v36);
          goto LABEL_5;
        }

        if (BYTE8(v72))
        {
          if (BYTE8(v72) == 1)
          {
            if (v75 != 1 || v72 != v74)
            {
              goto LABEL_38;
            }
          }

          else if (v72)
          {
            if (v75 != 2 || v74 != 1)
            {
              goto LABEL_38;
            }
          }

          else if (v75 != 2 || v74)
          {
            goto LABEL_38;
          }
        }

        else if (v75 || v72 != v74)
        {
LABEL_38:
          sub_1CEFD0988(v72, BYTE8(v72), 0);
          sub_1CEFCCBDC(&v74, v70, &unk_1EC4BFC10, &qword_1CF9FE510);
          v37 = v10;
          v38 = v11;
          v36 = 0;
          goto LABEL_13;
        }

        sub_1CEFCCBDC(&v72, v70, &qword_1EC4BE1A0, &unk_1CFA17130);
        sub_1CEFD0988(v10, v11, 0);
        sub_1CEFCCBDC(&v74, v70, &unk_1EC4BFC10, &qword_1CF9FE510);
        v54 = 0;
      }

      sub_1CEFD0994(v10, v11, v54);
      v55 = *&v73[16];
      v56 = v73[24];
      v57 = v73[25];
      v58 = v73[26];
      v59 = *(a1 + 32);
      v60 = *(a1 + 40);
      v61 = *(a1 + 41);
      v62 = *(a1 + 42);
      if (*v73 != *(a1 + 16) && (sub_1CF9E8048() & 1) == 0 || v55 != v59 || v56 != v60)
      {
        goto LABEL_4;
      }

      if (v57 == 89)
      {
        v63 = v58;
        sub_1CEFCCC44(&v72, &qword_1EC4BE1A0, &unk_1CFA17130);
        v3 = v67;
        v2 = v68;
        if (v61 != 89)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v61 == 89)
        {
          goto LABEL_4;
        }

        v63 = v58;
        v64 = qword_1CFA172B8[v57];
        v65 = qword_1CFA172B8[v61];
        sub_1CEFCCC44(&v72, &qword_1EC4BE1A0, &unk_1CFA17130);
        v3 = v67;
        v2 = v68;
        if (v64 != v65)
        {
          goto LABEL_5;
        }
      }

      if (v63 == 2)
      {
        if (v62 == 2)
        {
          return v5;
        }
      }

      else if (v62 != 2 && ((v62 ^ v63) & 1) == 0)
      {
        return v5;
      }

LABEL_5:
      v5 = (v5 + 1) & v69;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1CF7C295C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_1CF7D5264(v24, v25, v26);
      v20 = sub_1CF9E6868();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_1CF7C2AFC(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1CF7C2B64(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = ~v4;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = v8 == 2;
  v10 = *(a1 + 25);
  v11 = v7 == 1 && v8 == 2;
  if (v7)
  {
    v9 = 0;
  }

  v60 = v9;
  v61 = v11;
  v63 = *(a1 + 25);
  v62 = v6;
  while (1)
  {
    v18 = *(*(v2 + 48) + 8 * v5);
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = *(v18 + 25);
    if ((v21 & 1) == 0)
    {
      break;
    }

    if ((v10 & 1) == 0)
    {
      goto LABEL_8;
    }

    v22 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v23 = v7;
    v25 = v24;
    v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v28 = v27;
    if (v22 == v26 && v25 == v27)
    {
      sub_1CEFD0988(v19, v20, 1);
      sub_1CEFD0988(v23, v8, 1);

      v25, v45, v46, v47, v48, v49, v50, v51;
      v28, v52, v53, v54, v55, v56, v57, v58;
      sub_1CEFD0994(v23, v8, 1);
LABEL_35:
      sub_1CEFD0994(v19, v20, 1);

      return v5;
    }

    v30 = sub_1CF9E8048();
    sub_1CEFD0988(v19, v20, 1);
    sub_1CEFD0988(v23, v8, 1);

    v25, v31, v32, v33, v34, v35, v36, v37;
    v28, v38, v39, v40, v41, v42, v43, v44;
    sub_1CEFD0994(v23, v8, 1);
    if (v30)
    {
      goto LABEL_35;
    }

    v7 = v23;
    sub_1CEFD0994(v19, v20, 1);

    v6 = v62;
    v3 = v2 + 64;
LABEL_10:
    v5 = (v5 + 1) & v6;
    v10 = v63;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  if (v10)
  {
LABEL_8:
    v12 = *(v18 + 16);
    v13 = *(v18 + 24);
    v14 = v10;
    sub_1CEFD0988(v12, v13, v21);
    sub_1CEFD0988(v7, v8, v14);
    sub_1CEFD0994(v19, v20, v21);
    v15 = v7;
    v16 = v8;
    v17 = v14;
LABEL_9:
    sub_1CEFD0994(v15, v16, v17);
    goto LABEL_10;
  }

  if (!*(v18 + 24))
  {
    if (!v8 && v19 == v7)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v20 == 1)
  {
    if (v8 == 1 && v19 == v7)
    {
      v19 = v7;
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (v19)
  {
    if (v61)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  if (!v60)
  {
LABEL_32:
    sub_1CEFD0988(*(v18 + 16), *(v18 + 24), 0);
    sub_1CEFD0988(v7, v8, 0);
    v15 = v19;
    v16 = v20;
    v17 = 0;
    goto LABEL_9;
  }

  v19 = 0;
LABEL_37:
  sub_1CEFD0988(v19, *(v18 + 24), 0);
  sub_1CEFD0988(v7, v8, 0);
  sub_1CEFD0994(v19, v20, 0);
  return v5;
}

void sub_1CF7C2ED0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = v6;
  v8 = sub_1CF9E7BD8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 4 * v22);
      v24 = *(v7 + 56) + 32 * v22;
      v37 = *v24;
      v25 = *(v24 + 24);
      v36 = *(v24 + 16);
      if ((v35 & 1) == 0)
      {
      }

      sub_1CF9E81D8();
      sub_1CF9E8208();
      v26 = sub_1CF9E8228();
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 4 * v17) = v23;
      v18 = *(v9 + 56) + 32 * v17;
      *v18 = v37;
      *(v18 + 16) = v36;
      *(v18 + 24) = v25;
      ++*(v9 + 16);
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1CF7C3178(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFA30, &unk_1CFA079A0);
  v34 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_1CEFE9EB8(v24, v35);
      }

      else
      {
        sub_1CEFD1104(v24, v35);
      }

      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v25 = sub_1CF9E8228();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_1CEFE9EB8(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1CF7C3430(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4968, &qword_1CFA171D0);
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v28 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_18:
      v31 = v28 | (v8 << 6);
      v32 = *(*(v5 + 48) + v31);
      v33 = (*(v5 + 56) + 32 * v31);
      if (v4)
      {
        sub_1CEFE9EB8(v33, v40);
      }

      else
      {
        sub_1CEFD1104(v33, v40);
      }

      sub_1CF9E81D8();
      if (v32 > 3)
      {
        if (v32 > 5)
        {
          if (v32 == 6)
          {
            v15 = 0x80000001CFA2C070;
          }

          else
          {
            v15 = 0x80000001CFA2C090;
          }
        }

        else if (v32 == 4)
        {
          v15 = 0xEA0000000000726FLL;
        }

        else
        {
          v15 = 0xE800000000000000;
        }
      }

      else if (v32 > 1)
      {
        if (v32 == 2)
        {
          v15 = 0xEF657461645F7972;
        }

        else
        {
          v15 = 0xEF657461645F726FLL;
        }
      }

      else if (v32)
      {
        v15 = 0xEB00000000746E75;
      }

      else
      {
        v15 = 0xE500000000000000;
      }

      sub_1CF9E69C8();
      v15, v16, v17, v18, v19, v20, v21, v22;
      v23 = sub_1CF9E8228();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v24) >> 6;
        while (++v26 != v35 || (v34 & 1) == 0)
        {
          v36 = v26 == v35;
          if (v26 == v35)
          {
            v26 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v26);
          if (v37 != -1)
          {
            v27 = __clz(__rbit64(~v37)) + (v26 << 6);
            goto LABEL_10;
          }
        }

LABEL_51:
        __break(1u);
        return;
      }

      v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      *(*(v7 + 48) + v27) = v32;
      sub_1CEFE9EB8(v40, (*(v7 + 56) + 32 * v27));
      ++*(v7 + 16);
    }

    v29 = v8;
    while (1)
    {
      v8 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v8 >= v13)
      {
        break;
      }

      v30 = v9[v8];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v12 = (v30 - 1) & v30;
        goto LABEL_18;
      }
    }

    if (v4)
    {
      v38 = 1 << *(v5 + 32);
      if (v38 >= 64)
      {
        bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v38;
      }

      *(v5 + 16) = 0;
    }

    v3 = v39;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1CF7C37F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4D60, &qword_1CFA079B0);
  v48 = v4;
  v6 = sub_1CF9E7BD8();
  v52 = v6;
  if (*(v5 + 16))
  {
    v46 = v2;
    v47 = v5;
    v7 = 0;
    v8 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v19 = (v11 - 1) & v11;
LABEL_15:
      v22 = v18 | (v7 << 6);
      v50 = v19;
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 48 * v22;
      if (v48)
      {
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 16);
        v28 = *(v24 + 24);
        v29 = *(v24 + 25);
        v30 = *(v24 + 26);
        v53 = *(v24 + 40);
        v54 = *(v24 + 32);
        v31 = *(v23 + 8 * v22);
      }

      else
      {
        v33 = *(v24 + 16);
        v32 = *(v24 + 32);
        v55[0] = *v24;
        v55[1] = v33;
        v55[2] = v32;
        v26 = *(&v55[0] + 1);
        v25 = *&v55[0];
        v27 = v33;
        v28 = BYTE8(v33);
        v29 = BYTE9(v33);
        v30 = BYTE10(v33);
        v31 = *(v23 + 8 * v22);
        v53 = *(&v32 + 1);
        v54 = v32;
        sub_1CF1A8F60(v55, v56);
      }

      v49 = v28;
      sub_1CF9E81D8();
      v51 = v26;
      sub_1CF9E69C8();
      MEMORY[0x1D386A470](v27);
      MEMORY[0x1D386A470](v28);
      v34 = v27;
      if (v29 == 89)
      {
        v35 = 89;
        sub_1CF9E81F8();
      }

      else
      {
        sub_1CF9E81F8();
        v35 = v29;
        MEMORY[0x1D386A470](qword_1CFA172B8[v29]);
      }

      v36 = v30;
      if (v30 != 2)
      {
        sub_1CF9E81F8();
      }

      sub_1CF9E81F8();
      sub_1CF9E69C8();
      v37 = sub_1CF9E8228();
      v38 = -1 << *(v52 + 32);
      v39 = v37 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v13 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        v16 = v51;
        v15 = v25;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v13 + 8 * v40);
          if (v44 != -1)
          {
            v14 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v39) & ~*(v13 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
      v16 = v51;
      v15 = v25;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v17 = *(v52 + 48) + 48 * v14;
      *v17 = v15;
      *(v17 + 8) = v16;
      *(v17 + 16) = v34;
      *(v17 + 24) = v49;
      *(v17 + 25) = v35;
      *(v17 + 26) = v36;
      *(v17 + 32) = v54;
      *(v17 + 40) = v53;
      *(*(v52 + 56) + 8 * v14) = v31;
      ++*(v52 + 16);
      v5 = v47;
      v11 = v50;
    }

    v20 = v7;
    while (1)
    {
      v7 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v7 >= v12)
      {
        break;
      }

      v21 = v8[v7];
      ++v20;
      if (v21)
      {
        v18 = __clz(__rbit64(v21));
        v19 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_39;
    }

    v45 = 1 << *(v5 + 32);
    v3 = v46;
    if (v45 >= 64)
    {
      bzero(v8, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v45;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v52;
}

void sub_1CF7C3BDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BE8, &qword_1CFA07A90);
  v35 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v25 = sub_1CF9E8228();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1CF7C3EA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4950, &unk_1CFA171A0);
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v41 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (1)
    {
      if (!v12)
      {
        v17 = v8;
        while (1)
        {
          v8 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_53;
          }

          if (v8 >= v13)
          {
            break;
          }

          v18 = v9[v8];
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v12 = (v18 - 1) & v18;
            goto LABEL_15;
          }
        }

        if ((v4 & 1) == 0)
        {

          v3 = v41;
          goto LABEL_51;
        }

        v40 = 1 << *(v5 + 32);
        v3 = v41;
        if (v40 >= 64)
        {
          bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v40;
        }

        *(v5 + 16) = 0;
        break;
      }

      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1CEFE9EB8(v21, v42);
      }

      else
      {
        sub_1CEFD1104(v21, v42);
      }

      sub_1CF9E81D8();
      if (v20 <= 30)
      {
        switch(v20)
        {
          case 28:
            v22 = 0;
            break;
          case 29:
            v22 = 1;
            break;
          case 30:
            v22 = 2;
            break;
          default:
            goto LABEL_30;
        }
      }

      else if (v20 > 32)
      {
        if (v20 == 33)
        {
          v22 = 6;
        }

        else
        {
          if (v20 != 34)
          {
LABEL_30:
            MEMORY[0x1D386A470](3);
            sub_1CF07FC44(v20);
            v24 = v23;
            sub_1CF9E69C8();
            v24, v25, v26, v27, v28, v29, v30, v31;
            goto LABEL_35;
          }

          v22 = 7;
        }
      }

      else if (v20 == 31)
      {
        v22 = 4;
      }

      else
      {
        v22 = 5;
      }

      MEMORY[0x1D386A470](v22);
LABEL_35:
      v32 = sub_1CF9E8228();
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_53:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      sub_1CEFE9EB8(v42, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }
  }

LABEL_51:
  *v3 = v7;
}

void sub_1CF7C4200(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B48, &unk_1CFA079E0);
  v38 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v28 = sub_1CF9E8228();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1CF7C44E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4920, &qword_1CFA170E8);
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v40 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1CEFE9EB8(v21, v41);
      }

      else
      {
        sub_1CEFD1104(v21, v41);
      }

      sub_1CF9E81D8();
      sub_1CEFF1E08(v20);
      v23 = v22;
      sub_1CF9E69C8();
      v23, v24, v25, v26, v27, v28, v29, v30;
      v31 = sub_1CF9E8228();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      sub_1CEFE9EB8(v41, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1CF7C4798(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4928, &qword_1CFA170F8);
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v41 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v28 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_20:
      v31 = v28 | (v8 << 6);
      v32 = *(*(v5 + 48) + v31);
      v33 = (*(v5 + 56) + 32 * v31);
      if (v4)
      {
        sub_1CEFE9EB8(v33, v43);
      }

      else
      {
        sub_1CEFD1104(v33, v43);
      }

      sub_1CF9E81D8();
      v34 = (v32 >> 4) & 3;
      if (v34 > 1)
      {
        if (v34 == 2)
        {
          MEMORY[0x1D386A470](4);
          if (v32)
          {
            v15 = 0xE900000000000070;
          }

          else
          {
            v15 = 0xE800000000000000;
          }

          sub_1CF9E69C8();
          v15, v16, v17, v18, v19, v20, v21, v22;
        }

        else
        {
          if (v32 <= 50)
          {
            if (v32 == 48)
            {
              v35 = 2;
            }

            else if (v32 == 49)
            {
              v35 = 3;
            }

            else
            {
              v35 = 5;
            }
          }

          else if (v32 > 52)
          {
            if (v32 == 53)
            {
              v35 = 8;
            }

            else
            {
              v35 = 9;
            }
          }

          else if (v32 == 51)
          {
            v35 = 6;
          }

          else
          {
            v35 = 7;
          }

          MEMORY[0x1D386A470](v35);
        }
      }

      else if (v34)
      {
        MEMORY[0x1D386A470](1);
        sub_1CEFEAF20(v42, v32 & 0xCF);
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CEFEAF20(v42, v32);
      }

      v23 = sub_1CF9E8228();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v24) >> 6;
        while (++v26 != v37 || (v36 & 1) == 0)
        {
          v38 = v26 == v37;
          if (v26 == v37)
          {
            v26 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v26);
          if (v39 != -1)
          {
            v27 = __clz(__rbit64(~v39)) + (v26 << 6);
            goto LABEL_12;
          }
        }

LABEL_59:
        __break(1u);
        return;
      }

      v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_12:
      *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      *(*(v7 + 48) + v27) = v32;
      sub_1CEFE9EB8(v43, (*(v7 + 56) + 32 * v27));
      ++*(v7 + 16);
    }

    v29 = v8;
    while (1)
    {
      v8 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        __break(1u);
        goto LABEL_59;
      }

      if (v8 >= v13)
      {
        break;
      }

      v30 = v9[v8];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v12 = (v30 - 1) & v30;
        goto LABEL_20;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_57;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_57:
  *v3 = v7;
}

void sub_1CF7C4B2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for SyncState(0);
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BE0, &qword_1CFA07A88);
  v48 = v4;
  v8 = sub_1CF9E7BD8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v46 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v44 = 0x80000001CFA2C2C0;
    v45 = 0x80000001CFA2C2F0;
    v16 = v8 + 64;
    while (1)
    {
      if (!v14)
      {
        v32 = v10;
        while (1)
        {
          v10 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            __break(1u);
            goto LABEL_54;
          }

          if (v10 >= v15)
          {
            break;
          }

          v33 = v11[v10];
          ++v32;
          if (v33)
          {
            v31 = __clz(__rbit64(v33));
            v14 = (v33 - 1) & v33;
            goto LABEL_18;
          }
        }

        if ((v48 & 1) == 0)
        {

          v3 = v46;
          goto LABEL_52;
        }

        v42 = 1 << *(v7 + 32);
        v3 = v46;
        if (v42 >= 64)
        {
          bzero((v7 + 64), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v11 = -1 << v42;
        }

        *(v7 + 16) = 0;
        break;
      }

      v31 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_18:
      v34 = v31 | (v10 << 6);
      v35 = *(*(v7 + 48) + v34);
      v36 = *(v47 + 72);
      v37 = *(v7 + 56) + v36 * v34;
      if (v48)
      {
        sub_1CEFE4BF8(v37, v49, type metadata accessor for SyncState);
      }

      else
      {
        sub_1CEFE4F24(v37, v49, type metadata accessor for SyncState);
      }

      sub_1CF9E81D8();
      if (v35 <= 3)
      {
        if (v35 > 1)
        {
          if (v35 == 2)
          {
            v17 = 1145656661;
            goto LABEL_7;
          }

          v18 = 0xEF4449746E657645;
        }

        else if (v35)
        {
          v18 = v44;
        }

        else
        {
          v18 = 0xE600000000000000;
        }
      }

      else if (v35 <= 5)
      {
        if (v35 == 4)
        {
          v18 = v45;
        }

        else
        {
          v18 = 0xED00006E6F697372;
        }
      }

      else
      {
        if (v35 == 6)
        {
          v17 = 1936154988;
LABEL_7:
          v18 = (v17 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
          goto LABEL_8;
        }

        if (v35 == 7)
        {
          v18 = 0xEF6574617453676ELL;
        }

        else
        {
          v18 = 0xEF6E6F6974617265;
        }
      }

LABEL_8:
      sub_1CF9E69C8();
      v18, v19, v20, v21, v22, v23, v24, v25;
      v26 = sub_1CF9E8228();
      v27 = -1 << *(v9 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v27) >> 6;
        while (++v29 != v39 || (v38 & 1) == 0)
        {
          v40 = v29 == v39;
          if (v29 == v39)
          {
            v29 = 0;
          }

          v38 |= v40;
          v41 = *(v16 + 8 * v29);
          if (v41 != -1)
          {
            v30 = __clz(__rbit64(~v41)) + (v29 << 6);
            goto LABEL_10;
          }
        }

LABEL_54:
        __break(1u);
        return;
      }

      v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      *(*(v9 + 48) + v30) = v35;
      sub_1CEFE4BF8(v49, *(v9 + 56) + v36 * v30, type metadata accessor for SyncState);
      ++*(v9 + 16);
    }
  }

LABEL_52:
  *v3 = v9;
}

void sub_1CF7C4FE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B28, &unk_1CFA079C0);
  v39 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 16 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = (v22 + 32 * v21);
      v42 = *v26;
      v41 = *(v26 + 8);
      v27 = v26[3];
      v40 = v26[2];
      if ((v39 & 1) == 0)
      {
      }

      sub_1CF9E81D8();
      if (v25)
      {
        if (v25 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v24);
        }

        else
        {
          if (v24)
          {
            v28 = 3;
          }

          else
          {
            v28 = 2;
          }

          MEMORY[0x1D386A470](v28);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      v29 = sub_1CF9E8228();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v42;
      *(v17 + 8) = v41;
      *(v17 + 16) = v40;
      *(v17 + 24) = v27;
      ++*(v7 + 16);
      v5 = v38;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_41;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_41:
  *v3 = v7;
}

void sub_1CF7C5300(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DF0, &unk_1CFA07C80);
  v38 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v21 + 8 * v20);
      if ((v38 & 1) == 0)
      {
        v26 = v25;
      }

      sub_1CF9E81D8();
      if (v24)
      {
        if (v24 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v23);
        }

        else
        {
          if (v23)
          {
            v27 = 3;
          }

          else
          {
            v27 = 2;
          }

          MEMORY[0x1D386A470](v27);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      v28 = sub_1CF9E8228();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v37;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_41;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_41:
  *v3 = v7;
}

void sub_1CF7C5610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BB0, &unk_1CFA17140);
  v43 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v41 = v2;
    v42 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (1)
    {
      if (!v12)
      {
        v21 = v8;
        while (1)
        {
          v8 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v8 >= v13)
          {
            break;
          }

          v22 = v9[v8];
          ++v21;
          if (v22)
          {
            v20 = __clz(__rbit64(v22));
            v12 = (v22 - 1) & v22;
            goto LABEL_15;
          }
        }

        if ((v43 & 1) == 0)
        {

          v3 = v41;
          goto LABEL_37;
        }

        v40 = 1 << *(v5 + 32);
        v3 = v41;
        if (v40 >= 64)
        {
          bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v9 = -1 << v40;
        }

        *(v5 + 16) = 0;
        goto LABEL_36;
      }

      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = 32 * (v20 | (v8 << 6));
      v24 = *(v5 + 56);
      v25 = *(v5 + 48) + v23;
      v26 = *(v25 + 8);
      v47 = *v25;
      v46 = *(v25 + 16);
      v48 = *(v25 + 24);
      v27 = *(v25 + 25);
      v28 = *(v25 + 26);
      v29 = (v24 + v23);
      v30 = v29[1];
      v45 = *v29;
      v31 = v29[2];
      v44 = *(v29 + 24);
      if ((v43 & 1) == 0)
      {
      }

      sub_1CF9E81D8();
      sub_1CF9E69C8();
      MEMORY[0x1D386A470](v46);
      MEMORY[0x1D386A470](v48);
      if (v27 == 89)
      {
        break;
      }

      sub_1CF9E81F8();
      MEMORY[0x1D386A470](qword_1CFA172B8[v27]);
      if (v28 != 2)
      {
        goto LABEL_19;
      }

LABEL_21:
      sub_1CF9E81F8();
      v32 = sub_1CF9E8228();
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v16 = v30;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v16 = v30;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = 32 * v15;
      v18 = *(v7 + 48) + v17;
      *v18 = v47;
      *(v18 + 8) = v26;
      *(v18 + 16) = v46;
      *(v18 + 24) = v48;
      *(v18 + 25) = v27;
      *(v18 + 26) = v28;
      v19 = *(v7 + 56) + v17;
      *v19 = v45;
      *(v19 + 8) = v16;
      *(v19 + 16) = v31;
      *(v19 + 24) = v44;
      ++*(v7 + 16);
      v5 = v42;
    }

    sub_1CF9E81F8();
    if (v28 == 2)
    {
      goto LABEL_21;
    }

LABEL_19:
    sub_1CF9E81F8();
    goto LABEL_21;
  }

LABEL_36:

LABEL_37:
  *v3 = v7;
}

void sub_1CF7C59C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0E70, &qword_1CFA07CF0);
  v36 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v26 = sub_1CF9E8228();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1CF7C5C7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = sub_1CF9E5A58();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0D88, &qword_1CFA17240);
  v43 = v4;
  v8 = sub_1CF9E7BD8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v7;
    v42 = v5;
    v44 = (v5 + 32);
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v42 + 72);
      v28 = v23 + v27 * v22;
      if (v43)
      {
        (*v44)(v45, v28, v46);
      }

      else
      {
        (*v40)(v45, v28, v46);
      }

      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v29 = sub_1CF9E8228();
      v30 = -1 << *(v9 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      (*v44)((*(v9 + 56) + v27 * v17), v45, v46);
      ++*(v9 + 16);
      v7 = v41;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v7 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1CF7C5FFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0B38, &qword_1CFA079D0);
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (1)
    {
      if (v12)
      {
        v17 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
        v18 = v17 | (v8 << 6);
        if (v4)
        {
LABEL_10:
          v19 = *(*(v5 + 48) + 8 * v18);
          v20 = (*(v5 + 56) + (v18 << 6));
          v38 = *v20;
          v39 = v20[1];
          v40 = v20[2];
          v41 = v20[3];
          goto LABEL_17;
        }
      }

      else
      {
        v21 = v8;
        do
        {
          v8 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            __break(1u);
            goto LABEL_35;
          }

          if (v8 >= v13)
          {
            if (v4)
            {
              v36 = 1 << *(v5 + 32);
              if (v36 >= 64)
              {
                bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
              }

              else
              {
                *v9 = -1 << v36;
              }

              *(v5 + 16) = 0;
            }

            v3 = v37;
            goto LABEL_33;
          }

          v22 = v9[v8];
          ++v21;
        }

        while (!v22);
        v12 = (v22 - 1) & v22;
        v18 = __clz(__rbit64(v22)) | (v8 << 6);
        if (v4)
        {
          goto LABEL_10;
        }
      }

      v23 = *(*(v5 + 48) + 8 * v18);
      v24 = (*(v5 + 56) + (v18 << 6));
      v25 = *v24;
      v26 = v24[1];
      v27 = v24[3];
      v44 = v24[2];
      v45 = v27;
      v43[0] = v25;
      v43[1] = v26;
      v40 = v44;
      v41 = v27;
      v38 = v25;
      v39 = v26;
      v19 = v23;
      sub_1CEFCCBDC(v43, v42, &unk_1EC4BF250, &unk_1CFA01B50);
LABEL_17:
      v28 = sub_1CF9E7558();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      v16 = (*(v7 + 56) + (v15 << 6));
      *v16 = v38;
      v16[1] = v39;
      v16[2] = v40;
      v16[3] = v41;
      ++*(v7 + 16);
    }
  }

LABEL_33:
  *v3 = v7;
}

void sub_1CF7C62E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4938, &qword_1CFA17150);
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v39 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1CEFE9EB8(v21, v40);
      }

      else
      {
        sub_1CEFD1104(v21, v40);
      }

      sub_1CF9E81D8();
      if (v20)
      {
        if (v20 == 1)
        {
          v22 = 0x80000001CFA2C3F0;
        }

        else
        {
          v22 = 0x80000001CFA2C410;
        }
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      sub_1CF9E69C8();
      v22, v23, v24, v25, v26, v27, v28, v29;
      v30 = sub_1CF9E8228();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      sub_1CEFE9EB8(v40, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v38 = 1 << *(v5 + 32);
      if (v38 >= 64)
      {
        bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v38;
      }

      *(v5 + 16) = 0;
    }

    v3 = v39;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1CF7C6608(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = v6;
  v8 = sub_1CF9E7BD8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v28 = sub_1CF9E8228();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1CF7C68A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0DE8, &qword_1CFA07C78);
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *(v21 + 8);
      v23 = *v21;
      v35 = *(*(v5 + 56) + 4 * v20);
      sub_1CF9E81D8();
      if (v22)
      {
        if (v22 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v23);
        }

        else
        {
          if (v23)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          MEMORY[0x1D386A470](v24);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      v25 = sub_1CF9E8228();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v22;
      *(*(v7 + 56) + 4 * v15) = v35;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_39;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v7;
}

void sub_1CF7C6BFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v46 = v6;
  v8 = sub_1CF9E7BD8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v44 = v4;
    v45 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v47 = (v14 - 1) & v14;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v24 = *(v22 + 8 * v21);
      if ((v46 & 1) == 0)
      {
        v25 = v23;
      }

      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v27 = v26;
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v28 = sub_1CF9E8228();
      v27, v29, v30, v31, v32, v33, v34, v35;
      v36 = -1 << *(v9 + 32);
      v37 = v28 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v16 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v16 + 8 * v38);
          if (v42 != -1)
          {
            v17 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v37) & ~*(v16 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      *(*(v9 + 56) + 8 * v17) = v24;
      ++*(v9 + 16);
      v7 = v45;
      v14 = v47;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v5 = v44;
      goto LABEL_33;
    }

    v43 = 1 << *(v7 + 32);
    v5 = v44;
    if (v43 >= 64)
    {
      bzero(v11, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v43;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1CF7C6EBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4980, &qword_1CFA17208);
  v35 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v25 = sub_1CF9E8228();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1CF7C718C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, _BYTE *))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v7;
  v9 = sub_1CF9E7BD8();
  v10 = v9;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = (*(v8 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v8 + 56) + 40 * v23;
      if (v37)
      {
        a5(v27, v39);
      }

      else
      {
        sub_1CF1A91AC(v27, v39);
      }

      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v28 = sub_1CF9E8228();
      v29 = -1 << *(v10 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      a5(v39, (*(v10 + 56) + 40 * v18));
      ++*(v10 + 16);
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_34;
    }

    v36 = 1 << *(v8 + 32);
    v6 = v5;
    if (v36 >= 64)
    {
      bzero((v8 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v6 = v10;
}

void sub_1CF7C7470(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = sub_1CF9E7BD8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v27 = sub_1CF9E8228();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1CF7C77BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = v6;
  v8 = sub_1CF9E7BD8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v45 = v4;
    v46 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v48 = (v14 - 1) & v14;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v24 = *(v22 + 8 * v21);
      if ((v47 & 1) == 0)
      {
        v25 = v23;
        v26 = v24;
      }

      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v28 = v27;
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v29 = sub_1CF9E8228();
      v28, v30, v31, v32, v33, v34, v35, v36;
      v37 = -1 << *(v9 + 32);
      v38 = v29 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v16 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v16 + 8 * v39);
          if (v43 != -1)
          {
            v17 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v38) & ~*(v16 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      *(*(v9 + 56) + 8 * v17) = v24;
      ++*(v9 + 16);
      v7 = v46;
      v14 = v48;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v48 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v5 = v45;
      goto LABEL_33;
    }

    v44 = 1 << *(v7 + 32);
    v5 = v45;
    if (v44 >= 64)
    {
      bzero(v11, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v44;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1CF7C7A78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for VFSItem(0);
  v41 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4960, &qword_1CFA171C8);
  v42 = v4;
  v8 = sub_1CF9E7BD8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v39 = v2;
    v40 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(v7 + 48) + 16 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        sub_1CEFE4BF8(v28, v43, type metadata accessor for VFSItem);
      }

      else
      {
        sub_1CEFE4F24(v28, v43, type metadata accessor for VFSItem);
      }

      sub_1CF9E81D8();
      if (v26)
      {
        if (v26 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v25);
        }

        else
        {
          if (v25)
          {
            v29 = 3;
          }

          else
          {
            v29 = 2;
          }

          MEMORY[0x1D386A470](v29);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      v30 = sub_1CF9E8228();
      v31 = -1 << *(v9 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v16 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v16 + 8 * v33);
          if (v37 != -1)
          {
            v17 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v32) & ~*(v16 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 16 * v17;
      *v18 = v25;
      *(v18 + 8) = v26;
      sub_1CEFE4BF8(v43, *(v9 + 56) + v27 * v17, type metadata accessor for VFSItem);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_42;
    }

    v38 = 1 << *(v7 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v11, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_42:
  *v3 = v9;
}

void sub_1CF7C7E28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4940, &qword_1CFA17158);
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v40 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (1)
    {
      if (!v12)
      {
        v17 = v8;
        while (1)
        {
          v8 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_69;
          }

          if (v8 >= v13)
          {
            break;
          }

          v18 = v9[v8];
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v12 = (v18 - 1) & v18;
            goto LABEL_15;
          }
        }

        if (v4)
        {
          v39 = 1 << *(v5 + 32);
          if (v39 >= 64)
          {
            bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          }

          else
          {
            *v9 = -1 << v39;
          }

          *(v5 + 16) = 0;
        }

        v3 = v40;
        goto LABEL_67;
      }

      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1CEFE9EB8(v21, v41);
      }

      else
      {
        sub_1CEFD1104(v21, v41);
      }

      sub_1CF9E81D8();
      if (v20 >> 2 == 55)
      {
        MEMORY[0x1D386A470](1);
      }

      else
      {
        if (v20 >> 2 == 63)
        {
          goto LABEL_20;
        }

        MEMORY[0x1D386A470](2);
        v22 = v20 >> 5;
        if (v20 >> 5 <= 1)
        {
          if (v22)
          {
            MEMORY[0x1D386A470](2);
            if (v20)
            {
              v23 = 0xE900000000000070;
            }

            else
            {
              v23 = 0xE800000000000000;
            }
          }

          else
          {
            MEMORY[0x1D386A470](1);
            if (v20)
            {
              if (v20 == 1)
              {
                v23 = 0x80000001CFA2C3F0;
              }

              else
              {
                v23 = 0x80000001CFA2C410;
              }
            }

            else
            {
              v23 = 0xE500000000000000;
            }
          }

          sub_1CF9E69C8();
          v23, v24, v25, v26, v27, v28, v29, v30;
        }

        else if (v22 == 4)
        {
          if (v20 == 128)
          {
            MEMORY[0x1D386A470](10);
          }

          else
          {
            MEMORY[0x1D386A470](11);
          }
        }

        else if (v22 == 3)
        {
          if (v20 > 97)
          {
            if (v20 == 98)
            {
              MEMORY[0x1D386A470](8);
            }

            else
            {
              MEMORY[0x1D386A470](9);
            }
          }

          else if (v20 == 96)
          {
            MEMORY[0x1D386A470](6);
          }

          else
          {
            MEMORY[0x1D386A470](7);
          }
        }

        else if (v20 > 65)
        {
          if (v20 == 66)
          {
            MEMORY[0x1D386A470](4);
          }

          else
          {
            MEMORY[0x1D386A470](5);
          }
        }

        else
        {
          if (v20 == 64)
          {
LABEL_20:
            MEMORY[0x1D386A470](0);
            goto LABEL_48;
          }

          MEMORY[0x1D386A470](3);
        }
      }

LABEL_48:
      v31 = sub_1CF9E8228();
      v32 = -1 << *(v7 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_69:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      sub_1CEFE9EB8(v41, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }
  }

LABEL_67:
  *v3 = v7;
}

void sub_1CF7C8288(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4948, &unk_1CFA17160);
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v41 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1CEFE9EB8(v21, v42);
      }

      else
      {
        sub_1CEFD1104(v21, v42);
      }

      sub_1CF9E81D8();
      v22 = v20 >> 5;
      if (v20 >> 5 <= 1)
      {
        if (v22)
        {
          MEMORY[0x1D386A470](2);
          if (v20)
          {
            v24 = 0xE900000000000070;
          }

          else
          {
            v24 = 0xE800000000000000;
          }
        }

        else
        {
          MEMORY[0x1D386A470](1);
          if (v20)
          {
            if (v20 == 1)
            {
              v24 = 0x80000001CFA2C3F0;
            }

            else
            {
              v24 = 0x80000001CFA2C410;
            }
          }

          else
          {
            v24 = 0xE500000000000000;
          }
        }

        sub_1CF9E69C8();
        v24, v25, v26, v27, v28, v29, v30, v31;
      }

      else
      {
        if (v22 == 4)
        {
          if (v20 == 128)
          {
            v23 = 10;
          }

          else
          {
            v23 = 11;
          }
        }

        else if (v22 == 3)
        {
          if (v20 > 97)
          {
            if (v20 == 98)
            {
              v23 = 8;
            }

            else
            {
              v23 = 9;
            }
          }

          else if (v20 == 96)
          {
            v23 = 6;
          }

          else
          {
            v23 = 7;
          }
        }

        else if (v20 > 65)
        {
          if (v20 == 66)
          {
            v23 = 4;
          }

          else
          {
            v23 = 5;
          }
        }

        else if (v20 == 64)
        {
          v23 = 0;
        }

        else
        {
          v23 = 3;
        }

        MEMORY[0x1D386A470](v23);
      }

      v32 = sub_1CF9E8228();
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_67:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      sub_1CEFE9EB8(v42, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_67;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v40 = 1 << *(v5 + 32);
      if (v40 >= 64)
      {
        bzero((v5 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v40;
      }

      *(v5 + 16) = 0;
    }

    v3 = v41;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1CF7C86A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = sub_1CF9E7BD8();
  v9 = v8;
  if (*(v7 + 16))
  {
    v41 = v4;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = (*(v7 + 56) + 32 * v21);
      if (v6)
      {
        sub_1CEFE9EB8(v23, v42);
      }

      else
      {
        sub_1CEFD1104(v23, v42);
      }

      sub_1CF9E81D8();
      if (v22)
      {
        if (v22 == 1)
        {
          v24 = 0xE700000000000000;
        }

        else
        {
          v24 = 0xE800000000000000;
        }
      }

      else
      {
        v24 = 0xE400000000000000;
      }

      sub_1CF9E69C8();
      v24, v25, v26, v27, v28, v29, v30, v31;
      v32 = sub_1CF9E8228();
      v33 = -1 << *(v9 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v16 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v16 + 8 * v35);
          if (v39 != -1)
          {
            v17 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v34) & ~*(v16 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      sub_1CEFE9EB8(v42, (*(v9 + 56) + 32 * v17));
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v40 = 1 << *(v7 + 32);
      if (v40 >= 64)
      {
        bzero((v7 + 64), ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v11 = -1 << v40;
      }

      *(v7 + 16) = 0;
    }

    v5 = v41;
  }

  else
  {
  }

  *v5 = v9;
}

void sub_1CF7C89A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v6 = v5;
  v7 = a2;
  v8 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = sub_1CF9E7BD8();
  v10 = v9;
  if (*(v8 + 16))
  {
    v34 = v7;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(*(v8 + 56) + 8 * v22);
      sub_1CF9E81D8();
      a5(v23);
      v25 = sub_1CF9E8228();
      v26 = -1 << *(v10 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v6 = v5;
      goto LABEL_31;
    }

    v33 = 1 << *(v8 + 32);
    v6 = v5;
    if (v33 >= 64)
    {
      bzero((v8 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
  }

LABEL_31:
  *v6 = v10;
}

void sub_1CF7C8C2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BA0, &qword_1CFA07A48);
  v58 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v53 = v2;
    v54 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v55 = (v9 + 63) >> 6;
    v56 = v6;
    v12 = v6 + 64;
    v57 = v5;
    while (v11)
    {
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      if (v58)
      {
        v21 = *(v5 + 48) + 48 * v20;
        v63 = *v21;
        v62 = *(v21 + 8);
        v22 = *(v21 + 9);
        v23 = *(v21 + 16);
        v24 = *(v21 + 24);
        v25 = *(v21 + 32);
        v64 = *(v21 + 40);
        v65 = *(v21 + 41);
        v61 = *(v21 + 42);
        v26 = (*(v5 + 56) + 24 * v20);
        v59 = v26[1];
        v60 = *v26;
        v27 = v26[2];
      }

      else
      {
        v28 = *(v5 + 56);
        v29 = (*(v5 + 48) + 48 * v20);
        v30 = *v29;
        v31 = v29[1];
        *&v67[11] = *(v29 + 27);
        v66 = v30;
        *v67 = v31;
        v32 = (v28 + 24 * v20);
        v33 = *v32;
        v59 = v32[1];
        v27 = v32[2];
        v24 = *(&v31 + 1);
        v23 = v31;
        v25 = *&v67[16];
        v64 = v67[24];
        v65 = v67[25];
        v63 = v30;
        v61 = v67[26];
        v62 = BYTE8(v30);
        v22 = BYTE9(v30);
        sub_1CEFCCBDC(&v66, v68, &qword_1EC4BE1A0, &unk_1CFA17130);

        v60 = v33;
        v7 = v56;
      }

      v68[0] = v22;
      sub_1CF9E81D8();
      if (v22)
      {
        MEMORY[0x1D386A470](1);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v35 = v34;
        sub_1CF9E69C8();
        v35, v36, v37, v38, v39, v40, v41, v42;
      }

      else
      {
        MEMORY[0x1D386A470](0);
        if (v62)
        {
          if (v62 == 1)
          {
            MEMORY[0x1D386A470](1);
            MEMORY[0x1D386A4A0](v63);
          }

          else
          {
            if (v63)
            {
              v43 = 3;
            }

            else
            {
              v43 = 2;
            }

            MEMORY[0x1D386A470](v43);
          }
        }

        else
        {
          MEMORY[0x1D386A470](0);
          sub_1CF9E8208();
        }
      }

      sub_1CF9E69C8();
      MEMORY[0x1D386A470](v25);
      MEMORY[0x1D386A470](v64);
      sub_1CF9E81F8();
      if (v65 != 89)
      {
        MEMORY[0x1D386A470](qword_1CFA172B8[v65]);
      }

      if (v61 != 2)
      {
        sub_1CF9E81F8();
      }

      sub_1CF9E81F8();
      v44 = sub_1CF9E8228();
      v45 = -1 << *(v7 + 32);
      v46 = v44 & ~v45;
      v47 = v46 >> 6;
      if (((-1 << v46) & ~*(v12 + 8 * (v46 >> 6))) == 0)
      {
        v48 = 0;
        v49 = (63 - v45) >> 6;
        v14 = v65;
        while (++v47 != v49 || (v48 & 1) == 0)
        {
          v50 = v47 == v49;
          if (v47 == v49)
          {
            v47 = 0;
          }

          v48 |= v50;
          v51 = *(v12 + 8 * v47);
          if (v51 != -1)
          {
            v13 = __clz(__rbit64(~v51)) + (v47 << 6);
            goto LABEL_7;
          }
        }

LABEL_50:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v46) & ~*(v12 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
      v14 = v65;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = *(v7 + 48) + 48 * v13;
      *v15 = v63;
      *(v15 + 8) = v62;
      *(v15 + 9) = v68[0];
      *(v15 + 10) = v66;
      *(v15 + 14) = WORD2(v66);
      *(v15 + 16) = v23;
      *(v15 + 24) = v24;
      *(v15 + 32) = v25;
      *(v15 + 40) = v64;
      *(v15 + 41) = v14;
      *(v15 + 42) = v61;
      v16 = (*(v7 + 56) + 24 * v13);
      *v16 = v60;
      v16[1] = v59;
      v16[2] = v27;
      ++*(v7 + 16);
      v5 = v57;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_50;
      }

      if (v8 >= v55)
      {
        break;
      }

      v19 = v54[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v11 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v58 & 1) == 0)
    {

      v3 = v53;
      goto LABEL_48;
    }

    v52 = 1 << *(v5 + 32);
    v3 = v53;
    if (v52 >= 64)
    {
      bzero(v54, ((v52 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v54 = -1 << v52;
    }

    *(v5 + 16) = 0;
  }

LABEL_48:
  *v3 = v7;
}

void sub_1CF7C9130(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11A0, &qword_1CFA07A40);
  v52 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v50 = v2;
    v51 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = 16 * (v20 | (v8 << 6));
      v24 = *(v5 + 56);
      v25 = *(v5 + 48) + v23;
      v26 = *v25;
      v27 = *(v25 + 8);
      v28 = *(v25 + 9);
      v29 = (v24 + v23);
      v30 = v29[1];
      v53 = *v29;
      if ((v52 & 1) == 0)
      {
        sub_1CEFD0988(v26, v27, v28);
      }

      v54 = v30;
      sub_1CF9E81D8();
      if (v28)
      {
        MEMORY[0x1D386A470](1);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v32 = v31;
        sub_1CF9E69C8();
        v32, v33, v34, v35, v36, v37, v38, v39;
      }

      else
      {
        MEMORY[0x1D386A470](0);
        if (v27)
        {
          if (v27 == 1)
          {
            MEMORY[0x1D386A470](1);
            MEMORY[0x1D386A4A0](v26);
          }

          else
          {
            if (v26)
            {
              v40 = 3;
            }

            else
            {
              v40 = 2;
            }

            MEMORY[0x1D386A470](v40);
          }
        }

        else
        {
          MEMORY[0x1D386A470](0);
          sub_1CF9E8208();
        }
      }

      v41 = sub_1CF9E8228();
      v42 = -1 << *(v7 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v14 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        v16 = v54;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v14 + 8 * v44);
          if (v48 != -1)
          {
            v15 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_7;
          }
        }

LABEL_45:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v43) & ~*(v14 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      v16 = v54;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v17 = 16 * v15;
      v18 = *(v7 + 48) + v17;
      *v18 = v26;
      *(v18 + 8) = v27;
      *(v18 + 9) = v28;
      v19 = (*(v7 + 56) + v17);
      *v19 = v53;
      v19[1] = v16;
      ++*(v7 + 16);
      v5 = v51;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_43;
    }

    v49 = 1 << *(v5 + 32);
    v3 = v50;
    if (v49 >= 64)
    {
      bzero(v9, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v49;
    }

    *(v5 + 16) = 0;
  }

LABEL_43:
  *v3 = v7;
}

void sub_1CF7C949C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C49C0, &qword_1CFA17268);
  v35 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v25 = sub_1CF9E8228();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1CF7C9744(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C00, &unk_1CFA171F0);
  v43 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v41 = v2;
    v42 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v44 = *(v20 + v19);
      if ((v43 & 1) == 0)
      {
        v22 = v21;
      }

      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v24 = v23;
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v25 = sub_1CF9E8228();
      v24, v26, v27, v28, v29, v30, v31, v32;
      v33 = -1 << *(v7 + 32);
      v34 = v25 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v14 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v14 + 8 * v35);
          if (v39 != -1)
          {
            v15 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v34) & ~*(v14 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + v15) = v44;
      ++*(v7 + 16);
      v5 = v42;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v40 = 1 << *(v5 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v9, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v40;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1CF7C9A00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BF0, &qword_1CFA07A98);
  v45 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v43 = v2;
    v44 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 16 * v20);
      v47 = *v23;
      v46 = *(v23 + 8);
      if ((v45 & 1) == 0)
      {
        v24 = v22;
      }

      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v26 = v25;
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v27 = sub_1CF9E8228();
      v26, v28, v29, v30, v31, v32, v33, v34;
      v35 = -1 << *(v7 + 32);
      v36 = v27 & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v47;
      *(v16 + 8) = v46;
      ++*(v7 + 16);
      v5 = v44;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_33;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1CF7C9CD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BF8, &unk_1CFA07AA0);
  v52 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v50 = v2;
    v51 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v54 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(*(v5 + 48) + 8 * v21);
      v24 = v22 + 24 * v21;
      v26 = *v24;
      v25 = *(v24 + 8);
      v27 = *(v24 + 16);
      if ((v52 & 1) == 0)
      {

        v28 = v23;
        v29 = v26;
        v30 = v25;
      }

      v53 = v26;
      v31 = v27;
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v33 = v32;
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v34 = sub_1CF9E8228();
      v33, v35, v36, v37, v38, v39, v40, v41;
      v42 = -1 << *(v7 + 32);
      v43 = v34 & ~v42;
      v44 = v43 >> 6;
      if (((-1 << v43) & ~*(v14 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        v16 = v23;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v14 + 8 * v44);
          if (v48 != -1)
          {
            v15 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v43) & ~*(v14 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      v16 = v23;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v16;
      v17 = (*(v7 + 56) + 24 * v15);
      v12 = v54;
      *v17 = v53;
      v17[1] = v25;
      v17[2] = v31;
      ++*(v7 + 16);
      v5 = v51;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v54 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_33;
    }

    v49 = 1 << *(v5 + 32);
    v3 = v50;
    if (v49 >= 64)
    {
      bzero(v9, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v49;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1CF7C9FD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0BB8, &qword_1CFA07A60);
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = sub_1CF9E81C8();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1CF7CA248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C30, &qword_1CFA17200);
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 16 * v20;
      v22 = *(v21 + 8);
      v23 = *v21;
      v35 = *(*(v5 + 56) + v20);
      sub_1CF9E81D8();
      if (v22)
      {
        if (v22 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v23);
        }

        else
        {
          if (v23)
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          MEMORY[0x1D386A470](v24);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      v25 = sub_1CF9E8228();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v22;
      *(*(v7 + 56) + v15) = v35;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_39;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v7;
}

void sub_1CF7CA528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C10, &qword_1CFA07AB8);
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = *(v5 + 48) + v22;
      v24 = *(v5 + 56) + v22;
      v25 = *(v23 + 8);
      v26 = *v23;
      v39 = *(v24 + 8);
      v38 = *v24;
      sub_1CF9E81D8();
      if (v25)
      {
        if (v25 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v26);
        }

        else
        {
          if (v26)
          {
            v27 = 3;
          }

          else
          {
            v27 = 2;
          }

          MEMORY[0x1D386A470](v27);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      v28 = sub_1CF9E8228();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v26;
      *(v17 + 8) = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v38;
      *(v18 + 8) = v39;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_39;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v7;
}

void sub_1CF7CA84C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0C60, &qword_1CFA07AF8);
  v44 = v4;
  v6 = sub_1CF9E7BD8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v42 = v2;
    v43 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v45 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v44 & 1) == 0)
      {
        v23 = v21;
      }

      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v25 = v24;
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v26 = sub_1CF9E8228();
      v25, v27, v28, v29, v30, v31, v32, v33;
      v34 = -1 << *(v7 + 32);
      v35 = v26 & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v14 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v14 + 8 * v36);
          if (v40 != -1)
          {
            v15 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v35) & ~*(v14 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v43;
      v12 = v45;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v45 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_33;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero(v9, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1CF7CAB28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1CF9E5A58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4958, &qword_1CFA171C0);
  v41 = v4;
  v10 = sub_1CF9E7BD8();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v37 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v6;
    v42 = (v6 + 32);
    v18 = v10 + 64;
    v40 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v43 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v41)
      {
        (*v42)(v44, v26, v5);
      }

      else
      {
        (*v38)(v44, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_1CF7D5264(&qword_1EDEAB418, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v28 = sub_1CF9E6748();
      v29 = -1 << *(v11 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v42)((*(v11 + 48) + v25 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v39;
      v9 = v40;
      v16 = v43;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v13, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1CF7CAF0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v50 = a3;
  v51 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = &v45 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v48 = v10;
  v14 = sub_1CF9E7BD8();
  v15 = v14;
  if (*(v13 + 16))
  {
    v45 = v6;
    v46 = v13;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = v14 + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = *(v13 + 48) + 16 * v28;
      v31 = *v30;
      v32 = *(v30 + 8);
      v33 = *(v47 + 72);
      v34 = v29 + v33 * v28;
      if (v48)
      {
        sub_1CEFE55D0(v34, v49, v50, v51);
      }

      else
      {
        sub_1CEFCCBDC(v34, v49, v50, v51);
      }

      sub_1CF9E81D8();
      if (v32)
      {
        if (v32 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v31);
        }

        else
        {
          if (v31)
          {
            v35 = 3;
          }

          else
          {
            v35 = 2;
          }

          MEMORY[0x1D386A470](v35);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      v36 = sub_1CF9E8228();
      v37 = -1 << *(v15 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v22 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v22 + 8 * v39);
          if (v43 != -1)
          {
            v23 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v38) & ~*(v22 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = *(v15 + 48) + 16 * v23;
      *v24 = v31;
      *(v24 + 8) = v32;
      sub_1CEFE55D0(v49, *(v15 + 56) + v33 * v23, v50, v51);
      ++*(v15 + 16);
      v13 = v46;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v9 = v45;
      goto LABEL_42;
    }

    v44 = 1 << *(v13 + 32);
    v9 = v45;
    if (v44 >= 64)
    {
      bzero(v17, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_42:
  *v9 = v15;
}