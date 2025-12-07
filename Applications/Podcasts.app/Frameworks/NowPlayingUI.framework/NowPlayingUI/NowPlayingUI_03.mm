uint64_t sub_55948(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_55A48()
{
  result = qword_1C3160;
  if (!qword_1C3160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C3160);
  }

  return result;
}

uint64_t sub_55A94(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_144B6C();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_FD104(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_55B2C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_55B9C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return a1;
  }

  else
  {
  }
}

uint64_t sub_55BEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_55C0C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_55C90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_55CD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_55D54(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_144B6C();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_FD254(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_55DE8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1440BC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_55EA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1440BC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_55F6C(uint64_t a1)
{
  sub_56010(319);
  if (v1 <= 0x3F)
  {
    sub_560A4(319);
    if (v2 <= 0x3F)
    {
      sub_1440BC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_56010(uint64_t a1)
{
  if (!qword_1C31E8)
  {
    sub_14157C();
    sub_56138(&qword_1C0E90, &type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
    v1 = sub_142BAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C31E8);
    }
  }
}

void sub_560A4(uint64_t a1)
{
  if (!qword_1C31F0)
  {
    sub_14427C();
    sub_56138(&qword_1C0E88, &type metadata accessor for QueueViewModel, &protocol conformance descriptor for QueueViewModel);
    v1 = sub_142BAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C31F0);
    }
  }
}

uint64_t sub_56138(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_5619C()
{
  v0 = [objc_allocWithZone(AVTimeFormatter) init];
  result = [v0 setStyle:2];
  qword_1C3170 = v0;
  return result;
}

id sub_561EC()
{
  v0 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v0 setUnitsStyle:1];
  result = [v0 setAllowedUnits:96];
  qword_1C3178 = v0;
  return result;
}

uint64_t sub_56250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a1;
  v83 = a2;
  v84 = type metadata accessor for ChapterText(0);
  __chkstk_darwin(v84);
  v79 = v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3230, &qword_14D5F8);
  __chkstk_darwin(v81);
  v82 = v63 - v3;
  v4 = type metadata accessor for ChapterCell(0);
  v65 = *(v4 - 8);
  __chkstk_darwin(v4);
  v66 = v5;
  v67 = v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_14351C();
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v68 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = v63 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3238, &qword_14D600);
  v73 = *(v80 - 8);
  __chkstk_darwin(v80);
  v71 = v63 - v9;
  v10 = sub_1440BC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v64 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3240, &qword_14D608);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = v63 - v15;
  v17 = sub_14416C();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3248, &qword_14D610);
  __chkstk_darwin(v21 - 8);
  v74 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v63 - v24;
  v27 = __chkstk_darwin(v26);
  v29 = v63 - v28;
  v78 = v4;
  v30 = *(v4 + 24);
  v31 = *(v11 + 16);
  v32 = v85;
  v76 = v30;
  v77 = v11 + 16;
  v75 = v31;
  (v31)(v63 - v28, v85 + v30, v10, v27);
  (*(v11 + 56))(v29, 0, 1, v10);
  v63[1] = *(v32 + 24);
  sub_14423C();
  sub_14405C();
  (*(v18 + 8))(v20, v17);
  v33 = *(v14 + 56);
  sub_1D19C(v29, v16, &qword_1C3248, &qword_14D610);
  sub_1D19C(v25, &v16[v33], &qword_1C3248, &qword_14D610);
  v34 = *(v11 + 48);
  if (v34(v16, 1, v10) != 1)
  {
    v36 = v74;
    sub_1D19C(v16, v74, &qword_1C3248, &qword_14D610);
    if (v34(&v16[v33], 1, v10) != 1)
    {
      v49 = &v16[v33];
      v50 = v64;
      (*(v11 + 32))(v64, v49, v10);
      sub_56138(&qword_1C3280, &type metadata accessor for QueueModel.Chapter, &protocol conformance descriptor for QueueModel.Chapter);
      v51 = sub_14486C();
      v52 = *(v11 + 8);
      v52(v50, v10);
      sub_15340(v25, &qword_1C3248, &qword_14D610);
      sub_15340(v29, &qword_1C3248, &qword_14D610);
      v52(v36, v10);
      sub_15340(v16, &qword_1C3248, &qword_14D610);
      v35 = v85;
      if (v51)
      {
        goto LABEL_9;
      }

LABEL_7:
      v37 = v79;
      v38 = *(v35 + *(v78 + 28));
      v39 = v84;
      v75(&v79[*(v84 + 20)], v35 + v76, v10);
      v40 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
      [v40 pointSize];
      v42 = v41;

      *v37 = v38;
      *(v37 + v39[6]) = 0;
      v43 = v37 + v39[7];
      *v43 = 0;
      v43[8] = 1;
      v44 = v39[8];
      *(v37 + v44) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250, &qword_156190);
      swift_storeEnumTagMultiPayload();
      v45 = v39[9];
      *(v37 + v45) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70, &qword_14AC80);
      swift_storeEnumTagMultiPayload();
      v46 = (v37 + v39[10]);
      v86 = v42 * 3.5;
      sub_143CAC();
      v47 = v88;
      *v46 = v87;
      v46[1] = v47;
      sub_58524(v37, v82, type metadata accessor for ChapterText);
      swift_storeEnumTagMultiPayload();
      sub_583EC();
      sub_56138(&qword_1C3270, type metadata accessor for ChapterText, &unk_14D6D8);
      sub_14329C();
      return sub_59994(v37, type metadata accessor for ChapterText);
    }

    sub_15340(v25, &qword_1C3248, &qword_14D610);
    sub_15340(v29, &qword_1C3248, &qword_14D610);
    (*(v11 + 8))(v36, v10);
LABEL_6:
    sub_15340(v16, &qword_1C3240, &qword_14D608);
    v35 = v85;
    goto LABEL_7;
  }

  sub_15340(v25, &qword_1C3248, &qword_14D610);
  sub_15340(v29, &qword_1C3248, &qword_14D610);
  if (v34(&v16[v33], 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_15340(v16, &qword_1C3248, &qword_14D610);
  v35 = v85;
LABEL_9:
  if ((sub_14154C() & 1) == 0)
  {
    sub_14422C();
  }

  v53 = v69;
  sub_14350C();
  v54 = v67;
  sub_58524(v35, v67, type metadata accessor for ChapterCell);
  v55 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v56 = swift_allocObject();
  sub_59690(v54, v56 + v55, type metadata accessor for ChapterCell);
  v57 = v70;
  v58 = v72;
  (*(v70 + 16))(v68, v53, v72);
  v59 = swift_allocObject();
  *(v59 + 16) = sub_5867C;
  *(v59 + 24) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3268, &qword_14D688);
  sub_56138(&qword_1C3278, &type metadata accessor for AnimationTimelineSchedule, &protocol conformance descriptor for AnimationTimelineSchedule);
  sub_58470();
  v60 = v71;
  sub_142A5C();
  (*(v57 + 8))(v53, v58);
  v61 = v73;
  v62 = v80;
  (*(v73 + 16))(v82, v60, v80);
  swift_storeEnumTagMultiPayload();
  sub_583EC();
  sub_56138(&qword_1C3270, type metadata accessor for ChapterText, &unk_14D6D8);
  sub_14329C();
  return (*(v61 + 8))(v60, v62);
}

uint64_t sub_56E14@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3298, &unk_14D6A0);
  __chkstk_darwin(v3);
  v5 = &v41 - v4;
  v6 = type metadata accessor for ChapterText(0);
  __chkstk_darwin(v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_140ABC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3288, &qword_14D690);
  sub_142A4C();
  sub_14152C();
  v14 = v13;
  (*(v10 + 8))(v12, v9);
  v15 = type metadata accessor for ChapterCell(0);
  v16 = *(v15 + 24);
  sub_1440AC();
  if (v17 > v14 || (sub_14409C(), v14 >= v18))
  {
    v31 = *(a1 + *(v15 + 28));
    v32 = v6[5];
    v33 = sub_1440BC();
    (*(*(v33 - 8) + 16))(&v8[v32], a1 + v16, v33);
    v34 = [objc_opt_self() preferredFontForTextStyle:{UIFontTextStyleBody, v41}];
    [v34 pointSize];
    v36 = v35;

    *v8 = v31;
    v8[v6[6]] = 0;
    v37 = &v8[v6[7]];
    *v37 = 0;
    v37[8] = 1;
    v38 = v6[8];
    *&v8[v38] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250, &qword_156190);
    swift_storeEnumTagMultiPayload();
    v39 = v6[9];
    *&v8[v39] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70, &qword_14AC80);
    swift_storeEnumTagMultiPayload();
    v30 = v6[10];
    v42 = v36 * 3.5;
    sub_143CAC();
    goto LABEL_8;
  }

  v19 = *(a1 + *(v15 + 28));
  v20 = v6[5];
  v21 = sub_1440BC();
  result = (*(*(v21 - 8) + 16))(&v8[v20], a1 + v16, v21);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v14 < 9.22337204e18)
  {
    v23 = v14;
    v24 = [objc_opt_self() preferredFontForTextStyle:{UIFontTextStyleBody, v41}];
    [v24 pointSize];
    v26 = v25;

    *v8 = v19;
    v8[v6[6]] = 1;
    v27 = &v8[v6[7]];
    *v27 = v23;
    v27[8] = 0;
    v28 = v6[8];
    *&v8[v28] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250, &qword_156190);
    swift_storeEnumTagMultiPayload();
    v29 = v6[9];
    *&v8[v29] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70, &qword_14AC80);
    swift_storeEnumTagMultiPayload();
    v30 = v6[10];
    v42 = v26 * 3.5;
    sub_143CAC();
LABEL_8:
    v40 = v44;
    *&v8[v30] = v43;
    *&v8[v30 + 8] = v40;
    sub_58524(v8, v5, type metadata accessor for ChapterText);
    swift_storeEnumTagMultiPayload();
    sub_56138(&qword_1C3270, type metadata accessor for ChapterText, &unk_14D6D8);
    sub_14329C();
    return sub_59994(v8, type metadata accessor for ChapterText);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_5737C@<X0>(uint64_t a1@<X8>)
{
  sub_56250(v1, a1);
  v3 = sub_14366C();
  sub_14290C();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3228, &qword_14D5F0);
  v13 = a1 + *(result + 36);
  *v13 = v3;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

uint64_t sub_57420@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_143F3C();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v40 = &v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3390, &qword_14D728);
  __chkstk_darwin(v7 - 8);
  v9 = &v38 - v8;
  v10 = sub_14317C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v38 - v15;
  __chkstk_darwin(v17);
  v19 = &v38 - v18;
  v20 = type metadata accessor for ChapterText(0);
  sub_FA518(v19);
  v21 = *(v1 + *(v20 + 24));
  (*(v11 + 32))(v9, v19, v10);
  v22 = (*(v11 + 88))(v9, v10);
  v23 = enum case for ColorSchemeContrast.standard(_:);
  if (v21 == 1)
  {
    if (v22 == enum case for ColorSchemeContrast.standard(_:))
    {
      v24 = sub_143BFC();
    }

    else
    {
      v24 = sub_143B9C();
      (*(v11 + 8))(v9, v10);
    }

    goto LABEL_12;
  }

  if (v22 == enum case for ColorSchemeContrast.standard(_:))
  {
    v38 = sub_143BAC();
  }

  else
  {
    v38 = sub_143BFC();
    (*(v11 + 8))(v9, v10);
  }

  sub_FA518(v16);
  (*(v11 + 104))(v13, v23, v10);
  v25 = sub_14316C();
  v26 = *(v11 + 8);
  v26(v13, v10);
  v26(v16, v10);
  if ((v25 & 1) == 0)
  {
    v24 = v38;
LABEL_12:
    v27 = &enum case for BlendMode.normal(_:);
    goto LABEL_13;
  }

  v27 = &enum case for BlendMode.plusLighter(_:);
  v24 = v38;
LABEL_13:
  v29 = v42;
  v28 = v43;
  v30 = v39;
  (*(v42 + 104))(v39, *v27, v43);
  v31 = *(v29 + 32);
  v32 = v40;
  v31(v40, v30, v28);
  v33 = sub_14305C();
  v34 = v41;
  *v41 = v33;
  v34[1] = 0;
  *(v34 + 16) = 1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3398, &qword_14D730);
  sub_57850(v2, v34 + *(v35 + 44));
  *(v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C33A0, &qword_14D738) + 36)) = v24;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C33A8, &qword_14D740);
  return (v31)(v34 + *(v36 + 36), v32, v28);
}

uint64_t sub_57850@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ChapterText(0);
  v69 = *(v4 - 8);
  __chkstk_darwin(v4);
  v70 = v5;
  v71 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_142BEC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v72 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C33B0, &qword_14D748);
  __chkstk_darwin(v9 - 8);
  v11 = v58 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C33B8, &qword_14D750);
  __chkstk_darwin(v12);
  v14 = v58 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C33C0, &unk_14D758);
  v68 = *(v15 - 8);
  __chkstk_darwin(v15);
  __chkstk_darwin(v16);
  v21 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
    v59 = v18;
    v60 = v17;
    v58[1] = sub_144C4C();
    v57 = sub_1435DC();
    sub_1423BC();
  }

  else
  {
    v65 = a2;
    v66 = v7;
    v75 = v58 - v19;
    v76 = v20;
    v67 = v6;
    v7 = &v89;
    v89 = v21;
    v22 = sub_14538C();
    v73 = v23;
    v74 = v22;
    sub_143EBC();
    sub_142A9C();
    v89 = sub_14408C();
    v90 = v24;
    sub_9CCC();
    v25 = sub_1437EC();
    v62 = v26;
    v63 = v25;
    v61 = v27;
    v64 = v28;
    sub_57F90(a1);
    v29 = (a1 + *(v4 + 40));
    v30 = *v29;
    v31 = v29[1];
    v89 = v30;
    v90 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8, &qword_14A850);
    sub_143CBC();
    sub_143ECC();
  }

  sub_142D4C();
  sub_59444(v11, v14);
  v32 = &v14[*(v12 + 36)];
  v33 = *(v7 + 5);
  *(v32 + 4) = *(v7 + 4);
  *(v32 + 5) = v33;
  *(v32 + 6) = *(v7 + 6);
  v34 = *(v7 + 1);
  *v32 = *v7;
  *(v32 + 1) = v34;
  v35 = *(v7 + 3);
  *(v32 + 2) = *(v7 + 2);
  *(v32 + 3) = v35;
  v36 = v72;
  sub_FA98C(v72);
  v37 = v71;
  sub_58524(a1, v71, type metadata accessor for ChapterText);
  v38 = (*(v69 + 80) + 16) & ~*(v69 + 80);
  v39 = swift_allocObject();
  sub_59690(v37, v39 + v38, type metadata accessor for ChapterText);
  sub_59758();
  sub_56138(&qword_1C33F8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v40 = v75;
  v41 = v67;
  sub_143B6C();

  (v66[1])(v36, v41);
  sub_15340(v14, &qword_1C33B8, &qword_14D750);
  v42 = v68;
  v43 = *(v68 + 16);
  v43(v76, v40, v15);
  v44 = v15;
  *&v77 = v74;
  *(&v77 + 1) = v73;
  LOBYTE(v78) = 0;
  *(&v78 + 1) = v94[0];
  DWORD1(v78) = *(v94 + 3);
  *(&v78 + 1) = _swiftEmptyArrayStorage;
  v45 = v92;
  v80 = v92;
  v79 = v91;
  v46 = v93;
  v81 = v93;
  v48 = v64;
  v47 = v65;
  *(v65 + 32) = v91;
  *(v47 + 48) = v45;
  *(v47 + 64) = v46;
  v49 = v78;
  *v47 = v77;
  *(v47 + 16) = v49;
  v50 = v62;
  v51 = v63;
  *(v47 + 80) = v63;
  *(v47 + 88) = v50;
  v52 = v61 & 1;
  *(v47 + 96) = v61 & 1;
  *(v47 + 104) = v48;
  *(v47 + 112) = 0;
  *(v47 + 120) = 1;
  v53 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3400, &qword_14D770) + 80);
  v54 = v76;
  v43(v53, v76, v44);
  sub_1D19C(&v77, v82, &qword_1C3408, &qword_14D778);
  sub_63AC(v51, v50, v52);
  v55 = *(v42 + 8);

  v55(v75, v44);
  v55(v54, v44);
  sub_1B4AC(v51, v50, v52);

  v82[0] = v74;
  v82[1] = v73;
  v83 = 0;
  *v84 = v94[0];
  *&v84[3] = *(v94 + 3);
  v85 = _swiftEmptyArrayStorage;
  v86 = v91;
  v87 = v92;
  v88 = v93;
  return sub_15340(v82, &qword_1C3408, &qword_14D778);
}

uint64_t sub_57F90(uint64_t a1)
{
  v2 = type metadata accessor for InactiveChapterTimeRemainingText(0);
  __chkstk_darwin(v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3410, &unk_14D780);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  active = type metadata accessor for ActiveChapterTimeRemainingText(0);
  __chkstk_darwin(active);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChapterText(0);
  if (*(a1 + v11[6]) == 1 && (v12 = (a1 + v11[7]), (v12[1] & 1) == 0))
  {
    v17 = *v12;
    v18 = v11[5];
    v19 = *(active + 20);
    v20 = sub_1440BC();
    (*(*(v20 - 8) + 16))(&v10[v19], a1 + v18, v20);
    *v10 = v17;
    sub_58524(v10, v7, type metadata accessor for ActiveChapterTimeRemainingText);
    swift_storeEnumTagMultiPayload();
    sub_56138(&qword_1C33E8, type metadata accessor for ActiveChapterTimeRemainingText, &unk_14D840);
    sub_56138(&qword_1C33F0, type metadata accessor for InactiveChapterTimeRemainingText, &unk_14D7F0);
    sub_14329C();
    v15 = type metadata accessor for ActiveChapterTimeRemainingText;
    v16 = v10;
  }

  else
  {
    v13 = v11[5];
    v14 = sub_1440BC();
    (*(*(v14 - 8) + 16))(v4, a1 + v13, v14);
    sub_58524(v4, v7, type metadata accessor for InactiveChapterTimeRemainingText);
    swift_storeEnumTagMultiPayload();
    sub_56138(&qword_1C33E8, type metadata accessor for ActiveChapterTimeRemainingText, &unk_14D840);
    sub_56138(&qword_1C33F0, type metadata accessor for InactiveChapterTimeRemainingText, &unk_14D7F0);
    sub_14329C();
    v15 = type metadata accessor for InactiveChapterTimeRemainingText;
    v16 = v4;
  }

  return sub_59994(v16, v15);
}

uint64_t sub_58320(uint64_t a1)
{
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v1 pointSize];

  type metadata accessor for ChapterText(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8, &qword_14A850);
  return sub_143CCC();
}

unint64_t sub_583EC()
{
  result = qword_1C3258;
  if (!qword_1C3258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3238, &qword_14D600);
    sub_58470();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3258);
  }

  return result;
}

unint64_t sub_58470()
{
  result = qword_1C3260;
  if (!qword_1C3260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3268, &qword_14D688);
    sub_56138(&qword_1C3270, type metadata accessor for ChapterText, &unk_14D6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3260);
  }

  return result;
}

uint64_t sub_58524(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5858C()
{
  v1 = (type metadata accessor for ChapterCell(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_1440BC();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_5867C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ChapterCell(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_56E14(v4, a1);
}

void sub_58700(uint64_t a2@<X8>)
{
  if (qword_1BFF30 != -1)
  {
    swift_once();
  }

  v4 = qword_1C3170;
  sub_14409C();
  v6 = [v4 stringFromSeconds:v5 - *v2];
  sub_1448DC();

  sub_9CCC();
  v7 = sub_1437EC();
  v9 = v8;
  LOBYTE(v4) = v10;
  v11 = sub_14379C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_1B4AC(v7, v9, v4 & 1);

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v17;
}

id sub_58840@<X0>(uint64_t a2@<X8>)
{
  sub_14409C();
  v4 = v3;
  sub_1440AC();
  v6 = v4 - v5;
  if (v6 >= 60.0)
  {
    if (qword_1BFF38 != -1)
    {
      swift_once();
    }

    result = [qword_1C3178 stringFromTimeInterval:v6];
    if (result)
    {
      v37 = a2;
      v21 = result;
      sub_1448DC();

      sub_9CCC();
      v22 = sub_1437EC();
      v24 = v23;
      v26 = v25;
      v27 = AXDurationStringForDurationWithSeconds();
      if (v27)
      {
        v28 = v27;
        v29 = sub_1448DC();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0xE000000000000000;
      }

      *&v39 = v29;
      *(&v39 + 1) = v31;
      v32 = sub_1437EC();
      v34 = v33;
      v36 = v35;
      sub_1437AC();
      sub_1B4AC(v32, v34, v36 & 1);

      sub_1B4AC(v22, v24, v26 & 1);

      result = sub_14329C();
      v18 = v39;
      v19 = v40;
      v20 = v41;
      a2 = v37;
    }

    else
    {
      v18 = 0uLL;
      v20 = -1;
      v19 = 0uLL;
    }
  }

  else
  {
    sub_1430EC();
    v7 = sub_1437DC();
    v9 = v8;
    v11 = v10;
    sub_1430EC();
    v12 = sub_1437DC();
    v14 = v13;
    v16 = v15;
    sub_1437AC();
    sub_1B4AC(v12, v14, v16 & 1);

    sub_1B4AC(v7, v9, v11 & 1);

    result = sub_14329C();
    v18 = v38;
    v19 = v40;
    v20 = v41;
  }

  *a2 = v18;
  *(a2 + 16) = v19;
  *(a2 + 32) = v20;
  return result;
}

uint64_t sub_58BC0(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3288, &qword_14D690);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3290, &qword_14D698);
  v11 = *(v9 - 8);
  result = v9 - 8;
  if (*(v11 + 64) == v6)
  {
    (*(v5 + 16))(v8, a1, v4);
    a2(v8);
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_58D08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_58D5C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1440BC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C32A0, &unk_14DCB0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F78, &qword_14D6B0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[9];
    goto LABEL_7;
  }

  v14 = *(a1 + a3[10] + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_58EE8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1440BC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C32A0, &unk_14DCB0);
    if (*(*(v12 - 8) + 84) == a3)
    {
      v9 = v12;
      v10 = *(v12 - 8);
      v11 = a4[8];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F78, &qword_14D6B0);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[10] + 8) = a2;
        return result;
      }

      v9 = result;
      v10 = *(result - 8);
      v11 = a4[9];
    }
  }

  v14 = *(v10 + 56);

  return v14(a1 + v11, a2, a2, v9);
}

