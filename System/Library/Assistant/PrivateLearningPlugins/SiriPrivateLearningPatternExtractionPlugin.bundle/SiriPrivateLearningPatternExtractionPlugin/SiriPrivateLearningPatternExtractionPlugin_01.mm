uint64_t sub_106A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    while (1)
    {
      sub_19248(v2, &v5);
      sub_19248(&v5, v7);
      sub_385C(&qword_3A178, &qword_2BC58);
      sub_2A674();
      if (swift_dynamicCast())
      {
        break;
      }

      sub_BA2C(&v5);
      v2 += 40;
      if (!--v1)
      {
        goto LABEL_5;
      }
    }

    sub_192AC(&v5, v7);
  }

  else
  {
LABEL_5:
    v8 = 0;
    memset(v7, 0, sizeof(v7));
  }

  sub_BAC4(v7, &v5, &qword_3A180, &unk_2BC60);
  if (v6)
  {
    sub_385C(&qword_3A178, &qword_2BC58);
    sub_2A674();
    if (swift_dynamicCast())
    {

      sub_2A2E4();

      sub_BB4C(v7, &qword_3A180, &unk_2BC60);
      return v5;
    }

    v4 = v7;
  }

  else
  {
    sub_BB4C(v7, &qword_3A180, &unk_2BC60);
    v4 = &v5;
  }

  sub_BB4C(v4, &qword_3A180, &unk_2BC60);
  return 0;
}

