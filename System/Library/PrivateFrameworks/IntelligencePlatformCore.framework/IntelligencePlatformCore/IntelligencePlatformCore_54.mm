uint64_t sub_1C4925BF0(uint64_t a1)
{
  v1 = 1;
  switch(*(a1 + 16))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      v1 = sub_1C4F02938();
      break;
    default:
      break;
  }

  return v1 & 1;
}

void sub_1C4925D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (*(a1 + 16))
  {
    sub_1C4404B14();
    v34 = v33;
    v36 = v35;
    sub_1C4F02AF8();
    sub_1C4F01298();
    sub_1C4F02B68();
    sub_1C4400588();
    if ((*(v36 + 56 + v37) >> v32))
    {
      while (1)
      {
        switch(*(*(v36 + 48) + v32))
        {
          case 2:

            goto LABEL_12;
          case 3:
            sub_1C440F794();
            break;
          case 4:
            sub_1C44070C0();
            break;
          case 6:
            sub_1C4425C1C();
            break;
          default:
            break;
        }

        v38 = sub_1C4F02938();

        if (v38)
        {
          break;
        }

        sub_1C440D528();
        if ((v39 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

LABEL_12:
      sub_1C4924BF4(v34);
      v41 = sub_1C4597BBC(v40);
      if (qword_1EDDF0408 != -1)
      {
        swift_once();
      }

      sub_1C4A7C718(qword_1EDDF0410, v41);
    }

LABEL_15:
    sub_1C440576C();
  }
}

void sub_1C4925F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v7 = v3;
  v89 = a2;
  v93 = *MEMORY[0x1E69E9840];
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v77 - v10;
  sub_1C44043E0();
  v12 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C4408644();
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v77 - v17;
  v18 = sub_1C4EF9D38();
  sub_1C43FCDF8();
  v92 = v19;
  *&v21 = MEMORY[0x1EEE9AC00](v20).n128_u64[0];
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v7;
  v24 = [v7 loiIdentifier];
  if (v24)
  {
    v25 = v24;
    sub_1C4EF9D18();

    sub_1C4467FE0(a3, v11);
    if (sub_1C44157D4(v11, 1, v12) == 1)
    {
      (*(v92 + 8))(v23, v18);
      sub_1C44686E4(v11);
      return;
    }

    v90 = v23;
    (*(v14 + 32))(v91, v11, v12);
    v26 = v89;
    sub_1C4410DB8();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v82 = v14;
    v83 = v12;
    v87 = v18;
    v84 = v5;
    if (v4 > 0xD)
    {
      goto LABEL_55;
    }

    while (1)
    {
      v86 = v6;
      sub_1C442BC14(&v77);
      MEMORY[0x1EEE9AC00](v27);
      sub_1C43FF170();
      v30 = v28 - v29;
      v31 = sub_1C44043E0();
      v81 = v25;
      sub_1C4501018(v31, v25, v30);
      v85 = 0;
      v32 = 0;
      v5 = v26;
      sub_1C4419940();
      v6 = v34 & v33;
      v25 = ((v35 + 63) >> 6);
      v80 = 0x80000001C4F86760;
      sub_1C43FBDF0();
      v79 = v36;
      sub_1C43FBDF0();
      v78 = v37;
      while (v6)
      {
        v38 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
LABEL_13:
        v42 = v38 | (v32 << 6);
        v43 = 0x4449656C646E7562;
        v44 = 0xE800000000000000;
        switch(*(*(v26 + 48) + 24 * v42 + 16))
        {
          case 1:
            v43 = sub_1C43FD8FC();
            v44 = v78;
            break;
          case 2:
            sub_1C441846C();
            goto LABEL_21;
          case 3:
            v45 = &v94;
            goto LABEL_18;
          case 4:
            v44 = 0xEF657079546E6F69;
            v43 = sub_1C440AC5C();
            break;
          case 5:
            v44 = 0xEB00000000656741;
            v43 = sub_1C44070E4();
            break;
          case 6:
            v45 = &v95;
LABEL_18:
            v44 = *(v45 - 32);
            v43 = sub_1C4405CE0();
            break;
          default:
            break;
        }

        v46 = sub_1C4411DF4(v43, v44);

        if (v46)
        {
LABEL_21:
          sub_1C4404D48();
          *(v30 + v48) |= v47 << v42;
          if (__OFADD__(v85++, 1))
          {
            __break(1u);
          }
        }
      }

      v39 = v32;
      v18 = v87;
      while (1)
      {
        v32 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        if (v32 >= v25)
        {
          sub_1C4A8DF38(v30, v81, v85, v26);
          v51 = v50;
          v6 = v86;
          v5 = v84;
          goto LABEL_26;
        }

        ++v39;
        if (*(v26 + 8 * v32))
        {
          sub_1C43FCF1C();
          v6 = v41 & v40;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_55:
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if (!sub_1C4409D60())
      {
        break;
      }
    }

    sub_1C4408BA4();
    v75 = swift_slowAlloc();

    v76 = sub_1C4D2C7B8(v75, v25, v26, sub_1C4927120);
    if (v6)
    {

      swift_bridgeObjectRelease_n();
      sub_1C43FBE2C();
      __break(1u);
    }

    else
    {
      v51 = v76;
      swift_bridgeObjectRelease_n();
      sub_1C43FBE2C();
LABEL_26:
      v52 = v90;
      if (!v51[2])
      {

LABEL_48:
        v66 = v82;
        v65 = v83;
        v67 = v91;
        (*(v82 + 16))(v5, v91, v83);
        v68 = v52;
        v69 = sub_1C4EF9CF8();
        v71 = v70;
        (*(v66 + 8))(v67, v65);
        (*(v92 + 8))(v68, v18);
        type metadata accessor for InteractionEvent(0);
        swift_allocObject();
        v72 = sub_1C441ECD8();
        sub_1C4950CDC(v72, v73, v69, v71, v74);
        return;
      }

      v53 = [v88 starting];
      v54 = v51[2];
      v86 = v6;
      if (v54)
      {
        v55 = v53;
        v56 = 6581861;
        sub_1C4F02AF8();
        MEMORY[0x1C69417F0](2);
        if (v55)
        {
          v56 = 0x7472617473;
          v57 = 0xE500000000000000;
        }

        else
        {
          v57 = 0xE300000000000000;
        }

        sub_1C4F01298();

        sub_1C4F02B68();
        sub_1C4400588();
        if ((*(v51 + v58 + 56) >> v26))
        {
          v52 = v90;
          while (1)
          {
            v59 = v51[6] + 24 * v26;
            if (*(v59 + 16) == 2)
            {
              if (*v59)
              {
                v60 = 6581861;
              }

              else
              {
                v60 = 0x7472617473;
              }

              if (*v59)
              {
                v61 = 0xE300000000000000;
              }

              else
              {
                v61 = 0xE500000000000000;
              }

              if (v60 == v56 && v61 == v57)
              {

                v18 = v87;
                v5 = v84;
                v52 = v90;
                goto LABEL_48;
              }

              v63 = sub_1C4F02938();

              v52 = v90;
              if (v63)
              {
                break;
              }
            }

            sub_1C442DFE4();
            if (((*(v51 + v64 + 56) >> v26) & 1) == 0)
            {
              goto LABEL_50;
            }
          }

          v18 = v87;
          v5 = v84;
          goto LABEL_48;
        }

        v52 = v90;
      }

LABEL_50:

      (*(v82 + 8))(v91, v83);
      (*(v92 + 8))(v52, v87);
    }
  }
}

void sub_1C4926764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  if (*(a1 + 16))
  {
    sub_1C4404B14();
    v33 = v32;
    v35 = v34;
    sub_1C4F02AF8();
    sub_1C4F01298();
    v36 = sub_1C4F02B68();
    v37 = -1 << *(v35 + 32);
    v38 = v36 & ~v37;
    if ((*(v35 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
    {
      v39 = ~v37;
      sub_1C43FBDF0();
      while (1)
      {
        switch(*(*(v35 + 48) + v38))
        {
          case 1:

            goto LABEL_14;
          case 2:
            sub_1C441CA8C();
            break;
          case 3:
            sub_1C440F794();
            break;
          case 4:
            sub_1C44070C0();
            break;
          case 6:
            sub_1C4425C1C();
            break;
          default:
            break;
        }

        v40 = sub_1C4F02938();

        if (v40)
        {
          break;
        }

        v38 = (v38 + 1) & v39;
        if (((*(v35 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

LABEL_14:
      sub_1C4924BF4(v33);
      v42 = sub_1C4597BBC(v41);
      if (qword_1EDDDB920 != -1)
      {
        swift_once();
      }

      sub_1C4A7C718(qword_1EDDDB928, v42);
    }

LABEL_17:
    sub_1C440576C();
  }
}

void sub_1C4926960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v7 = v3;
  v76 = *MEMORY[0x1E69E9840];
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v63 - v11;
  sub_1C44043E0();
  v13 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4408644();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v63 - v18;
  v75 = v7;
  v20 = sub_1C4631F30(v7);
  if (v21)
  {
    v22 = v21;
    v71 = v20;
    sub_1C4467FE0(a3, v12);
    if (sub_1C44157D4(v12, 1, v13) == 1)
    {

      sub_1C44686E4(v12);
    }

    else
    {
      (*(v15 + 32))(v19, v12, v13);
      sub_1C4410DB8();
      v23 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v72 = v22;
      v74 = v19;
      v67 = v15;
      v68 = v13;
      v69 = v5;
      if (v4 > 0xD)
      {
        goto LABEL_56;
      }

      while (1)
      {
        v73 = v6;
        v65 = &v63;
        MEMORY[0x1EEE9AC00](v23);
        sub_1C43FF170();
        v26 = v24 - v25;
        v27 = sub_1C44043E0();
        v66 = a3;
        sub_1C4501018(v27, a3, v26);
        v70 = 0;
        a3 = 0;
        v5 = a2;
        sub_1C4419940();
        v30 = v29 & v28;
        v15 = (v31 + 63) >> 6;
        sub_1C442FE40("lookaheadDuration");
        sub_1C43FBDF0();
        sub_1C442BC14(v32);
        sub_1C43FBDF0();
        v64 = v33;
        while (v30)
        {
          v34 = __clz(__rbit64(v30));
          v30 &= v30 - 1;
LABEL_14:
          v6 = v34 | (a3 << 6);
          v38 = 0x4449656C646E7562;
          v22 = 0xE800000000000000;
          switch(*(*(a2 + 48) + 24 * v6 + 16))
          {
            case 1:
              v38 = sub_1C43FD8FC();
              v22 = v64;
              break;
            case 2:
              sub_1C441846C();
              goto LABEL_22;
            case 3:
              v39 = &v77;
              goto LABEL_19;
            case 4:
              v22 = 0xEF657079546E6F69;
              v38 = sub_1C440AC5C();
              break;
            case 5:
              v22 = 0xEB00000000656741;
              v38 = sub_1C44070E4();
              break;
            case 6:
              v39 = &v78;
LABEL_19:
              v22 = *(v39 - 32);
              v38 = sub_1C4405CE0();
              break;
            default:
              break;
          }

          v40 = sub_1C4411DF4(v38, v22);

          if (v40)
          {
LABEL_22:
            sub_1C4404D48();
            *(v26 + v42) |= v41 << v6;
            if (__OFADD__(v70++, 1))
            {
              __break(1u);
            }
          }
        }

        v35 = a3;
        v19 = v74;
        while (1)
        {
          a3 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (a3 >= v15)
          {
            sub_1C4A8DF38(v26, v66, v70, a2);
            v45 = v44;
            v22 = v72;
            v6 = v73;
            v5 = v69;
            goto LABEL_27;
          }

          ++v35;
          if (*(a2 + 8 * a3))
          {
            sub_1C43FCF1C();
            v30 = v37 & v36;
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_56:
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if (!sub_1C4409D60())
        {
          break;
        }
      }

      sub_1C4408BA4();
      v60 = a3;
      v61 = swift_slowAlloc();

      v62 = sub_1C4D2C7B8(v61, v60, a2, sub_1C4927120);
      if (v6)
      {

        swift_bridgeObjectRelease_n();
        sub_1C43FBE2C();
        __break(1u);
      }

      else
      {
        v45 = v62;
        swift_bridgeObjectRelease_n();
        sub_1C43FBE2C();
LABEL_27:
        if (v45[2])
        {
          v46 = [v75 starting];
          v47 = v45[2];
          v73 = v6;
          if (!v47 || ((v48 = v46, sub_1C4F02AF8(), MEMORY[0x1C69417F0](2), !v48) ? (v49 = 6581861) : (v49 = 0x7472617473), !v48 ? (v50 = 0xE300000000000000) : (v50 = 0xE500000000000000), sub_1C4F01298(), , sub_1C4F02B68(), sub_1C4400588(), ((*(v45 + v51 + 56) >> v15) & 1) == 0))
          {
LABEL_49:

            (*(v67 + 8))(v74, v68);
            return;
          }

          while (1)
          {
            v52 = v45[6] + 24 * v15;
            if (*(v52 + 16) == 2)
            {
              if (*v52)
              {
                v53 = 6581861;
              }

              else
              {
                v53 = 0x7472617473;
              }

              if (*v52)
              {
                v54 = 0xE300000000000000;
              }

              else
              {
                v54 = 0xE500000000000000;
              }

              if (v53 == v49 && v54 == v50)
              {

                goto LABEL_53;
              }

              v56 = sub_1C4F02938();

              if (v56)
              {
                break;
              }
            }

            sub_1C442DFE4();
            if (((*(v45 + v57 + 56) >> v15) & 1) == 0)
            {
              goto LABEL_49;
            }
          }

LABEL_53:
          v22 = v72;
          v5 = v69;
          v19 = v74;
        }

        else
        {
        }

        v59 = v67;
        v58 = v68;
        (*(v67 + 16))(v5, v19, v68);
        (*(v59 + 8))(v19, v58);
        type metadata accessor for InteractionEvent(0);
        swift_allocObject();
        sub_1C4950CDC(v5, 1, v71, v22, MEMORY[0x1E69E7CC0]);
      }
    }
  }
}

uint64_t sub_1C4926FD4(uint64_t a1)
{
  v1 = 1;
  switch(*(a1 + 16))
  {
    case 1:
      sub_1C43FD8FC();
      goto LABEL_6;
    case 2:
      goto LABEL_7;
    case 3:
    case 6:
      sub_1C4405CE0();
      goto LABEL_6;
    case 4:
      sub_1C440AC5C();
      goto LABEL_6;
    case 5:
      sub_1C44070E4();
      goto LABEL_6;
    default:
LABEL_6:
      v1 = sub_1C4F02938();
LABEL_7:

      return v1 & 1;
  }
}

uint64_t IdentifierBasedMatcher.source.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for IdentifierBasedMatcher(0);
  sub_1C43FD90C();
  return sub_1C44718CC(v1 + v3, a1);
}

uint64_t type metadata accessor for IdentifierBasedMatcher(uint64_t a1)
{
  result = qword_1EDDF3BA8;
  if (!qword_1EDDF3BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IdentifierBasedMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IdentifierBasedMatcher(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t IdentifierBasedMatcher.entityClass.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IdentifierBasedMatcher(0) + 32);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t IdentifierBasedMatcher.entityClass.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IdentifierBasedMatcher(0) + 32);
  sub_1C4EFD548();
  sub_1C43FBCE0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t IdentifierBasedMatcher.init(stores:entityClass:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = type metadata accessor for IdentifierBasedMatcher(0);
  *(a5 + v10[7]) = 1056964608;
  sub_1C440053C();
  sub_1C448566C(a1, a5);
  sub_1C43FD90C();
  sub_1C448566C(a3, a5 + v11);
  v12 = v10[8];
  sub_1C4EFD548();
  sub_1C43FBCE0();
  result = (*(v13 + 32))(a5 + v12, a2);
  *(a5 + v10[6]) = v9;
  return result;
}

float sub_1C4927414(uint64_t a1, uint64_t a2)
{
  v145 = a2;
  v3 = sub_1C4EFF8A8();
  v146 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v129 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v130 = &v129 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v129 = &v129 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v134 = &v129 - v11;
  v12 = sub_1C4EFEEF8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v141 = &v129 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v151 = &v129 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v150 = &v129 - v21;
  v155 = type metadata accessor for EntityTriple(0);
  v152 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v135 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v149 = &v129 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v136 = &v129 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v153 = &v129 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v129 - v30;
  v32 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v132 = &v129 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v131 = &v129 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v133 = &v129 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v137 = &v129 - v39;
  type metadata accessor for IdentifierBasedMatcher(0);
  v147 = sub_1C4929810();
  v148 = v40;
  v41 = 0;
  v142 = a1;
  v144 = *(a1 + 16);
  v42 = v15;
  v154 = (v13 + 8);
  v138 = MEMORY[0x1E69E7CC0];
  v143 = v3;
  while (v144 != v41)
  {
    v43 = *(v152 + 72);
    v140 = (*(v152 + 80) + 32) & ~*(v152 + 80);
    v139 = v43;
    sub_1C44718CC(v142 + v140 + v43 * v41, v31);
    sub_1C4EFE308();
    sub_1C492BE08(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v158 == v156 && v159 == v157)
    {
      v45 = 1;
    }

    else
    {
      v45 = sub_1C4F02938();
    }

    v46 = *v154;
    (*v154)(v150, v12);

    if ((v45 & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_1C4EFE658();
    sub_1C4F01578();
    sub_1C4F01578();
    if (v158 == v156 && v159 == v157)
    {
      v46(v42, v12);
    }

    else
    {
      v48 = sub_1C4F02938();
      v46(v42, v12);

      if ((v48 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v49 = &v31[*(v155 + 32)];
    v50 = *v49 == v147 && *(v49 + 1) == v148;
    if (v50 || (sub_1C4F02938() & 1) != 0)
    {
      sub_1C448566C(v31, v135);
      v51 = v138;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v160 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C459DCC0();
        v51 = v160;
      }

      v53 = *(v51 + 16);
      if (v53 >= *(v51 + 24) >> 1)
      {
        sub_1C459DCC0();
        v51 = v160;
      }

      ++v41;
      *(v51 + 16) = v53 + 1;
      v138 = v51;
      sub_1C448566C(v135, v51 + v140 + v53 * v139);
      v3 = v143;
    }

    else
    {
LABEL_22:
      sub_1C44DBD5C(v31, type metadata accessor for EntityTriple);
      ++v41;
      v3 = v143;
    }
  }

  v54 = v138;
  v55 = *(v138 + 16);
  if (v55)
  {
    v158 = MEMORY[0x1E69E7CC0];
    sub_1C459D120();
    v56 = v158;
    v57 = v54 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
    v150 = *(v152 + 72);
    v58 = (v146 + 16);
    do
    {
      v59 = v149;
      sub_1C44718CC(v57, v149);
      (*v58)(v5, v59 + *(v155 + 24), v3);
      sub_1C44DBD5C(v59, type metadata accessor for EntityTriple);
      v158 = v56;
      v60 = v3;
      v61 = v5;
      v62 = *(v56 + 16);
      if (v62 >= *(v56 + 24) >> 1)
      {
        sub_1C459D120();
        v56 = v158;
      }

      *(v56 + 16) = v62 + 1;
      (*(v146 + 32))(v56 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v62, v61, v60);
      v57 += v150;
      --v55;
      v5 = v61;
      v3 = v60;
    }

    while (v55);
  }

  else
  {

    v56 = MEMORY[0x1E69E7CC0];
  }

  sub_1C48685D4(v56, v137);

  v63 = 0;
  v150 = *(v145 + 16);
  v144 = MEMORY[0x1E69E7CC0];
  while (v150 != v63)
  {
    v64 = (*(v152 + 80) + 32) & ~*(v152 + 80);
    v65 = *(v152 + 72);
    sub_1C44718CC(v145 + v64 + v65 * v63, v153);
    sub_1C4EFE308();
    sub_1C492BE08(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v158 == v156 && v159 == v157)
    {
      v67 = 1;
    }

    else
    {
      v67 = sub_1C4F02938();
    }

    v68 = *v154;
    (*v154)(v151, v12);
    v69 = v141;
    if ((v67 & 1) == 0)
    {
      goto LABEL_56;
    }

    sub_1C4EFE658();
    sub_1C4F01578();
    sub_1C4F01578();
    if (v158 == v156 && v159 == v157)
    {

      v68(v69, v12);
    }

    else
    {
      v71 = sub_1C4F02938();

      v68(v69, v12);
      if ((v71 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v72 = (v153 + *(v155 + 32));
    v73 = *v72 == v147 && v72[1] == v148;
    if (!v73 && (sub_1C4F02938() & 1) == 0)
    {
LABEL_56:
      sub_1C44DBD5C(v153, type metadata accessor for EntityTriple);
      ++v63;
      continue;
    }

    sub_1C448566C(v153, v136);
    v74 = v144;
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v160 = v74;
    if ((v75 & 1) == 0)
    {
      sub_1C459DCC0();
      v74 = v160;
    }

    v76 = *(v74 + 16);
    if (v76 >= *(v74 + 24) >> 1)
    {
      sub_1C459DCC0();
      v74 = v160;
    }

    ++v63;
    *(v74 + 16) = v76 + 1;
    v144 = v74;
    sub_1C448566C(v136, v74 + v64 + v76 * v65);
  }

  v77 = *(v144 + 16);
  if (v77)
  {
    v158 = MEMORY[0x1E69E7CC0];
    v78 = v144;
    sub_1C459D120();
    v79 = v158;
    v80 = v78 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
    v81 = *(v152 + 72);
    v82 = (v146 + 16);
    v83 = v129;
    do
    {
      v84 = v149;
      sub_1C44718CC(v80, v149);
      (*v82)(v83, v84 + *(v155 + 24), v3);
      sub_1C44DBD5C(v84, type metadata accessor for EntityTriple);
      v158 = v79;
      v85 = *(v79 + 16);
      if (v85 >= *(v79 + 24) >> 1)
      {
        sub_1C459D120();
        v79 = v158;
      }

      *(v79 + 16) = v85 + 1;
      (*(v146 + 32))(v79 + ((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v85, v83, v3);
      v80 += v81;
      --v77;
    }

    while (v77);
  }

  else
  {

    v79 = MEMORY[0x1E69E7CC0];
  }

  v86 = v133;
  sub_1C48685D4(v79, v133);

  v87 = v137;
  v88 = v131;
  sub_1C445FFF0(v137, v131, &qword_1EC0B9A10, &qword_1C4F107C0);
  v89 = sub_1C44157D4(v88, 1, v3);
  v90 = v146;
  v91 = v134;
  v92 = v132;
  if (v89 == 1)
  {
    sub_1C4420C3C(v86, &qword_1EC0B9A10, &qword_1C4F107C0);
    sub_1C4420C3C(v87, &qword_1EC0B9A10, &qword_1C4F107C0);
    sub_1C4420C3C(v88, &qword_1EC0B9A10, &qword_1C4F107C0);
    return 0.0;
  }

  v93 = *(v146 + 32);
  v93(v134, v88, v3);
  sub_1C445FFF0(v86, v92, &qword_1EC0B9A10, &qword_1C4F107C0);
  if (sub_1C44157D4(v92, 1, v3) == 1)
  {
    sub_1C4420C3C(v86, &qword_1EC0B9A10, &qword_1C4F107C0);
    sub_1C4420C3C(v87, &qword_1EC0B9A10, &qword_1C4F107C0);
    sub_1C4420C3C(v92, &qword_1EC0B9A10, &qword_1C4F107C0);
    (*(v90 + 8))(v91, v3);
    return 0.0;
  }

  v94 = (v93)(v130, v92, v3);
  MEMORY[0x1EEE9AC00](v94);
  *(&v129 - 2) = v91;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4B34AA0();
  v96 = v95;
  v97 = *(v95 + 16);
  if (v97)
  {
    v158 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v97, 0);
    v98 = v158;
    v99 = v96 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
    v100 = *(v152 + 72);
    do
    {
      v101 = v149;
      sub_1C44718CC(v99, v149);
      v102 = (v101 + *(v155 + 32));
      v104 = *v102;
      v103 = v102[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v101, type metadata accessor for EntityTriple);
      v158 = v98;
      v106 = *(v98 + 16);
      v105 = *(v98 + 24);
      if (v106 >= v105 >> 1)
      {
        sub_1C44CD9C0(v105 > 1, v106 + 1, 1);
        v98 = v158;
      }

      *(v98 + 16) = v106 + 1;
      v107 = v98 + 16 * v106;
      *(v107 + 32) = v104;
      *(v107 + 40) = v103;
      v99 += v100;
      --v97;
    }

    while (v97);

    v3 = v143;
    v91 = v134;
  }

  else
  {
  }

  v108 = sub_1C4499940();
  MEMORY[0x1EEE9AC00](v108);
  *(&v129 - 2) = v130;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4B34AA0();
  v110 = v109;
  v111 = *(v109 + 16);
  if (v111)
  {
    v158 = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v111, 0);
    v112 = v158;
    v113 = v110 + ((*(v152 + 80) + 32) & ~*(v152 + 80));
    v114 = *(v152 + 72);
    do
    {
      v115 = v149;
      sub_1C44718CC(v113, v149);
      v116 = (v115 + *(v155 + 32));
      v118 = *v116;
      v117 = v116[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v115, type metadata accessor for EntityTriple);
      v158 = v112;
      v120 = *(v112 + 16);
      v119 = *(v112 + 24);
      if (v120 >= v119 >> 1)
      {
        sub_1C44CD9C0(v119 > 1, v120 + 1, 1);
        v112 = v158;
      }

      *(v112 + 16) = v120 + 1;
      v121 = v112 + 16 * v120;
      *(v121 + 32) = v118;
      *(v121 + 40) = v117;
      v113 += v114;
      --v111;
    }

    while (v111);

    v3 = v143;
    v91 = v134;
  }

  else
  {
  }

  v122 = sub_1C4499940();
  v123 = v137;
  v124 = v133;
  if (!*(v108 + 16))
  {

    sub_1C4420C3C(v124, &qword_1EC0B9A10, &qword_1C4F107C0);
    sub_1C4420C3C(v123, &qword_1EC0B9A10, &qword_1C4F107C0);
    goto LABEL_92;
  }

  v125 = sub_1C4A32590(v122, v108);

  sub_1C4420C3C(v124, &qword_1EC0B9A10, &qword_1C4F107C0);
  sub_1C4420C3C(v123, &qword_1EC0B9A10, &qword_1C4F107C0);
  if ((v125 & 1) == 0)
  {
LABEL_92:
    v128 = *(v146 + 8);
    v128(v130, v3);
    v128(v91, v3);
    return 1.0;
  }

  v126 = *(v146 + 8);
  v126(v130, v3);
  v126(v91, v3);
  return 0.0;
}

float sub_1C4928728(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t), void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t *, uint64_t))
{
  v178 = a8;
  v176[1] = a7;
  v204 = a6;
  v179 = a5;
  v205 = a4;
  v200 = a2;
  v177 = a9;
  v11 = sub_1C4EFF8A8();
  sub_1C43FCDF8();
  v190 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  v199 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD230();
  v184 = v21;
  v22 = sub_1C43FBE44();
  v208 = a3(v22);
  sub_1C43FCDF8();
  v197 = v23;
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD230();
  v209 = v27;
  sub_1C43FBE44();
  v28 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBD08();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD230();
  v206 = v38;
  v39 = sub_1C43FBE44();
  v207 = type metadata accessor for EntityTriple(v39);
  sub_1C43FCDF8();
  v196 = v40;
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v176 - v44;
  v46 = sub_1C456902C(&qword_1EC0B9A10, &qword_1C4F107C0);
  MEMORY[0x1EEE9AC00](v46 - 8);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FD230();
  v187 = v50;
  v51 = sub_1C43FBE44();
  type metadata accessor for IdentifierBasedMatcher(v51);
  v202 = sub_1C4929810();
  v203 = v52;
  v53 = 0;
  v195 = a1;
  v198 = *(a1 + 16);
  v210 = (v30 + 8);
  v188 = MEMORY[0x1E69E7CC0];
  v201 = v11;
  v194 = v16;
  while (v198 != v53)
  {
    v193 = *(v196 + 72);
    sub_1C44032D8();
    sub_1C44718CC(v54, v45);
    v55 = v206;
    sub_1C4EFE308();
    sub_1C443249C();
    sub_1C492BE08(&off_1EDDFCCA8, v56, MEMORY[0x1E69A9770]);
    sub_1C4414B9C();
    sub_1C4F01578();
    v57 = v212;
    sub_1C441CAA0();
    v60 = v60 && v57 == v55;
    if (v60)
    {
      v61 = 1;
    }

    else
    {
      v61 = sub_1C43FBEC0(v58, v57, v59);
    }

    v62 = *v210;
    (*v210)(v206, v28);

    v11 = v201;
    if ((v61 & 1) == 0)
    {
      goto LABEL_22;
    }

    sub_1C4EFE658();
    sub_1C4414B9C();
    sub_1C4F01578();
    v63 = v212;
    sub_1C441CAA0();
    if (v60 && v63 == v34)
    {
      sub_1C43FC484();
      v62();
    }

    else
    {
      v67 = sub_1C43FBEC0(v64, v63, v65);
      sub_1C43FC484();
      v62();

      if ((v67 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v68 = &v45[*(v207 + 32)];
    v69 = *v68 == v202 && *(v68 + 1) == v203;
    if (v69 || (sub_1C4F02938() & 1) != 0)
    {
      sub_1C448566C(v45, v185);
      v70 = v188;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v213 = v70;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C44032F0();
        sub_1C459DCC0();
        v70 = v213;
      }

      v16 = v194;
      v72 = *(v70 + 16);
      if (v72 >= *(v70 + 24) >> 1)
      {
        sub_1C459DCC0();
        v70 = v213;
      }

      ++v53;
      *(v70 + 16) = v72 + 1;
      v188 = v70;
      sub_1C44032D8();
      sub_1C448566C(v185, v73);
    }

    else
    {
LABEL_22:
      sub_1C44DBD5C(v45, type metadata accessor for EntityTriple);
      ++v53;
      v16 = v194;
    }
  }

  v74 = v188;
  v75 = *(v188 + 16);
  if (v75)
  {
    sub_1C440F7A8(MEMORY[0x1E69E7CC0]);
    sub_1C459D120();
    v76 = v211;
    sub_1C43FBF6C();
    v78 = v74 + v77;
    v206 = *(v79 + 72);
    v80 = (v190 + 16);
    do
    {
      v81 = v191;
      sub_1C44718CC(v78, v191);
      (*v80)(v16, v81 + *(v207 + 24), v11);
      sub_1C44070F8();
      sub_1C44DBD5C(v81, v82);
      v211 = v76;
      v83 = v11;
      v84 = v16;
      v85 = *(v76 + 16);
      if (v85 >= *(v76 + 24) >> 1)
      {
        sub_1C459D120();
        v76 = v211;
      }

      *(v76 + 16) = v85 + 1;
      sub_1C43FBF6C();
      (*(v87 + 32))(v76 + v86 + *(v87 + 72) * v85, v84, v83);
      v78 += v206;
      --v75;
      v16 = v84;
      v11 = v83;
    }

    while (v75);
  }

  else
  {

    v76 = MEMORY[0x1E69E7CC0];
  }

  sub_1C48685D4(v76, v187);

  v88 = 0;
  v89 = v199;
  v90 = *(v200 + 16);
  v206 = MEMORY[0x1E69E7CC0];
  v91 = v189;
  while (v90 != v88)
  {
    v92 = (*(v197 + 80) + 32) & ~*(v197 + 80);
    v93 = *(v197 + 72);
    v94 = v209;
    sub_1C44718CC(v200 + v92 + v93 * v88, v209);
    v95 = v208[5];
    sub_1C4EFE308();
    sub_1C443249C();
    sub_1C492BE08(&off_1EDDFCCA8, v96, MEMORY[0x1E69A9770]);
    v97 = v94 + v95;
    sub_1C4F01578();
    sub_1C4404FCC();
    v98 = v212;
    sub_1C441CAA0();
    if (v60 && v98 == v97)
    {
      v102 = 1;
    }

    else
    {
      v102 = sub_1C43FBEC0(v99, v98, v100);
    }

    v103 = *v210;
    (*v210)(v91, v28);
    if ((v102 & 1) == 0)
    {
      goto LABEL_56;
    }

    v104 = v208[7];
    sub_1C4EFE658();
    v105 = v209 + v104;
    sub_1C4F01578();
    sub_1C4404FCC();
    v106 = v212;
    sub_1C441CAA0();
    if (v60 && v106 == v105)
    {

      sub_1C43FC484();
      v103();
      v91 = v189;
    }

    else
    {
      v110 = sub_1C43FBEC0(v107, v106, v108);

      sub_1C43FC484();
      v103();
      v91 = v189;
      if ((v110 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v111 = (v209 + v208[8]);
    v112 = *v111 == v202 && v111[1] == v203;
    if (!v112 && (sub_1C4F02938() & 1) == 0)
    {
LABEL_56:
      sub_1C44DBD5C(v209, v204);
      ++v88;
      v89 = v199;
      continue;
    }

    sub_1C448566C(v209, v186);
    v113 = v206;
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v213 = v113;
    if ((v114 & 1) == 0)
    {
      v115 = sub_1C44032F0();
      v179(v115);
      v113 = v213;
    }

    v117 = *(v113 + 16);
    v116 = *(v113 + 24);
    if (v117 >= v116 >> 1)
    {
      (v179)(v116 > 1, v117 + 1, 1);
      v113 = v213;
    }

    ++v88;
    *(v113 + 16) = v117 + 1;
    v206 = v113;
    sub_1C448566C(v186, v113 + v92 + v117 * v93);
    v89 = v199;
  }

  v118 = *(v206 + 16);
  if (v118)
  {
    sub_1C440F7A8(MEMORY[0x1E69E7CC0]);
    v120 = v119;
    sub_1C459D120();
    v121 = v211;
    sub_1C43FBF6C();
    v123 = v120 + v122;
    v210 = *(v124 + 72);
    v125 = (v190 + 16);
    v126 = v190;
    v88 = v201;
    do
    {
      v127 = v192;
      sub_1C44718CC(v123, v192);
      (*v125)(v89, v127 + v208[6], v88);
      sub_1C44DBD5C(v127, v204);
      v211 = v121;
      v128 = v89;
      v129 = *(v121 + 16);
      if (v129 >= *(v121 + 24) >> 1)
      {
        sub_1C459D120();
        v121 = v211;
      }

      *(v121 + 16) = v129 + 1;
      (*(v126 + 32))(v121 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v129, v128, v88);
      v123 += v210;
      --v118;
      v89 = v128;
    }

    while (v118);

    v89 = v126;
  }

  else
  {

    v121 = MEMORY[0x1E69E7CC0];
    sub_1C440D544();
  }

  v130 = v183;
  sub_1C48685D4(v121, v183);

  v131 = v187;
  v132 = v181;
  sub_1C445FFF0(v187, v181, &qword_1EC0B9A10, &qword_1C4F107C0);
  v133 = sub_1C44157D4(v132, 1, v88);
  v134 = v184;
  v135 = v182;
  if (v133 == 1)
  {
    sub_1C43FF19C();
    sub_1C4410DD4(v131);
    sub_1C4410DD4(v132);
    return 0.0;
  }

  v136 = *(v89 + 32);
  v136(v184, v132, v88);
  sub_1C445FFF0(v130, v135, &qword_1EC0B9A10, &qword_1C4F107C0);
  if (sub_1C44157D4(v135, 1, v88) == 1)
  {
    sub_1C43FF19C();
    sub_1C4410DD4(v131);
    sub_1C4410DD4(v135);
    (*(v89 + 8))(v134, v88);
    return 0.0;
  }

  v137 = (v136)(v180, v135, v88);
  MEMORY[0x1EEE9AC00](v137);
  v176[-2] = v134;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4B34AA0();
  v139 = v138;
  v140 = *(v138 + 16);
  if (v140)
  {
    v141 = sub_1C440F7A8(MEMORY[0x1E69E7CC0]);
    sub_1C44CD9C0(v141, v140, 0);
    v142 = v211;
    sub_1C43FBF6C();
    v144 = v139 + v143;
    v146 = *(v145 + 72);
    do
    {
      v147 = v191;
      sub_1C44718CC(v144, v191);
      v148 = (v147 + *(v207 + 32));
      v150 = *v148;
      v149 = v148[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44070F8();
      sub_1C44DBD5C(v147, v151);
      v211 = v142;
      v88 = *(v142 + 16);
      v152 = *(v142 + 24);
      if (v88 >= v152 >> 1)
      {
        sub_1C44CD9C0(v152 > 1, v88 + 1, 1);
        v142 = v211;
      }

      *(v142 + 16) = v88 + 1;
      v153 = v142 + 16 * v88;
      *(v153 + 32) = v150;
      *(v153 + 40) = v149;
      v144 += v146;
      --v140;
    }

    while (v140);

    sub_1C440D544();
  }

  else
  {
  }

  v154 = sub_1C4499940();
  MEMORY[0x1EEE9AC00](v154);
  v176[-2] = v180;
  v155 = v200;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v156 = v177(v178, &v176[-4], v155);
  v157 = *(v156 + 16);
  if (v157)
  {
    v158 = sub_1C440F7A8(MEMORY[0x1E69E7CC0]);
    sub_1C44CD9C0(v158, v157, 0);
    v159 = v211;
    sub_1C43FBF6C();
    v161 = v156 + v160;
    v163 = *(v162 + 72);
    do
    {
      v164 = v192;
      sub_1C44718CC(v161, v192);
      v165 = (v164 + v208[8]);
      v167 = *v165;
      v166 = v165[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD5C(v164, v204);
      v211 = v159;
      v88 = *(v159 + 16);
      v168 = *(v159 + 24);
      if (v88 >= v168 >> 1)
      {
        sub_1C44CD9C0(v168 > 1, v88 + 1, 1);
        v159 = v211;
      }

      *(v159 + 16) = v88 + 1;
      v169 = v159 + 16 * v88;
      *(v169 + 32) = v167;
      *(v169 + 40) = v166;
      v161 += v163;
      --v157;
    }

    while (v157);

    sub_1C440D544();
  }

  else
  {
  }

  v170 = sub_1C4499940();
  v171 = v184;
  if (!*(v154 + 16))
  {

    sub_1C4410DD4(v183);
    sub_1C43FF19C();
    goto LABEL_92;
  }

  v172 = sub_1C4A32590(v170, v154);

  sub_1C4410DD4(v183);
  sub_1C43FF19C();
  if ((v172 & 1) == 0)
  {
LABEL_92:
    v175 = sub_1C442BC20();
    (qword_1EC0B9A10)(v175);
    (qword_1EC0B9A10)(v171, v88);
    return 1.0;
  }

  v173 = sub_1C442BC20();
  (qword_1EC0B9A10)(v173);
  (qword_1EC0B9A10)(v171, v88);
  return 0.0;
}

uint64_t sub_1C4929810()
{
  sub_1C43FBE94();
  v1 = sub_1C4EFD548();
  sub_1C43FCDF8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBD08();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - v13;
  v15 = *(v3 + 16);
  v42 = v0;
  v15(&v41 - v13, v0, v1, v12);
  sub_1C4EFCF58();
  sub_1C4419964();
  sub_1C492BE08(v16, v17, MEMORY[0x1E69A92E0]);
  v18 = sub_1C44005A0();
  v19 = *(v3 + 8);
  v19(v10, v1);
  if (v18)
  {
    v19(v14, v1);
    return 0x416C61636973754DLL;
  }

  else
  {
    sub_1C4EFD418();
    sub_1C44005A0();
    v20 = sub_1C440E3B8();
    (v19)(v20);
    sub_1C4EFD3E8();
    sub_1C44005A0();
    v21 = sub_1C440E3B8();
    (v19)(v21);
    sub_1C4EFCED8();
    sub_1C44005A0();
    v22 = sub_1C440E3B8();
    (v19)(v22);
    sub_1C4EFD1C8();
    sub_1C44005A0();
    v23 = sub_1C440E3B8();
    (v19)(v23);
    v41 = v19;
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v25 = sub_1C4F00978();
    sub_1C442B738(v25, qword_1EDDFECB8);
    (v15)(v7, v42, v1);
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CD8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43 = v29;
      *v28 = 136315138;
      sub_1C4419964();
      sub_1C492BE08(v30, v31, MEMORY[0x1E69A92F8]);
      v32 = sub_1C4F02858();
      v34 = v33;
      v41(v7, v1);
      v35 = sub_1C441D828(v32, v34, &v43);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_1C43F8000, v26, v27, "Identifier based Matcher is not set up for %s", v28, 0xCu);
      sub_1C440962C(v29);
      MEMORY[0x1C6942830](v29, -1, -1);
      MEMORY[0x1C6942830](v28, -1, -1);
    }

    else
    {

      v41(v7, v1);
    }

    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1C4F02248();

    v43 = 0xD000000000000023;
    v44 = 0x80000001C4FA9C20;
    sub_1C4419964();
    sub_1C492BE08(v36, v37, MEMORY[0x1E69A92F8]);
    v38 = sub_1C4F02858();
    MEMORY[0x1C6940010](v38);

    result = sub_1C4409D78("Fatal error", v39, v40, v43, v44, "IntelligencePlatformCore/IdentifierBasedMatcher.swift");
    __break(1u);
  }

  return result;
}

uint64_t sub_1C4929CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, __n128))
{
  v5 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3(0, v9);
  if (sub_1C4EFF878())
  {
    v13 = *(v12 + 28);
    sub_1C4EFE558();
    v14 = sub_1C44DBB50(a1 + v13, v11);
    (*(v7 + 8))(v11, v5);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1C4929DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v62 = a1;
  v4 = sub_1C4EF9CD8();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v61 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v54 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54 - v24;
  if (!a2)
  {
    goto LABEL_4;
  }

  sub_1C44F1938(a2, v16);
  v26 = type metadata accessor for GraphTriple(0);
  if (sub_1C44157D4(v16, 1, v26) == 1)
  {
    sub_1C4420C3C(v16, &unk_1EC0BC900, byte_1C4F142D0);
LABEL_4:
    v27 = 1;
    goto LABEL_6;
  }

  (*(v61 + 16))(v25, v16, v6);
  sub_1C44DBD5C(v16, type metadata accessor for GraphTriple);
  v27 = 0;
LABEL_6:
  sub_1C440BAA8(v25, v27, 1, v6);
  v28 = v62;
  sub_1C44D0BD8(v62, v10);
  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    sub_1C4420C3C(v10, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v29 = sub_1C4F00978();
    sub_1C442B738(v29, qword_1EDE2DE10);
    v30 = sub_1C4F00968();
    v31 = sub_1C4F01CD8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1C43F8000, v30, v31, "Identifier based Matcher: skipping entityTriples are empty", v32, 2u);
      MEMORY[0x1C6942830](v32, -1, -1);
    }

    sub_1C46828B4();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
    return sub_1C4420C3C(v25, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    sub_1C448566C(v10, v13);
    if (a2)
    {
      v35 = v28;
      v36 = v65;
      v37 = sub_1C4928728(v35, a2, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, sub_1C459D7C8, type metadata accessor for GraphTriple, sub_1C492BEB8, sub_1C492BE84, sub_1C4B3460C);
    }

    else
    {
      v37 = 0.0;
      v36 = v65;
    }

    v62 = type metadata accessor for IdentifierBasedMatcher(0);
    v38 = *(v36 + *(v62 + 28));
    if (v37 <= v38)
    {
      sub_1C4EFF008();
      sub_1C4420C3C(v25, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C440BAA8(v22, 0, 1, v6);
      sub_1C44DDDBC(v22, v25);
      v37 = v38;
    }

    v39 = v25;
    v40 = v13;
    v55 = v39;
    sub_1C445FFF0(v39, v19, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (sub_1C44157D4(v19, 1, v6) == 1)
    {
      sub_1C4420C3C(v19, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD00000000000001DLL, 0x80000001C4FA9BD0);
      v53 = sub_1C4EFD3D8();
      MEMORY[0x1C6940010](v53);

      MEMORY[0x1C6940010](0xD000000000000023, 0x80000001C4FA9BF0);
      result = sub_1C4F024A8();
      __break(1u);
    }

    else
    {
      v41 = v61;
      v42 = v56;
      (*(v61 + 32))(v56, v19, v6);
      v43 = v62;
      v44 = *(v62 + 32);
      v45 = sub_1C4EFD548();
      v46 = v60;
      (*(*(v45 - 8) + 16))(v60, v36 + v44, v45);
      v47 = type metadata accessor for EntityMatch(0);
      v48 = *(v41 + 16);
      v48(v46 + v47[5], v40, v6);
      v48(v46 + v47[6], v42, v6);
      v49 = v57;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v51 = v50;
      (*(v58 + 8))(v49, v59);
      (*(v41 + 8))(v42, v6);
      sub_1C44DBD5C(v40, type metadata accessor for EntityTriple);
      result = sub_1C4420C3C(v55, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v52 = *(v65 + *(v43 + 24));
      *(v46 + v47[7]) = v37;
      *(v46 + v47[8]) = v51;
      *(v46 + v47[9]) = v52;
      *(v46 + v47[10]) = 0;
    }
  }

  return result;
}

uint64_t sub_1C492A644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a3;
  v60 = a1;
  v4 = sub_1C4EF9CD8();
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v59 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v52 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v52 - v24;
  if (!a2)
  {
    goto LABEL_4;
  }

  sub_1C44D0BD8(a2, v16);
  if (sub_1C44157D4(v16, 1, v8) == 1)
  {
    sub_1C4420C3C(v16, &qword_1EC0BA590, &qword_1C4F1F430);
LABEL_4:
    v26 = 1;
    goto LABEL_6;
  }

  (*(v59 + 16))(v25, v16, v6);
  sub_1C44DBD5C(v16, type metadata accessor for EntityTriple);
  v26 = 0;
LABEL_6:
  sub_1C440BAA8(v25, v26, 1, v6);
  v27 = v60;
  sub_1C44D0BD8(v60, v13);
  if (sub_1C44157D4(v13, 1, v8) == 1)
  {
    sub_1C4420C3C(v13, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v28 = sub_1C4F00978();
    sub_1C442B738(v28, qword_1EDE2DE10);
    v29 = sub_1C4F00968();
    v30 = sub_1C4F01CD8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1C43F8000, v29, v30, "Identifier based Matcher: skipping entityTriples are empty", v31, 2u);
      MEMORY[0x1C6942830](v31, -1, -1);
    }

    sub_1C46828B4();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
    return sub_1C4420C3C(v25, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    sub_1C448566C(v13, v10);
    if (a2)
    {
      v34 = v27;
      v35 = v63;
      v36 = sub_1C4927414(v34, a2);
    }

    else
    {
      v36 = 0.0;
      v35 = v63;
    }

    v60 = type metadata accessor for IdentifierBasedMatcher(0);
    v37 = *(v35 + *(v60 + 28));
    if (v36 <= v37)
    {
      sub_1C4EFF008();
      sub_1C4420C3C(v25, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C440BAA8(v22, 0, 1, v6);
      sub_1C44DDDBC(v22, v25);
      v36 = v37;
    }

    sub_1C445FFF0(v25, v19, &unk_1EC0BA0E0, &qword_1C4F105A0);
    v38 = sub_1C44157D4(v19, 1, v6);
    v53 = v25;
    if (v38 == 1)
    {
      sub_1C4420C3C(v19, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v61 = 0;
      v62 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD00000000000001DLL, 0x80000001C4FA9BD0);
      v51 = sub_1C4EFD3D8();
      MEMORY[0x1C6940010](v51);

      MEMORY[0x1C6940010](0xD000000000000023, 0x80000001C4FA9BF0);
      result = sub_1C4F024A8();
      __break(1u);
    }

    else
    {
      v39 = v59;
      v40 = v54;
      (*(v59 + 32))(v54, v19, v6);
      v41 = v60;
      v42 = *(v60 + 32);
      v43 = sub_1C4EFD548();
      v44 = v58;
      (*(*(v43 - 8) + 16))(v58, v35 + v42, v43);
      v45 = type metadata accessor for EntityMatch(0);
      v46 = *(v39 + 16);
      v46(v44 + v45[5], v10, v6);
      v46(v44 + v45[6], v40, v6);
      v47 = v55;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v49 = v48;
      (*(v56 + 8))(v47, v57);
      (*(v39 + 8))(v40, v6);
      sub_1C44DBD5C(v10, type metadata accessor for EntityTriple);
      result = sub_1C4420C3C(v53, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v50 = *(v63 + *(v41 + 24));
      *(v44 + v45[7]) = v36;
      *(v44 + v45[8]) = v49;
      *(v44 + v45[9]) = v50;
      *(v44 + v45[10]) = 0;
    }
  }

  return result;
}

uint64_t sub_1C492ADD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a3;
  v62 = a1;
  v4 = sub_1C4EF9CD8();
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFF0C8();
  v61 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v54 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54 - v24;
  if (!a2)
  {
    goto LABEL_4;
  }

  sub_1C486854C(a2, v16);
  v26 = type metadata accessor for ConstructionGraphTriple(0);
  if (sub_1C44157D4(v16, 1, v26) == 1)
  {
    sub_1C4420C3C(v16, &unk_1EC0BCAE0, byte_1C4F142A0);
LABEL_4:
    v27 = 1;
    goto LABEL_6;
  }

  (*(v61 + 16))(v25, v16, v6);
  sub_1C44DBD5C(v16, type metadata accessor for ConstructionGraphTriple);
  v27 = 0;
LABEL_6:
  sub_1C440BAA8(v25, v27, 1, v6);
  v28 = v62;
  sub_1C44D0BD8(v62, v10);
  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    sub_1C4420C3C(v10, &qword_1EC0BA590, &qword_1C4F1F430);
    if (qword_1EDDFD028 != -1)
    {
      swift_once();
    }

    v29 = sub_1C4F00978();
    sub_1C442B738(v29, qword_1EDE2DE10);
    v30 = sub_1C4F00968();
    v31 = sub_1C4F01CD8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1C43F8000, v30, v31, "Identifier based Matcher: skipping entityTriples are empty", v32, 2u);
      MEMORY[0x1C6942830](v32, -1, -1);
    }

    sub_1C46828B4();
    swift_allocError();
    *v33 = 0;
    swift_willThrow();
    return sub_1C4420C3C(v25, &unk_1EC0BA0E0, &qword_1C4F105A0);
  }

  else
  {
    sub_1C448566C(v10, v13);
    if (a2)
    {
      v35 = v28;
      v36 = v65;
      v37 = sub_1C4928728(v35, a2, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, sub_1C459DC78, type metadata accessor for ConstructionGraphTriple, sub_1C492BEB8, sub_1C492BE50, sub_1C4B34A4C);
    }

    else
    {
      v37 = 0.0;
      v36 = v65;
    }

    v62 = type metadata accessor for IdentifierBasedMatcher(0);
    v38 = *(v36 + *(v62 + 28));
    if (v37 <= v38)
    {
      sub_1C4EFF008();
      sub_1C4420C3C(v25, &unk_1EC0BA0E0, &qword_1C4F105A0);
      sub_1C440BAA8(v22, 0, 1, v6);
      sub_1C44DDDBC(v22, v25);
      v37 = v38;
    }

    v39 = v25;
    v40 = v13;
    v55 = v39;
    sub_1C445FFF0(v39, v19, &unk_1EC0BA0E0, &qword_1C4F105A0);
    if (sub_1C44157D4(v19, 1, v6) == 1)
    {
      sub_1C4420C3C(v19, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v63 = 0;
      v64 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD00000000000001DLL, 0x80000001C4FA9BD0);
      v53 = sub_1C4EFD3D8();
      MEMORY[0x1C6940010](v53);

      MEMORY[0x1C6940010](0xD000000000000023, 0x80000001C4FA9BF0);
      result = sub_1C4F024A8();
      __break(1u);
    }

    else
    {
      v41 = v61;
      v42 = v56;
      (*(v61 + 32))(v56, v19, v6);
      v43 = v62;
      v44 = *(v62 + 32);
      v45 = sub_1C4EFD548();
      v46 = v60;
      (*(*(v45 - 8) + 16))(v60, v36 + v44, v45);
      v47 = type metadata accessor for EntityMatch(0);
      v48 = *(v41 + 16);
      v48(v46 + v47[5], v40, v6);
      v48(v46 + v47[6], v42, v6);
      v49 = v57;
      sub_1C4EF9C88();
      sub_1C4EF9AD8();
      v51 = v50;
      (*(v58 + 8))(v49, v59);
      (*(v41 + 8))(v42, v6);
      sub_1C44DBD5C(v40, type metadata accessor for EntityTriple);
      result = sub_1C4420C3C(v55, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v52 = *(v65 + *(v43 + 24));
      *(v46 + v47[7]) = v37;
      *(v46 + v47[8]) = v51;
      *(v46 + v47[9]) = v52;
      *(v46 + v47[10]) = 0;
    }
  }

  return result;
}

uint64_t IdentifierBasedMatcher.execute()()
{
  *(v1 + 24) = v0;
  sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C492B6C4, 0, 0);
}

uint64_t sub_1C492B6C4()
{
  v44 = v0;
  v2 = v0[3];
  v1 = v0[4];
  type metadata accessor for PhaseStores(0);
  v3 = type metadata accessor for IdentifierBasedMatcher(0);
  v4 = *(v3 + 24);
  LOBYTE(v42) = *(v2 + v4);
  v5 = *(v3 + 32);
  v6 = sub_1C4EFD548();
  sub_1C43FBCE0();
  v8 = *(v7 + 16);
  v8(v1, v2 + v5, v6);
  sub_1C43FBD94();
  sub_1C440BAA8(v9, v10, v11, v6);
  sub_1C44ABA54(&v42, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  v12 = *(v2 + v4);
  switch(*(v2 + v4))
  {
    case 1:
    case 3:
      v41 = v8;
      v13 = v0[3];
      v14 = swift_task_alloc();
      *(v14 + 16) = v13;
      sub_1C43FD8E4();
      sub_1C44AC170(v15, v16, v17, v18, v19, v20);

      if (v13)
      {
        goto LABEL_10;
      }

      if (*(v12 + *(sub_1C43FF150() + 28)) != 1)
      {
        goto LABEL_11;
      }

      v21 = *(v2 + v4);
      v22 = swift_task_alloc();
      *(v22 + 16) = v14;
      v23 = sub_1C492BC18;
      goto LABEL_9;
    case 2:
      v41 = v8;
      v28 = v0[3];
      v29 = swift_task_alloc();
      *(v29 + 16) = v28;
      sub_1C43FD8E4();
      sub_1C46CE408(v30, v31, v32, v33, v34, v35);

      if (v1)
      {
LABEL_10:

        v36 = v0[1];
      }

      else
      {
        if (*(v28 + *(sub_1C43FF150() + 28)) == 1)
        {
          v21 = *(v2 + v4);
          v22 = swift_task_alloc();
          *(v22 + 16) = v29;
          v23 = sub_1C492BED4;
LABEL_9:
          sub_1C44C6BB4(v2 + v5, v21, 0, 1, v23, v22);
        }

LABEL_11:
        v37 = v0[4];
        sub_1C4EF9AE8();
        sub_1C43FBD94();
        sub_1C464B968();
        LOBYTE(v42) = *(v2 + v4);
        v41(v37, v2 + v5, v6);
        sub_1C43FBD94();
        sub_1C440BAA8(v38, v39, v40, v6);
        sub_1C44A8814(&v42, v37);
        sub_1C4420C3C(v37, &qword_1EC0B8568, &unk_1C4F319B0);

        v36 = v0[1];
      }

      result = v36();
      break;
    default:
      v42 = 0;
      v43 = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v3;
      sub_1C456902C(&qword_1EC0BA528, &qword_1C4F3A570);
      v24 = sub_1C4F01198();
      MEMORY[0x1C6940010](v24);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v2 + v4));
      result = sub_1C4409D78("Fatal error", v25, v26, v42, v43, "IntelligencePlatformCore/IdentifierBasedMatcher.swift");
      break;
  }

  return result;
}

uint64_t sub_1C492BAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(a1, a2, a3);
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C492BB28()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return IdentifierBasedMatcher.execute()();
}

uint64_t sub_1C492BC48(uint64_t a1)
{
  result = sub_1C492BE08(&qword_1EDDF3BB8, type metadata accessor for IdentifierBasedMatcher, &protocol conformance descriptor for IdentifierBasedMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C492BCA0(uint64_t a1)
{
  result = sub_1C492BE08(qword_1EDDF3BC8, type metadata accessor for IdentifierBasedMatcher, &protocol conformance descriptor for IdentifierBasedMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C492BD20(uint64_t a1)
{
  result = type metadata accessor for PhaseStores(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Source(319);
    if (v3 <= 0x3F)
    {
      result = sub_1C4EFD548();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C492BE08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C492BEEC()
{
  v1 = v0;
  sub_1C4F02248();

  strcpy(v4, "[externalId:");
  BYTE5(v4[1]) = 0;
  HIWORD(v4[1]) = -5120;
  MEMORY[0x1C6940010](*v1, v1[1]);
  MEMORY[0x1C6940010](0x636964657270202CLL, 0xEC0000003A657461);
  MEMORY[0x1C6940010](v1[2], v1[3]);
  MEMORY[0x1C6940010](0x6D69546C7474202CLL, 0xEF3A706D61747365);
  v2 = sub_1C4F02858();
  MEMORY[0x1C6940010](v2);

  MEMORY[0x1C6940010](93, 0xE100000000000000);
  return v4[0];
}

void sub_1C492BFFC()
{
  sub_1C43FBD3C();
  v2 = v1;
  v110 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v6);
  v7 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  v118 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FC4B0();
  v127 = sub_1C4EFF428();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  v115 = v17;
  v18 = sub_1C456902C(&qword_1EC0BF728, &qword_1C4F412D0);
  v19 = sub_1C43FBD18(v18);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  v122 = v20;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FD230();
  v125 = v22;
  sub_1C492EBB0();
  v126 = v23;
  v123 = v24;
  sub_1C4EFF388();
  v25 = 0;
  sub_1C443F668();
  v117 = v26;
  sub_1C43FEC90();
  v30 = v29 & v28;
  v32 = (v31 + 63) >> 6;
  v116 = v14;
  v109 = v4;
  v33 = v7;
  v119 = v7;
  v124 = v0;
  v120 = v32;
  v121 = v27;
LABEL_2:
  v34 = v122;
  v35 = v125;
  if (!v30)
  {
    goto LABEL_4;
  }

  do
  {
LABEL_8:
    sub_1C444B180();
    (*(v116 + 16))(v115, *(v117 + 48) + *(v116 + 72) * v2, v127);
    v37 = *(*(v117 + 56) + 8 * v2);
    v38 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
    v39 = *(v38 + 48);
    v34 = v122;
    (*(v116 + 32))();
    *(v122 + v39) = v37;
    sub_1C43FBD94();
    sub_1C440BAA8(v40, v41, v42, v38);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v0 = v124;
    v35 = v125;
    v33 = v119;
LABEL_9:
    sub_1C49328EC(v34, v35, &qword_1EC0BF728, &qword_1C4F412D0);
    v43 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
    sub_1C440175C(v35, 1, v43);
    if (v44)
    {

      sub_1C4402358();
      sub_1C43FE9F0();
      return;
    }

    v45 = *(v35 + *(v43 + 48));
    v46 = sub_1C441ECE4();
    v47(v46);
    if (!*(v123 + 16) || (sub_1C457B070(), (v49 & 1) == 0))
    {

LABEL_23:
      v2 = sub_1C4EFF3D8();
      v65 = v64;
      sub_1C4402358();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C4435928();
        v97 = sub_1C43FCEC0();
        sub_1C458BB88(v97, v98, v99, v100);
        sub_1C44410E0(v101);
      }

      sub_1C440E3C8();
      v67 = *(v66 + 16);
      if (v67 >= *(v66 + 24) >> 1)
      {
        sub_1C4435928();
        sub_1C458BB88(v102, v103, v104, v105);
        sub_1C44410E0(v106);
      }

      v68 = sub_1C44043EC();
      v69(v68);
      sub_1C440E3C8();
      *(v70 + 16) = v67 + 1;
      v71 = (v70 + 40 * v67);
      v71[4] = v2;
      v71[5] = v65;
      v71[6] = 0;
      v71[7] = 0xE000000000000000;
      v71[8] = 0;
      v0 = v124;
      goto LABEL_28;
    }

    (*(v9 + 16))(v118, *(v123 + 56) + *(v9 + 72) * v48, v33);
    (*(v9 + 32))(v0, v118, v33);
    if (!*(v126 + 16) || (v2 = v126, sub_1C44E3664(), (v51 & 1) == 0))
    {

      v62 = sub_1C4418488();
      v63(v62);
      goto LABEL_23;
    }

    if (*(*(*(v126 + 56) + 8 * v50) + 16) <= *(v45 + 16) >> 3)
    {
      v128 = v45;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v2 = &v128;
      sub_1C4A807C0();

      v53 = v128;
    }

    else
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4A81DF0();
      v53 = v52;
    }

    v0 = v124;
    if (*(v53 + 16))
    {
      v72 = 0;
      sub_1C43FEC90();
      v75 = v74 & v73;
      v77 = (v76 + 63) >> 6;
      v107 = v77;
      if ((v74 & v73) != 0)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v78 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          goto LABEL_43;
        }

        if (v78 >= v77)
        {
          break;
        }

        v75 = *(v53 + 56 + 8 * v78);
        ++v72;
        if (v75)
        {
          v72 = v78;
          do
          {
LABEL_34:
            (*(v109 + 16))(v108, *(v53 + 48) + *(v109 + 72) * (__clz(__rbit64(v75)) | (v72 << 6)), v110);
            v111 = sub_1C4EFF3D8();
            v114 = v79;
            v113 = sub_1C4EFEB68();
            v112 = v80;
            (*(v109 + 8))(v108, v110);
            sub_1C4402358();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1C4435928();
              v85 = sub_1C43FCEC0();
              sub_1C458BB88(v85, v86, v87, v88);
              sub_1C44410E0(v89);
            }

            sub_1C440E3C8();
            v2 = *(v81 + 16);
            v33 = v119;
            if (v2 >= *(v81 + 24) >> 1)
            {
              sub_1C4435928();
              sub_1C458BB88(v90, v91, v92, v93);
              sub_1C44410E0(v94);
            }

            v75 &= v75 - 1;
            sub_1C440E3C8();
            *(v82 + 16) = v83;
            v84 = (v82 + 40 * v2);
            v84[4] = v111;
            v84[5] = v114;
            v84[6] = v113;
            v84[7] = v112;
            v84[8] = 0;
            v77 = v107;
          }

          while (v75);
        }
      }

      v0 = v124;
      (*(v9 + 8))(v124, v33);
      v95 = sub_1C44043EC();
      v96(v95);
LABEL_28:
      v32 = v120;
      v27 = v121;
      goto LABEL_2;
    }

    v54 = sub_1C4418488();
    v55(v54);
    v56 = sub_1C44043EC();
    v57(v56);
    v35 = v125;
    v32 = v120;
    v27 = v121;
  }

  while (v30);
LABEL_4:
  while (1)
  {
    v36 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v36 >= v32)
    {
      sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
      sub_1C43FCF64();
      sub_1C440BAA8(v58, v59, v60, v61);
      v30 = 0;
      goto LABEL_9;
    }

    v30 = *(v27 + 8 * v36);
    ++v25;
    if (v30)
    {
      v25 = v36;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_1C492C830()
{
  sub_1C43FBD3C();
  v137 = v1;
  v139 = v2;
  v131 = sub_1C4F00978();
  sub_1C43FCDF8();
  v130 = v3;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v5);
  v129 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v128 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v135 = v12;
  v13 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  sub_1C43FBD18(v13);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v144 = v109 - v15;
  sub_1C43FBE44();
  v16 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v117 = v17;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBFDC();
  v142 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  v141 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD230();
  v140 = v23;
  v24 = sub_1C43FBE44();
  v134 = type metadata accessor for LiveGlobalKnowledgeTriple(v24);
  sub_1C43FCDF8();
  v116 = v25;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FD2D8();
  v143 = v27;
  sub_1C43FBE44();
  v138 = sub_1C4EFD648();
  sub_1C43FCDF8();
  v121 = v28;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v30);
  v120 = sub_1C4EFD678();
  sub_1C43FCDF8();
  v118 = v31;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  v35 = v34 - v33;
  v36 = sub_1C456902C(&qword_1EC0BF758, &qword_1C4F3A6C0);
  sub_1C43FCDF8();
  v136 = v37;
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBD08();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FC4B0();
  v123 = sub_1C4EFF658();
  sub_1C43FCDF8();
  v122 = v43;
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBCC4();
  v47 = v46 - v45;
  v48 = sub_1C456902C(&qword_1EC0BE4F0, &qword_1C4F37248);
  sub_1C43FBD18(v48);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  v51 = v109 - v50;
  v52 = sub_1C4EFDE98();
  sub_1C43FCDF8();
  v54 = v53;
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  v58 = v109 - v57;
  v149 = MEMORY[0x1E69E7CC0];
  sub_1C492FB2C();
  sub_1C440175C(v51, 1, v52);
  if (v59)
  {
    sub_1C4420C3C(v51, &qword_1EC0BE4F0, &qword_1C4F37248);
  }

  else
  {
    v112 = v54;
    v60 = sub_1C440A9B8();
    v113 = v52;
    v61(v60);
    sub_1C4EFF648();
    v110 = sub_1C4EFB298();
    v147 = v110;
    v148 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v146);
    v114 = v47;
    v111 = v58;
    sub_1C4EFDCA8();
    v109[1] = sub_1C49328A4(&qword_1EDDE1270, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);
    sub_1C4EFAE28();
    sub_1C440962C(v146);
    sub_1C456902C(&qword_1EC0BDD38, qword_1C4F31D80);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_1C4F0CE60;
    *(v62 + 56) = &type metadata for LiveGlobalKnowledgeTripleColumn;
    v63 = sub_1C4932818();
    *(v62 + 64) = v63;
    *(v62 + 32) = 0;
    *(v62 + 96) = &type metadata for LiveGlobalKnowledgeTripleColumn;
    *(v62 + 104) = v63;
    *(v62 + 72) = 2;
    (*(v121 + 104))(v119, *MEMORY[0x1E69A9338], v138);
    sub_1C4EFD668();
    sub_1C4EFD658();
    sub_1C43FFB20();
    v64(v35, v120);
    sub_1C4401CBC(&unk_1EC0C0830, &qword_1EC0BF758, &qword_1C4F3A6C0, MEMORY[0x1E699FF68]);
    sub_1C4EFB308();

    v65 = *(v136 + 40);
    v120 = v41;
    v119 = v136 + 40;
    v118 = v65;
    v66 = v65(v0, v41, v36);
    MEMORY[0x1EEE9AC00](v66);
    sub_1C441CAAC();
    *(v67 - 16) = v68;
    *(v67 - 8) = v0;
    v121 = v0;
    sub_1C4465390(sub_1C493286C, v69);
    v145 = MEMORY[0x1E69E7CD0];
    v70 = *(v149 + 16);
    v115 = v36;
    if (v70)
    {
      v71 = v143;
      v72 = v149 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
      v73 = *(v116 + 72);
      v138 = v117 + 16;
      v139 = (v117 + 32);
      v74 = (v117 + 8);
      v117 = v149;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v75 = v140;
      do
      {
        sub_1C4932758(v72, v71);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C49327BC(v71);
        v76 = v144;
        sub_1C4EFF0D8();
        sub_1C440175C(v76, 1, v16);
        if (v59)
        {
          sub_1C4420C3C(v76, &unk_1EC0BA0E0, &qword_1C4F105A0);
        }

        else
        {
          (*v139)(v75, v76, v16);
          sub_1C441B9F4();
          v77(v142, v75, v16);
          v78 = v16;
          v79 = v141;
          sub_1C44D56D0();
          v80 = *v74;
          v81 = v79;
          v16 = v78;
          v71 = v143;
          (*v74)(v81, v16);
          v80(v75, v16);
        }

        v72 += v73;
        --v70;
      }

      while (v70);
    }

    v82 = v128;
    v83 = v128 + 104;
    v84 = *(v128 + 104);
    v85 = v129;
    (v84)(v135, *MEMORY[0x1E69A95C0], v129);
    v86 = v124;
    sub_1C4426BC8();
    v84();
    v87 = v125;
    sub_1C4426BC8();
    v84();
    v88 = v126;
    sub_1C4426BC8();
    v84();
    v89 = v127;
    sub_1C4426BC8();
    v84();
    sub_1C441B388();
    v90 = v135;
    sub_1C4EFDCD8();

    v91 = *(v82 + 8);
    v91(v89, v85);
    v91(v88, v85);
    v91(v87, v85);
    v91(v86, v85);
    v91(v90, v85);
    v147 = v110;
    v148 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v146);
    v92 = v114;
    sub_1C4EFDCA8();
    sub_1C441615C();
    sub_1C4EFAE28();
    sub_1C440962C(v146);
    v93 = v121;
    v94 = v115;
    v95 = v118(v121, v91, v115);
    MEMORY[0x1EEE9AC00](v95);
    sub_1C441CAAC();
    *(v96 - 16) = v97;
    *(v96 - 8) = v93;
    sub_1C4465390(sub_1C4932888, v98);
    sub_1C441B388();
    sub_1C4F00168();
    v99 = sub_1C4F00968();
    v100 = sub_1C4F01CC8();
    v101 = os_log_type_enabled(v99, v100);
    v102 = v136;
    if (v101)
    {
      v103 = swift_slowAlloc();
      *v103 = 134217984;
      swift_beginAccess();
      *(v103 + 4) = *(v149 + 16);
      _os_log_impl(&dword_1C43F8000, v99, v100, "Retrieved %ld triples from LiveGlobalKnowledge Cache", v103, 0xCu);
      v104 = v103;
      v83 = v132;
      MEMORY[0x1C6942830](v104, -1, -1);
    }

    sub_1C43FFB20();
    v105(v83, v131);
    v106 = *(v112 + 8);
    v107 = v113;
    v106(v133, v113);
    sub_1C43FFB20();
    v108(v92, v123);
    v106(v111, v107);
    swift_beginAccess();
    (*(v102 + 8))(v93, v94);
  }

  sub_1C43FE9F0();
}

void sub_1C492D568()
{
  sub_1C43FBD3C();
  v2 = v1;
  v3 = sub_1C4EFF458();
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v5);
  v6 = sub_1C4EFF988();
  v7 = sub_1C43FBD18(v6);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v8);
  v9 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  v15 = v14 - v13;
  v16 = sub_1C4EFF428();
  sub_1C43FCDF8();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C440CC74();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD230();
  v105 = v23;
  v24 = sub_1C456902C(&qword_1EC0BF728, &qword_1C4F412D0);
  v25 = sub_1C43FBD18(v24);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBD08();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD230();
  v118 = v30;
  sub_1C492EBB0();
  v119 = v32;
  v120 = v31;
  sub_1C456902C(&qword_1EC0BA1F8, &unk_1C4F54230);
  sub_1C44324B4();
  sub_1C49328A4(v33, v34, MEMORY[0x1E69A98A8]);
  v104 = sub_1C4F00F28();
  v35 = v2;
  sub_1C4EFF388();
  v36 = 0;
  sub_1C443F668();
  v106 = v37;
  v107 = v18;
  sub_1C43FD030();
  v41 = v40 & v39;
  v43 = (v42 + 63) >> 6;
  v116 = (v18 + 16);
  v117 = (v18 + 32);
  v108 = v11;
  v114 = (v18 + 8);
  v115 = v16;
  v44 = v118;
  v110 = v15;
  v111 = v0;
  v109 = v28;
  v112 = v43;
  v113 = v38;
  if ((v40 & v39) != 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v45 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v45 >= v43)
    {
      sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
      sub_1C43FCF64();
      sub_1C440BAA8(v65, v66, v67, v68);
      v41 = 0;
      goto LABEL_8;
    }

    v41 = *(v38 + 8 * v45);
    ++v36;
    if (v41)
    {
      v36 = v45;
LABEL_7:
      sub_1C444B180();
      (*(v107 + 16))(v105, *(v106 + 48) + *(v107 + 72) * v35, v16);
      v46 = *(*(v106 + 56) + 8 * v35);
      v47 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
      v48 = *(v47 + 48);
      v28 = v109;
      (*(v107 + 32))();
      *(v109 + v48) = v46;
      sub_1C43FBD94();
      sub_1C440BAA8(v49, v50, v51, v47);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v15 = v110;
      v0 = v111;
      v44 = v118;
LABEL_8:
      sub_1C49328EC(v28, v44, &qword_1EC0BF728, &qword_1C4F412D0);
      v52 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
      sub_1C440175C(v44, 1, v52);
      if (v53)
      {

        sub_1C441B388();
        sub_1C4EFF398();
        sub_1C441615C();
        sub_1C4EFF3A8();
        sub_1C4EFF378();
        sub_1C43FE9F0();
        return;
      }

      v54 = v44;
      v55 = *(v44 + *(v52 + 48));
      (*v117)(v0, v54, v16);
      if (*(v119 + 16))
      {
        sub_1C457B070();
        if (v57)
        {
          (*(v108 + 16))(v15, *(v119 + 56) + *(v108 + 72) * v56, v9);
          if (*(v120 + 2))
          {
            v35 = v120;
            sub_1C44E3664();
            if (v59)
            {
              if (*(*(*(v120 + 7) + 8 * v58) + 16) <= v55[2] >> 3)
              {
                v121 = v55;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v35 = &v121;
                sub_1C4A807C0();

                v61 = v121;
              }

              else
              {
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                sub_1C4A81DF0();
                v61 = v60;
              }

              v16 = v115;
              if (!v61[2])
              {

                sub_1C441B9F4();
                v62(v15, v9);
                v63 = sub_1C4409D98();
                v64(v63);
                v44 = v118;
                goto LABEL_18;
              }

              v86 = *v116;
              v87 = sub_1C440A9B8();
              v86(v87);
              swift_isUniquelyReferenced_nonNull_native();
              v121 = v104;
              sub_1C457B070();
              sub_1C444FDAC();
              if (__OFADD__(v90, v91))
              {
                goto LABEL_47;
              }

              v92 = v88;
              v93 = v89;
              sub_1C456902C(&qword_1EC0BF738, &unk_1C4F3A690);
              if (sub_1C4F02458())
              {
                sub_1C4402358();
                sub_1C457B070();
                v16 = v115;
                v0 = v111;
                if ((v93 & 1) != (v95 & 1))
                {
                  goto LABEL_49;
                }

                v92 = v94;
              }

              else
              {
                v16 = v115;
                v0 = v111;
              }

              v96 = v121;
              v104 = v121;
              if (v93)
              {
                *(v121[7] + 8 * v92) = v61;
              }

              else
              {
                sub_1C4401D38(&v121[v92 >> 6]);
                (v86)(v96[6] + *(v107 + 72) * v92, v102, v16);
                *(v96[7] + 8 * v92) = v61;
                v97 = v96[2];
                v84 = __OFADD__(v97, 1);
                v98 = v97 + 1;
                if (v84)
                {
                  goto LABEL_48;
                }

                v96[2] = v98;
              }

              v35 = *v114;
              v99 = sub_1C4402358();
              v35(v99, v16);
              sub_1C441B9F4();
              v15 = v110;
              v100(v110, v9);
LABEL_41:
              v101 = sub_1C4409D98();
              (v35)(v101);
              goto LABEL_42;
            }
          }

          sub_1C441B9F4();
          v69(v15, v9);
        }
      }

      v70 = *v116;
      v71 = sub_1C440A9B8();
      v70(v71);
      swift_isUniquelyReferenced_nonNull_native();
      v121 = v104;
      sub_1C457B070();
      sub_1C444FDAC();
      if (__OFADD__(v74, v75))
      {
        goto LABEL_45;
      }

      v76 = v72;
      v77 = v73;
      sub_1C456902C(&qword_1EC0BF738, &unk_1C4F3A690);
      if (sub_1C4F02458())
      {
        sub_1C457B070();
        v15 = v110;
        if ((v77 & 1) != (v79 & 1))
        {
          goto LABEL_49;
        }

        v76 = v78;
      }

      else
      {
        v15 = v110;
      }

      v104 = v121;
      if (v77)
      {
        *(v121[7] + 8 * v76) = v55;

        v16 = v115;
        v35 = *v114;
        (*v114)(v103, v115);
        v0 = v111;
        goto LABEL_41;
      }

      sub_1C4401D38(&v121[v76 >> 6]);
      v16 = v115;
      (v70)(*(v80 + 48) + *(v107 + 72) * v76, v103, v115);
      *(*(v104 + 56) + 8 * v76) = v55;
      v35 = *(v107 + 8);
      v81 = sub_1C4409D98();
      (v35)(v81);
      v0 = v111;
      v82 = sub_1C4409D98();
      (v35)(v82);
      v83 = *(v104 + 16);
      v84 = __OFADD__(v83, 1);
      v85 = v83 + 1;
      if (v84)
      {
        goto LABEL_46;
      }

      *(v104 + 16) = v85;
LABEL_42:
      v28 = v109;
      v44 = v118;
LABEL_18:
      v43 = v112;
      v38 = v113;
      if (!v41)
      {
        continue;
      }

      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  sub_1C4F029F8();
  __break(1u);
}

void sub_1C492DE94()
{
  sub_1C43FBD3C();
  v163 = v1;
  v3 = v2;
  v159 = v4;
  v5 = sub_1C4EFF458();
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v7);
  v8 = sub_1C4EFF988();
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v10);
  v167 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v164 = v11;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD2D8();
  v165 = v13;
  sub_1C43FBE44();
  v14 = sub_1C4F00978();
  sub_1C44410E0(v14);
  sub_1C43FCDF8();
  v161 = v15;
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v17);
  v180 = sub_1C4EFF428();
  sub_1C43FCDF8();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  v168 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FD230();
  v178 = v23;
  v24 = sub_1C456902C(&qword_1EC0BF728, &qword_1C4F412D0);
  v25 = sub_1C43FBD18(v24);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBFDC();
  v169 = v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  v174 = v28;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C440CC74();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v158 - v31;
  v183 = MEMORY[0x1E69E7CD0];
  v166 = v3;
  sub_1C4EFF388();
  v33 = 0;
  sub_1C443F668();
  v172 = v34;
  sub_1C43FD030();
  v38 = v37 & v36;
  v40 = (v39 + 63) >> 6;
  v175 = v19 + 16;
  v176 = v19;
  v179 = (v19 + 32);
  v177 = (v19 + 8);
  v170 = v32;
  v171 = v0;
  v173 = v35;
  if ((v37 & v36) == 0)
  {
LABEL_3:
    while (1)
    {
      v41 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v41 >= v40)
      {
        sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
        sub_1C43FCF64();
        sub_1C440BAA8(v62, v63, v64, v65);
        v38 = 0;
        goto LABEL_8;
      }

      v38 = *(v35 + 8 * v41);
      ++v33;
      if (v38)
      {
        v33 = v41;
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_67;
  }

  while (1)
  {
    v41 = v33;
LABEL_7:
    v42 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    v43 = v42 | (v41 << 6);
    v44 = v172;
    v45 = v176;
    (*(v176 + 16))(v178, *(v172 + 48) + *(v176 + 72) * v43, v180);
    v46 = *(*(v44 + 56) + 8 * v43);
    v47 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
    v48 = *(v47 + 48);
    v0 = v171;
    (*(v45 + 32))();
    *(v0 + v48) = v46;
    sub_1C43FBD94();
    sub_1C440BAA8(v49, v50, v51, v47);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v32 = v170;
LABEL_8:
    sub_1C49328EC(v0, v32, &qword_1EC0BF728, &qword_1C4F412D0);
    v52 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
    sub_1C440175C(v32, 1, v52);
    if (v53)
    {
      break;
    }

    v54 = v178;
    v55 = v180;
    (*v179)(v178, v32, v180);
    v56 = sub_1C4EFF3D8();
    sub_1C44869B4(v181, v56, v57, v57, v58, v59, v60, v61, v158[0], v158[1], v158[2], v159, v160, v161, v162, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177);

    (*v177)(v54, v55);
    v35 = v173;
    if (!v38)
    {
      goto LABEL_3;
    }
  }

  if (*(v183 + 16))
  {
    v66 = v160;
    sub_1C4F00168();
    v67 = sub_1C4F00968();
    v68 = sub_1C4F01CC8();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v181[0] = v70;
      *v69 = 136315138;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v71 = sub_1C4F01AC8();
      v73 = v72;

      v74 = sub_1C441D828(v71, v73, v181);

      *(v69 + 4) = v74;
      _os_log_impl(&dword_1C43F8000, v67, v68, "searching IDs in no result cache %s", v69, 0xCu);
      sub_1C440962C(v70);
      MEMORY[0x1C6942830](v70, -1, -1);
      MEMORY[0x1C6942830](v69, -1, -1);
    }

    sub_1C43FFB20();
    v75(v66, v162);
    v76 = v168;
    v77 = v169;
    v78 = sub_1C456902C(&qword_1EC0BA1F8, &unk_1C4F54230);
    sub_1C44324B4();
    v170 = sub_1C49328A4(v79, v80, MEMORY[0x1E69A98A8]);
    v171 = v78;
    v181[0] = sub_1C4F00F28();
    MEMORY[0x1EEE9AC00](v181[0]);
    sub_1C441CAAC();
    *(v81 - 16) = v82;
    *(v81 - 8) = v181;
    sub_1C4465390(sub_1C493273C, v83);
    v84 = sub_1C4EFF388();
    v173 = v181[0] + 64;
    sub_1C43FD030();
    v87 = v86 & v85;
    v89 = (v88 + 63) >> 6;
    v161 = v164 + 16;
    v160 = v164 + 8;
    v172 = v90;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v91 = 0;
LABEL_16:
    v92 = v174;
    while (v87)
    {
      v93 = v91;
LABEL_23:
      v94 = __clz(__rbit64(v87));
      v87 &= v87 - 1;
      v95 = v94 | (v93 << 6);
      v96 = v172;
      v97 = v176;
      (*(v176 + 16))(v178, *(v172 + 48) + *(v176 + 72) * v95, v180);
      v98 = *(*(v96 + 56) + 8 * v95);
      v99 = *(v52 + 48);
      v77 = v169;
      (*(v97 + 32))();
      *(v77 + v99) = v98;
      sub_1C43FBD94();
      sub_1C440BAA8(v100, v101, v102, v52);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v76 = v168;
      v92 = v174;
LABEL_24:
      sub_1C49328EC(v77, v92, &qword_1EC0BF728, &qword_1C4F412D0);
      sub_1C440175C(v92, 1, v52);
      if (v53)
      {

        sub_1C4EFF398();
        sub_1C441615C();
        sub_1C4EFF3A8();
        sub_1C4EFF378();

        goto LABEL_65;
      }

      v103 = *(v92 + *(v52 + 48));
      v104 = sub_1C441ECE4();
      v105(v104, v92);
      if (!*(v103 + 16))
      {

        sub_1C445FD88();
        if (v140)
        {
          sub_1C440D060();
          swift_isUniquelyReferenced_nonNull_native();
          sub_1C441C2F4();
          v141 = sub_1C456902C(&qword_1EC0BF738, &unk_1C4F3A690);
          sub_1C43FC490(v141);
          v142 = sub_1C4404FEC();
          v92(v142);

          sub_1C441AEF8();
LABEL_56:
          v143 = v77;
          v77 = v169;
          (v92)(v76, v143);
          goto LABEL_16;
        }

        goto LABEL_62;
      }

      v106 = 0;
      v107 = 1 << *(v103 + 32);
      v108 = (v107 + 63) >> 6;
      v109 = 56;
      if (v108)
      {
        while (1)
        {
          v110 = *(v103 + v109);
          if (v110)
          {
            break;
          }

          v109 += 8;
          v106 -= 64;
          if (!--v108)
          {
            goto LABEL_36;
          }
        }

        v111 = __clz(__rbit64(v110));
        if (v111 - v107 != v106)
        {
          if (-v106 < 0)
          {
            goto LABEL_68;
          }

          v112 = v111 - v106;
          if (v112 >= v107)
          {
            goto LABEL_68;
          }

          if (((*(v103 + v109) >> v111) & 1) == 0)
          {
            goto LABEL_69;
          }

          v92 = v165;
          (*(v164 + 16))(v165, *(v103 + 48) + *(v164 + 72) * v112, v167);
          if (sub_1C4EFED18())
          {

            sub_1C445FD88();
            if (v144)
            {
              sub_1C440D060();
              swift_isUniquelyReferenced_nonNull_native();
              sub_1C441C2F4();
              v145 = sub_1C456902C(&qword_1EC0BF738, &unk_1C4F3A690);
              sub_1C43FC490(v145);
              v146 = sub_1C4404FEC();
              v92(v146);

              sub_1C441AEF8();
              sub_1C441739C();
              v147(v165, v167);
              goto LABEL_56;
            }

            sub_1C441739C();
            v154(v165, v167);
            goto LABEL_62;
          }

          sub_1C441739C();
          v113 = sub_1C440A9B8();
          v114(v113);
        }
      }

LABEL_36:
      v115 = sub_1C4EFF388();
      if (!*(v115 + 16) || (sub_1C457B070(), (v117 & 1) == 0))
      {

LABEL_62:
        v155 = sub_1C441ECE4();
        v156(v155, v180);
        goto LABEL_16;
      }

      v118 = *(*(v115 + 56) + 8 * v116);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      if (*(v103 + 16) <= *(v118 + 16) >> 3)
      {
        v182 = v118;
        sub_1C4A807C0();

        v120 = v182;
      }

      else
      {
        sub_1C4A81DF0();
        v120 = v119;
      }

      if (!*(v120 + 16))
      {

        sub_1C445FD88();
        if (v148)
        {
          sub_1C440D060();
          swift_isUniquelyReferenced_nonNull_native();
          sub_1C441C2F4();
          v149 = sub_1C456902C(&qword_1EC0BF738, &unk_1C4F3A690);
          sub_1C43FC490(v149);
          v84 = v182;
          v150 = sub_1C4460278();
          v152 = *(v151 + 8);
          v152(v150, v180);

          v153 = v180;
          sub_1C4F02478();
          v152(v76, v153);
          goto LABEL_16;
        }

        goto LABEL_62;
      }

      v163 = v120;
      swift_isUniquelyReferenced_nonNull_native();
      v182 = v84;
      sub_1C445FD88();
      sub_1C444FDAC();
      if (__OFADD__(v126, v127))
      {
        goto LABEL_70;
      }

      v128 = v124;
      LODWORD(v162) = v125;
      v129 = sub_1C456902C(&qword_1EC0BF738, &unk_1C4F3A690);
      if (sub_1C43FC490(v129))
      {
        sub_1C457B070();
        v132 = v162;
        if ((v162 & 1) != (v131 & 1))
        {
          goto LABEL_72;
        }

        v128 = v130;
        v92 = v174;
      }

      else
      {
        v92 = v174;
        v132 = v162;
      }

      v84 = v182;
      if (v132)
      {
        *(*(v182 + 56) + 8 * v128) = v163;
      }

      else
      {
        sub_1C4401D38(v182 + 8 * (v128 >> 6));
        v133 = sub_1C4460278();
        (*(v134 + 16))(v133, v76, v180);
        *(*(v84 + 56) + 8 * v128) = v163;
        v135 = *(v84 + 16);
        v136 = __OFADD__(v135, 1);
        v137 = v135 + 1;
        if (v136)
        {
          goto LABEL_71;
        }

        *(v84 + 16) = v137;
      }

      v138 = sub_1C441ECE4();
      v139(v138, v180);
    }

    while (1)
    {
      v93 = v91 + 1;
      if (__OFADD__(v91, 1))
      {
        break;
      }

      if (v93 >= v89)
      {
        sub_1C43FCF64();
        sub_1C440BAA8(v121, v122, v123, v52);
        v87 = 0;
        goto LABEL_24;
      }

      v87 = *(v173 + 8 * v93);
      ++v91;
      if (v87)
      {
        v91 = v93;
        goto LABEL_23;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

  sub_1C4EFF3B8();
  sub_1C43FBCE0();
  (*(v157 + 16))(v159, v166);
LABEL_65:

  sub_1C43FE9F0();
}

void sub_1C492EBB0()
{
  sub_1C43FBD3C();
  v2 = v1;
  v3 = sub_1C4EFF0C8();
  sub_1C43FCDF8();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FD230();
  sub_1C43FCE30(v8);
  v9 = sub_1C456902C(&qword_1EC0BF740, &qword_1C4F3A6A0);
  v10 = sub_1C43FBD18(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FC4B0();
  v12 = sub_1C4EFF428();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD230();
  sub_1C43FD2C8(v17);
  v18 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v158 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBFDC();
  v152 = v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  v148 = v27;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD230();
  v157 = v32;
  v33 = sub_1C43FBE44();
  v160 = type metadata accessor for LiveGlobalKnowledgeTriple(v33);
  sub_1C43FCDF8();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBFDC();
  v149 = v37;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD230();
  v159 = v40;
  sub_1C456902C(&qword_1EC0BA1F8, &unk_1C4F54230);
  sub_1C49328A4(&qword_1EDDFE820, MEMORY[0x1E69A9810], MEMORY[0x1E69A9820]);
  v154 = sub_1C4F00F28();
  sub_1C44324B4();
  sub_1C49328A4(v41, v42, MEMORY[0x1E69A98A8]);
  v146 = v3;
  v147 = v12;
  v43 = sub_1C4F00F28();
  v44 = *(v2 + 16);
  if (v44)
  {
    v144 = v43;
    v139 = v0;
    v153 = 0;
    v150 = v44 - 1;
    v156 = v2 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v161 = (v158 + 8);
    v137 = v14 + 16;
    v136 = v5 + 32;
    v135 = v5 + 40;
    v45 = -1;
    v46 = v159;
    v151 = v35;
    v155 = *(v2 + 16);
    while (1)
    {
      v47 = v45 + 1;
      if (v45 + 1 >= v44)
      {
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
        while (1)
        {
LABEL_100:
          sub_1C4F029F8();
          __break(1u);
        }
      }

      v48 = v46;
      v49 = *(v35 + 72);
      sub_1C4932758(v156 + v49 * v47, v48);
      v50 = *(v160 + 20);
      sub_1C4EFE308();
      sub_1C49328A4(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
      sub_1C43FE99C();
      sub_1C4F01578();
      sub_1C43FE99C();
      sub_1C4F01578();
      v51 = sub_1C4425C2C();
      v54 = v54 && v12 == v157;
      v55 = v54 ? 1 : sub_1C4414BBC(v51, v52, v53);
      v56 = *v161;
      (*v161)(v157, v18);

      if ((v55 & 1) == 0)
      {
        break;
      }

      sub_1C442EBAC();
      sub_1C441B388();
      sub_1C4EFE658();
      sub_1C43FE99C();
      sub_1C4F01578();
      sub_1C43FE99C();
      sub_1C4F01578();
      v57 = sub_1C4425C2C();
      if (v54 && v12 == v55)
      {
        v74 = sub_1C43FD924();
        (v56)(v74);
      }

      else
      {
        v61 = sub_1C4414BBC(v57, v58, v59);
        v62 = sub_1C43FD924();
        (v56)(v62);

        if ((v61 & 1) == 0)
        {
          break;
        }
      }

      v47 = v45 + 2;
      if (__OFADD__(v45, 2))
      {
        goto LABEL_94;
      }

      if (v47 >= v155)
      {
        goto LABEL_95;
      }

      sub_1C4932758(v156 + v49 * v47, v145);
      sub_1C441B388();
      sub_1C4EFE308();
      sub_1C43FE99C();
      sub_1C4F01578();
      sub_1C43FE99C();
      sub_1C4F01578();
      v75 = sub_1C4425C2C();
      if (v54 && v12 == v55)
      {
        v84 = sub_1C43FD924();
        (v56)(v84);

        v46 = v159;
      }

      else
      {
        v79 = sub_1C4414BBC(v75, v76, v77);
        v80 = sub_1C43FD924();
        (v56)(v80);

        v46 = v159;
        if ((v79 & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      sub_1C442EBAC();
      sub_1C4EFE558();
      sub_1C43FE99C();
      sub_1C4F01578();
      sub_1C43FE99C();
      sub_1C4F01578();
      if (v164 == v162 && v165 == v163)
      {
        v103 = sub_1C43FD924();
        (v56)(v103);
      }

      else
      {
        v86 = sub_1C4F02938();
        v87 = sub_1C43FD924();
        (v56)(v87);

        if ((v86 & 1) == 0)
        {
LABEL_53:
          v88 = v145;
LABEL_61:
          sub_1C49327BC(v88);
LABEL_62:
          sub_1C4402C08();
          v46 = v159;
          v91(v152, v159 + v50, v18);
          sub_1C44239FC(v153, 0);
          swift_isUniquelyReferenced_nonNull_native();
          v164 = v154;
          sub_1C44E3664();
          v94 = *(v154 + 16);
          v95 = (v93 & 1) == 0;
          v96 = v94 + v95;
          if (__OFADD__(v94, v95))
          {
            goto LABEL_93;
          }

          v97 = v92;
          v12 = v93;
          v98 = sub_1C456902C(&qword_1EC0BA200, &qword_1C4F13B78);
          if (sub_1C4434144(v98))
          {
            sub_1C44E3664();
            if ((v12 & 1) != (v100 & 1))
            {
              goto LABEL_100;
            }

            v97 = v99;
          }

          if ((v12 & 1) == 0)
          {
            sub_1C441739C();
            v101 = sub_1C4436574();
            v102(v101);
            sub_1C457EB2C(v97, v96, MEMORY[0x1E69E7CD0], v154);
          }

          sub_1C44CB508();
          sub_1C44334AC();
          v56();
          sub_1C49327BC(v159);
          v153 = sub_1C4932D00;
          goto LABEL_89;
        }
      }

      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFF3F8();
      sub_1C440175C(v139, 1, v147);
      if (!v54)
      {
        sub_1C4402C08();
        v105(v142, v139, v147);
        sub_1C441739C();
        v106(v141, v46, v146);
        swift_isUniquelyReferenced_nonNull_native();
        v164 = v144;
        sub_1C457B070();
        if (__OFADD__(*(v144 + 16), (v108 & 1) == 0))
        {
          goto LABEL_98;
        }

        v109 = v107;
        v12 = v108;
        v110 = sub_1C456902C(&qword_1EC0BA920, &unk_1C4F3A6B0);
        if (sub_1C4434144(v110))
        {
          sub_1C457B070();
          v113 = v145;
          if ((v12 & 1) != (v112 & 1))
          {
            goto LABEL_100;
          }

          v109 = v111;
        }

        else
        {
          v113 = v145;
        }

        if (v12)
        {
          v125 = sub_1C443F228();
          (*(v126 + 40))(v125, v141, v146);
        }

        else
        {
          sub_1C4401D38(v144 + 8 * (v109 >> 6));
          (*(v127 + 16))(*(v144 + 48) + *(v127 + 72) * v109);
          v128 = sub_1C443F228();
          (*(v129 + 32))(v128, v141, v146);
          v130 = *(v144 + 16);
          v131 = __OFADD__(v130, 1);
          v132 = v130 + 1;
          if (v131)
          {
            goto LABEL_99;
          }

          *(v144 + 16) = v132;
        }

        sub_1C4402C08();
        v133(v142, v147);
        v124 = v113;
        goto LABEL_88;
      }

      sub_1C49327BC(v145);
      sub_1C49327BC(v46);
      v104 = v139;
LABEL_77:
      sub_1C4420C3C(v104, &qword_1EC0BF740, &qword_1C4F3A6A0);
LABEL_89:
      v45 = v47;
      v35 = v151;
      v44 = v155;
      if (v47 >= v150)
      {
        sub_1C44239FC(v153, 0);
        goto LABEL_91;
      }
    }

    sub_1C4EFE308();
    sub_1C43FE99C();
    sub_1C4F01578();
    sub_1C43FE99C();
    sub_1C4F01578();
    v63 = sub_1C4425C2C();
    if (v54 && v12 == v148)
    {
      sub_1C44334AC();
      v56();
    }

    else
    {
      v67 = sub_1C4414BBC(v63, v64, v65);
      sub_1C44334AC();
      v56();

      if ((v67 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    sub_1C442EBAC();
    sub_1C441B388();
    sub_1C4EFE558();
    sub_1C43FE99C();
    sub_1C4F01578();
    sub_1C43FE99C();
    sub_1C4F01578();
    v68 = sub_1C4425C2C();
    if (v54 && v12 == v55)
    {
      v81 = sub_1C43FD924();
      (v56)(v81);
    }

    else
    {
      v72 = sub_1C4414BBC(v68, v69, v70);
      v73 = sub_1C43FD924();
      (v56)(v73);

      if ((v72 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    v47 = v45 + 2;
    if (__OFADD__(v45, 2))
    {
      goto LABEL_96;
    }

    if (v47 >= v155)
    {
      goto LABEL_97;
    }

    sub_1C4932758(v156 + v49 * v47, v149);
    v12 = v143;
    sub_1C4EFE308();
    sub_1C43FE99C();
    sub_1C4F01578();
    sub_1C43FE99C();
    sub_1C4F01578();
    if (v164 == v162 && v165 == v163)
    {

      sub_1C44334AC();
      v56();
      v46 = v159;
    }

    else
    {
      v83 = sub_1C4F02938();

      sub_1C44334AC();
      v56();
      v46 = v159;
      if ((v83 & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    sub_1C442EBAC();
    sub_1C4EFE658();
    sub_1C43FE99C();
    sub_1C4F01578();
    sub_1C43FE99C();
    sub_1C4F01578();
    if (v164 == v162 && v165 == v163)
    {

      sub_1C44334AC();
      v56();
    }

    else
    {
      v90 = sub_1C4F02938();

      sub_1C44334AC();
      v56();
      if ((v90 & 1) == 0)
      {
LABEL_60:
        v88 = v149;
        goto LABEL_61;
      }
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFF3F8();
    sub_1C440175C(v140, 1, v147);
    if (!v54)
    {
      sub_1C4402C08();
      v114(v138, v140, v147);
      sub_1C441739C();
      v115 = sub_1C4436574();
      v116(v115);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v164 = v144;
      sub_1C4661148(v140, v138, isUniquelyReferenced_nonNull_native, v118, v119, v120, v121, v122, v134, v135, v136, v137);
      sub_1C4402C08();
      v123(v138, v147);
      v124 = v149;
LABEL_88:
      sub_1C49327BC(v124);
      sub_1C49327BC(v46);
      goto LABEL_89;
    }

    sub_1C49327BC(v149);
    sub_1C49327BC(v46);
    v104 = v140;
    goto LABEL_77;
  }

LABEL_91:
  sub_1C43FE9F0();
}

void sub_1C492FB2C()
{
  sub_1C43FBD3C();
  v219 = v0;
  v248 = sub_1C456902C(&qword_1EC0BF768, &qword_1C4F3A6C8);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FCE30(v217 - v2);
  v3 = sub_1C456902C(&qword_1EC0BF770, &qword_1C4F3A6D0);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FD230();
  sub_1C43FCE30(v6);
  v7 = sub_1C456902C(&qword_1EC0BF778, &qword_1C4F3A6D8);
  sub_1C43FBD18(v7);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD2C8(v217 - v9);
  v235 = sub_1C4EFDDE8();
  sub_1C43FCDF8();
  v228 = v10;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD2D8();
  sub_1C43FD2C8(v12);
  v226 = sub_1C4EFDE88();
  sub_1C43FCDF8();
  v227 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FD230();
  sub_1C43FD2C8(v19);
  v249 = sub_1C4EFDE68();
  sub_1C43FCDF8();
  v236 = v20;
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FD230();
  sub_1C43FD2C8(v31);
  v260 = sub_1C4EFF448();
  sub_1C43FCDF8();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FD2D8();
  v259 = v35;
  sub_1C43FBE44();
  v36 = sub_1C4EFF428();
  sub_1C43FCDF8();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBFDC();
  v266 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FD230();
  sub_1C43FCE30(v42);
  v43 = sub_1C456902C(&qword_1EC0BF728, &qword_1C4F412D0);
  v44 = sub_1C43FBD18(v43);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBD08();
  v47 = v45 - v46;
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FD230();
  v261 = v49;
  v50 = sub_1C4F00F28();
  sub_1C4EFF388();
  v51 = 0;
  sub_1C443F668();
  v253 = v52;
  sub_1C43FD030();
  v56 = v55 & v54;
  v245 = (v57 + 63) >> 6;
  v250 = (v38 + 16);
  v262 = v38 + 32;
  v256 = (v33 + 8);
  v252 = v38;
  v255 = v38 + 8;
  v257 = v53;
  v258 = v36;
  *&v263 = v47;
  if ((v55 & v54) == 0)
  {
LABEL_3:
    v60 = v261;
    while (1)
    {
      v59 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v59 >= v245)
      {
        sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
        sub_1C43FCF64();
        sub_1C440BAA8(v95, v96, v97, v98);
        v56 = 0;
        goto LABEL_9;
      }

      v56 = *(v53 + v59);
      ++v51;
      if (v56)
      {
        v58 = v36;
        v265 = v50;
        v51 = v59;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    return;
  }

  while (1)
  {
    v58 = v36;
    v265 = v50;
    v59 = v51;
LABEL_8:
    v61 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    v62 = v61 | (v59 << 6);
    v63 = v253;
    v64 = v252;
    v65 = v251;
    (*(v252 + 16))(v251, *(v253 + 48) + *(v252 + 72) * v62, v58);
    v33 = *(*(v63 + 56) + 8 * v62);
    v66 = sub_1C456902C(&qword_1EC0BF730, &unk_1C4F3A680);
    v67 = *(v66 + 48);
    v68 = *(v64 + 32);
    v36 = v58;
    v47 = v263;
    v68(v263, v65, v36);
    *(v47 + v67) = v33;
    sub_1C43FBD94();
    sub_1C440BAA8(v69, v70, v71, v66);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v60 = v261;
    v50 = v265;
LABEL_9:
    sub_1C49328EC(v47, v60, &qword_1EC0BF728, &qword_1C4F412D0);
    v72 = sub_1C43FE99C();
    sub_1C456902C(v72, v73);
    v74 = sub_1C440D060();
    sub_1C440175C(v74, 1, v33);
    if (v75)
    {
      break;
    }

    v265 = *(v60 + *(v33 + 48));
    (*v262)(v266, v60, v36);
    v76 = v259;
    sub_1C4EFF418();
    v77 = sub_1C4EFF438();
    v79 = v78;
    sub_1C4402C08();
    v80(v76, v260);
    if (*(v50 + 16) && (v81 = sub_1C445FAA8(v77, v79), (v82 & 1) != 0))
    {
      v83 = v50;
      v84 = (*(v50 + 56) + 32 * v81);
      v264 = *v84;
      v85 = v84[2];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    }

    else
    {
      v83 = v50;
      sub_1C4931554();
      v85 = MEMORY[0x1E69E7CD0];
      v264 = v77;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v267[2] = v85;
    v86 = v266;
    v87 = sub_1C4EFF408();
    sub_1C44869B4(v267, v87, v88, v88, v89, v90, v91, v92, v217[0], v217[1], v218, v219, v220, *(&v220 + 1), v221, v222, v223, i, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236);

    sub_1C465EB08();
    v33 = v93;
    swift_isUniquelyReferenced_nonNull_native();
    v267[0] = v83;
    sub_1C4660FFC();

    sub_1C4402C08();
    v36 = v258;
    v94(v86, v258);
    v50 = v267[0];
    v47 = v263;
    v53 = v257;
    if (!v56)
    {
      goto LABEL_3;
    }
  }

  if (*(v50 + 16))
  {
    v99 = v50 + 64;
    sub_1C43FD030();
    v102 = v101 & v100;
    v104 = (v103 + 63) >> 6;
    LODWORD(v260) = *MEMORY[0x1E69A95C0];
    v258 = (v227 + 8);
    v259 = (v227 + 104);
    HIDWORD(v223) = *MEMORY[0x1E69A9568];
    v222 = v228 + 104;
    v105 = v236;
    v264 = (v236 + 16);
    v221 = v228 + 8;
    v265 = v50;
    v266 = (v236 + 8);
    v261 = (v236 + 32);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v106 = 0;
    v107 = MEMORY[0x1E69E7CC0];
    v263 = xmmword_1C4F0D130;
    v220 = xmmword_1C4F0CE60;
    v108 = v244;
    v225 = v99;
    for (i = v104; ; v104 = i)
    {
      v262 = v107;
      if (!v102)
      {
        break;
      }

LABEL_24:
      v251 = v102;
      v110 = (*(v265 + 56) + ((v106 << 11) | (32 * __clz(__rbit64(v102)))));
      v112 = *v110;
      v111 = v110[1];
      v113 = v110[3];
      v253 = v110[2];
      v255 = v113;
      v114 = sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
      v115 = *(sub_1C4EFEEF8() - 8);
      v116 = *(v115 + 80);
      v117 = (v116 + 32) & ~v116;
      v250 = *(v115 + 72);
      v245 = v116;
      v252 = v114;
      v118 = swift_allocObject();
      sub_1C440BD90(v118);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EFE308();
      sub_1C4D504A4();
      v257 = v119;
      sub_1C456902C(&qword_1EC0B9980, &unk_1C4F0E980);
      inited = swift_initStackObject();
      *(inited + 16) = v263;
      *(inited + 32) = v112;
      *(inited + 40) = v111;
      sub_1C448DE08();
      v227 = v121;
      v228 = v117;
      *(swift_allocObject() + 16) = v263;
      sub_1C4EFE658();
      sub_1C4D504A4();
      v122 = *v259;
      v123 = v243;
      v124 = v226;
      (*v259)(v243, v260, v226);
      v125 = v232;
      sub_1C4422368();
      v122();
      v126 = v233;
      sub_1C4422368();
      v122();
      v127 = v122;
      v128 = v240;
      sub_1C4422368();
      v127();
      v256 = v127;
      v129 = v241;
      sub_1C4422368();
      v130();
      sub_1C4EFDE58();

      v131 = *v258;
      v257 = v131;
      v131(v129, v124);
      v131(v128, v124);
      v131(v126, v124);
      v132 = v125;
      v131(v125, v124);
      v131(v123, v124);
      v133 = swift_allocObject();
      sub_1C440BD90(v133);
      sub_1C4EFE558();
      sub_1C4D504A4();
      sub_1C4413074();
      v134 = v256;
      v256();
      sub_1C4413074();
      v134();
      sub_1C4413074();
      v134();
      v135 = v240;
      sub_1C4413074();
      v134();
      v136 = v241;
      sub_1C4413074();
      v134();
      v137 = v243;
      v138 = v126;
      v139 = v135;
      sub_1C4EFDE58();

      v140 = v257;
      v257(v136, v124);
      v140(v139, v124);
      v140(v138, v124);
      v140(v132, v124);
      v140(v137, v124);
      sub_1C4402C08();
      v141(v234, HIDWORD(v223), v235);
      v252 = sub_1C456902C(&qword_1EC0BF780, qword_1C4F3A6E0);
      v142 = v236;
      v143 = *(v236 + 72);
      v144 = (*(v236 + 80) + 32) & ~*(v236 + 80);
      v145 = swift_allocObject();
      *(v145 + 16) = v220;
      v146 = v145 + v144;
      v147 = *(v142 + 16);
      v148 = v249;
      v147(v145 + v144, v238, v249);
      v147(v146 + v143, v239, v148);
      v250 = v147;
      v149 = v229;
      v150 = v234;
      sub_1C4EFDE48();

      sub_1C4402C08();
      v151(v150, v235);
      v253 = v143;
      v152 = swift_allocObject();
      v153 = sub_1C440BD90(v152);
      v252 = v144;
      (v147)(v154 + v144, v149, v249, v153);
      sub_1C445E85C();
      v155 = v256;
      v256();
      v156 = v232;
      sub_1C445E85C();
      v155();
      v157 = v233;
      sub_1C445E85C();
      v155();
      v158 = v240;
      sub_1C445E85C();
      v155();
      v159 = v241;
      sub_1C445E85C();
      v160();
      v161 = v230;
      sub_1C4EFDE58();

      v162 = v257;
      v257(v159, v124);
      v162(v158, v124);
      v162(v157, v124);
      v162(v156, v124);
      v162(v243, v124);
      v250(v231, v161, v249);
      v107 = v262;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v169 = sub_1C43FCEC0();
        sub_1C458BB08(v169, v170, v171, v107);
        v107 = v172;
      }

      v164 = *(v107 + 16);
      v163 = *(v107 + 24);
      v108 = v244;
      v105 = v236;
      v165 = v251;
      if (v164 >= v163 >> 1)
      {
        sub_1C458BB08(v163 > 1, v164 + 1, 1, v107);
        v107 = v173;
      }

      v102 = (v165 - 1) & v165;
      v166 = *v266;
      v167 = v249;
      (*v266)(v230, v249);
      v166(v229, v167);
      v166(v239, v167);
      v166(v238, v167);
      *(v107 + 16) = v164 + 1;
      sub_1C441B9F4();
      v168();
      v99 = v225;
    }

    while (1)
    {
      v109 = v106 + 1;
      if (__OFADD__(v106, 1))
      {
        goto LABEL_49;
      }

      if (v109 >= v104)
      {

        v174 = *(v107 + 16);
        v175 = v249;
        v176 = v264;
        if (v174 == 1)
        {
          sub_1C441615C();
          sub_1C4868258(v107, v177);
          sub_1C440175C(1, 1, v175);
          if (!v75)
          {
            sub_1C441B9F4();
            v211 = v217[0];
            v212(v217[0], 1, v175);
            (*v176)(v108, v211, v175);
            sub_1C441615C();
            sub_1C4EFDEA8();
            (*v266)(v211, v175);
            sub_1C4EFDE98();
            sub_1C43FBD94();
            sub_1C440BAA8(v213, v214, v215, v216);

            goto LABEL_47;
          }

          sub_1C4420C3C(1, &qword_1EC0BF778, &qword_1C4F3A6D8);
          v174 = *(v107 + 16);
        }

        if (!v174)
        {
          goto LABEL_52;
        }

        v178 = v107 + ((*(v105 + 80) + 32) & ~*(v105 + 80));
        v179 = *(v105 + 16);
        v179(v108, v178, v175);
        if (v174 == 1)
        {
          goto LABEL_53;
        }

        v259 = *(v105 + 72);
        v260 = v178;
        v180 = v218;
        *&v263 = v179;
        v179(v218, v259 + v178, v175);
        sub_1C4EFDE08();
        v181 = v107;
        v182 = *(v105 + 8);
        v182(v180, v175);
        v183 = sub_1C4409D98();
        (v182)(v183);
        v184 = 0;
        v185 = *(v181 + 16);
        v186 = v261;
        while (1)
        {
          v187 = v254;
          if (v184 == v185)
          {
            v188 = 1;
            v184 = v185;
            v189 = v248;
          }

          else
          {
            v189 = v248;
            if ((v184 & 0x8000000000000000) != 0)
            {
              goto LABEL_50;
            }

            if (v184 >= *(v262 + 16))
            {
              goto LABEL_51;
            }

            v190 = v260 + v184 * v259;
            v191 = *(v248 + 48);
            v192 = v237;
            *v237 = v184;
            (v263)(v192 + v191, v190, v175);
            sub_1C49328EC(v192, v254, &qword_1EC0BF768, &qword_1C4F3A6C8);
            v187 = v254;
            v188 = 0;
            ++v184;
          }

          v193 = v187;
          sub_1C440BAA8(v187, v188, 1, v189);
          v194 = v247;
          sub_1C49328EC(v193, v247, &qword_1EC0BF770, &qword_1C4F3A6D0);
          sub_1C440175C(v194, 1, v189);
          if (v75)
          {
            break;
          }

          v195 = *v194;
          v196 = *v186;
          v197 = v194 + *(v189 + 48);
          v198 = v246;
          v175 = v249;
          (*v186)(v246, v197, v249);
          if (v195 >= 2)
          {
            sub_1C441B388();
            v199 = v242;
            sub_1C4EFDE08();
            v182(v198, v175);
            v182(v199, v175);
            v200 = v199;
            v186 = v261;
            v196(v200, v198, v175);
          }

          else
          {
            v182(v198, v175);
          }
        }

        v201 = v242;
        v202 = v249;
        (v263)(v244, v242, v249);
        sub_1C441615C();
        sub_1C4EFDEA8();
        v182(v201, v202);
        sub_1C4EFDE98();
        sub_1C43FBD94();
        sub_1C440BAA8(v203, v204, v205, v206);

        goto LABEL_47;
      }

      v102 = *(v99 + 8 * v109);
      ++v106;
      if (v102)
      {
        v106 = v109;
        goto LABEL_24;
      }
    }
  }

  sub_1C4EFDE98();
  sub_1C43FCF64();
  sub_1C440BAA8(v207, v208, v209, v210);
LABEL_47:

  sub_1C43FE9F0();
}

uint64_t sub_1C4931204(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0BF758, &qword_1C4F3A6C0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  (*(v7 + 16))(v13 - v9, a3, v6, v8);
  sub_1C4401CBC(&qword_1EC0BF760, &qword_1EC0BF758, &qword_1C4F3A6C0, MEMORY[0x1E699FF60]);
  sub_1C49328A4(&qword_1EC0C0820, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);
  v11 = sub_1C4EFAFE8();
  result = (*(v7 + 8))(v10, v6);
  if (!v3)
  {
    *a2 = v11;
  }

  return result;
}

uint64_t sub_1C49313AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C456902C(&qword_1EC0BF758, &qword_1C4F3A6C0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  (*(v6 + 16))(v12 - v8, a3, v5, v7);
  sub_1C4401CBC(&qword_1EC0BF760, &qword_1EC0BF758, &qword_1C4F3A6C0, MEMORY[0x1E699FF60]);
  sub_1C49328A4(&qword_1EC0C0820, type metadata accessor for LiveGlobalKnowledgeTriple, &protocol conformance descriptor for LiveGlobalKnowledgeTriple);
  v10 = sub_1C4EFAFE8();
  result = (*(v6 + 8))(v9, v5);
  if (!v3)
  {
    return sub_1C49D3B70(v10);
  }

  return result;
}

void sub_1C4931554()
{
  sub_1C456902C(&unk_1EC0BE460, &qword_1C4F13B70);
  sub_1C4EFEEF8();
  *(swift_allocObject() + 16) = xmmword_1C4F0C890;
  sub_1C4EFE308();
  sub_1C4EFEBF8();
  sub_1C4EFEBB8();

  sub_1C4D504A4();
}

uint64_t sub_1C4931638(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v58 = a3;
  v67 = a1;
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = v49 - v5;
  v66 = sub_1C4EFEEF8();
  v59 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = v49 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v63 = v49 - v10;
  v11 = sub_1C456902C(&qword_1EC0BF740, &qword_1C4F3A6A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v49 - v12;
  v57 = sub_1C4EFF428();
  v51 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v69 = v49 - v16;
  v17 = sub_1C456902C(&qword_1EC0BF748, &qword_1C4F3A6A8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v49 - v19;
  swift_beginAccess();
  v71[7] = *a2;
  v70[3] = sub_1C4EFBD38();
  v70[4] = MEMORY[0x1E69A0050];
  sub_1C4422F90(v70);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD48();
  v71[3] = sub_1C4EFB298();
  v71[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v71);
  sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
  sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50, MEMORY[0x1E69E6508]);
  sub_1C4F01458();

  sub_1C440962C(v70);
  sub_1C4835EB4();
  sub_1C4EFAE28();
  sub_1C440962C(v71);
  sub_1C4401CBC(&qword_1EC0BF750, &qword_1EC0BF748, &qword_1C4F3A6A8, MEMORY[0x1E699FF60]);
  sub_1C4835F08();
  v21 = v68;
  v22 = sub_1C4EFAFE8();
  result = (*(v18 + 8))(v20, v17);
  if (!v21)
  {
    v49[1] = 0;
    v68 = *(v22 + 16);
    if (v68)
    {
      v62 = 0;
      v24 = 0;
      v61 = (v51 + 32);
      v54 = (v59 + 4);
      v53 = (v59 + 2);
      v50 = (v51 + 16);
      v52 = v59 + 1;
      v59 = (v51 + 8);
      v25 = (v22 + 56);
      v26 = v58;
      v27 = v57;
      v60 = v13;
      v67 = v22;
      while (v24 < *(v22 + 16))
      {
        v28 = *(v25 - 1);
        v29 = *v25;
        swift_bridgeObjectRetain_n();
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EFF3C8();
        if (sub_1C44157D4(v13, 1, v27) == 1)
        {

          sub_1C4420C3C(v13, &qword_1EC0BF740, &qword_1C4F3A6A0);
        }

        else
        {
          v30 = v13;
          v31 = v69;
          (*v61)(v69, v30, v27);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v32 = v65;
          MEMORY[0x1C693D840](v28, v29);

          v33 = v66;
          if (sub_1C44157D4(v32, 1, v66) == 1)
          {
            (*v59)(v31, v27);
            sub_1C4420C3C(v32, &qword_1EC0B9A08, &unk_1C4F107B0);
            v13 = v60;
          }

          else
          {
            v34 = v63;
            (*v54)(v63, v32, v33);
            (*v53)(v64, v34, v33);
            sub_1C44239FC(v62, 0);
            swift_isUniquelyReferenced_nonNull_native();
            v71[0] = *v26;
            v35 = v71[0];
            *v26 = 0x8000000000000000;
            sub_1C457B070();
            if (__OFADD__(*(v35 + 16), (v37 & 1) == 0))
            {
              goto LABEL_23;
            }

            v38 = v36;
            v39 = v37;
            sub_1C456902C(&qword_1EC0BF738, &unk_1C4F3A690);
            v40 = sub_1C4F02458();
            v41 = v71[0];
            if (v40)
            {
              sub_1C457B070();
              v26 = v58;
              v44 = v55;
              v27 = v57;
              v13 = v60;
              if ((v39 & 1) != (v43 & 1))
              {
                goto LABEL_24;
              }

              v38 = v42;
            }

            else
            {
              v26 = v58;
              v44 = v55;
              v27 = v57;
              v13 = v60;
            }

            *v26 = v41;

            v45 = *v26;
            if ((v39 & 1) == 0)
            {
              (*v50)(v44, v69, v27);
              sub_1C457DFE0(v38, v44, MEMORY[0x1E69E7CD0], v45);
            }

            v46 = v56;
            sub_1C44CB508();
            v47 = *v52;
            v48 = v66;
            (*v52)(v46, v66);
            v47(v63, v48);
            (*v59)(v69, v27);
            v62 = sub_1C4932D00;
          }
        }

        ++v24;
        v25 += 5;
        v22 = v67;
        if (v68 == v24)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      result = sub_1C4F029F8();
      __break(1u);
    }

    else
    {
      v62 = 0;
LABEL_20:

      return sub_1C44239FC(v62, 0);
    }
  }

  return result;
}

uint64_t sub_1C4931ED0()
{
  v0 = sub_1C4EFBD38();
  sub_1C44F9918(v0, qword_1EDE2CBD0);
  sub_1C442B738(v0, qword_1EDE2CBD0);
  sub_1C4932A74();
  return sub_1C4EFBD58();
}

uint64_t sub_1C4931F48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265747865 && a2 == 0xEA00000000006449;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x73656D69546C7474 && a2 == 0xEC000000706D6174)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C4F02938();

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

uint64_t sub_1C493206C(char a1)
{
  if (!a1)
  {
    return 0x6C616E7265747865;
  }

  if (a1 == 1)
  {
    return 0x7461636964657270;
  }

  return 0x73656D69546C7474;
}

uint64_t sub_1C49320D4(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0BF7A8, &qword_1C4F3A948);
  sub_1C43FCDF8();
  v5 = v4;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  sub_1C4409678(a1, a1[3]);
  sub_1C4932A74();
  sub_1C4F02BF8();
  v10[15] = 0;
  sub_1C4F02798();
  if (!v1)
  {
    v10[14] = 1;
    sub_1C4F02798();
    v10[13] = 2;
    sub_1C4F027F8();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1C4932250@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0BF7A0, &qword_1C4F3A940);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C4932A74();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v6 = sub_1C4F02678();
  v15 = v7;
  v13 = sub_1C4F02678();
  v14 = v8;
  v9 = sub_1C4F026D8();
  v10 = sub_1C43FD6E4();
  v11(v10);
  result = sub_1C440962C(a1);
  *a2 = v6;
  a2[1] = v15;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v9;
  return result;
}

uint64_t sub_1C4932470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4931F48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4932498(uint64_t a1)
{
  v2 = sub_1C4932A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C49324D4(uint64_t a1)
{
  v2 = sub_1C4932A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4932510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4932A20();

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

double sub_1C4932590@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C4932250(a1, v6);
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

uint64_t sub_1C49325F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C4835F78();

  return sub_1C4EFB6D8();
}

uint64_t sub_1C49326E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C4932AC8();

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C4932758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49327BC(uint64_t a1)
{
  v2 = type metadata accessor for LiveGlobalKnowledgeTriple(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C4932818()
{
  result = qword_1EDDDE9A0;
  if (!qword_1EDDDE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE9A0);
  }

  return result;
}

uint64_t sub_1C49328A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C49328EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1C456902C(a3, a4);
  sub_1C43FBCE0();
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_1C4932970()
{
  result = qword_1EC0BF788;
  if (!qword_1EC0BF788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF788);
  }

  return result;
}

unint64_t sub_1C49329CC()
{
  result = qword_1EC0BF790;
  if (!qword_1EC0BF790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF790);
  }

  return result;
}

unint64_t sub_1C4932A20()
{
  result = qword_1EC0BF798;
  if (!qword_1EC0BF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF798);
  }

  return result;
}

unint64_t sub_1C4932A74()
{
  result = qword_1EDDE2AD0;
  if (!qword_1EDDE2AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2AD0);
  }

  return result;
}

unint64_t sub_1C4932AC8()
{
  result = qword_1EC0BF7B0;
  if (!qword_1EC0BF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF7B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IDSearchNoResultRecord.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4932BFC()
{
  result = qword_1EC0BF7B8;
  if (!qword_1EC0BF7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF7B8);
  }

  return result;
}

unint64_t sub_1C4932C54()
{
  result = qword_1EDDE2AC0;
  if (!qword_1EDDE2AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2AC0);
  }

  return result;
}

unint64_t sub_1C4932CAC()
{
  result = qword_1EDDE2AC8;
  if (!qword_1EDDE2AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE2AC8);
  }

  return result;
}

uint64_t static InferenceClient.withExpandedDefinitionList()()
{
  sub_1C4EFEF98();
  result = static InferenceServer.withExpandedDefinitionList()();
  if (!v0)
  {
    sub_1C4407110();
    sub_1C43FD6F4();
    return sub_1C4EFEF28();
  }

  return result;
}

uint64_t static InferenceClient.withExpandedDefinitionList(serverParameters:)()
{
  sub_1C4EFEF98();
  v1 = sub_1C43FD6F4();
  result = static InferenceServer.withExpandedDefinitionList(parameters:)(v1);
  if (!v0)
  {
    sub_1C4407110();
    sub_1C43FD6F4();
    return sub_1C4EFEF28();
  }

  return result;
}

uint64_t static InferenceServer.withExpandedDefinitionList()()
{
  v0 = sub_1C4EFFB08();
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1C4EFEF98();
  sub_1C4EFEF88();
  sub_1C4932E5C();
  return sub_1C4EFEF78();
}

unint64_t sub_1C4932E5C()
{
  result = qword_1EC0BF7C0;
  if (!qword_1EC0BF7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF7C0);
  }

  return result;
}

uint64_t static InferenceServer.withExpandedDefinitionList(parameters:)(uint64_t a1)
{
  v2 = sub_1C4EFFB08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFEF98();
  (*(v3 + 16))(v5, a1, v2);
  sub_1C4932E5C();
  return sub_1C4EFEF78();
}

uint64_t sub_1C4933004(uint64_t (*a1)(void), void (*a2)(uint64_t))
{
  v3 = a1();
  v5 = MEMORY[0x1E69E7CC0];
  a2(v3);
  return v5;
}

_BYTE *storeEnumTagSinglePayload for InferenceServiceDefinitionExpandedList(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C4933104@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69A9C48];
  v3 = sub_1C4EFFF98();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C4933190()
{
  v1 = sub_1C493359C(&qword_1EDDFD418, &unk_1C4F3AB98);

  return MEMORY[0x1EEE13BE8](v0, v1);
}

uint64_t static InferenceSupportBackendHelper.CreateBackend.withRemoteBackendInProcess(config:)(uint64_t a1)
{
  v2 = type metadata accessor for Configuration(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C44098F0(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1C4409954(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1C44098F0(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  sub_1C4409954(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5);
  type metadata accessor for InferenceSupportRemoteBackendInProcess();
  sub_1C493359C(&qword_1EDDFD418, &unk_1C4F3AB98);
  return sub_1C4EFFCF8();
}

char *sub_1C4933370()
{
  if (qword_1EDDFF2A0 != -1)
  {
    swift_once();
  }

  result = sub_1C44E7FAC();
  if (!v0)
  {
    v2 = *&result[OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService];

    return v2;
  }

  return result;
}

uint64_t sub_1C4933414()
{
  v1 = *(type metadata accessor for Configuration(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_1C4EF98F8();
  sub_1C43FD3F8();
  (*(v5 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

char *sub_1C49334D4()
{
  v0 = type metadata accessor for Configuration(0);
  sub_1C43FBD18(v0);
  return sub_1C4933370();
}

uint64_t sub_1C493359C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InferenceSupportRemoteBackendInProcess();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C49335E0()
{
  v0 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  sub_1C44F9918(v0, qword_1EDE2CCA8);
  v1 = sub_1C442B738(v0, qword_1EDE2CCA8);
  v2 = type metadata accessor for Configuration(0);

  return sub_1C440BAA8(v1, 1, 1, v2);
}

void sub_1C493365C(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - v3;
  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0(&qword_1EDDFA678);
  }

  v5 = sub_1C4F00978();
  sub_1C442B738(v5, qword_1EDE2DCD8);
  v6 = sub_1C4F00968();
  v7 = sub_1C4F01CF8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = sub_1C43FCED0();
    *v8 = 0;
    _os_log_impl(&dword_1C43F8000, v6, v7, "InferenceSupportXPC: starting...", v8, 2u);
    MEMORY[0x1C6942830](v8, -1, -1);
  }

  if (qword_1EDDE50A0 != -1)
  {
    sub_1C4407130(&qword_1EDDE50A0);
  }

  v9 = sub_1C442B738(v2, qword_1EDE2CCA8);
  sub_1C44098F0(a1, v4);
  v10 = type metadata accessor for Configuration(0);
  sub_1C440BAA8(v4, 0, 1, v10);
  swift_beginAccess();
  sub_1C45A6EE0(v4, v9);
  swift_endAccess();
  sub_1C45A6F50();
  v11 = sub_1C4F01138();
  v13 = sub_1C49AA56C(v11, v12);
  v14 = qword_1EDE2CC98;
  qword_1EDE2CC98 = v13;
  v15 = v13;

  if (v15)
  {
    qword_1EDE2CCA0 = [objc_allocWithZone(type metadata accessor for InferenceSupportXPC.Delegate()) init];
    v16 = qword_1EDE2CCA0;
    swift_unknownObjectRelease();
    [v15 setDelegate:v16];

    [v15 resume];
  }

  else
  {
    v15 = sub_1C4F00968();
    v17 = sub_1C4F01CE8();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = sub_1C43FCED0();
      *v18 = 0;
      _os_log_impl(&dword_1C43F8000, v15, v17, "Failed to create InferenceSupportXPC service", v18, 2u);
      sub_1C43FE9D4();
    }
  }
}

id sub_1C4933908(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtCC24IntelligencePlatformCore19InferenceSupportXPC6Server_jsonEncoder;
  sub_1C4EF93D8();
  swift_allocObject();
  *&v2[v6] = sub_1C4EF93C8();
  *&v2[OBJC_IVAR____TtCC24IntelligencePlatformCore19InferenceSupportXPC6Server_assetRegistryXPCBaseServer] = a1;
  *&v2[OBJC_IVAR____TtCC24IntelligencePlatformCore19InferenceSupportXPC6Server_jsonDecoder] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void sub_1C49339A8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, const void *a8)
{
  v9[2] = a8;
  AssetRegistryXPC.BaseServer.assetEntryResultData(for:in:remoteOptionsData:completion:)(a1, a2, a3, a4, a5, a6, sub_1C45A6ED8, v9);
  _Block_release(a8);
}

id InferenceSupportXPC.Server.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C4933C00(uint64_t a1, void *a2)
{
  v3 = sub_1C456902C(&unk_1EC0B9610, &unk_1C4F0F2E0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &aBlock - v7;
  if (qword_1EDDE50A0 != -1)
  {
    sub_1C4407130(&qword_1EDDE50A0);
  }

  v9 = sub_1C442B738(v3, qword_1EDE2CCA8);
  swift_beginAccess();
  sub_1C4466EEC(v9, v8);
  v10 = type metadata accessor for Configuration(0);
  result = sub_1C44157D4(v8, 1, v10);
  if (result != 1)
  {
    v12 = &v8[*(v10 + 20)];
    v13 = *v12;
    v14 = *(v12 + 1);
    sub_1C4467948(v8);
    if (qword_1EDDFEC88 != -1)
    {
      swift_once();
    }

    if ((xmmword_1EDDFEC90 & ~v13) == 0 && (*(&xmmword_1EDDFEC90 + 1) & v14) == *(&xmmword_1EDDFEC90 + 1))
    {
      if (qword_1EDDFA678 != -1)
      {
        sub_1C43FFCC0(&qword_1EDDFA678);
      }

      v20 = sub_1C4F00978();
      sub_1C442B738(v20, qword_1EDE2DCD8);
      v21 = sub_1C4F00968();
      v22 = sub_1C4F01CF8();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_1C43FCED0();
        *v23 = 0;
        _os_log_impl(&dword_1C43F8000, v21, v22, "InferenceSupportXPC: service is in no-op mode.", v23, 2u);
        sub_1C43FE9D4();
      }
    }

    else
    {
      v16 = sub_1C4F01138();
      v18 = sub_1C446874C(v16, v17);

      if (v18)
      {
        sub_1C4EF9348();
        swift_allocObject();
        v19 = sub_1C4EF9338();
        sub_1C4466EEC(v9, v5);
        result = sub_1C44157D4(v5, 1, v10);
        if (result != 1)
        {
          type metadata accessor for AssetRegistryFullServer();

          sub_1C4473C20(v5, v19);
          v24 = objc_allocWithZone(type metadata accessor for AssetRegistryXPC.BaseServer());

          v26 = sub_1C45A5110(v25, v19);
          v27 = [objc_opt_self() interfaceWithProtocol_];
          [a2 setExportedInterface_];

          objc_allocWithZone(type metadata accessor for InferenceSupportXPC.Server());

          v28 = v26;
          v29 = sub_1C4933908(v28, v19);
          [a2 setExportedObject_];

          v36 = sub_1C49340B8;
          v37 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v33 = 1107296256;
          v34 = sub_1C4833DD0;
          v35 = &unk_1F43EFF98;
          v30 = _Block_copy(&aBlock);
          [a2 setInterruptionHandler_];
          _Block_release(v30);
          v36 = sub_1C49340D8;
          v37 = 0;
          aBlock = MEMORY[0x1E69E9820];
          v33 = 1107296256;
          v34 = sub_1C4833DD0;
          v35 = &unk_1F43EFFC0;
          v31 = _Block_copy(&aBlock);
          [a2 setInvalidationHandler_];
          _Block_release(v31);
          [a2 resume];

          return 1;
        }

        goto LABEL_20;
      }
    }

    return 0;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for InferredActivityType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C493431C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C4934334(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C4934354(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 177))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C49343A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
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
    *(result + 176) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 177) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C493443C(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_1C493444C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C493443C(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1C4934528(uint64_t a1, uint64_t a2)
{
  if (sub_1C4EF9C68() & 1) != 0 && (v4 = type metadata accessor for InferredActivitySegment(0), (sub_1C4EF9C68()) && *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24)))
  {
    return vabdd_f64(*(a1 + *(v4 + 28)), *(a2 + *(v4 + 28))) < 0.0001;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C49345B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7974697669746361 && a2 == 0xE800000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000014 && 0x80000001C4F8ABD0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

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

unint64_t sub_1C4934770(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0x656D6954646E65;
      break;
    case 2:
      result = 0x7974697669746361;
      break;
    case 3:
      result = 0x6E656469666E6F63;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4934818(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BF908, &qword_1C4F3B110);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C4938608();
  sub_1C4F02BF8();
  v19 = 0;
  sub_1C4EF9CD8();
  sub_1C4498DE4(&qword_1EDDFCD80, MEMORY[0x1E6969538]);
  sub_1C4402150();
  sub_1C4F027E8();
  if (!v2)
  {
    v11 = type metadata accessor for InferredActivitySegment(0);
    v18 = 1;
    sub_1C4402150();
    sub_1C4F027E8();
    v17 = *(v3 + *(v11 + 24));
    v16 = 2;
    sub_1C4938770();
    sub_1C4402150();
    sub_1C4F027E8();
    v15 = 3;
    sub_1C4402150();
    sub_1C4F027B8();
    v14 = 4;
    sub_1C4402150();
    sub_1C4F02798();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C4934A50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v34 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v37 = (&v32 - v9);
  sub_1C456902C(&qword_1EC0BF8F0, &qword_1C4F3B108);
  sub_1C43FCDF8();
  v35 = v11;
  v36 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = type metadata accessor for InferredActivitySegment(0);
  sub_1C440A6B8();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4409678(a1, a1[3]);
  sub_1C4938608();
  v38 = v13;
  v18 = v39;
  sub_1C4F02BC8();
  if (v18)
  {
    return sub_1C440962C(a1);
  }

  v39 = a1;
  v32 = v17;
  v45 = 0;
  v19 = sub_1C4498DE4(&unk_1EDDFCD60, MEMORY[0x1E6969558]);
  sub_1C444B198(v19, &v45);
  v20 = v32;
  v37 = *(v34 + 32);
  v21 = v37();
  v44 = 1;
  sub_1C444B198(v21, &v44);
  v22 = v14;
  (v37)(v20 + *(v14 + 20), v7, v3);
  v42 = 2;
  sub_1C493865C();
  v37 = 0;
  sub_1C4F026C8();
  *(v20 + *(v14 + 24)) = v43;
  v41 = 3;
  v23 = sub_1C4F02698();
  v24 = v39;
  *(v20 + *(v22 + 28)) = v23;
  v40 = 4;
  v25 = sub_1C4F02678();
  v27 = v26;
  v28 = sub_1C446BF50();
  v29(v28, v36);
  v30 = (v20 + *(v22 + 32));
  *v30 = v25;
  v30[1] = v27;
  sub_1C49386B0(v20, v33);
  sub_1C440962C(v24);
  return sub_1C4938714(v20);
}

uint64_t sub_1C4934E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C49345B8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4934EBC(uint64_t a1)
{
  v2 = sub_1C4938608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4934EF8(uint64_t a1)
{
  v2 = sub_1C4938608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4934F68@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v5[0] = 0;
  v5[1] = a1;
  *&v6[40] = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = 1;
  sub_1C441D670(a2, v6);
  sub_1C4938428(v5, a3);
  return sub_1C4938460(v5);
}

uint64_t sub_1C4934FE0()
{
  sub_1C43FBCD4();
  v1[2] = v2;
  v1[3] = v0;
  sub_1C456902C(&qword_1EC0BF8E0, &qword_1C4F3E000);
  v1[4] = sub_1C43FBE7C();
  v1[5] = type metadata accessor for InferredActivitySegment(0);
  v1[6] = sub_1C43FBE7C();
  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4935090()
{
  sub_1C43FBCD4();
  if (*(v0[3] + 8))
  {
    swift_task_alloc();
    sub_1C43FBE70();
    v0[7] = v1;
    *v1 = v2;
    v1[1] = sub_1C49351B4;

    return sub_1C493541C();
  }

  else
  {
    sub_1C43FCF64();
    sub_1C440BAA8(v4, v5, v6, v7);
    sub_1C4607CD4(v0[4], &qword_1EC0BF8E0, &qword_1C4F3E000);
    sub_1C456902C(&qword_1EC0BF8C8, &qword_1C4F3ADF0);
    sub_1C43FCF64();
    sub_1C440BAA8(v8, v9, v10, v11);

    sub_1C43FBDA0();

    return v12();
  }
}

uint64_t sub_1C49351B4()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4935298()
{
  v1 = v0[4];
  v2 = v0[5];
  if (sub_1C44157D4(v1, 1, v2) == 1)
  {
    sub_1C4607CD4(v1, &qword_1EC0BF8E0, &qword_1C4F3E000);
    v3 = sub_1C456902C(&qword_1EC0BF8C8, &qword_1C4F3ADF0);
    v4 = 1;
  }

  else
  {
    v5 = v0[6];
    v6 = v0[2];
    sub_1C49382E4(v1, v5);
    v7 = sub_1C4EF9CD8();
    sub_1C440A6B8();
    v9 = *(v8 + 16);
    v9(v6, v5, v7);
    v10 = *(v2 + 20);
    v3 = sub_1C456902C(&qword_1EC0BF8C8, &qword_1C4F3ADF0);
    v9(v6 + *(v3 + 28), v5 + v10, v7);
    sub_1C49382E4(v5, v6 + *(v3 + 32));
    v4 = 0;
  }

  sub_1C440BAA8(v0[2], v4, 1, v3);

  sub_1C43FBDA0();

  return v11();
}

uint64_t sub_1C493541C()
{
  sub_1C43FBCD4();
  v1[68] = v0;
  v1[67] = v2;
  sub_1C456902C(&qword_1EC0BF8E0, &qword_1C4F3E000);
  v1[69] = sub_1C43FBE7C();
  v3 = sub_1C4EF9CD8();
  v1[70] = v3;
  sub_1C43FCF7C(v3);
  v1[71] = v4;
  v1[72] = sub_1C43FBE7C();
  v5 = sub_1C4F00978();
  v1[73] = v5;
  sub_1C43FCF7C(v5);
  v1[74] = v6;
  v1[75] = sub_1C43FBE7C();
  v7 = swift_task_alloc();
  v1[76] = v7;
  *v7 = v1;
  v7[1] = sub_1C4935578;

  return sub_1C4937158();
}

uint64_t sub_1C4935578()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1C493565C(__n128 a1)
{
  a1.n128_u64[0] = 136316418;
  v82 = a1;
  while (1)
  {
    sub_1C440CC88();
    if (!v1[10])
    {
      v70 = (v1 + 7);
      goto LABEL_18;
    }

    sub_1C4423738();
    if (!v1[20])
    {
      sub_1C440962C(v1 + 2);
      v70 = (v1 + 17);
      goto LABEL_18;
    }

    sub_1C4450724();
    if (!v1[30])
    {
      sub_1C440962C(v1 + 12);
      sub_1C440962C(v1 + 2);
      v70 = (v1 + 27);
LABEL_18:
      sub_1C4607CD4(v70, &qword_1EC0BF8E8, &qword_1C4F3AF38);
      type metadata accessor for InferredActivitySegment(0);
      v71 = sub_1C440EF74();
      sub_1C440BAA8(v71, v72, 1, v73);
      sub_1C4422374();

      sub_1C43FBDA0();
      sub_1C441AF18();

      __asm { BRAA            X1, X16 }
    }

    sub_1C441D23C();
    sub_1C446028C();
    if (!v2)
    {
      __break(1u);
      return;
    }

    sub_1C4425C3C();
    if (!v4)
    {
      sub_1C4F00198();
      sub_1C448BD48((v1 + 2), (v1 + 37));
      sub_1C448BD48((v1 + 2), (v1 + 42));
      sub_1C448BD48((v1 + 12), (v1 + 47));
      sub_1C448BD48((v1 + 12), (v1 + 52));
      sub_1C448BD48((v1 + 22), (v1 + 57));
      sub_1C448BD48((v1 + 22), (v1 + 62));
      v5 = sub_1C4F00968();
      v6 = sub_1C4F01CF8();
      v7 = os_log_type_enabled(v5, v6);
      v8 = v1[75];
      v9 = v1[74];
      v10 = v1[73];
      if (v7)
      {
        v87 = v1[74];
        v88 = v1[75];
        v11 = v1[72];
        v12 = v1[71];
        v13 = v1[70];
        v14 = swift_slowAlloc();
        v86 = v10;
        v89 = swift_slowAlloc();
        *v14 = v82.n128_u32[0];
        HIDWORD(v85) = v6;
        v15 = v1[40];
        v16 = v1[41];
        sub_1C444FDBC(v1 + 37, v15);
        log = v5;
        v17(v15, v16);
        sub_1C44005C4();
        sub_1C4498DE4(&qword_1EDDFCD50, v18);
        v19 = sub_1C4F02858();
        v21 = v20;
        v22 = *(v12 + 8);
        v22(v11, v13);
        v23 = sub_1C440AC70(v1 + 37);
        sub_1C441D828(v23, v21, v24);
        sub_1C4408758();

        *(v14 + 4) = v19;
        *(v14 + 12) = 2080;
        v25 = v1[46];
        sub_1C4409678(v1 + 42, v1[45]);
        v26 = sub_1C4408758();
        v27(v26, v25);
        sub_1C4F02858();
        v28 = sub_1C4410DEC();
        v22(v28, v13);
        v29 = sub_1C440AC70(v1 + 42);
        sub_1C441D828(v29, v25, v30);
        sub_1C4404CE0();

        *(v14 + 14) = v11;
        *(v14 + 22) = 2080;
        v31 = v1[50];
        sub_1C444FDBC(v1 + 47, v31);
        v32 = sub_1C4408BB0();
        v33(v32);
        sub_1C4F02858();
        v34 = sub_1C4410DEC();
        v22(v34, v13);
        v35 = sub_1C440AC70(v1 + 47);
        sub_1C441D828(v35, v31, v36);
        sub_1C4404CE0();

        *(v14 + 24) = v11;
        *(v14 + 32) = 2080;
        v37 = v1[55];
        sub_1C4409678(v1 + 52, v37);
        sub_1C443F674();
        v38 = sub_1C4408BB0();
        v39(v38);
        sub_1C4F02858();
        v40 = sub_1C4410DEC();
        v22(v40, v13);
        v41 = sub_1C440AC70(v1 + 52);
        sub_1C441D828(v41, v37, v42);
        sub_1C4404CE0();

        *(v14 + 34) = v11;
        *(v14 + 42) = 2080;
        v43 = v1[60];
        sub_1C444FDBC(v1 + 57, v43);
        v44 = sub_1C4408BB0();
        v45(v44);
        sub_1C4F02858();
        v46 = sub_1C4410DEC();
        v22(v46, v13);
        v47 = sub_1C440AC70(v1 + 57);
        sub_1C441D828(v47, v43, v48);
        sub_1C4404CE0();

        *(v14 + 44) = v11;
        *(v14 + 52) = 2080;
        v49 = v1[65];
        sub_1C4409678(v1 + 62, v49);
        sub_1C443F674();
        v50 = sub_1C4408BB0();
        v51(v50);
        sub_1C4F02858();
        v52 = sub_1C4410DEC();
        v22(v52, v13);
        v53 = sub_1C440AC70(v1 + 62);
        sub_1C441D828(v53, v49, v54);
        sub_1C4404CE0();

        *(v14 + 54) = v11;
        v55 = log;
        _os_log_impl(&dword_1C43F8000, log, BYTE4(v85), "Predicting activities for prev segment: %s to %s, curr segment: %s to %s, next segment: %s to %s", v14, 0x3Eu);
        sub_1C441AF34(v56, v57, v58, v59, v60, v61, v62, v63, v82.n128_i64[0], v82.n128_i64[1], v83, v13, log, v85, v89);
        sub_1C43FBE2C();
        sub_1C43FBE2C();

        (*(v87 + 8))(v88, v86);
      }

      else
      {

        (*(v9 + 8))(v8, v10);
        sub_1C4403308();
      }

      v3 = v1[68];
    }

    sub_1C4402364(v3);
    if (v64)
    {
      break;
    }

    sub_1C4409DA4();
    if ((v66 & 0x8000000000000000) == 0 && v66 < v65)
    {
      sub_1C4404400();
      sub_1C4409678(v1 + 32, v1[35]);
      sub_1C43FCFC0();
      sub_1C4404280();
      swift_task_alloc();
      sub_1C43FBE70();
      v1[81] = v78;
      *v78 = v79;
      sub_1C441997C(v78);
      sub_1C441AF18();

      __asm { BRAA            X6, X16 }
    }

    sub_1C4414BD8();
    type metadata accessor for InferredActivitySegment(0);
    v67 = sub_1C440EF74();
    sub_1C440BAA8(v67, v68, 1, v69);
    sub_1C4607CD4(v1[69], &qword_1EC0BF8E0, &qword_1C4F3E000);
  }

  v76 = swift_task_alloc();
  v1[80] = v76;
  *v76 = v1;
  sub_1C442CBE8(v76);
  sub_1C441AF18();

  sub_1C4937CBC();
}

uint64_t sub_1C4935D60()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C4935E44()
{
  do
  {
    sub_1C4409DA4();
    if ((v2 & 0x8000000000000000) == 0 && v2 < v1)
    {
      sub_1C4404400();
      sub_1C4409678((v0 + 256), *(v0 + 280));
      sub_1C43FCFC0();
      sub_1C4404280();
      swift_task_alloc();
      sub_1C43FBE70();
      *(v0 + 648) = v64;
      *v64 = v65;
      sub_1C441997C(v64);
      sub_1C44149E0();

      __asm { BRAA            X6, X16 }
    }

    sub_1C4414BD8();
    v3 = type metadata accessor for InferredActivitySegment(0);
    sub_1C43FCF64();
    sub_1C440BAA8(v4, v5, v6, v3);
    sub_1C4607CD4(*(v0 + 552), &qword_1EC0BF8E0, &qword_1C4F3E000);
    sub_1C440CC88();
    if (!*(v0 + 80))
    {
      v68 = v0 + 56;
      goto LABEL_22;
    }

    v7 = *(v0 + 544);
    sub_1C441D670((v0 + 56), v0 + 16);
    sub_1C4938228(v7 + 96, v0 + 136);
    if (!*(v0 + 160))
    {
      sub_1C440962C((v0 + 16));
      v68 = v0 + 136;
      goto LABEL_22;
    }

    v8 = *(v0 + 544);
    sub_1C441D670((v0 + 136), v0 + 96);
    sub_1C4938228(v8 + 136, v0 + 216);
    if (!*(v0 + 240))
    {
      sub_1C440962C((v0 + 96));
      sub_1C440962C((v0 + 16));
      v68 = v0 + 216;
LABEL_22:
      sub_1C4607CD4(v68, &qword_1EC0BF8E8, &qword_1C4F3AF38);
      sub_1C43FCF64();
      sub_1C440BAA8(v69, v70, v71, v3);
      sub_1C4422374();

      sub_1C43FBDA0();
      sub_1C44149E0();

      __asm { BRAA            X1, X16 }
    }

    result = sub_1C441D23C();
    v10 = *(v3 + 8);
    *(v0 + 616) = v10;
    v11 = *(v10 + 16);
    *(v0 + 624) = v11;
    if (!v11)
    {
      __break(1u);
      return result;
    }

    sub_1C4425C3C();
    v80 = v13;
    if (!v13)
    {
      sub_1C4F00198();
      sub_1C448BD48(v0 + 16, v0 + 296);
      sub_1C448BD48(v0 + 16, v0 + 336);
      sub_1C448BD48(v0 + 96, v0 + 376);
      sub_1C448BD48(v0 + 96, v0 + 416);
      sub_1C448BD48(v0 + 176, v0 + 456);
      sub_1C448BD48(v0 + 176, v0 + 496);
      v14 = sub_1C4F00968();
      v15 = sub_1C4F01CF8();
      v16 = os_log_type_enabled(v14, v15);
      v79 = *(v0 + 600);
      v17 = *(v0 + 592);
      v18 = *(v0 + 584);
      if (v16)
      {
        v77 = *(v0 + 592);
        v19 = *(v0 + 576);
        v20 = *(v0 + 568);
        v21 = *(v0 + 560);
        v22 = swift_slowAlloc();
        v76 = v18;
        swift_slowAlloc();
        *v22 = 136316418;
        v75 = v15;
        v23 = *(v0 + 320);
        v24 = *(v0 + 328);
        sub_1C444FDBC((v0 + 296), v23);
        log = v14;
        v25(v23, v24);
        sub_1C44005C4();
        sub_1C4498DE4(&qword_1EDDFCD50, v26);
        sub_1C443F240();
        v27 = sub_1C4F02858();
        v29 = v28;
        v78 = *(v20 + 8);
        v78(v19, v21);
        v30 = sub_1C440AC70((v0 + 296));
        sub_1C441D828(v30, v29, v31);
        sub_1C4408758();

        *(v22 + 4) = v27;
        *(v22 + 12) = 2080;
        v32 = *(v0 + 368);
        sub_1C4409678((v0 + 336), *(v0 + 360));
        v33 = sub_1C4408758();
        v34(v33, v32);
        sub_1C443F240();
        sub_1C4F02858();
        v35 = sub_1C44132E0();
        (v78)(v35);
        v36 = sub_1C440AC70((v0 + 336));
        sub_1C441D828(v36, v32, v37);
        sub_1C43FEF2C();

        *(v22 + 14) = v27;
        *(v22 + 22) = 2080;
        v38 = *(v0 + 400);
        sub_1C444FDBC((v0 + 376), v38);
        v39 = sub_1C440F7B8();
        v40(v39);
        sub_1C443F240();
        sub_1C4F02858();
        v41 = sub_1C44132E0();
        (v78)(v41);
        v42 = sub_1C440AC70((v0 + 376));
        sub_1C441D828(v42, v38, v43);
        sub_1C43FEF2C();

        *(v22 + 24) = v27;
        *(v22 + 32) = 2080;
        v44 = *(v0 + 440);
        sub_1C4409678((v0 + 416), v44);
        sub_1C443F674();
        v45 = sub_1C440F7B8();
        v46(v45);
        sub_1C443F240();
        sub_1C4F02858();
        v47 = sub_1C44132E0();
        (v78)(v47);
        v48 = sub_1C440AC70((v0 + 416));
        sub_1C441D828(v48, v44, v49);
        sub_1C43FEF2C();

        *(v22 + 34) = v27;
        *(v22 + 42) = 2080;
        v50 = *(v0 + 480);
        sub_1C444FDBC((v0 + 456), v50);
        v51 = sub_1C440F7B8();
        v52(v51);
        sub_1C443F240();
        sub_1C4F02858();
        v53 = sub_1C44132E0();
        (v78)(v53);
        v54 = sub_1C440AC70((v0 + 456));
        sub_1C441D828(v54, v50, v55);
        sub_1C43FEF2C();

        *(v22 + 44) = v27;
        *(v22 + 52) = 2080;
        v56 = *(v0 + 520);
        sub_1C4409678((v0 + 496), v56);
        sub_1C443F674();
        v57 = sub_1C440F7B8();
        v58(v57);
        sub_1C443F240();
        sub_1C4F02858();
        v59 = sub_1C44132E0();
        (v78)(v59);
        v60 = sub_1C440AC70((v0 + 496));
        sub_1C441D828(v60, v56, v61);
        sub_1C43FEF2C();

        *(v22 + 54) = v27;
        _os_log_impl(&dword_1C43F8000, log, v75, "Predicting activities for prev segment: %s to %s, curr segment: %s to %s, next segment: %s to %s", v22, 0x3Eu);
        swift_arrayDestroy();
        sub_1C43FBE2C();
        sub_1C43FBE2C();

        (*(v77 + 8))(v79, v76);
      }

      else
      {

        (*(v17 + 8))(v79, v18);
        sub_1C4403308();
      }

      v12 = *(v0 + 544);
    }

    *v12 = v80 + 1;
  }

  while (v80 + 1 != *(v10 + 16));
  v62 = swift_task_alloc();
  *(v0 + 640) = v62;
  *v62 = v0;
  sub_1C442CBE8(v62);
  sub_1C44149E0();

  return sub_1C4937CBC();
}

uint64_t sub_1C4936560()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  v3 = sub_1C43FCE74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1C4936644()
{
  sub_1C4414BD8();
  sub_1C440962C(v0 + 32);
  v1 = type metadata accessor for InferredActivitySegment(0);
  v2 = sub_1C440EF74();
  if (sub_1C44157D4(v2, v3, v1) != 1)
  {
    v71 = v0[67];
    sub_1C49382E4(v0[69], v71);
    v72 = v71;
    v73 = 0;
    goto LABEL_21;
  }

  *&v4 = 136316418;
  v83 = v4;
  v85 = v1;
  while (1)
  {
    sub_1C4607CD4(v0[69], &qword_1EC0BF8E0, &qword_1C4F3E000);
    sub_1C440CC88();
    if (!v0[10])
    {
      v74 = (v0 + 7);
LABEL_20:
      sub_1C4607CD4(v74, &qword_1EC0BF8E8, &qword_1C4F3AF38);
      v72 = v0[67];
      v73 = 1;
LABEL_21:
      sub_1C440BAA8(v72, v73, 1, v1);
      sub_1C4422374();

      sub_1C43FBDA0();
      sub_1C441AF18();

      __asm { BRAA            X1, X16 }
    }

    sub_1C4423738();
    if (!v0[20])
    {
      sub_1C440962C(v0 + 2);
      v74 = (v0 + 17);
      goto LABEL_20;
    }

    sub_1C4450724();
    if (!v0[30])
    {
      sub_1C440962C(v0 + 12);
      sub_1C440962C(v0 + 2);
      v74 = (v0 + 27);
      goto LABEL_20;
    }

    sub_1C441D23C();
    sub_1C446028C();
    if (!v5)
    {
      __break(1u);
      return;
    }

    sub_1C4425C3C();
    if (!v7)
    {
      sub_1C4F00198();
      sub_1C448BD48((v0 + 2), (v0 + 37));
      sub_1C448BD48((v0 + 2), (v0 + 42));
      sub_1C448BD48((v0 + 12), (v0 + 47));
      sub_1C448BD48((v0 + 12), (v0 + 52));
      sub_1C448BD48((v0 + 22), (v0 + 57));
      sub_1C448BD48((v0 + 22), (v0 + 62));
      v8 = sub_1C4F00968();
      v91 = sub_1C4F01CF8();
      v9 = os_log_type_enabled(v8, v91);
      v10 = v0[75];
      v11 = v0[74];
      v12 = v0[73];
      if (v9)
      {
        v13 = v0[72];
        v14 = v0[71];
        v90 = v0[73];
        v15 = v0[70];
        v89 = v0[75];
        v16 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        *v16 = v83;
        v18 = v0[40];
        v17 = v0[41];
        sub_1C4409678(v0 + 37, v18);
        log = v8;
        (*(v17 + 8))(v18, v17);
        sub_1C44005C4();
        sub_1C4498DE4(&qword_1EDDFCD50, v19);
        sub_1C441C304();
        v20 = sub_1C4F02858();
        v22 = v21;
        v23 = *(v14 + 8);
        v23(v13, v15);
        v24 = sub_1C440AC70(v0 + 37);
        sub_1C441D828(v24, v22, v25);
        sub_1C43FCFC0();

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        v86 = v11;
        v26 = v0[45];
        sub_1C4433D28(v0 + 42);
        v27 = sub_1C4411E24();
        v28(v27);
        sub_1C441C304();
        sub_1C4F02858();
        v29 = sub_1C440E3D4();
        (v23)(v29);
        v30 = sub_1C440AC70(v0 + 42);
        sub_1C441D828(v30, v26, v31);
        sub_1C43FCFC0();

        *(v16 + 14) = v20;
        *(v16 + 22) = 2080;
        v32 = v0[50];
        sub_1C4433D28(v0 + 47);
        v33 = sub_1C4411E24();
        v34(v33);
        sub_1C441C304();
        sub_1C4F02858();
        v35 = sub_1C440E3D4();
        (v23)(v35);
        v36 = sub_1C440AC70(v0 + 47);
        sub_1C441D828(v36, v32, v37);
        sub_1C43FCFC0();

        *(v16 + 24) = v20;
        *(v16 + 32) = 2080;
        v38 = v0[55];
        sub_1C4433D28(v0 + 52);
        v39 = sub_1C4411E24();
        v40(v39);
        sub_1C441C304();
        sub_1C4F02858();
        v41 = sub_1C440E3D4();
        (v23)(v41);
        v42 = sub_1C440AC70(v0 + 52);
        sub_1C441D828(v42, v38, v43);
        sub_1C43FCFC0();

        *(v16 + 34) = v20;
        *(v16 + 42) = 2080;
        v44 = v0[60];
        sub_1C4433D28(v0 + 57);
        v45 = sub_1C4411E24();
        v46(v45);
        sub_1C441C304();
        sub_1C4F02858();
        v47 = sub_1C440E3D4();
        (v23)(v47);
        v48 = sub_1C440AC70(v0 + 57);
        sub_1C441D828(v48, v44, v49);
        sub_1C43FCFC0();

        *(v16 + 44) = v20;
        *(v16 + 52) = 2080;
        sub_1C4433D28(v0 + 62);
        v50 = sub_1C4411E24();
        v51(v50);
        sub_1C441C304();
        v52 = sub_1C4F02858();
        v54 = v53;
        v23(v13, v15);
        v55 = sub_1C440AC70(v0 + 62);
        sub_1C441D828(v55, v54, v56);
        sub_1C43FCFC0();
        v1 = v85;

        *(v16 + 54) = v52;
        v57 = log;
        _os_log_impl(&dword_1C43F8000, log, v91, "Predicting activities for prev segment: %s to %s, curr segment: %s to %s, next segment: %s to %s", v16, 0x3Eu);
        sub_1C441AF34(v58, v59, v60, v61, v62, v63, v64, v65, v83, *(&v83 + 1), v84, v85, v86, log, v92);
        sub_1C43FBE2C();
        sub_1C43FBE2C();

        (*(v87 + 8))(v89, v90);
      }

      else
      {

        (*(v11 + 8))(v10, v12);
        sub_1C4403308();
      }

      v6 = v0[68];
    }

    sub_1C4402364(v6);
    if (v66)
    {
      break;
    }

    sub_1C4409DA4();
    if ((v68 & 0x8000000000000000) == 0 && v68 < v67)
    {
      sub_1C4404400();
      sub_1C4409678(v0 + 32, v0[35]);
      sub_1C43FCFC0();
      sub_1C4404280();
      swift_task_alloc();
      sub_1C43FBE70();
      v0[81] = v79;
      *v79 = v80;
      sub_1C441997C(v79);
      sub_1C441AF18();

      __asm { BRAA            X6, X16 }
    }

    sub_1C4414BD8();
    v69 = sub_1C440EF74();
    sub_1C440BAA8(v69, v70, 1, v1);
  }

  v77 = swift_task_alloc();
  v0[80] = v77;
  *v77 = v0;
  sub_1C442CBE8(v77);
  sub_1C441AF18();

  sub_1C4937CBC();
}

uint64_t sub_1C4936D60@<X0>(uint64_t a1@<X8>)
{
  sub_1C4936D54(a1);

  return sub_1C49370F0(v1);
}

uint64_t sub_1C4936D8C()
{
  sub_1C43FBCD4();
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C4938A70;

  return sub_1C4934FE0();
}

uint64_t sub_1C4936E1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_task_alloc();
  sub_1C43FBE70();
  *(v3 + 24) = v7;
  *v7 = v8;
  v7[1] = sub_1C4938A6C;

  return (sub_1C49820AC)(a1, a2, a3, v3 + 16);
}

unint64_t sub_1C4936EE8()
{
  result = qword_1EDDF1FA8;
  if (!qword_1EDDF1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1FA8);
  }

  return result;
}

unint64_t sub_1C4936F3C()
{
  result = qword_1EC0BF8C0;
  if (!qword_1EC0BF8C0)
  {
    sub_1C4572308(&qword_1EC0BF8C8, &qword_1C4F3ADF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF8C0);
  }

  return result;
}

unint64_t sub_1C4936FA0(uint64_t a1)
{
  result = sub_1C4936EE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4936FC8(uint64_t a1)
{
  result = sub_1C4936FF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C4936FF0()
{
  result = qword_1EDDF1FA0;
  if (!qword_1EDDF1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1FA0);
  }

  return result;
}

unint64_t sub_1C4937048()
{
  result = qword_1EC0BF8D0;
  if (!qword_1EC0BF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF8D0);
  }

  return result;
}

unint64_t sub_1C493709C()
{
  result = qword_1EC0BF8D8;
  if (!qword_1EC0BF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF8D8);
  }

  return result;
}

uint64_t sub_1C493716C()
{
  sub_1C43FCF70();
  v1 = v0[29];
  if (*(v1 + 160) == 1)
  {
    v2 = sub_1C4418280(v1, *(v1 + 24));
    v0[30] = sub_1C440BDA0(v2, v3, v4, MEMORY[0x1E69E85C8]);
    v5 = sub_1C4F01F48();
    v0[31] = v5;
    sub_1C43FCF7C(v5);
    v0[32] = v6;
    v0[33] = sub_1C43FBE7C();
    swift_task_alloc();
    sub_1C43FBE70();
    v0[34] = v7;
    *v7 = v8;
    v9 = sub_1C44324CC(v7);

    return MEMORY[0x1EEE6D8C8](v9);
  }

  else
  {
    *(v1 + 160) = 0;
    sub_1C43FBDA0();

    return v10();
  }
}

uint64_t sub_1C49372BC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 280) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C49373B8()
{
  sub_1C43FCF70();
  v1 = *(v0 + 240);
  sub_1C4405CEC();
  if (v2)
  {
    v3 = sub_1C441C948();
    v4(v3);

LABEL_5:
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_6;
  }

  *(v0 + 160) = v1;
  sub_1C4422F90((v0 + 136));
  sub_1C4402A78();
  sub_1C440F228();
  v5();

  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  v6 = sub_1C445FDA0();
  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_1C49383B8(v0 + 16, *(v0 + 232) + 40);
  v7 = sub_1C442F214();
  *(v0 + 288) = sub_1C440BDA0(v7, v8, v9, MEMORY[0x1E69E85C8]);
  v10 = sub_1C4F01F48();
  *(v0 + 296) = v10;
  sub_1C43FCF7C(v10);
  *(v0 + 304) = v11;
  *(v0 + 312) = sub_1C43FBE7C();
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 320) = v12;
  *v12 = v13;
  v14 = sub_1C44324CC(v12);

  return MEMORY[0x1EEE6D8C8](v14);
}

uint64_t sub_1C4937570()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 328) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C493766C()
{
  sub_1C43FCF70();
  v1 = *(v0 + 288);
  sub_1C4405CEC();
  if (v2)
  {
    v3 = sub_1C441C948();
    v4(v3);

LABEL_5:
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_6;
  }

  *(v0 + 192) = v1;
  sub_1C4422F90((v0 + 168));
  sub_1C4402A78();
  sub_1C440F228();
  v5();

  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  v6 = sub_1C445FDA0();
  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_1C49383B8(v0 + 56, *(v0 + 232) + 80);
  v7 = sub_1C442F214();
  *(v0 + 336) = sub_1C440BDA0(v7, v8, v9, MEMORY[0x1E69E85C8]);
  v10 = sub_1C4F01F48();
  *(v0 + 344) = v10;
  sub_1C43FCF7C(v10);
  *(v0 + 352) = v11;
  *(v0 + 360) = sub_1C43FBE7C();
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 368) = v12;
  *v12 = v13;
  v14 = sub_1C44324CC(v12);

  return MEMORY[0x1EEE6D8C8](v14);
}

uint64_t sub_1C4937828()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 376) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4937924()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 336);
  sub_1C4405CEC();
  if (v2)
  {
    v3 = sub_1C441C948();
    v4(v3);

LABEL_5:
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    goto LABEL_6;
  }

  *(v0 + 224) = v1;
  sub_1C4422F90((v0 + 200));
  sub_1C4402A78();
  sub_1C440F228();
  v5();

  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  v6 = sub_1C445FDA0();
  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_1C49383B8(v0 + 96, *(v0 + 232) + 120);
  sub_1C44173AC();

  return v7();
}

uint64_t sub_1C4937A28()
{
  sub_1C43FCF70();

  v1 = *(v0 + 280);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (sub_1C43FD0E8(v4))
  {
    v5 = sub_1C43FCED0();
    sub_1C4405D10(v5);
    sub_1C4410910(&dword_1C43F8000, v6, v7, "Could not get next segment from segmentation provider");
    sub_1C43FEA20();
  }

  sub_1C44173AC();

  return v8();
}

uint64_t sub_1C4937B04()
{
  sub_1C43FCF70();

  v1 = *(v0 + 328);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (sub_1C43FD0E8(v4))
  {
    v5 = sub_1C43FCED0();
    sub_1C4405D10(v5);
    sub_1C4410910(&dword_1C43F8000, v6, v7, "Could not get next segment from segmentation provider");
    sub_1C43FEA20();
  }

  sub_1C44173AC();

  return v8();
}

uint64_t sub_1C4937BE0()
{
  sub_1C43FCF70();

  v1 = *(v0 + 376);
  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDDFECB8);
  v3 = sub_1C4F00968();
  v4 = sub_1C4F01CF8();
  if (sub_1C43FD0E8(v4))
  {
    v5 = sub_1C43FCED0();
    sub_1C4405D10(v5);
    sub_1C4410910(&dword_1C43F8000, v6, v7, "Could not get next segment from segmentation provider");
    sub_1C43FEA20();
  }

  sub_1C44173AC();

  return v8();
}

uint64_t sub_1C4937CD0()
{
  sub_1C43FCF70();
  v1 = v0[11];
  sub_1C4938348(v1 + 80, v1 + 40);
  sub_1C4938348(v1 + 120, v1 + 80);
  v2 = sub_1C442F214();
  v0[12] = sub_1C440BDA0(v2, v3, v4, MEMORY[0x1E69E85C8]);
  v5 = sub_1C4F01F48();
  v0[13] = v5;
  sub_1C43FCF7C(v5);
  v0[14] = v6;
  v0[15] = sub_1C43FBE7C();
  swift_task_alloc();
  sub_1C43FBE70();
  v0[16] = v7;
  *v7 = v8;
  v9 = sub_1C44324CC(v7);

  return MEMORY[0x1EEE6D8C8](v9);
}

uint64_t sub_1C4937DF0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  sub_1C43FBE64();
  *v3 = v2;
  v4 = *v1;
  sub_1C43FBDAC();
  *v5 = v4;
  *(v6 + 136) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C4937EEC()
{
  sub_1C43FBCD4();
  v1 = *(v0 + 96);
  sub_1C4405CEC();
  if (v2)
  {
    v3 = sub_1C441C948();
    v4(v3);

LABEL_5:
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_6;
  }

  *(v0 + 80) = v1;
  sub_1C4422F90((v0 + 56));
  sub_1C4402A78();
  sub_1C440F228();
  v5();

  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  v6 = sub_1C445FDA0();
  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_1C49383B8(v0 + 16, *(v0 + 88) + 120);
  sub_1C43FBDA0();

  return v7();
}

uint64_t sub_1C4937FF0()
{
  sub_1C43FCF70();

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v1 = sub_1C4F00978();
  sub_1C442B738(v1, qword_1EDDFECB8);
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  v4 = sub_1C43FD0E8(v3);
  v5 = *(v0 + 136);
  if (v4)
  {
    v6 = sub_1C43FCED0();
    sub_1C4405D10(v6);
    sub_1C4410910(&dword_1C43F8000, v7, v8, "Could not get next segment from segmentation provider");
    sub_1C43FEA20();
  }

  sub_1C43FBDA0();

  return v9();
}

uint64_t sub_1C49380CC()
{
  sub_1C43FBCD4();
  swift_task_alloc();
  sub_1C43FBE70();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1C445229C;

  return sub_1C493541C();
}

uint64_t sub_1C493815C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_1C4582C48;

  return (sub_1C4982C7C)(a1, a2, a3, v3 + 16);
}

uint64_t sub_1C4938228(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF8E8, &qword_1C4F3AF38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for InferredActivitySegment(uint64_t a1)
{
  result = qword_1EDDF36F0;
  if (!qword_1EDDF36F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C49382E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferredActivitySegment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4938348(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF8E8, &qword_1C4F3AF38);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49383B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF8E8, &qword_1C4F3AF38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49384B8(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C4938548(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 177))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C4938588(uint64_t result, int a2, int a3)
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C4938608()
{
  result = qword_1EC0BF8F8;
  if (!qword_1EC0BF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF8F8);
  }

  return result;
}

unint64_t sub_1C493865C()
{
  result = qword_1EC0BF900;
  if (!qword_1EC0BF900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF900);
  }

  return result;
}

uint64_t sub_1C49386B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferredActivitySegment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4938714(uint64_t a1)
{
  v2 = type metadata accessor for InferredActivitySegment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C4938770()
{
  result = qword_1EC0BF910;
  if (!qword_1EC0BF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF910);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InferredActivitySegment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C49388A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 161))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C49388E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C4938968()
{
  result = qword_1EC0BF918;
  if (!qword_1EC0BF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF918);
  }

  return result;
}

unint64_t sub_1C49389C0()
{
  result = qword_1EC0BF920;
  if (!qword_1EC0BF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF920);
  }

  return result;
}

unint64_t sub_1C4938A18()
{
  result = qword_1EC0BF928;
  if (!qword_1EC0BF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF928);
  }

  return result;
}

uint64_t sub_1C4938AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v46 = a3;
  v43 = a2;
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v47 = &v42 - v11;
  v44 = type metadata accessor for LOIBasedSegmentProvider(0);
  sub_1C43FBCE0();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v6 + 16);
  v17(v12, a1, v4, v14);
  v18 = *(sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0) + 36);
  (v17)(v9, a1 + v18, v4);
  v45 = v16;
  v19 = v16;
  v20 = v47;
  sub_1C49FCD10(v47, v9, v19);
  v42 = type metadata accessor for ActivityModelDataSource(0);
  (v17)(v20, a1, v4);
  (v17)(v9, a1 + v18, v4);
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v21 = sub_1C4F01108();
  LODWORD(v20) = sub_1C44C1028(v21);

  v22 = v42;
  sub_1C4574C14(v47, v9, 0, v49, &v51, v20);
  v23 = *(v43 + 16);
  if (v23)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v25 = (v43 + 32);
    do
    {
      v26 = *v25++;
      switch(v26)
      {
        case 1:
          v27 = type metadata accessor for ShoppingActivityModel();
          type metadata accessor for MotionStateSignal();
          swift_allocObject();
          sub_1C44005DC();

          sub_1C4A450C4(1, 600.0);
          v28 = sub_1C43FC0A8();
          v31 = sub_1C4B135A4(v28, v29, v30);
          *(&v52 + 1) = v27;
          v53 = &off_1F43FC780;
          goto LABEL_9;
        case 2:
          type metadata accessor for AttendingEventActivityModel();
          sub_1C44005DC();

          sub_1C43FC0A8();
          v31 = sub_1C45AB46C();
          v34 = &off_1F43E1658;
          goto LABEL_8;
        case 3:
          type metadata accessor for DiningOutActivityModel();
          sub_1C44005DC();

          v32 = sub_1C43FC0A8();
          v31 = sub_1C46C9E08(v32, v33);
          v34 = &off_1F43E83B0;
          goto LABEL_8;
        case 4:
          type metadata accessor for FlightActivityModel();
          sub_1C44005DC();

          sub_1C43FC0A8();
          v31 = sub_1C4808A04();
          v34 = &off_1F43ED498;
LABEL_8:
          *(&v52 + 1) = v22;
          v53 = v34;
LABEL_9:
          *&v51 = v31;
          sub_1C441D670(&v51, v49);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458C35C();
            v24 = v36;
          }

          v35 = *(v24 + 16);
          v22 = v35 + 1;
          if (v35 >= *(v24 + 24) >> 1)
          {
            sub_1C458C35C();
            v24 = v37;
          }

          *(v24 + 16) = v22;
          sub_1C441D670(v49, v24 + 40 * v35 + 32);
          break;
        default:
          v53 = 0;
          v51 = 0u;
          v52 = 0u;
          sub_1C49394E8(&v51);
          break;
      }

      --v23;
    }

    while (v23);
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  *(&v52 + 1) = v44;
  v53 = sub_1C49395C0(qword_1EDDF3658, type metadata accessor for LOIBasedSegmentProvider, &unk_1C4F420A0);
  v38 = sub_1C4422F90(&v51);
  v39 = v45;
  sub_1C4939608(v45, v38, type metadata accessor for LOIBasedSegmentProvider);
  v40 = v46;
  bzero(v46, 0xB1uLL);
  sub_1C442E860(&v51, v48);
  sub_1C4934F68(v24, v48, v49);

  sub_1C4939668(v39, type metadata accessor for LOIBasedSegmentProvider);
  sub_1C440962C(&v51);
  return sub_1C4939550(v49, v40);
}

uint64_t sub_1C4938F9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v41 = a2;
  v3 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v5 = v4;
  v38 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v36 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  v16 = type metadata accessor for LOIBasedSemanticLocationSegmentProvider(0);
  sub_1C43FBCE0();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v20;
  v21 = *(v5 + 16);
  v21(v15, a1, v3, v18);
  v22 = sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  (v21)(v12, a1 + *(v22 + 36), v3);
  (v21)(&v20[*(v16 + 20)], v15, v3);
  v23 = v39;
  (v21)(v39, v15, v3);
  v24 = v40;
  (v21)(v40, v12, v3);
  v25 = v16;
  v26 = *(v16 + 28);
  v27 = v37;
  sub_1C49FCD10(v23, v24, &v37[v26]);
  v28 = *(v38 + 8);
  v28(v12, v3);
  v28(v15, v3);
  v29 = type metadata accessor for LOIBasedSegment(0);
  v30 = v27;
  sub_1C440BAA8(v27, 1, 1, v29);
  *(v27 + *(v25 + 24)) = 0;
  sub_1C456902C(&qword_1EC0B8B60, &qword_1C4F0DF90);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1C4F0D130;
  *(v31 + 56) = &type metadata for CommuteActivityModel;
  *(v31 + 64) = &off_1F43E6778;
  v32 = swift_allocObject();
  *(v31 + 32) = v32;
  *(v32 + 16) = 5;
  *(v32 + 24) = xmmword_1C4F3B2E0;
  *(v32 + 40) = 0x302E302E31;
  *(v32 + 48) = 0xE500000000000000;
  v44[3] = v25;
  v44[4] = sub_1C49395C0(&qword_1EDDF0FE8, type metadata accessor for LOIBasedSemanticLocationSegmentProvider, &unk_1C4F422A0);
  v33 = sub_1C4422F90(v44);
  sub_1C4939608(v30, v33, type metadata accessor for LOIBasedSemanticLocationSegmentProvider);
  v34 = v41;
  bzero(v41, 0xB1uLL);
  sub_1C442E860(v44, v42);
  sub_1C4934F68(v31, v42, v43);
  sub_1C4939668(v30, type metadata accessor for LOIBasedSemanticLocationSegmentProvider);
  sub_1C440962C(v44);
  return sub_1C4939550(v43, v34);
}

void sub_1C493936C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BF940, &qword_1C4F3E050);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  v8 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v9 = [v8 InFocus];
  swift_unknownObjectRelease();
  sub_1C4819D90(a1, v9, v7);

  if (!v2)
  {
    sub_1C49396C0(v7, a2);
  }
}

unint64_t sub_1C4939494()
{
  result = qword_1EDDF1F98;
  if (!qword_1EDDF1F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1F98);
  }

  return result;
}

uint64_t sub_1C49394E8(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BF930, &qword_1C4F3B460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C4939550(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF938, &qword_1C4F3B468);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C49395C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C4939608(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C4939668(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C49396C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF940, &qword_1C4F3E050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C4939730()
{
  result = qword_1EDDDC458;
  if (!qword_1EDDDC458)
  {
    sub_1C4572308(&qword_1EC0BF948, &qword_1C4F3B470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC458);
  }

  return result;
}

void sub_1C49397B4()
{
  sub_1C43FBD3C();
  sub_1C440AC8C(v1, v2, v3);
  sub_1C456902C(&qword_1EC0BAA38, &qword_1C4F16958);
  sub_1C44005F4();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440E3E8();
  v5 = sub_1C456902C(&qword_1EC0BAA30, &qword_1C4F3B4F0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0BF980, &qword_1C4F3B4F8);
  sub_1C4411E38();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C442CC10();
  sub_1C456902C(&qword_1EC0BAA70, &qword_1C4F16A20);
  v8 = sub_1C4403354();
  v9 = type metadata accessor for CarPlayEvent(v8);
  v10 = sub_1C441FCCC(v9);
  sub_1C4460050(v10, v11, &qword_1EC0BAA30, &qword_1C4F3B4F0);
  v12 = sub_1C44324E4();
  v13(v12);
  sub_1C4407150();
  v16 = sub_1C4401CBC(v14, &qword_1EC0BAA38, &qword_1C4F16958, v15);
  sub_1C4410DFC(v16);
  v17 = sub_1C440C50C();
  sub_1C4420C3C(v17, v18, &qword_1C4F3B4F0);
  sub_1C43FF1B8();
  sub_1C44199B8();
  v21 = sub_1C4401CBC(v19, &qword_1EC0BF980, &qword_1C4F3B4F8, v20);
  v22 = sub_1C4434EE8(v21);
  sub_1C440F7CC(v22);
  sub_1C43FC4C4();
  sub_1C441CAC0(&qword_1EC0B84B8, &unk_1C4F0D4F0, *(v0 + 36));
  sub_1C44132F4();
  sub_1C43FE9F0();
}

uint64_t sub_1C493999C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v22 = a2;
  v6 = sub_1C456902C(&qword_1EC0BF950, &qword_1C4F3B4A0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = sub_1C456902C(&qword_1EC0BF958, &qword_1C4F3B4A8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_1C456902C(&qword_1EC0BF968, &unk_1C4F3B4D0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  *(a4 + 32) = 0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v16 = sub_1C456902C(&qword_1EC0BF970, &unk_1C4F3B6C0);
  v17 = v16[11];
  v18 = sub_1C456902C(&qword_1EC0BF960, &qword_1C4F3B4C8);
  sub_1C440BAA8(a4 + v17, 1, 1, v18);
  sub_1C4460050(a1, v12, &qword_1EC0BF958, &qword_1C4F3B4A8);
  (*(v7 + 16))(v9, v12, v6);
  sub_1C4401CBC(&qword_1EDDDB808, &qword_1EC0BF950, &qword_1C4F3B4A0, MEMORY[0x1E69E88C0]);
  sub_1C4F019A8();
  sub_1C4420C3C(a1, &qword_1EC0BF958, &qword_1C4F3B4A8);
  sub_1C4420C3C(v12, &qword_1EC0BF958, &qword_1C4F3B4A8);
  v24[3] = v13;
  v24[4] = sub_1C4401CBC(qword_1EDDDF790, &qword_1EC0BF968, &unk_1C4F3B4D0, &unk_1C4F28B68);
  v19 = sub_1C4422F90(v24);
  sub_1C44CD9E0(v15, v19, &qword_1EC0BF968, &unk_1C4F3B4D0);
  sub_1C493B1DC(v24, a4);
  result = sub_1C44CD9E0(v22, a4 + v16[9], &qword_1EC0B84B8, &unk_1C4F0D4F0);
  *(a4 + v16[10]) = v23;
  return result;
}

void sub_1C4939C98()
{
  sub_1C43FBD3C();
  sub_1C440AC8C(v1, v2, v3);
  sub_1C456902C(&qword_1EC0BAA48, &qword_1C4F16988);
  sub_1C44005F4();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440E3E8();
  v5 = sub_1C456902C(&qword_1EC0BF988, &qword_1C4F3B500);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0BF990, &qword_1C4F3B508);
  sub_1C4411E38();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C442CC10();
  sub_1C456902C(&qword_1EC0BF998, &unk_1C4F3B510);
  v8 = sub_1C4403354();
  v9 = type metadata accessor for SemanticLocationEvent(v8);
  v10 = sub_1C441FCCC(v9);
  sub_1C4460050(v10, v11, &qword_1EC0BF988, &qword_1C4F3B500);
  v12 = sub_1C44324E4();
  v13(v12);
  sub_1C4407150();
  v16 = sub_1C4401CBC(v14, &qword_1EC0BAA48, &qword_1C4F16988, v15);
  sub_1C4410DFC(v16);
  v17 = sub_1C440C50C();
  sub_1C4420C3C(v17, v18, &qword_1C4F3B500);
  sub_1C43FF1B8();
  sub_1C44199B8();
  v21 = sub_1C4401CBC(v19, &qword_1EC0BF990, &qword_1C4F3B508, v20);
  v22 = sub_1C4434EE8(v21);
  sub_1C440F7CC(v22);
  sub_1C43FC4C4();
  sub_1C441CAC0(&qword_1EC0B84B8, &unk_1C4F0D4F0, *(v0 + 36));
  sub_1C44132F4();
  sub_1C43FE9F0();
}

void sub_1C4939E80()
{
  sub_1C43FBD3C();
  sub_1C440AC8C(v1, v2, v3);
  sub_1C456902C(&qword_1EC0BAA88, &qword_1C4F16A90);
  sub_1C44005F4();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440E3E8();
  v5 = sub_1C456902C(&qword_1EC0BB2E8, &qword_1C4F1EBF8);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0BF9C8, &unk_1C4F3B5B0);
  sub_1C4411E38();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C442CC10();
  sub_1C456902C(&qword_1EC0BB2E0, &unk_1C4F1EBE8);
  v8 = sub_1C4403354();
  v9 = type metadata accessor for DeviceBluetoothEvent(v8);
  v10 = sub_1C441FCCC(v9);
  sub_1C4460050(v10, v11, &qword_1EC0BB2E8, &qword_1C4F1EBF8);
  v12 = sub_1C44324E4();
  v13(v12);
  sub_1C4407150();
  v16 = sub_1C4401CBC(v14, &qword_1EC0BAA88, &qword_1C4F16A90, v15);
  sub_1C4410DFC(v16);
  v17 = sub_1C440C50C();
  sub_1C4420C3C(v17, v18, &qword_1C4F1EBF8);
  sub_1C43FF1B8();
  sub_1C44199B8();
  v21 = sub_1C4401CBC(v19, &qword_1EC0BF9C8, &unk_1C4F3B5B0, v20);
  v22 = sub_1C4434EE8(v21);
  sub_1C440F7CC(v22);
  sub_1C43FC4C4();
  sub_1C441CAC0(&qword_1EC0B84B8, &unk_1C4F0D4F0, *(v0 + 36));
  sub_1C44132F4();
  sub_1C43FE9F0();
}

void sub_1C493A068()
{
  sub_1C43FBD3C();
  sub_1C440AC8C(v1, v2, v3);
  sub_1C456902C(&qword_1EC0BAA98, &unk_1C4F3B5C0);
  sub_1C44005F4();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440E3E8();
  v5 = sub_1C456902C(&qword_1EC0BB310, &qword_1C4F1EE08);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0BF9D0, &unk_1C4F3B5D0);
  sub_1C4411E38();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C442CC10();
  sub_1C456902C(&qword_1EC0BB308, &unk_1C4F1EDF8);
  v8 = sub_1C4403354();
  v9 = type metadata accessor for DevicePluggedInEvent(v8);
  v10 = sub_1C441FCCC(v9);
  sub_1C4460050(v10, v11, &qword_1EC0BB310, &qword_1C4F1EE08);
  v12 = sub_1C44324E4();
  v13(v12);
  sub_1C4407150();
  v16 = sub_1C4401CBC(v14, &qword_1EC0BAA98, &unk_1C4F3B5C0, v15);
  sub_1C4410DFC(v16);
  v17 = sub_1C440C50C();
  sub_1C4420C3C(v17, v18, &qword_1C4F1EE08);
  sub_1C43FF1B8();
  sub_1C44199B8();
  v21 = sub_1C4401CBC(v19, &qword_1EC0BF9D0, &unk_1C4F3B5D0, v20);
  v22 = sub_1C4434EE8(v21);
  sub_1C440F7CC(v22);
  sub_1C43FC4C4();
  sub_1C441CAC0(&qword_1EC0B84B8, &unk_1C4F0D4F0, *(v0 + 36));
  sub_1C44132F4();
  sub_1C43FE9F0();
}

void sub_1C493A250()
{
  sub_1C43FBD3C();
  sub_1C440AC8C(v1, v2, v3);
  sub_1C456902C(&qword_1EC0BAA58, &qword_1C4F169B0);
  sub_1C44005F4();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440E3E8();
  v5 = sub_1C456902C(&qword_1EC0BF9A0, &qword_1C4F3B520);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0BF9A8, &qword_1C4F3B528);
  sub_1C4411E38();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C442CC10();
  sub_1C456902C(&qword_1EC0BF9B0, &qword_1C4F3B530);
  v8 = sub_1C4403354();
  v9 = type metadata accessor for UserFocusComputedModeEvent(v8);
  v10 = sub_1C441FCCC(v9);
  sub_1C4460050(v10, v11, &qword_1EC0BF9A0, &qword_1C4F3B520);
  v12 = sub_1C44324E4();
  v13(v12);
  sub_1C4407150();
  v16 = sub_1C4401CBC(v14, &qword_1EC0BAA58, &qword_1C4F169B0, v15);
  sub_1C4410DFC(v16);
  v17 = sub_1C440C50C();
  sub_1C4420C3C(v17, v18, &qword_1C4F3B520);
  sub_1C43FF1B8();
  sub_1C44199B8();
  v21 = sub_1C4401CBC(v19, &qword_1EC0BF9A8, &qword_1C4F3B528, v20);
  v22 = sub_1C4434EE8(v21);
  sub_1C440F7CC(v22);
  sub_1C43FC4C4();
  sub_1C441CAC0(&qword_1EC0B84B8, &unk_1C4F0D4F0, *(v0 + 36));
  sub_1C44132F4();
  sub_1C43FE9F0();
}

void sub_1C493A438()
{
  sub_1C43FBD3C();
  sub_1C440AC8C(v1, v2, v3);
  sub_1C456902C(&qword_1EC0BAAA8, &qword_1C4F16AE0);
  sub_1C44005F4();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440E3E8();
  v5 = sub_1C456902C(&qword_1EC0BB338, &qword_1C4F1EFC8);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0BF9D8, &unk_1C4F3B5E0);
  sub_1C4411E38();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C442CC10();
  sub_1C456902C(&qword_1EC0BB330, &unk_1C4F1EFB8);
  v8 = sub_1C4403354();
  v9 = type metadata accessor for DeviceScreenLockEvent(v8);
  v10 = sub_1C441FCCC(v9);
  sub_1C4460050(v10, v11, &qword_1EC0BB338, &qword_1C4F1EFC8);
  v12 = sub_1C44324E4();
  v13(v12);
  sub_1C4407150();
  v16 = sub_1C4401CBC(v14, &qword_1EC0BAAA8, &qword_1C4F16AE0, v15);
  sub_1C4410DFC(v16);
  v17 = sub_1C440C50C();
  sub_1C4420C3C(v17, v18, &qword_1C4F1EFC8);
  sub_1C43FF1B8();
  sub_1C44199B8();
  v21 = sub_1C4401CBC(v19, &qword_1EC0BF9D8, &unk_1C4F3B5E0, v20);
  v22 = sub_1C4434EE8(v21);
  sub_1C440F7CC(v22);
  sub_1C43FC4C4();
  sub_1C441CAC0(&qword_1EC0B84B8, &unk_1C4F0D4F0, *(v0 + 36));
  sub_1C44132F4();
  sub_1C43FE9F0();
}

void sub_1C493A620()
{
  sub_1C43FBD3C();
  sub_1C440AC8C(v1, v2, v3);
  sub_1C456902C(&qword_1EC0BAA78, &unk_1C4F3B590);
  sub_1C44005F4();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440E3E8();
  v5 = sub_1C456902C(&qword_1EC0BB2C0, &qword_1C4F1EA08);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0BF9C0, &unk_1C4F3B5A0);
  sub_1C4411E38();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C442CC10();
  sub_1C456902C(&qword_1EC0BB2B8, &unk_1C4F1E9F8);
  v8 = sub_1C4403354();
  v9 = type metadata accessor for DeviceAirplaneModeEvent(v8);
  v10 = sub_1C441FCCC(v9);
  sub_1C4460050(v10, v11, &qword_1EC0BB2C0, &qword_1C4F1EA08);
  v12 = sub_1C44324E4();
  v13(v12);
  sub_1C4407150();
  v16 = sub_1C4401CBC(v14, &qword_1EC0BAA78, &unk_1C4F3B590, v15);
  sub_1C4410DFC(v16);
  v17 = sub_1C440C50C();
  sub_1C4420C3C(v17, v18, &qword_1C4F1EA08);
  sub_1C43FF1B8();
  sub_1C44199B8();
  v21 = sub_1C4401CBC(v19, &qword_1EC0BF9C0, &unk_1C4F3B5A0, v20);
  v22 = sub_1C4434EE8(v21);
  sub_1C440F7CC(v22);
  sub_1C43FC4C4();
  sub_1C441CAC0(&qword_1EC0B84B8, &unk_1C4F0D4F0, *(v0 + 36));
  sub_1C44132F4();
  sub_1C43FE9F0();
}

void sub_1C493A808()
{
  sub_1C43FBD3C();
  sub_1C440AC8C(v1, v2, v3);
  sub_1C456902C(&qword_1EC0BAAB8, &unk_1C4F3B5F0);
  sub_1C44005F4();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440E3E8();
  v5 = sub_1C456902C(&qword_1EC0BB358, &qword_1C4F1F0D8);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD64();
  sub_1C456902C(&qword_1EC0BF9E0, &qword_1C4F3B600);
  sub_1C4411E38();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C442CC10();
  sub_1C456902C(&qword_1EC0BB350, &unk_1C4F1F0C8);
  v8 = sub_1C4403354();
  v9 = type metadata accessor for DeviceWiFiConnectedEvent(v8);
  v10 = sub_1C441FCCC(v9);
  sub_1C4460050(v10, v11, &qword_1EC0BB358, &qword_1C4F1F0D8);
  v12 = sub_1C44324E4();
  v13(v12);
  sub_1C4407150();
  v16 = sub_1C4401CBC(v14, &qword_1EC0BAAB8, &unk_1C4F3B5F0, v15);
  sub_1C4410DFC(v16);
  v17 = sub_1C440C50C();
  sub_1C4420C3C(v17, v18, &qword_1C4F1F0D8);
  sub_1C43FF1B8();
  sub_1C44199B8();
  v21 = sub_1C4401CBC(v19, &qword_1EC0BF9E0, &qword_1C4F3B600, v20);
  v22 = sub_1C4434EE8(v21);
  sub_1C440F7CC(v22);
  sub_1C43FC4C4();
  sub_1C441CAC0(&qword_1EC0B84B8, &unk_1C4F0D4F0, *(v0 + 36));
  sub_1C44132F4();
  sub_1C43FE9F0();
}

uint64_t sub_1C493A9F0(char a1, double a2)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001C4F9AFB0;
  v5 = qword_1C4F3B608[a1];
  v6 = objc_opt_self();
  *(inited + 48) = [v6 featureValueWithInt64_];
  *(inited + 56) = 0xD000000000000016;
  *(inited + 64) = 0x80000001C4F9B310;
  *(inited + 72) = [v6 featureValueWithDouble_];
  sub_1C4577DBC();
  return sub_1C4F00F28();
}

void sub_1C493AB28(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  sub_1C456902C(&qword_1EC0B84B8, &unk_1C4F0D4F0);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v27 - v5;
  v29 = sub_1C456902C(&qword_1EC0B8600, &unk_1C4F0D4E0);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1C456902C(&qword_1EC0BF950, &qword_1C4F3B4A0);
  v27 = *(v7 - 8);
  v28 = v7;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - v9;
  v11 = sub_1C456902C(&qword_1EC0BF958, &qword_1C4F3B4A8);
  v12 = sub_1C43FBD18(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v31 = v2;
  v18 = *(v2 + 32);
  sub_1C4EF9AD8();
  v19 = sub_1C4F019C8();
  sub_1C4EF9AD8();
  v20 = sub_1C4F019C8();
  v21 = [v18 publisherWithStartTime:v19 endTime:v20 maxEvents:0 reversed:0];

  v22 = v21;
  sub_1C456902C(&qword_1EC0B8608, &qword_1C4F3B4B0);
  v23 = v33;
  sub_1C4EFFC38();
  if (v23)
  {
  }

  else
  {
    v24 = v31;

    sub_1C456902C(&qword_1EC0BF960, &qword_1C4F3B4C8);
    sub_1C4401CBC(&qword_1EDDEFF38, &qword_1EC0B8600, &unk_1C4F0D4E0, MEMORY[0x1E69A9B60]);
    sub_1C4F02848();
    (*(v27 + 32))(v17, v10, v28);
    sub_1C4460050(v17, v14, &qword_1EC0BF958, &qword_1C4F3B4A8);
    v25 = a1;
    v26 = v30;
    sub_1C4460050(v25, v30, &qword_1EC0B84B8, &unk_1C4F0D4F0);
    sub_1C493999C(v14, v26, *(v24 + 41), v32);

    sub_1C4420C3C(v17, &qword_1EC0BF958, &qword_1C4F3B4A8);
  }
}

uint64_t sub_1C493AEA8(uint64_t a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1C493AED0, 0, 0);
}

uint64_t sub_1C493AED0()
{
  v1 = [*(v0 + 32) eventBody];
  if (v1)
  {
    v2 = v1;
    if (*(*(v0 + 24) + 40))
    {
      [v1 confidenceScore];
      if (v3 < 0.7)
      {
        v4 = *(v0 + 16);
        v5 = sub_1C456902C(&qword_1EC0BF960, &qword_1C4F3B4C8);
        sub_1C440BAA8(v4, 1, 1, v5);

        goto LABEL_12;
      }
    }

    v6 = *(v0 + 16);
    [*(v0 + 32) timestamp];
    sub_1C4EF9AC8();
    v7 = [v2 isStart];
    v8 = sub_1C493B4B0([v2 modeType]);
    [v2 confidenceScore];
    v10 = v9;

    v11 = sub_1C456902C(&qword_1EC0BF960, &qword_1C4F3B4C8);
    v12 = v6 + *(v11 + 32);
    *v12 = v8;
    *(v12 + 8) = v10;
    *(v6 + *(v11 + 28)) = v7;
    v13 = v6;
    v14 = 0;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v15 = sub_1C4F00978();
    sub_1C442B738(v15, qword_1EDDFECB8);
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CF8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1C43F8000, v16, v17, "Unable to parse eventBody from read event in inferred mode featurizer", v18, 2u);
      MEMORY[0x1C6942830](v18, -1, -1);
    }

    v19 = *(v0 + 16);

    v11 = sub_1C456902C(&qword_1EC0BF960, &qword_1C4F3B4C8);
    v13 = v19;
    v14 = 1;
  }

  sub_1C440BAA8(v13, v14, 1, v11);
LABEL_12:
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1C493B130(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C44A7DA0;

  return sub_1C493AEA8(a1, a2, v2);
}

uint64_t sub_1C493B1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF978, &unk_1C4F3B4E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for InferredModeContent(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xEF && a1[16])
    {
      v2 = *a1 + 238;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 0x12;
      v2 = v3 - 18;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for InferredModeContent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xEE)
  {
    *result = a2 - 239;
    *(result + 8) = 0;
    if (a3 >= 0xEF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xEF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 17;
    }
  }

  return result;
}

void sub_1C493B2F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C456902C(&qword_1EC0BF970, &unk_1C4F3B6C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v8 - v6;
  sub_1C493AB28(a1, v8 - v6);
  if (!v2)
  {
    sub_1C493B3C8(v7, a2);
  }
}

uint64_t sub_1C493B3C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BF970, &unk_1C4F3B6C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C493B438()
{
  result = qword_1EDDDC4A8[0];
  if (!qword_1EDDDC4A8[0])
  {
    sub_1C4572308(&qword_1EC0BF9E8, &unk_1C4F3B6D0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDDC4A8);
  }

  return result;
}

unint64_t sub_1C493B4B0(unint64_t a1)
{
  v1 = a1;
  if (a1 >= 0x11)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v2 = sub_1C4F00978();
    sub_1C442B738(v2, qword_1EDDFECB8);
    v3 = sub_1C4F00968();
    v4 = sub_1C4F01CE8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 134217984;
      *(v5 + 4) = v1;
      _os_log_impl(&dword_1C43F8000, v3, v4, "Unknown BMInferredModeType with value: %lu", v5, 0xCu);
      MEMORY[0x1C6942830](v5, -1, -1);
    }

    return 17;
  }

  return v1;
}

uint64_t sub_1C493B598(uint64_t a1)
{
  if ((a1 + 1) > 0x11)
  {
    return 18;
  }

  else
  {
    return byte_1C4F3B87A[a1 + 1];
  }
}

uint64_t sub_1C493B5E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C493B598(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C493B60C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C493B49C(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1C493B648(char a1, char a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0x3FE6666666666666;
  *(v2 + 32) = [objc_allocWithZone(MEMORY[0x1E698F2A8]) init];
  *(v2 + 40) = a1;
  *(v2 + 41) = a2;
  return v2;
}

uint64_t sub_1C493B714()
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1C44CD9C0(0, 1, 0);
  v0 = v5;
  v2 = *(v5 + 16);
  v1 = *(v5 + 24);
  if (v2 >= v1 >> 1)
  {
    sub_1C44CD9C0(v1 > 1, v2 + 1, 1);
    v0 = v5;
  }

  *(v0 + 16) = v2 + 1;
  v3 = v0 + 16 * v2;
  strcpy((v3 + 32), "inferred_mode");
  *(v3 + 46) = -4864;

  return sub_1C4499940();
}

uint64_t sub_1C493B7D0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1C493B828(v1, &v4);
  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t sub_1C493B828@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  sub_1C4EF9AD8();
  v5 = sub_1C4F019C8();
  sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
  v6 = sub_1C4F01EC8();
  v7 = sub_1C4F01EC8();
  v8 = [v4 publisherWithStartTime:0 endTime:v5 maxEvents:v6 lastN:v7 reversed:0];

  v22 = sub_1C493C668;
  v23 = a1;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1C45AF9C8;
  v21 = &unk_1F43F0500;
  v9 = _Block_copy(&v18);

  v10 = [v8 filterWithIsIncluded_];
  _Block_release(v9);

  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v22 = nullsub_1;
  v23 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1C44405F8;
  v21 = &unk_1F43F0550;
  v12 = _Block_copy(&v18);
  v22 = sub_1C493C670;
  v23 = v11;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1C4440590;
  v21 = &unk_1F43F0578;
  v13 = _Block_copy(&v18);

  v14 = [v10 sinkWithCompletion:v12 receiveInput:v13];

  _Block_release(v13);
  _Block_release(v12);

  swift_beginAccess();
  v15 = *(v11 + 16);
  *a2 = v15;
  v16 = v15;
}

BOOL sub_1C493BAE4(void *a1)
{
  v1 = [a1 eventBody];
  if (v1)
  {
    v2 = v1;
    [v1 confidenceScore];
    v4 = v3;

    return v4 >= 0.7;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CF8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C43F8000, v7, v8, "Unable to parse eventBody from read event in inferred mode featurizer", v9, 2u);
      MEMORY[0x1C6942830](v9, -1, -1);
    }

    return 0;
  }
}

void sub_1C493BC0C(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v6 = sub_1C4F00978();
    sub_1C442B738(v6, qword_1EDDFECB8);
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, oslog, v7, "Unable to parse eventBody from read event in inferred mode featurizer", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }
  }
}

uint64_t sub_1C493BD44(void *a1)
{
  sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);
  v2 = sub_1C4F00F28();
  v3 = qword_1C4F3B890[sub_1C493B4B0([a1 modeType])];
  if ([objc_opt_self() featureValueWithInt64_])
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_1C4660314();
  }

  else
  {
    v4 = sub_1C445FAA8(0x6465727265666E69, 0xED000065646F6D5FLL);
    if (v5)
    {
      v6 = v4;
      swift_isUniquelyReferenced_nonNull_native();
      sub_1C456902C(&qword_1EC0BCCA0, &qword_1C4F0E300);
      sub_1C4F02458();

      v7 = *(*(v2 + 56) + 8 * v6);
      sub_1C4F02478();
    }
  }

  return v2;
}

uint64_t sub_1C493BEEC(uint64_t a1)
{
  v1 = sub_1C493B7D0(a1);
  if (v1)
  {
    v2 = v1;
    v3 = sub_1C493BD44(v1);

    return v3;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88(&qword_1EDDFECB0);
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDDFECB8);
    v6 = sub_1C4F00968();
    v7 = sub_1C4F01CF8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1C43F8000, v6, v7, "InferredModeEvent is nil", v8, 2u);
      MEMORY[0x1C6942830](v8, -1, -1);
    }

    sub_1C4461BB8(0, &qword_1EDDF0540, 0x1E695FE60);

    return sub_1C4F00F28();
  }
}

void sub_1C493C024(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v34 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  type metadata accessor for FeatureProviderSnapshot(0);
  sub_1C43FCDF8();
  v32 = v14;
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = *(a2 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v29 = a3;
    v37 = MEMORY[0x1E69E7CC0];
    v36 = v17;
    sub_1C459D0A8();
    v20 = v36;
    v19 = v37;
    v22 = *(v8 + 16);
    v21 = v8 + 16;
    v23 = a2 + ((*(v21 + 64) + 32) & ~*(v21 + 64));
    v30 = *(v21 + 56);
    v31 = v22;
    do
    {
      v31(v12, v23, v34);
      v31(v20, v12, v34);
      v24 = sub_1C493BEEC(v12);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v25 = v4;
      sub_1C493C678(v24, a1);

      sub_1C465CF34();
      v27 = v26;
      v20 = v36;

      (*(v21 - 8))(v12, v34);
      *(v36 + *(v33 + 20)) = v27;
      v28 = *(v37 + 16);
      if (v28 >= *(v37 + 24) >> 1)
      {
        sub_1C459D0A8();
        v20 = v36;
      }

      *(v37 + 16) = v28 + 1;
      sub_1C4586A54(v20, v37 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v28);
      v23 += v30;
      --v18;
      v4 = v25;
    }

    while (v18);
    a3 = v29;
  }

  *a3 = v19;
}

uint64_t sub_1C493C2D8()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EF9C88();
  v7 = sub_1C493BEEC(v6);
  (*(v2 + 8))(v6, v0);
  return v7;
}

uint64_t sub_1C493C394(uint64_t a1)
{
  v2 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9C88();
  sub_1C493BEEC(v8);
  (*(v4 + 8))(v8, v2);
  v9 = sub_1C44F9274(a1);

  return v9;
}

uint64_t sub_1C493C518()
{
  sub_1C493C4F0();

  return swift_deallocClassInstance();
}

unint64_t sub_1C493C5EC(uint64_t a1)
{
  result = sub_1C493C614();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C493C614()
{
  result = qword_1EC0BF9F0;
  if (!qword_1EC0BF9F0)
  {
    type metadata accessor for InferredModeSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BF9F0);
  }

  return result;
}

_BYTE *sub_1C493C678(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v16, v7, v4, a2);
      MEMORY[0x1C6942830](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v17 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2, v10, v11, v12, v13);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v14;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t getEnumTagSinglePayload for InferredModeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}