void sub_59050(uint64_t a1)
{
  sub_1440BC();
  if (v1 <= 0x3F)
  {
    sub_59208(319, &qword_1C3310, &type metadata for Int, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_591B4(319, &qword_1C3318, &type metadata accessor for DynamicTypeSize);
      if (v3 <= 0x3F)
      {
        sub_591B4(319, &unk_1C0FF0, &type metadata accessor for ColorSchemeContrast);
        if (v4 <= 0x3F)
        {
          sub_59208(319, &unk_1C3320, &type metadata for CGFloat, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_591B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_142A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_59208(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_5925C()
{
  result = qword_1C3368;
  if (!qword_1C3368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3228, &qword_14D5F0);
    sub_592E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3368);
  }

  return result;
}

unint64_t sub_592E8()
{
  result = qword_1C3370;
  if (!qword_1C3370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3378, &qword_14D6C8);
    sub_5936C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3370);
  }

  return result;
}

unint64_t sub_5936C()
{
  result = qword_1C3380;
  if (!qword_1C3380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3388, &qword_14D6D0);
    sub_583EC();
    sub_56138(&qword_1C3270, type metadata accessor for ChapterText, &unk_14D6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3380);
  }

  return result;
}

uint64_t sub_59444(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C33B0, &qword_14D748);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_594B4()
{
  v1 = type metadata accessor for ChapterText(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = v1[5];
  v7 = sub_1440BC();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250, &qword_156190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_142BEC();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70, &qword_14AC80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_14317C();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_59690(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_596F8()
{
  v1 = *(type metadata accessor for ChapterText(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_58320(v2);
}

unint64_t sub_59758()
{
  result = qword_1C33C8;
  if (!qword_1C33C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C33B8, &qword_14D750);
    sub_597E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C33C8);
  }

  return result;
}

unint64_t sub_597E4()
{
  result = qword_1C33D0;
  if (!qword_1C33D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C33B0, &qword_14D748);
    sub_59868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C33D0);
  }

  return result;
}

unint64_t sub_59868()
{
  result = qword_1C33D8;
  if (!qword_1C33D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C33E0, &qword_14D768);
    sub_56138(&qword_1C33E8, type metadata accessor for ActiveChapterTimeRemainingText, &unk_14D840);
    sub_56138(&qword_1C33F0, type metadata accessor for InactiveChapterTimeRemainingText, &unk_14D7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C33D8);
  }

  return result;
}

uint64_t sub_59994(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_59A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1440BC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_59A88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1440BC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_59AF8(uint64_t a1)
{
  result = sub_1440BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_59B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1440BC();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_59C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1440BC();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_59C80(uint64_t a1)
{
  result = sub_1440BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_59D00()
{
  result = qword_1C3538;
  if (!qword_1C3538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C33A8, &qword_14D740);
    sub_59D8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3538);
  }

  return result;
}

unint64_t sub_59D8C()
{
  result = qword_1C3540;
  if (!qword_1C3540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C33A0, &qword_14D738);
    sub_1D4A4(&qword_1C3548, &qword_1C3550, &qword_14D7E0, &protocol conformance descriptor for HStack<A>);
    sub_1D4A4(&qword_1C3558, &qword_1C3560, &qword_14D7E8, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3540);
  }

  return result;
}

unint64_t sub_59EB8()
{
  result = qword_1C3568;
  if (!qword_1C3568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3570, &qword_14D890);
    sub_59F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3568);
  }

  return result;
}

unint64_t sub_59F3C()
{
  result = qword_1C3578;
  if (!qword_1C3578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3580, qword_14D898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3578);
  }

  return result;
}

id sub_59FB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C15F8, &unk_14C760);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_140C4C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D19C(a1, v4, &unk_1C15F8, &unk_14C760);
  v9 = *(v6 + 48);
  if (v9(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    return sub_5A468(v8);
  }

  result = [objc_opt_self() defaultPodcastArtwork];
  if (result)
  {
    *v8 = result;
    (*(v6 + 104))(v8, enum case for NowPlayingArtwork.Data.image(_:), v5);
    if (v9(v4, 1, v5) != 1)
    {
      sub_15340(v4, &unk_1C15F8, &unk_14C760);
    }

    return sub_5A468(v8);
  }

  __break(1u);
  return result;
}

uint64_t sub_5A1AC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_5BF0C(&qword_1C36A8, type metadata accessor for NowPlayingArtworkViewModel, &unk_14D978);
  sub_141A4C();

  v3 = OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel__artworkData;
  swift_beginAccess();
  v4 = sub_140C4C();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_5A2A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_5BF0C(&qword_1C36A8, type metadata accessor for NowPlayingArtworkViewModel, &unk_14D978);
  sub_141A4C();

  v4 = OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel__artworkData;
  swift_beginAccess();
  v5 = sub_140C4C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_5A39C(uint64_t a1)
{
  v2 = sub_140C4C();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_5A468(v5);
}

uint64_t sub_5A468(uint64_t a1)
{
  v2 = v1;
  v4 = sub_140C4C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel__artworkData;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_5BF0C(&qword_1C2380, &type metadata accessor for NowPlayingArtwork.Data, &protocol conformance descriptor for NowPlayingArtwork.Data);
  v9 = sub_14486C();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_5BF0C(&qword_1C36A8, type metadata accessor for NowPlayingArtworkViewModel, &unk_14D978);
    sub_141A3C();
  }

  return (v10)(a1, v4);
}

uint64_t sub_5A6E8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel__artworkData;
  swift_beginAccess();
  v5 = sub_140C4C();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_5A784()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel__artworkData;
  v2 = sub_140C4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_15340(v0 + OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel_trace, &qword_1C1770, &qword_14B940);
  v3 = OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel_placement;
  v4 = sub_140C7C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel___observationRegistrar;
  v6 = sub_141A8C();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NowPlayingArtworkViewModel(uint64_t a1)
{
  result = qword_1C35C8;
  if (!qword_1C35C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5A914(uint64_t a1)
{
  result = sub_140C4C();
  if (v2 <= 0x3F)
  {
    result = sub_140C7C();
    if (v3 <= 0x3F)
    {
      result = sub_141A8C();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_5AA58(void *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1240, &unk_14AEE0);
  __chkstk_darwin(v3 - 8);
  v68 = &v60 - v4;
  v63 = sub_142FFC();
  v62 = *(v63 - 8);
  __chkstk_darwin(v63);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1248, &qword_14DA00);
  __chkstk_darwin(v6 - 8);
  v71 = &v60 - v7;
  v75 = sub_14460C();
  v67 = *(v75 - 8);
  __chkstk_darwin(v75);
  v66 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3688, &qword_14DA08);
  v70 = *(v81 - 8);
  __chkstk_darwin(v81);
  v69 = &v60 - v9;
  v65 = sub_141DEC();
  v64 = *(v65 - 8);
  __chkstk_darwin(v65);
  v72 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3690, &qword_14DA10);
  __chkstk_darwin(v78);
  v77 = (&v60 - v11);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3698, &qword_14DA18);
  __chkstk_darwin(v73);
  v74 = (&v60 - v12);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C36A0, &qword_14DA20);
  __chkstk_darwin(v79);
  v76 = &v60 - v13;
  v14 = sub_143C3C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_140C4C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = (&v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = a1;
  v23 = *a1;
  swift_getKeyPath();
  *&v82 = v23;
  sub_5BF0C(&qword_1C36A8, type metadata accessor for NowPlayingArtworkViewModel, &unk_14D978);
  sub_141A4C();

  v24 = OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel__artworkData;
  swift_beginAccess();
  (*(v19 + 16))(v21, v23 + v24, v18);
  v25 = (*(v19 + 88))(v21, v18);
  if (v25 == enum case for NowPlayingArtwork.Data.image(_:))
  {
    (*(v19 + 96))(v21, v18);
    v26 = *v21;
    sub_143C1C();
    (*(v15 + 104))(v17, enum case for Image.ResizingMode.stretch(_:), v14);
    v27 = sub_143C5C();

    (*(v15 + 8))(v17, v14);
    *v74 = v27;
    swift_storeEnumTagMultiPayload();
    v28 = sub_5BF0C(&qword_1C11D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);

    *&v82 = v75;
    *(&v82 + 1) = v28;
    swift_getOpaqueTypeConformance2();
    v29 = v76;
    sub_14329C();
    sub_5BDC0(v29, v77);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C36B8, &unk_14DA50);
    sub_5BBE4();
    sub_5BCD0();
    sub_14329C();

    sub_15340(v29, &qword_1C36A0, &qword_14DA20);
    return;
  }

  v30 = v81;
  if (v25 == enum case for NowPlayingArtwork.Data.model(_:))
  {
    (*(v19 + 96))(v21, v18);
    v31 = v72;
    sub_2C168(v21, v72);
    v32 = v31;
    v33 = v71;
    sub_5BD5C(v32, v71);
    (*(v64 + 56))(v33, 0, 1, v65);
    sub_140C5C();
    sub_140C5C();
    v85 = *(v22 + 1);
    LOWORD(v86) = *(v22 + 16);
    if (BYTE1(v86) == 1)
    {
      v34 = v86;
      v35 = *&v85;
    }

    else
    {

      sub_144C4C();
      v46 = sub_1435DC();
      sub_1423BC();

      v47 = v61;
      sub_142FEC();
      swift_getAtKeyPath();
      sub_15340(&v85, &qword_1C36D0, &qword_14DA60);
      (*(v62 + 8))(v47, v63);
      v35 = *&v82;
      v34 = v83;
    }

    v48 = v77;
    if ((v34 & 1) != 0 || v35 <= 0.0)
    {
      sub_140C5C();
    }

    v49 = v75;
    v50 = sub_14214C();
    (*(*(v50 - 8) + 56))(v68, 1, 1, v50);
    sub_1D19C(v23 + OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel_trace, &v82, &qword_1C1770, &qword_14B940);
    sub_143E9C();
    v51 = v66;
    sub_1445FC();
    v52 = sub_5BF0C(&qword_1C11D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    v53 = v69;
    sub_14383C();
    (*(v67 + 8))(v51, v49);
    v54 = v70;
    (*(v70 + 16))(v74, v53, v30);
    swift_storeEnumTagMultiPayload();
    *&v82 = v49;
    *(&v82 + 1) = v52;
    swift_getOpaqueTypeConformance2();
    v55 = v76;
    sub_14329C();
    sub_5BDC0(v55, v48);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C36B8, &unk_14DA50);
    sub_5BBE4();
    sub_5BCD0();
    sub_14329C();
    sub_15340(v55, &qword_1C36A0, &qword_14DA20);
    (*(v54 + 8))(v53, v30);
    sub_2C1CC(v72);
  }

  else
  {
    if (v25 == enum case for NowPlayingArtwork.Data.catalog(_:))
    {
      (*(v19 + 96))(v21, v18);
      v36 = *v21;
      v37 = [objc_opt_self() defaultPodcastArtwork];
      if (v37)
      {
        v38 = v37;
        *&v85 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C15E8, &unk_14B880);
        sub_143CAC();
        v39 = v82;
        *&v85 = v38;
        *(&v85 + 1) = v36;
        v86 = v82;
        v87 = 0;
        sub_5BB90();
        v40 = v38;
        v41 = v36;
        v42 = v39;

        sub_14329C();
        v43 = v84;
        v44 = v83;
        v45 = v77;
        *v77 = v82;
        v45[1] = v44;
        *(v45 + 32) = v43;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C36B8, &unk_14DA50);
        sub_5BBE4();
        sub_5BCD0();
        sub_14329C();

        return;
      }

      __break(1u);
    }

    else if ([objc_opt_self() defaultPodcastArtwork])
    {
      sub_143C1C();
      (*(v15 + 104))(v17, enum case for Image.ResizingMode.stretch(_:), v14);
      v56 = sub_143C5C();

      (*(v15 + 8))(v17, v14);
      v85 = v56;
      v86 = 0uLL;
      v87 = 1;
      sub_5BB90();

      sub_14329C();
      v57 = v84;
      v58 = v83;
      v59 = v77;
      *v77 = v82;
      v59[1] = v58;
      *(v59 + 32) = v57;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C36B8, &unk_14DA50);
      sub_5BBE4();
      sub_5BCD0();
      sub_14329C();

      (*(v19 + 8))(v21, v18);
      return;
    }

    __break(1u);
  }
}

uint64_t sub_5B91C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3668, &qword_14D9E8);
  __chkstk_darwin(v1);
  v3 = (v12 - v2);
  v4 = *(v0 + 16);
  v12[0] = *v0;
  v12[1] = v4;
  v13 = *(v0 + 32);
  v5 = sub_143BCC();
  v6 = sub_143EAC();
  v8 = v7;
  v9 = v3 + *(v1 + 36);
  sub_5AA58(v12, v9);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3670, &unk_14D9F0) + 36));
  *v10 = v6;
  v10[1] = v8;
  *v3 = v5;
  sub_1430EC();
  sub_5BA98();
  sub_1439DC();

  return sub_15340(v3, &qword_1C3668, &qword_14D9E8);
}

unint64_t sub_5BA98()
{
  result = qword_1C3678;
  if (!qword_1C3678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3668, &qword_14D9E8);
    sub_5BB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3678);
  }

  return result;
}

unint64_t sub_5BB24()
{
  result = qword_1C3680;
  if (!qword_1C3680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3670, &unk_14D9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3680);
  }

  return result;
}

unint64_t sub_5BB90()
{
  result = qword_1C36B0;
  if (!qword_1C36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C36B0);
  }

  return result;
}

unint64_t sub_5BBE4()
{
  result = qword_1C36C0;
  if (!qword_1C36C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C36A0, &qword_14DA20);
    sub_14460C();
    sub_5BF0C(&qword_1C11D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C36C0);
  }

  return result;
}

unint64_t sub_5BCD0()
{
  result = qword_1C36C8;
  if (!qword_1C36C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C36B8, &unk_14DA50);
    sub_5BB90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C36C8);
  }

  return result;
}

uint64_t sub_5BD5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_141DEC();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_5BDC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C36A0, &qword_14DA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_5BE50()
{
  result = qword_1C36D8;
  if (!qword_1C36D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1C36E0, &qword_14DA68);
    sub_5BA98();
    sub_5BF0C(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C36D8);
  }

  return result;
}