uint64_t sub_10868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_19248(v4, &v7);
      sub_19248(&v7, v9);
      sub_385C(&qword_3A178, &qword_2BC58);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_BA2C(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_192AC(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_BAC4(v9, &v7, &qword_3A180, &unk_2BC60);
  if (v8)
  {
    sub_385C(&qword_3A178, &qword_2BC58);
    a2(0);
    if (swift_dynamicCast())
    {

      sub_2A2E4();

      sub_BB4C(v9, &qword_3A180, &unk_2BC60);
      return v7;
    }

    v6 = v9;
  }

  else
  {
    sub_BB4C(v9, &qword_3A180, &unk_2BC60);
    v6 = &v7;
  }

  sub_BB4C(v6, &qword_3A180, &unk_2BC60);
  return 2;
}

uint64_t sub_10A34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 32;
    while (1)
    {
      sub_19248(v4, &v7);
      sub_19248(&v7, v9);
      sub_385C(&qword_3A178, &qword_2BC58);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_BA2C(&v7);
      v4 += 40;
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    sub_192AC(&v7, v9);
  }

  else
  {
LABEL_5:
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  sub_BAC4(v9, &v7, &qword_3A180, &unk_2BC60);
  if (v8)
  {
    sub_385C(&qword_3A178, &qword_2BC58);
    a2(0);
    if (swift_dynamicCast())
    {

      sub_2A2E4();

      sub_BB4C(v9, &qword_3A180, &unk_2BC60);
      return v7;
    }

    v6 = v9;
  }

  else
  {
    sub_BB4C(v9, &qword_3A180, &unk_2BC60);
    v6 = &v7;
  }

  sub_BB4C(v6, &qword_3A180, &unk_2BC60);
  return 0;
}

uint64_t sub_10C04@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = a1 + 32;
    while (1)
    {
      sub_19248(v6, &v11);
      sub_19248(&v11, v13);
      sub_385C(&qword_3A178, &qword_2BC58);
      a2(0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_BA2C(&v11);
      v6 += 40;
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    sub_192AC(&v11, v13);
  }

  else
  {
LABEL_5:
    v14 = 0;
    memset(v13, 0, sizeof(v13));
  }

  sub_BAC4(v13, &v11, &qword_3A180, &unk_2BC60);
  if (!v12)
  {
    sub_BB4C(v13, &qword_3A180, &unk_2BC60);
    v8 = &v11;
LABEL_12:
    sub_BB4C(v8, &qword_3A180, &unk_2BC60);
    v7 = 1;
    goto LABEL_13;
  }

  sub_385C(&qword_3A178, &qword_2BC58);
  a2(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v8 = v13;
    goto LABEL_12;
  }

  sub_2A2E4();

  sub_BB4C(v13, &qword_3A180, &unk_2BC60);
  v7 = 0;
LABEL_13:
  v9 = sub_2A0A4();
  return (*(*(v9 - 8) + 56))(a3, v7, 1, v9);
}

uint64_t sub_10E1C(uint64_t result)
{
  v1 = result;
  if ((result & 0xC000000000000001) != 0)
  {
    sub_2AAA4();
    type metadata accessor for PatternItem();
    sub_19420(&qword_39AC0, type metadata accessor for PatternItem, &unk_2C060);
    result = sub_2A9C4();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(result + 32);
    v2 = result + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(result + 56);
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    if (!v13)
    {
      return sub_EA78(v1);
    }

    while (1)
    {
      sub_26738(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_2AAD4())
      {
        type metadata accessor for PatternItem();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      return sub_EA78(v1);
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      return sub_EA78(v1);
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_11010()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2A854();
  v2 = [v0 BOOLForKey:v1];

  byte_39F68 = v2;
}

BOOL sub_110A0(void *a1)
{
  v1 = a1[1];
  v2 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  return v2 != 0;
}

uint64_t sub_110C0@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_2A6A4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2A6D4();
  swift_allocObject();
  sub_2A6C4();
  v7 = sub_2A6B4();

  sub_2A704();
  swift_allocObject();
  sub_2A6F4();
  v8 = sub_2A6E4();

  v9 = sub_104D4(v8, &type metadata accessor for CommonContactFeature.RecipientContactReferences);

  if (!v9)
  {
    goto LABEL_6;
  }

  if (!*(v9 + 16))
  {

LABEL_6:

    *a2 = 0;
    *(a2 + 8) = 0xE000000000000000;
    goto LABEL_7;
  }

  (*(v4 + 16))(v6, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

  v10 = sub_2A694();
  v12 = v11;
  (*(v4 + 8))(v6, v3);
  v13 = sub_106A0(v7);
  if (v14)
  {

    *a2 = v10;
    *(a2 + 8) = v12;
LABEL_7:
    *(a2 + 16) = 0;
    goto LABEL_8;
  }

  v16 = v13;
  v17 = sub_10868(v7, &type metadata accessor for CommonFeature.DonatedBySiri);

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;
  if (v17 != 2)
  {
    *(a2 + 24) = v17 & 1;
    return result;
  }

LABEL_8:
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_11300(uint64_t a1, char **a2)
{
  sub_2A504();
  swift_allocObject();
  sub_2A4F4();
  v3 = sub_2A4E4();

  sub_2A534();
  swift_allocObject();
  sub_2A524();
  v4 = sub_2A514();

  v5 = sub_10A34(v3, &type metadata accessor for CreateNoteEventFeature.NoteTextContent);
  if (v6 && (v7 = v5, v8 = v6, v9 = sub_10868(v3, &type metadata accessor for CreateNoteEventFeature.DonatedBySiri), , v9 != 2))
  {
    sub_385C(&qword_3A170, &qword_2BC50);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2B5D0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    v11 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1F2D0(0, *(v11 + 2) + 1, 1, v11);
      *a2 = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1F2D0((v13 > 1), v14 + 1, 1, v11);
      *a2 = v11;
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[24 * v14];
    *(v15 + 4) = v10;
    *(v15 + 5) = 0;
    v15[48] = 1;
    v15[49] = v9 & 1;
    v15[50] = 10;
  }

  else
  {
  }

  v16 = sub_10A34(v4, &type metadata accessor for DeleteNoteEventFeature.NoteTextContent);
  if (!v17)
  {
  }

  v18 = v16;
  v19 = v17;
  v20 = sub_10868(v4, &type metadata accessor for DeleteNoteEventFeature.DonatedBySiri);

  if (v20 == 2)
  {
  }

  sub_385C(&qword_3A170, &qword_2BC50);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2B5D0;
  *(v22 + 32) = v18;
  *(v22 + 40) = v19;
  v23 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v23;
  if ((result & 1) == 0)
  {
    result = sub_1F2D0(0, *(v23 + 16) + 1, 1, v23);
    v23 = result;
    *a2 = result;
  }

  v25 = *(v23 + 16);
  v24 = *(v23 + 24);
  if (v25 >= v24 >> 1)
  {
    result = sub_1F2D0((v24 > 1), v25 + 1, 1, v23);
    v23 = result;
    *a2 = result;
  }

  *(v23 + 16) = v25 + 1;
  v26 = v23 + 24 * v25;
  *(v26 + 32) = v22;
  *(v26 + 40) = 0;
  *(v26 + 48) = 1;
  *(v26 + 49) = v20 & 1;
  *(v26 + 50) = 11;
  return result;
}

uint64_t sub_11624(uint64_t a1, char **a2)
{
  v69 = a2;
  v2 = sub_385C(&qword_3A0E8, &qword_2BBF8);
  v3 = __chkstk_darwin(v2 - 8);
  v70 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = (&v65 - v5);
  v7 = sub_2A0A4();
  v67 = *(v7 - 8);
  v68 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v65 - v11;
  sub_2A564();
  swift_allocObject();
  sub_2A554();
  v13 = sub_2A544();

  sub_2A5C4();
  swift_allocObject();
  sub_2A5B4();
  v14 = sub_2A5A4();

  sub_2A594();
  swift_allocObject();
  sub_2A584();
  v15 = sub_2A574();

  v16 = sub_10A34(v13, &type metadata accessor for MTCreateAlarmEventFeature.AlarmName);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    v20 = sub_10868(v13, &type metadata accessor for MTCreateAlarmEventFeature.DonatedBySiri);
    if (v20 == 2)
    {
    }

    else
    {
      v21 = v20;
      v66 = v10;
      sub_10C04(v13, &type metadata accessor for MTCreateAlarmEventFeature.AlarmTime, v6);

      v23 = v67;
      v22 = v68;
      if ((*(v67 + 48))(v6, 1, v68) == 1)
      {

        sub_BB4C(v6, &qword_3A0E8, &qword_2BBF8);
        v10 = v66;
      }

      else
      {
        (*(v23 + 32))(v12, v6, v22);
        sub_385C(&qword_3A170, &qword_2BC50);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_2BAD0;
        *(v24 + 32) = v18;
        *(v24 + 40) = v19;
        *(v24 + 48) = sub_2A014();
        *(v24 + 56) = v25;
        v26 = v69;
        v27 = *v69;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v26 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = sub_1F2D0(0, *(v27 + 2) + 1, 1, v27);
          *v69 = v27;
        }

        v10 = v66;
        v30 = *(v27 + 2);
        v29 = *(v27 + 3);
        if (v30 >= v29 >> 1)
        {
          v63 = sub_1F2D0((v29 > 1), v30 + 1, 1, v27);
          *v69 = v63;
        }

        (*(v67 + 8))(v12, v68);
        v31 = *v69;
        *(v31 + 2) = v30 + 1;
        v32 = &v31[24 * v30];
        *(v32 + 4) = v24;
        *(v32 + 5) = 0;
        v32[48] = 1;
        v32[49] = v21 & 1;
        v32[50] = 7;
      }
    }
  }

  else
  {
  }

  v33 = sub_10A34(v14, &type metadata accessor for MTUpdateAlarmEventFeature.AlarmName);
  v35 = v70;
  if (v34)
  {
    v36 = v33;
    v37 = v34;
    v38 = sub_10868(v14, &type metadata accessor for MTUpdateAlarmEventFeature.DonatedBySiri);
    if (v38 == 2)
    {
    }

    else
    {
      v39 = v38;
      sub_10C04(v14, &type metadata accessor for MTUpdateAlarmEventFeature.AlarmTime, v35);

      v41 = v67;
      v40 = v68;
      if ((*(v67 + 48))(v35, 1, v68) == 1)
      {

        sub_BB4C(v35, &qword_3A0E8, &qword_2BBF8);
      }

      else
      {
        (*(v41 + 32))(v10, v35, v40);
        sub_385C(&qword_3A170, &qword_2BC50);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_2BAD0;
        *(v42 + 32) = v36;
        *(v42 + 40) = v37;
        *(v42 + 48) = sub_2A014();
        *(v42 + 56) = v43;
        v44 = v69;
        v45 = *v69;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        *v44 = v45;
        if ((v46 & 1) == 0)
        {
          v45 = sub_1F2D0(0, *(v45 + 2) + 1, 1, v45);
          *v69 = v45;
        }

        v48 = *(v45 + 2);
        v47 = *(v45 + 3);
        if (v48 >= v47 >> 1)
        {
          v64 = sub_1F2D0((v47 > 1), v48 + 1, 1, v45);
          *v69 = v64;
        }

        (*(v41 + 8))(v10, v40);
        v49 = *v69;
        *(v49 + 2) = v48 + 1;
        v50 = &v49[24 * v48];
        *(v50 + 4) = v42;
        *(v50 + 5) = 0;
        v50[48] = 1;
        v50[49] = v39 & 1;
        v50[50] = 9;
      }
    }
  }

  else
  {
  }

  v51 = sub_10A34(v15, &type metadata accessor for MTToggleAlarmEventFeature.AlarmName);
  if (!v52)
  {
  }

  v53 = v51;
  v54 = v52;
  v55 = sub_10868(v15, &type metadata accessor for MTToggleAlarmEventFeature.DonatedBySiri);

  if (v55 == 2)
  {
  }

  sub_385C(&qword_3A170, &qword_2BC50);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_2B5D0;
  *(v57 + 32) = v53;
  *(v57 + 40) = v54;
  v58 = v69;
  v59 = *v69;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v58 = v59;
  if ((result & 1) == 0)
  {
    result = sub_1F2D0(0, *(v59 + 16) + 1, 1, v59);
    v59 = result;
    *v69 = result;
  }

  v61 = *(v59 + 16);
  v60 = *(v59 + 24);
  if (v61 >= v60 >> 1)
  {
    result = sub_1F2D0((v60 > 1), v61 + 1, 1, v59);
    v59 = result;
    *v69 = result;
  }

  *(v59 + 16) = v61 + 1;
  v62 = v59 + 24 * v61;
  *(v62 + 32) = v57;
  *(v62 + 40) = 0;
  *(v62 + 48) = 1;
  *(v62 + 49) = v55 & 1;
  *(v62 + 50) = 8;
  return result;
}

uint64_t sub_11D80(uint64_t a1, char **a2)
{
  sub_2A4D4();
  swift_allocObject();
  sub_2A4C4();
  v3 = sub_2A4B4();

  sub_2A5F4();
  swift_allocObject();
  sub_2A5E4();
  v4 = sub_2A5D4();

  v5 = sub_10A34(v3, &type metadata accessor for AddTaskEventFeature.TargetTaskListTitle);
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = v5;
  v8 = v6;
  v9 = sub_10868(v3, &type metadata accessor for AddTaskEventFeature.DonatedBySiri);
  if (v9 == 2)
  {

LABEL_15:

    goto LABEL_16;
  }

  v10 = v9;
  v11 = sub_104D4(v3, &type metadata accessor for AddTaskEventFeature.TaskContents);

  if (!v11)
  {
    goto LABEL_15;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1F1C4(0, *(v11 + 16) + 1, 1, v11);
  }

  v12 = *(v11 + 16);
  v13 = *(v11 + 24);
  v14 = v12 + 1;
  if (v12 >= v13 >> 1)
  {
    v32 = v11;
    v33 = *(v11 + 16);
    v34 = sub_1F1C4((v13 > 1), v12 + 1, 1, v32);
    v12 = v33;
    v11 = v34;
  }

  *(v11 + 16) = v14;
  v15 = v11 + 16 * v12;
  *(v15 + 32) = v7;
  *(v15 + 40) = v8;
  v16 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_1F2D0(0, *(v16 + 2) + 1, 1, v16);
    *a2 = v16;
  }

  v19 = *(v16 + 2);
  v18 = *(v16 + 3);
  if (v19 >= v18 >> 1)
  {
    v16 = sub_1F2D0((v18 > 1), v19 + 1, 1, v16);
    *a2 = v16;
  }

  *(v16 + 2) = v19 + 1;
  v20 = &v16[24 * v19];
  *(v20 + 4) = v11;
  *(v20 + 5) = 0;
  v20[48] = 1;
  v20[49] = v10 & 1;
  v20[50] = 5;
LABEL_16:
  v21 = sub_10868(v4, &type metadata accessor for SetTaskAttributeFeature.DonatedBySiri);
  if (v21 == 2)
  {
  }

  v23 = v21;
  v24 = sub_10A34(v4, &type metadata accessor for SetTaskAttributeFeature.TaskContents);
  v26 = v25;

  if (v26)
  {
    sub_385C(&qword_3A170, &qword_2BC50);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_2B5D0;
    *(v27 + 32) = v24;
    *(v27 + 40) = v26;
    v28 = *a2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v28;
    if ((result & 1) == 0)
    {
      result = sub_1F2D0(0, *(v28 + 16) + 1, 1, v28);
      v28 = result;
      *a2 = result;
    }

    v30 = *(v28 + 16);
    v29 = *(v28 + 24);
    if (v30 >= v29 >> 1)
    {
      result = sub_1F2D0((v29 > 1), v30 + 1, 1, v28);
      v28 = result;
      *a2 = result;
    }

    *(v28 + 16) = v30 + 1;
    v31 = v28 + 24 * v30;
    *(v31 + 32) = v27;
    *(v31 + 40) = 0;
    *(v31 + 48) = 1;
    *(v31 + 49) = v23 & 1;
    *(v31 + 50) = 6;
  }

  return result;
}

void sub_12104(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = sub_385C(&qword_3A0E8, &qword_2BBF8);
  __chkstk_darwin(v8 - 8);
  v10 = &v71 - v9;
  v11 = sub_2A0A4();
  __chkstk_darwin(v11);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _swiftEmptyArrayStorage;
  v92 = _swiftEmptyArrayStorage;
  v83 = *(a1 + 16);
  if (v83)
  {
    v71 = a3;
    v84 = 0;
    v16 = 0;
    v17 = a2[12];
    v81 = a2[13];
    v82 = v17;
    v79 = (v12 + 48);
    v80 = a1 + 32;
    v72 = (v12 + 32);
    v78 = a2[14];
    v76 = (v12 + 8);
    v73 = xmmword_2B5D0;
    v77 = v11;
    v75 = v10;
    while (1)
    {
      v89 = v16;
      v40 = (v80 + 16 * v16);
      v41 = *v40;
      v42 = v40[1];

      v90 = v41;
      sub_2A634();
      v43 = *v79;
      if ((*v79)(v10, 1, v11) == 1)
      {
        sub_2A094();
        if (v43(v10, 1, v11) != 1)
        {
          sub_BB4C(v10, &qword_3A0E8, &qword_2BBF8);
        }
      }

      else
      {
        (*v72)(v14, v10, v11);
      }

      v91 = v82;
      sub_2A334();

      v44 = sub_2A384();

      v88 = sub_17710(v44);

      sub_2A644();
      v45 = sub_2A2F4();

      v86 = sub_17F28(v45);
      v91 = v78;
      sub_2A374();

      v46 = sub_2A384();

      v87 = sub_17C5C(v46);

      v47 = *(v45 + 16);

      if (v47 && !v84)
      {
        v74 = v4;
        v48 = sub_2A644();
        v49 = v48;
        v85 = v48 >> 62;
        v50 = v48 & 0xFFFFFFFFFFFFFF8;
        if (v48 >> 62)
        {
          v51 = sub_2AC34();
        }

        else
        {
          v51 = *(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8));
        }

        v52 = 0;
        v53 = v49 & 0xC000000000000001;
        v84 = v49 + 32;
        while (1)
        {
          if (v51 == v52)
          {
            goto LABEL_25;
          }

          if (v53)
          {
            v54 = sub_2AB64();
          }

          else
          {
            if (v52 >= *(v50 + 16))
            {
              __break(1u);
LABEL_48:
              __break(1u);
              goto LABEL_49;
            }

            v54 = *(v49 + 8 * v52 + 32);
          }

          v55 = v54;
          v56 = sub_2A1B4();

          if (v56)
          {
            break;
          }

          if (__OFADD__(v52++, 1))
          {
            goto LABEL_48;
          }
        }

        v51 = v52;
LABEL_25:
        if (!v85)
        {
          if (v51 != *(v50 + 16))
          {
            goto LABEL_27;
          }

LABEL_33:
          v84 = 0;
          v4 = v74;
LABEL_34:

          goto LABEL_35;
        }

        if (v51 == sub_2AC34())
        {
          goto LABEL_33;
        }

LABEL_27:
        if (!v53)
        {
          if (v51 < *(v50 + 16))
          {
            v58 = *(v84 + 8 * v51);
            goto LABEL_30;
          }

LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v58 = sub_2AB64();
LABEL_30:
        v59 = v58;
        v60 = sub_2A1B4();

        v4 = v74;
        v84 = v60;
        if (v60)
        {
          goto LABEL_34;
        }

LABEL_50:
        __break(1u);
        return;
      }

LABEL_35:
      v61 = sub_184DC(v42);
      v62 = sub_18848(v42);
      sub_2A644();
      v63 = sub_2A1F4();

      if (v63)
      {
        sub_385C(&qword_3A168, &qword_2BC48);
        v64 = swift_allocObject();
        *(v64 + 1) = v73;
        v65 = sub_2A154();
        v66 = sub_F9E8(v65);

        v64[4] = v66;
        v64[5] = 0;
        *(v64 + 48) = 1;
        *(v64 + 49) = 3328;
      }

      else
      {
        v64 = _swiftEmptyArrayStorage;
      }

      v10 = v75;
      v67 = v86;
      v68 = *(v86 + 16);
      v85 = v62;
      if (v68)
      {

        __chkstk_darwin(v18);
        *(&v71 - 2) = v14;
        v19 = sub_FE6C(sub_18E34, (&v71 - 4), v67);
      }

      else
      {

        if (!v64[2])
        {

          goto LABEL_5;
        }

        __chkstk_darwin(v69);
        *(&v71 - 2) = v14;
        v19 = sub_FE6C(sub_197F0, (&v71 - 4), v64);
      }

      sub_12A38(v19);
LABEL_5:
      v16 = v89 + 1;
      sub_F198(v88);
      v21 = v20;

      v22 = sub_12A38(v21);
      __chkstk_darwin(v22);
      *(&v71 - 2) = v14;
      v23 = sub_FE6C(sub_18E54, (&v71 - 4), v87);

      sub_12A38(v23);
      v24 = sub_18E74(v42, sub_11300);
      sub_F644(v24);
      v26 = v25;

      sub_12A38(v26);
      v27 = sub_18E74(v42, sub_11D80);
      sub_F644(v27);
      v29 = v28;

      sub_12A38(v29);
      v30 = sub_18E74(v42, sub_11624);
      sub_F644(v30);
      v32 = v31;

      sub_12A38(v32);
      v33 = sub_18F40(v42);

      sub_F644(v33);
      v35 = v34;

      sub_12A38(v35);
      sub_F2F0(v61, v14);
      v37 = v36;

      sub_12A38(v37);
      sub_F2F8(v85, v14);
      v39 = v38;

      sub_12A38(v39);

      v11 = v77;
      (*v76)(v14, v77);
      if (v16 == v83)
      {
        v15 = v92;
        a3 = v71;
        v70 = v84;
        goto LABEL_46;
      }
    }
  }

  v70 = 0;
LABEL_46:
  *a3 = v15;
  a3[1] = v70;
}

uint64_t sub_12934(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v4 + v2 <= *(v3 + 24) >> 1)
  {
    if (*(v5 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = sub_2AB74();
  v3 = result;
  if (!*(v5 + 16))
  {
LABEL_10:

    if (!v2)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_385C(&qword_39898, &unk_2BCC0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_11:
    *v1 = v3;
    return result;
  }

  v6 = *(v3 + 16);
  v7 = __OFADD__(v6, v2);
  v8 = v6 + v2;
  if (!v7)
  {
    *(v3 + 16) = v8;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_12A38(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2AC34();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  if (!(*v1 >> 62))
  {
    v4 = *(&dword_10 + (*v1 & 0xFFFFFFFFFFFFFF8));
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_2AC34();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_15E6C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_17354(v8 + 8 * *(&dword_10 + v8) + 32, (*(&dword_18 + v8) >> 1) - *(&dword_10 + v8), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_12B28(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v13 = *(v7 + 24) >> 1;
  if (v13 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v14 = v8 + v6;
      }

      else
      {
        v14 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_1F414(isUniquelyReferenced_nonNull_native, v14, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v13 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v15 = *(v7 + 16);
  if (v13 - v15 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 8 * v15 + 32), (a2 + 8 * a3), 8 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v16 = *(v7 + 16);
  v17 = __OFADD__(v16, v6);
  v18 = v16 + v6;
  if (!v17)
  {
    *(v7 + 16) = v18;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_12C3C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1F414(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_12D28(uint64_t a1)
{
  v3 = 0;
  v7 = _swiftEmptyArrayStorage;
  v4 = *(a1 + 16);
  while (v4 != v3)
  {
    v5 = *(type metadata accessor for ItemSequenceData(0) - 8);
    sub_12E08(&v7, (a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3++), v1);
  }

  return v7;
}

uint64_t sub_12E08(uint64_t *a1, uint64_t *a2, void *a3)
{
  v65 = a3;
  v75 = a2;
  v5 = sub_2A0A4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ItemSequenceData(0);
  v10 = __chkstk_darwin(v9);
  v73 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  __chkstk_darwin(v12);
  v16 = (&v59 - v13);
  v17 = *a1;
  v18 = *(*a1 + 16);
  v74 = v15;
  if (!v18)
  {
    goto LABEL_49;
  }

  v61 = v14;
  v63 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v62 = *(v15 + 72);
  sub_19360(v17 + v63 + v62 * (v18 - 1), &v59 - v13);
  v64 = v9;
  v60 = *(v9 + 28);
  v72 = v8;
  sub_2A034();
  v19 = *v16;
  v20 = *v16 >> 62;
  v70 = *v16;
  v71 = v5;
  v68 = v3;
  v69 = v16;
  if (v20)
  {
    goto LABEL_43;
  }

  v21 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
  if (!v21)
  {
LABEL_44:
    (*(v6 + 8))(v72, v71);
    goto LABEL_48;
  }

LABEL_4:
  v22 = v70 & 0xC000000000000001;
  v23 = v70 & 0xFFFFFFFFFFFFFF8;
  v24 = (v70 + 32);
  while (1)
  {
    if (__OFSUB__(v21--, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      v21 = sub_2AC34();
      if (!v21)
      {
        goto LABEL_44;
      }

      goto LABEL_4;
    }

    if (v22)
    {
      v26 = sub_2AB64();
    }

    else
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v21 >= *(v23 + 16))
      {
        goto LABEL_41;
      }

      v26 = v24[v21];
    }

    if (*(*(v26 + 64) + 16))
    {
      break;
    }

    if (!v21)
    {
      goto LABEL_44;
    }
  }

  v66 = v6;
  v67 = a1;
  v6 = *v75;
  if (!(*v75 >> 62))
  {
    v27 = *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8));
    if (v27)
    {
      goto LABEL_16;
    }

LABEL_46:

    (*(v66 + 8))(v72, v71);
LABEL_47:
    a1 = v67;
LABEL_48:
    sub_193C4(v69);
LABEL_49:
    v53 = v73;
    sub_19360(v75, v73);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1F3EC(0, v17[2] + 1, 1, v17);
    }

    v55 = v17[2];
    v54 = v17[3];
    v56 = v74;
    if (v55 >= v54 >> 1)
    {
      v57 = v74;
      v58 = sub_1F3EC((v54 > 1), v55 + 1, 1, v17);
      v56 = v57;
      v17 = v58;
    }

    v17[2] = v55 + 1;
    result = sub_172F0(v53, v17 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + v56[9] * v55);
    *a1 = v17;
    return result;
  }

  v27 = sub_2AC34();
  if (!v27)
  {
    goto LABEL_46;
  }

LABEL_16:
  v28 = 0;
  while (2)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v29 = sub_2AB64();
      a1 = (v28 + 1);
      if (__OFADD__(v28, 1))
      {
        break;
      }

      goto LABEL_20;
    }

    if (v28 >= *(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_42;
    }

    v29 = *(v6 + 8 * v28 + 32);

    a1 = (v28 + 1);
    if (!__OFADD__(v28, 1))
    {
LABEL_20:
      if (*(*(v29 + 64) + 16))
      {
        goto LABEL_26;
      }

      ++v28;
      if (a1 == v27)
      {
        goto LABEL_46;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_26:
  sub_19420(&qword_3A130, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v30 = v71;
  v31 = v72;
  if (sub_2A844())
  {
    (*(v66 + 8))(v31, v30);

    goto LABEL_47;
  }

  sub_385C(&qword_398A0, &qword_2B6B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2BAE0;
  *(inited + 32) = v26;
  *(inited + 40) = v29;
  v76 = _swiftEmptyArrayStorage;

  v33 = sub_10208(inited, &v76);

  v34 = *(v33 + 2);
  if (v34)
  {
    v35 = *&v33[8 * v34 + 24];
  }

  else
  {
    v35 = -1.0;
  }

  v36 = v65[23];
  v37 = v65[24];
  v38 = sub_17088(v65 + 20, v36);
  sub_2A444();
  if (v39 >= v35)
  {
    (*(v66 + 8))(v72, v30);

    goto LABEL_47;
  }

  if (v17[2])
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = v70;
    if (isUniquelyReferenced_nonNull_native)
    {
      v41 = v17[2];
      if (v41)
      {
        goto LABEL_35;
      }

LABEL_56:
      __break(1u);
      goto LABEL_57;
    }
  }

  else
  {
    __break(1u);
  }

  v17 = sub_28E9C(v17);
  v41 = v17[2];
  if (!v41)
  {
    goto LABEL_56;
  }

LABEL_35:
  v42 = v41 - 1;
  sub_193C4(v17 + v63 + (v41 - 1) * v62);
  v17[2] = v42;
  v76 = v38;

  v38 = &v76;
  sub_12A38(v43);
  v74 = v76;
  v36 = v69;
  v30 = v69[1];
  sub_385C(&qword_3A1D8, &qword_2BCB0);
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_2B5D0;
  *(v44 + 32) = v35;
  v76 = v30;

  sub_12C3C(v44);
  v45 = *(v75[1] + 16);
  if (v45)
  {
    v46 = (2 * v45) | 1;

    sub_12B28(v47, (v47 + 4), 1, v46);
    v48 = v76;
    v49 = *(v36 + 16);
    v6 = v66;
    v50 = v61;
    (*(v66 + 16))(v61 + *(v64 + 28), v36 + v60, v71);
    *v50 = v74;
    v50[1] = v48;
    v50[2] = v49;
    v38 = v17[2];
    v36 = v17[3];
    v30 = v38 + 1;
    v51 = v49;
    v37 = v67;
    if (v38 < v36 >> 1)
    {
      goto LABEL_37;
    }
  }

  else
  {
LABEL_57:
    __break(1u);
  }

  v17 = sub_1F3EC((v36 > 1), v30, 1, v17);
LABEL_37:

  (*(v6 + 8))(v72, v71);
  v17[2] = v30;
  sub_172F0(v61, v17 + v63 + v38 * v62);
  *v37 = v17;
  return sub_193C4(v69);
}

uint64_t sub_135F0()
{
  v1[6] = v0;
  v2 = type metadata accessor for ItemSequenceData(0);
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_2A0A4();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v4 = sub_2A1E4();
  v1[16] = v4;
  v1[17] = *(v4 - 8);
  v1[18] = swift_task_alloc();
  sub_385C(&qword_3A0C0, &qword_2BBD0);
  v1[19] = swift_task_alloc();
  v5 = sub_385C(&qword_3A0C8, &qword_2BBD8);
  v1[20] = v5;
  v1[21] = *(v5 - 8);
  v1[22] = swift_task_alloc();
  v6 = sub_385C(&qword_3A0D0, &qword_2BBE0);
  v1[23] = v6;
  v1[24] = *(v6 - 8);
  v1[25] = swift_task_alloc();
  v7 = sub_385C(&qword_3A0D8, &qword_2BBE8);
  v1[26] = v7;
  v1[27] = *(v7 - 8);
  v1[28] = swift_task_alloc();
  sub_385C(&qword_3A0E0, &qword_2BBF0);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  sub_385C(&qword_3A0E8, &qword_2BBF8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v8 = sub_385C(&qword_3A0F0, &qword_2BC00);
  v1[35] = v8;
  v1[36] = *(v8 - 8);
  v1[37] = swift_task_alloc();
  v9 = sub_385C(&qword_3A0F8, &qword_2BC08);
  v1[38] = v9;
  v1[39] = *(v9 - 8);
  v1[40] = swift_task_alloc();
  v10 = sub_385C(&qword_3A100, &qword_2BC10);
  v1[41] = v10;
  v1[42] = *(v10 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();

  return _swift_task_switch(sub_13AE0, 0, 0);
}

uint64_t sub_13AE0()
{
  sub_17088((v0[6] + 56), *(v0[6] + 80));
  v1 = sub_2A344();
  if (!v1)
  {
    sub_2A254();
    v1 = sub_2A244();
  }

  v0[45] = v1;
  v3 = v0[36];
  v2 = v0[37];
  v4 = v0[35];
  v5 = v0[6];
  sub_17088((v5 + 16), *(v5 + 40));
  sub_2A4A4();
  sub_17088((v5 + 16), *(v5 + 40));
  sub_2A494();
  sub_2A2C4();
  (*(v3 + 8))(v2, v4);
  v6 = swift_task_alloc();
  v0[46] = v6;
  *v6 = v0;
  v6[1] = sub_13C90;
  v7 = v0[38];
  v8 = v0[31];

  return AnyAsyncIterator.next()(v8, v7);
}

uint64_t sub_13C90()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1585C;
  }

  else
  {
    v2 = sub_13DA4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_13DA4()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  v4 = *(v3 + 48);
  *(v0 + 384) = v4;
  *(v0 + 392) = (v3 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v4(v1, 1, v2) == 1)
  {
    v5 = &qword_3A0E0;
    v6 = &qword_2BBF0;
LABEL_5:
    sub_BB4C(v1, v5, v6);
    v11 = 0.0;
    goto LABEL_7;
  }

  v7 = *(v0 + 272);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  sub_2A1C4();
  (*(v3 + 8))(v1, v2);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v1 = *(v0 + 272);
  if (v10 == 1)
  {
    v5 = &qword_3A0E8;
    v6 = &qword_2BBF8;
    goto LABEL_5;
  }

  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  sub_2A054();
  v11 = v14;
  (*(v13 + 8))(v1, v12);
LABEL_7:
  v15 = fabs(v11);
  if (qword_39720 != -1)
  {
    swift_once();
  }

  v16 = v15 / 86400.0;
  v17 = sub_2A804();
  *(v0 + 400) = sub_B884(v17, qword_3AB28);
  v18 = sub_2A7E4();
  v19 = sub_2A9D4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    *(v20 + 4) = v16;
    _os_log_impl(&dword_0, v18, v19, "Oldest conversation relative day: %f", v20, 0xCu);
  }

  if (qword_39718 != -1)
  {
    swift_once();
  }

  if (byte_39F68)
  {
    v21 = sub_2A7E4();
    v22 = sub_2A9D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Debug mode is on for RECTIFI. Running without bookmarking.", v23, 2u);
    }

    goto LABEL_23;
  }

  sub_17088((*(v0 + 48) + 160), *(*(v0 + 48) + 184));
  sub_2A434();
  if (v16 >= v24)
  {
LABEL_23:
    v36 = sub_2A7E4();
    v37 = sub_2A9D4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "Starting to process conversations in fetchRecentSequence", v38, 2u);
    }

    v39 = *(v0 + 344);
    v40 = *(v0 + 352);
    v42 = *(v0 + 328);
    v41 = *(v0 + 336);
    v44 = *(v0 + 168);
    v43 = *(v0 + 176);
    v51 = *(v0 + 160);
    v45 = *(v0 + 48);

    (*(v41 + 16))(v39, v40, v42);
    v46 = swift_allocObject();
    *(v46 + 16) = &unk_2BC20;
    *(v46 + 24) = v45;
    sub_19318(&qword_3A108, &qword_3A100, &qword_2BC10, &protocol conformance descriptor for AnyAsyncSequence<A>);

    sub_2AC24();
    sub_19318(&qword_3A110, &qword_3A0D8, &qword_2BBE8, &protocol conformance descriptor for AsyncMapSequence<A, B>);
    sub_2A9A4();
    sub_2A3A4();
    (*(v44 + 8))(v43, v51);
    *(v0 + 408) = _swiftEmptyArrayStorage;
    v47 = sub_19318(&qword_3A118, &qword_3A0D0, &qword_2BBE0, &protocol conformance descriptor for WindowedAsyncSequence<A>.WindowedAsyncSequenceIterator);
    v48 = swift_task_alloc();
    *(v0 + 416) = v48;
    *v48 = v0;
    v48[1] = sub_144F8;
    v49 = *(v0 + 184);
    v50 = *(v0 + 152);

    return dispatch thunk of AsyncIteratorProtocol.next()(v50, v49, v47);
  }

  v25 = sub_2A7E4();
  v26 = sub_2A9D4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    *(v27 + 4) = v16;
    _os_log_impl(&dword_0, v25, v26, "PatternExtractionPlugin fetchRecentSequence did not run because oldest conversation is still %f days old", v27, 0xCu);
  }

  v28 = *(v0 + 352);
  v29 = *(v0 + 328);
  v30 = *(v0 + 336);
  v32 = *(v0 + 312);
  v31 = *(v0 + 320);
  v33 = *(v0 + 304);

  (*(v32 + 8))(v31, v33);
  (*(v30 + 8))(v28, v29);

  v34 = *(v0 + 8);

  return v34(_swiftEmptyArrayStorage);
}

uint64_t sub_144F8()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_155D0;
  }

  else
  {
    v2 = sub_1460C;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_1460C()
{
  v136 = v0;
  v1 = *(v0 + 152);
  v2 = sub_385C(&qword_3A128, &qword_2BC40);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

    v3 = sub_2A7E4();
    v4 = sub_2A9D4();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 408);
    if (v5)
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = *(v6 + 16);

      _os_log_impl(&dword_0, v3, v4, "Completed processing conversations in fetchRecentSequence. Computed a total of %ld sequences", v7, 0xCu);
    }

    else
    {
    }

    v22 = *(v0 + 408);

    v23 = sub_12D28(v22);

    v24 = sub_2A7E4();
    v25 = sub_2A9D4();
    v132 = v23;
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      *(v26 + 4) = v23[2];

      _os_log_impl(&dword_0, v24, v25, "Completed stitching conversations in fetchRecentSequence. Computed a total of %ld sequences", v26, 0xCu);
    }

    else
    {
    }

    v130 = *(v0 + 352);
    v37 = *(v0 + 328);
    v36 = *(v0 + 336);
    v39 = *(v0 + 312);
    v38 = *(v0 + 320);
    v40 = *(v0 + 304);
    v41 = *(v0 + 216);
    v42 = *(v0 + 224);
    v43 = *(v0 + 208);

    (*(v41 + 8))(v42, v43);
    (*(v39 + 8))(v38, v40);
    (*(v36 + 8))(v130, v37);

    v44 = *(v0 + 8);

    v44(v132);
    return;
  }

  v8 = *(v0 + 264);
  v9 = *(v0 + 240);
  v10 = *(v0 + 80);
  v11 = *(v0 + 88);
  v12 = *(v2 + 48);
  (*(*(v0 + 136) + 32))(*(v0 + 144), v1, *(v0 + 128));
  sub_17280(v1 + v12, v9);
  sub_2A1C4();
  v13 = *(v11 + 48);
  if (v13(v8, 1, v10) == 1)
  {
    v14 = *(v0 + 264);
    v16 = *(v0 + 136);
    v15 = *(v0 + 144);
    v17 = *(v0 + 128);
    sub_BB4C(*(v0 + 240), &qword_3A0E0, &qword_2BBF0);
    (*(v16 + 8))(v15, v17);
    sub_BB4C(v14, &qword_3A0E8, &qword_2BBF8);
LABEL_6:
    v18 = sub_19318(&qword_3A118, &qword_3A0D0, &qword_2BBE0, &protocol conformance descriptor for WindowedAsyncSequence<A>.WindowedAsyncSequenceIterator);
    v19 = swift_task_alloc();
    *(v0 + 416) = v19;
    *v19 = v0;
    v19[1] = sub_144F8;
    v20 = *(v0 + 184);
    v21 = *(v0 + 152);

    dispatch thunk of AsyncIteratorProtocol.next()(v21, v20, v18);
    return;
  }

  v27 = *(v0 + 384);
  v29 = *(v0 + 232);
  v28 = *(v0 + 240);
  v30 = *(v0 + 128);
  v129 = *(*(v0 + 88) + 32);
  v129(*(v0 + 120), *(v0 + 264), *(v0 + 80));
  sub_2A034();
  sub_BAC4(v28, v29, &qword_3A0E0, &qword_2BBF0);
  v31 = v27(v29, 1, v30);
  v32 = *(v0 + 256);
  v33 = *(v0 + 232);
  if (v31 == 1)
  {
    v34 = *(v0 + 80);
    v35 = *(v0 + 88);
    sub_BB4C(*(v0 + 232), &qword_3A0E0, &qword_2BBF0);
    (*(v35 + 56))(v32, 1, 1, v34);
  }

  else
  {
    v45 = *(v0 + 128);
    v46 = *(v0 + 136);
    v47 = *(v0 + 80);
    sub_2A1C4();
    (*(v46 + 8))(v33, v45);
    if (v13(v32, 1, v47) != 1)
    {
      v129(*(v0 + 96), *(v0 + 256), *(v0 + 80));
      goto LABEL_22;
    }
  }

  v48 = *(v0 + 256);
  v49 = *(v0 + 80);
  sub_2A024();
  if (v13(v48, 1, v49) != 1)
  {
    sub_BB4C(*(v0 + 256), &qword_3A0E8, &qword_2BBF8);
  }

LABEL_22:
  v50 = *(v0 + 424);
  v51 = *(v0 + 112);
  v53 = *(v0 + 96);
  v52 = *(v0 + 104);
  v54 = *(v0 + 80);
  v55 = *(v0 + 88);
  v56 = *(v0 + 48);
  sub_19420(&qword_3A130, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v57 = sub_2A844();
  v58 = *(v55 + 8);
  v59 = (v57 & 1) == 0;
  if (v57)
  {
    v60 = v52;
  }

  else
  {
    v60 = v53;
  }

  if (!v59)
  {
    v52 = v53;
  }

  v58(v60, v54);
  v129(v51, v52, v54);
  sub_17088((v56 + 120), *(v56 + 144));
  sub_15DF4();
  v61 = swift_allocObject();
  *(v61 + 16) = xmmword_2BAF0;
  *(v61 + 32) = sub_197A4(0, &qword_3A138, INIntent_ptr);
  *(v61 + 40) = sub_197A4(0, &qword_3A140, INSendMessageIntent_ptr);
  *(v61 + 48) = sub_197A4(0, &qword_3A148, INStartCallIntent_ptr);
  *(v61 + 56) = sub_197A4(0, &qword_3A150, INCreateNoteIntent_ptr);
  *(v61 + 64) = sub_197A4(0, &qword_3A158, INAddTasksIntent_ptr);
  *(v61 + 72) = sub_197A4(0, &qword_3A160, INSetTaskAttributeIntent_ptr);
  *(v61 + 80) = type metadata accessor for MTCreateAlarmIntent();
  *(v61 + 88) = type metadata accessor for MTUpdateAlarmIntent();
  *(v61 + 96) = type metadata accessor for MTToggleAlarmIntent();
  *(v61 + 104) = type metadata accessor for LocateDeviceIntent();
  *(v61 + 112) = type metadata accessor for LocateIntent();
  *(v61 + 120) = type metadata accessor for PlaySoundIntent();
  sub_2A2D4();
  if (!v50)
  {
    v69 = *(v0 + 48);

    sub_2AC04();

    sub_2A1D4();
    sub_2AC04();

    sub_2A654();
    sub_2A234();
    v70 = sub_2A684();

    v71 = objc_autoreleasePoolPush();
    sub_12104(v70, v69, (v0 + 16));

    objc_autoreleasePoolPop(v71);
    v72 = *(v0 + 16);
    v73 = *(v0 + 24);
    v133 = v72;
    if (v72 >> 62)
    {
LABEL_52:
      v102 = sub_2AC34();
      v72 = v133;
      v131 = v102;
      if (v102)
      {
LABEL_33:
        v123 = v73;
        v126 = v72 & 0xC000000000000001;
        if ((v72 & 0xC000000000000001) != 0)
        {

          v74 = sub_2AB64();
        }

        else
        {
          if (!*(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_56;
          }

          v74 = *(v72 + 32);
        }

        v73 = *(v74 + 16);
        *(v0 + 40) = _swiftEmptyArrayStorage;
        if (v131 >= 1)
        {

          v75 = 0;
          v109 = v58;
          v128 = v74;
          do
          {
            if (v126)
            {
              v76 = sub_2AB64();
            }

            else
            {
              v76 = *(v133 + 8 * v75 + 32);
            }

            v77 = *(v76 + 16);
            v78 = v77 - v73;
            if (__OFSUB__(v77, v73))
            {
              __break(1u);
LABEL_51:
              __break(1u);
              goto LABEL_52;
            }

            v79 = *(v74 + 16);
            v80 = v77 - v79;
            if (__OFSUB__(v77, v79))
            {
              goto LABEL_51;
            }

            v82 = *(v76 + 24);
            v81 = *(v76 + 32);
            v83 = *(v76 + 40);
            v58 = *(v76 + 64);
            type metadata accessor for SequenceItem();
            v84 = swift_allocObject();
            *(v84 + 48) = v75;
            *(v84 + 56) = v78;
            *(v84 + 64) = v58;
            *(v84 + 16) = v80;
            *(v84 + 24) = v82;
            *(v84 + 32) = v81;
            *(v84 + 40) = v83;

            sub_2A904();
            if (*(&dword_10 + (*(v0 + 40) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 40) & 0xFFFFFFFFFFFFFF8)) >> 1)
            {
              sub_2A924();
            }

            v75 = v75 + 1;
            sub_2A944();

            v85 = *(v0 + 40);
            v73 = *(v76 + 16);

            v74 = v128;
          }

          while (v131 != v75);
          v86 = *(v0 + 120);
          v88 = *(v0 + 80);
          v87 = *(v0 + 88);
          v89 = *(v0 + 72);
          v90 = *(v0 + 56);

          v135 = _swiftEmptyArrayStorage;
          v91 = sub_10208(v133, &v135);

          (*(v87 + 16))(&v89[*(v90 + 28)], v86, v88);
          *v89 = v85;
          *(v89 + 1) = v91;
          *(v89 + 2) = v123;
          v92 = v123;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73 = *(v0 + 408);
          v131 = v92;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_57;
          }

          goto LABEL_47;
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        v73 = sub_1F3EC(0, v73[2] + 1, 1, v73);
LABEL_47:
        v95 = v73[2];
        v94 = v73[3];
        if (v95 >= v94 >> 1)
        {
          v73 = sub_1F3EC((v94 > 1), v95 + 1, 1, v73);
        }

        v96 = *(v0 + 240);
        v97 = *(v0 + 136);
        v98 = *(v0 + 120);
        v119 = *(v0 + 128);
        v121 = *(v0 + 144);
        v99 = *(v0 + 112);
        v100 = *(v0 + 80);
        v101 = *(v0 + 64);
        v124 = *(v0 + 72);

        v109(v99, v100);
        v109(v98, v100);
        sub_BB4C(v96, &qword_3A0E0, &qword_2BBF0);
        (*(v97 + 8))(v121, v119);
        v73[2] = v95 + 1;
        sub_172F0(v124, v73 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v95);
        *(v0 + 408) = v73;
        goto LABEL_6;
      }
    }

    else
    {
      v131 = *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8));
      if (v131)
      {
        goto LABEL_33;
      }
    }

    v103 = *(v0 + 240);
    v104 = *(v0 + 136);
    v134 = *(v0 + 144);
    v106 = *(v0 + 120);
    v105 = *(v0 + 128);
    v107 = *(v0 + 112);
    v108 = *(v0 + 80);

    v58(v107, v108);
    v58(v106, v108);
    sub_BB4C(v103, &qword_3A0E0, &qword_2BBF0);
    (*(v104 + 8))(v134, v105);
    goto LABEL_6;
  }

  v125 = *(v0 + 328);
  v127 = *(v0 + 352);
  v120 = *(v0 + 320);
  v122 = *(v0 + 336);
  v117 = *(v0 + 312);
  v118 = *(v0 + 304);
  v62 = *(v0 + 216);
  v115 = *(v0 + 208);
  v116 = *(v0 + 224);
  v63 = *(v0 + 192);
  v113 = *(v0 + 184);
  v114 = *(v0 + 200);
  v64 = *(v0 + 136);
  v111 = *(v0 + 240);
  v112 = *(v0 + 144);
  v65 = *(v0 + 120);
  v110 = *(v0 + 128);
  v66 = *(v0 + 112);
  v67 = *(v0 + 80);

  v58(v66, v67);
  v58(v65, v67);
  sub_BB4C(v111, &qword_3A0E0, &qword_2BBF0);
  (*(v64 + 8))(v112, v110);
  (*(v63 + 8))(v114, v113);
  (*(v62 + 8))(v116, v115);
  (*(v117 + 8))(v120, v118);
  (*(v122 + 8))(v127, v125);

  v68 = *(v0 + 8);

  v68();
}

uint64_t sub_155D0()
{
  *(v0 + 32) = *(v0 + 424);
  sub_385C(&qword_3A120, &qword_2C8B0);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_15670, 0, 0);
}

uint64_t sub_15670()
{
  v1 = *(v0 + 336);
  v13 = *(v0 + 328);
  v14 = *(v0 + 352);
  v2 = *(v0 + 312);
  v12 = *(v0 + 320);
  v3 = *(v0 + 304);
  v4 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 200);
  v6 = *(v0 + 208);
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);

  (*(v8 + 8))(v7, v9);
  (*(v4 + 8))(v5, v6);
  (*(v2 + 8))(v12, v3);
  (*(v1 + 8))(v14, v13);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1585C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  v6 = *(v0 + 304);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_15A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_15A2C, 0, 0);
}

uint64_t sub_15A2C()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = qword_39718;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    if ((byte_39F68 & 1) == 0)
    {
      sub_17088((v0[5] + 56), *(v0[5] + 80));
      sub_2A354();
    }
  }

  v4 = v0[2];
  v5 = v0[3];
  v6 = sub_2A1E4();
  (*(*(v6 - 8) + 16))(v4, v5, v6);
  v7 = v0[1];

  return v7();
}

