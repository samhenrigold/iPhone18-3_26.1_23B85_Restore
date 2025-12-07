uint64_t sub_43218(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62128, &qword_4AA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_432C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_43310()
{
  v1 = v0;
  sub_54A4(&qword_63EB0, &qword_4CFA8);
  v2 = *v0;
  v3 = sub_487F4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        v22 = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_4347C()
{
  v1 = v0;
  v2 = type metadata accessor for ViewModelPollVote(0);
  v32 = *(v2 - 8);
  __chkstk_darwin(v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_54A4(&qword_630D0, &qword_4CFA0);
  v5 = *v0;
  v6 = sub_487F4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    v8 = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_6BEC(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_7A64(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_436AC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_54A4(a1, a2);
  v4 = *v2;
  v5 = sub_487F4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        sub_606C(*(v4 + 56) + 32 * v19, v22);
        *(*(v6 + 48) + 8 * v19) = v20;
        sub_54EC(v22, (*(v6 + 56) + 32 * v19));
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

uint64_t sub_43898(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_47A04();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_43958(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_47A04();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s11RowTextViewVMa(uint64_t a1)
{
  result = qword_63F10;
  if (!qword_63F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_43A48(uint64_t a1)
{
  type metadata accessor for PollViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_43BA8(319, &qword_636A0, &type metadata for PollViewModel.TextItem, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_47A04();
      if (v3 <= 0x3F)
      {
        sub_43BA8(319, &qword_622A8, &type metadata for Bool, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_43BA8(319, &unk_63F20, &type metadata for CGFloat, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_43BA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_43C14()
{
  v1 = sub_47BF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(_s11RowTextViewVMa(0) + 28);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_48634();
    v8 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();
    sub_EB40(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

uint64_t sub_43D6C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_46C78(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  if (*(v1 + 98) == 1)
  {
    sub_631C();
    sub_480A4();
    v2 = sub_486B4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
  type metadata accessor for PollOptionTextTransformer();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v2;
  *(result + 32) = 1;
  return result;
}

uint64_t sub_43E84@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v52 = sub_54A4(&qword_63F70, &qword_4D010);
  v2 = *(v52 - 8);
  __chkstk_darwin(v52, v3);
  v5 = &v46 - v4;
  v49 = sub_54A4(&qword_63F78, &qword_4D018);
  __chkstk_darwin(v49, v6);
  v48 = &v46 - v7;
  v8 = sub_54A4(&qword_63F80, &qword_4D020);
  __chkstk_darwin(v8, v9);
  v11 = &v46 - v10;
  v50 = sub_54A4(&qword_63F88, &qword_4D028);
  v13 = __chkstk_darwin(v50, v12);
  v46 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v47 = &v46 - v16;
  v17 = v1;
  v18 = *v1;
  swift_getKeyPath();
  v53 = v18;
  sub_46C78(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  if (*(v18 + 98) == 1 && (swift_getKeyPath(), v53 = v18, sub_475C4(), , (*(v18 + 97) & 1) == 0))
  {
    *v11 = sub_47C84();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v23 = sub_54A4(&qword_64030, &qword_4D0C8);
    sub_44DE0(v1, &v11[*(v23 + 44)]);
    KeyPath = swift_getKeyPath();
    v25 = *(_s11RowTextViewVMa(0) + 24);
    v26 = &v11[*(v8 + 36)];
    v27 = *(sub_54A4(&qword_63890, &qword_4C860) + 28);
    v28 = sub_47A04();
    (*(*(v28 - 8) + 16))(v26 + v27, v17 + v25, v28);
    *v26 = KeyPath;
    sub_54A4(&qword_63920, &qword_4C9A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_4C610;
    v30 = sub_47E64();
    *(inited + 32) = v30;
    v31 = sub_47E74();
    *(inited + 33) = v31;
    v32 = sub_47E94();
    sub_47E94();
    if (sub_47E94() != v30)
    {
      v32 = sub_47E94();
    }

    sub_47E94();
    if (sub_47E94() != v31)
    {
      v32 = sub_47E94();
    }

    sub_47834();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = v46;
    sub_E940(v11, v46, &qword_63F80, &qword_4D020);
    v42 = v41 + *(v50 + 36);
    *v42 = v32;
    *(v42 + 8) = v34;
    *(v42 + 16) = v36;
    *(v42 + 24) = v38;
    *(v42 + 32) = v40;
    *(v42 + 40) = 0;
    v43 = v47;
    sub_E940(v41, v47, &qword_63F88, &qword_4D028);
    sub_6128(v43, v48, &qword_63F88, &qword_4D028);
    swift_storeEnumTagMultiPayload();
    sub_46504(&qword_63F90, &qword_63F88, &qword_4D028, sub_46284);
    v44 = sub_A36C(&qword_63FB0, &qword_4D060);
    v45 = sub_46368();
    v53 = v44;
    v54 = v45;
    swift_getOpaqueTypeConformance2();
    sub_47CC4();
    return sub_60C8(v43, &qword_63F88, &qword_4D028);
  }

  else
  {
    sub_444C4(v5);
    v19 = v52;
    (*(v2 + 16))(v48, v5, v52);
    swift_storeEnumTagMultiPayload();
    sub_46504(&qword_63F90, &qword_63F88, &qword_4D028, sub_46284);
    v20 = sub_A36C(&qword_63FB0, &qword_4D060);
    v21 = sub_46368();
    v53 = v20;
    v54 = v21;
    swift_getOpaqueTypeConformance2();
    sub_47CC4();
    return (*(v2 + 8))(v5, v19);
  }
}

uint64_t sub_444C4@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v74 = sub_47EF4();
  v72 = *(v74 - 8);
  __chkstk_darwin(v74, v2);
  v71 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ViewModelPollVote(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8, v6);
  v8 = (&v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v1;
  swift_getKeyPath();
  v79 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  *&v92 = v9;
  v10 = sub_46C78(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  swift_beginAccess();
  v11 = *(v9 + 72);
  v12 = *(v1 + 3);
  v13 = *(v1 + 7);
  v94 = *(v1 + 5);
  v95[0] = v13;
  *(v95 + 10) = *(v1 + 66);
  v75 = v1;
  v92 = *(v1 + 1);
  v93 = v12;

  v70 = sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v14 = v103;
  v80 = v102;

  sub_E8EC(v101);
  swift_getKeyPath();
  *&v92 = v9;
  v77 = v10;
  sub_475C4();

  v78 = v9;
  v15 = *(v9 + 88);
  if (!v15)
  {

    LODWORD(v16) = 0;
LABEL_23:
    v25 = sub_47464();
    v80 = &v64;
    __chkstk_darwin(v25 - 8, v26);
    v27 = v75;
    sub_43D6C();
    v28 = *(v27 + 3);
    v29 = *(v27 + 7);
    v94 = *(v27 + 5);
    v95[0] = v29;
    *(v95 + 10) = *(v27 + 66);
    v92 = *(v27 + 1);
    v93 = v28;
    sub_48164();
    v30 = v100[4];

    sub_E8EC(v100);
    sub_40428(v30, 0);

    sub_47484();
    v31 = sub_47F04();
    v33 = v32;
    v35 = v34;
    LODWORD(v80) = v16;
    *&v92 = sub_46E20(v16);
    v76 = sub_47ED4();
    v69 = v37;
    v70 = v36;
    v39 = v38;
    sub_3189C(v31, v33, v35 & 1);

    swift_getKeyPath();
    v40 = v78;
    *&v92 = v78;
    sub_475C4();

    v67 = *(v40 + 98);
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    *&v92 = v40;
    sub_475C4();

    v65 = *(v40 + 98);
    v66 = swift_getKeyPath();
    v97 = v39 & 1;
    swift_getKeyPath();
    *&v92 = v40;
    sub_475C4();

    v41 = *(v40 + 98);
    v64 = swift_getKeyPath();
    v98 = v41 ^ 1;
    sub_54A4(&qword_63920, &qword_4C9A8);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_4C610;
    v43 = sub_47E84();
    *(v42 + 32) = v43;
    v44 = sub_47EA4();
    *(v42 + 33) = v44;
    v45 = sub_47E94();
    sub_47E94();
    if (sub_47E94() != v43)
    {
      v45 = sub_47E94();
    }

    sub_47E94();
    if (sub_47E94() != v44)
    {
      v45 = sub_47E94();
    }

    v46 = v75;
    v47 = _s11RowTextViewVMa(0);
    sub_47834();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v99 = 0;
    swift_getKeyPath();
    v56 = v78;
    *&v92 = v78;
    sub_475C4();

    v57 = v46;
    v58 = 0;
    if (*(v56 + 97) == 1)
    {
      v58 = *(v57 + *(v47 + 48));
    }

    v59 = v65 ^ 1;
    if (v67)
    {
      v60 = 1.0;
    }

    else
    {
      v60 = 0.5;
    }

    swift_getKeyPath();
    v61 = v78;
    *&v92 = v78;
    sub_475C4();

    v62 = *(v61 + 98);
    *&v81 = v76;
    *(&v81 + 1) = v70;
    LOBYTE(v82) = v39 & 1;
    *(&v82 + 1) = v69;
    *&v83 = KeyPath;
    *(&v83 + 1) = v60;
    *&v84 = v66;
    BYTE8(v84) = v59;
    *&v85 = v64;
    *(&v85 + 1) = v41;
    LOBYTE(v86) = v41 ^ 1;
    BYTE8(v86) = v45;
    *&v87 = v49;
    *(&v87 + 1) = v51;
    *&v88 = v53;
    *(&v88 + 1) = v55;
    LOBYTE(v89) = 0;
    *(&v89 + 1) = v58;
    LOBYTE(v90) = v62;
    *(&v90 + 1) = 0;
    v91 = v80;
    v63 = v71;
    sub_47EE4();
    sub_54A4(&qword_63FB0, &qword_4D060);
    sub_46368();
    sub_48024();
    (*(v72 + 8))(v63, v74);
    v95[5] = v89;
    v95[6] = v90;
    v96 = v91;
    v95[1] = v85;
    v95[2] = v86;
    v95[3] = v87;
    v95[4] = v88;
    v92 = v81;
    v93 = v82;
    v94 = v83;
    v95[0] = v84;
    return sub_60C8(&v92, &qword_63FB0, &qword_4D060);
  }

  v76 = v14;
  v16 = *(v11 + 16);
  if (!v16)
  {

    goto LABEL_23;
  }

  v17 = *(v78 + 80);
  v18 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  v20 = 0;
  while (v20 < *(v11 + 16))
  {
    sub_47154(v18 + *(v5 + 72) * v20, v8, type metadata accessor for ViewModelPollVote);
    v21 = v8[3];
    if (v21 && (v8[2] == v17 ? (v22 = v21 == v15) : (v22 = 0), (v22 || (sub_48874() & 1) != 0) && (v23 = v8[1]) != 0))
    {
      if (*v8 == v80 && v23 == v76)
      {
        sub_471BC(v8, type metadata accessor for ViewModelPollVote);
LABEL_22:

        LODWORD(v16) = 1;
        goto LABEL_23;
      }

      v24 = sub_48874();
      result = sub_471BC(v8, type metadata accessor for ViewModelPollVote);
      if (v24)
      {
        goto LABEL_22;
      }
    }

    else
    {
      result = sub_471BC(v8, type metadata accessor for ViewModelPollVote);
    }

    if (v16 == ++v20)
    {

      LODWORD(v16) = 0;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_44DE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v3 = sub_47C54();
  v145 = *(v3 - 8);
  v146 = v3;
  __chkstk_darwin(v3, v4);
  v144 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_47D14();
  v142 = *(v6 - 8);
  v143 = v6;
  __chkstk_darwin(v6, v7);
  v141 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = _s11RowTextViewVMa(0);
  v135 = *(v156 - 1);
  __chkstk_darwin(v156, v9);
  v136 = v10;
  v11 = &v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = type metadata accessor for AdaptiveGlyphSwiftUITextView(0);
  __chkstk_darwin(v155, v12);
  v14 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_54A4(&qword_64038, &qword_4D100);
  v16 = __chkstk_darwin(v140, v15);
  v137 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v18);
  v139 = &v119 - v19;
  v138 = sub_54A4(&qword_64040, &qword_4D108);
  __chkstk_darwin(v138, v20);
  v149 = &v119 - v21;
  v148 = sub_54A4(&qword_64048, &qword_4D110);
  __chkstk_darwin(v148, v22);
  v151 = &v119 - v23;
  v150 = sub_54A4(&qword_64050, &qword_4D118);
  v25 = __chkstk_darwin(v150, v24);
  v152 = &v119 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25, v27);
  v147 = &v119 - v29;
  __chkstk_darwin(v28, v30);
  v154 = &v119 - v31;
  v32 = *(a1 + 3);
  v33 = *(a1 + 7);
  v175 = *(a1 + 5);
  v176[0] = v33;
  *(v176 + 10) = *(a1 + 66);
  v173 = *(a1 + 1);
  v174 = v32;
  v34 = sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48194();
  swift_getKeyPath();
  v175 = v182[2];
  v176[0] = v183[0];
  *(v176 + 10) = *(v183 + 10);
  v173 = v182[0];
  v174 = v182[1];
  sub_48184();

  sub_60C8(v182, &qword_624C8, &unk_4AF90);
  v133 = *&v158[0];
  v134 = *(v158 + 8);
  v132 = sub_43D6C();
  v35 = *(a1 + 3);
  v36 = *(a1 + 7);
  v170[0] = *(a1 + 5);
  v170[1] = v36;
  *(&v170[1] + 10) = *(a1 + 66);
  v168 = *(a1 + 1);
  v169 = v35;
  v157 = v34;
  sub_48164();
  v37 = v156;
  v38 = *(a1 + *(v156 + 10));
  sub_54A4(&qword_62B50, &qword_4BB60);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_4A9C0;
  if (__OFADD__(v38, 1))
  {
    __break(1u);
  }

  else
  {
    *(v39 + 56) = &type metadata for Int;
    *(v39 + 64) = &protocol witness table for Int;
    *(v39 + 32) = v38 + 1;
    if (qword_61CD0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_47494();
  v40 = sub_483E4();
  v130 = v41;
  v131 = v40;

  sub_E8EC(&v184);
  v42 = *(a1 + 3);
  v43 = *(a1 + 7);
  v170[0] = *(a1 + 5);
  v170[1] = v43;
  *(&v170[1] + 10) = *(a1 + 66);
  v168 = *(a1 + 1);
  v169 = v42;
  sub_48164();
  v185[0] = v164;
  v185[1] = v165;
  v186[0] = v166[0];
  *(v186 + 10) = *(v166 + 10);
  sub_E8EC(v185);
  v44 = *(a1 + *(v37 + 9));
  v128 = BYTE8(v186[1]);
  v129 = v44;
  sub_47154(a1, v11, _s11RowTextViewVMa);
  v45 = (*(v135 + 80) + 16) & ~*(v135 + 80);
  v127 = swift_allocObject();
  sub_467C4(v11, v127 + v45);
  sub_47154(a1, v11, _s11RowTextViewVMa);
  v125 = swift_allocObject();
  sub_467C4(v11, v125 + v45);
  sub_47154(a1, v11, _s11RowTextViewVMa);
  v124 = swift_allocObject();
  sub_467C4(v11, v124 + v45);
  sub_47154(a1, v11, _s11RowTextViewVMa);
  v123 = swift_allocObject();
  sub_467C4(v11, v123 + v45);
  sub_47154(a1, v11, _s11RowTextViewVMa);
  v122 = swift_allocObject();
  sub_467C4(v11, v122 + v45);
  v46 = *(a1 + 3);
  v47 = *(a1 + 7);
  v170[0] = *(a1 + 5);
  v170[1] = v47;
  *(&v170[1] + 10) = *(a1 + 66);
  v168 = *(a1 + 1);
  v169 = v46;
  sub_48164();
  v48 = v187[1];
  v121 = v187[0];

  sub_E8EC(v187);
  v49 = *(a1 + *(v156 + 11));
  v50 = (a1 + *(v156 + 13));
  v51 = *v50;
  v135 = v50[1];
  *&v164 = v51;
  *(&v164 + 1) = v135;
  v126 = sub_54A4(qword_62A78, &qword_4B948);
  sub_48144();
  v119 = *(&v168 + 1);
  v120 = v168;
  v52 = v169;
  *(v14 + 25) = sub_62DC;
  *(v14 + 26) = 0;
  v53 = *(v155 + 76);
  *&v14[v53] = swift_getKeyPath();
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  v54 = v132;
  *v14 = v133;
  *(v14 + 8) = v134;
  *(v14 + 3) = v54;
  v55 = [objc_allocWithZone(type metadata accessor for AdaptiveGlyphTextViewObserver()) init];
  v56 = v130;
  *(v14 + 4) = v131;
  *(v14 + 5) = v56;
  v14[48] = v128;
  *(v14 + 7) = v55;
  *(v14 + 8) = sub_46828;
  *(v14 + 9) = v127;
  *(v14 + 10) = sub_46840;
  v57 = v124;
  *(v14 + 11) = v125;
  *(v14 + 12) = sub_468BC;
  *(v14 + 13) = v57;
  *(v14 + 14) = sub_468D4;
  v58 = v122;
  *(v14 + 15) = v123;
  *(v14 + 16) = sub_46980;
  *(v14 + 17) = v58;
  v14[144] = v129;
  v59 = v120;
  *(v14 + 19) = v121;
  *(v14 + 20) = v48;
  *(v14 + 21) = v49;
  v60 = v119;
  *(v14 + 22) = v59;
  *(v14 + 23) = v60;
  *(v14 + 24) = v52;
  sub_47154(a1, v11, _s11RowTextViewVMa);
  v61 = swift_allocObject();
  sub_467C4(v11, v61 + v45);
  v62 = v141;
  sub_47D04();
  sub_46C78(&qword_63548, type metadata accessor for AdaptiveGlyphSwiftUITextView, &unk_4C4F0);
  v63 = v137;
  sub_47FE4();

  (*(v142 + 8))(v62, v143);
  sub_471BC(v14, type metadata accessor for AdaptiveGlyphSwiftUITextView);
  v64 = v144;
  sub_47C44();
  v65 = v139;
  sub_47A44();
  (*(v145 + 8))(v64, v146);
  sub_60C8(v63, &qword_64038, &qword_4D100);
  sub_46B8C();
  v66 = v149;
  sub_47F94();
  sub_60C8(v65, &qword_64038, &qword_4D100);
  v156 = a1 + *(v156 + 8);
  v67 = *(v156 + 6);
  v68 = (v66 + *(v138 + 36));
  v69 = *(sub_47A84() + 20);
  v70 = enum case for RoundedCornerStyle.continuous(_:);
  v71 = sub_47C24();
  v72 = v68 + v69;
  v73 = v135;
  (*(*(v71 - 8) + 104))(v72, v70, v71);
  *v68 = v67;
  v68[1] = v67;
  *(v68 + *(sub_54A4(&qword_62390, &qword_4AE78) + 36)) = 256;
  v74 = *(a1 + 3);
  v75 = *(a1 + 7);
  v175 = *(a1 + 5);
  v176[0] = v75;
  *(v176 + 10) = *(a1 + 66);
  v173 = *(a1 + 1);
  v174 = v74;
  sub_48164();
  v188[0] = v168;
  v188[1] = v169;
  *v189 = v170[0];
  *&v189[10] = *(v170 + 10);
  sub_E8EC(v188);
  if (v189[24] == 1)
  {
    *&v173 = v51;
    *(&v173 + 1) = v73;
    sub_48124();
  }

  sub_482A4();
  sub_47904();
  v76 = v151;
  sub_E940(v66, v151, &qword_64040, &qword_4D108);
  v77 = (v76 + *(v148 + 36));
  v78 = v180[3];
  *v77 = v180[2];
  v77[1] = v78;
  v77[2] = v180[4];
  *&v173 = v51;
  *(&v173 + 1) = v73;
  sub_48124();
  v79 = v168;
  v80 = v147;
  sub_E940(v76, v147, &qword_64048, &qword_4D110);
  v81 = (v80 + *(v150 + 36));
  *v81 = 0;
  v81[1] = v79;
  v82 = v154;
  sub_E940(v80, v154, &qword_64050, &qword_4D118);
  v83 = *(a1 + 3);
  v84 = *(a1 + 7);
  v175 = *(a1 + 5);
  v176[0] = v84;
  *(v176 + 10) = *(a1 + 66);
  v173 = *(a1 + 1);
  v174 = v83;
  sub_48164();
  v179[0] = v168;
  v179[1] = v169;
  v180[0] = v170[0];
  *(v180 + 10) = *(v170 + 10);
  sub_E8EC(v179);
  if ((BYTE8(v180[1]) != 1 || (v85 = *a1, swift_getKeyPath(), *&v173 = v85, sub_46C78(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC), sub_475C4(), , *(v85 + 98) == 1) && (swift_getKeyPath(), *&v173 = v85, sub_475C4(), , *(v85 + 97) == 1)) && (v86 = *(a1 + 3), v87 = *(a1 + 7), v175 = *(a1 + 5), v176[0] = v87, *(v176 + 10) = *(a1 + 66), v173 = *(a1 + 1), v174 = v86, sub_48164(), v88 = sub_1F8F8(v181), v90 = v89, sub_E8EC(v181), v90))
  {
    *&v173 = v88;
    *(&v173 + 1) = v90;
    sub_10330();
    v157 = sub_47F14();
    v92 = v91;
    v94 = v93;
    v96 = v95;
    KeyPath = swift_getKeyPath();
    v98 = sub_47EB4();
    v99 = swift_getKeyPath();
    v100 = v94 & 1;
    LOBYTE(v173) = v94 & 1;
    LOBYTE(v168) = 0;
    v101 = *(v156 + 7);

    v102 = sub_47E74();
    v103 = sub_47E94();
    sub_47E94();
    if (sub_47E94() != v102)
    {
      v103 = sub_47E94();
    }

    sub_47834();
    LOBYTE(v164) = 0;
    *&v168 = v157;
    *(&v168 + 1) = v92;
    LOBYTE(v169) = v100;
    *(&v169 + 1) = v96;
    *&v170[0] = KeyPath;
    *(&v170[0] + 1) = 2;
    LOBYTE(v170[1]) = 0;
    *(&v170[1] + 1) = v99;
    *&v170[2] = v98;
    *(&v170[2] + 1) = v101;
    LOBYTE(v171) = v103;
    *(&v171 + 1) = v104;
    *&v172[0] = v105;
    *(&v172[0] + 1) = v106;
    *&v172[1] = v107;
    BYTE8(v172[1]) = 0;
    nullsub_1();
    v176[1] = v170[2];
    v177 = v171;
    v178[0] = v172[0];
    *(v178 + 9) = *(v172 + 9);
    v173 = v168;
    v174 = v169;
    v175 = v170[0];
    v176[0] = v170[1];
    v82 = v154;
  }

  else
  {
    sub_46CC0(&v173);
  }

  v108 = v152;
  sub_6128(v82, v152, &qword_64050, &qword_4D118);
  v161 = v176[1];
  v162 = v177;
  v163[0] = v178[0];
  *(v163 + 9) = *(v178 + 9);
  v158[0] = v173;
  v158[1] = v174;
  v159 = v175;
  v160 = v176[0];
  v109 = v153;
  sub_6128(v108, v153, &qword_64050, &qword_4D118);
  v110 = (v109 + *(sub_54A4(&qword_64060, &qword_4D170) + 48));
  v111 = v161;
  v112 = v162;
  v166[2] = v161;
  v166[3] = v162;
  v113 = v163[0];
  v167[0] = v163[0];
  v114 = *(v163 + 9);
  *(v167 + 9) = *(v163 + 9);
  v115 = v158[0];
  v116 = v158[1];
  v164 = v158[0];
  v165 = v158[1];
  v117 = v160;
  v166[0] = v159;
  v166[1] = v160;
  v110[2] = v159;
  v110[3] = v117;
  *v110 = v115;
  v110[1] = v116;
  *(v110 + 105) = v114;
  v110[5] = v112;
  v110[6] = v113;
  v110[4] = v111;
  sub_46CDC(&v164, &v168);
  sub_60C8(v82, &qword_64050, &qword_4D118);
  v170[2] = v161;
  v171 = v162;
  v172[0] = v163[0];
  *(v172 + 9) = *(v163 + 9);
  v168 = v158[0];
  v169 = v158[1];
  v170[0] = v159;
  v170[1] = v160;
  sub_60C8(&v168, &qword_64068, &qword_4D178);
  return sub_60C8(v108, &qword_64050, &qword_4D118);
}

uint64_t sub_45E94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_getKeyPath();
  sub_46C78(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  result = *(v5 + 160);
  if (result != a1 || *(v5 + 168) != a2)
  {
    result = sub_48874();
    if ((result & 1) == 0)
    {

      return sub_1E83C(a1, a2);
    }
  }

  return result;
}

uint64_t sub_45F7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_getKeyPath();
  sub_46C78(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  if (*(v5 + 160) == a1 && *(v5 + 168) == a2)
  {
    return sub_1E83C(0, 0xE000000000000000);
  }

  result = sub_48874();
  if (result)
  {
    return sub_1E83C(0, 0xE000000000000000);
  }

  return result;
}

void sub_4605C(void *a1)
{
  if (*(a1 + *(_s11RowTextViewVMa(0) + 36)) == 1)
  {
    v2 = *a1;
    swift_getKeyPath();
    sub_46C78(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
    sub_475C4();

    v3 = *(v2 + 168);
    v4 = *(v2 + 160) & 0xFFFFFFFFFFFFLL;
    if ((v3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(v3) & 0xF;
    }

    if (v4)
    {
      sub_1E83C(0, 0xE000000000000000);
    }
  }
}

uint64_t sub_4613C(uint64_t *a1)
{
  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v3 = v7[0];
  v2 = v7[1];

  sub_E8EC(v7);
  v4 = *a1;
  swift_getKeyPath();
  sub_46C78(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  v5 = *(v4 + 160) == v3 && *(v4 + 168) == v2;
  if (v5 || (sub_48874() & 1) != 0)
  {
  }

  else
  {
    return sub_1E83C(v3, v2);
  }
}

unint64_t sub_46284()
{
  result = qword_63F98;
  if (!qword_63F98)
  {
    sub_A36C(&qword_63F80, &qword_4D020);
    sub_EAF0(&qword_63FA0, &qword_63FA8, &qword_4D058, &protocol conformance descriptor for VStack<A>);
    sub_EAF0(&qword_63888, &qword_63890, &qword_4C860, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63F98);
  }

  return result;
}

unint64_t sub_46368()
{
  result = qword_63FB8;
  if (!qword_63FB8)
  {
    sub_A36C(&qword_63FB0, &qword_4D060);
    sub_46420();
    sub_EAF0(&qword_63778, &qword_63780, &qword_4C768, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63FB8);
  }

  return result;
}

unint64_t sub_46420()
{
  result = qword_63FC0;
  if (!qword_63FC0)
  {
    sub_A36C(&qword_63FC8, &qword_4D068);
    sub_46504(&qword_63FD0, &qword_63FD8, &qword_4D070, sub_46588);
    sub_EAF0(&qword_63778, &qword_63780, &qword_4C768, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63FC0);
  }

  return result;
}

uint64_t sub_46504(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_A36C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_46588()
{
  result = qword_63FE0;
  if (!qword_63FE0)
  {
    sub_A36C(&qword_63FE8, &qword_4D078);
    sub_46640();
    sub_EAF0(&qword_64020, &qword_64028, &qword_4D098, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63FE0);
  }

  return result;
}

unint64_t sub_46640()
{
  result = qword_63FF0;
  if (!qword_63FF0)
  {
    sub_A36C(&qword_63FF8, &qword_4D080);
    sub_466F8();
    sub_EAF0(&qword_64010, &qword_64018, &qword_4D090, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63FF0);
  }

  return result;
}

unint64_t sub_466F8()
{
  result = qword_64000;
  if (!qword_64000)
  {
    sub_A36C(&qword_64008, &qword_4D088);
    sub_EAF0(&qword_623C0, &qword_623C8, &qword_4AE80, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_64000);
  }

  return result;
}

uint64_t sub_467C4(uint64_t a1, uint64_t a2)
{
  v4 = _s11RowTextViewVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_468EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(_s11RowTextViewVMa(0) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_469A0()
{
  v1 = (_s11RowTextViewVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = sub_47A04();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  sub_EB40(*(v0 + v3 + v1[9]), *(v0 + v3 + v1[9] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_46B18(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s11RowTextViewVMa(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_46B8C()
{
  result = qword_64058;
  if (!qword_64058)
  {
    sub_A36C(&qword_64038, &qword_4D100);
    sub_46C78(&qword_63548, type metadata accessor for AdaptiveGlyphSwiftUITextView, &unk_4C4F0);
    sub_46C78(&qword_63240, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_64058);
  }

  return result;
}

uint64_t sub_46C78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_46CC0(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_46CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_64068, &qword_4D178);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_46D4C@<X0>(uint64_t a1@<X8>)
{
  result = sub_47BC4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_46DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_47B64();
  *a1 = result;
  return result;
}

uint64_t sub_46E20(char a1)
{
  v3 = *v1;
  swift_getKeyPath();
  sub_46C78(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  if (*(v3 + 98) == 1)
  {
    v13 = *(v1 + 5);
    *v14 = *(v1 + 7);
    *&v14[10] = *(v1 + 66);
    v11 = *(v1 + 1);
    v12 = *(v1 + 3);
    sub_54A4(&qword_624C8, &unk_4AF90);
    sub_48164();
    v4 = v15[4];

    sub_E8EC(v15);
    v5 = *(v4 + 16);
    v6 = [v5 length];

    if (v6)
    {
      return sub_480A4();
    }

    else
    {
      sub_480B4();
      _s11RowTextViewVMa(0);
      v7 = sub_48094();
    }
  }

  else
  {
    v8 = *(v3 + 152);
    v9 = sub_43C14();
    if (a1)
    {
      if (v8)
      {
        if (qword_61D58 != -1)
        {
          swift_once();
        }

        v7 = qword_643F0;
      }

      else
      {
        if (qword_61D50 != -1)
        {
          swift_once();
        }

        v7 = qword_643E8;
      }
    }

    else if (v9)
    {
      if (qword_61D68 != -1)
      {
        swift_once();
      }

      v7 = qword_64400;
    }

    else
    {
      if (qword_61D38 != -1)
      {
        swift_once();
      }

      v7 = qword_643D0;
    }
  }

  return v7;
}

uint64_t sub_470FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_47B04();
  *a1 = result & 1;
  return result;
}

uint64_t sub_47154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_471BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_47220()
{
  result = qword_64070;
  if (!qword_64070)
  {
    sub_A36C(&qword_64078, &qword_4D2B8);
    sub_46504(&qword_63F90, &qword_63F88, &qword_4D028, sub_46284);
    sub_A36C(&qword_63FB0, &qword_4D060);
    sub_46368();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_64070);
  }

  return result;
}