uint64_t sub_5BF0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_5BF5C(uint64_t a1)
{
  sub_5C91C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for NowPlayingPlaybackControlsViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_140D5C();
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_1421BC();
          if (v5 <= 0x3F)
          {
            sub_5C96C(319);
            if (v6 <= 0x3F)
            {
              sub_62BCC(319, &qword_1C3778, &type metadata accessor for ScenePhase);
              if (v7 <= 0x3F)
              {
                sub_62BCC(319, &unk_1C0FF0, &type metadata accessor for ColorSchemeContrast);
                if (v8 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_5C0B8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = sub_140D5C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v32 = *(a3 + 16);
  v33 = v5;
  v8 = *(v32 - 8);
  v9 = *(v8 + 84);
  if (v7 <= v9)
  {
    v10 = *(v8 + 84);
  }

  else
  {
    v10 = *(v6 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v34 = *(sub_14292C() - 8);
  v12 = *(v34 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  v35 = v12;
  v13 = *(sub_14317C() - 8);
  if (*(v13 + 64) <= 8uLL)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v13 + 64);
  }

  v15 = *(v6 + 80);
  v16 = *(v6 + 64);
  v17 = *(v8 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v11)
  {
    goto LABEL_34;
  }

  v18 = *(v34 + 80) & 0xF8 | 7;
  v19 = *(v13 + 80) & 0xF8 | 7;
  v20 = v14 + ((v35 + v19 + ((v18 + ((((((((*(v8 + 64) + ((v16 + ((v15 + 24) & ~v15) + v17) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v18) + 1) & ~v19) + 1;
  v21 = 8 * v20;
  if (v20 <= 3)
  {
    v24 = ((a2 - v11 + ~(-1 << v21)) >> v21) + 1;
    if (HIWORD(v24))
    {
      v22 = *(a1 + v20);
      if (!v22)
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v24 > 0xFF)
    {
      v22 = *(a1 + v20);
      if (!*(a1 + v20))
      {
        goto LABEL_34;
      }

      goto LABEL_23;
    }

    if (v24 < 2)
    {
LABEL_34:
      v26 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {
        v28 = (v26 + v15 + 8) & ~v15;
        if (v7 == v11)
        {
          v29 = *(v6 + 48);
          v30 = v7;
          v31 = v33;
        }

        else
        {
          v29 = *(v8 + 48);
          v28 = (v28 + v16 + v17) & ~v17;
          v30 = v9;
          v31 = v32;
        }

        return v29(v28, v30, v31);
      }

      else
      {
        v27 = *v26;
        if (v27 >= 0xFFFFFFFF)
        {
          LODWORD(v27) = -1;
        }

        return (v27 + 1);
      }
    }
  }

  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_34;
  }

LABEL_23:
  v25 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v25 = 0;
  }

  if (v20)
  {
    if (v20 > 3)
    {
      LODWORD(v20) = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        LODWORD(v20) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v20) = *a1;
      }
    }

    else if (v20 == 1)
    {
      LODWORD(v20) = *a1;
    }

    else
    {
      LODWORD(v20) = *a1;
    }
  }

  return v11 + (v20 | v25) + 1;
}

void sub_5C498(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(sub_140D5C() - 8);
  v33 = v6;
  v7 = *(*(a4 + 16) - 8);
  v32 = *(v6 + 84);
  if (v32 <= *(v7 + 84))
  {
    v8 = *(v7 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(sub_14292C() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_14317C() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v6 + 80);
  v15 = *(v6 + 64);
  v16 = *(v7 + 80);
  v17 = *(v10 + 80) & 0xF8 | 7;
  v18 = *(v12 + 80) & 0xF8 | 7;
  v19 = v13 + ((v11 + v18 + ((v17 + ((((((((*(v7 + 64) + ((v15 + ((v14 + 24) & ~v14) + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17) + 1) & ~v18) + 1;
  if (a3 <= v9)
  {
    v22 = 0;
    v20 = a1;
    v21 = a2;
  }

  else
  {
    v20 = a1;
    v21 = a2;
    if (v19 <= 3)
    {
      v25 = ((a3 - v9 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
      if (HIWORD(v25))
      {
        v22 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v26 = 1;
        }

        else
        {
          v26 = 2;
        }

        if (v25 >= 2)
        {
          v22 = v26;
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v22 = 1;
    }
  }

  if (v9 < v21)
  {
    v23 = ~v9 + v21;
    if (v19 < 4)
    {
      v24 = (v23 >> (8 * v19)) + 1;
      if (v19)
      {
        v27 = v23 & ~(-1 << (8 * v19));
        bzero(v20, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *v20 = v27;
            if (v22 > 1)
            {
LABEL_60:
              if (v22 == 2)
              {
                *&v20[v19] = v24;
              }

              else
              {
                *&v20[v19] = v24;
              }

              return;
            }
          }

          else
          {
            *v20 = v23;
            if (v22 > 1)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_57;
        }

        *v20 = v27;
        v20[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_60;
      }
    }

    else
    {
      bzero(v20, v19);
      *v20 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_60;
      }
    }

LABEL_57:
    if (v22)
    {
      v20[v19] = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&v20[v19] = 0;
      if (!v21)
      {
        return;
      }

      goto LABEL_40;
    }

    *&v20[v19] = 0;
  }

  else if (v22)
  {
    v20[v19] = 0;
    if (!v21)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!v21)
  {
    return;
  }

LABEL_40:
  v28 = ((v20 + 23) & 0xFFFFFFFFFFFFFFF8);
  if ((v8 & 0x80000000) != 0)
  {
    v30 = (v28 + v14 + 8) & ~v14;
    if (v32 == v9)
    {
      v31 = *(v33 + 56);
    }

    else
    {
      v31 = *(v7 + 56);
      v30 = (v30 + v15 + v16) & ~v16;
    }

    v31(v30);
  }

  else
  {
    if ((v21 & 0x80000000) != 0)
    {
      v29 = v21 & 0x7FFFFFFF;
    }

    else
    {
      v29 = v21 - 1;
    }

    *v28 = v29;
  }
}

void sub_5C91C()
{
  if (!qword_1C0FE8)
  {
    v0 = sub_143CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1C0FE8);
    }
  }
}

void sub_5C96C(uint64_t a1)
{
  if (!qword_1C3768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3770, qword_14DAB0);
    v1 = sub_143CEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C3768);
    }
  }
}

uint64_t sub_5CA38(uint64_t a1)
{
  v2 = sub_142BEC();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_142E9C();
}

uint64_t sub_5CB00(uint64_t a1)
{
  v3 = *(a1 - 8);
  __chkstk_darwin(a1);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v8 = &v31[-v7];
  v9 = sub_14243C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1423EC();
  v13 = *(v3 + 16);
  v13(v8, v1, a1);
  v13(v5, v1, a1);
  v14 = sub_14242C();
  v15 = sub_144C5C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = v9;
    v17 = v16;
    v34 = swift_slowAlloc();
    v36 = v34;
    *v17 = 136315650;
    v18 = sub_1454BC();
    v33 = v14;
    v20 = sub_ED2A4(v18, v19, &v36);
    v32 = v15;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 1026;
    v22 = *(v8 + 1);
    v38 = *v8;
    v39 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
    sub_143CBC();
    LODWORD(v21) = v37;
    v23 = *(v3 + 8);
    v23(v8, a1);
    *(v17 + 14) = v21;
    *(v17 + 18) = 2082;
    v24 = sub_140D4C();
    v26 = v25;
    v23(v5, a1);
    v27 = sub_ED2A4(v24, v26, &v36);

    *(v17 + 20) = v27;
    v28 = v33;
    _os_log_impl(&dword_0, v33, v32, "[%s] Setting isPopoverPresented to %{BOOL,public}d for placement %{public}s", v17, 0x1Cu);
    swift_arrayDestroy();

    return (*(v10 + 8))(v12, v35);
  }

  else
  {
    v30 = *(v3 + 8);
    v30(v8, a1);

    v30(v5, a1);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_5CE90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
  sub_143CBC();
  return v1;
}

uint64_t sub_5CEE8(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
  sub_143CCC();
  return sub_5CB00(a2);
}

uint64_t sub_5CF60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
  sub_143CDC();
  return v1;
}

uint64_t sub_5CFBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = sub_14340C();
  v71 = *(v3 - 8);
  v72 = v3;
  __chkstk_darwin(v3);
  v70 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *(a1 - 8);
  v66 = *(v65 + 64);
  __chkstk_darwin(v5);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = *(a1 + 16);
  v63 = a1;
  sub_14358C();
  v7 = sub_142C6C();
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3780, &qword_14DB18);
  v9 = *(a1 + 24);
  v61 = v9;
  v69 = sub_630F4(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v83 = v9;
  v84 = v69;
  v68 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_60ACC();
  v79 = v7;
  v80 = v8;
  v81 = WitnessTable;
  v82 = v11;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C37B0, &unk_14DB30);
  v79 = v7;
  v80 = v8;
  v81 = WitnessTable;
  v82 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = sub_1D4A4(&qword_1C37B8, &qword_1C37B0, &unk_14DB30, &protocol conformance descriptor for SimultaneousGesture<A, B>);
  v79 = OpaqueTypeMetadata2;
  v80 = v13;
  v81 = OpaqueTypeConformance2;
  v82 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v79 = OpaqueTypeMetadata2;
  v80 = v13;
  v81 = OpaqueTypeConformance2;
  v82 = v15;
  v17 = swift_getOpaqueTypeConformance2();
  v79 = v16;
  v80 = &type metadata for Bool;
  v81 = v17;
  v82 = &protocol witness table for Bool;
  v18 = swift_getOpaqueTypeMetadata2();
  v79 = v16;
  v80 = &type metadata for Bool;
  v81 = v17;
  v82 = &protocol witness table for Bool;
  v19 = swift_getOpaqueTypeConformance2();
  v79 = v18;
  v80 = &type metadata for Bool;
  v81 = v19;
  v82 = &protocol witness table for Bool;
  v20 = swift_getOpaqueTypeMetadata2();
  v79 = v18;
  v80 = &type metadata for Bool;
  v81 = v19;
  v82 = &protocol witness table for Bool;
  v21 = swift_getOpaqueTypeConformance2();
  v79 = v20;
  v80 = &type metadata for Bool;
  v81 = v21;
  v82 = &protocol witness table for Bool;
  v22 = swift_getOpaqueTypeMetadata2();
  type metadata accessor for CGRect(255);
  v24 = v23;
  v79 = v20;
  v80 = &type metadata for Bool;
  v81 = v21;
  v82 = &protocol witness table for Bool;
  v25 = swift_getOpaqueTypeConformance2();
  v26 = sub_630F4(&qword_1C37C0, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v79 = v22;
  v80 = v24;
  v81 = v25;
  v82 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v79 = v22;
  v80 = v24;
  v81 = v25;
  v82 = v26;
  v28 = swift_getOpaqueTypeConformance2();
  v79 = v27;
  v80 = &type metadata for Bool;
  v81 = v28;
  v82 = &protocol witness table for Bool;
  v29 = swift_getOpaqueTypeMetadata2();
  v79 = v27;
  v80 = &type metadata for Bool;
  v81 = v28;
  v82 = &protocol witness table for Bool;
  v30 = swift_getOpaqueTypeConformance2();
  v79 = v29;
  v80 = &type metadata for Bool;
  v81 = v30;
  v82 = &protocol witness table for Bool;
  v31 = swift_getOpaqueTypeMetadata2();
  v32 = sub_14292C();
  v79 = v29;
  v80 = &type metadata for Bool;
  v81 = v30;
  v82 = &protocol witness table for Bool;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = sub_630F4(&qword_1C37C8, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v79 = v31;
  v80 = v32;
  v81 = v33;
  v82 = v34;
  swift_getOpaqueTypeMetadata2();
  v79 = v31;
  v80 = v32;
  v81 = v33;
  v82 = v34;
  swift_getOpaqueTypeConformance2();
  v35 = sub_143D2C();
  v59 = *(v35 - 8);
  __chkstk_darwin(v35);
  v37 = &v56 - v36;
  v38 = sub_142C6C();
  v60 = *(v38 - 8);
  __chkstk_darwin(v38);
  v57 = &v56 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v58 = &v56 - v41;
  v42 = v62;
  v43 = v61;
  v74 = v62;
  v75 = v61;
  v44 = v67;
  v76 = v67;
  sub_143CFC();
  v45 = v65;
  v46 = v64;
  v47 = v63;
  (*(v65 + 16))(v64, v44, v63);
  v48 = (*(v45 + 80) + 32) & ~*(v45 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v42;
  *(v49 + 24) = v43;
  (*(v45 + 32))(v49 + v48, v46, v47);
  v50 = swift_getWitnessTable();
  v51 = v70;
  sub_1433FC();
  v52 = v57;
  sub_143A2C();

  (*(v71 + 8))(v51, v72);
  (*(v59 + 8))(v37, v35);
  v77 = v50;
  v78 = v69;
  swift_getWitnessTable();
  v53 = v58;
  sub_F6344();
  v54 = *(v60 + 8);
  v54(v52, v38);
  sub_F6344();
  return (v54)(v53, v38);
}

uint64_t sub_5D868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v231 = a1;
  v212 = a4;
  v220 = sub_14292C();
  v211 = *(v220 - 8);
  __chkstk_darwin(v220);
  v210 = &v158[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v209 = sub_142CDC();
  v208 = *(v209 - 8);
  __chkstk_darwin(v209);
  v207 = &v158[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C37B0, &unk_14DB30);
  __chkstk_darwin(v8);
  v206 = &v158[-v9];
  v228 = a3;
  v229 = a2;
  v10 = a3;
  v175 = type metadata accessor for NowPlayingAdvancedControlsMenu(0, a2, a3, v11);
  v230 = *(v175 - 8);
  v226 = *(v230 + 64);
  __chkstk_darwin(v175);
  v222 = &v158[-v12];
  v186 = sub_14348C();
  v219 = *(v186 - 8);
  __chkstk_darwin(v186);
  v173 = &v158[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v227 = sub_14315C();
  v225 = *(v227 - 8);
  __chkstk_darwin(v227);
  v15 = &v158[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_14358C();
  v16 = sub_142C6C();
  v191 = *(v16 - 8);
  __chkstk_darwin(v16);
  v215 = &v158[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3780, &qword_14DB18);
  v19 = sub_630F4(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  v237 = v10;
  v238 = v19;
  WitnessTable = swift_getWitnessTable();
  v21 = sub_60ACC();
  v233 = v16;
  v234 = v18;
  v166 = v16;
  v163 = v18;
  v235 = WitnessTable;
  v236 = v21;
  v162 = WitnessTable;
  v22 = v21;
  v161 = v21;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v185 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v165 = &v158[-v24];
  v233 = v16;
  v234 = v18;
  v235 = WitnessTable;
  v236 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_1D4A4(&qword_1C37B8, &qword_1C37B0, &unk_14DB30, &protocol conformance descriptor for SimultaneousGesture<A, B>);
  v233 = OpaqueTypeMetadata2;
  v234 = v8;
  v167 = OpaqueTypeMetadata2;
  v164 = v8;
  v235 = OpaqueTypeConformance2;
  v236 = v26;
  v27 = OpaqueTypeConformance2;
  v169 = OpaqueTypeConformance2;
  v28 = v26;
  v168 = v26;
  v29 = swift_getOpaqueTypeMetadata2();
  v192 = *(v29 - 8);
  __chkstk_darwin(v29);
  v218 = &v158[-v30];
  v233 = OpaqueTypeMetadata2;
  v234 = v8;
  v235 = v27;
  v236 = v28;
  v31 = swift_getOpaqueTypeConformance2();
  v233 = v29;
  v234 = &type metadata for Bool;
  v171 = v29;
  v235 = v31;
  v236 = &protocol witness table for Bool;
  v32 = v31;
  v172 = v31;
  v33 = swift_getOpaqueTypeMetadata2();
  v197 = *(v33 - 8);
  __chkstk_darwin(v33);
  v213 = &v158[-v34];
  v233 = v29;
  v234 = &type metadata for Bool;
  v235 = v32;
  v236 = &protocol witness table for Bool;
  v35 = swift_getOpaqueTypeConformance2();
  v233 = v33;
  v234 = &type metadata for Bool;
  v36 = v33;
  v176 = v33;
  v235 = v35;
  v236 = &protocol witness table for Bool;
  v37 = v35;
  v177 = v35;
  v38 = swift_getOpaqueTypeMetadata2();
  v199 = *(v38 - 8);
  __chkstk_darwin(v38);
  v214 = &v158[-v39];
  v233 = v36;
  v234 = &type metadata for Bool;
  v235 = v37;
  v236 = &protocol witness table for Bool;
  v40 = swift_getOpaqueTypeConformance2();
  v233 = v38;
  v234 = &type metadata for Bool;
  v41 = v38;
  v182 = v38;
  v235 = v40;
  v236 = &protocol witness table for Bool;
  v42 = v40;
  v184 = v40;
  v43 = swift_getOpaqueTypeMetadata2();
  v204 = *(v43 - 8);
  __chkstk_darwin(v43);
  v217 = &v158[-v44];
  type metadata accessor for CGRect(255);
  v46 = v45;
  v233 = v41;
  v234 = &type metadata for Bool;
  v235 = v42;
  v236 = &protocol witness table for Bool;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = sub_630F4(&qword_1C37C0, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  v233 = v43;
  v234 = v46;
  v181 = v43;
  v170 = v46;
  v235 = v47;
  v236 = v48;
  v49 = v47;
  v183 = v47;
  v50 = v48;
  v174 = v48;
  v51 = swift_getOpaqueTypeMetadata2();
  v198 = *(v51 - 8);
  __chkstk_darwin(v51);
  v178 = &v158[-v52];
  v233 = v43;
  v234 = v46;
  v235 = v49;
  v236 = v50;
  v53 = swift_getOpaqueTypeConformance2();
  v233 = v51;
  v234 = &type metadata for Bool;
  v54 = v51;
  v179 = v51;
  v235 = v53;
  v236 = &protocol witness table for Bool;
  v55 = v53;
  v180 = v53;
  v56 = swift_getOpaqueTypeMetadata2();
  v203 = *(v56 - 8);
  __chkstk_darwin(v56);
  v216 = &v158[-v57];
  v233 = v54;
  v234 = &type metadata for Bool;
  v235 = v55;
  v236 = &protocol witness table for Bool;
  v58 = swift_getOpaqueTypeConformance2();
  v233 = v56;
  v234 = &type metadata for Bool;
  v59 = v56;
  v189 = v56;
  v235 = v58;
  v236 = &protocol witness table for Bool;
  v60 = v58;
  v190 = v58;
  v61 = swift_getOpaqueTypeMetadata2();
  v195 = v61;
  v205 = *(v61 - 8);
  __chkstk_darwin(v61);
  v188 = &v158[-v62];
  v233 = v59;
  v234 = &type metadata for Bool;
  v235 = v60;
  v236 = &protocol witness table for Bool;
  v200 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  v63 = swift_getOpaqueTypeConformance2();
  v194 = v63;
  v193 = sub_630F4(&qword_1C37C8, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v233 = v61;
  v234 = v220;
  v235 = v63;
  v236 = v193;
  v201 = swift_getOpaqueTypeMetadata2();
  v202 = *(v201 - 8);
  __chkstk_darwin(v201);
  v187 = &v158[-((v64 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v65);
  v196 = &v158[-v66];
  v67 = v175;
  sub_14313C();
  v68 = v231;
  v70 = v228;
  v69 = v229;
  sub_143ACC();
  (*(v225 + 8))(v15, v227);
  v160 = sub_5CF60();
  v72 = v71;
  v159 = v73;
  sub_143F6C();
  v74 = v173;
  *v173 = v75;
  *(v74 + 8) = v76;
  v77 = v186;
  (*(v219 + 104))(v74, enum case for PopoverAttachmentAnchor.point(_:), v186);
  v78 = v230;
  v79 = *(v230 + 16);
  v223 = v230 + 16;
  v224 = v79;
  v80 = v222;
  v79(v222, v68, v67);
  v225 = *(v78 + 80);
  v81 = (v225 + 32) & ~v225;
  v227 = v81;
  v82 = swift_allocObject();
  *(v82 + 16) = v69;
  *(v82 + 24) = v70;
  v83 = *(v78 + 32);
  v230 = v78 + 32;
  v221 = v83;
  v84 = v80;
  v83(v82 + v81, v80, v67);
  v85 = v165;
  v86 = v166;
  v87 = v215;
  sub_5644(v160, v72, v159 & 1, v74, 2, sub_619F4, v82, v166, v163, v162, v161);

  (*(v219 + 8))(v74, v77);
  (*(v191 + 8))(v87, v86);
  v88 = v206;
  v89 = v67;
  v90 = v231;
  sub_5FB44(v67, v206);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C37D8, &qword_14DB40);
  sub_5FFB4(v67);
  sub_601DC(v67);
  sub_142A1C();
  v91 = v167;
  sub_143A4C();
  sub_15340(v88, &qword_1C37B0, &unk_14DB30);
  (*(v185 + 8))(v85, v91);
  v92 = v90;
  v93 = *(v90 + 16);
  swift_getKeyPath();
  v233 = v93;
  sub_630F4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  LOBYTE(v233) = *(v93 + 125);
  v94 = v84;
  v95 = v224;
  v224(v84, v92, v89);
  v96 = v227;
  v97 = swift_allocObject();
  v99 = v228;
  v98 = v229;
  *(v97 + 16) = v229;
  *(v97 + 24) = v99;
  v100 = v97 + v96;
  v101 = v89;
  v221(v100, v94, v89);
  v102 = v171;
  v103 = v218;
  sub_143B5C();

  (*(v192 + 8))(v103, v102);
  v104 = (v92 + *(v101 + 56));
  v105 = *v104;
  v106 = *(v104 + 1);
  LOBYTE(v233) = v105;
  v234 = v106;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
  sub_143CBC();
  LOBYTE(v233) = v232;
  v107 = v222;
  v95(v222, v92, v101);
  v108 = v227;
  v109 = swift_allocObject();
  *(v109 + 16) = v98;
  *(v109 + 24) = v99;
  v110 = v101;
  v111 = v221;
  v221(v109 + v108, v107, v101);
  v112 = v176;
  v113 = v213;
  sub_143B6C();

  (*(v197 + 8))(v113, v112);
  v114 = v231;
  LOBYTE(v233) = sub_5CE90() & 1;
  v115 = v224;
  v224(v107, v114, v101);
  v116 = v227;
  v117 = swift_allocObject();
  v118 = v228;
  v119 = v229;
  *(v117 + 16) = v229;
  *(v117 + 24) = v118;
  v111(v117 + v116, v107, v110);
  v120 = v182;
  v121 = v214;
  sub_143B5C();

  (*(v199 + 8))(v121, v120);
  swift_checkMetadataState();
  v122 = v107;
  v115(v107, v231, v110);
  v123 = v227;
  v124 = swift_allocObject();
  *(v124 + 16) = v119;
  *(v124 + 24) = v118;
  v125 = v110;
  v111(v124 + v123, v122, v110);
  v126 = v178;
  v127 = v181;
  v128 = v217;
  sub_1439BC();

  (*(v204 + 8))(v128, v127);
  v129 = v207;
  sub_142CCC();
  v130 = *(v110 + 60);
  v131 = v231;
  v132 = v231 + v130;
  v133 = *(v132 + 8);
  LOBYTE(v233) = *v132;
  LOBYTE(v93) = v233;
  v234 = v133;
  sub_143CBC();
  LOBYTE(v233) = v232;
  v134 = v179;
  sub_1439AC();
  (*(v208 + 8))(v129, v209);
  (*(v198 + 8))(v126, v134);
  LOBYTE(v233) = v93;
  v234 = v133;
  sub_143CBC();
  LOBYTE(v233) = v232;
  v135 = v222;
  v224(v222, v131, v125);
  v136 = v227;
  v137 = swift_allocObject();
  v138 = v228;
  *(v137 + 16) = v229;
  *(v137 + 24) = v138;
  v139 = v221;
  v221(v137 + v136, v135, v125);
  v140 = v188;
  v141 = v189;
  v142 = v216;
  sub_143B5C();

  (*(v203 + 8))(v142, v141);
  v143 = v125;
  v144 = v231;
  v145 = v210;
  sub_FA9B4(v210);
  v224(v135, v144, v143);
  v146 = swift_allocObject();
  v147 = v228;
  *(v146 + 16) = v229;
  *(v146 + 24) = v147;
  v139(v146 + v136, v135, v143);
  v148 = v187;
  v149 = v145;
  v150 = v195;
  v151 = v220;
  v152 = v194;
  v153 = v193;
  sub_143B5C();

  (*(v211 + 8))(v149, v151);
  (*(v205 + 8))(v140, v150);
  v233 = v150;
  v234 = v151;
  v235 = v152;
  v236 = v153;
  swift_getOpaqueTypeConformance2();
  v154 = v196;
  v155 = v201;
  sub_F6344();
  v156 = *(v202 + 8);
  v156(v148, v155);
  sub_F6344();
  return (v156)(v154, v155);
}

uint64_t sub_5F034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v46 = sub_14317C();
  v45 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v42 - v9;
  v10 = sub_140D5C();
  v50 = *(v10 - 8);
  __chkstk_darwin(v10);
  v48 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3818, &qword_14DC48);
  __chkstk_darwin(v12 - 8);
  v55 = &v42 - v13;
  v47 = sub_14330C();
  v14 = *(v47 - 8);
  __chkstk_darwin(v47);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3790, &qword_14DB20);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v42 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3820, &qword_14DC50);
  v52 = *(v21 - 8);
  v53 = v21;
  __chkstk_darwin(v21);
  v57 = &v42 - v22;
  sub_14360C();
  v49 = a2;
  v58 = a2;
  v59 = a3;
  v51 = a3;
  v54 = a1;
  v60 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3828, &qword_14DC58);
  sub_62620();
  sub_14293C();
  sub_1432FC();
  v23 = sub_14360C();
  sub_1435FC();
  sub_1435FC();
  if (sub_1435FC() != v23)
  {
    sub_1435FC();
  }

  sub_1D4A4(&qword_1C3798, &qword_1C3790, &qword_14DB20, &protocol conformance descriptor for ScrollView<A>);
  sub_143A9C();
  (*(v14 + 8))(v16, v47);
  (*(v18 + 8))(v20, v17);
  type metadata accessor for NowPlayingAdvancedControlsMenu(0, v49, v51, v24);
  v25 = v50;
  v26 = v48;
  (*(v50 + 104))(v48, enum case for NowPlayingPlayerStyle.fullScreen(_:), v10);
  sub_630F4(&qword_1C2498, &type metadata accessor for NowPlayingPlayerStyle, &protocol conformance descriptor for NowPlayingPlayerStyle);
  sub_1449AC();
  sub_1449AC();
  if (v63 == v61 && v64 == v62)
  {
    (*(v25 + 8))(v26, v10);

    v27 = v55;
  }

  else
  {
    v28 = sub_1453BC();
    (*(v25 + 8))(v26, v10);

    v27 = v55;
    if ((v28 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  v29 = v43;
  sub_FA518(v43);
  v30 = v45;
  v31 = v44;
  v32 = v46;
  (*(v45 + 104))(v44, enum case for ColorSchemeContrast.increased(_:), v46);
  sub_630F4(&qword_1C3878, &type metadata accessor for ColorSchemeContrast, &protocol conformance descriptor for ColorSchemeContrast);
  v33 = sub_14486C();
  v34 = *(v30 + 8);
  v34(v31, v32);
  v34(v29, v32);
  if ((v33 & 1) == 0)
  {
    v36 = enum case for ColorScheme.dark(_:);
    v37 = sub_1429CC();
    v38 = *(v37 - 8);
    (*(v38 + 104))(v27, v36, v37);
    (*(v38 + 56))(v27, 0, 1, v37);
    goto LABEL_10;
  }

LABEL_8:
  v35 = sub_1429CC();
  (*(*(v35 - 8) + 56))(v27, 1, 1, v35);
LABEL_10:
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3780, &qword_14DB18);
  v40 = v56;
  sub_62928(v27, v56 + *(v39 + 36));
  return (*(v52 + 32))(v40, v57, v53);
}

uint64_t sub_5F7C4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1433CC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3848, &qword_14DC68);
  __chkstk_darwin(v7);
  v9 = (v17 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3838, &qword_14DC60);
  __chkstk_darwin(v10);
  v12 = v17 - v11;

  sub_63360(v13, v9);
  v14 = *(v7 + 36);
  *(v9 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250, &qword_156190);
  swift_storeEnumTagMultiPayload();
  v17[1] = sub_143BCC();
  sub_627F0();
  sub_143AEC();

  sub_15340(v9, &qword_1C3848, &qword_14DC68);
  sub_1433BC();
  sub_626E8();
  sub_143B0C();
  (*(v4 + 8))(v6, v3);
  sub_629C0(v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3828, &qword_14DC58);
  v16 = (a2 + *(result + 36));
  *v16 = sub_5FA44;
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = 0;
  return result;
}

void sub_5FA44()
{
  v4 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];

  v0 = sub_14489C();

  v1 = [v4 BOOLForKey:v0];

  if ((v1 & 1) == 0)
  {
    isa = sub_144A7C().super.super.isa;

    v3 = sub_14489C();

    [v4 setValue:isa forKey:v3];
  }
}

uint64_t sub_5FB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = sub_1432BC();
  __chkstk_darwin(v6);
  v7 = sub_1429FC();
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  __chkstk_darwin(v7);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C37F0, &qword_14DBE8);
  v11 = *(v10 - 8);
  v38 = v10;
  v39 = v11;
  __chkstk_darwin(v10);
  v32 = &v27 - v12;
  sub_14341C();
  sub_1429DC();
  v33 = *(v4 + 16);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33(v27, v2, a1);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v28 = v13;
  v35 = v13 + v5;
  v14 = (v13 + v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v15 = swift_allocObject();
  v16 = *(a1 + 16);
  v29 = *(a1 + 24);
  v17 = v29;
  v30 = v16;
  *(v15 + 16) = v16;
  *(v15 + 24) = v17;
  v18 = *(v4 + 32);
  v18(v15 + v13, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  *(v15 + v14) = 1067869798;
  *(v15 + ((v14 + 7) & 0xFFFFFFFFFFFFFFFCLL)) = 1060320051;
  sub_630F4(&qword_1C37F8, &type metadata accessor for DragGesture, &protocol conformance descriptor for DragGesture);
  sub_630F4(&qword_1C3800, &type metadata accessor for DragGesture.Value, &protocol conformance descriptor for DragGesture.Value);
  v19 = v31;
  v20 = v32;
  v21 = v36;
  sub_143E1C();

  (*(v37 + 8))(v19, v21);
  v22 = v27;
  v33(v27, v34, a1);
  v23 = swift_allocObject();
  v24 = v29;
  *(v23 + 16) = v30;
  *(v23 + 24) = v24;
  v18(v23 + v28, v22, a1);
  sub_1D4A4(&qword_1C3808, &qword_1C37F0, &qword_14DBE8, &protocol conformance descriptor for _ChangedGesture<A>);
  v25 = v38;
  sub_143E0C();

  return (*(v39 + 8))(v20, v25);
}

uint64_t sub_5FFB4(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = sub_142CFC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_142CEC();
  (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = *(a1 + 16);
  (*(v4 + 32))(v11 + v10, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_630F4(&qword_1C37E8, &type metadata accessor for LongPressGesture, &protocol conformance descriptor for LongPressGesture);
  sub_143E0C();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_601DC(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v6 = sub_1429AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14299C();
  (*(v4 + 16))(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = *(a1 + 16);
  (*(v4 + 32))(v11 + v10, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_143E0C();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_603D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NowPlayingAdvancedControlsMenu(0, a2, a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
  sub_143CBC();
  return sub_14219C();
}

uint64_t sub_60454(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a1 == 1 && (*a2 & 1) == 0)
  {
    v7 = *(a3 + 16);
    if (*(v7 + 124) == 1)
    {
      *(v7 + 124) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_630F4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
      sub_141A3C();
    }

    swift_getKeyPath();
    sub_630F4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A4C();

    v9 = *(v7 + 128);
    swift_beginAccess();
    if (*(v9 + 17) == 1)
    {
      v10 = swift_getKeyPath();
      __chkstk_darwin(v10);
      sub_630F4(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

      sub_141A3C();
    }

    else
    {
      *(v9 + 17) = 0;
    }
  }

  type metadata accessor for NowPlayingAdvancedControlsMenu(0, a4, a5, a4);
  sub_5CE90();
  return sub_14219C();
}

uint64_t sub_6072C@<X0>(double *a1@<X8>)
{
  v2 = sub_14333C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14343C();
  sub_142B2C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

double *sub_60838(double *result, double *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (vabdd_f64(*a2, *result) > 0.5 || ((v7 = vabdd_f64(a2[2], result[2]), vabdd_f64(a2[1], result[1]) <= 0.5) ? (v8 = v7 > 0.5) : (v8 = 1), (v9 = vabdd_f64(a2[3], result[3]), !v8) ? (v10 = v9 > 0.5) : (v10 = 1), v10))
  {
    result = sub_5CE90();
    if (result)
    {
      v12 = type metadata accessor for NowPlayingAdvancedControlsMenu(0, a4, a5, v11);
      return sub_5CEE8(0, v12);
    }
  }

  return result;
}

void sub_608D0(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 == 1)
  {
    type metadata accessor for NowPlayingAdvancedControlsMenu(0, a4, a5, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
    sub_143CCC();
  }
}

uint64_t sub_60958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_14292C();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, enum case for ScenePhase.background(_:), v7, v9);
  v12 = sub_14291C();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = type metadata accessor for NowPlayingAdvancedControlsMenu(0, a4, a5, v14);
    return sub_5CEE8(0, v15);
  }

  return result;
}

uint64_t sub_60A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for NowPlayingAdvancedControlsMenu(0, a2, a3, a4);
  v5 = sub_5CE90();
  return sub_5CEE8((v5 & 1) == 0, v4);
}

unint64_t sub_60ACC()
{
  result = qword_1C3788;
  if (!qword_1C3788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3780, &qword_14DB18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3790, &qword_14DB20);
    sub_1D4A4(&qword_1C3798, &qword_1C3790, &qword_14DB20, &protocol conformance descriptor for ScrollView<A>);
    swift_getOpaqueTypeConformance2();
    sub_1D4A4(&qword_1C37A0, &qword_1C37A8, &qword_14DB28, &protocol conformance descriptor for _PreferenceWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3788);
  }

  return result;
}

void sub_60C1C(float a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_140D5C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v50[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for NowPlayingAdvancedControlsMenu(0, a5, a6, v15);
  (*(v12 + 104))(v14, enum case for NowPlayingPlayerStyle.fullScreen(_:), v11);
  sub_630F4(&qword_1C2498, &type metadata accessor for NowPlayingPlayerStyle, &protocol conformance descriptor for NowPlayingPlayerStyle);
  sub_1449AC();
  sub_1449AC();
  if (v52 == v51)
  {
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v17 = sub_1453BC();
    (*(v12 + 8))(v14, v11);

    if ((v17 & 1) == 0)
    {
LABEL_5:
      v22 = *(a4 + 16);
      swift_getKeyPath();
      *&v52 = v22;
      sub_630F4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
      sub_141A4C();

      v23 = *(v22 + 24);
      v24 = (a4 + *(v16 + 52));
      v25 = *v24;
      v26 = *(v24 + 4);
      v27 = *(v24 + 1);
      LODWORD(v52) = v25;
      BYTE4(v52) = v26;
      *(&v52 + 1) = v27;
      LODWORD(v51) = v23;
      BYTE4(v51) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3810, &qword_14DBF0);
      sub_143CCC();
      v28 = (a4 + *(v16 + 56));
      v29 = *v28;
      v30 = *(v28 + 1);
      LOBYTE(v52) = v29;
      *(&v52 + 1) = v30;
      LOBYTE(v51) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
      sub_143CCC();
      return;
    }
  }

  v18 = (a4 + *(v16 + 52));
  v19 = *v18;
  v20 = *(v18 + 4);
  v21 = *(v18 + 1);
  LODWORD(v52) = v19;
  BYTE4(v52) = v20;
  *(&v52 + 1) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3810, &qword_14DBF0);
  sub_143CBC();
  if (BYTE4(v51))
  {
    goto LABEL_5;
  }

  v31 = *&v51;
  sub_1429EC();
  v33 = round(v32 * -0.0303030303);
  if (qword_1C00A8 != -1)
  {
    swift_once();
  }

  v34 = roundf((v31 + (*&dword_1D1968 * v33)) * 10.0) / 10.0;
  sub_141F5C();
  v35 = sub_141F1C();
  v36 = *(v35 + 16);
  v37 = 32;
  while (v36)
  {
    v38 = *(v35 + v37);
    v37 += 4;
    --v36;
    if (v38 == v34)
    {

      if (v31 < a1)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  v39 = sub_141F1C();
  *&v52 = v39;
  v40 = *(v39 + 16);
  do
  {
    v41 = v40;
    if (!v40)
    {
      break;
    }

    --v40;
  }

  while (*(v39 + 4 * v41 + 28) >= v34);
  __chkstk_darwin(v39);
  *&v50[-16] = &v52;
  v44 = sub_62574(sub_625E0, &v50[-32], v42, v43);

  if ((v44 & 0x100000000) != 0)
  {
    sub_141F3C();
    v34 = v45;
    if (v31 < a1)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v34 = *&v44;
    if (v31 < a1)
    {
      goto LABEL_22;
    }
  }

LABEL_21:
  sub_141EDC();
  if (v34 < v46)
  {
    return;
  }

LABEL_22:
  if (v31 > a2 || (sub_141EDC(), v47 >= v34))
  {
    v48 = *(a4 + 16);
    swift_getKeyPath();
    *&v52 = v48;
    sub_630F4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A4C();

    if (v34 != *(v48 + 24))
    {
      sub_1140EC(LODWORD(v34) | 0x100000000);
      if (*(v48 + 24) == v34)
      {
        *(v48 + 24) = v34;
        sub_114488();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *&v50[-16] = v48;
        *&v50[-8] = v34;
        *&v52 = v48;
        sub_141A3C();
      }
    }
  }
}

void sub_61224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NowPlayingAdvancedControlsMenu(0, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3810, &qword_14DBF0);
  sub_143CBC();
  v5 = *(a2 + 16);
  swift_getKeyPath();
  sub_630F4(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  if ((v11 & 1) == 0 && v10 == *(v5 + 24))
  {
    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_141A4C();

  swift_getKeyPath();
  sub_141A6C();

  v6 = *(v5 + 120);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (!v7)
  {
    *(v5 + 120) = v8;
    swift_getKeyPath();
    sub_141A5C();

    if (*(v5 + 124) == 1)
    {
      *(v5 + 124) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_141A3C();
    }

LABEL_7:
    sub_143CCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
    sub_143CCC();
    return;
  }

  __break(1u);
}

uint64_t sub_61508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for NowPlayingAdvancedControlsMenu(0, a3, a4, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
  return sub_143CCC();
}

uint64_t sub_61584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for NowPlayingAdvancedControlsMenu(0, a3, a4, a4);
  v5 = sub_5CE90();
  return sub_5CEE8((v5 & 1) == 0, v4);
}

uint64_t sub_615CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[0] = a1;
  v22[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3910, &qword_14DD28);
  __chkstk_darwin(v2);
  v4 = v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3918, &qword_14DD30);
  __chkstk_darwin(v5);
  v7 = v22 - v6;
  v8 = sub_142BEC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = v22 - v13;
  sub_FA98C(v22 - v13);
  (*(v9 + 104))(v11, enum case for DynamicTypeSize.xxxLarge(_:), v8);
  sub_630F4(&qword_1C3920, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v15 = sub_14484C();
  v16 = *(v9 + 8);
  v16(v11, v8);
  v16(v14, v8);
  if (v15)
  {
    sub_143EAC();
    sub_142A9C();
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3928, &qword_14DD38);
    (*(*(v17 - 8) + 16))(v4, v22[0], v17);
    v18 = &v4[*(v2 + 36)];
    v19 = v24;
    *v18 = v23;
    *(v18 + 1) = v19;
    *(v18 + 2) = v25;
    sub_631F4(v4, v7);
    swift_storeEnumTagMultiPayload();
    sub_1D4A4(&qword_1C3930, &qword_1C3928, &qword_14DD38, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_6313C();
    sub_14329C();
    return sub_15340(v4, &qword_1C3910, &qword_14DD28);
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3928, &qword_14DD38);
    (*(*(v21 - 8) + 16))(v7, v22[0], v21);
    swift_storeEnumTagMultiPayload();
    sub_1D4A4(&qword_1C3930, &qword_1C3928, &qword_14DD38, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_6313C();
    return sub_14329C();
  }
}

uint64_t sub_619F4@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for NowPlayingAdvancedControlsMenu(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_5F034(v7, v4, v5, a2);
}

uint64_t sub_61A88(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for NowPlayingAdvancedControlsMenu(0, *(v4 + 16), *(v4 + 24), a4);
  if (*a2 == 1)
  {
    return sub_5CEE8(0, result);
  }

  return result;
}

uint64_t sub_61B18(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for NowPlayingAdvancedControlsMenu(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return a1(v8, v5, v6);
}

double *sub_61BC8(double *a1, double *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for NowPlayingAdvancedControlsMenu(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_60838(a1, a2, v10, v7, v8);
}

uint64_t sub_61C7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for NowPlayingAdvancedControlsMenu(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return a3(a1, a2, v10, v7, v8);
}

uint64_t sub_61D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for NowPlayingAdvancedControlsMenu(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_60958(a1, a2, v10, v7, v8);
}

uint64_t sub_61E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for NowPlayingAdvancedControlsMenu(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_61584(a1, v9, v6, v7);
}

uint64_t sub_61EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for NowPlayingAdvancedControlsMenu(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_61508(a1, v9, v6, v7);
}

uint64_t sub_61F38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for NowPlayingAdvancedControlsMenu(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  v10 = v4 + v8;

  v11 = v6[10];
  v12 = sub_140D5C();
  (*(*(v12 - 8) + 8))(v4 + v8 + v11, v12);
  (*(*(v5 - 8) + 8))(v4 + v8 + v6[11], v5);

  v13 = v6[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C37D0, &qword_14F5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_14292C();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
  }

  v15 = v6[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70, &qword_14AC80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_14317C();
    (*(*(v16 - 8) + 8))(v10 + v15, v16);
  }

  else
  {
  }

  return _swift_deallocObject(v4, ((((v9 + v8 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4, v7 | 7);
}

void sub_621A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for NowPlayingAdvancedControlsMenu(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *(v4 + v10);
  v12 = *(v4 + ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL));

  sub_60C1C(v11, v12, a1, v4 + v9, v6, v7);
}

uint64_t objectdestroyTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for NowPlayingAdvancedControlsMenu(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  v10 = v4 + v8;

  v11 = v6[10];
  v12 = sub_140D5C();
  (*(*(v12 - 8) + 8))(v4 + v8 + v11, v12);
  (*(*(v5 - 8) + 8))(v4 + v8 + v6[11], v5);

  v13 = v6[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C37D0, &qword_14F5B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_14292C();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
  }

  v15 = v6[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70, &qword_14AC80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_14317C();
    (*(*(v16 - 8) + 8))(v10 + v15, v16);
  }

  else
  {
  }

  return _swift_deallocObject(v4, v8 + v9, v7 | 7);
}

void sub_624B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for NowPlayingAdvancedControlsMenu(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  sub_61224(a1, v9, v6, v7);
}

void *sub_62574(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v6 = 0;
LABEL_5:
    v9 = a4 & 1;
    return (v6 | ((a4 & 1) << 32));
  }

  v8 = a3;
  result = a1(&v10, &v8);
  if (!v4)
  {
    v6 = v10;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t *sub_625E0@<X0>(unint64_t *result@<X0>, _DWORD *a2@<X8>)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = **(v2 + 16);
    if (v3 < *(v4 + 16))
    {
      *a2 = *(v4 + 4 * v3 + 32);
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_62620()
{
  result = qword_1C3830;
  if (!qword_1C3830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3828, &qword_14DC58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3838, &qword_14DC60);
    sub_626E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3830);
  }

  return result;
}

unint64_t sub_626E8()
{
  result = qword_1C3840;
  if (!qword_1C3840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3838, &qword_14DC60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3848, &qword_14DC68);
    sub_627F0();
    swift_getOpaqueTypeConformance2();
    sub_1D4A4(&qword_1C3868, &qword_1C3870, &qword_14DC70, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3840);
  }

  return result;
}

unint64_t sub_627F0()
{
  result = qword_1C3850;
  if (!qword_1C3850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3848, &qword_14DC68);
    sub_630F4(&qword_1C3858, type metadata accessor for NowPlayingAdvancedControlsView, &unk_14DE00);
    sub_630F4(&qword_1C3860, type metadata accessor for MenuWidthModifier, &unk_14DCD4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3850);
  }

  return result;
}

uint64_t type metadata accessor for MenuWidthModifier(uint64_t a1)
{
  result = qword_1C38D8;
  if (!qword_1C38D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_62928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3818, &qword_14DC48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_629C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3838, &qword_14DC60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_62A3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C32A0, &unk_14DCB0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_62AC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C32A0, &unk_14DCB0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_62B44(uint64_t a1)
{
  sub_62BCC(319, &qword_1C3318, &type metadata accessor for DynamicTypeSize);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_62BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_142A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_62C20(uint64_t *a1)
{
  sub_14358C();
  sub_142C6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3780, &qword_14DB18);
  sub_630F4(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
  swift_getWitnessTable();
  sub_60ACC();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C37B0, &unk_14DB30);
  swift_getOpaqueTypeConformance2();
  sub_1D4A4(&qword_1C37B8, &qword_1C37B0, &unk_14DB30, &protocol conformance descriptor for SimultaneousGesture<A, B>);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for CGRect(255);
  swift_getOpaqueTypeConformance2();
  sub_630F4(&qword_1C37C0, type metadata accessor for CGRect, &protocol conformance descriptor for CGRect);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_14292C();
  swift_getOpaqueTypeConformance2();
  sub_630F4(&qword_1C37C8, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_143D2C();
  sub_142C6C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_630F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_6313C()
{
  result = qword_1C3938;
  if (!qword_1C3938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3910, &qword_14DD28);
    sub_1D4A4(&qword_1C3930, &qword_1C3928, &qword_14DD38, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3938);
  }

  return result;
}

uint64_t sub_631F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3910, &qword_14DD28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_63268()
{
  result = qword_1C3940;
  if (!qword_1C3940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3948, &unk_14DD40);
    sub_1D4A4(&qword_1C3930, &qword_1C3928, &qword_14DD38, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_6313C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3940);
  }

  return result;
}

void *sub_63360@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for NowPlayingAdvancedControlsView(0);
  v4 = v3[5];
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128, &unk_149890);
  swift_storeEnumTagMultiPayload();
  v5 = v3[6];
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250, &qword_156190);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v3[7];
  sub_143CAC();
  *v6 = v10;
  *(v6 + 1) = v11;
  v7 = a2 + v3[8];
  sub_143CAC();
  *v7 = v10;
  *(v7 + 1) = v11;
  v8 = a2 + v3[9];
  result = sub_143CAC();
  *v8 = v10;
  *(v8 + 1) = v11;
  return result;
}

uint64_t type metadata accessor for NowPlayingAdvancedControlsView(uint64_t a1)
{
  result = qword_1C3A00;
  if (!qword_1C3A00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_634E8()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_69738(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 128);
  swift_getKeyPath();
  sub_69738(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

  sub_141A4C();

  swift_beginAccess();
  LODWORD(v1) = *(v2 + 17);

  type metadata accessor for NowPlayingAdvancedControlsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
  sub_143CBC();
  return (v4 | v1) & 1;
}

uint64_t sub_63678()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentRoute];
  v2 = [v1 outputs];

  sub_68C80();
  v3 = sub_1449DC();

  if (v3 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)); i; i = sub_14531C())
  {
    v21 = v0;
    v0 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_1451FC();
      }

      else
      {
        if (v0 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_24;
        }

        v6 = *(v3 + 8 * v0 + 32);
      }

      v7 = v6;
      v8 = (v0 + 1);
      if (__OFADD__(v0, 1))
      {
        break;
      }

      v9 = [v6 portType];
      v10 = sub_1448DC();
      v12 = v11;
      if (v10 == sub_1448DC() && v12 == v13)
      {
      }

      else
      {
        v15 = sub_1453BC();

        if ((v15 & 1) == 0)
        {

          goto LABEL_5;
        }
      }

      v16 = [v7 portName];
      v17 = sub_1448DC();
      v19 = v18;

      if (v17 == 0x79616C50726143 && v19 == 0xE700000000000000)
      {

        return 1;
      }

      v5 = sub_1453BC();

      if (v5)
      {

        return 1;
      }

LABEL_5:
      ++v0;
      if (v8 == i)
      {

        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_27:

  return 0;
}

uint64_t sub_63944()
{
  v1 = sub_142BEC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v12 - v6;
  type metadata accessor for NowPlayingAdvancedControlsView(0);
  sub_FA98C(v7);
  (*(v2 + 104))(v4, enum case for DynamicTypeSize.xxxLarge(_:), v1);
  sub_69738(&qword_1C3920, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v8 = sub_14484C();
  v9 = *(v2 + 8);
  v9(v4, v1);
  v9(v7, v1);
  if (sub_634E8() & 1) == 0 && (v8)
  {
    v10 = *v0;
    swift_getKeyPath();
    v12[2] = v10;
    sub_69738(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A4C();
  }

  sub_1430EC();
  return sub_1437DC();
}

uint64_t sub_63BDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v100 = a1;
  v3 = type metadata accessor for NowPlayingAdvancedControlsView(0);
  v4 = v3 - 8;
  v99 = *(v3 - 8);
  v98 = *(v99 + 64);
  __chkstk_darwin(v3);
  v97 = &v74[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_142D1C();
  v7 = *(v6 - 8);
  v95 = v6;
  v96 = v7;
  __chkstk_darwin(v6);
  v94 = &v74[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = sub_142CDC();
  v87 = *(v89 - 8);
  __chkstk_darwin(v89);
  v77 = &v74[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3A50, &qword_14DE50);
  __chkstk_darwin(v80);
  v11 = &v74[-v10];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3A58, &qword_14DE58);
  v83 = *(v84 - 8);
  __chkstk_darwin(v84);
  v76 = &v74[-v12];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3A60, &qword_14DE60) - 8;
  __chkstk_darwin(v79);
  v78 = &v74[-v13];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3A68, &qword_14DE68);
  __chkstk_darwin(v82);
  v15 = &v74[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3A70, &qword_14DE70);
  v17 = *(v16 - 8);
  v92 = v16;
  v93 = v17;
  __chkstk_darwin(v16);
  v81 = &v74[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3A78, &qword_14DE78);
  v90 = *(v19 - 8);
  v91 = v19;
  __chkstk_darwin(v19);
  v86 = &v74[-v20];
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3A80, &qword_14DE80) - 8;
  __chkstk_darwin(v88);
  v85 = &v74[-v21];
  v22 = sub_142BEC();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v74[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v26);
  v28 = &v74[-v27];
  sub_FA98C(&v74[-v27]);
  (*(v23 + 104))(v25, enum case for DynamicTypeSize.xxxLarge(_:), v22);
  sub_69738(&qword_1C3920, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  v29 = sub_14484C();
  v30 = *(v23 + 8);
  v30(v25, v22);
  v30(v28, v22);
  *v11 = sub_14318C();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3A88, &unk_14DE88) + 44);
  v75 = (v29 & 1) == 0;
  sub_64620(v2, v75, &v11[v31]);
  v32 = v77;
  sub_142CCC();
  v33 = v2 + *(v4 + 36);
  v34 = v2;
  v35 = *v33;
  v36 = *(v33 + 1);
  LOBYTE(v101) = v35;
  v102 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
  sub_143CBC();
  LOBYTE(v101) = v105;
  sub_1D4A4(&qword_1C3A90, &qword_1C3A50, &qword_14DE50, &protocol conformance descriptor for VStack<A>);
  v37 = v76;
  sub_1439AC();
  (*(v87 + 8))(v32, v89);
  sub_15340(v11, &qword_1C3A50, &qword_14DE50);
  LOBYTE(v11) = sub_14364C();
  sub_14290C();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v78;
  (*(v83 + 32))(v78, v37, v84);
  v47 = v46 + *(v79 + 44);
  *v47 = v11;
  *(v47 + 8) = v39;
  *(v47 + 16) = v41;
  *(v47 + 24) = v43;
  *(v47 + 32) = v45;
  *(v47 + 40) = 0;
  LOBYTE(v11) = sub_14363C();
  sub_141D7C();
  sub_14290C();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_10358(v46, v15, &qword_1C3A60, &qword_14DE60);
  v56 = v82;
  v57 = &v15[*(v82 + 36)];
  *v57 = v11;
  *(v57 + 1) = v49;
  *(v57 + 2) = v51;
  *(v57 + 3) = v53;
  *(v57 + 4) = v55;
  v57[40] = 0;
  v58 = v94;
  sub_142D0C();
  v59 = sub_689AC();
  v60 = sub_69738(&qword_1C3AA8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v61 = v81;
  v62 = v56;
  v63 = v95;
  sub_1438AC();
  (*(v96 + 8))(v58, v63);
  sub_15340(v15, &qword_1C3A68, &qword_14DE68);
  v101 = v62;
  v102 = v63;
  v103 = v59;
  v104 = v60;
  swift_getOpaqueTypeConformance2();
  sub_68B48();
  v64 = v86;
  v65 = v92;
  sub_14390C();
  (*(v93 + 8))(v61, v65);
  v66 = v85;
  (*(v90 + 32))(v85, v64, v91);
  v66[*(v88 + 44)] = v75;
  v67 = v66;
  v68 = v97;
  sub_68B9C(v34, v97);
  v69 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v70 = swift_allocObject();
  sub_68C04(v68, v70 + v69);
  v71 = v100;
  sub_10358(v67, v100, &qword_1C3A80, &qword_14DE80);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AB8, &qword_14DE98);
  v73 = (v71 + *(result + 36));
  *v73 = sub_68C68;
  v73[1] = v70;
  v73[2] = 0;
  v73[3] = 0;
  return result;
}

uint64_t sub_64620@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v130 = a2;
  v135 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AC8, &qword_14DEA0);
  __chkstk_darwin(v4 - 8);
  v131 = (v119 - v5);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AD0, &qword_14DEA8);
  __chkstk_darwin(v129);
  v134 = v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v128 = v119 - v8;
  __chkstk_darwin(v9);
  v133 = v119 - v10;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AD8, &qword_14DEB0);
  v125 = *(v126 - 8);
  __chkstk_darwin(v126);
  v120 = v119 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AE0, &qword_14DEB8);
  __chkstk_darwin(v12 - 8);
  v132 = v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v139 = v119 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AE8, &qword_14DEC0);
  __chkstk_darwin(v16 - 8);
  v18 = v119 - v17;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AF0, &qword_14DEC8);
  __chkstk_darwin(v121);
  v124 = v119 - v19;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AF8, &qword_14DED0);
  __chkstk_darwin(v123);
  v127 = v119 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v122 = v119 - v22;
  __chkstk_darwin(v23);
  v138 = v119 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B00, &qword_14DED8);
  __chkstk_darwin(v25 - 8);
  v27 = v119 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B08, &qword_14DEE0);
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = v119 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B10, &qword_14DEE8);
  __chkstk_darwin(v35 - 8);
  v137 = v119 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v39 = v119 - v38;
  v136 = a1;
  v40 = *a1;
  swift_getKeyPath();
  v41 = OBJC_IVAR____TtC12NowPlayingUI35NowPlayingPlaybackControlsViewModel___observationRegistrar;
  v140 = v40;
  v42 = sub_69738(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  v119[1] = v41;
  v119[0] = v42;
  sub_141A4C();

  if (*(v40 + 67) == 1)
  {
    *v27 = sub_14319C();
    *(v27 + 1) = 0;
    v27[16] = 0;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B30, &qword_14DF30);
    sub_65174(v136, &v27[*(v43 + 44)]);
    v44 = sub_14363C();
    sub_141D7C();
    sub_14290C();
    v46 = v45;
    v48 = v47;
    v50 = v49;
    v52 = v51;
    sub_10358(v27, v31, &qword_1C3B00, &qword_14DED8);
    v53 = &v31[*(v28 + 36)];
    *v53 = v44;
    *(v53 + 1) = v46;
    *(v53 + 2) = v48;
    *(v53 + 3) = v50;
    *(v53 + 4) = v52;
    v53[40] = 0;
    sub_10358(v31, v34, &qword_1C3B08, &qword_14DEE0);
    sub_10358(v34, v39, &qword_1C3B08, &qword_14DEE0);
    v54 = 0;
  }

  else
  {
    v54 = 1;
  }

  v55 = v39;
  (*(v29 + 56))(v39, v54, 1, v28);
  *v18 = sub_14319C();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B18, &qword_14DF18);
  v57 = v130;
  v58 = v136;
  sub_65ACC(v136, v130 & 1, &v18[*(v56 + 44)]);
  v59 = sub_14364C();
  sub_141D7C();
  sub_14290C();
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v68 = v124;
  sub_10358(v18, v124, &qword_1C3AE8, &qword_14DEC0);
  v69 = v68 + *(v121 + 36);
  *v69 = v59;
  *(v69 + 8) = v61;
  *(v69 + 16) = v63;
  *(v69 + 24) = v65;
  *(v69 + 32) = v67;
  *(v69 + 40) = 0;
  v70 = sub_14363C();
  if (sub_141D7C())
  {
    swift_getKeyPath();
    v140 = v40;
    sub_141A4C();
  }

  sub_14290C();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v122;
  sub_10358(v68, v122, &qword_1C3AF0, &qword_14DEC8);
  v80 = v79 + *(v123 + 36);
  *v80 = v70;
  *(v80 + 8) = v72;
  *(v80 + 16) = v74;
  *(v80 + 24) = v76;
  *(v80 + 32) = v78;
  *(v80 + 40) = 0;
  sub_10358(v79, v138, &qword_1C3AF8, &qword_14DED0);
  v81 = sub_141D7C();
  v82 = v126;
  if (v81)
  {
    v83 = v120;
    sub_143DEC();
    v84 = sub_14361C();
    sub_14290C();
    v85 = v83 + *(v82 + 36);
    *v85 = v84;
    *(v85 + 8) = v86;
    *(v85 + 16) = v87;
    *(v85 + 24) = v88;
    *(v85 + 32) = v89;
    *(v85 + 40) = 0;
    v90 = v139;
    sub_10358(v83, v139, &qword_1C3AD8, &qword_14DEB0);
    v91 = 0;
  }

  else
  {
    v91 = 1;
    v90 = v139;
  }

  (*(v125 + 56))(v90, v91, 1, v82);
  v92 = sub_14318C();
  v93 = v131;
  *v131 = v92;
  v93[1] = 0;
  *(v93 + 16) = 0;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B20, &qword_14DF20);
  sub_66D88(v58, v57 & 1, v93 + *(v94 + 44));
  v95 = v90;
  v96 = sub_14363C();
  sub_14290C();
  v98 = v97;
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v105 = v93;
  v106 = v128;
  sub_10358(v105, v128, &qword_1C3AC8, &qword_14DEA0);
  v107 = v106 + *(v129 + 36);
  *v107 = v96;
  *(v107 + 8) = v98;
  *(v107 + 16) = v100;
  *(v107 + 24) = v102;
  *(v107 + 32) = v104;
  *(v107 + 40) = 0;
  v108 = v106;
  v109 = v133;
  sub_10358(v108, v133, &qword_1C3AD0, &qword_14DEA8);
  v110 = v137;
  sub_1D19C(v55, v137, &qword_1C3B10, &qword_14DEE8);
  v111 = v138;
  v112 = v127;
  sub_1D19C(v138, v127, &qword_1C3AF8, &qword_14DED0);
  v113 = v132;
  sub_1D19C(v95, v132, &qword_1C3AE0, &qword_14DEB8);
  v114 = v134;
  sub_1D19C(v109, v134, &qword_1C3AD0, &qword_14DEA8);
  v115 = v110;
  v116 = v135;
  sub_1D19C(v115, v135, &qword_1C3B10, &qword_14DEE8);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B28, &qword_14DF28);
  sub_1D19C(v112, v116 + v117[12], &qword_1C3AF8, &qword_14DED0);
  sub_1D19C(v113, v116 + v117[16], &qword_1C3AE0, &qword_14DEB8);
  sub_1D19C(v114, v116 + v117[20], &qword_1C3AD0, &qword_14DEA8);
  sub_15340(v109, &qword_1C3AD0, &qword_14DEA8);
  sub_15340(v139, &qword_1C3AE0, &qword_14DEB8);
  sub_15340(v111, &qword_1C3AF8, &qword_14DED0);
  sub_15340(v55, &qword_1C3B10, &qword_14DEE8);
  sub_15340(v114, &qword_1C3AD0, &qword_14DEA8);
  sub_15340(v113, &qword_1C3AE0, &qword_14DEB8);
  sub_15340(v112, &qword_1C3AF8, &qword_14DED0);
  return sub_15340(v137, &qword_1C3B10, &qword_14DEE8);
}

uint64_t sub_65174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v38 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3AD8, &qword_14DEB0) - 8;
  __chkstk_darwin(v36);
  v37 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v35 - v4;
  v6 = sub_1432AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B38, &qword_14DF38);
  __chkstk_darwin(v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B40, &qword_14DF40);
  v14 = v13 - 8;
  __chkstk_darwin(v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  *v12 = sub_14307C();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B48, &qword_14DF48);
  sub_65594(v35, &v12[*(v20 + 44)]);
  sub_142D9C();
  sub_1D4A4(&qword_1C3B50, &qword_1C3B38, &qword_14DF38, &protocol conformance descriptor for HStack<A>);
  sub_69738(&unk_1C2680, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  sub_1438CC();
  (*(v7 + 8))(v9, v6);
  sub_15340(v12, &qword_1C3B38, &qword_14DF38);
  LOBYTE(v12) = sub_14364C();
  sub_14290C();
  v21 = &v19[*(v14 + 44)];
  *v21 = v12;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  sub_143DEC();
  LOBYTE(v12) = sub_14361C();
  sub_14290C();
  v26 = &v5[*(v36 + 44)];
  *v26 = v12;
  *(v26 + 1) = v27;
  *(v26 + 2) = v28;
  *(v26 + 3) = v29;
  *(v26 + 4) = v30;
  v26[40] = 0;
  sub_1D19C(v19, v16, &qword_1C3B40, &qword_14DF40);
  v31 = v37;
  sub_1D19C(v5, v37, &qword_1C3AD8, &qword_14DEB0);
  v32 = v38;
  sub_1D19C(v16, v38, &qword_1C3B40, &qword_14DF40);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B58, &qword_14DF50);
  sub_1D19C(v31, v32 + *(v33 + 48), &qword_1C3AD8, &qword_14DEB0);
  sub_15340(v5, &qword_1C3AD8, &qword_14DEB0);
  sub_15340(v19, &qword_1C3B40, &qword_14DF40);
  sub_15340(v31, &qword_1C3AD8, &qword_14DEB0);
  return sub_15340(v16, &qword_1C3B40, &qword_14DF40);
}

uint64_t sub_65594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NowPlayingAdvancedControlsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B60, &unk_14DF58);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  sub_68B9C(a1, &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_68C04(&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C30, &qword_14BE20);
  sub_1D4A4(&qword_1C1C38, &qword_1C1C30, &qword_14BE20, &protocol conformance descriptor for Label<A, B>);
  sub_143CFC();
  LOBYTE(a1) = sub_14366C();
  sub_14290C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B68, &qword_14DF68) + 36)];
  *v24 = a1;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  LOBYTE(a1) = sub_14361C();
  sub_14290C();
  v25 = &v13[*(v8 + 44)];
  *v25 = a1;
  *(v25 + 1) = v26;
  *(v25 + 2) = v27;
  *(v25 + 3) = v28;
  *(v25 + 4) = v29;
  v25[40] = 0;
  sub_1D19C(v13, v10, &qword_1C3B60, &unk_14DF58);
  sub_1D19C(v10, a2, &qword_1C3B60, &unk_14DF58);
  v30 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B70, &qword_14DF70) + 48);
  *v30 = 0;
  *(v30 + 8) = 1;
  sub_15340(v13, &qword_1C3B60, &unk_14DF58);
  return sub_15340(v10, &qword_1C3B60, &unk_14DF58);
}