uint64_t sub_15B44(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(a2 + *(sub_385C(&qword_3A1D0, &qword_2BCA8) + 48));
  v10 = (a3 + *a3);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_15C74;

  return v10(a1, a2, v7);
}

uint64_t sub_15C74()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_15D68()
{
  sub_BA2C(v0 + 2);
  sub_BA2C(v0 + 7);

  sub_BA2C(v0 + 15);
  sub_BA2C(v0 + 20);

  return _swift_deallocClassInstance(v0, 224, 7);
}

uint64_t sub_15DF4()
{
  v0 = sub_385C(&qword_3A1C0, &qword_2BC90);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_3A1C8;
    v3 = &unk_2BC98;
  }

  else
  {
    v2 = &qword_398A0;
    v3 = &qword_2B6B0;
  }

  return sub_385C(v2, v3);
}

uint64_t sub_15E6C(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *(&dword_18 + (v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_2AC34();
LABEL_9:
  result = sub_2AB74();
  *v2 = result;
  return result;
}

Swift::Int sub_15F0C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_17678(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_15F78(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_15F78(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2AD34(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = sub_2A934();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_16140(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_16070(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_16070(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2AD54(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_16140(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_169D0(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1671C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2AD54();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2AD54();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1F0B4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1F0B4((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1671C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_169D0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_16944(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2AD54(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1671C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2AD54() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2AD54() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_16944(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_169D0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_169E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A1A8, &unk_2BC80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

unint64_t *sub_16AE8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_16EC8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_16B78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_385C(&qword_3A1E0, &qword_2BCB8);
  result = sub_2AB14();
  v5 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  while (v9)
  {
    v9 &= v9 - 1;
LABEL_16:

    result = sub_27954(v13, v5);
    if (__OFSUB__(v4--, 1))
    {
      goto LABEL_21;
    }

    if (!v4)
    {
LABEL_18:

      return v5;
    }
  }

  v11 = v10;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      goto LABEL_18;
    }

    v12 = a1[v10];
    ++v11;
    if (v12)
    {
      v9 = (v12 - 1) & v12;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_16CA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_385C(&qword_3A190, &unk_2C880);
  result = sub_2AB14();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2ADA4();

    sub_2A8B4();
    result = sub_2ADC4();
    v19 = -1 << v9[32];
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 6) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t *sub_16EC8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v25 = a3;
  v22 = 0;
  v21 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = a4(v24);

    if (v4)
    {
      return result;
    }

    if (v17)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        return sub_16CA4(v21, a2, v22, v19);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for ItemSequenceData(uint64_t a1)
{
  result = qword_3A240;
  if (!qword_3A240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_17088(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_170CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_197EC;

  return sub_15A08(a1, a2, a3, v3);
}

uint64_t sub_17180()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_171B8(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_15C74;

  return sub_15B44(a1, a2, v6);
}

uint64_t sub_17280(uint64_t a1, uint64_t a2)
{
  v4 = sub_385C(&qword_3A0E0, &qword_2BBF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_172F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemSequenceData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_17354(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_2AC34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_2AC34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_19318(&qword_3A1B8, &qword_3A1B0, &qword_2C720, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_385C(&qword_3A1B0, &qword_2C720);
            v9 = sub_28F3C(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        type metadata accessor for SequenceItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_174F8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_176A0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_26DE4(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

char *sub_17710(uint64_t a1)
{
  v1 = &_swiftEmptySetSingleton;
  v49 = &_swiftEmptySetSingleton;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 32;
    v46 = *(a1 + 16);
    do
    {
      sub_19248(v4 + 40 * v3, &v48);
      sub_385C(&qword_3A178, &qword_2BC58);
      sub_385C(&qword_3A1A0, &unk_2BC70);
      if (swift_dynamicCast())
      {
        sub_2A2E4();
        v5 = v48;
        v6 = *(v48 + 2);
        if (v6)
        {
          v7 = v4;
          sub_20098(0, v6, 0);
          v8 = _swiftEmptyArrayStorage;
          v9 = v5 + 40;
          do
          {
            v10 = sub_2A884();
            v47 = v8;
            v13 = v8[2];
            v12 = v8[3];
            if (v13 >= v12 >> 1)
            {
              v45 = v10;
              v15 = v11;
              sub_20098((v12 > 1), v13 + 1, 1);
              v11 = v15;
              v10 = v45;
              v8 = v47;
            }

            v8[2] = v13 + 1;
            v14 = &v8[2 * v13];
            v14[4] = v10;
            v14[5] = v11;
            v9 += 16;
            --v6;
          }

          while (v6);

          v4 = v7;
          v2 = v46;
        }

        else
        {

          v8 = _swiftEmptyArrayStorage;
        }

        sub_176A0(v8);
      }

      ++v3;
    }

    while (v3 != v2);
    v1 = v49;
  }

  v16 = v1[2];
  if (!v16)
  {
    goto LABEL_17;
  }

  v17 = sub_1F958(v1[2], 0);
  v18 = sub_174F8(&v48, v17 + 4, v16, v1);
  v19 = v48;

  sub_EA78(v19);
  if (v18 != v16)
  {
    __break(1u);
LABEL_17:
    v17 = _swiftEmptyArrayStorage;
  }

  v48 = v17;
  sub_15F0C(&v48);
  sub_385C(&qword_39EB0, &qword_2BA30);
  sub_19318(&qword_39EB8, &qword_39EB0, &qword_2BA30, &protocol conformance descriptor for [A]);
  v20 = sub_2A834();
  v22 = v21;

  v23 = sub_1F1C4(0, 1, 1, _swiftEmptyArrayStorage);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  v26 = v25 + 1;
  if (v25 >= v24 >> 1)
  {
LABEL_40:
    v23 = sub_1F1C4((v24 > 1), v26, 1, v23);
  }

  v27 = 0;
  *(v23 + 2) = v26;
  v28 = &v23[16 * v25];
  *(v28 + 4) = v20;
  *(v28 + 5) = v22;
  v20 = _swiftEmptyArrayStorage;
LABEL_20:
  v24 = &v23[16 * v27 + 40];
  while (v26 != v27)
  {
    if (v27 >= *(v23 + 2))
    {
      __break(1u);
      goto LABEL_40;
    }

    ++v27;
    v22 = *(v24 - 8);
    v25 = *v24;
    v24 += 16;
    v29 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v29 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v48 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_20098(0, *(v20 + 2) + 1, 1);
        v20 = v48;
      }

      v32 = *(v20 + 2);
      v31 = *(v20 + 3);
      if (v32 >= v31 >> 1)
      {
        sub_20098((v31 > 1), v32 + 1, 1);
        v20 = v48;
      }

      *(v20 + 2) = v32 + 1;
      v33 = &v20[16 * v32];
      *(v33 + 4) = v22;
      *(v33 + 5) = v25;
      goto LABEL_20;
    }
  }

  v34 = *(v20 + 2);
  if (v34)
  {
    v48 = _swiftEmptyArrayStorage;
    v35 = v20;
    sub_20078(0, v34, 0);
    v36 = v48;
    v37 = (v35 + 40);
    do
    {
      v38 = *(v37 - 1);
      v39 = *v37;
      sub_385C(&qword_3A170, &qword_2BC50);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_2B5D0;
      *(v40 + 32) = v38;
      *(v40 + 40) = v39;
      v48 = v36;
      v42 = *(v36 + 2);
      v41 = *(v36 + 3);

      if (v42 >= v41 >> 1)
      {
        sub_20078((v41 > 1), v42 + 1, 1);
        v36 = v48;
      }

      *(v36 + 2) = v42 + 1;
      v43 = &v36[24 * v42];
      *(v43 + 4) = v40;
      *(v43 + 5) = 0;
      v43[48] = 1;
      *(v43 + 49) = 3328;
      v37 += 2;
      --v34;
    }

    while (v34);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v36;
}

void *sub_17C5C(uint64_t a1)
{
  v31 = &_swiftEmptySetSingleton;
  v2 = sub_104D4(a1, &type metadata accessor for UEISaidDialogIdentifier);
  if (v2)
  {
    sub_176A0(v2);
  }

  v3 = sub_104D4(a1, &type metadata accessor for UEIShownDialogIdentifier);
  if (v3)
  {
    sub_176A0(v3);
  }

  v4 = v31;
  v5 = v31[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;

  if (v6 > 0xD)
  {
    goto LABEL_26;
  }

  while (1)
  {
    __chkstk_darwin(v9);
    bzero(&v30[-((v8 + 15) & 0x3FFFFFFFFFFFFFF0)], v8);
    v10 = 0;
    v11 = 0;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 56);
    v15 = (v12 + 63) >> 6;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v17 = v16 | (v11 << 6);
LABEL_16:
      v20 = (*(v4 + 48) + 16 * v17);
      v22 = *v20;
      v21 = v20[1];
      v23 = v22 & 0xFFFFFFFFFFFFLL;
      if ((v21 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v21) & 0xF;
      }

      else
      {
        v24 = v23;
      }

      if (v24)
      {
        *&v30[((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)] |= 1 << v17;
        if (__OFADD__(v10++, 1))
        {
          __break(1u);
LABEL_23:
          v26 = sub_16CA4(&v30[-((v8 + 15) & 0x3FFFFFFFFFFFFFF0)], v7, v10, v4);

          goto LABEL_24;
        }
      }
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_23;
      }

      v19 = *(v4 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v14 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v11 << 6);
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_26:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v29 = swift_slowAlloc();
  v26 = sub_16AE8(v29, v7, v4, sub_110A0);

LABEL_24:
  v27 = sub_FF90(v26);

  return v27;
}

uint64_t sub_17F28(uint64_t a1)
{
  result = sub_104D4(a1, &type metadata accessor for ASRBestRawRecognitionUtterance);
  if (!result)
  {
    return _swiftEmptyArrayStorage;
  }

  v4 = result;
  v5 = *(result + 16);
  if (!v5)
  {

    return _swiftEmptyArrayStorage;
  }

  v6 = 0;
  v33 = result + 40;
  v34 = *(result + 16);
  v31 = v5 - 1;
  do
  {
    v7 = (v33 + 16 * v6);
    v8 = v6;
    while (1)
    {
      if (v8 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_33;
      }

      v10 = *(v7 - 1);
      v9 = *v7;
      v6 = v8 + 1;
      sub_192C4(result, v2, v3);

      if (sub_2AA74() & 1) != 0 || (sub_2AA74() & 1) != 0 || (sub_2AA74() & 1) != 0 || (sub_2AA74())
      {
        break;
      }

      v7 += 2;
      ++v8;
      if (v34 == v6)
      {
        goto LABEL_17;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_20098(0, _swiftEmptyArrayStorage[2] + 1, 1);
    }

    v12 = _swiftEmptyArrayStorage[2];
    v11 = _swiftEmptyArrayStorage[3];
    if (v12 >= v11 >> 1)
    {
      result = sub_20098((v11 > 1), v12 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v12 + 1;
    v13 = &_swiftEmptyArrayStorage[2 * v12];
    v13[4] = v10;
    v13[5] = v9;
  }

  while (v31 != v8);
LABEL_17:

  v14 = _swiftEmptyArrayStorage[2];
  if (!v14)
  {
LABEL_30:

    return _swiftEmptyArrayStorage;
  }

  sub_20098(0, v14, 0);
  result = _swiftEmptyArrayStorage;
  v15 = 0;
  v16 = &_swiftEmptyArrayStorage[5];
  v32 = v14;
  while (v15 < _swiftEmptyArrayStorage[2])
  {
    swift_bridgeObjectRetain_n();

    sub_2AA64();

    sub_2AA64();

    sub_2AA64();

    v17 = sub_2AA64();
    v19 = v18;

    v21 = _swiftEmptyArrayStorage[2];
    v20 = _swiftEmptyArrayStorage[3];
    if (v21 >= v20 >> 1)
    {
      sub_20098((v20 > 1), v21 + 1, 1);
    }

    ++v15;
    _swiftEmptyArrayStorage[2] = v21 + 1;
    v22 = &_swiftEmptyArrayStorage[2 * v21];
    v22[4] = v17;
    v22[5] = v19;
    v16 += 2;
    result = _swiftEmptyArrayStorage;
    if (v32 == v15)
    {

      v23 = _swiftEmptyArrayStorage[2];
      if (v23)
      {
        sub_20078(0, v23, 0);
        v24 = &_swiftEmptyArrayStorage[5];
        do
        {
          v25 = *(v24 - 1);
          v26 = *v24;
          sub_385C(&qword_3A170, &qword_2BC50);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_2B5D0;
          *(v27 + 32) = v25;
          *(v27 + 40) = v26;
          v28 = _swiftEmptyArrayStorage[2];
          v29 = _swiftEmptyArrayStorage[3];

          if (v28 >= v29 >> 1)
          {
            sub_20078((v29 > 1), v28 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v28 + 1;
          v30 = &_swiftEmptyArrayStorage[3 * v28];
          v30[4] = v27;
          v30[5] = 0;
          *(v30 + 48) = 1;
          *(v30 + 49) = 3328;
          v24 += 2;
          --v23;
        }

        while (v23);
      }

      goto LABEL_30;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_184DC(uint64_t result)
{
  v1 = *(result + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v3 = result;
    v45 = _swiftEmptyArrayStorage;
    sub_200B8(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = *(sub_2A234() - 8);
    v5 = v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v4 + 72);
    do
    {
      result = sub_110C0(v43);
      v7 = v43[0];
      v8 = v43[1];
      v9 = v43[2];
      v10 = v44;
      v45 = v2;
      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        result = sub_200B8((v11 > 1), v12 + 1, 1);
        v2 = v45;
      }

      v2[2] = v12 + 1;
      v13 = &v2[4 * v12];
      v13[4] = v7;
      v13[5] = v8;
      v13[6] = v9;
      *(v13 + 56) = v10;
      v5 += v6;
      --v1;
    }

    while (v1);
  }

  v14 = 0;
  v15 = v2[2];
  v16 = _swiftEmptyArrayStorage;
LABEL_7:
  v17 = 32 * v14;
  while (v15 != v14)
  {
    if (v14 >= v2[2])
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v18 = v17 + 32;
    ++v14;
    v19 = v2 + v17;
    v21 = *(v19 + 4);
    v20 = *(v19 + 5);
    v22 = v21 & 0xFFFFFFFFFFFFLL;
    if ((v20 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v20) & 0xF;
    }

    v17 = v18;
    if (v22)
    {
      v23 = *(v2 + v18 + 16);
      v24 = *(v2 + v18 + 24);

      result = swift_isUniquelyReferenced_nonNull_native();
      v43[0] = v16;
      if ((result & 1) == 0)
      {
        result = sub_200B8(0, v16[2] + 1, 1);
        v16 = v43[0];
      }

      v26 = v16[2];
      v25 = v16[3];
      v27 = v16;
      if (v26 >= v25 >> 1)
      {
        result = sub_200B8((v25 > 1), v26 + 1, 1);
        v27 = v43[0];
      }

      v27[2] = v26 + 1;
      v28 = &v27[4 * v26];
      v28[4] = v21;
      v28[5] = v20;
      v28[6] = v23;
      *(v28 + 56) = v24;
      v16 = v27;
      goto LABEL_7;
    }
  }

  v29 = v16[2];
  if (v29)
  {
    v43[0] = _swiftEmptyArrayStorage;
    result = sub_20078(0, v29, 0);
    v30 = 0;
    v31 = v43[0];
    v32 = v16 + 7;
    v41 = v29;
    v42 = v16;
    while (v30 < v16[2])
    {
      v33 = *(v32 - 3);
      v34 = *(v32 - 2);
      v35 = *(v32 - 1);
      v36 = *v32;
      sub_385C(&qword_3A170, &qword_2BC50);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_2B5D0;
      *(v37 + 32) = v33;
      *(v37 + 40) = v34;
      v43[0] = v31;
      v38 = *(v31 + 16);
      v39 = *(v31 + 24);

      if (v38 >= v39 >> 1)
      {
        result = sub_20078((v39 > 1), v38 + 1, 1);
        v31 = v43[0];
      }

      ++v30;
      *(v31 + 16) = v38 + 1;
      v40 = v31 + 24 * v38;
      *(v40 + 32) = v37;
      *(v40 + 40) = v35;
      *(v40 + 48) = 0;
      *(v40 + 49) = v36;
      *(v40 + 50) = 13;
      v32 += 32;
      v16 = v42;
      if (v41 == v30)
      {

        return v31;
      }
    }

    goto LABEL_28;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_18848(uint64_t a1)
{
  v57 = sub_2A6A4();
  v2 = *(v57 - 8);
  __chkstk_darwin(v57);
  v56 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2A234();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v62 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v64 = _swiftEmptyArrayStorage;
    sub_200D8(0, v8, 0);
    v11 = *(v5 + 16);
    v10 = v5 + 16;
    v9 = v64;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v59 = *(v10 + 56);
    v60 = v11;
    v54 = v2 + 16;
    v55 = v2;
    v52 = v4;
    v53 = v2 + 8;
    v58 = (v10 - 8);
    *&v61 = v10;
    while (1)
    {
      v60(v62, v12, v4);
      sub_2A6D4();
      swift_allocObject();
      sub_2A6C4();
      v13 = sub_2A6B4();

      sub_2A724();
      swift_allocObject();
      v63 = sub_2A714();
      sub_19420(&qword_3A188, &type metadata accessor for INSendMessageIntentFeatureExtractor, &protocol conformance descriptor for INSendMessageIntentFeatureExtractor);
      v14 = sub_2A3B4();

      v15 = sub_104D4(v14, &type metadata accessor for CommonContactFeature.RecipientContactReferences);

      if (!v15)
      {
        goto LABEL_7;
      }

      if (!*(v15 + 16))
      {
        break;
      }

      v16 = v55;
      v17 = v56;
      v18 = v57;
      (*(v55 + 16))(v56, v15 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v57);

      v19 = sub_2A694();
      v21 = v20;
      v22 = v17;
      v4 = v52;
      (*(v16 + 8))(v22, v18);
      v23 = sub_10868(v13, &type metadata accessor for CommonFeature.DonatedBySiri);

LABEL_8:
      result = (*v58)(v62, v4);
      v64 = v9;
      v25 = *(v9 + 2);
      v24 = *(v9 + 3);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        result = sub_200D8((v24 > 1), v25 + 1, 1);
        v9 = v64;
      }

      *(v9 + 2) = v26;
      v27 = &v9[24 * v25];
      *(v27 + 4) = v19;
      *(v27 + 5) = v21;
      v27[48] = v23 & 1;
      v12 += v59;
      if (!--v8)
      {
        goto LABEL_13;
      }
    }

LABEL_7:

    v23 = 0;
    v19 = 0;
    v21 = 0xE000000000000000;
    goto LABEL_8;
  }

  v26 = _swiftEmptyArrayStorage[2];
LABEL_13:
  v28 = 0;
  v29 = _swiftEmptyArrayStorage;
LABEL_14:
  v30 = 24 * v28;
  while (v26 != v28)
  {
    if (v28 >= *(v9 + 2))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }

    ++v28;
    v31 = v30 + 24;
    v32 = &v9[v30];
    v34 = *(v32 + 4);
    v33 = *(v32 + 5);
    v35 = v34 & 0xFFFFFFFFFFFFLL;
    if ((v33 & 0x2000000000000000) != 0)
    {
      v35 = HIBYTE(v33) & 0xF;
    }

    v30 = v31;
    if (v35)
    {
      v36 = v9[v31 + 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      v64 = v29;
      if ((result & 1) == 0)
      {
        result = sub_200D8(0, *(v29 + 2) + 1, 1);
        v29 = v64;
      }

      v38 = *(v29 + 2);
      v37 = *(v29 + 3);
      if (v38 >= v37 >> 1)
      {
        result = sub_200D8((v37 > 1), v38 + 1, 1);
        v29 = v64;
      }

      *(v29 + 2) = v38 + 1;
      v39 = &v29[24 * v38];
      *(v39 + 4) = v34;
      *(v39 + 5) = v33;
      v39[48] = v36;
      goto LABEL_14;
    }
  }

  v40 = *(v29 + 2);
  if (v40)
  {
    v64 = _swiftEmptyArrayStorage;
    result = sub_20078(0, v40, 0);
    v41 = 0;
    v42 = v64;
    v43 = v29 + 48;
    v61 = xmmword_2B5D0;
    v62 = v29;
    while (v41 < *(v29 + 2))
    {
      v44 = *(v43 - 2);
      v45 = *(v43 - 1);
      v46 = *v43;
      sub_385C(&qword_3A170, &qword_2BC50);
      v47 = swift_allocObject();
      *(v47 + 16) = v61;
      *(v47 + 32) = v44;
      *(v47 + 40) = v45;
      v64 = v42;
      v49 = *(v42 + 2);
      v48 = *(v42 + 3);

      if (v49 >= v48 >> 1)
      {
        result = sub_20078((v48 > 1), v49 + 1, 1);
        v42 = v64;
      }

      ++v41;
      *(v42 + 2) = v49 + 1;
      v50 = &v42[24 * v49];
      *(v50 + 4) = v47;
      *(v50 + 5) = 0;
      v50[48] = 1;
      v50[49] = v46;
      v50[50] = 13;
      v43 += 24;
      v29 = v62;
      if (v40 == v41)
      {

        return v42;
      }
    }

    goto LABEL_35;
  }

  return _swiftEmptyArrayStorage;
}

void *sub_18E74(uint64_t a1, void (*a2)(uint64_t, void **))
{
  result = _swiftEmptyArrayStorage;
  v9 = _swiftEmptyArrayStorage;
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *(sub_2A234() - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    do
    {
      a2(v7, &v9);
      v7 += v8;
      --v4;
    }

    while (v4);
    return v9;
  }

  return result;
}

char *sub_18F40(uint64_t a1)
{
  v2 = sub_2A234();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return _swiftEmptyArrayStorage;
  }

  v8 = *(v3 + 16);
  v7 = v3 + 16;
  v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
  v24 = *(v7 + 56);
  v25 = v8;
  v26 = _swiftEmptyArrayStorage;
  v23 = (v7 - 8);
  v22 = xmmword_2B5D0;
  v8(v5, v9, v2);
  while (1)
  {
    sub_2A624();
    swift_allocObject();
    sub_2A614();
    v10 = sub_2A604();

    v11 = sub_10A34(v10, &type metadata accessor for FindDeviceAndFriendsFeature.Name);
    if (!v12 || (v13 = v11, v14 = v12, v15 = sub_10868(v10, &type metadata accessor for FindDeviceAndFriendsFeature.DonatedBySiri), , v15 == 2))
    {
      (*v23)(v5, v2);
    }

    else
    {
      sub_385C(&qword_3A170, &qword_2BC50);
      v16 = swift_allocObject();
      *(v16 + 16) = v22;
      *(v16 + 32) = v13;
      *(v16 + 40) = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = sub_1F2D0(0, *(v26 + 2) + 1, 1, v26);
      }

      v18 = *(v26 + 2);
      v17 = *(v26 + 3);
      if (v18 >= v17 >> 1)
      {
        v26 = sub_1F2D0((v17 > 1), v18 + 1, 1, v26);
      }

      (*v23)(v5, v2);
      v19 = v26;
      *(v26 + 2) = v18 + 1;
      v20 = &v19[24 * v18];
      *(v20 + 4) = v16;
      *(v20 + 5) = 0;
      v20[48] = 1;
      v20[49] = v15 & 1;
      v20[50] = 12;
    }

    v9 += v24;
    if (!--v6)
    {
      break;
    }

    v25(v5, v9, v2);
  }

  return v26;
}

uint64_t sub_19248(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_192AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_192C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A198;
  if (!qword_3A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A198);
  }

  return result;
}

uint64_t sub_19318(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_B6D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemSequenceData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_193C4(uint64_t a1)
{
  v2 = type metadata accessor for ItemSequenceData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1947C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2A0A4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1953C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_2A0A4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_195E0(uint64_t a1)
{
  sub_19694(319);
  if (v1 <= 0x3F)
  {
    sub_196EC();
    if (v2 <= 0x3F)
    {
      sub_1973C(319);
      if (v3 <= 0x3F)
      {
        sub_2A0A4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_19694(uint64_t a1)
{
  if (!qword_3A250)
  {
    type metadata accessor for SequenceItem();
    v1 = sub_2A954();
    if (!v2)
    {
      atomic_store(v1, &qword_3A250);
    }
  }
}

void sub_196EC()
{
  if (!qword_3A258)
  {
    v0 = sub_2A954();
    if (!v1)
    {
      atomic_store(v0, &qword_3A258);
    }
  }
}

void sub_1973C(uint64_t a1)
{
  if (!qword_3A260)
  {
    sub_197A4(255, &unk_3A268, SISchemaUUID_ptr);
    v1 = sub_2AA54();
    if (!v2)
    {
      atomic_store(v1, &qword_3A260);
    }
  }
}

uint64_t sub_197A4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_19808()
{
  v0 = sub_2A804();
  sub_19D4C(v0, qword_3AB28);
  sub_B884(v0, qword_3AB28);
  return sub_2A7F4();
}

uint64_t sub_19888()
{
  v0 = sub_2A804();
  sub_19D4C(v0, qword_3AB40);
  sub_B884(v0, qword_3AB40);
  return sub_2A7F4();
}

uint64_t sub_19908()
{
  v0 = sub_2A804();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2A784();
  sub_19D4C(v4, qword_3AB58);
  sub_B884(v4, qword_3AB58);
  if (qword_39728 != -1)
  {
    swift_once();
  }

  v5 = sub_B884(v0, qword_3AB40);
  (*(v1 + 16))(v3, v5, v0);
  return sub_2A764();
}

void sub_19A44()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2A854();
  v2 = [v0 BOOLForKey:v1];

  byte_3AB70 = v2;
}

uint64_t sub_19AD4(const char *a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_2A754();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_39738 != -1)
  {
    swift_once();
  }

  v11 = byte_3AB70;
  v12 = sub_2A774();
  v13 = sub_2AA14();
  result = sub_2AA44();
  if (v11 == 1)
  {
    if ((result & 1) == 0)
    {
LABEL_23:

      (*(v8 + 16))(v10, a4, v7);
      sub_2A7C4();
      swift_allocObject();
      return sub_2A7B4();
    }

    if (a3)
    {
LABEL_12:
      if (!(a1 >> 32))
      {
        if ((a1 & 0xFFFFF800) == 0xD800)
        {
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        if (a1 >> 16 <= 0x10)
        {
          a1 = v18;
          goto LABEL_16;
        }

        goto LABEL_26;
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (a1)
    {
LABEL_16:
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_2A744();
      v17 = "";
LABEL_22:
      _os_signpost_emit_with_name_impl(&dword_0, v12, v13, v16, a1, v17, v15, 2u);

      goto LABEL_23;
    }

    __break(1u);
  }

  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((a3 & 1) == 0)
  {
    if (!a1)
    {
      __break(1u);
      goto LABEL_12;
    }

LABEL_21:
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_2A744();
    v17 = "enableTelemetry=YES";
    goto LABEL_22;
  }

  if (a1 >> 32)
  {
    goto LABEL_25;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 > 0x10)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    a1 = &v19;
    goto LABEL_21;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t *sub_19D4C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_1A0D4(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  v4.receiver = a1;
  v4.super_class = a3(a1, a2);
  return objc_msgSendSuper2(&v4, "init");
}

id sub_1A130(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, uint64_t))
{
  v8.receiver = a1;
  v8.super_class = a4(a1, a2);
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

id sub_1A1C0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(id))
{
  if (a3)
  {
    sub_2A864();
    v8 = a4;
    v9 = sub_2A854();
  }

  else
  {
    v10 = a4;
    v9 = 0;
  }

  v13.receiver = a1;
  v13.super_class = a5(v10);
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:backingStore:", v9, a4);

  return v11;
}

id sub_1A288(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(id))
{
  if (a5)
  {
    sub_2A824();
    v10 = a3;
    v11 = a4;
    v12.super.isa = sub_2A814().super.isa;
  }

  else
  {
    v14 = a3;
    v13 = a4;
    v12.super.isa = 0;
  }

  v17.receiver = a1;
  v17.super_class = a6(v13);
  v15 = objc_msgSendSuper2(&v17, "initWithDomain:verb:parametersByName:", a3, a4, v12.super.isa);

  return v15;
}

id sub_1A394(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1A3FC@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_1A444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CCC4(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1A480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CCC4(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_1A504(void *a1, int a2)
{
  v31 = a2;
  v3 = sub_385C(&qword_3A6F8, &qword_2C0F0);
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v24 - v4;
  v5 = sub_385C(&qword_3A700, &qword_2C0F8);
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v24 - v6;
  v8 = sub_385C(&qword_3A708, &qword_2C100);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - v9;
  v11 = sub_385C(&qword_3A710, &qword_2C108);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - v13;
  v15 = sub_17088(a1, a1[3]);
  sub_1CC1C(v15, v16, v17);
  v18 = sub_2ADE4();
  v21 = (v12 + 8);
  if (v31)
  {
    if (v31 == 1)
    {
      v33 = 1;
      sub_1CCC4(v18, v19, v20);
      sub_2ACF4();
      (*(v26 + 8))(v7, v27);
    }

    else
    {
      v34 = 2;
      sub_1CC70(v18, v19, v20);
      v22 = v28;
      sub_2ACF4();
      (*(v29 + 8))(v22, v30);
    }
  }

  else
  {
    v32 = 0;
    sub_1CD18(v18, v19, v20);
    sub_2ACF4();
    (*(v25 + 8))(v10, v8);
  }

  return (*v21)(v14, v11);
}

unint64_t sub_1A884(char a1)
{
  result = 5395265;
  switch(a1)
  {
    case 1:
      result = 5786702;
      break;
    case 2:
      result = 4801877;
      break;
    case 3:
      result = 0x505041454E4F4850;
      break;
    case 4:
      result = 0x414547415353454DLL;
      break;
    case 5:
      result = 0x5245444E494D4552;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x4552434D52414C41;
      break;
    case 8:
      result = 0x474F544D52414C41;
      break;
    case 9:
      result = 0x4450554D52414C41;
      break;
    case 10:
      result = 0x4145524345544F4ELL;
      break;
    case 11:
      result = 0x454C454445544F4ELL;
      break;
    case 12:
      result = 0x5041594D444E4946;
      break;
    case 13:
      result = 0x4E574F4E4B4E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1AA48()
{
  v1 = 5263425;
  if (*v0 != 1)
  {
    v1 = 0x4E574F4E4B4E55;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1230129491;
  }
}

uint64_t sub_1AA94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C4D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1AAC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CC1C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1AB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CC1C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_1AB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CD18(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1AB7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CD18(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_1ABB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CC70(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1ABF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CC70(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

Swift::Int sub_1AC30()
{
  v1 = *v0;
  sub_2ADA4();
  sub_2ADB4(v1);
  return sub_2ADC4();
}

Swift::Int sub_1AC78(uint64_t a1)
{
  v2 = *v1;
  sub_2ADA4();
  sub_2ADB4(v2);
  return sub_2ADC4();
}

uint64_t sub_1ACBC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1C5EC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1AD04(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1A884(*a1);
  v5 = v4;
  if (v3 == sub_1A884(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2AD54();
  }

  return v8 & 1;
}

uint64_t sub_1AD8C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000070;
  v3 = 0x6D617473656D6974;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x656372756F73;
    }

    else
    {
      v5 = 1701869940;
    }

    if (v4 == 2)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x64616F6C796170;
    }

    else
    {
      v5 = 0x6D617473656D6974;
    }

    if (v4)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000070;
    }
  }

  v7 = 0xE600000000000000;
  v8 = 0x656372756F73;
  if (a2 != 2)
  {
    v8 = 1701869940;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v3 = 0x64616F6C796170;
    v2 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2AD54();
  }

  return v11 & 1;
}

Swift::Int sub_1AEB8()
{
  v1 = *v0;
  sub_2ADA4();
  sub_1A884(v1);
  sub_2A8B4();

  return sub_2ADC4();
}

uint64_t sub_1AF1C(uint64_t a1)
{
  sub_1A884(*v1);
  sub_2A8B4();
}

Swift::Int sub_1AF70(uint64_t a1)
{
  v2 = *v1;
  sub_2ADA4();
  sub_1A884(v2);
  sub_2A8B4();

  return sub_2ADC4();
}

unint64_t sub_1AFD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CB7C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1B000@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A884(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B0DC()
{
  sub_2AB34(62);
  v4._object = 0x800000000002D610;
  v4._countAndFlagsBits = 0xD000000000000018;
  sub_2A8C4(v4);
  v5._countAndFlagsBits = sub_2AD44();
  sub_2A8C4(v5);

  v6._countAndFlagsBits = 0x616F6C796170202CLL;
  v6._object = 0xEB00000000203A64;
  sub_2A8C4(v6);
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  v7._countAndFlagsBits = v1;
  v7._object = v2;
  sub_2A8C4(v7);

  v8._countAndFlagsBits = 0x656372756F73202CLL;
  v8._object = 0xEA0000000000203ALL;
  sub_2A8C4(v8);
  sub_2AC14();
  v9._countAndFlagsBits = 0x203A65707974202CLL;
  v9._object = 0xE800000000000000;
  sub_2A8C4(v9);
  sub_2AC14();
  v10._countAndFlagsBits = 41;
  v10._object = 0xE100000000000000;
  sub_2A8C4(v10);
  return 0;
}

uint64_t sub_1B26C(uint64_t a1)
{

  sub_2A8B4();

  sub_2ADB4(*(v1 + 40));
  sub_1A884(*(v1 + 41));
  sub_2A8B4();
}

uint64_t sub_1B2F8(uint64_t a1)
{
  v3 = *(v1 + 24) == *(a1 + 24) && *(v1 + 32) == *(a1 + 32);
  if (v3 || (sub_2AD54()) && *(v1 + 40) == *(a1 + 40))
  {
    v4 = *(v1 + 41);
    v5 = *(a1 + 41);
    v6 = sub_1A884(v4);
    v8 = v7;
    if (v6 == sub_1A884(v5) && v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_2AD54();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

Swift::Int sub_1B3C8()
{
  sub_2ADA4();
  sub_2A8B4();

  return sub_2ADC4();
}

uint64_t sub_1B484(uint64_t a1)
{
  sub_2A8B4();
}

Swift::Int sub_1B52C(uint64_t a1)
{
  sub_2ADA4();
  sub_2A8B4();

  return sub_2ADC4();
}

unint64_t sub_1B5E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D608(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B614(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000070;
  v3 = 0x6D617473656D6974;
  v4 = 0xE600000000000000;
  v5 = 0x656372756F73;
  if (*v1 != 2)
  {
    v5 = 1701869940;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x64616F6C796170;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_1B68C()
{
  v1 = 0x6D617473656D6974;
  v2 = 0x656372756F73;
  if (*v0 != 2)
  {
    v2 = 1701869940;
  }

  if (*v0)
  {
    v1 = 0x64616F6C796170;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B700@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D608(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CD6C(a1, a2, a3);

  return CodingKey.description.getter(a1, v4);
}

uint64_t sub_1B770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1CD6C(a1, a2, a3);

  return CodingKey.debugDescription.getter(a1, v4);
}

uint64_t sub_1B7AC(void *a1)
{
  v3 = v1;
  v5 = sub_385C(&qword_3A738, &qword_2C118);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19[-v7];
  v9 = sub_17088(a1, a1[3]);
  sub_1CD6C(v9, v10, v11);
  sub_2ADE4();
  v19[15] = 0;
  sub_2AD24();
  if (!v2)
  {
    v19[14] = 1;

    sub_2AD04();

    v19[13] = *(v3 + 40);
    v19[12] = 2;
    sub_1CE68(v13, v14, v15);
    v16 = sub_2AD14();
    v19[11] = *(v3 + 41);
    v19[10] = 3;
    sub_1CEBC(v16, v17, v18);
    sub_2AD14();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BA0C(void *a1)
{
  v2 = swift_allocObject();
  sub_1BA5C(a1);
  return v2;
}

uint64_t sub_1BA5C(void *a1)
{
  v4 = sub_385C(&qword_3A718, &qword_2C110);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - v6;
  v8 = sub_17088(a1, a1[3]);
  sub_1CD6C(v8, v9, v10);
  sub_2ADD4();
  if (v2)
  {
    type metadata accessor for PatternItem();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = 0;
    *(v1 + 16) = sub_2ACD4();
    v23 = 1;
    v11 = sub_2ACB4();
    *(v1 + 24) = v11;
    *(v1 + 32) = v13;
    v21 = 2;
    sub_1CDC0(v11, v13, v14);
    v15 = sub_2ACC4();
    *(v1 + 40) = v22;
    v19 = 3;
    sub_1CE14(v15, v16, v17);
    sub_2ACC4();
    (*(v5 + 8))(v7, v4);
    *(v1 + 41) = v20;
  }

  sub_BA2C(a1);
  return v1;
}

uint64_t sub_1BCC0()
{

  return _swift_deallocClassInstance(v0, 42, 7);
}

Swift::Int sub_1BD1C()
{
  sub_2ADA4();

  sub_2A8B4();

  sub_2ADB4(*(v0 + 40));
  sub_1A884(*(v0 + 41));
  sub_2A8B4();

  return sub_2ADC4();
}

Swift::Int sub_1BE48(uint64_t a1)
{
  sub_2ADA4();
  sub_1B26C(v2);
  return sub_2ADC4();
}

uint64_t sub_1BEB4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 248))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BF14()
{
  sub_2AB34(82);
  v7._countAndFlagsBits = 0x203A646928;
  v7._object = 0xE500000000000000;
  sub_2A8C4(v7);
  v8._countAndFlagsBits = sub_2AD44();
  sub_2A8C4(v8);

  v9._object = 0x800000000002D5F0;
  v9._countAndFlagsBits = 0xD000000000000019;
  sub_2A8C4(v9);
  v10._countAndFlagsBits = sub_2AD44();
  sub_2A8C4(v10);

  v11._countAndFlagsBits = 0x797469746E65202CLL;
  v11._object = 0xEA0000000000203ALL;
  sub_2A8C4(v11);

  v1 = sub_2A914();
  v3 = v2;

  v12._countAndFlagsBits = v1;
  v12._object = v3;
  sub_2A8C4(v12);

  v13._countAndFlagsBits = 0x616F6C796170202CLL;
  v13._object = 0xEB00000000203A64;
  sub_2A8C4(v13);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);

  v14._countAndFlagsBits = v4;
  v14._object = v5;
  sub_2A8C4(v14);

  v15._countAndFlagsBits = 0x656372756F73202CLL;
  v15._object = 0xEA0000000000203ALL;
  sub_2A8C4(v15);
  sub_2AC14();
  v16._countAndFlagsBits = 0x203A65707974202CLL;
  v16._object = 0xE800000000000000;
  sub_2A8C4(v16);
  sub_2AC14();
  v17._countAndFlagsBits = 41;
  v17._object = 0xE100000000000000;
  sub_2A8C4(v17);
  return 0;
}

void *sub_1C158(void *a1)
{
  v2 = swift_allocObject();
  v2[6] = 0;
  v2[7] = 0;
  v2[8] = _swiftEmptyArrayStorage;
  sub_19248(a1, v4);
  sub_1BA5C(v4);
  sub_BA2C(a1);
  return v2;
}

uint64_t sub_1C1E4()
{

  return _swift_deallocClassInstance(v0, 72, 7);
}

uint64_t getEnumTagSinglePayload for EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A690;
  if (!qword_3A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A690);
  }

  return result;
}

unint64_t sub_1C428(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A698;
  if (!qword_3A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A698);
  }

  return result;
}

unint64_t sub_1C480()
{
  result = qword_3A6A0;
  if (!qword_3A6A0)
  {
    type metadata accessor for PatternItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A6A0);
  }

  return result;
}

uint64_t sub_1C4D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1230129491 && a2 == 0xE400000000000000;
  if (v3 || (sub_2AD54() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 5263425 && a2 == 0xE300000000000000 || (sub_2AD54() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E574F4E4B4E55 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2AD54();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1C5EC(void *a1)
{
  v34 = sub_385C(&qword_3A6B0, &qword_2C0C8);
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v38 = &v31 - v2;
  v3 = sub_385C(&qword_3A6B8, &qword_2C0D0);
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin(v3);
  v5 = &v31 - v4;
  v6 = sub_385C(&qword_3A6C0, &qword_2C0D8);
  v33 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v31 - v7;
  v9 = sub_385C(&qword_3A6C8, &qword_2C0E0);
  v39 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = sub_17088(a1, a1[3]);
  sub_1CC1C(v12, v13, v14);
  v15 = v40;
  sub_2ADD4();
  if (v15)
  {
    goto LABEL_14;
  }

  v32 = v6;
  v16 = v38;
  v40 = a1;
  v17 = v11;
  v18 = sub_2ACE4();
  v21 = *(v18 + 16);
  if (!v21 || ((v22 = *(v18 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = sub_2AB94();
    swift_allocError();
    v26 = v25;
    sub_385C(&qword_3A6D8, &qword_2C0E8);
    *v26 = &type metadata for Source;
    sub_2ACA4();
    sub_2AB84();
    (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
    swift_willThrow();
    (*(v39 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v40;
LABEL_14:
    sub_BA2C(a1);
    return 0;
  }

  v41 = *(v18 + 32);
  if (!v22)
  {
    v42 = 0;
    sub_1CD18(v18, v19, v20);
    v27 = v11;
    sub_2AC94();
    (*(v33 + 8))(v8, v32);
    v28 = v39;
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    v43 = 1;
    sub_1CCC4(v18, v19, v20);
    v27 = v11;
    sub_2AC94();
    v28 = v39;
    (*(v35 + 8))(v5, v36);
LABEL_15:
    (*(v28 + 8))(v27, v9);
    goto LABEL_16;
  }

  v44 = 2;
  sub_1CC70(v18, v19, v20);
  sub_2AC94();
  v29 = v39;
  (*(v37 + 8))(v16, v34);
  (*(v29 + 8))(v17, v9);
LABEL_16:
  swift_unknownObjectRelease();
  sub_BA2C(v40);
  return v41;
}

unint64_t sub_1CB7C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_35158;
  v6._object = a2;
  v4 = sub_2AC84(v3, v6);

  if (v4 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1CBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A6A8;
  if (!qword_3A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A6A8);
  }

  return result;
}

unint64_t sub_1CC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A6D0;
  if (!qword_3A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A6D0);
  }

  return result;
}

unint64_t sub_1CC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A6E0;
  if (!qword_3A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A6E0);
  }

  return result;
}

unint64_t sub_1CCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A6E8;
  if (!qword_3A6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A6E8);
  }

  return result;
}

unint64_t sub_1CD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A6F0;
  if (!qword_3A6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A6F0);
  }

  return result;
}

unint64_t sub_1CD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A720;
  if (!qword_3A720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A720);
  }

  return result;
}

unint64_t sub_1CDC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A728;
  if (!qword_3A728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A728);
  }

  return result;
}

unint64_t sub_1CE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A730;
  if (!qword_3A730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A730);
  }

  return result;
}

unint64_t sub_1CE68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A740;
  if (!qword_3A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A740);
  }

  return result;
}

unint64_t sub_1CEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A748;
  if (!qword_3A748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A748);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PatternItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PatternItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D064(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D0F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A750;
  if (!qword_3A750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A750);
  }

  return result;
}

unint64_t sub_1D244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A758;
  if (!qword_3A758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A758);
  }

  return result;
}

unint64_t sub_1D29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A760;
  if (!qword_3A760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A760);
  }

  return result;
}

unint64_t sub_1D2F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A768;
  if (!qword_3A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A768);
  }

  return result;
}

unint64_t sub_1D34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A770;
  if (!qword_3A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A770);
  }

  return result;
}

unint64_t sub_1D3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A778;
  if (!qword_3A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A778);
  }

  return result;
}

unint64_t sub_1D3FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A780;
  if (!qword_3A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A780);
  }

  return result;
}

unint64_t sub_1D454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A788;
  if (!qword_3A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A788);
  }

  return result;
}

unint64_t sub_1D4AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A790;
  if (!qword_3A790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A790);
  }

  return result;
}

unint64_t sub_1D504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A798;
  if (!qword_3A798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A798);
  }

  return result;
}

unint64_t sub_1D55C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A7A0;
  if (!qword_3A7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A7A0);
  }

  return result;
}

unint64_t sub_1D5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_3A7A8;
  if (!qword_3A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3A7A8);
  }

  return result;
}

unint64_t sub_1D608(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_352C8;
  v6._object = a2;
  v4 = sub_2AC84(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

void sub_1D67C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_2A854();
  v2 = [v0 BOOLForKey:v1];

  byte_3A7B0 = v2;
}

id sub_1D730(unint64_t a1, unint64_t a2, unint64_t a3, char a4, unint64_t a5, uint64_t a6)
{
  LOBYTE(v7) = a4;
  v11 = [objc_allocWithZone(PLUSSchemaPLUSRECTIFIPatternSequenceGenerated) init];
  if (!v11)
  {
    return v11;
  }

  v24 = a2;
  if (a5 >> 62)
  {
    v12 = sub_2AC34();
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v12 = *(&dword_10 + (a5 & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      goto LABEL_11;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
LABEL_37:
    __break(1u);
    JUMPOUT(0x1DBA0);
  }

  for (i = 0; i != v12; ++i)
  {
    if ((a5 & 0xC000000000000001) != 0)
    {
      v14 = sub_2AB64();
    }

    else
    {
      v14 = *(a5 + 8 * i + 32);
    }

    v15 = v14;
    [v11 addConstraints:v14];
  }

LABEL_11:
  if (a2 >> 62)
  {
    goto LABEL_34;
  }

  for (j = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); j; j = sub_2AC34())
  {
    if (j < 1)
    {
      goto LABEL_37;
    }

    v17 = 0;
    v18 = a2 & 0xC000000000000001;
    if (v7)
    {
      a3 = 0;
    }

    while (1)
    {
      if (v18)
      {
        v7 = sub_2AB64();
      }

      else
      {
        v7 = *(a2 + 8 * v17 + 32);
      }

      v19 = [objc_allocWithZone(PLUSSchemaPLUSRECTIFIPatternItem) init];
      if (!v19)
      {

        goto LABEL_18;
      }

      if ((*(v7 + 16) & 0x8000000000000000) != 0)
      {
        break;
      }

      v20 = v19;
      [v19 setRelativeTimestampInMs:?];
      [v20 setItemSource:dword_2C5F4[*(v7 + 40)]];
      v21 = sub_2A854();

      [v20 setItemDomainName:v21];

      a2 = sub_2A854();

      [v20 setItemPayload:a2];

      [v11 addSequence:v20];
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      if (HIDWORD(a1))
      {
        goto LABEL_31;
      }

      [v11 setNumberOfRequestsReviewed:a1];
      [v11 setOriginalRequestId:a6];
      if ((a3 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      if (HIDWORD(a3))
      {
        goto LABEL_33;
      }

      [v11 setNumberOfUniqueRequestsReviewed:a3];

      a2 = v24;
LABEL_18:
      if (j == ++v17)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

  return v11;
}

void sub_1DBD8(char *a1, uint64_t a2, uint64_t a3)
{
  if (qword_39740 != -1)
  {
LABEL_32:
    v35 = a1;
    swift_once();
    a1 = v35;
  }

  if (byte_3A7B0)
  {
    if (qword_39720 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_4;
  }

  v37 = *(a1 + 2);
  if (v37)
  {
    osloga = 0;
    v7 = 0;
    v8 = a1 + 64;
    v9 = &selRef_initWithEntityName_;
    v36 = a2;
    do
    {
      v39 = v7;
      v11 = *(v8 - 4);
      v10 = *(v8 - 3);
      v12 = *v8;
      v13 = *(v8 - 1);
      v14 = objc_allocWithZone(PLUSSchemaPLUSRECTIFIPatternConstraint);

      v15 = v9[23];

      v16 = [v14 v15];
      if (!v16)
      {

        return;
      }

      v18 = v16;
      LODWORD(v17) = 1060320051;
      [v16 setConstraintValue:v17];
      [v18 setConstraintType:1];
      sub_385C(&qword_398A0, &qword_2B6B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2B890;
      *(inited + 32) = v18;
      v20 = *(a3 + 16);
      if (osloga == v20)
      {
        v21 = 0;
      }

      else
      {
        if (osloga >= v20)
        {
          __break(1u);
LABEL_34:
          swift_once();
LABEL_4:
          v4 = sub_2A804();
          sub_B884(v4, qword_3AB28);
          oslog = sub_2A7E4();
          v5 = sub_2A9E4();
          if (os_log_type_enabled(oslog, v5))
          {
            v6 = swift_slowAlloc();
            *v6 = 0;
            _os_log_impl(&dword_0, oslog, v5, "Omitting SELF logging call as UsageLoggingDisabled flag present", v6, 2u);
          }

          return;
        }

        v21 = *(a3 + 32 + 8 * osloga);
        osloga = (osloga + 1);
        if (v21)
        {
          v22 = v21;
        }
      }

      v23 = v18;
      v24 = sub_1D730(v11, v10, v13, v12, inited, v21);

      swift_setDeallocating();
      swift_arrayDestroy();
      if (!v24)
      {

        return;
      }

      v25 = [objc_allocWithZone(PLUSSchemaPLUSClientEvent) init];
      if (!v25)
      {

LABEL_29:
        return;
      }

      v26 = v25;
      a1 = [objc_allocWithZone(PLUSSchemaPLUSClientEventMetadata) init];
      if (!a1)
      {

        return;
      }

      v27 = a1;
      a2 = v36;
      v28 = *(v36 + 16);
      if (v39 == v28)
      {

        goto LABEL_29;
      }

      if (v39 >= v28)
      {
        __break(1u);
        goto LABEL_32;
      }

      sub_2A0E4();
      v29 = objc_allocWithZone(SISchemaUUID);
      isa = sub_2A0B4().super.isa;
      v31 = [v29 initWithNSUUID:isa];

      [v27 setPlusId:v31];
      [v26 setPatternSequenceGenerated:v24];
      [v26 setEventMetadata:v27];
      v32 = [objc_opt_self() sharedAnalytics];
      v33 = [v32 defaultMessageStream];

      v34 = sub_2A0B4().super.isa;
      [v33 emitMessage:v26 isolatedStreamUUID:v34];

      v8 += 40;
      v7 = v39 + 1;
      v9 = &selRef_initWithEntityName_;
    }

    while (v37 != v39 + 1);
  }
}

id RECTIFIInfrequentPatternStore.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for RECTIFIInfrequentPatternStore();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id RECTIFIInfrequentPatternStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RECTIFIInfrequentPatternStore();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static RECTIFIInfrequentPatternStore.fetchRequest()()
{
  v0 = objc_allocWithZone(NSFetchRequest);
  v1 = sub_2A854();
  v2 = [v0 initWithEntityName:v1];

  return v2;
}

uint64_t sub_1E250@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for RECTIFIInfrequentPatternStore();
  result = sub_2AB44();
  *a2 = result;
  return result;
}

uint64_t RectifiStoreApi.__allocating_init(storePath:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  RectifiStoreApi.init(storePath:)(a1, a2);
  return v4;
}

void *RectifiStoreApi.init(storePath:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_2A404();
  swift_allocObject();
  sub_2A3F4();
  if (qword_39710 != -1)
  {
    swift_once();
  }

  v7 = qword_3AB08;
  v6 = unk_3AB10;
  v8 = sub_2A3E4();
  v10 = v9;

  v17._countAndFlagsBits = v8;
  v17._object = v10;
  sub_2A8C4(v17);

  v11 = v6;
  if (a2)
  {

    v11 = a2;
  }

  else
  {
    a1 = v7;
  }

  v12 = type metadata accessor for RectifiCoreDataStore(0);
  swift_allocObject();
  v13 = sub_39D8(a1, v11);

  v14 = &off_353D0;
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (!v13)
  {
    v14 = 0;
  }

  v3[2] = v13;
  v3[3] = 0;
  v3[4] = 0;
  v3[5] = v15;
  v3[6] = v14;
  return v3;
}

void *RectifiStoreApi.getTopKRectifiPatternUuids(topK:appLevelAggregation:)(uint64_t a1, int a2)
{
  LODWORD(v86) = a2;
  v4 = sub_385C(&qword_39918, &unk_2B740);
  __chkstk_darwin(v4 - 8);
  v6 = &v76 - v5;
  v7 = sub_2A0E4();
  v84 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = &v76 - v11;
  v87 = type metadata accessor for PatternStoreValue(0);
  v81 = *(v87 - 1);
  v12 = __chkstk_darwin(v87);
  v14 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v76 - v16;
  v18 = __chkstk_darwin(v15);
  v85 = (&v76 - v19);
  __chkstk_darwin(v18);
  v21 = &v76 - v20;
  sub_BAC4(v2 + 16, &v90, &qword_3A898, &qword_2C698);
  if (!v91)
  {
    sub_BB4C(&v90, &qword_3A898, &qword_2C698);
    if (qword_39720 != -1)
    {
      swift_once();
    }

    v32 = sub_2A804();
    sub_B884(v32, qword_3AB28);
    v33 = sub_2A7E4();
    v34 = sub_2A9F4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_0, v33, v34, "RECTIFI API: Unable to read from RECTIFI Store", v35, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  v88 = v10;
  v77 = v17;
  v78 = a1;
  v83 = v6;
  sub_192AC(&v90, v92);
  v22 = *sub_17088(v92, v92[3]);
  *&v90 = sub_22744(_swiftEmptyArrayStorage);
  v23 = sub_2A214();
  __chkstk_darwin(v23);
  *(&v76 - 4) = v22;
  *(&v76 - 3) = &v90;
  *(&v76 - 16) = 0;
  sub_2AA24();
  v79 = 0;
  v82 = v14;

  v37 = 0;
  v39 = v90 + 64;
  v38 = *(v90 + 64);
  v80 = v90;
  v40 = 1 << *(v90 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & v38;
  v43 = (v40 + 63) >> 6;
  v44 = _swiftEmptyArrayStorage;
  v45 = v81;
  if ((v41 & v38) != 0)
  {
    while (1)
    {
LABEL_20:
      v47 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v48 = *(v45 + 72);
      v49 = v85;
      sub_B7E8(*(v80 + 56) + v48 * (v47 | (v37 << 6)), v85);
      sub_B720(v49, v21);
      v50 = v21[*(v87 + 7)];
      if (v50 == 2)
      {
        if (v86)
        {
          goto LABEL_15;
        }

LABEL_22:
        sub_B720(v21, v77);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v90 = v44;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20118(0, v44[2] + 1, 1);
          v44 = v90;
        }

        v53 = v44[2];
        v52 = v44[3];
        v54 = v53 + 1;
        if (v53 >= v52 >> 1)
        {
          sub_20118((v52 > 1), v53 + 1, 1);
          v54 = v53 + 1;
          v44 = v90;
        }

        v44[2] = v54;
        v55 = v44 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + v53 * v48;
        v45 = v81;
        sub_B720(v77, v55);
        if (!v42)
        {
          goto LABEL_16;
        }
      }

      else
      {
        if (((v50 ^ v86) & 1) == 0)
        {
          goto LABEL_22;
        }

LABEL_15:
        sub_B904(v21);
        if (!v42)
        {
          goto LABEL_16;
        }
      }
    }
  }

  while (1)
  {
LABEL_16:
    v46 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      swift_once();
      v24 = sub_2A804();
      sub_B884(v24, qword_3AB28);
      swift_errorRetain();
      v25 = sub_2A7E4();
      v26 = sub_2A9F4();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *&v90 = v28;
        *v27 = 136315138;
        swift_getErrorValue();
        v29 = sub_2AD94();
        v31 = sub_1FA70(v29, v30, &v90);

        *(v27 + 4) = v31;
        _os_log_impl(&dword_0, v25, v26, "RECTIFI API: Unable to read from RECTIFI Store %s", v27, 0xCu);
        sub_BA2C(v28);
      }

      else
      {
      }

      goto LABEL_45;
    }

    if (v46 >= v43)
    {
      break;
    }

    v42 = *(v39 + 8 * v46);
    ++v37;
    if (v42)
    {
      v37 = v46;
      goto LABEL_20;
    }
  }

  *&v90 = v44;

  v56 = v79;
  sub_211A4(&v90);
  if (!v56)
  {

    v76 = v90;
    v57 = *(v90 + 16);
    v58 = v83;
    v59 = v82;
    if (v57 <= v78)
    {
      goto LABEL_32;
    }

    if ((v78 & 0x8000000000000000) == 0)
    {
      sub_214EC(v76, v76 + ((*(v81 + 80) + 32) & ~*(v81 + 80)), 0, (2 * v78) | 1);
      v61 = v60;

      v57 = *(v61 + 16);
      v76 = v61;
LABEL_32:
      if (v57)
      {
        v62 = *(v87 + 6);
        v63 = v76 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
        v85 = (v84 + 48);
        v86 = (v84 + 32);
        v79 = (v84 + 16);
        v78 = v84 + 8;
        v87 = _swiftEmptyArrayStorage;
        v64 = *(v81 + 72);
        v65 = v7;
        v81 = v7;
        v80 = v62;
        v77 = v64;
        do
        {
          sub_B7E8(v63, v59);
          sub_BAC4(v59 + v62, v58, &qword_39918, &unk_2B740);
          if ((*v85)(v58, 1, v65) == 1)
          {
            sub_B904(v59);
            sub_BB4C(v58, &qword_39918, &unk_2B740);
          }

          else
          {
            v66 = *v86;
            v67 = v89;
            (*v86)(v89, v58, v65);
            (*v79)(v88, v67, v65);
            v68 = v87;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v68 = sub_1F518(0, v68[2] + 1, 1, v68, &qword_3A988, &qword_2C748, &type metadata accessor for UUID);
            }

            v70 = v68[2];
            v69 = v68[3];
            if (v70 >= v69 >> 1)
            {
              v68 = sub_1F518((v69 > 1), v70 + 1, 1, v68, &qword_3A988, &qword_2C748, &type metadata accessor for UUID);
            }

            v71 = v84;
            v72 = v81;
            (*(v84 + 8))(v89, v81);
            v59 = v82;
            sub_B904(v82);
            v68[2] = v70 + 1;
            v73 = (*(v71 + 80) + 32) & ~*(v71 + 80);
            v87 = v68;
            v74 = v68 + v73 + *(v71 + 72) * v70;
            v65 = v72;
            v66(v74, v88, v72);
            v58 = v83;
            v62 = v80;
            v64 = v77;
          }

          v63 += v64;
          --v57;
        }

        while (v57);

        v36 = v87;
        goto LABEL_46;
      }

LABEL_45:
      v36 = _swiftEmptyArrayStorage;
LABEL_46:
      sub_BA2C(v92);
      return v36;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t RectifiStoreApi.__deallocating_deinit()
{
  sub_BB4C(v0 + 16, &qword_3A898, &qword_2C698);

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_1EF14(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_1EF60(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A978, &qword_2C738);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1F0C8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_385C(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_1F1C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A170, &qword_2BC50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1F2D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A168, &qword_2BC48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1F414(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A1D8, &qword_2BCB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1F518(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_385C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1F718(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_385C(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_385C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1F84C(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A950, &qword_2C700);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1F958(uint64_t a1, uint64_t a2)
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

  sub_385C(&qword_3A170, &qword_2BC50);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

_BYTE **sub_1F9DC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_1FA14(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1FA70(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1FA70(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1FB3C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_22938(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_BA2C(v11);
  return v7;
}

unint64_t sub_1FB3C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1FC48(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2ABA4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1FC48(uint64_t a1, unint64_t a2)
{
  v3 = sub_1FC94(a1, a2);
  sub_1FDC4(&off_350D0);
  return v3;
}

void *sub_1FC94(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_1FEB0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2ABA4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2A8D4();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1FEB0(v10, 0);
        result = sub_2AB24();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1FDC4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1FF24(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1FEB0(uint64_t a1, uint64_t a2)
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

  sub_385C(&qword_3A9D0, &qword_2C798);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1FF24(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A9D0, &qword_2C798);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_20018(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20280(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20038(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_204A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20058(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_205A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20078(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20794(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20098(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_208B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_200B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_209BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_200D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20AF0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_200F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20C34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20118(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20FC8(a1, a2, a3, *v3, &qword_3A9C8, &qword_2C790, type metadata accessor for PatternStoreValue);
  *v3 = result;
  return result;
}

void *sub_2015C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E94(a1, a2, a3, *v3, &qword_3A960, &qword_2C718, &qword_3A1B0, &qword_2C720);
  *v3 = result;
  return result;
}

void *sub_2019C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20D60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_201BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E94(a1, a2, a3, *v3, &qword_3A958, &unk_2C708, &qword_39EB0, &qword_2BA30);
  *v3 = result;
  return result;
}

void *sub_201FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20E94(a1, a2, a3, *v3, &qword_3A948, "@", &qword_399C8, &qword_2B778);
  *v3 = result;
  return result;
}

void *sub_2023C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20FC8(a1, a2, a3, *v3, &qword_3A988, &qword_2C748, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

char *sub_20280(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A980, &qword_2C740);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_20384(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A978, &qword_2C738);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_204A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A9C0, &qword_2C788);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

void *sub_205A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_385C(&qword_3A9B8, &qword_2C780);
  v10 = *(sub_385C(&qword_399F0, &qword_2B790) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_385C(&qword_399F0, &qword_2B790) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_20794(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A168, &qword_2BC48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_208B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A170, &qword_2BC50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_209BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_385C(&qword_3A9A8, &qword_2C770);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_385C(&qword_3A9B0, &qword_2C778);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20AF0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_385C(&qword_3A998, &qword_2C760);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_385C(&qword_3A9A0, &qword_2C768);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20C34(char *result, int64_t a2, char a3, char *a4)
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
    sub_385C(&qword_3A1D8, &qword_2BCB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}