double sub_65880(uint64_t *a1)
{
  v1 = *a1;
  if (*(*a1 + 120))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_69738(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  if (*(v1 + 125) == 1)
  {
    *(v1 + 125) = 1;
  }

  else
  {
    v4 = swift_getKeyPath();
    __chkstk_darwin(v4);
    sub_69738(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    sub_141A3C();
  }

  return result;
}

uint64_t sub_65A58()
{
  v0 = sub_1430EC();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_65ACC@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v31 = a2;
  v5 = type metadata accessor for NowPlayingAdvancedControlsView(0);
  v34 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v35 = v6;
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1432AC();
  v32 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3BA8, &qword_14E048);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3BB0, &qword_14E050);
  __chkstk_darwin(v33);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3BB8, &qword_14E058);
  v36 = *(v16 - 8);
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  if (sub_141D7C())
  {
    *v13 = sub_14318C();
    *(v13 + 1) = 0;
    v30 = a3;
    v13[16] = 1;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3BC0, &qword_14E060) + 44);
    v29 = v7;
    v20 = a1;
    v21 = &v13[v19];
    *v21 = sub_14307C();
    *(v21 + 1) = 0;
    v21[16] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3BC8, &qword_14E068);
    sub_65FAC(v20, v31 & 1, &v21[*(v22 + 44)]);
    sub_142D9C();
    sub_1D4A4(&qword_1C3BD0, &qword_1C3BA8, &qword_14E048, &protocol conformance descriptor for VStack<A>);
    sub_69738(&unk_1C2680, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    sub_1438CC();
    (*(v32 + 8))(v10, v8);
    sub_15340(v13, &qword_1C3BA8, &qword_14E048);
    v15[*(v33 + 36)] = 0;
    v23 = v29;
    sub_68B9C(v20, v29);
    v24 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v25 = swift_allocObject();
    sub_68C04(v23, v25 + v24);
    sub_68FA0();
    sub_14392C();

    sub_15340(v15, &qword_1C3BB0, &qword_14E050);
    v26 = v30;
    (*(v36 + 32))(v30, v18, v16);
    return (*(v36 + 56))(v26, 0, 1, v16);
  }

  else
  {
    v28 = *(v36 + 56);

    return v28(a3, 1, 1, v16);
  }
}

uint64_t sub_65FAC@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3BF0, &qword_14E0A8);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v41 - v10;
  v12 = *a1;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = v12;
  swift_retain_n();
  sub_143DCC();
  v43 = a2;
  v44 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3BF8, &qword_14E0B0);
  sub_1D4A4(&qword_1C3C00, &qword_1C3BF8, &qword_14E0B0, &protocol conformance descriptor for HStack<A>);
  sub_143D6C();
  v15 = sub_14366C();
  sub_14290C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C08, &qword_14E0B8) + 36)];
  *v24 = v15;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  v25 = sub_14361C();
  sub_14290C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C10, &qword_14E0C0) + 36)];
  *v34 = v25;
  *(v34 + 1) = v27;
  *(v34 + 2) = v29;
  *(v34 + 3) = v31;
  *(v34 + 4) = v33;
  v34[40] = 0;
  swift_getKeyPath();
  v45 = v12;
  sub_69738(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  LOBYTE(a1) = *(v12 + 88);
  KeyPath = swift_getKeyPath();
  v36 = swift_allocObject();
  *(v36 + 16) = (a1 & 1) == 0;
  v37 = &v11[*(v6 + 44)];
  *v37 = KeyPath;
  v37[1] = sub_691B4;
  v37[2] = v36;
  sub_1D19C(v11, v8, &qword_1C3BF0, &qword_14E0A8);
  v38 = v42;
  sub_1D19C(v8, v42, &qword_1C3BF0, &qword_14E0A8);
  v39 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C18, &qword_14E0F8) + 48);
  *v39 = 0;
  *(v39 + 8) = 1;
  sub_15340(v11, &qword_1C3BF0, &qword_14E0A8);
  return sub_15340(v8, &qword_1C3BF0, &qword_14E0A8);
}

double sub_66374@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6 = sub_14306C();
  v26 = 1;
  sub_665B4(v4, a2, &v15);
  v35 = v23;
  v36[0] = v24[0];
  *(v36 + 9) = *(v24 + 9);
  v31 = v19;
  v32 = v20;
  v33 = v21;
  v34 = v22;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v37[7] = v22;
  v37[8] = v23;
  v38[0] = v24[0];
  *(v38 + 9) = *(v24 + 9);
  v37[4] = v19;
  v37[5] = v20;
  v37[6] = v21;
  v37[0] = v15;
  v37[1] = v16;
  v37[2] = v17;
  v37[3] = v18;
  sub_1D19C(&v27, &v14, &qword_1C3C20, &qword_14E100);
  sub_15340(v37, &qword_1C3C20, &qword_14E100);
  *(&v25[7] + 7) = v34;
  *(&v25[8] + 7) = v35;
  *(&v25[9] + 7) = v36[0];
  v25[10] = *(v36 + 9);
  *(&v25[3] + 7) = v30;
  *(&v25[4] + 7) = v31;
  *(&v25[5] + 7) = v32;
  *(&v25[6] + 7) = v33;
  *(v25 + 7) = v27;
  *(&v25[1] + 7) = v28;
  *(&v25[2] + 7) = v29;
  v7 = v25[6];
  *(a3 + 129) = v25[7];
  v8 = v25[9];
  *(a3 + 145) = v25[8];
  *(a3 + 161) = v8;
  *(a3 + 177) = v25[10];
  v9 = v25[2];
  *(a3 + 65) = v25[3];
  v10 = v25[5];
  *(a3 + 81) = v25[4];
  *(a3 + 97) = v10;
  *(a3 + 113) = v7;
  result = *v25;
  v12 = v25[1];
  *(a3 + 17) = v25[0];
  *(a3 + 33) = v12;
  v13 = v26;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v13;
  *(a3 + 49) = v9;
  return result;
}

double sub_665B4@<D0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_143C2C();
  }

  v7 = sub_14319C();
  sub_66870(a2, &v27);
  v21 = *&v28[80];
  v22[0] = *&v28[96];
  *(v22 + 9) = *&v28[105];
  v17 = *&v28[16];
  v18 = *&v28[32];
  v19 = *&v28[48];
  v20 = *&v28[64];
  v15 = v27;
  v16 = *v28;
  v23[5] = *&v28[64];
  v23[6] = *&v28[80];
  v24[0] = *&v28[96];
  *(v24 + 9) = *&v28[105];
  v23[2] = *&v28[16];
  v23[3] = *&v28[32];
  v23[4] = *&v28[48];
  v23[0] = v27;
  v23[1] = *v28;
  sub_1D19C(&v15, &v25, &qword_1C3C28, &qword_14E108);
  sub_15340(v23, &qword_1C3C28, &qword_14E108);
  *&v14[103] = v21;
  *&v14[87] = v20;
  *&v14[39] = v17;
  *&v14[23] = v16;
  *&v14[119] = v22[0];
  *&v14[128] = *(v22 + 9);
  *&v14[55] = v18;
  *&v14[71] = v19;
  *&v14[7] = v15;
  *&v26[81] = *&v14[80];
  *&v26[97] = *&v14[96];
  *&v26[113] = *&v14[112];
  *&v26[129] = *(v22 + 9);
  *&v26[17] = *&v14[16];
  *&v26[33] = *&v14[32];
  *&v26[49] = *&v14[48];
  *&v26[65] = *&v14[64];
  v25 = v7;
  v26[0] = 0;
  *&v26[1] = *v14;

  sub_1D19C(&v25, &v27, &qword_1C3C30, &qword_14E110);

  v8 = *&v26[80];
  *(a3 + 120) = *&v26[96];
  v9 = *&v26[128];
  *(a3 + 136) = *&v26[112];
  *(a3 + 152) = v9;
  v10 = *&v26[16];
  *(a3 + 56) = *&v26[32];
  v11 = *&v26[64];
  *(a3 + 72) = *&v26[48];
  *(a3 + 88) = v11;
  *(a3 + 104) = v8;
  v12 = *v26;
  *(a3 + 8) = v25;
  *(a3 + 24) = v12;
  *(a3 + 40) = v10;
  *&v28[81] = *&v14[80];
  *&v28[97] = *&v14[96];
  *&v28[113] = *&v14[112];
  v29 = *&v14[128];
  *&v28[17] = *&v14[16];
  *&v28[33] = *&v14[32];
  *&v28[49] = *&v14[48];
  *&v28[65] = *&v14[64];
  *a3 = v6;
  *(a3 + 168) = v26[144];
  v27 = v7;
  v28[0] = 0;
  *&v28[1] = *v14;
  sub_15340(&v27, &qword_1C3C30, &qword_14E110);

  return result;
}

double sub_66870@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1430EC();
  v4 = sub_1437DC();
  v36 = v5;
  v37 = v6;
  v35 = v7;
  v8 = *a1;
  swift_getKeyPath();
  v46 = v8;
  sub_69738(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  if (*(v8 + 88))
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    KeyPath = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v21 = a1 + *(type metadata accessor for NowPlayingAdvancedControlsView(0) + 36);
    v22 = *v21;
    v23 = *(v21 + 1);
    LOBYTE(v46) = v22;
    v47 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
    sub_143CBC();
    sub_1430EC();
    v24 = sub_1437DC();
    v26 = v25;
    v28 = v27;
    v11 = v29;
    KeyPath = swift_getKeyPath();
    if (qword_1BFF40 != -1)
    {
      swift_once();
    }

    v14 = qword_1C3950;
    v13 = swift_getKeyPath();
    LOBYTE(v39) = v28 & 1;
    v16 = v28 & 1;

    v30 = sub_14363C();
    sub_14290C();
    LOBYTE(v46) = 0;
    v15 = v30;
    v9 = v24;
    v10 = v26;
  }

  *&v39 = v9;
  *(&v39 + 1) = v10;
  *&v40 = v16;
  *(&v40 + 1) = v11;
  v41 = KeyPath;
  v42 = 0;
  *&v43 = v13;
  *(&v43 + 1) = v14;
  *&v44 = v15;
  *(&v44 + 1) = v17;
  *v45 = v18;
  *&v45[8] = v19;
  *&v45[16] = v20;
  v45[24] = 0;
  v31 = v40;
  *(a2 + 32) = v39;
  *(a2 + 48) = v31;
  *(a2 + 121) = *&v45[9];
  v32 = *v45;
  v33 = v43;
  *(a2 + 96) = v44;
  *(a2 + 112) = v32;
  v38[112] = v35 & 1;
  *a2 = v4;
  *(a2 + 8) = v36;
  *(a2 + 16) = v35 & 1;
  *(a2 + 24) = v37;
  *(a2 + 64) = KeyPath;
  *(a2 + 80) = v33;
  v46 = v9;
  v47 = v10;
  v48 = v16;
  v49 = v11;
  v50 = KeyPath;
  v51 = 0;
  v52 = v13;
  v53 = v14;
  v54 = v15;
  v55 = v17;
  v56 = v18;
  v57 = v19;
  v58 = v20;
  v59 = 0;
  sub_63AC(v4, v36, v35 & 1);

  sub_1D19C(&v39, v38, &qword_1C3C38, &qword_14E178);
  sub_15340(&v46, &qword_1C3C38, &qword_14E178);
  sub_1B4AC(v4, v36, v35 & 1);

  return result;
}

double sub_66BE0(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_69738(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  if (*(v1 + 88) == 1)
  {
    v3 = swift_allocObject();
    v3[2] = 0;
    v3[3] = 0;
    v3[4] = v1;
    v4 = swift_allocObject();
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = v1;
    swift_retain_n();
    sub_143DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408, &qword_14B390);
    sub_143D9C();
    sub_143DAC();
  }

  return result;
}

uint64_t sub_66D88@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v121 = a2;
  v120 = a3;
  v109 = sub_1429CC();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v107 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v106 = &v102 - v6;
  v117 = sub_143F3C();
  v115 = *(v117 - 8);
  __chkstk_darwin(v117);
  v112 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B78, &qword_14DFC8);
  __chkstk_darwin(v110);
  v114 = &v102 - v8;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B80, &qword_14DFD0);
  __chkstk_darwin(v113);
  v119 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v111 = &v102 - v11;
  __chkstk_darwin(v12);
  v118 = &v102 - v13;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B88, &qword_14DFD8) - 8;
  __chkstk_darwin(v103);
  v15 = (&v102 - v14);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B90, &unk_14DFE0) - 8;
  __chkstk_darwin(v104);
  v116 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v102 - v18;
  __chkstk_darwin(v20);
  v122 = &v102 - v21;
  v22 = *a1;
  v23 = type metadata accessor for NowPlayingAdvancedControlsView(0);
  v24 = a1 + *(v23 + 28);
  v25 = *v24;
  v26 = *(v24 + 1);
  LOBYTE(v123) = v25;
  v124 = v26;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
  sub_143CDC();
  v27 = v126;
  v28 = v127;
  v105 = v23;
  v29 = a1 + *(v23 + 32);
  v30 = *v29;
  v31 = *(v29 + 1);
  LOBYTE(v123) = v30;
  v124 = v31;
  sub_143CDC();
  v32 = v126;
  LOBYTE(a1) = v127;
  *v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250, &qword_156190);
  swift_storeEnumTagMultiPayload();
  v33 = type metadata accessor for NowPlayingAdvancedSpeedControls(0);
  *(v15 + v33[5]) = v22;
  v34 = v15 + v33[6];
  *v34 = v27;
  v34[16] = v28;
  v35 = v15 + v33[7];
  *v35 = v32;
  v35[16] = a1;
  v36 = v15 + v33[8];
  v123 = 0;
  v124 = 0;
  v125 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B98, qword_14E590);
  sub_143CAC();
  v37 = v127;
  v38 = v128;
  *v36 = v126;
  v36[16] = v37;
  *(v36 + 3) = v38;
  v39 = sub_14366C();
  sub_14290C();
  v40 = v15 + *(v103 + 44);
  *v40 = v39;
  *(v40 + 1) = v41;
  *(v40 + 2) = v42;
  *(v40 + 3) = v43;
  *(v40 + 4) = v44;
  v40[40] = 0;
  v45 = sub_14361C();
  sub_14290C();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  sub_10358(v15, v19, &qword_1C3B88, &qword_14DFD8);
  v54 = &v19[*(v104 + 44)];
  *v54 = v45;
  *(v54 + 1) = v47;
  *(v54 + 2) = v49;
  *(v54 + 3) = v51;
  *(v54 + 4) = v53;
  v54[40] = 0;
  sub_10358(v19, v122, &qword_1C3B90, &unk_14DFE0);
  v55 = sub_63944();
  v57 = v56;
  v59 = v58;
  if (qword_1BFF48 != -1)
  {
    swift_once();
  }

  v60 = sub_1437CC();
  v62 = v61;
  v64 = v63;
  sub_1B4AC(v55, v57, v59 & 1);

  if (qword_1BFF50 != -1)
  {
    swift_once();
  }

  *&v126 = qword_1C3960;

  v65 = sub_14378C();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  sub_1B4AC(v60, v62, v64 & 1);

  v72 = v106;
  sub_FA9DC(v106);
  v73 = v108;
  v74 = v107;
  v75 = v109;
  (*(v108 + 104))(v107, enum case for ColorScheme.dark(_:), v109);
  v76 = sub_1429BC();
  v77 = *(v73 + 8);
  v77(v74, v75);
  v77(v72, v75);
  if (v76)
  {
    if (qword_1BFF58 != -1)
    {
      swift_once();
    }

    v78 = qword_1C3968;
  }

  else
  {
    if (qword_1BFF60 != -1)
    {
      swift_once();
    }

    v78 = qword_1C3980;
  }

  v79 = v117;
  v80 = __swift_project_value_buffer(v117, v78);
  v81 = v115;
  v82 = v112;
  (*(v115 + 16))(v112, v80, v79);
  v83 = v114;
  (*(v81 + 32))(&v114[*(v110 + 36)], v82, v79);
  *v83 = v65;
  *(v83 + 8) = v67;
  *(v83 + 16) = v69 & 1;
  *(v83 + 24) = v71;
  v84 = sub_14361C();
  sub_14290C();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = v111;
  sub_10358(v83, v111, &qword_1C3B78, &qword_14DFC8);
  v94 = v93 + *(v113 + 36);
  *v94 = v84;
  *(v94 + 8) = v86;
  *(v94 + 16) = v88;
  *(v94 + 24) = v90;
  *(v94 + 32) = v92;
  *(v94 + 40) = 0;
  v95 = v118;
  sub_10358(v93, v118, &qword_1C3B80, &qword_14DFD0);
  v96 = v122;
  v97 = v116;
  sub_1D19C(v122, v116, &qword_1C3B90, &unk_14DFE0);
  v98 = v119;
  sub_1D19C(v95, v119, &qword_1C3B80, &qword_14DFD0);
  v99 = v120;
  sub_1D19C(v97, v120, &qword_1C3B90, &unk_14DFE0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3BA0, &qword_14DFF0);
  sub_1D19C(v98, v99 + *(v100 + 48), &qword_1C3B80, &qword_14DFD0);
  sub_15340(v95, &qword_1C3B80, &qword_14DFD0);
  sub_15340(v96, &qword_1C3B90, &unk_14DFE0);
  sub_15340(v98, &qword_1C3B80, &qword_14DFD0);
  return sub_15340(v97, &qword_1C3B90, &unk_14DFE0);
}

uint64_t sub_67740(uint64_t a1)
{
  sub_63678();
  type metadata accessor for NowPlayingAdvancedControlsView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
  return sub_143CCC();
}

uint64_t sub_677E0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C39A0, qword_14DDC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C32A0, &unk_14DCB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_67930(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C39A0, qword_14DDC0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C32A0, &unk_14DCB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_67A6C(uint64_t a1)
{
  type metadata accessor for NowPlayingPlaybackControlsViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_67B60(319, &qword_1C3A10, &type metadata accessor for ColorScheme);
    if (v2 <= 0x3F)
    {
      sub_67B60(319, &qword_1C3318, &type metadata accessor for DynamicTypeSize);
      if (v3 <= 0x3F)
      {
        sub_5C91C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_67B60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_142A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_67BD4()
{
  result = sub_14371C();
  qword_1C3950 = result;
  return result;
}

uint64_t sub_67BF4()
{
  result = sub_14371C();
  qword_1C3958 = result;
  return result;
}

void sub_67C14()
{
  v0 = [objc_opt_self() secondaryLabelColor];
  v1 = sub_144FAC();

  qword_1C3960 = v1;
}

uint64_t sub_67C90(uint64_t a1, uint64_t *a2, unsigned int *a3)
{
  v5 = sub_143F3C();
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *a3;
  v8 = *(*(v5 - 8) + 104);

  return v8(v6, v7, v5);
}

uint64_t sub_67D18@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v34 = a1;
  v38 = a3;
  v36 = sub_1433EC();
  v4 = *(v36 - 8);
  __chkstk_darwin(v36);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C80, &qword_14E288);
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = &v31 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C88, &qword_14E290);
  __chkstk_darwin(v33);
  v32 = &v31 - v10;
  v11 = sub_1431BC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C90, &qword_14E298);
  v15 = *(v35 - 8);
  __chkstk_darwin(v35);
  v17 = &v31 - v16;
  if (a2)
  {
    sub_1431AC();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C98, &qword_14E2A0);
    v19 = sub_1D4A4(&qword_1C3CA0, &qword_1C3C98, &qword_14E2A0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v20 = sub_69738(&qword_1C3CB0, &type metadata accessor for TitleOnlyLabelStyle, &protocol conformance descriptor for TitleOnlyLabelStyle);
    sub_14389C();
    (*(v12 + 8))(v14, v11);
    v21 = v35;
    (*(v15 + 16))(v32, v17, v35);
    swift_storeEnumTagMultiPayload();
    v39 = v18;
    v40 = v11;
    v41 = v19;
    v42 = v20;
    swift_getOpaqueTypeConformance2();
    v22 = sub_69738(&qword_1C3CA8, &type metadata accessor for TitleAndIconLabelStyle, &protocol conformance descriptor for TitleAndIconLabelStyle);
    v39 = v18;
    v40 = v36;
    v41 = v19;
    v42 = v22;
    swift_getOpaqueTypeConformance2();
    sub_14329C();
    return (*(v15 + 8))(v17, v21);
  }

  else
  {
    sub_1433DC();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C98, &qword_14E2A0);
    v25 = sub_1D4A4(&qword_1C3CA0, &qword_1C3C98, &qword_14E2A0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v26 = v4;
    v27 = sub_69738(&qword_1C3CA8, &type metadata accessor for TitleAndIconLabelStyle, &protocol conformance descriptor for TitleAndIconLabelStyle);
    v28 = v36;
    sub_14389C();
    (*(v26 + 8))(v6, v28);
    v29 = v37;
    (*(v7 + 16))(v32, v9, v37);
    swift_storeEnumTagMultiPayload();
    v30 = sub_69738(&qword_1C3CB0, &type metadata accessor for TitleOnlyLabelStyle, &protocol conformance descriptor for TitleOnlyLabelStyle);
    v39 = v24;
    v40 = v11;
    v41 = v25;
    v42 = v30;
    swift_getOpaqueTypeConformance2();
    v39 = v24;
    v40 = v28;
    v41 = v25;
    v42 = v27;
    swift_getOpaqueTypeConformance2();
    sub_14329C();
    return (*(v7 + 8))(v9, v29);
  }
}

uint64_t sub_68320@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_14307C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C68, &qword_14E268);
  return sub_68378((a2 + *(v3 + 44)));
}

uint64_t sub_68378@<X0>(char *a1@<X8>)
{
  v2 = sub_1434CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  v9 = sub_143C2C();
  if (qword_1BFF68 != -1)
  {
    swift_once();
  }

  v10 = qword_1C3998;
  KeyPath = swift_getKeyPath();

  sub_143EAC();
  sub_142A9C();
  if (sub_1434BC())
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  sub_1434DC();
  v13 = *(v3 + 16);
  v13(v5, v8, v2);
  *&v23 = v9;
  *(&v23 + 1) = KeyPath;
  *v24 = v10;
  *&v24[8] = v20;
  *&v24[24] = v21;
  *&v24[40] = v22;
  *&v24[56] = v12;
  v14 = *v24;
  *a1 = v23;
  *(a1 + 1) = v14;
  v15 = *&v24[32];
  *(a1 + 2) = *&v24[16];
  *(a1 + 3) = v15;
  *(a1 + 4) = *&v24[48];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C70, &qword_14E270);
  v13(&a1[*(v16 + 48)], v5, v2);
  sub_1D19C(&v23, v25, &qword_1C3C78, &qword_14E278);
  v17 = *(v3 + 8);
  v17(v8, v2);
  v17(v5, v2);
  v25[0] = v9;
  v25[1] = KeyPath;
  v25[2] = v10;
  v26 = v20;
  v27 = v21;
  v28 = v22;
  v29 = v12;
  return sub_15340(v25, &qword_1C3C78, &qword_14E278);
}

uint64_t sub_6864C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C2B60, &qword_14E280);
  __chkstk_darwin(v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_14372C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.headline(_:), v3, v5);
  v8 = sub_1436BC();
  (*(*(v8 - 8) + 56))(v2, 1, 1, v8);
  sub_1436CC();
  v9 = sub_1436FC();
  sub_15340(v2, &unk_1C2B60, &qword_14E280);
  result = (*(v4 + 8))(v7, v3);
  qword_1C3998 = v9;
  return result;
}

uint64_t sub_68804(uint64_t a1)
{
  v2 = sub_1434EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  (*(v3 + 16))(&v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v2, v5);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v2);
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3C58, &qword_14E260);
  sub_1D4A4(&qword_1C3C60, &qword_1C3C58, &qword_14E260, &protocol conformance descriptor for HStack<A>);
  return sub_143CFC();
}

unint64_t sub_689AC()
{
  result = qword_1C3A98;
  if (!qword_1C3A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3A68, &qword_14DE68);
    sub_68A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3A98);
  }

  return result;
}

unint64_t sub_68A38()
{
  result = qword_1C3AA0;
  if (!qword_1C3AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3A60, &qword_14DE60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3A50, &qword_14DE50);
    sub_1D4A4(&qword_1C3A90, &qword_1C3A50, &qword_14DE50, &protocol conformance descriptor for VStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3AA0);
  }

  return result;
}

unint64_t sub_68B48()
{
  result = qword_1C3AB0;
  if (!qword_1C3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3AB0);
  }

  return result;
}

uint64_t sub_68B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingAdvancedControlsView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_68C04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingAdvancedControlsView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_68C80()
{
  result = qword_1C3AC0;
  if (!qword_1C3AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C3AC0);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for NowPlayingAdvancedControlsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128, &unk_149890);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1429CC();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3250, &qword_156190);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_142BEC();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_68F2C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NowPlayingAdvancedControlsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_68FA0()
{
  result = qword_1C3BD8;
  if (!qword_1C3BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3BB0, &qword_14E050);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3BA8, &qword_14E048);
    sub_1432AC();
    sub_1D4A4(&qword_1C3BD0, &qword_1C3BA8, &qword_14E048, &protocol conformance descriptor for VStack<A>);
    sub_69738(&unk_1C2680, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
    swift_getOpaqueTypeConformance2();
    sub_1D4A4(&qword_1C3BE0, &qword_1C3BE8, &qword_14E070, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3BD8);
  }

  return result;
}

uint64_t sub_69148@<X0>(_BYTE *a1@<X8>)
{
  result = sub_142F1C();
  *a1 = result;
  return result;
}

uint64_t sub_691BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_142F1C();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LabelAXStylingViewModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NowPlayingTransportController.ActiveAccessoryIndicator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_6938C()
{
  result = qword_1C3C40;
  if (!qword_1C3C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3AB8, &qword_14DE98);
    sub_69418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3C40);
  }

  return result;
}

unint64_t sub_69418()
{
  result = qword_1C3C48;
  if (!qword_1C3C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3A80, &qword_14DE80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3A70, &qword_14DE70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3A68, &qword_14DE68);
    sub_142D1C();
    sub_689AC();
    sub_69738(&qword_1C3AA8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_68B48();
    swift_getOpaqueTypeConformance2();
    sub_69588();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3C48);
  }

  return result;
}

unint64_t sub_69588()
{
  result = qword_1C3C50;
  if (!qword_1C3C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3C50);
  }

  return result;
}

uint64_t sub_69614()
{
  v1 = sub_1434EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_6969C()
{
  sub_1434EC();
  v0 = sub_1434AC();
  *v1 = !*v1;
  return v0(&v3, 0);
}

uint64_t sub_69738(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_697C8()
{
  result = qword_1C3CC8;
  if (!qword_1C3CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3CD0, &unk_14E2B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3C98, &qword_14E2A0);
    sub_1431BC();
    sub_1D4A4(&qword_1C3CA0, &qword_1C3C98, &qword_14E2A0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_69738(&qword_1C3CB0, &type metadata accessor for TitleOnlyLabelStyle, &protocol conformance descriptor for TitleOnlyLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_1433EC();
    sub_69738(&qword_1C3CA8, &type metadata accessor for TitleAndIconLabelStyle, &protocol conformance descriptor for TitleAndIconLabelStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3CC8);
  }

  return result;
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

uint64_t sub_699B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_699FC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_69A80@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CD8, &qword_14E390);
  __chkstk_darwin(v4);
  v6 = v19 - v5;
  *v6 = sub_14307C();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CE0, &qword_14E398);
  sub_69D0C(v1, &v6[*(v7 + 44)]);
  v8 = *v1;
  swift_getKeyPath();
  v19[0] = v8;
  sub_6B8FC(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v20 = *(v8 + 24);
  v9 = swift_allocObject();
  v10 = *(v1 + 80);
  *(v9 + 80) = *(v1 + 64);
  *(v9 + 96) = v10;
  *(v9 + 112) = *(v1 + 96);
  v11 = *(v1 + 16);
  *(v9 + 16) = *v1;
  *(v9 + 32) = v11;
  v12 = *(v1 + 48);
  *(v9 + 48) = *(v1 + 32);
  *(v9 + 64) = v12;
  sub_6AAC0(v1, v19);
  sub_1D4A4(&qword_1C3CE8, &qword_1C3CD8, &qword_14E390, &protocol conformance descriptor for HStack<A>);
  sub_143B5C();

  sub_6AAF8(v6);
  v13 = swift_allocObject();
  v14 = *(v2 + 80);
  *(v13 + 80) = *(v2 + 64);
  *(v13 + 96) = v14;
  *(v13 + 112) = *(v2 + 96);
  v15 = *(v2 + 16);
  *(v13 + 16) = *v2;
  *(v13 + 32) = v15;
  v16 = *(v2 + 48);
  *(v13 + 48) = *(v2 + 32);
  *(v13 + 64) = v16;
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CF0, &qword_14E3C8) + 36));
  *v17 = sub_6AB60;
  v17[1] = v13;
  v17[2] = 0;
  v17[3] = 0;
  return sub_6AAC0(v2, v19);
}

uint64_t sub_69D0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  v23[0] = v3;
  sub_6B8FC(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  sub_6B6A4(v4);

  swift_getKeyPath();
  v5 = swift_allocObject();
  v6 = *(a1 + 5);
  *(v5 + 80) = *(a1 + 4);
  *(v5 + 96) = v6;
  *(v5 + 112) = a1[12];
  v7 = *(a1 + 1);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v7;
  v8 = *(a1 + 3);
  *(v5 + 48) = *(a1 + 2);
  *(v5 + 64) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_6B878;
  *(v9 + 24) = v5;
  sub_6AAC0(a1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D10, &qword_14E430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D18, &qword_14E438);
  sub_1D4A4(&qword_1C3D20, &qword_1C3D10, &qword_14E430, &protocol conformance descriptor for [A]);
  sub_1D4A4(&qword_1C3D28, &qword_1C3D18, &qword_14E438, &protocol conformance descriptor for TupleView<A>);
  sub_143DFC();
  swift_getKeyPath();
  v23[0] = v3;
  sub_141A4C();

  v10 = *(v3 + 128);
  swift_getKeyPath();
  v23[0] = v10;
  sub_6B8FC(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

  sub_141A4C();

  swift_beginAccess();
  v11 = *(v10 + 56);

  swift_getKeyPath();
  sub_141A4C();

  v12 = *(v3 + 128);
  swift_getKeyPath();

  sub_141A4C();

  swift_beginAccess();
  v13 = *(v12 + 56);

  sub_143F7C();
  v15 = v14;
  v17 = v16;
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D30, &qword_14E490) + 36));
  *v18 = v11;
  v18[1] = v13;
  v18[2] = v15;
  v18[3] = v17;
  swift_getKeyPath();
  sub_141A4C();

  v19 = *(v3 + 128);
  swift_getKeyPath();

  sub_141A4C();

  swift_beginAccess();
  v20 = *(v19 + 64);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D38, &unk_14E4C0);
  *(a2 + *(result + 36)) = v20;
  return result;
}

uint64_t sub_6A198@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, float a4@<S0>)
{
  v49 = a3;
  v50 = a1;
  v6 = type metadata accessor for NowPlayingSpeedPresetView(0);
  __chkstk_darwin(v6);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v44 - v9;
  __chkstk_darwin(v11);
  v47 = &v44 - v12;
  v13 = *a2;
  v55 = *(a2 + 1);
  LOBYTE(v56) = *(a2 + 24);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408, &qword_14B390);
  sub_143DBC();
  v45 = *(&v51 + 1);
  v14 = v51;
  v15 = v52;
  v16 = *(a2 + 3);
  v55 = *(a2 + 2);
  v56 = v16;
  v57 = *(a2 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D40, &qword_14E4D0);
  sub_143DBC();
  v44 = v51;
  v17 = v52;
  v18 = v53;
  v19 = v54;
  v55 = *(a2 + 9);
  *&v56 = a2[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CF8, &qword_14E3D0);
  sub_143CBC();
  v20 = BYTE8(v51);
  v21 = v51 == v50;
  v46 = v13;
  *v10 = v13;
  *(v10 + 1) = v14;
  *(v10 + 2) = v45;
  v10[24] = v15;
  *(v10 + 2) = v44;
  *(v10 + 6) = v17;
  *(v10 + 7) = v18;
  v10[64] = v19;
  *(v10 + 17) = a4;
  v10[72] = v21 & ~v20;
  v22 = v6[9];
  *&v10[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128, &unk_149890);
  swift_storeEnumTagMultiPayload();
  v23 = &v10[v6[10]];
  *&v51 = 0x3FF0000000000000;
  sub_143CAC();
  v24 = *(&v55 + 1);
  *v23 = v55;
  *(v23 + 1) = v24;
  v25 = &v10[v6[11]];
  *&v51 = 0;
  sub_143CAC();
  v26 = *(&v55 + 1);
  *v25 = v55;
  *(v25 + 1) = v26;
  v27 = &v10[v6[12]];
  *&v51 = 0;
  *(&v51 + 1) = 0xE000000000000000;
  sub_143CAC();
  v28 = v56;
  *v27 = v55;
  *(v27 + 2) = v28;
  v29 = v6[13];
  if (qword_1BFF90 != -1)
  {
    swift_once();
  }

  v30 = &v10[v29];
  *&v51 = qword_1C3D90;

  sub_143CAC();
  v31 = *(&v55 + 1);
  *v30 = v55;
  *(v30 + 1) = v31;
  v32 = &v10[v6[14]];
  *&v51 = 0;
  sub_143CAC();
  v33 = *(&v55 + 1);
  *v32 = v55;
  *(v32 + 1) = v33;
  v34 = &v10[v6[15]];
  *&v51 = 0x3FF0000000000000;
  sub_143CAC();
  v35 = *(&v55 + 1);
  *v34 = v55;
  *(v34 + 1) = v35;
  v36 = v47;
  sub_6B954(v10, v47);
  swift_getKeyPath();
  v37 = v46;
  *&v55 = v46;
  sub_6B8FC(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v38 = *(*(v37 + 32) + 16) - 1;
  LOBYTE(v34) = v38 <= v50;
  v39 = v38 > v50;
  v40 = v48;
  sub_6B9B8(v36, v48);
  v41 = v49;
  sub_6B9B8(v40, v49);
  v42 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D48, &qword_14E510) + 48);
  *v42 = 0;
  *(v42 + 8) = v39;
  *(v42 + 9) = v34;
  sub_6BA1C(v36);
  return sub_6BA1C(v40);
}

uint64_t sub_6A5FC(uint64_t a1, float *a2, uint64_t a3)
{
  sub_6A668(*a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CF8, &qword_14E3D0);
  return sub_143CCC();
}

void sub_6A668(float a1)
{
  v3 = *v1;
  swift_getKeyPath();
  v23 = v3;
  sub_6B8FC(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v5 = sub_55D54(v4);

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = sub_6AB70(*(v5 + 16), 0);
    v8 = sub_6B590(&v23, v7 + 8, v6, v5);
    sub_7774(v23);
    if (v8 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_5:
  v23 = v7;

  sub_6ABF4(&v23);

  v9 = v23;
  v10 = *(v23 + 2);
  if (!v10)
  {
    v11 = 0;
    v14 = 1;
LABEL_12:

    swift_getKeyPath();
    v23 = v3;
    sub_141A4C();

    v16 = sub_55D54(v15);

    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = sub_6AB70(*(v16 + 16), 0);
      v19 = sub_6B590(&v23, v18 + 8, v17, v16);
      sub_7774(v23);
      if (v19 == v17)
      {
        goto LABEL_16;
      }

      __break(1u);
    }

    v18 = _swiftEmptyArrayStorage;
LABEL_16:
    v23 = v18;

    sub_6ABF4(&v23);

    v20 = *(v23 + 2);
    while (v20)
    {
      v21 = v20 - 1;
      v22 = *&v23[4 * v20-- + 28];
      if (v22 <= a1)
      {

        if (v14)
        {
          return;
        }

        goto LABEL_22;
      }
    }

    v21 = 0;

    if (v14)
    {
      return;
    }

LABEL_22:
    if (v21 == v11)
    {
      sub_141F5C();
      sub_141EDC();
    }

    return;
  }

  v11 = 0;
  while (v11 < *(v9 + 2))
  {
    v12 = *&v9[4 * v11 + 32];
    sub_141F5C();
    sub_141EDC();
    v14 = v12 != v13;
    if (v12 == v13)
    {
      goto LABEL_12;
    }

    if (v10 == ++v11)
    {
      v11 = 0;
      goto LABEL_12;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_6A978(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  sub_6B8FC(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  sub_6A668(*(v1 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CF8, &qword_14E3D0);
  return sub_143CCC();
}

uint64_t sub_6AAF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3CD8, &qword_14E390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_6AB70(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D08, &qword_14FDF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void sub_6ABF4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_6B690(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_14537C(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_144A1C();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = (v7 + 4);
    v16[1] = v6;
    sub_6AD28(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_6AD28(float **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_6B478(v8);
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_6B284((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 4;
          v17 += 4;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_6B48C(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v30 = *(v8 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      v8 = sub_6B48C((v30 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 32;
    v33 = &v8[16 * v5 + 32];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[16 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[16 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[16 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[16 * v5 - 16];
        v72 = *v71;
        v73 = &v32[16 * v5];
        v74 = *(v73 + 1);
        sub_6B284((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v8 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[16 * v5], v73 + 16, 16 * (v75 - 1 - v5));
        *(v8 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[16 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[16 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 4;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_6B284(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

char *sub_6B48C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D00, &unk_14E400);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_6B590(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_6B6A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = &_swiftEmptyArrayStorage[4];
    v6 = a1 + 32;
    while (1)
    {
      v7 = *(v6 + 4 * v4);
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D50, &qword_14E518);
        v11 = swift_allocObject();
        v12 = _swift_stdlib_malloc_size(v11);
        v13 = v12 - 32;
        if (v12 < 32)
        {
          v13 = v12 - 17;
        }

        v14 = v13 >> 4;
        v11[2] = v10;
        v11[3] = 2 * (v13 >> 4);
        v15 = (v11 + 4);
        v16 = v2[3] >> 1;
        v17 = 16 * v16;
        if (v2[2])
        {
          if (v11 != v2 || v15 >= &v2[v17 / 8 + 4])
          {
            memmove(v11 + 4, v2 + 4, v17);
          }

          v2[2] = 0;
        }

        v5 = (v15 + v17);
        v3 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

        v2 = v11;
      }

      v19 = __OFSUB__(v3--, 1);
      if (v19)
      {
        break;
      }

      *v5 = v4;
      *(v5 + 2) = v7;
      v5 += 2;
      if (v1 == ++v4)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:
  v20 = v2[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v19 = __OFSUB__(v21, v3);
    v22 = v21 - v3;
    if (v19)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v2[2] = v22;
  }
}

uint64_t objectdestroyTm_4()
{

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_6B880()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_6B8FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_6B954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingSpeedPresetView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6B9B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingSpeedPresetView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6BA1C(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingSpeedPresetView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_6BA7C()
{
  result = qword_1C3D58;
  if (!qword_1C3D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3CF0, &qword_14E3C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3CD8, &qword_14E390);
    sub_1D4A4(&qword_1C3CE8, &qword_1C3CD8, &qword_14E390, &protocol conformance descriptor for HStack<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3D58);
  }

  return result;
}

uint64_t sub_6BB94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a1;
  v78 = a3;
  v80 = sub_142C1C();
  v79 = *(v80 - 8);
  __chkstk_darwin(v80);
  v77 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_14315C();
  v70 = *(v76 - 8);
  v71 = v76 - 8;
  v69 = v70;
  __chkstk_darwin(v76 - 8);
  v75 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NowPlayingSpeedPresetView(0);
  v7 = v6 - 8;
  v65 = *(v6 - 8);
  __chkstk_darwin(v6);
  v61[1] = v8;
  v63 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_142B3C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3EB8, &qword_14E5F0);
  v61[2] = v12;
  __chkstk_darwin(v12);
  v14 = (v61 - v13);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3EC0, &qword_14E5F8);
  __chkstk_darwin(v67);
  v62 = v61 - v15;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3EC8, &qword_14E600);
  __chkstk_darwin(v68);
  v66 = v61 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3ED0, &qword_14E608);
  __chkstk_darwin(v17 - 8);
  v72 = v61 - v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3ED8, &qword_14E610);
  __chkstk_darwin(v73);
  v74 = v61 - v19;
  *v14 = sub_143EAC();
  v14[1] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3EE0, &unk_14E618);
  sub_6C644(a2, v14 + *(v21 + 44));
  v22 = (a2 + *(v7 + 48));
  v23 = *v22;
  v24 = v22[1];
  *&v86 = v23;
  *(&v86 + 1) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8, &qword_14A850);
  sub_143CBC();
  v25 = v83;
  sub_143F7C();
  v27 = v26;
  v29 = v28;
  v30 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3EE8, &unk_14E628) + 36));
  *v30 = v25;
  v30[1] = v25;
  v30[2] = v27;
  v30[3] = v29;
  sub_143EAC();
  sub_142A9C();
  v31 = (v14 + *(v12 + 36));
  v32 = v84;
  *v31 = v83;
  v31[1] = v32;
  v31[2] = v85;
  v33 = *(a2 + 40);
  v34 = *(a2 + 64);
  *&v86 = *(a2 + 32);
  *(&v86 + 1) = v33;
  v87 = *(a2 + 48);
  LOBYTE(v88) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D40, &qword_14E4D0);
  sub_143D9C();
  v86 = v81;
  LOBYTE(v87) = v82;
  v35 = v9;
  (*(v10 + 16))(v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v64, v9);
  v36 = v63;
  sub_6B9B8(a2, v63);
  v37 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v38 = *(v65 + 80);
  v65 = v38 | 7;
  v39 = swift_allocObject();
  (*(v10 + 32))(v39 + v37, v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v35);
  sub_6B954(v36, v39 + ((v11 + v38 + v37) & ~v38));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3B98, qword_14E590);
  sub_6F2E0();
  sub_6F4B0();
  v40 = v62;
  sub_143B5C();

  sub_15340(v14, &qword_1C3EB8, &qword_14E5F0);
  sub_143EAC();
  sub_142A9C();
  v41 = (v40 + *(v67 + 36));
  v42 = v87;
  *v41 = v86;
  v41[1] = v42;
  v41[2] = v88;
  LOBYTE(v81) = *(a2 + 72);
  LODWORD(v11) = v81;
  sub_6B9B8(a2, v36);
  v43 = (v38 + 16) & ~v38;
  v44 = v66;
  v45 = swift_allocObject();
  sub_6B954(v36, v45 + v43);
  sub_6F568();
  sub_143B6C();

  sub_15340(v40, &qword_1C3EC0, &qword_14E5F8);
  sub_6B9B8(a2, v36);
  v46 = swift_allocObject();
  v47 = v46 + v43;
  v48 = v69;
  v49 = v36;
  v50 = v68;
  sub_6B954(v49, v47);
  v51 = (v44 + *(v50 + 36));
  *v51 = sub_701FC;
  v51[1] = v46;
  v51[2] = 0;
  v51[3] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F38, &qword_14E648);
  v52 = swift_allocObject();
  if (v11 == 1)
  {
    *(v52 + 16) = xmmword_14E520;
    sub_14311C();
  }

  else
  {
    *(v52 + 16) = xmmword_14A710;
  }

  sub_14313C();
  *&v81 = v52;
  sub_6FB74(&qword_1C3F40, &type metadata accessor for AccessibilityTraits, &protocol conformance descriptor for AccessibilityTraits);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F48, &qword_14E650);
  sub_1D4A4(&qword_1C3F50, &qword_1C3F48, &qword_14E650, &protocol conformance descriptor for [A]);
  v53 = v75;
  v54 = v76;
  sub_14515C();
  sub_6F874();
  v55 = v72;
  sub_143ACC();
  (*(v48 + 8))(v53, v54);
  sub_15340(v44, &qword_1C3EC8, &qword_14E600);
  v56 = v74;
  v57 = &v74[*(v73 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F60, &qword_14E658);
  sub_142D6C();
  *v57 = 0;
  sub_6F950(v55, v56);
  v58 = v77;
  sub_142D8C();
  sub_6F9C0();
  sub_6FB74(&qword_1C3F80, &type metadata accessor for LiftHoverEffect, &protocol conformance descriptor for LiftHoverEffect);
  v59 = v80;
  sub_1438CC();
  (*(v79 + 8))(v58, v59);
  return sub_15340(v56, &qword_1C3ED8, &qword_14E610);
}

uint64_t sub_6C644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F98, &qword_14E6C8);
  __chkstk_darwin(v3 - 8);
  v67 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = (&v51 - v6);
  v7 = sub_143F3C();
  v61 = *(v7 - 8);
  v62 = v7;
  __chkstk_darwin(v7);
  v60 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1429CC();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v51 - v14;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FA0, &qword_14E6D0);
  __chkstk_darwin(v54);
  v57 = (&v51 - v16);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FA8, &qword_14E6D8);
  __chkstk_darwin(v55);
  v59 = &v51 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FB0, &qword_14E6E0);
  __chkstk_darwin(v58);
  v64 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v56 = &v51 - v20;
  __chkstk_darwin(v21);
  v63 = &v51 - v22;
  v53 = type metadata accessor for NowPlayingSpeedPresetView(0);
  v65 = a1;
  sub_FA9DC(v15);
  v23 = enum case for ColorScheme.dark(_:);
  v24 = *(v10 + 104);
  v24(v12, enum case for ColorScheme.dark(_:), v9);
  LOBYTE(a1) = sub_1429BC();
  v25 = *(v10 + 8);
  v25(v12, v9);
  v25(v15, v9);
  if ((a1 & 1) == 0)
  {
    if (qword_1BFF80 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (qword_1BFF70 != -1)
  {
LABEL_11:
    swift_once();
  }

LABEL_5:

  v52 = sub_142AAC();
  v26 = v65;
  sub_FA9DC(v15);
  v24(v12, v23, v9);
  v27 = sub_1429BC();
  v25(v12, v9);
  v25(v15, v9);
  if (v27)
  {
    v28 = v62;
    v29 = v60;
    if (qword_1BFF78 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v28, qword_1C3D68);
    v31 = v61;
    (*(v61 + 16))(v29, v30, v28);
  }

  else
  {
    v29 = v60;
    v31 = v61;
    v28 = v62;
    (*(v61 + 104))(v60, enum case for BlendMode.normal(_:), v62);
  }

  v32 = v57;
  (*(v31 + 32))(v57 + *(v54 + 36), v29, v28);
  *v32 = v52;
  v33 = (v26 + *(v53 + 44));
  v34 = *v33;
  v35 = v33[1];
  *&v70 = v34;
  *(&v70 + 1) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8, &qword_14A850);
  sub_143CBC();
  v36 = v69;
  v37 = v59;
  sub_10358(v32, v59, &qword_1C3FA0, &qword_14E6D0);
  *(v37 + *(v55 + 36)) = v36;
  sub_143EAC();
  sub_142A9C();
  v38 = v56;
  sub_10358(v37, v56, &qword_1C3FA8, &qword_14E6D8);
  v39 = (v38 + *(v58 + 36));
  v40 = v71;
  *v39 = v70;
  v39[1] = v40;
  v39[2] = v72;
  v41 = v63;
  sub_10358(v38, v63, &qword_1C3FB0, &qword_14E6E0);
  v42 = sub_143EAC();
  v43 = v66;
  *v66 = v42;
  *(v43 + 8) = v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FB8, &qword_14E6E8);
  sub_6CDE8(v26, v43 + *(v45 + 44));
  v46 = v64;
  sub_1D19C(v41, v64, &qword_1C3FB0, &qword_14E6E0);
  v47 = v67;
  sub_1D19C(v43, v67, &qword_1C3F98, &qword_14E6C8);
  v48 = v68;
  sub_1D19C(v46, v68, &qword_1C3FB0, &qword_14E6E0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FC0, &qword_14E6F0);
  sub_1D19C(v47, v48 + *(v49 + 48), &qword_1C3F98, &qword_14E6C8);
  sub_15340(v43, &qword_1C3F98, &qword_14E6C8);
  sub_15340(v41, &qword_1C3FB0, &qword_14E6E0);
  sub_15340(v47, &qword_1C3F98, &qword_14E6C8);
  return sub_15340(v46, &qword_1C3FB0, &qword_14E6E0);
}

uint64_t sub_6CDE8@<X0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v93 = sub_1429CC();
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v91 = v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v90 = v76 - v5;
  v6 = sub_143F3C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v94 = v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FC8, &qword_14E6F8);
  __chkstk_darwin(v95);
  v10 = v76 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FD0, &qword_14E700);
  __chkstk_darwin(v11 - 8);
  v98 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v97 = v76 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FD8, &qword_14E708);
  __chkstk_darwin(v89);
  v96 = v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v76 - v17;
  v19 = type metadata accessor for NowPlayingSpeedPresetView(0);
  v20 = (a1 + v19[12]);
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[2];
  v87 = v21;
  *&v105 = v21;
  *(&v105 + 1) = v22;
  v86 = v22;
  v85 = v23;
  *&v106 = v23;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F88, &qword_14E688);
  sub_143CBC();
  v105 = v101;
  v24 = sub_9CCC();
  v78 = sub_1437EC();
  v77 = v25;
  v27 = v26;
  v88 = v28;
  v29 = (a1 + v19[13]);
  v31 = *v29;
  v30 = v29[1];
  v83 = v31;
  *&v105 = v31;
  *(&v105 + 1) = v30;
  v82 = v30;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F90, &unk_14E690);
  sub_143CBC();
  v32 = v101;
  v33 = (a1 + v19[14]);
  v34 = *v33;
  v35 = v33[1];
  *&v105 = v34;
  *(&v105 + 1) = v35;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8, &qword_14A850);
  sub_143CBC();
  v36 = v101;
  sub_143EAC();
  sub_142A9C();
  v37 = v27 & 1;
  LOBYTE(v105) = v37;
  if (qword_1BFFB8 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v6, qword_1C3DC8);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3FE0, &qword_14E710);
  v40 = *(v7 + 16);
  v41 = &v18[*(v39 + 36)];
  v80 = v6;
  v76[1] = v7 + 16;
  v76[0] = v40;
  v40(v41, v38, v6);
  v42 = v77;
  *v18 = v78;
  *(v18 + 1) = v42;
  v18[16] = v37;
  *(v18 + 17) = *v104;
  *(v18 + 5) = *&v104[3];
  *(v18 + 3) = v88;
  *(v18 + 4) = v32;
  *(v18 + 5) = v36;
  v43 = v102;
  *(v18 + 3) = v101;
  *(v18 + 4) = v43;
  *(v18 + 5) = v103;
  v44 = sub_141F5C();
  v45 = *a1;
  swift_getKeyPath();
  *&v105 = v45;
  sub_6FB74(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v88 = v44;
  v46 = sub_141EFC();
  v47 = &v18[*(v89 + 52)];
  *v47 = v46;
  v47[1] = v48;
  *&v105 = v87;
  *(&v105 + 1) = v86;
  *&v106 = v85;
  sub_143CBC();
  v105 = v100;
  v89 = v24;
  v86 = sub_1437EC();
  v85 = v49;
  v51 = v50;
  v87 = v52;
  v53 = *(a1 + 17);
  *&v105 = v83;
  *(&v105 + 1) = v82;
  sub_143CBC();
  v84 = v100;
  v54 = (a1 + v19[15]);
  v55 = *v54;
  v56 = v54[1];
  *&v105 = v55;
  *(&v105 + 1) = v56;
  sub_143CBC();
  v57 = v100;
  sub_143EAC();
  sub_142A9C();
  v58 = v51 & 1;
  LOBYTE(v100) = v58;
  v59 = v90;
  sub_FA9DC(v90);
  v60 = v92;
  v61 = v91;
  v62 = v93;
  (*(v92 + 104))(v91, enum case for ColorScheme.dark(_:), v93);
  LOBYTE(v38) = sub_1429BC();
  v63 = *(v60 + 8);
  v63(v61, v62);
  v63(v59, v62);
  if (v38)
  {
    v64 = v80;
    v65 = v94;
    if (qword_1BFF98 != -1)
    {
      swift_once();
    }

    v66 = __swift_project_value_buffer(v64, qword_1C3D98);
    (v76[0])(v65, v66, v64);
  }

  else
  {
    v65 = v94;
    v64 = v80;
    (*(v7 + 104))(v94, enum case for BlendMode.normal(_:), v80);
  }

  (*(v7 + 32))(&v10[*(v95 + 36)], v65, v64);
  *(v10 + 6) = v57;
  v67 = v106;
  *(v10 + 56) = v105;
  v68 = v85;
  *v10 = v86;
  *(v10 + 1) = v68;
  v10[16] = v58;
  *(v10 + 17) = *v108;
  *(v10 + 5) = *&v108[3];
  *(v10 + 3) = v87;
  *(v10 + 8) = v53;
  *(v10 + 5) = v84;
  *(v10 + 72) = v67;
  *(v10 + 88) = v107;
  *&v100 = sub_141EFC();
  *(&v100 + 1) = v69;
  sub_6FBC4();
  v70 = v97;
  sub_1439FC();

  sub_15340(v10, &qword_1C3FC8, &qword_14E6F8);
  v71 = v96;
  sub_1D19C(v18, v96, &qword_1C3FD8, &qword_14E708);
  v72 = v98;
  sub_1D19C(v70, v98, &qword_1C3FD0, &qword_14E700);
  v73 = v99;
  sub_1D19C(v71, v99, &qword_1C3FD8, &qword_14E708);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4030, &unk_14E740);
  sub_1D19C(v72, v73 + *(v74 + 48), &qword_1C3FD0, &qword_14E700);
  sub_15340(v70, &qword_1C3FD0, &qword_14E700);
  sub_15340(v18, &qword_1C3FD8, &qword_14E708);
  sub_15340(v72, &qword_1C3FD0, &qword_14E700);
  return sub_15340(v71, &qword_1C3FD8, &qword_14E708);
}

void sub_6D7B0(uint64_t a1, uint64_t a2, uint64_t a3, float *a4)
{
  v6 = sub_1432CC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *a2;
  v11 = *(a2 + 8);
  LOBYTE(a2) = *(a2 + 16);
  strcpy(v29, "speed_controls");
  HIBYTE(v29[1]) = -18;
  sub_14342C();
  sub_142B2C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v7 + 8))(v9, v6);
  if ((a2 & 1) == 0)
  {
    v32.origin.x = v13;
    v32.origin.y = v15;
    v32.size.width = v17;
    v32.size.height = v19;
    v31.x = v10;
    v31.y = v11;
    if (CGRectContainsPoint(v32, v31))
    {
      v20 = *a4;
      swift_getKeyPath();
      v29[0] = v20;
      sub_6FB74(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
      sub_141A4C();

      v21 = a4[17];
      if (*(v20 + 24) != v21)
      {
        v22 = *(a4 + 2);
        v23 = *(a4 + 24);
        v29[0] = *(a4 + 1);
        v29[1] = v22;
        v30 = v23;
        v28[23] = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408, &qword_14B390);
        sub_143DAC();
        sub_1140EC(LODWORD(v21) | 0x100000000);
        if (*(v20 + 24) == v21)
        {
          *(v20 + 24) = v21;
          sub_114488();
        }

        else
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          *&v28[-16] = v20;
          *&v28[-8] = v21;
          v29[0] = v20;
          sub_141A3C();
        }

        sub_6DB50(*(a4 + 72));
        swift_getKeyPath();
        v29[0] = v20;
        sub_141A4C();

        v29[0] = v20;
        swift_getKeyPath();
        sub_141A6C();

        v25 = *(v20 + 120);
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          __break(1u);
        }

        else
        {
          *(v20 + 120) = v27;
          v29[0] = v20;
          swift_getKeyPath();
          sub_141A5C();
        }
      }
    }
  }
}

double sub_6DB50(char a1)
{
  if (a1)
  {
    sub_143EDC();
    sub_143EFC();
  }

  else
  {
    v1 = sub_143EDC();
  }

  __chkstk_darwin(v1);
  sub_142B7C();

  return result;
}

uint64_t sub_6DC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4048, &qword_14E7C8);
  __chkstk_darwin(v4);
  v6 = &v17 - v5;
  if (qword_1BFF88 != -1)
  {
    swift_once();
  }

  v7 = qword_1C3D88;
  KeyPath = swift_getKeyPath();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4050, &unk_14E800);
  (*(*(v9 - 8) + 16))(v6, a1, v9);
  v10 = &v6[*(v4 + 36)];
  *v10 = KeyPath;
  v10[1] = v7;
  sub_6FEC4();

  sub_143B4C();
  sub_15340(v6, &qword_1C4048, &qword_14E7C8);
  v11 = swift_getKeyPath();
  v12 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4068, &qword_14E840) + 36);
  *v12 = v11;
  *(v12 + 8) = 1;
  *(v12 + 16) = 0;
  v13 = swift_getKeyPath();
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4070, &qword_14E878) + 36));
  *v14 = v13;
  v14[1] = 0x3FE0000000000000;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4078, &unk_14E880);
  v16 = a2 + *(result + 36);
  *v16 = 0;
  *(v16 + 8) = 1;
  return result;
}

uint64_t sub_6DE88(uint64_t *a1)
{
  v2 = sub_1429CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for NowPlayingSpeedPresetView(0);
  v10 = (a1 + v9[10]);
  v11 = *v10;
  v12 = v10[1];
  *&v48 = v11;
  *(&v48 + 1) = v12;
  v46 = 0x3FF36DB6DB6DB6DBLL;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8, &qword_14A850);
  sub_143CCC();
  v44 = v9[9];
  sub_FA9DC(v8);
  v41 = enum case for ColorScheme.dark(_:);
  v14 = *(v3 + 104);
  v42 = v3 + 104;
  v43 = v14;
  v14(v5);
  v15 = sub_1429BC();
  v16 = *(v3 + 8);
  v40 = v16;
  v16(v5, v2);
  v16(v8, v2);
  v17 = 0.6;
  v18 = (a1 + v9[11]);
  v19 = *v18;
  v20 = v18[1];
  if ((v15 & 1) == 0)
  {
    v17 = 1.0;
  }

  *&v48 = v19;
  *(&v48 + 1) = v20;
  v46 = *&v17;
  v45 = v13;
  sub_143CCC();
  v39 = sub_141F5C();
  v21 = *a1;
  swift_getKeyPath();
  *&v48 = v21;
  sub_6FB74(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v22 = sub_141EFC();
  v23 = a1 + v9[12];
  v24 = *v23;
  v25 = *(v23 + 2);
  v48 = v24;
  v49 = v25;
  v46 = v22;
  v47 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F88, &qword_14E688);
  sub_143CCC();
  sub_FA9DC(v8);
  v43(v5, v41, v2);
  LOBYTE(v21) = sub_1429BC();
  v27 = v40;
  v40(v5, v2);
  v27(v8, v2);
  if (v21)
  {
    if (qword_1BFFA8 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  if (qword_1BFFB0 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:

  v29 = (a1 + v9[13]);
  v31 = *v29;
  v30 = v29[1];
  *&v48 = v31;
  *(&v48 + 1) = v30;
  v46 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F90, &unk_14E690);
  sub_143CCC();
  v32 = (a1 + v9[14]);
  v33 = *v32;
  v34 = v32[1];
  *&v48 = v33;
  *(&v48 + 1) = v34;
  v46 = 0x3FF0000000000000;
  sub_143CCC();
  v35 = (a1 + v9[15]);
  v36 = *v35;
  v37 = v35[1];
  *&v48 = v36;
  *(&v48 + 1) = v37;
  v46 = 0;
  return sub_143CCC();
}

uint64_t sub_6E2DC(uint64_t a1)
{
  v2 = sub_1429CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v36 - v7;
  v9 = type metadata accessor for NowPlayingSpeedPresetView(0);
  v10 = (a1 + v9[10]);
  v36 = a1;
  v11 = *v10;
  v12 = v10[1];
  *&v43 = v11;
  *(&v43 + 1) = v12;
  v41 = 0x3FF0000000000000;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8, &qword_14A850);
  sub_143CCC();
  v39 = v9[9];
  sub_FA9DC(v8);
  v38 = enum case for ColorScheme.dark(_:);
  v37 = *(v3 + 104);
  v37(v5);
  sub_1429BC();
  v14 = *(v3 + 8);
  v14(v5, v2);
  v14(v8, v2);
  v15 = (v36 + v9[11]);
  v16 = *v15;
  v17 = v15[1];
  *&v43 = v16;
  *(&v43 + 1) = v17;
  v40 = v13;
  v41 = 0x3FB999999999999ALL;
  v18 = v36;
  sub_143CCC();
  sub_141F5C();
  v19 = sub_141EEC();
  v20 = v18 + v9[12];
  v21 = *v20;
  v22 = *(v20 + 16);
  v43 = v21;
  v44 = v22;
  v41 = v19;
  v42 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F88, &qword_14E688);
  sub_143CCC();
  sub_FA9DC(v8);
  (v37)(v5, v38, v2);
  v24 = sub_1429BC();
  v14(v5, v2);
  v14(v8, v2);
  if (v24)
  {
    if (qword_1BFF90 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_1BFFA0 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  v26 = (v18 + v9[13]);
  v28 = *v26;
  v27 = v26[1];
  *&v43 = v28;
  *(&v43 + 1) = v27;
  v41 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3F90, &unk_14E690);
  sub_143CCC();
  v29 = (v18 + v9[14]);
  v30 = *v29;
  v31 = v29[1];
  *&v43 = v30;
  *(&v43 + 1) = v31;
  v41 = 0;
  sub_143CCC();
  v32 = (v18 + v9[15]);
  v33 = *v32;
  v34 = v32[1];
  *&v43 = v33;
  *(&v43 + 1) = v34;
  v41 = 0x3FF0000000000000;
  return sub_143CCC();
}

uint64_t sub_6E6A0()
{
  result = sub_143BDC();
  qword_1C3D60 = result;
  return result;
}

uint64_t sub_6E6D4()
{
  result = sub_143BBC();
  qword_1C3D80 = result;
  return result;
}

uint64_t sub_6E6F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C2B60, &qword_14E280);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_14372C();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, enum case for Font.TextStyle.caption(_:), v3, v5);
  v8 = enum case for Font.Design.rounded(_:);
  v9 = sub_1436BC();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v2, v8, v9);
  (*(v10 + 56))(v2, 0, 1, v9);
  sub_1436EC();
  v11 = sub_1436FC();
  sub_15340(v2, &unk_1C2B60, &qword_14E280);
  result = (*(v4 + 8))(v7, v3);
  qword_1C3D88 = v11;
  return result;
}

uint64_t sub_6E8F4()
{
  result = sub_143BDC();
  qword_1C3D90 = result;
  return result;
}

uint64_t sub_6E928(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C39A0, qword_14DDC0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_6E9F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C39A0, qword_14DDC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for NowPlayingSpeedPresetView(uint64_t a1)
{
  result = qword_1C3E38;
  if (!qword_1C3E38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_6EAF4(uint64_t a1)
{
  type metadata accessor for NowPlayingPlaybackControlsViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_6ED5C(319, &qword_1C3E48, &type metadata for Bool, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_6ECA0(319);
      if (v3 <= 0x3F)
      {
        sub_6ED04(319);
        if (v4 <= 0x3F)
        {
          sub_6ED5C(319, &unk_1C3320, &type metadata for CGFloat, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            sub_6ED5C(319, &qword_1C3E58, &type metadata for String, &type metadata accessor for State);
            if (v6 <= 0x3F)
            {
              sub_6ED5C(319, &unk_1C3E60, &type metadata for Color, &type metadata accessor for State);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_6ECA0(uint64_t a1)
{
  if (!qword_1C3E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3B98, qword_14E590);
    v1 = sub_143DDC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C3E50);
    }
  }
}

void sub_6ED04(uint64_t a1)
{
  if (!qword_1C3A10)
  {
    sub_1429CC();
    v1 = sub_142A0C();
    if (!v2)
    {
      atomic_store(v1, &qword_1C3A10);
    }
  }
}

void sub_6ED5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_6EDDC(__n128 a1)
{
  result = sub_143BFC();
  qword_1C3DB0 = result;
  return result;
}

uint64_t sub_6EDFC()
{
  result = sub_143BBC();
  qword_1C3DB8 = result;
  return result;
}

uint64_t sub_6EE1C()
{
  result = sub_143BDC();
  qword_1C3DC0 = result;
  return result;
}

uint64_t sub_6EE50@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_6B9B8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_6B954(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_6EF40;
  a2[1] = v7;
  return result;
}

uint64_t sub_6EF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NowPlayingSpeedPresetView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_6BB94(a1, v6, a2);
}

uint64_t sub_6EFC0(__n128 a1)
{
  v2 = sub_142B3C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = type metadata accessor for NowPlayingSpeedPresetView(0);
  v8 = *(*(v7 - 8) + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = *(*(v7 - 8) + 64);
  (*(v3 + 8))(v1 + v5, v2);

  v11 = *(v7 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128, &unk_149890);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1429CC();
    (*(*(v12 - 8) + 8))(v1 + v9 + v11, v12);
  }

  else
  {
  }

  return _swift_deallocObject(v1, v9 + v10, v4 | v8 | 7);
}

void sub_6F1FC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v6 = *(sub_142B3C() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for NowPlayingSpeedPresetView(0) - 8);
  v10 = (v3 + ((v7 + v8 + *(v9 + 80)) & ~*(v9 + 80)));

  sub_6D7B0(a1, a2, v3 + v7, v10);
}

unint64_t sub_6F2E0()
{
  result = qword_1C3EF0;
  if (!qword_1C3EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3EB8, &qword_14E5F0);
    sub_6F36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3EF0);
  }

  return result;
}

unint64_t sub_6F36C()
{
  result = qword_1C3EF8;
  if (!qword_1C3EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3EE8, &unk_14E628);
    sub_6F3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3EF8);
  }

  return result;
}

unint64_t sub_6F3F8()
{
  result = qword_1C3F00;
  if (!qword_1C3F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3F08, &qword_14E638);
    sub_1D4A4(&qword_1C3F10, &qword_1C3F18, &qword_14E640, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3F00);
  }

  return result;
}

unint64_t sub_6F4B0()
{
  result = qword_1C3F20;
  if (!qword_1C3F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3B98, qword_14E590);
    sub_6FB74(&qword_1C3F28, type metadata accessor for CGPoint, &protocol conformance descriptor for CGPoint);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3F20);
  }

  return result;
}

unint64_t sub_6F568()
{
  result = qword_1C3F30;
  if (!qword_1C3F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3EC0, &qword_14E5F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3EB8, &qword_14E5F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3B98, qword_14E590);
    sub_6F2E0();
    sub_6F4B0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3F30);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for NowPlayingSpeedPresetView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = *(v1 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128, &unk_149890);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1429CC();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

unint64_t sub_6F874()
{
  result = qword_1C3F58;
  if (!qword_1C3F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3EC8, &qword_14E600);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3EC0, &qword_14E5F8);
    sub_6F568();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3F58);
  }

  return result;
}

uint64_t sub_6F950(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3ED0, &qword_14E608);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_6F9C0()
{
  result = qword_1C3F68;
  if (!qword_1C3F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3ED8, &qword_14E610);
    sub_6FA78();
    sub_1D4A4(&qword_1C3F78, &qword_1C3F60, &qword_14E658, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3F68);
  }

  return result;
}

unint64_t sub_6FA78()
{
  result = qword_1C3F70;
  if (!qword_1C3F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3ED0, &qword_14E608);
    sub_6F874();
    sub_6FB74(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3F70);
  }

  return result;
}

uint64_t sub_6FB74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_6FBC4()
{
  result = qword_1C3FE8;
  if (!qword_1C3FE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3FC8, &qword_14E6F8);
    sub_6FC50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3FE8);
  }

  return result;
}

unint64_t sub_6FC50()
{
  result = qword_1C3FF0;
  if (!qword_1C3FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C3FF8, &qword_14E718);
    sub_6FCDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C3FF0);
  }

  return result;
}

unint64_t sub_6FCDC()
{
  result = qword_1C4000;
  if (!qword_1C4000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4008, &qword_14E720);
    sub_6FD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4000);
  }

  return result;
}

unint64_t sub_6FD68()
{
  result = qword_1C4010;
  if (!qword_1C4010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4018, &qword_14E728);
    sub_1D4A4(&qword_1C4020, &qword_1C4028, &unk_14E730, &protocol conformance descriptor for IDView<A, B>);
    sub_1D4A4(&qword_1C3558, &qword_1C3560, &qword_14D7E8, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4010);
  }

  return result;
}

unint64_t sub_6FEC4()
{
  result = qword_1C4058;
  if (!qword_1C4058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4048, &qword_14E7C8);
    sub_1D4A4(&qword_1C4060, &qword_1C4050, &unk_14E800, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1D4A4(&qword_1C12A8, &qword_1C2BE0, &qword_14D110, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4058);
  }

  return result;
}

unint64_t sub_6FFBC()
{
  result = qword_1C4080;
  if (!qword_1C4080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4078, &unk_14E880);
    sub_70048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4080);
  }

  return result;
}

unint64_t sub_70048()
{
  result = qword_1C4088;
  if (!qword_1C4088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4070, &qword_14E878);
    sub_70100();
    sub_1D4A4(&qword_1C40A8, &qword_1C40B0, &qword_14E898, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4088);
  }

  return result;
}

unint64_t sub_70100()
{
  result = qword_1C4090;
  if (!qword_1C4090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4068, &qword_14E840);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4048, &qword_14E7C8);
    sub_6FEC4();
    swift_getOpaqueTypeConformance2();
    sub_1D4A4(&qword_1C4098, &qword_1C40A0, &qword_14E890, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4090);
  }

  return result;
}

uint64_t sub_70200(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_70248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_702B4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v9 = sub_143C3C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C40B8, &qword_14E958);
  v33 = *(v13 - 8);
  v34 = v13;
  __chkstk_darwin(v13);
  v15 = &v29 - v14;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C40C0, &qword_14E960);
  __chkstk_darwin(v32);
  v31 = &v29 - v16;
  v37 = a3;
  v38 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C40C8, qword_14E968);
  sub_143CBC();
  if (!v36)
  {
    v17 = a1;
  }

  sub_143C1C();
  (*(v10 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v9);
  v18 = sub_143C5C();

  (*(v10 + 8))(v12, v9);
  v36 = a2;
  v37 = v18;
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  sub_70E90();
  sub_70EDC();
  v20 = a2;
  v21 = a1;
  v30 = a3;

  sub_143B5C();

  v22 = swift_allocObject();
  *(v22 + 2) = v21;
  *(v22 + 3) = v20;
  *(v22 + 4) = a3;
  *(v22 + 5) = a4;
  v23 = v31;
  (*(v33 + 32))(v31, v15, v34);
  v24 = (v23 + *(v32 + 36));
  *v24 = sub_70F34;
  v24[1] = v22;
  v24[2] = 0;
  v24[3] = 0;
  sub_70F40(v23, v35);
  v25 = v20;
  v26 = v21;
  v27 = v30;
}

void sub_70640(uint64_t *a1, uint64_t *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  sub_70E90();
  if ((sub_144FFC() & 1) == 0)
  {

    sub_706D8(a3, a4, a5, a6);
  }
}

void sub_706D8(void *a1, void *a2, void *a3, uint64_t a4)
{
  v30 = sub_14243C();
  v8 = *(v30 - 8);
  __chkstk_darwin(v30);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_14240C();

  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = sub_14242C();
  v15 = sub_144C5C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = v13;
    v17 = v16;
    v18 = swift_slowAlloc();
    v29 = a3;
    v19 = v18;
    v20 = swift_slowAlloc();
    aBlock[0] = v20;
    *v17 = 136315651;
    *(v17 + 4) = sub_ED2A4(0xD000000000000017, 0x8000000000162970, aBlock);
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    *(v17 + 22) = 2113;
    *(v17 + 24) = v12;
    *v19 = v12;
    v21 = v12;
    _os_log_impl(&dword_0, v14, v15, "%s Loading artwork for catalog=%{private,mask.hash}@.", v17, 0x20u);
    sub_71024(v19);
    a3 = v29;

    __swift_destroy_boxed_opaque_existential_0(v20);

    v13 = v28;
  }

  (*(v8 + 8))(v10, v30);
  v22 = swift_allocObject();
  v22[2] = v11;
  v22[3] = v12;
  v22[4] = a3;
  v22[5] = a4;
  aBlock[4] = sub_71000;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_70DE8;
  aBlock[3] = &block_descriptor_4;
  v23 = _Block_copy(aBlock);
  v24 = v11;
  v25 = v12;
  v26 = v13;

  [v25 requestImageWithCompletion:v23];
  _Block_release(v23);
}

uint64_t sub_709DC(void *a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v12 = sub_14243C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  if (a2)
  {
    sub_14240C();

    v19 = a3;
    v20 = a4;
    v21 = a5;
    v22 = sub_14242C();
    v23 = sub_144C3C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v44[0] = v26;
      *v24 = 136315651;
      *(v24 + 4) = sub_ED2A4(0xD000000000000017, 0x8000000000162970, v44);
      *(v24 + 12) = 2160;
      *(v24 + 14) = 1752392040;
      *(v24 + 22) = 2113;
      *(v24 + 24) = v20;
      *v25 = v20;
      v27 = v20;
      _os_log_impl(&dword_0, v22, v23, "%s Unable to load artwork for catalog=%{private,mask.hash}@.", v24, 0x20u);
      sub_71024(v25);

      __swift_destroy_boxed_opaque_existential_0(v26);
    }

    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v42 = v12;
    sub_14240C();

    v29 = a3;
    v30 = a4;
    v31 = a5;
    v32 = sub_14242C();
    v33 = sub_144C5C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = a1;
      v36 = v35;
      v37 = swift_slowAlloc();
      v44[0] = v37;
      *v34 = 136315651;
      *(v34 + 4) = sub_ED2A4(0xD000000000000017, 0x8000000000162970, v44);
      *(v34 + 12) = 2160;
      *(v34 + 14) = 1752392040;
      *(v34 + 22) = 2113;
      *(v34 + 24) = v30;
      *v36 = v30;
      v38 = v30;
      _os_log_impl(&dword_0, v32, v33, "%s Successfully loaded artwork for catalog=%{private,mask.hash}@.", v34, 0x20u);
      sub_71024(v36);
      a1 = v41;

      __swift_destroy_boxed_opaque_existential_0(v37);
    }

    (*(v13 + 8))(v18, v42);
    v44[0] = a5;
    v44[1] = a6;
    v43 = a1;
    v39 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C40C8, qword_14E968);
    return sub_143CCC();
  }
}

void sub_70DE8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

unint64_t sub_70E90()
{
  result = qword_1C40D0;
  if (!qword_1C40D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C40D0);
  }

  return result;
}

unint64_t sub_70EDC()
{
  result = qword_1C40D8;
  if (!qword_1C40D8)
  {
    sub_70E90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C40D8);
  }

  return result;
}

uint64_t sub_70F40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C40C0, &qword_14E960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_6()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_71024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2580, &qword_14C8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_71090()
{
  result = qword_1C40E0;
  if (!qword_1C40E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C40C0, &qword_14E960);
    sub_70E90();
    sub_70EDC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C40E0);
  }

  return result;
}

uint64_t sub_7118C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for NowPlayingBannerView(0);
  __chkstk_darwin(v3);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 48);
  *v5 = sub_E882C();
  v5[1] = v1;
  v7 = *(v3 + 24);
  *(v5 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F48, &qword_14AC30);
  swift_storeEnumTagMultiPayload();
  v8 = *(v3 + 28);
  *(v5 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41C0, &qword_14EAE8);
  swift_storeEnumTagMultiPayload();
  sub_747C0(&qword_1C1FD0, type metadata accessor for NowPlayingBannerView, &unk_154094);

  sub_14383C();
  sub_7435C(v5, type metadata accessor for NowPlayingBannerView);
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1FC8, &unk_14C490) + 36));
  *v9 = sub_7434C;
  v9[1] = v6;
  v9[2] = 0;
  v9[3] = 0;

  sub_142ACC();
  sub_142ADC();
  sub_142AEC();

  sub_142ACC();
  sub_142ADC();
  sub_142AEC();

  v10 = sub_142ABC();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1FB8, &qword_14C488);
  *(a1 + *(result + 36)) = v10;
  return result;
}

void sub_713E8(void *a1)
{
  v142 = *v1;
  v143 = v1;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41D8, &qword_14EB28);
  v134 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &v111 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41E0, &qword_14EB30);
  v137 = *(v4 - 8);
  v138 = v4;
  __chkstk_darwin(v4);
  v135 = &v111 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41E8, &qword_14EB38);
  v140 = *(v6 - 8);
  v141 = v6;
  __chkstk_darwin(v6);
  v139 = &v111 - v7;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41F0, &qword_14EB40);
  v126 = *(v128 - 8);
  __chkstk_darwin(v128);
  v124 = &v111 - v8;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C41F8, &qword_14EB48);
  v127 = *(v129 - 8);
  __chkstk_darwin(v129);
  v125 = &v111 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0, &qword_14B8F0);
  __chkstk_darwin(v10 - 8);
  v120 = &v111 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v12 - 8);
  v118 = &v111 - v13;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4200, &qword_14EB50);
  v121 = *(v122 - 8);
  __chkstk_darwin(v122);
  v119 = &v111 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4208, &qword_14EB58);
  __chkstk_darwin(v15 - 8);
  v130 = &v111 - v16;
  v17 = sub_14216C();
  v18 = *(v17 - 8);
  v131 = v17;
  v132 = v18;
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v117 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v123 = &v111 - v21;
  v22 = sub_14243C();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v111 - v27;
  *&v30 = __chkstk_darwin(v29).n128_u64[0];
  v32 = &v111 - v31;
  if (!a1)
  {
    goto LABEL_6;
  }

  v33 = [a1 podcast];
  if (!v33)
  {
    goto LABEL_6;
  }

  v34 = v33;
  v35 = sub_144C0C();
  v37 = v36;

  if (v37)
  {
    goto LABEL_6;
  }

  v116 = v35;
  if (v35 < 0)
  {
    __break(1u);
    goto LABEL_42;
  }

  v38 = sub_144C0C();
  if (v39)
  {
LABEL_6:
    sub_1423CC();
    v40 = sub_14242C();
    v41 = sub_144C5C();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&v144 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_ED2A4(0xD00000000000001DLL, 0x8000000000162A50, &v144);
      _os_log_impl(&dword_0, v40, v41, "%s missing episode adam id, resetting banner state.", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
    }

    (*(v23 + 8))(v25, v22);
    v44 = v143;
    v45 = v143[6];
    sub_E91C8();
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_74FA4();
      swift_unknownObjectRelease();
    }

    v44[12] = 0;

    v46 = (v45 + OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_adamIdForCurrentBanner);
    v47 = *(v45 + OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_adamIdForCurrentBanner + 8);
    *v46 = 0;
    v46[1] = 0;
    if (v47)
    {

      *(v45 + 64) = 0;
    }

    return;
  }

  if (v38 < 0)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v113 = v38;
  *&v144 = v38;
  v48 = sub_14538C();
  v50 = v48;
  v51 = v143[6];
  v52 = (v51 + OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_adamIdForCurrentBanner);
  v53 = *(v51 + OBJC_IVAR____TtCC12NowPlayingUI26NowPlayingBannerController9Presenter_adamIdForCurrentBanner + 8);
  if (v53)
  {
    if (v48 == *v52 && v53 == v49 || (v54 = v49, v55 = sub_1453BC(), v49 = v54, (v55 & 1) != 0))
    {
      if (v143[12])
      {

        return;
      }
    }
  }

  v112 = a1;
  v115 = v49;
  Strong = swift_unknownObjectWeakLoadStrong();
  v114 = v51;
  v57 = v115;
  if (Strong)
  {

    sub_74FA4();
    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_E91C8();
  v58 = *v52;
  v59 = v52[1];
  *v52 = v50;
  v52[1] = v57;
  v60 = v112;
  if (!v59)
  {
    goto LABEL_28;
  }

  if (v50 == v58 && v59 == v115)
  {

    goto LABEL_29;
  }

  v61 = sub_1453BC();

  if ((v61 & 1) == 0)
  {
LABEL_28:
    *(v114 + 64) = 0;
  }

LABEL_29:
  sub_1423AC();
  swift_allocObject();

  v62 = sub_14239C();
  v116 = sub_14238C();
  if (sub_141D8C())
  {
    sub_1423CC();
    v63 = sub_14242C();
    v64 = sub_144C5C();
    v65 = os_log_type_enabled(v63, v64);
    v115 = v62;
    if (v65)
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *&v144 = v67;
      *v66 = 136315138;
      *(v66 + 4) = sub_ED2A4(0xD00000000000001DLL, 0x8000000000162A50, &v144);
      _os_log_impl(&dword_0, v63, v64, "%s episode change detected. Observing for upsells and links.", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
    }

    (*(v23 + 8))(v32, v22);
    sub_77A30(v143 + 7, v60);
    v68 = [v60 priceType];
    v69 = v132;
    if (v68)
    {
      v70 = v68;
      sub_1448DC();

      v71 = v130;
      sub_14215C();
      v72 = v131;
      if ((*(v69 + 48))(v71, 1, v131) != 1)
      {
        v73 = v69;
        v74 = *(v69 + 32);
        v75 = v123;
        v74(v123, v71, v72);
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4270, &qword_14EB88);
        v76 = sub_144ADC();
        (*(*(v76 - 8) + 56))(v118, 1, 1, v76);
        v77 = v143[2];
        v78 = v117;
        (*(v69 + 16))(v117, v75, v72);
        sub_1DB40((v143 + 7), &v144);
        v79 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v80 = swift_allocObject();
        v81 = v113;
        *(v80 + 16) = v77;
        *(v80 + 24) = v81;
        v74((v80 + v79), v78, v72);
        sub_2B5CC(&v144, v80 + ((v19 + v79 + 7) & 0xFFFFFFFFFFFFFFF8));

        *&v144 = sub_14266C();
        sub_20FCC();
        v82 = sub_144D8C();
        v145 = v82;
        v83 = sub_144D3C();
        v84 = v120;
        (*(*(v83 - 8) + 56))(v120, 1, 1, v83);
        sub_1D4A4(&qword_1C4278, &qword_1C4270, &qword_14EB88, &protocol conformance descriptor for Future<A, B>);
        sub_747C0(&qword_1C1740, sub_20FCC, &protocol conformance descriptor for OS_dispatch_queue);
        v85 = v119;
        sub_14283C();
        sub_15340(v84, &qword_1C16E0, &qword_14B8F0);

        sub_1D4A4(&qword_1C4280, &qword_1C4200, &qword_14EB50, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
        v86 = v122;
        v87 = sub_14273C();
        (*(v121 + 8))(v85, v86);
        (*(v73 + 8))(v123, v72);
LABEL_40:
        *&v144 = v116;
        v145 = v87;

        v132 = v87;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4210, &qword_14EB60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4238, &qword_14EB78);
        sub_1D4A4(&qword_1C4218, &qword_1C4210, &qword_14EB60, &protocol conformance descriptor for AnyPublisher<A, B>);
        sub_1D4A4(&qword_1C4240, &qword_1C4238, &qword_14EB78, &protocol conformance descriptor for AnyPublisher<A, B>);
        v97 = v133;
        sub_14278C();

        v98 = v143;
        v99 = v143[4];
        v100 = swift_allocObject();
        v101 = v142;
        *(v100 + 16) = v99;
        *(v100 + 24) = v101;
        v102 = swift_allocObject();
        *(v102 + 16) = sub_744A0;
        *(v102 + 24) = v100;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4248, &qword_14EB80);
        sub_1D4A4(&qword_1C4250, &qword_1C41D8, &qword_14EB28, &protocol conformance descriptor for Publishers.CombineLatest<A, B>);
        v104 = v135;
        v103 = v136;
        sub_1427BC();

        (*(v134 + 8))(v97, v103);
        sub_1D4A4(&qword_1C4258, &qword_1C41E0, &qword_14EB30, &protocol conformance descriptor for Publishers.Map<A, B>);
        sub_1D4A4(&qword_1C4260, &qword_1C4248, &qword_14EB80, &protocol conformance descriptor for AnyPublisher<A, B>);
        v105 = v138;
        v106 = v139;
        sub_14272C();
        (*(v137 + 8))(v104, v105);
        *(swift_allocObject() + 16) = v101;
        v107 = swift_allocObject();
        v108 = v114;
        *(v107 + 16) = sub_74560;
        *(v107 + 24) = v108;
        sub_1D4A4(&qword_1C4268, &qword_1C41E8, &qword_14EB38, &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>);

        v109 = v141;
        v110 = sub_1427DC();

        (*(v140 + 8))(v106, v109);
        v98[12] = v110;

        return;
      }
    }

    else
    {
      v71 = v130;
      (*(v132 + 56))(v130, 1, 1, v131);
    }

    sub_15340(v71, &qword_1C4208, &qword_14EB58);
    *&v144 = _swiftEmptyArrayStorage;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4220, &qword_14EB68);
    v93 = v124;
    sub_14264C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4228, &qword_14EB70);
    v94 = v125;
    v95 = v128;
    sub_14262C();
    (*(v126 + 8))(v93, v95);
    sub_1D4A4(&qword_1C4230, &qword_1C41F8, &qword_14EB48, &protocol conformance descriptor for Result<A, B>.Publisher);
    v96 = v129;
    v87 = sub_14273C();
    (*(v127 + 8))(v94, v96);
    goto LABEL_40;
  }

  sub_1423CC();
  v88 = sub_14242C();
  v89 = sub_144C5C();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    *&v144 = v91;
    *v90 = 136315138;
    *(v90 + 4) = sub_ED2A4(0xD00000000000001DLL, 0x8000000000162A50, &v144);
    _os_log_impl(&dword_0, v88, v89, "%s episode change detected. Observing for upsells.", v90, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v91);
  }

  (*(v23 + 8))(v28, v22);
  *&v144 = v116;
  *(swift_allocObject() + 16) = v142;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4210, &qword_14EB60);
  sub_1D4A4(&qword_1C4218, &qword_1C4210, &qword_14EB60, &protocol conformance descriptor for AnyPublisher<A, B>);
  v92 = sub_1427DC();

  v143[12] = v92;
}