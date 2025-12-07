void sub_258AA1F5C()
{
  if (!qword_27F96C870)
  {
    v0 = sub_258B030C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C870);
    }
  }
}

void sub_258AA1FAC(uint64_t a1)
{
  if (!qword_27F970980)
  {
    sub_258AA1BA8(255, &qword_27F970968, sub_258AA1E38, type metadata accessor for LoggingFlowBlendMode, MEMORY[0x277CDFAB8]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970980);
    }
  }
}

uint64_t sub_258AA2050(uint64_t a1, uint64_t a2)
{
  sub_258AA1BA8(0, &qword_27F970968, sub_258AA1E38, type metadata accessor for LoggingFlowBlendMode, MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AA20F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258AA2160(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_258B00974();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258AA21CC(uint64_t a1)
{
  if (!qword_27F970990)
  {
    sub_258AA1FAC(255);
    sub_258AA1C48(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970990);
    }
  }
}

void sub_258AA2270(void *a1, __n128 a2)
{
  v3 = 0;
  v4 = *(v2 + 16);
  v5 = qword_258B33210[v4];
  v6 = v4 >= 2;
  v7 = 3;
  v83 = 116 * *(v2 + 16) + 128;
  if (v6)
  {
    v7 = 4;
  }

  v85 = v7 + 2 * v5;
  v86 = v5 - 1;
  v8 = (v5 - 1);
  v91 = v7;
  v9 = (v7 + 1);
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F90];
LABEL_6:
  v13 = 0;
  v87 = v3 + 1;
  v92 = v3;
  a2.n128_f32[0] = ((v3 / v83) * 3.1416) + ((v3 / v83) * 3.1416);
  v88 = a2;
  *&v14 = a2.n128_u64[0];
  *(&v14 + 1) = COERCE_UNSIGNED_INT(-1.0);
  v89 = v14;
  while (1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_258A7502C(0, *(v10 + 2) + 1, 1, v10);
    }

    v16 = *(v10 + 2);
    v15 = *(v10 + 3);
    if (v16 >= v15 >> 1)
    {
      v10 = sub_258A7502C((v15 > 1), v16 + 1, 1, v10);
    }

    v17 = v89;
    *(&v17 + 1) = v13 / v8;
    *(v10 + 2) = v16 + 1;
    v18 = &v10[32 * v16];
    *(v18 + 2) = v17;
    *(v18 + 12) = 0;
    v19 = sub_258AA29D0(v3, v13);
    v20 = *(v19 + 16);
    v21 = *(v11 + 2);
    v22 = v21 + v20;
    if (__OFADD__(v21, v20))
    {
      break;
    }

    v23 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v22 <= *(v11 + 3) >> 1)
    {
      if (*(v23 + 16))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v21 <= v22)
      {
        v25 = v21 + v20;
      }

      else
      {
        v25 = v21;
      }

      v11 = sub_258A74F10(isUniquelyReferenced_nonNull_native, v25, 1, v11);
      if (*(v23 + 16))
      {
LABEL_22:
        v26 = *(v11 + 2);
        if ((*(v11 + 3) >> 1) - v26 < v20)
        {
          goto LABEL_96;
        }

        memcpy(&v11[4 * v26 + 32], (v23 + 32), 4 * v20);

        if (v20)
        {
          v27 = *(v11 + 2);
          v28 = __OFADD__(v27, v20);
          v29 = v27 + v20;
          if (v28)
          {
            goto LABEL_99;
          }

          *(v11 + 2) = v29;
        }

        goto LABEL_8;
      }
    }

    if (v20)
    {
      goto LABEL_89;
    }

LABEL_8:
    if (v5 == ++v13)
    {
      v30 = 0;
      v31 = v88;
      v31.n128_u32[1] = 1.0;
      v31.n128_u32[3] = 0;
      v90 = v31;
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_258A7502C(0, *(v10 + 2) + 1, 1, v10);
        }

        v33 = *(v10 + 2);
        v32 = *(v10 + 3);
        if (v33 >= v32 >> 1)
        {
          v10 = sub_258A7502C((v32 > 1), v33 + 1, 1, v10);
        }

        v34 = v30 + 1;
        v35 = v90;
        v35.n128_f32[2] = ((v30 + 1) / v9) + -1.0;
        *(v10 + 2) = v33 + 1;
        v36 = &v10[32 * v33];
        *(v36 + 2) = v35;
        *(v36 + 12) = 1065353216;
        if (__OFADD__(v30, v5))
        {
          goto LABEL_90;
        }

        v37 = sub_258AA29D0(v3, v30 + v5);
        v38 = *(v37 + 16);
        v39 = *(v11 + 2);
        v40 = v39 + v38;
        if (__OFADD__(v39, v38))
        {
          goto LABEL_91;
        }

        v41 = v37;
        v42 = swift_isUniquelyReferenced_nonNull_native();
        if (v42 && v40 <= *(v11 + 3) >> 1)
        {
          if (*(v41 + 16))
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v39 <= v40)
          {
            v43 = v39 + v38;
          }

          else
          {
            v43 = v39;
          }

          v11 = sub_258A74F10(v42, v43, 1, v11);
          if (*(v41 + 16))
          {
LABEL_43:
            v44 = *(v11 + 2);
            if ((*(v11 + 3) >> 1) - v44 < v38)
            {
              goto LABEL_97;
            }

            memcpy(&v11[4 * v44 + 32], (v41 + 32), 4 * v38);

            if (v38)
            {
              v45 = *(v11 + 2);
              v28 = __OFADD__(v45, v38);
              v46 = v45 + v38;
              if (v28)
              {
                goto LABEL_100;
              }

              *(v11 + 2) = v46;
            }

            goto LABEL_28;
          }
        }

        if (v38)
        {
          goto LABEL_92;
        }

LABEL_28:
        v30 = v34;
        if (v91 == v34)
        {
          v47 = v5;
          v48 = v86;
          while (1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v10 = sub_258A7502C(0, *(v10 + 2) + 1, 1, v10);
            }

            v50 = *(v10 + 2);
            v49 = *(v10 + 3);
            if (v50 >= v49 >> 1)
            {
              v10 = sub_258A7502C((v49 > 1), v50 + 1, 1, v10);
            }

            v51 = v88.n128_u32[0];
            *(&v51 + 1) = v48 / v8;
            *(v10 + 2) = v50 + 1;
            v52 = &v10[32 * v50];
            *(v52 + 2) = v51;
            *(v52 + 12) = 0;
            if (__OFADD__(v47, v91))
            {
              goto LABEL_93;
            }

            v53 = v5;
            v54 = sub_258AA29D0(v92, v47 + v91);
            v55 = *(v54 + 16);
            v56 = *(v11 + 2);
            v57 = v56 + v55;
            if (__OFADD__(v56, v55))
            {
              goto LABEL_94;
            }

            v58 = v54;
            v59 = swift_isUniquelyReferenced_nonNull_native();
            if (!v59 || v57 > *(v11 + 3) >> 1)
            {
              if (v56 <= v57)
              {
                v60 = v56 + v55;
              }

              else
              {
                v60 = v56;
              }

              v11 = sub_258A74F10(v59, v60, 1, v11);
            }

            v5 = v53;
            if (*(v58 + 16))
            {
              v61 = *(v11 + 2);
              if ((*(v11 + 3) >> 1) - v61 < v55)
              {
                goto LABEL_98;
              }

              memcpy(&v11[4 * v61 + 32], (v58 + 32), 4 * v55);

              if (v55)
              {
                v62 = *(v11 + 2);
                v28 = __OFADD__(v62, v55);
                v63 = v62 + v55;
                if (v28)
                {
                  goto LABEL_101;
                }

                *(v11 + 2) = v63;
              }
            }

            else
            {

              if (v55)
              {
                goto LABEL_95;
              }
            }

            --v48;
            ++v47;
            if (v48 == -1)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v10 = sub_258A7502C(0, *(v10 + 2) + 1, 1, v10);
              }

              v65 = *(v10 + 2);
              v64 = *(v10 + 3);
              if (v65 >= v64 >> 1)
              {
                v10 = sub_258A7502C((v64 > 1), v65 + 1, 1, v10);
              }

              *&v66 = v88.n128_u32[0];
              *(&v66 + 1) = COERCE_UNSIGNED_INT(0.5);
              *(v10 + 2) = v65 + 1;
              v67 = &v10[32 * v65 + 32];
              *v67 = v66;
              *(v67 + 16) = -1082130432;
              v68 = sub_258AA29D0(v92, v85);
              v69 = *(v68 + 16);
              v70 = *(v11 + 2);
              v71 = v70 + v69;
              if (__OFADD__(v70, v69))
              {
                goto LABEL_102;
              }

              v72 = v68;
              v73 = swift_isUniquelyReferenced_nonNull_native();
              if (!v73 || v71 > *(v11 + 3) >> 1)
              {
                if (v70 <= v71)
                {
                  v74 = v70 + v69;
                }

                else
                {
                  v74 = v70;
                }

                v11 = sub_258A74F10(v73, v74, 1, v11);
              }

              v5 = v53;
              if (*(v72 + 16))
              {
                v75 = *(v11 + 2);
                if ((*(v11 + 3) >> 1) - v75 < v69)
                {
                  goto LABEL_104;
                }

                memcpy(&v11[4 * v75 + 32], (v72 + 32), 4 * v69);

                v12 = a1;
                v3 = v87;
                if (v69)
                {
                  v76 = *(v11 + 2);
                  v28 = __OFADD__(v76, v69);
                  v77 = v76 + v69;
                  if (v28)
                  {
                    goto LABEL_105;
                  }

                  *(v11 + 2) = v77;
                }
              }

              else
              {

                v12 = a1;
                v3 = v87;
                if (v69)
                {
                  goto LABEL_103;
                }
              }

              if (v3 != v83)
              {
                goto LABEL_6;
              }

              v78 = *(v10 + 2);
              *(v2 + 48) = v78;
              *(v2 + 56) = *(v11 + 2);
              if (!(v78 >> 58))
              {
                v79 = v12;
                v80 = [v12 newBufferWithBytes:v10 + 32 length:32 * v78 options:0];

                *(v2 + 64) = v80;
                swift_unknownObjectRelease();
                v81 = *(v2 + 56);
                if ((v81 - 0x2000000000000000) >> 62 != 3)
                {
                  goto LABEL_107;
                }

                v82 = [v79 newBufferWithBytes:v11 + 32 length:4 * v81 options:0];

                *(v2 + 72) = v82;

                swift_unknownObjectRelease();
                return;
              }

              goto LABEL_106;
            }
          }
        }
      }
    }
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
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
}

uint64_t sub_258AA29D0(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = 4;
  if (v3 >= 2)
  {
    v4 = 5;
  }

  v5 = v4 + qword_258B33228[v3];
  v6 = result * v5;
  if ((result * v5) >> 64 != (result * v5) >> 63)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = v6 + a2;
  if (__OFADD__(v6, a2))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v8 % v5;
  v10 = v6 + v8 % v5;
  if (__OFADD__(v6, v8 % v5))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(result, 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = (result + 1) % (116 * v3 + 128) * v5;
  v12 = v11 + a2;
  if (__OFADD__(v11, a2))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_258A38584();
  result = swift_allocObject();
  *(result + 16) = xmmword_258B2FB80;
  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(result + 32) = v7;
  if ((v10 & 0x8000000000000000) != 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (HIDWORD(v10))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = v11 + v9;
  *(result + 36) = v10;
  if (v11 + v9 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  *(result + 40) = v13;
  *(result + 44) = v7;
  *(result + 48) = v13;
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!HIDWORD(v12))
  {
    *(result + 52) = v12;
    return result;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_258AA2B0C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_258AA2B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F9709B0;
  if (!qword_27F9709B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F9709B0);
  }

  return result;
}

id sub_258AA2BD8()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD7090]) init];
  v1 = [v0 attributes];
  v2 = [v0 layouts];
  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  [result setFormat_];

  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  [result setOffset_];

  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  [result setBufferIndex_];

  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = result;
  [result setFormat_];

  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  [result setOffset_];

  result = [v1 objectAtIndexedSubscript_];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = result;
  [result setBufferIndex_];

  result = [v2 objectAtIndexedSubscript_];
  if (result)
  {
    v10 = result;
    [result setStride_];

    return v0;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *StateOfMindOverlayRoomViewController.init(displayDate:applicationItems:factorDisplayTypes:sleepChartFormatter:addDataViewControllerProvider:preferredOverlay:)(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v31 = a6;
  ObjectType = swift_getObjectType();
  sub_258AA98A8(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - v14;
  *&v7[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_preferredOverlayContextLocation] = 0;
  *&v7[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_sleepChartFormatter] = a4;
  *&v7[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_addDataViewControllerProvider] = a5;
  sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
  v29 = a4;
  swift_unknownObjectRetain();
  sub_258ADEBAC(a2, 0, 0);
  *&v7[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_stateOfMindInteractiveChartDisplayType] = v16;
  sub_258ADEBAC(a2, 0, 1);
  *&v7[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_stateOfMindInteractiveChartDisplayTypeWithLegend] = v17;
  sub_258A312AC(a1, v15);
  v18 = sub_258B00084();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v15, 1, v18) != 1)
  {
    v20 = sub_258B00014();
    (*(v19 + 8))(v15, v18);
  }

  if (a3)
  {
    v21 = sub_258B02C64();
  }

  else
  {
    v21 = 0;
  }

  v22 = type metadata accessor for StateOfMindOverlayRoomViewController();
  v32.receiver = v7;
  v32.super_class = v22;
  v23 = objc_msgSendSuper2(&v32, sel_initWithDisplayDate_applicationItems_factorDisplayTypes_mode_, v20, a2, v21, 3);

  v24 = v23;
  v25 = static StateOfMindOverlayRoomViewController.stateOfMindContextLocation(for:)(v31);

  swift_unknownObjectRelease();
  sub_258A2A66C(a1);
  v26 = *&v24[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_preferredOverlayContextLocation];
  *&v24[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_preferredOverlayContextLocation] = v25;

  return v24;
}

id static StateOfMindOverlayRoomViewController.stateOfMindContextLocation(for:)(uint64_t a1)
{
  v1 = sub_258B00384();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B02FA4();
  result = 0;
  if ((v7 & 1) == 0)
  {
    type metadata accessor for StateOfMindOverlayRoomViewController();
    v8 = static StateOfMindOverlayRoomViewController.supportedStateOfMindDomainContexts()();
    v9 = *(v8 + 2);
    if (v9)
    {
      v10 = 0;
      while (*&v8[8 * v10 + 32] != v5)
      {
        if (v9 == ++v10)
        {
          goto LABEL_6;
        }
      }

      return [objc_allocWithZone(MEMORY[0x277D129D0]) initWithContainerIndex:1 sectionIndex:0 itemIndex:v10];
    }

    else
    {
LABEL_6:

      sub_258B00364();
      v11 = sub_258B00374();
      v12 = sub_258B02E84();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v19 = v14;
        *v13 = 136446466;
        v15 = sub_258B035A4();
        v17 = sub_2589F1F78(v15, v16, &v19);

        *(v13 + 4) = v17;
        *(v13 + 12) = 2048;
        *(v13 + 14) = v5;
        _os_log_impl(&dword_2589A1000, v11, v12, "[%{public}s] Asked to create context location for unsupported domain: %ld", v13, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x259C945C0](v14, -1, -1);
        MEMORY[0x259C945C0](v13, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      return 0;
    }
  }

  return result;
}

id sub_258AA36CC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_258B00384();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v6 = sub_258B00374();
  v7 = sub_258B02EA4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    v10 = sub_258B035A4();
    v12 = sub_2589F1F78(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2589A1000, v6, v7, "[%{public}s] View did load", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x259C945C0](v9, -1, -1);
    MEMORY[0x259C945C0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = type metadata accessor for StateOfMindOverlayRoomViewController();
  v17.receiver = v1;
  v17.super_class = v13;
  return objc_msgSendSuper2(&v17, sel_viewDidLoad);
}

id sub_258AA396C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_258B00384();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AA98A8(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v57 - v7;
  sub_258AA98A8(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v57 - v10;
  v12 = [v1 primaryDisplayType];
  if (v12)
  {
    v13 = v12;
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v16 = v13;
      v17 = [v15 baseDisplayType];
      if (v17)
      {
        v18 = v17;
        v64 = [v17 hk_interactiveChartOptions];
      }

      else
      {

        v64 = 0;
      }
    }

    else
    {
      v64 = [v13 hk_interactiveChartOptions];
    }

    v62 = [v1 additionalChartOptions];
    v29 = [v1 applicationItems];
    v65 = [v29 healthStore];

    v30 = [v1 applicationItems];
    v63 = [v30 unitController];

    v31 = [v1 applicationItems];
    v61 = [v31 dateCache];

    v32 = [v1 applicationItems];
    v60 = [v32 chartDataCacheController];

    v33 = [v1 applicationItems];
    v59 = [v33 timeScopeController];

    v34 = [v1 applicationItems];
    v58 = [v34 sampleDateRangeController];

    v35 = [v1 displayDate];
    if (v35)
    {
      v36 = v35;
      sub_258B00034();

      v37 = sub_258B00084();
      (*(*(v37 - 8) + 56))(v11, 0, 1, v37);
    }

    else
    {
      v37 = sub_258B00084();
      (*(*(v37 - 8) + 56))(v11, 1, 1, v37);
    }

    v38 = sub_258B00224();
    v39 = *(v38 - 8);
    (*(v39 + 56))(v8, 1, 1, v38);
    sub_258B00084();
    v40 = *(v37 - 8);
    v41 = (*(v40 + 48))(v11, 1, v37);
    v42 = v13;
    v43 = 0;
    if (v41 != 1)
    {
      v43 = sub_258B00014();
      (*(v40 + 8))(v11, v37);
    }

    v44 = v62 | v64;
    v45 = (*(v39 + 48))(v8, 1, v38);
    v57 = v1;
    if (v45 == 1)
    {
      v46 = 0;
    }

    else
    {
      v46 = sub_258B00194();
      (*(v39 + 8))(v8, v38);
    }

    v47 = objc_allocWithZone(type metadata accessor for StateOfMindChartViewController());
    v56 = v44;
    v48 = v58;
    v49 = v65;
    v50 = v63;
    v52 = v60;
    v51 = v61;
    v53 = v59;
    v54 = [v47 initWithHealthStore:v65 primaryDisplayType:v42 unitPreferenceController:v63 dateCache:v61 chartDataCacheController:v60 selectedTimeScopeController:v59 sampleTypeDateRangeController:v58 initialXValue:v43 currentCalendarOverride:v46 options:v56];

    v55 = v54;
    [v55 setCurrentOverlayLocationProvider_];

    return v55;
  }

  else
  {
    sub_258B00364();
    v19 = sub_258B00374();
    v20 = sub_258B02E94();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v66 = v22;
      *v21 = 136446210;
      v23 = sub_258B035A4();
      v25 = sub_2589F1F78(v23, v24, &v66);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2589A1000, v19, v20, "[%{public}s] Asked to create chart overlay without a display type", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x259C945C0](v22, -1, -1);
      MEMORY[0x259C945C0](v21, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v26 = type metadata accessor for StateOfMindOverlayRoomViewController();
    v67.receiver = v1;
    v67.super_class = v26;
    v27 = objc_msgSendSuper2(&v67, sel_createChartOverlayViewController);

    return v27;
  }
}

id sub_258AA41A8(uint64_t a1, uint64_t a2)
{
  if (a1 != 3)
  {
    return 0;
  }

  result = *(v2 + OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_preferredOverlayContextLocation);
  if (result)
  {
    *(v2 + OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_preferredOverlayContextLocation) = 0;
    return result;
  }

  if (a2 == 2)
  {
    return [objc_allocWithZone(MEMORY[0x277D129D0]) initWithContainerIndex:2 sectionIndex:0 itemIndex:0];
  }

  else
  {
    return 0;
  }
}

double sub_258AA43A0(void *a1)
{
  sub_258AA98A8(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v107 = v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v106 = v97 - v6;
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v101 = qword_27F97ABA0;
  v102 = qword_27F97AB98;
  v103 = qword_27F97AB90;
  v7 = sub_258AFFD94();
  v110 = v8;
  v111 = v7;
  sub_258A0032C(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v100 = v9;
  v109 = swift_allocObject();
  v99 = xmmword_258B2E600;
  *(v109 + 16) = xmmword_258B2E600;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_258B2F490;
  v11 = [v1 applicationItems];
  v112 = sub_2589F4488(0, &unk_27F970A60, 0x277D12900);
  sub_258AFFD94();
  v12 = sub_258B03064();

  v13 = type metadata accessor for StateOfMindSampleCountContext();
  v14 = objc_allocWithZone(v13);
  v105 = v1;
  v15 = OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem;
  *&v14[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem] = 0;
  v16 = &v14[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_];
  *v16 = 0x6E6152796C696144;
  *(v16 + 1) = 0xEA00000000006567;
  *&v14[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController] = a1;
  sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
  v17 = a1;
  sub_258ADEBAC(v11, v12, 0);
  *&v14[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType] = v18;
  *&v14[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayPredicate] = v12;
  v19 = *&v14[v15];
  *&v14[v15] = 0;
  v20 = v12;

  v21 = type metadata accessor for StateOfMindOverlayContext();
  v115.receiver = v14;
  v115.super_class = v21;
  v22 = objc_msgSendSuper2(&v115, sel_init);

  *(v10 + 32) = v22;
  v23 = [v105 applicationItems];
  sub_258AFFD94();
  v24 = sub_258B03064();

  v25 = objc_allocWithZone(v13);
  v26 = OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem;
  *&v25[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem] = 0;
  v27 = &v25[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_];
  strcpy(&v25[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_], "MomentaryRange");
  v27[15] = -18;
  *&v25[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController] = v17;
  v112 = v17;
  sub_258ADEBAC(v23, v24, 0);
  *&v25[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType] = v28;
  *&v25[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayPredicate] = v24;
  v29 = *&v25[v26];
  *&v25[v26] = 0;
  v30 = v24;

  v114.receiver = v25;
  v114.super_class = v21;
  v31 = v105;
  v32 = objc_msgSendSuper2(&v114, sel_init);

  *(v10 + 40) = v32;
  v33 = objc_allocWithZone(MEMORY[0x277D129D8]);
  v34 = sub_258A9A2EC(0, &qword_27F970A78, &protocolRef_HKOverlayContext);
  v35 = sub_258B02C64();

  v36 = [v33 initWithSectionTitle:0 overlayContextItems:v35];

  *(v109 + 32) = v36;
  v37 = objc_allocWithZone(MEMORY[0x277D129E0]);
  v38 = sub_258B02AD4();

  v39 = sub_2589F4488(0, &qword_27F970A80, 0x277D129D8);
  v40 = sub_258B02C64();

  v41 = &property descriptor for StateOfMindEntryModel.valence;
  v98 = [v37 initWithContainerTitle:v38 overlayContextSections:v40];

  v95 = 0xE000000000000000;
  sub_258AFFD94();
  v42 = swift_allocObject();
  *(v42 + 16) = v99;
  sub_258AA5940(v112);
  v43 = objc_allocWithZone(MEMORY[0x277D129D8]);
  v97[2] = v34;
  v44 = sub_258B02C64();

  v45 = [v43 initWithSectionTitle:0 overlayContextItems:v44];

  *(v42 + 32) = v45;
  v46 = objc_allocWithZone(MEMORY[0x277D129E0]);
  v47 = sub_258B02AD4();

  v97[1] = v39;
  v48 = sub_258B02C64();

  v49 = [v46 initWithContainerTitle:v47 overlayContextSections:v48];

  v50 = sub_258AA5564();
  if (v50 >> 62)
  {
    v94 = v50;
    v51 = sub_258B032B4();
    v50 = v94;
  }

  else
  {
    v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v97[0] = v49;
  if (v51)
  {
    v52 = v50;
    v113 = MEMORY[0x277D84F90];
    sub_258B03244();
    if (v51 < 0)
    {
      __break(1u);
LABEL_34:
      sub_2589F4488(0, &qword_27F96D888, 0x277D12A00);
      sub_258B003E4();
      v78 = sub_258B032A4();

      goto LABEL_24;
    }

    v53 = 0;
    v54 = v52;
    v108 = v52 & 0xC000000000000001;
    v109 = OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_stateOfMindInteractiveChartDisplayTypeWithLegend;
    v104 = OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_sleepChartFormatter;
    v110 = v51;
    v111 = v52;
    do
    {
      if (v108)
      {
        v56 = MEMORY[0x259C937C0](v53, v54);
      }

      else
      {
        v56 = *(v54 + 8 * v53 + 32);
      }

      v57 = v56;
      v58 = [v56 objectType];
      v59 = [v58 code];

      if (v59 == 63)
      {
        v60 = [(SEL *)v31 applicationItems];
        v61 = *(v31 + v104);
        v62 = *(v31 + v109);
        v63 = sub_258B00224();
        v64 = *(v63 - 8);
        v65 = v106;
        (*(v64 + 56))(v106, 1, 1, v63);
        v66 = sub_258B02AD4();
        v67 = 0;
        if ((*(v64 + 48))(v65, 1, v63) != 1)
        {
          v68 = v106;
          v67 = sub_258B00194();
          (*(v64 + 8))(v68, v63);
        }

        v69 = objc_allocWithZone(MEMORY[0x277D129F8]);
        LOBYTE(v96) = 0;
        [v69 initWithApplicationItems:v60 overlayChartController:v112 sleepChartFormatter:v61 primaryDisplayType:v62 uniqueIdentifier:v66 firstWeekdayOverride:0 currentCalendarOverride:v67 isInfoButtonHidden:v96];
        v31 = v105;
      }

      else
      {
        v60 = [v57 sampleType];
        v70 = *(v31 + v109);
        v71 = sub_258B00224();
        v72 = *(v71 - 8);
        v73 = v107;
        (*(v72 + 56))(v107, 1, 1, v71);
        v67 = [(SEL *)v31 applicationItems];
        v66 = 0;
        if ((*(v72 + 48))(v73, 1, v71) != 1)
        {
          v74 = v107;
          v66 = sub_258B00194();
          (*(v72 + 8))(v74, v71);
        }

        v55 = objc_allocWithZone(MEMORY[0x277D12A00]);
        LOBYTE(v95) = 0;
        [v55 initWithDisplayType:v70 overlayDisplayType:0 stackedSampleType:v60 overlayChartController:v112 currentCalendarOverride:v66 applicationItems:v67 isInfoButtonHidden:v95];
      }

      ++v53;
      sub_258B03224();
      sub_258B03254();
      sub_258B03264();
      sub_258B03234();
      v54 = v111;
    }

    while (v110 != v53);

    v49 = v113;
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  v75 = [(SEL *)v31 buildFactorContextsAllowingDeselection:0, v97[0]];
  if (!v75)
  {
    v41 = v98;
    v31 = &property descriptor for StateOfMindEntryModel.valence;
    goto LABEL_28;
  }

  v47 = v75;
  v76 = [v75 activeFactorContexts];
  sub_2589F4488(0, &qword_27F970A58, 0x277D129F0);
  v77 = sub_258B02C74();

  v41 = v98;
  v31 = &property descriptor for StateOfMindEntryModel.valence;
  if (v77 >> 62)
  {
    goto LABEL_34;
  }

  sub_258B003E4();
  sub_258B03464();
  sub_2589F4488(0, &qword_27F96D888, 0x277D12A00);
  v78 = v77;
LABEL_24:

  v113 = v78;
  sub_2589FCAB4(v49);
  v79 = v113;
  v80 = [v47 inactiveFactorContexts];
  v81 = sub_258B02C74();

  if (v81 >> 62)
  {
    sub_2589F4488(0, &qword_27F96D888, 0x277D12A00);
    sub_258B003E4();
    v82 = sub_258B032A4();
  }

  else
  {
    sub_258B003E4();
    sub_258B03464();
    sub_2589F4488(0, &qword_27F96D888, 0x277D12A00);
    v82 = v81;
  }

  v113 = v79;
  sub_2589FCAB4(v82);

  v49 = v113;
LABEL_28:
  sub_258AFFD94();
  v83 = swift_allocObject();
  *(v83 + 16) = v99;
  sub_258B003E4();
  if (v49 >> 62)
  {
    sub_258B032A4();
  }

  else
  {
    sub_258B03464();
  }

  v84 = objc_allocWithZone(MEMORY[0x277D129D8]);
  v85 = sub_258B02C64();

  v86 = [v84 v31[324]];

  *(v83 + 32) = v86;
  v87 = objc_allocWithZone(MEMORY[0x277D129E0]);
  v88 = sub_258B02AD4();

  v89 = sub_258B02C64();

  v90 = [v87 initWithContainerTitle:v88 overlayContextSections:v89];

  v91 = swift_allocObject();
  *&result = 3;
  *(v91 + 16) = xmmword_258B33250;
  v93 = v97[0];
  *(v91 + 32) = v41;
  *(v91 + 40) = v93;
  *(v91 + 48) = v90;
  return result;
}

char *static StateOfMindOverlayRoomViewController.supportedStateOfMindDomainContexts()()
{
  v1 = v0;
  v2 = sub_258B02FB4();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v2 + 32;
    v7 = MEMORY[0x277D84F90];
    while (v5 < *(v3 + 16))
    {
      v10 = *(v6 + 8 * v5);
      v13 = v10;
      if (sub_258AA5334(&v13, v1))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_258AA930C(0, *(v7 + 2) + 1, 1);
          v7 = v14;
        }

        v9 = *(v7 + 2);
        v8 = *(v7 + 3);
        if (v9 >= v8 >> 1)
        {
          sub_258AA930C((v8 > 1), v9 + 1, 1);
          v7 = v14;
        }

        *(v7 + 2) = v9 + 1;
        *&v7[8 * v9 + 32] = v10;
      }

      if (v4 == ++v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
LABEL_12:

    v14 = v7;

    sub_258AA7444(&v14);

    return v14;
  }

  return result;
}

BOOL sub_258AA5334(uint64_t *a1, uint64_t a2)
{
  v3 = sub_258B00384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = HKUILocalizedStringForStateOfMindDomain();
  v9 = sub_258B02B14();
  v11 = v10;

  if ((v11 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    sub_258B00364();
    v13 = sub_258B00374();
    v14 = sub_258B02E94();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = v14;
      v16 = v15;
      v26 = swift_slowAlloc();
      v28 = v26;
      *v16 = 136446466;
      v17 = sub_258B035A4();
      v19 = sub_2589F1F78(v17, v18, &v28);
      v25 = v13;
      v20 = v19;

      *(v16 + 4) = v20;
      *(v16 + 12) = 2048;
      *(v16 + 14) = v7;
      v21 = v25;
      _os_log_impl(&dword_2589A1000, v25, v27, "[%{public}s] Active domain has empty title: %ld", v16, 0x16u);
      v22 = v26;
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x259C945C0](v22, -1, -1);
      MEMORY[0x259C945C0](v16, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v6, v3);
  }

  return v12 != 0;
}

unint64_t sub_258AA5564()
{
  v1 = v0;
  sub_258A0032C(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_258B33260;
  sub_2589F4488(0, &qword_27F970270, 0x277CCD8D8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = &property descriptor for StateOfMindEntryModel.valence;
  v5 = [ObjCClassFromMetadata dataTypeWithCode_];
  if (!v5)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(inited + 32) = v5;
  v6 = [ObjCClassFromMetadata dataTypeWithCode_];
  if (!v6)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(inited + 40) = v6;
  v7 = [ObjCClassFromMetadata dataTypeWithCode_];
  if (!v7)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(inited + 48) = v7;
  v8 = [ObjCClassFromMetadata dataTypeWithCode_];
  if (v8)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    *(inited + 56) = v8;
    v18 = v10;
    while (1)
    {
      if (v9 == 4)
      {
        swift_setDeallocating();
        swift_arrayDestroy();
        v16 = sub_258B003E4();
        v18 = sub_2589F3D34(v16);
        sub_258AA74B0(&v18);

        return v18;
      }

      if ((inited & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x259C937C0](v9, inited);
      }

      else
      {
        if (v9 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v11 = *(inited + 8 * v9 + 32);
      }

      v12 = v11;
      v4 = (v9 + 1);
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [v1 applicationItems];
      v14 = [v13 displayTypeController];

      v15 = [v14 displayTypeForObjectType_];
      ++v9;
      if (v15)
      {
        MEMORY[0x259C93250]();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_258B02C94();
        }

        sub_258B02CB4();
        v9 = v4;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_22:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_258AA582C(id *a1, void **a2)
{
  v2 = *a2;
  v3 = [*a1 localization];
  v4 = [v3 displayName];

  v5 = sub_258B02B14();
  v7 = v6;

  v8 = [v2 localization];
  v9 = [v8 displayName];

  v10 = sub_258B02B14();
  v12 = v11;

  if (v5 == v10 && v7 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_258B03454();
  }

  return v14 & 1;
}

uint64_t sub_258AA5940(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = static StateOfMindOverlayRoomViewController.supportedStateOfMindDomainContexts()();
  v5 = *(v4 + 2);
  if (v5)
  {
    v31 = MEMORY[0x277D84F90];
    sub_258B03244();
    sub_2589F4488(0, &unk_27F970A60, 0x277D12900);
    v26 = a1;
    sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
    v6 = 32;
    do
    {
      v27 = v5;
      v29 = 0x6E69616D6F44;
      v30 = 0xE600000000000000;
      v7 = NSStringFromHKStateOfMindDomain();
      v8 = sub_258B02B14();
      v10 = v9;

      MEMORY[0x259C931B0](v8, v10);

      v11 = v29;
      v12 = v30;
      v13 = [v2 applicationItems];
      v14 = sub_258B03074();
      v15 = objc_allocWithZone(type metadata accessor for StateOfMindSampleCountContext());
      v16 = v4;
      v17 = v2;
      v18 = OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem;
      *&v15[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_currentContextItem] = 0;
      v19 = &v15[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_accessibilityIdentifier_];
      *v19 = v11;
      v19[1] = v12;
      *&v15[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayChartController] = v26;
      v20 = v26;
      sub_258ADEBAC(v13, v14, 0);
      *&v15[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayDisplayType] = v21;
      *&v15[OBJC_IVAR____TtC14MentalHealthUI25StateOfMindOverlayContext_overlayPredicate] = v14;
      v22 = *&v15[v18];
      *&v15[v18] = 0;
      v2 = v17;
      v4 = v16;
      v23 = v14;

      v24 = type metadata accessor for StateOfMindOverlayContext();
      v28.receiver = v15;
      v28.super_class = v24;
      objc_msgSendSuper2(&v28, sel_init);

      sub_258B03224();
      sub_258B03254();
      sub_258B03264();
      sub_258B03234();
      v6 += 8;
      v5 = v27 - 1;
    }

    while (v27 != 1);

    return v31;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

unint64_t sub_258AA5C20(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_258B00384();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_258AA5564();
  if ((a1 & 0x8000000000000000) == 0)
  {
    if (result >> 62)
    {
      v22 = result;
      v23 = sub_258B032B4();
      result = v22;
      if (v23 > a1)
      {
LABEL_4:
        if ((result & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x259C937C0](a1);
        }

        else
        {
          if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
          {
            __break(1u);
            return result;
          }

          v7 = *(result + 8 * a1 + 32);
        }

        v8 = v7;

        v9 = [v8 objectType];
        v10 = [v9 code];

        if (v10 > 98)
        {
          if (v10 == 99)
          {
            v11 = 0x4E4C5546444E494DLL;
            v13 = 0xEB00000000535345;
            v12 = v8;
          }

          else
          {
            if (v10 != 279)
            {
LABEL_14:
              sub_258B00364();
              v15 = sub_258B00374();
              v16 = sub_258B02E84();
              if (os_log_type_enabled(v15, v16))
              {
                v17 = swift_slowAlloc();
                v18 = swift_slowAlloc();
                v25 = v18;
                *v17 = 136446210;
                v19 = sub_258B035A4();
                v21 = sub_2589F1F78(v19, v20, &v25);

                *(v17 + 4) = v21;
                _os_log_impl(&dword_2589A1000, v15, v16, "[%{public}s] Unsupported comparison type", v17, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v18);
                MEMORY[0x259C945C0](v18, -1, -1);
                MEMORY[0x259C945C0](v17, -1, -1);
              }

              (*(v3 + 8))(v5, v2);
              return 0;
            }

            v11 = 0x544847494C594144;
            v12 = v8;
            v13 = 0xE800000000000000;
          }
        }

        else
        {
          if (v10 != 63)
          {
            if (v10 == 75)
            {
              v11 = 0x4553494352455845;
              v12 = v8;
              v13 = 0xE800000000000000;
              v14 = 0;
LABEL_20:
              sub_258AA6360(v12, v11, v13, v14);

              return 1;
            }

            goto LABEL_14;
          }

          v11 = 0x5045454C53;
          v12 = v8;
          v13 = 0xE500000000000000;
        }

        v14 = 1;
        goto LABEL_20;
      }
    }

    else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

unint64_t sub_258AA5F5C(uint64_t a1, void *a2)
{
  v5 = sub_258AA5564();
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (a2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  v6 = sub_258B032B4();

  if (!a2)
  {
    return 0;
  }

LABEL_3:
  v7 = a2;
  v8 = [v7 activeFactorContexts];
  v9 = sub_2589F4488(0, &qword_27F970A58, 0x277D129F0);
  v10 = sub_258B02C74();

  if (v10 >> 62)
  {
    v11 = sub_258B032B4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 > a1)
  {
    v13 = [v7 activeFactorContexts];
    v9 = sub_258B02C74();

    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x259C937C0](a1, v9);
      goto LABEL_10;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
      {
        v14 = *(v9 + 8 * a1 + 32);
LABEL_10:
        v15 = v14;

        v16 = [v15 stackedBaseDisplayType];
        v17 = objc_opt_self();
        v18 = *&v2[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_stateOfMindInteractiveChartDisplayType];
        v19 = v16;
        v20 = [v2 applicationItems];
        v21 = [v20 healthStore];

        v22 = [v17 infographicViewControllerForDisplayType:v18 factorDisplayType:v19 healthStore:v21];
        if (!v22)
        {
          v25 = 0;
          goto LABEL_26;
        }

        v23 = v7;
        v24 = v22;
LABEL_23:
        v34 = v15;
        v25 = 1;
        [v2 hk:v22 presentModalCardViewController:0 fullScreen:1 animated:0 completion:?];

        v7 = v24;
        v15 = v19;
        v19 = v34;
LABEL_26:

        v7 = v19;
        goto LABEL_27;
      }

      goto LABEL_35;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (__OFADD__(v6, v11))
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v6 + v11 > a1)
  {
    v25 = 0;
LABEL_27:

    return v25;
  }

  v26 = [v7 inactiveFactorContexts];
  v9 = sub_258B02C74();

  v27 = a1 - v6;
  if (__OFSUB__(a1, v6))
  {
    goto LABEL_36;
  }

  result = v27 - v11;
  if (__OFSUB__(v27, v11))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_38:
    v28 = MEMORY[0x259C937C0](result, v9);
    goto LABEL_21;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(v9 + 8 * result + 32);
LABEL_21:
    v19 = v28;

    v29 = [v19 stackedBaseDisplayType];
    v30 = objc_opt_self();
    v31 = *&v2[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_stateOfMindInteractiveChartDisplayType];
    v24 = v29;
    v32 = [v2 applicationItems];
    v33 = [v32 healthStore];

    v22 = [v30 infographicViewControllerForDisplayType:v31 factorDisplayType:v24 healthStore:v33];
    if (!v22)
    {
      v25 = 0;
      v15 = v19;
      v19 = v24;
      goto LABEL_26;
    }

    v23 = v22;
    v15 = v7;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

void sub_258AA6360(void *a1, uint64_t a2, id a3, int a4)
{
  LODWORD(v74) = a4;
  ObjectType = swift_getObjectType();
  v8 = sub_258B00384();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v12 = a1;
  v13 = sub_258B00374();
  v14 = sub_258B02EA4();

  v15 = os_log_type_enabled(v13, v14);
  v65 = v12;
  v66 = ObjectType;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v72 = a3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v70 = v8;
    v19 = v18;
    aBlock = v18;
    *v17 = 136446466;
    v20 = sub_258B035A4();
    v22 = sub_2589F1F78(v20, v21, &aBlock);
    v71 = a2;
    v23 = v22;

    *(v17 + 4) = v23;
    *(v17 + 12) = 2082;
    v24 = v12;
    v25 = [v24 description];
    v26 = sub_258B02B14();
    v28 = v27;

    a2 = v71;
    v29 = sub_2589F1F78(v26, v28, &aBlock);

    *(v17 + 14) = v29;
    _os_log_impl(&dword_2589A1000, v13, v14, "[%{public}s] Opening life factor view for type: %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C945C0](v19, -1, -1);
    v30 = v17;
    a3 = v72;
    MEMORY[0x259C945C0](v30, -1, -1);

    (*(v9 + 8))(v11, v70);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
  }

  v72 = [objc_allocWithZone(MEMORY[0x277D12970]) init];
  aBlock = 0;
  v76 = 0xE000000000000000;
  sub_258B031B4();

  aBlock = 0xD000000000000012;
  v76 = 0x8000000258B389C0;
  MEMORY[0x259C931B0](a2, a3);
  MEMORY[0x259C931B0](0x454C5449545FLL, 0xE600000000000000);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v31 = qword_27F97AB90;
  v32 = qword_27F97AB98;
  v33 = qword_27F97ABA0;
  v68 = sub_258AFFD94();

  aBlock = 0;
  v76 = 0xE000000000000000;
  sub_258B031B4();

  aBlock = 0xD000000000000012;
  v76 = 0x8000000258B389C0;
  MEMORY[0x259C931B0](a2, a3);
  MEMORY[0x259C931B0](0x59444F425FLL, 0xE500000000000000);
  v69 = v33;
  v70 = v32;
  v71 = v31;
  v67 = sub_258AFFD94();

  v34 = 0;
  v35 = 0;
  v36 = a2;
  v37 = 0;
  if (v74)
  {
    aBlock = 0;
    v76 = 0xE000000000000000;
    sub_258B031B4();

    aBlock = 0xD000000000000012;
    v76 = 0x8000000258B389C0;
    MEMORY[0x259C931B0](v36, a3);
    MEMORY[0x259C931B0](0x474E4947474F4C5FLL, 0xE800000000000000);
    sub_258AFFD94();
    v37 = v38;

    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v41 = v65;
    v40 = v66;
    v35[2] = v39;
    v35[3] = v41;
    v42 = v72;
    v35[4] = v72;
    v35[5] = v40;
    v43 = v41;
    v44 = v42;
    v34 = sub_258AA9E84;
  }

  sub_258A103FC(v34, v35);
  v45 = sub_258B02AD4();

  v46 = sub_258B02AD4();

  if (!v37)
  {
    v47 = 0;
    if (v74)
    {
      goto LABEL_10;
    }

LABEL_12:
    v48 = 0;
    goto LABEL_13;
  }

  v47 = sub_258B02AD4();

  if ((v74 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v79 = v34;
  v80 = v35;
  aBlock = MEMORY[0x277D85DD0];
  v76 = 1107296256;
  v77 = sub_2589E92FC;
  v78 = &block_descriptor_13;
  v48 = _Block_copy(&aBlock);

LABEL_13:
  v49 = [objc_allocWithZone(MEMORY[0x277D128E0]) initWithTitle:v45 detail:v46 buttonTextString:v47 buttonAction:v48];
  _Block_release(v48);

  sub_258A0032C(0, &qword_27F970720, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v50 = swift_allocObject();
  v74 = xmmword_258B2E600;
  *(v50 + 16) = xmmword_258B2E600;
  *(v50 + 32) = v49;
  v51 = objc_allocWithZone(MEMORY[0x277D128E8]);
  sub_258A9A2EC(0, &qword_27F970A48, &protocolRef_HKInfographicItem);
  v52 = v49;
  v53 = sub_258B02C64();

  v54 = [v51 initWithItems_];

  v55 = v54;
  sub_258AFFD94();
  v56 = sub_258B02AD4();

  [v55 setTitle_];

  v57 = [v55 navigationItem];
  v58 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v59 = v73;
  v60 = [v58 initWithBarButtonSystemItem:24 target:v73 action:sel_dismissAnimated_];
  [v57 setRightBarButtonItem_];

  v61 = swift_allocObject();
  *(v61 + 16) = v74;
  *(v61 + 32) = v55;
  sub_2589F4488(0, &qword_27F970A50, 0x277D75D28);
  v62 = sub_258B02C64();

  v63 = v72;
  [v72 setViewControllers:v62 animated:0];

  [v59 hk:v63 presentModalCardViewController:0 fullScreen:1 animated:0 completion:?];
  sub_258A1040C(v34, v35);
}

void sub_258AA6BA4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = sub_258B00384();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_258B00364();
    v12 = a2;
    v13 = sub_258B00374();
    v14 = sub_258B02EA4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v35 = a3;
      v16 = v15;
      v33 = swift_slowAlloc();
      v36 = v33;
      *v16 = 136446466;
      v17 = sub_258B035A4();
      v19 = sub_2589F1F78(v17, v18, &v36);
      v34 = v6;
      v20 = v19;

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v21 = v12;
      v22 = [v21 description];
      v23 = sub_258B02B14();
      HIDWORD(v32) = v14;
      v24 = v12;
      v26 = v25;

      v27 = sub_2589F1F78(v23, v26, &v36);
      v12 = v24;

      *(v16 + 14) = v27;
      _os_log_impl(&dword_2589A1000, v13, BYTE4(v32), "[%{public}s] Opening logging view for type: %{public}s", v16, 0x16u);
      v28 = v33;
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v28, -1, -1);
      v29 = v16;
      a3 = v35;
      MEMORY[0x259C945C0](v29, -1, -1);

      (*(v7 + 8))(v9, v34);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    v30 = [*&v11[OBJC_IVAR____TtC14MentalHealthUI36StateOfMindOverlayRoomViewController_addDataViewControllerProvider] addDataViewControllerForDisplayType_];
    v31 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    [a3 hk:v31 presentModalCardViewController:0 fullScreen:1 animated:0 completion:?];
  }
}

id sub_258AA6E9C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_258B00384();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258B00364();
  v6 = sub_258B00374();
  v7 = sub_258B02EA4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = sub_258B035A4();
    v12 = sub_2589F1F78(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2589A1000, v6, v7, "[%{public}s] Dismissing", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x259C945C0](v9, -1, -1);
    MEMORY[0x259C945C0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return [v1 dismissViewControllerAnimated:1 completion:0];
}

id StateOfMindOverlayRoomViewController.__allocating_init(displayDate:applicationItems:factorDisplayTypes:mode:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_258B00084();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(a1, 1, v10) != 1)
  {
    v12 = sub_258B00014();
    (*(v11 + 8))(a1, v10);
  }

  if (a3)
  {
    sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
    v13 = sub_258B02C64();
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(v5) initWithDisplayDate:v12 applicationItems:a2 factorDisplayTypes:v13 mode:a4];

  return v14;
}

id StateOfMindOverlayRoomViewController.__deallocating_deinit(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for StateOfMindOverlayRoomViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_258AA7444(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_258AE9B70(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_258AA752C(v4);
  *a1 = v2;
}

uint64_t sub_258AA74B0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_258AEAF8C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_258AA7628(v6);
  return sub_258B03234();
}

void sub_258AA752C(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_258B03404();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for __HKStateOfMindDomain(0);
        v5 = sub_258B02CA4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_258AA7A38(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_258AA773C(0, v2, 1, a1);
  }
}

void sub_258AA7628(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_258B03404();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
        v6 = sub_258B02CA4();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_258AA81A8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_258AA7880(0, v2, 1, a1);
  }
}

void sub_258AA773C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = a1 - a3;
LABEL_6:
    v21 = v7;
    v22 = v6;
    while (1)
    {
      v8 = HKUILocalizedStringForStateOfMindDomain();
      v9 = sub_258B02B14();
      v11 = v10;

      v12 = HKUILocalizedStringForStateOfMindDomain();
      v13 = sub_258B02B14();
      v15 = v14;

      if (v9 == v13 && v11 == v15)
      {

LABEL_5:
        ++v4;
        v6 = v22 + 1;
        v7 = v21 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v17 = sub_258B03454();

      if ((v17 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v6;
      *v6 = v6[1];
      v6[1] = v18;
      --v6;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_258AA7880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v28 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_6:
    v26 = v4;
    v27 = a3;
    v6 = *(v28 + 8 * a3);
    v25 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 localization];
      v11 = [v10 displayName];

      v12 = sub_258B02B14();
      v14 = v13;

      v15 = [v9 localization];
      v16 = [v15 displayName];

      v17 = sub_258B02B14();
      v19 = v18;

      if (v12 == v17 && v14 == v19)
      {

LABEL_5:
        a3 = v27 + 1;
        v4 = v26 + 8;
        v5 = v25 - 1;
        if (v27 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v21 = sub_258B03454();

      if ((v21 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v28)
      {
        break;
      }

      v22 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v22;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_258AA7A38(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_107:
    v7 = v6;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v100 = v4;
LABEL_110:
      v4 = *(v100 + 2);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v101 = *&v100[16 * v4];
          v102 = v100;
          v103 = *&v100[16 * v4 + 24];
          sub_258AA89E0((*a3 + 8 * v101), (*a3 + 8 * *&v100[16 * v4 + 16]), (*a3 + 8 * v103), v6);
          if (v7)
          {
            goto LABEL_118;
          }

          if (v103 < v101)
          {
            goto LABEL_134;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v102 = sub_258AE8CC8(v102);
          }

          if (v4 - 2 >= *(v102 + 2))
          {
            goto LABEL_135;
          }

          v104 = &v102[16 * v4];
          *v104 = v101;
          *(v104 + 1) = v103;
          sub_258AE8C3C(v4 - 1);
          v100 = v102;
          v4 = *(v102 + 2);
          if (v4 <= 1)
          {
            goto LABEL_118;
          }
        }

        goto LABEL_145;
      }

LABEL_118:

      return;
    }

LABEL_141:
    v100 = sub_258AE8CC8(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v109 = v9;
      v4 = *a3;
      v11 = HKUILocalizedStringForStateOfMindDomain();
      v12 = sub_258B02B14();
      v14 = v13;

      v15 = HKUILocalizedStringForStateOfMindDomain();
      v16 = sub_258B02B14();
      v18 = v17;

      if (v12 == v16 && v14 == v18)
      {
        v115 = 0;
      }

      else
      {
        v115 = sub_258B03454();
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v106 = v10;
        v4 += 8 * v10 + 16;
        do
        {
          v22 = v6;
          v23 = HKUILocalizedStringForStateOfMindDomain();
          v24 = sub_258B02B14();
          v26 = v25;

          v27 = HKUILocalizedStringForStateOfMindDomain();
          v28 = sub_258B02B14();
          v30 = v29;

          if (v24 == v28 && v26 == v30)
          {

            v6 = v22;
            if (v115)
            {
              v9 = v109;
              v10 = v106;
              goto LABEL_25;
            }
          }

          else
          {
            v20 = sub_258B03454();

            v21 = v115 ^ v20;
            v6 = v22;
            if (v21)
            {
              goto LABEL_23;
            }
          }

          v4 += 8;
          ++v8;
        }

        while (v7 != v8);
        v8 = v7;
LABEL_23:
        v10 = v106;
      }

      v9 = v109;
      if (v115)
      {
LABEL_25:
        if (v8 < v10)
        {
          goto LABEL_138;
        }

        if (v10 < v8)
        {
          v32 = v8 - 1;
          v33 = v10;
          do
          {
            if (v33 != v32)
            {
              v35 = *a3;
              if (!*a3)
              {
                goto LABEL_144;
              }

              v36 = *(v35 + 8 * v33);
              *(v35 + 8 * v33) = *(v35 + 8 * v32);
              *(v35 + 8 * v32) = v36;
            }
          }

          while (++v33 < v32--);
        }
      }
    }

    v37 = a3[1];
    if (v8 < v37)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_137;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_136;
    }

    v53 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v53;
    }

    else
    {
      v9 = sub_258A74C78(0, *(v53 + 2) + 1, 1, v53);
    }

    v4 = *(v9 + 2);
    v54 = *(v9 + 3);
    v55 = v4 + 1;
    if (v4 >= v54 >> 1)
    {
      v9 = sub_258A74C78((v54 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v55;
    v56 = &v9[16 * v4];
    *(v56 + 4) = v10;
    *(v56 + 5) = v8;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    if (v4)
    {
      while (1)
      {
        v57 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v58 = *(v9 + 4);
          v59 = *(v9 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_75:
          if (v61)
          {
            goto LABEL_125;
          }

          v74 = &v9[16 * v55];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_128;
          }

          v80 = &v9[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_132;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v55 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v84 = &v9[16 * v55];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_89:
        if (v79)
        {
          goto LABEL_127;
        }

        v87 = &v9[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_130;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v57 - 1;
        if (v57 - 1 >= v55)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*a3)
        {
          goto LABEL_143;
        }

        v95 = v8;
        v96 = v9;
        v97 = *&v9[16 * v4 + 32];
        v98 = *&v9[16 * v57 + 40];
        sub_258AA89E0((*a3 + 8 * v97), (*a3 + 8 * *&v9[16 * v57 + 32]), (*a3 + 8 * v98), v7);
        if (v6)
        {
          goto LABEL_118;
        }

        if (v98 < v97)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_258AE8CC8(v96);
        }

        if (v4 >= *(v96 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v96[16 * v4];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        sub_258AE8C3C(v57);
        v9 = v96;
        v55 = *(v96 + 2);
        v8 = v95;
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v9[16 * v55 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_123;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_124;
      }

      v69 = &v9[16 * v55];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_126;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_129;
      }

      if (v73 >= v65)
      {
        v91 = &v9[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_133;
        }

        if (v60 < v94)
        {
          v57 = v55 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v38 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_139;
  }

  if (v38 >= v37)
  {
    v38 = a3[1];
  }

  if (v38 < v10)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v8 == v38)
  {
    goto LABEL_55;
  }

  v110 = v9;
  v105 = v6;
  v107 = v10;
  v4 = *a3;
  v39 = *a3 + 8 * v8 - 8;
  v40 = v10 - v8;
  v112 = v38;
LABEL_44:
  v114 = v39;
  v116 = v8;
  v113 = v40;
  v41 = v39;
  while (1)
  {
    v42 = HKUILocalizedStringForStateOfMindDomain();
    v43 = sub_258B02B14();
    v7 = v44;

    v45 = HKUILocalizedStringForStateOfMindDomain();
    v46 = sub_258B02B14();
    v48 = v47;

    if (v43 == v46 && v7 == v48)
    {

LABEL_43:
      v8 = v116 + 1;
      v39 = v114 + 8;
      v40 = v113 - 1;
      if (v116 + 1 == v112)
      {
        v8 = v112;
        v6 = v105;
        v10 = v107;
        v9 = v110;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v50 = sub_258B03454();

    if ((v50 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v4)
    {
      break;
    }

    v51 = *v41;
    *v41 = v41[1];
    v41[1] = v51;
    --v41;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_258AA81A8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_104:
    v6 = v5;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v101 = v4;
LABEL_107:
      v124 = v101;
      v4 = *(v101 + 2);
      if (v4 >= 2)
      {
        while (*v6)
        {
          v102 = *&v101[16 * v4];
          v103 = v101;
          v104 = *&v101[16 * v4 + 24];
          sub_258AA8D3C((*v6 + 8 * v102), (*v6 + 8 * *&v101[16 * v4 + 16]), (*v6 + 8 * v104), v5);
          if (v119)
          {
            goto LABEL_115;
          }

          if (v104 < v102)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v103 = sub_258AE8CC8(v103);
          }

          if (v4 - 2 >= *(v103 + 2))
          {
            goto LABEL_133;
          }

          v105 = &v103[16 * v4];
          *v105 = v102;
          *(v105 + 1) = v104;
          v124 = v103;
          sub_258AE8C3C(v4 - 1);
          v101 = v124;
          v4 = *(v124 + 2);
          if (v4 <= 1)
          {
            goto LABEL_115;
          }
        }

        goto LABEL_143;
      }

LABEL_115:

      return;
    }

LABEL_139:
    v101 = sub_258AE8CC8(v4);
    goto LABEL_107;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v110 = v8;
      v4 = *v5;
      v123 = *(*v5 + 8 * v7);
      v122 = *(v4 + 8 * v9);
      v10 = v122;
      v11 = v123;
      v12 = v10;
      v120 = sub_258AA582C(&v123, &v122);
      if (v119)
      {

        return;
      }

      v7 = v9 + 2;
      if (v9 + 2 >= v6)
      {
        v8 = v110;
      }

      else
      {
        v106 = v9;
        v4 += 8 * v9 + 16;
        v115 = v6;
        do
        {
          v117 = v7;
          v14 = *(v4 - 8);
          v15 = *v4;
          v16 = v14;
          v17 = [v15 localization];
          v18 = [v17 displayName];

          v19 = sub_258B02B14();
          v21 = v20;

          v22 = [v16 localization];
          v6 = [v22 displayName];

          v23 = sub_258B02B14();
          v25 = v24;

          if (v19 == v23 && v21 == v25)
          {

            v7 = v117;
            if (v120)
            {
              v5 = a3;
              v8 = v110;
              v9 = v106;
              goto LABEL_21;
            }
          }

          else
          {
            v13 = sub_258B03454();

            v7 = v117;
            if ((v120 ^ v13))
            {
              goto LABEL_19;
            }
          }

          ++v7;
          v4 += 8;
          v6 = v115;
        }

        while (v115 != v7);
        v7 = v115;
LABEL_19:
        v8 = v110;
        v9 = v106;
      }

      v5 = a3;
      if (v120)
      {
LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_136;
        }

        if (v9 < v7)
        {
          v27 = 8 * v7 - 8;
          v28 = 8 * v9;
          v29 = v7;
          v30 = v9;
          do
          {
            if (v30 != --v29)
            {
              v32 = *v5;
              if (!*v5)
              {
                goto LABEL_142;
              }

              v31 = *&v32[v28];
              *&v32[v28] = *&v32[v27];
              *&v32[v27] = v31;
            }

            ++v30;
            v27 -= 8;
            v28 += 8;
          }

          while (v30 < v29);
        }
      }
    }

    v33 = v5[1];
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_135;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_51:
    if (v7 < v9)
    {
      goto LABEL_134;
    }

    v54 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v8 = v54;
    }

    else
    {
      v8 = sub_258A74C78(0, *(v54 + 2) + 1, 1, v54);
    }

    v4 = *(v8 + 2);
    v55 = *(v8 + 3);
    v56 = v4 + 1;
    if (v4 >= v55 >> 1)
    {
      v8 = sub_258A74C78((v55 > 1), v4 + 1, 1, v8);
    }

    *(v8 + 2) = v56;
    v57 = &v8[16 * v4];
    *(v57 + 4) = v9;
    *(v57 + 5) = v7;
    v6 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v4)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_71:
          if (v62)
          {
            goto LABEL_123;
          }

          v75 = &v8[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_126;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_130;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v85 = &v8[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_85:
        if (v80)
        {
          goto LABEL_125;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_128;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_92:
        v4 = v58 - 1;
        if (v58 - 1 >= v56)
        {
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
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v5)
        {
          goto LABEL_141;
        }

        v96 = v7;
        v97 = v8;
        v98 = *&v8[16 * v4 + 32];
        v99 = *&v8[16 * v58 + 40];
        sub_258AA8D3C((*v5 + 8 * v98), (*v5 + 8 * *&v8[16 * v58 + 32]), (*v5 + 8 * v99), v6);
        if (v119)
        {
          goto LABEL_115;
        }

        if (v99 < v98)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_258AE8CC8(v97);
        }

        if (v4 >= *(v97 + 2))
        {
          goto LABEL_120;
        }

        v100 = &v97[16 * v4];
        *(v100 + 4) = v98;
        *(v100 + 5) = v99;
        v124 = v97;
        sub_258AE8C3C(v58);
        v8 = v124;
        v56 = *(v124 + 2);
        v7 = v96;
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_121;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_122;
      }

      v70 = &v8[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_124;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_127;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_131;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_104;
    }
  }

  v34 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_137;
  }

  if (v34 >= v33)
  {
    v34 = v5[1];
  }

  if (v34 < v9)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v7 == v34)
  {
    goto LABEL_51;
  }

  v111 = v8;
  v121 = *v5;
  v4 = *v5 + 8 * v7 - 8;
  v107 = v9;
  v35 = v9 - v7;
  v113 = v34;
LABEL_40:
  v116 = v4;
  v118 = v7;
  v36 = v121[v7];
  v114 = v35;
  v37 = v35;
  while (1)
  {
    v38 = *v4;
    v39 = v36;
    v6 = v38;
    v40 = [v39 localization];
    v41 = [v40 displayName];

    v42 = sub_258B02B14();
    v44 = v43;

    v45 = [v6 localization];
    v46 = [v45 displayName];

    v47 = sub_258B02B14();
    v49 = v48;

    if (v42 == v47 && v44 == v49)
    {

LABEL_39:
      v7 = v118 + 1;
      v4 = v116 + 8;
      v35 = v114 - 1;
      if (v118 + 1 == v113)
      {
        v7 = v113;
        v5 = a3;
        v8 = v111;
        v9 = v107;
        goto LABEL_51;
      }

      goto LABEL_40;
    }

    v51 = sub_258B03454();

    if ((v51 & 1) == 0)
    {
      goto LABEL_39;
    }

    if (!v121)
    {
      break;
    }

    v52 = *v4;
    v36 = *(v4 + 8);
    *v4 = v36;
    *(v4 + 8) = v52;
    v4 -= 8;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_258AA89E0(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a2;
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v41 = &v4[8 * v9];
    if (v7 < 8)
    {
LABEL_10:
      v14 = v6;
      goto LABEL_47;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v16 = HKUILocalizedStringForStateOfMindDomain();
      v17 = sub_258B02B14();
      v19 = v18;

      v20 = HKUILocalizedStringForStateOfMindDomain();
      v21 = sub_258B02B14();
      v23 = v22;

      v24 = v17 == v21 && v19 == v23;
      if (v24)
      {
        break;
      }

      v25 = sub_258B03454();

      if ((v25 & 1) == 0)
      {
        goto LABEL_22;
      }

      v15 = v13;
      v24 = v6 == v13;
      v13 += 8;
      if (!v24)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 += 8;
      if (v4 >= v41)
      {
        goto LABEL_10;
      }
    }

LABEL_22:
    v15 = v4;
    v24 = v6 == v4;
    v4 += 8;
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v15;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[8 * v12] <= a4)
  {
    v26 = a2;
    memmove(a4, a2, 8 * v12);
    a2 = v26;
  }

  v14 = a2;
  v41 = &v4[8 * v12];
  if (v10 >= 8 && a2 > v6)
  {
LABEL_30:
    __dst = v14;
    v5 -= 8;
    v27 = v41;
    v40 = v14 - 8;
    do
    {
      v27 -= 8;
      v28 = HKUILocalizedStringForStateOfMindDomain();
      v29 = sub_258B02B14();
      v31 = v30;

      v32 = HKUILocalizedStringForStateOfMindDomain();
      v33 = sub_258B02B14();
      v35 = v34;

      if (v29 == v33 && v31 == v35)
      {
      }

      else
      {
        v37 = sub_258B03454();

        if (v37)
        {
          if (v5 + 8 != __dst)
          {
            *v5 = *v40;
          }

          if (v41 <= v4 || (v14 = v40, v40 <= v6))
          {
            v14 = v40;
            goto LABEL_47;
          }

          goto LABEL_30;
        }
      }

      if (v5 + 8 != v41)
      {
        *v5 = *v27;
      }

      v5 -= 8;
      v41 = v27;
    }

    while (v27 > v4);
    v41 = v27;
    v14 = __dst;
  }

LABEL_47:
  if (v14 != v4 || v14 >= &v4[(v41 - v4 + (v41 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v14, v4, 8 * ((v41 - v4) / 8));
  }

  return 1;
}

uint64_t sub_258AA8D3C(void **__dst, void **a2, char *a3, void **__src)
{
  v4 = a3;
  v5 = a2 - __dst;
  v6 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v6 = a2 - __dst;
  }

  v7 = v6 >> 3;
  v8 = a3 - a2;
  v9 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v9 = a3 - a2;
  }

  v10 = v9 >> 3;
  if (v7 >= v9 >> 3)
  {
    if (__src != a2 || &a2[v10] <= __src)
    {
      v32 = a2;
      v33 = __src;
      memmove(__src, a2, 8 * v10);
      __src = v33;
      a2 = v32;
    }

    v62 = &__src[v10];
    v12 = __src;
    if (v8 >= 8 && a2 > __dst)
    {
      v61 = __src;
LABEL_31:
      v59 = a2;
      v34 = a2 - 1;
      v35 = v4;
      v36 = v62;
      v55 = a2 - 1;
      do
      {
        v37 = *(v36 - 1);
        v36 -= 8;
        v38 = *v34;
        v39 = v37;
        v40 = v38;
        v41 = [v39 localization];
        v42 = [v41 displayName];

        v43 = sub_258B02B14();
        v45 = v44;

        v57 = v40;
        v46 = [v40 localization];
        v47 = [v46 displayName];

        v48 = sub_258B02B14();
        v50 = v49;

        if (v43 == v48 && v45 == v50)
        {

          v4 = v35 - 8;
        }

        else
        {
          v52 = sub_258B03454();

          v4 = v35 - 8;
          if (v52)
          {
            if (v35 != v59)
            {
              *v4 = *v55;
            }

            v12 = v61;
            if (v62 <= v61 || (a2 = v55, v55 <= __dst))
            {
              a2 = v55;
              goto LABEL_48;
            }

            goto LABEL_31;
          }
        }

        v34 = v55;
        if (v62 != v35)
        {
          *v4 = *v36;
        }

        v62 = v36;
        v35 = v4;
      }

      while (v36 > v61);
      v62 = v36;
      a2 = v59;
      v12 = v61;
    }
  }

  else
  {
    v11 = a2;
    v12 = __src;
    v13 = __dst;
    if (__src != __dst || &__dst[v7] <= __src)
    {
      memmove(__src, __dst, 8 * v7);
    }

    v62 = &v12[v7];
    if (v5 >= 8 && v11 < v4)
    {
      v14 = v11;
      v56 = v4;
      while (1)
      {
        v58 = v14;
        v60 = v12;
        v15 = *v12;
        v16 = *v14;
        v17 = v15;
        v18 = [v16 localization];
        v19 = [v18 displayName];

        v20 = sub_258B02B14();
        v22 = v21;

        v23 = [v17 localization];
        v24 = [v23 displayName];

        v25 = sub_258B02B14();
        v27 = v26;

        if (v20 == v25 && v22 == v27)
        {
          break;
        }

        v29 = sub_258B03454();

        if ((v29 & 1) == 0)
        {
          goto LABEL_20;
        }

        v30 = v56;
        v31 = v58;
        v14 = v58 + 1;
        if (v13 != v58)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v13;
        if (v12 >= v62 || v14 >= v30)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v14 = v58;
      v31 = v12++;
      v30 = v56;
      if (v13 == v60)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v13 = *v31;
      goto LABEL_22;
    }

LABEL_24:
    a2 = v13;
  }

LABEL_48:
  if (a2 != v12 || a2 >= (v12 + ((v62 - v12 + (v62 - v12 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v12, 8 * ((v62 - v12) / 8));
  }

  return 1;
}

char *sub_258AA91CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258AE8CDC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA91EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258AE8DF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA920C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258AE8F1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA922C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258AE9044(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_258AA924C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258AE915C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_258AA926C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258AE92A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA928C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258AE92DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA92AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258AE9408(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA92CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258AE9544(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_258AA92EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258AE9668(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA930C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258AE9890(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_258AA932C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258AE99C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_258AA934C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258AE99F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA936C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_258AE9524(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_258AA938C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a7;
  v13 = sub_258B00384();
  v46 = *(v13 - 8);
  v47 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v44 - v17;
  sub_258AA98A8(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v44 - v20;
  v22 = [a1 sleepChartFormatter];
  if (v22)
  {
    v23 = v22;
    v24 = [a1 addDataViewControllerProvider];
    if (v24)
    {
      v25 = v24;
      sub_258A312AC(a3, v21);
      v26 = objc_allocWithZone(type metadata accessor for StateOfMindOverlayRoomViewController());
      sub_258B003E4();
      v27 = v23;
      swift_unknownObjectRetain();
      v28 = StateOfMindOverlayRoomViewController.init(displayDate:applicationItems:factorDisplayTypes:sleepChartFormatter:addDataViewControllerProvider:preferredOverlay:)(v21, a2, a6, v27, v25, a4);
      [v28 setRestorationUserActivity_];
      [v28 setAdditionalChartOptions_];

      swift_unknownObjectRelease();
      return v28;
    }

    sub_258B00364();
    v37 = sub_258B00374();
    v38 = sub_258B02E94();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v48 = v40;
      *v39 = 136446210;
      v41 = sub_258B035A4();
      v43 = sub_2589F1F78(v41, v42, &v48);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2589A1000, v37, v38, "[%{public}s] State of mind requires an add data provider", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x259C945C0](v40, -1, -1);
      MEMORY[0x259C945C0](v39, -1, -1);
    }

    else
    {
    }

    (*(v46 + 8))(v18, v47);
  }

  else
  {
    sub_258B00364();
    v30 = sub_258B00374();
    v31 = sub_258B02E94();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48 = v33;
      *v32 = 136446210;
      v34 = sub_258B035A4();
      v36 = sub_2589F1F78(v34, v35, &v48);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_2589A1000, v30, v31, "[%{public}s] State of mind overlays require a sleep formatter", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x259C945C0](v33, -1, -1);
      MEMORY[0x259C945C0](v32, -1, -1);
    }

    (*(v46 + 8))(v16, v47);
  }

  return 0;
}

void sub_258AA97BC(void *a1)
{
  v1 = [a1 displayTypeController];
  v2 = [objc_opt_self() stateOfMindType];
  v3 = [v1 displayTypeForObjectType_];

  if (v3)
  {
    v4 = [v3 localization];

    v5 = [v4 displayName];
    sub_258B02B14();
  }

  else
  {
    __break(1u);
  }
}

void sub_258AA98A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B030C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AA98FC(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_258B00384();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  sub_258B00364();
  v11 = sub_258B00374();
  v12 = sub_258B02EA4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v48 = v2;
    v14 = v13;
    v47 = swift_slowAlloc();
    v49 = v47;
    *v14 = 136446466;
    v15 = sub_258B035A4();
    LODWORD(v46) = v12;
    v17 = a1;
    v18 = v8;
    v19 = v4;
    v20 = v5;
    v21 = sub_2589F1F78(v15, v16, &v49);

    *(v14 + 4) = v21;
    v5 = v20;
    v4 = v19;
    v8 = v18;
    a1 = v17;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v17;
    _os_log_impl(&dword_2589A1000, v11, v46, "[%{public}s] Did tap info button at index: %ld", v14, 0x16u);
    v22 = v47;
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x259C945C0](v22, -1, -1);
    v23 = v14;
    v2 = v48;
    MEMORY[0x259C945C0](v23, -1, -1);
  }

  v24 = *(v5 + 8);
  v24(v10, v4);
  v25 = [v2 buildFactorContextsAllowingDeselection_];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 activeFactorContexts];
    sub_2589F4488(0, &qword_27F970A58, 0x277D129F0);
    v28 = sub_258B02C74();

    if (v28 >> 62)
    {
      v29 = sub_258B032B4();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = a1 - v29;
    if (__OFSUB__(a1, v29))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    v30 = a1;
  }

  if (sub_258AA5C20(v30) & 1) != 0 || (sub_258AA5F5C(a1, v26))
  {

    return;
  }

LABEL_13:
  v31 = sub_258AA5564();
  if (v31 >> 62)
  {
    v48 = sub_258B032B4();
  }

  else
  {
    v48 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = [v2 factorDisplayTypes];
  v45 = a1;
  if (v32)
  {
    v33 = v32;
    sub_2589F4488(0, &qword_27F96D870, 0x277D12830);
    v34 = sub_258B02C74();

    if (v34 >> 62)
    {
      v35 = sub_258B032B4();
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v35 = -1;
  }

  sub_258B00364();
  v36 = sub_258B00374();
  v37 = sub_258B02EA4();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v47 = v24;
    v39 = v38;
    v40 = swift_slowAlloc();
    v49 = v40;
    *v39 = 136446978;
    v41 = sub_258B035A4();
    v46 = v5;
    v43 = sub_2589F1F78(v41, v42, &v49);

    *(v39 + 4) = v43;
    *(v39 + 12) = 2048;
    *(v39 + 14) = v45;
    *(v39 + 22) = 2048;
    *(v39 + 24) = v48;
    *(v39 + 32) = 2048;
    *(v39 + 34) = v35;
    _os_log_impl(&dword_2589A1000, v36, v37, "[%{public}s] Unable to open context information view controller for index %ld.  Standard count: %ld, Health factors %ld", v39, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x259C945C0](v40, -1, -1);
    MEMORY[0x259C945C0](v39, -1, -1);

    (v47)(v8, v4);
  }

  else
  {

    v24(v8, v4);
  }
}

double block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_258AA9E90()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v17.origin.x = v1;
  v17.origin.y = v2;
  v17.size.width = v3;
  v17.size.height = v4;
  Width = CGRectGetWidth(v17);
  v18.origin.x = v1;
  v18.origin.y = v2;
  v18.size.width = v3;
  v18.size.height = v4;
  CGRectGetHeight(v18);
  v5 = *v0;
  v6 = v0[1];
  v7 = v0[2];
  v8 = v0[3];
  v19.origin.x = *v0;
  v19.origin.y = v6;
  v19.size.width = v7;
  v19.size.height = v8;
  v14 = CGRectGetWidth(v19);
  v20.origin.x = v5;
  v20.origin.y = v6;
  v20.size.width = v7;
  v20.size.height = v8;
  CGRectGetHeight(v20);
  rect = v1;
  v21.origin.x = v1;
  v21.origin.y = v2;
  v21.size.width = v3;
  v21.size.height = v4;
  v9 = 1.0;
  if (CGRectGetHeight(v21) != 0.0)
  {
    v22.origin.x = v5;
    v22.origin.y = v6;
    v22.size.width = v7;
    v22.size.height = v8;
    if (CGRectGetWidth(v22) != 0.0)
    {
      v23.origin.x = v5;
      v23.origin.y = v6;
      v23.size.width = v7;
      v23.size.height = v8;
      if (CGRectGetHeight(v23) != 0.0)
      {
        v24.origin.x = rect;
        v24.origin.y = v2;
        v24.size.width = v3;
        v24.size.height = v4;
        Height = CGRectGetHeight(v24);
        v25.origin.x = v5;
        v25.origin.y = v6;
        v25.size.width = v7;
        v25.size.height = v8;
        v11 = CGRectGetWidth(v25);
        v26.origin.x = v5;
        v26.origin.y = v6;
        v26.size.width = v7;
        v26.size.height = v8;
        v12 = CGRectGetHeight(v26);
        if (v12 >= v11)
        {
          v12 = v11;
        }

        v9 = Height * 1.5 / v12;
      }
    }
  }

  return (rect + Width * 0.5 - (v5 + v14 * 0.5)) / v9;
}

double sub_258AAA034()
{
  v1 = sub_258B00F84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 8);
  v5 = *v0;
  v9 = *v0;
  if (v10 == 1)
  {
    result = v5;
  }

  else
  {

    sub_258B02E94();
    v7 = sub_258B01824();
    sub_258B00354();

    sub_258B00F74();
    swift_getAtKeyPath();
    sub_258AAE1F8(&v9);
    (*(v2 + 8))(v4, v1);
    result = *&v8[1];
  }

  if (result > 2.2)
  {
    return 2.2;
  }

  return result;
}

id sub_258AAA198@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v114 = a1;
  v3 = type metadata accessor for EmotionShape(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AAD94C(0);
  v106 = v6;
  MEMORY[0x28223BE20](v6);
  v108 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AAD96C(0, &qword_27F970AD0, sub_258AAD94C);
  v107 = v8;
  MEMORY[0x28223BE20](v8);
  v110 = &v100 - v9;
  sub_258AAD9C8(0);
  v109 = v10;
  MEMORY[0x28223BE20](v10);
  v113 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AADBEC(0);
  v112 = v12;
  MEMORY[0x28223BE20](v12);
  v111 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v15 = result;
    v16 = [result isiPad];

    if (v16)
    {
      v17 = 2;
    }

    else
    {
      v17 = 1;
    }

    v105 = v17;
    v18 = sub_258AAA034();
    sub_258B02D24();
    sub_258AADCD8(v2, v124);
    v19 = sub_258B02D14();
    v20 = swift_allocObject();
    v21 = MEMORY[0x277D85700];
    *(v20 + 16) = v19;
    *(v20 + 24) = v21;
    v22 = *(v2 + 112);
    *(v20 + 128) = *(v2 + 96);
    *(v20 + 144) = v22;
    *(v20 + 160) = *(v2 + 128);
    v23 = *(v2 + 48);
    *(v20 + 64) = *(v2 + 32);
    *(v20 + 80) = v23;
    v24 = *(v2 + 80);
    *(v20 + 96) = *(v2 + 64);
    *(v20 + 112) = v24;
    v25 = *(v2 + 16);
    *(v20 + 32) = *v2;
    *(v20 + 48) = v25;
    sub_258AADCD8(v2, v124);
    v26 = sub_258B02D14();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = v21;
    v28 = *(v2 + 112);
    *(v27 + 128) = *(v2 + 96);
    *(v27 + 144) = v28;
    *(v27 + 160) = *(v2 + 128);
    v29 = *(v2 + 48);
    *(v27 + 64) = *(v2 + 32);
    *(v27 + 80) = v29;
    v30 = *(v2 + 80);
    *(v27 + 96) = *(v2 + 64);
    *(v27 + 112) = v30;
    v31 = *(v2 + 16);
    *(v27 + 32) = *v2;
    *(v27 + 48) = v31;
    sub_258B02344();
    v104 = v124[17];
    v103 = v124[18];
    v32 = v125;
    sub_258AADCD8(v2, v124);
    v33 = sub_258B02D14();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = v21;
    v35 = *(v2 + 112);
    *(v34 + 128) = *(v2 + 96);
    *(v34 + 144) = v35;
    *(v34 + 160) = *(v2 + 128);
    v36 = *(v2 + 48);
    *(v34 + 64) = *(v2 + 32);
    *(v34 + 80) = v36;
    v37 = *(v2 + 80);
    *(v34 + 96) = *(v2 + 64);
    *(v34 + 112) = v37;
    v38 = *(v2 + 16);
    *(v34 + 32) = *v2;
    *(v34 + 48) = v38;
    sub_258AADCD8(v2, v124);
    v39 = sub_258B02D14();
    v40 = swift_allocObject();
    *(v40 + 16) = v39;
    *(v40 + 24) = v21;
    v41 = *(v2 + 112);
    *(v40 + 128) = *(v2 + 96);
    *(v40 + 144) = v41;
    *(v40 + 160) = *(v2 + 128);
    v42 = *(v2 + 48);
    *(v40 + 64) = *(v2 + 32);
    *(v40 + 80) = v42;
    v43 = *(v2 + 80);
    *(v40 + 96) = *(v2 + 64);
    *(v40 + 112) = v43;
    v44 = *(v2 + 16);
    *(v40 + 32) = *v2;
    *(v40 + 48) = v44;
    sub_258B02344();
    v102 = v121;
    v101 = v122;
    v45 = v123;
    v119[0] = vcvt_f32_f64(*(v2 + 112));
    sub_258AADFC0(0, v46, v47);
    sub_258B02354();
    v48 = v124[0];
    v49 = v124[1];
    v50 = v124[2];
    v51 = *(v2 + 128);
    *&v115 = v51;
    sub_258B02354();
    v52 = v119[0];
    v53 = v119[1];
    v54 = v120;
    v118 = *(v2 + 16);
    sub_258AAE374(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    sub_258B02144();
    v55 = v115;
    v56 = v116;
    LOBYTE(v33) = v117;
    *v5 = swift_getKeyPath();
    sub_258AAE3C4(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v58 = v5 + v3[5];
    *v58 = KeyPath;
    v58[8] = 0;
    *(v5 + v3[6]) = v105;
    *(v5 + v3[7]) = v18;
    v59 = v5 + v3[8];
    v60 = v103;
    *v59 = v104;
    *(v59 + 1) = v60;
    *(v59 + 4) = v32;
    v61 = v5 + v3[9];
    v62 = v101;
    *v61 = v102;
    *(v61 + 1) = v62;
    *(v61 + 4) = v45;
    v63 = (v5 + v3[10]);
    *v63 = v48;
    v63[1] = v49;
    v63[2] = v50;
    v64 = (v5 + v3[11]);
    *v64 = v52;
    v64[1] = v53;
    v64[2].i32[0] = v54;
    v65 = v5 + v3[12];
    *v65 = v55;
    *(v65 + 1) = v56;
    v65[16] = v33;
    v66 = swift_allocObject();
    v67 = *(v2 + 112);
    *(v66 + 112) = *(v2 + 96);
    *(v66 + 128) = v67;
    *(v66 + 144) = *(v2 + 128);
    v68 = *(v2 + 48);
    *(v66 + 48) = *(v2 + 32);
    *(v66 + 64) = v68;
    v69 = *(v2 + 80);
    *(v66 + 80) = *(v2 + 64);
    *(v66 + 96) = v69;
    v70 = *(v2 + 16);
    *(v66 + 16) = *v2;
    *(v66 + 32) = v70;
    v71 = v5;
    v72 = v108;
    sub_258AAE05C(v71, v108, type metadata accessor for EmotionShape);
    v73 = (v72 + *(v106 + 36));
    *v73 = sub_258AAE01C;
    v73[1] = v66;
    v73[2] = 0;
    v73[3] = 0;
    v74 = swift_allocObject();
    v75 = *(v2 + 112);
    *(v74 + 112) = *(v2 + 96);
    *(v74 + 128) = v75;
    *(v74 + 144) = *(v2 + 128);
    v76 = *(v2 + 48);
    *(v74 + 48) = *(v2 + 32);
    *(v74 + 64) = v76;
    v77 = *(v2 + 80);
    *(v74 + 80) = *(v2 + 64);
    *(v74 + 96) = v77;
    v78 = *(v2 + 16);
    *(v74 + 16) = *v2;
    *(v74 + 32) = v78;
    v79 = v110;
    sub_258AAE05C(v72, v110, sub_258AAD94C);
    v80 = (v79 + *(v107 + 36));
    *v80 = 0;
    v80[1] = 0;
    v80[2] = sub_258AAE03C;
    v80[3] = v74;
    v81 = objc_opt_self();
    sub_258AADCD8(v2, v124);
    sub_258AADCD8(v2, v124);
    v82 = [v81 defaultCenter];
    v83 = v109;
    v84 = v113;
    sub_258B02FD4();

    v85 = swift_allocObject();
    v86 = *(v2 + 112);
    *(v85 + 112) = *(v2 + 96);
    *(v85 + 128) = v86;
    *(v85 + 144) = *(v2 + 128);
    v87 = *(v2 + 48);
    *(v85 + 48) = *(v2 + 32);
    *(v85 + 64) = v87;
    v88 = *(v2 + 80);
    *(v85 + 80) = *(v2 + 64);
    *(v85 + 96) = v88;
    v89 = *(v2 + 16);
    *(v85 + 16) = *v2;
    *(v85 + 32) = v89;
    sub_258AAE0E4(v79, v84);
    v90 = (v84 + *(v83 + 56));
    *v90 = sub_258AAE0C4;
    v90[1] = v85;
    sub_258AADCD8(v2, v124);
    v91 = [v81 defaultCenter];
    v92 = v112;
    v93 = v111;
    sub_258B02FD4();

    v94 = swift_allocObject();
    v95 = *(v2 + 112);
    *(v94 + 112) = *(v2 + 96);
    *(v94 + 128) = v95;
    *(v94 + 144) = *(v2 + 128);
    v96 = *(v2 + 48);
    *(v94 + 48) = *(v2 + 32);
    *(v94 + 64) = v96;
    v97 = *(v2 + 80);
    *(v94 + 80) = *(v2 + 64);
    *(v94 + 96) = v97;
    v98 = *(v2 + 16);
    *(v94 + 16) = *v2;
    *(v94 + 32) = v98;
    sub_258AAE05C(v84, v93, sub_258AAD9C8);
    v99 = (v93 + *(v92 + 56));
    *v99 = sub_258AAE1D8;
    v99[1] = v94;
    sub_258AAE05C(v93, v114, sub_258AADBEC);
    return sub_258AADCD8(v2, v124);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258AAAB1C()
{
  sub_258AAE374(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02124();
  if (v1 == 1)
  {
    sub_258B02124();
  }

  return sub_258B02134();
}

uint64_t sub_258AAABE4(uint64_t a1, char a2)
{
  sub_258AAE374(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02134();
  return sub_258AAAB1C();
}

uint64_t sub_258AAAC5C(uint64_t a1, uint64_t a2, char a3)
{
  sub_258AAE374(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02134();
  return sub_258AAAB1C();
}

uint64_t sub_258AAAD64(double a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_258B00574();
}

void (*sub_258AAADDC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_258B00554();
  return sub_2589EF694;
}

uint64_t sub_258AAAE80(void *a1)
{
  swift_beginAccess();
  sub_258AAE374(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  sub_258B00534();
  return swift_endAccess();
}

uint64_t sub_258AAAF10(char *a1, uint64_t *a2)
{
  v3 = MEMORY[0x277D839F8];
  sub_258AAE374(0, &qword_27F96E6E8, MEMORY[0x277D839F8], MEMORY[0x277CBCEC0]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v14 - v10;
  v12 = *(v6 + 16);
  v12(&v14 - v10, a1, v5);
  v12(v9, v11, v5);
  swift_beginAccess();
  sub_258AAE374(0, &qword_27F96E6E0, v3, MEMORY[0x277CBCED0]);
  sub_258B00544();
  swift_endAccess();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_258AAB0CC()
{
  swift_beginAccess();
  sub_258AAE374(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  sub_258B00534();
  return swift_endAccess();
}

uint64_t sub_258AAB158(uint64_t a1)
{
  v2 = MEMORY[0x277D839F8];
  sub_258AAE374(0, &qword_27F96E6E8, MEMORY[0x277D839F8], MEMORY[0x277CBCEC0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v8 - v6, a1, v4);
  swift_beginAccess();
  sub_258AAE374(0, &qword_27F96E6E0, v2, MEMORY[0x277CBCED0]);
  sub_258B00544();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

void (*sub_258AAB2C8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_258AAE374(0, &qword_27F96E6E8, MEMORY[0x277D839F8], MEMORY[0x277CBCEC0]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtCV14MentalHealthUI24StateOfMindVisualization21VisualizationPPTModel__valence;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_258AAE374(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_258B00534();
  swift_endAccess();
  return sub_2589EFCE4;
}

uint64_t StateOfMindVisualization.VisualizationPPTModel.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_258B00524();
  sub_258B00524();
  return v0;
}

uint64_t StateOfMindVisualization.VisualizationPPTModel.init()()
{
  sub_258AAE374(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtCV14MentalHealthUI24StateOfMindVisualization21VisualizationPPTModel__valence;
  v11 = 0;
  sub_258B00524();
  v7 = *(v3 + 32);
  v7(v0 + v6, v5, v2);
  v8 = OBJC_IVAR____TtCV14MentalHealthUI24StateOfMindVisualization21VisualizationPPTModel__effectiveValence;
  v11 = 0;
  sub_258B00524();
  v7(v0 + v8, v5, v2);
  return v0;
}

uint64_t sub_258AAB640(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  sub_258AAD16C(-1.0, 1.0, 0.002);
  sub_258AAB6A8(v5, a1, a2, v2);
}

uint64_t sub_258AAB6A8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v38 = a3;
  v6 = sub_258B02624();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_258B02654();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258B02674();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v21 = &v30 - v20;
  if (!*(a1 + 16))
  {
    return v37(v18);
  }

  v22 = *(a1 + 32);
  v32 = v19;
  v33 = v6;
  v23 = v19;
  swift_getKeyPath();
  v34 = v7;
  swift_getKeyPath();
  v35 = v10;
  aBlock[0] = v22;

  sub_258B00574();
  sub_2589EEBEC();
  v24 = sub_258B02F54();
  sub_258B02664();
  sub_258B02694();
  v31 = *(v14 + 8);
  v31(v17, v23);
  v25 = swift_allocObject();
  v25[2] = a4;
  v25[3] = a1;
  v26 = v38;
  v25[4] = v37;
  v25[5] = v26;
  aBlock[4] = sub_258AAE2E4;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2589E92FC;
  aBlock[3] = &block_descriptor_14;
  v27 = _Block_copy(aBlock);

  sub_258B003E4();

  sub_258B02644();
  v39 = MEMORY[0x277D84F90];
  sub_258AAE308(&unk_27F96EBD0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2589EECAC(0);
  sub_258AAE308(&qword_27F96EBE0, sub_2589EECAC, MEMORY[0x277D83970]);
  v28 = v33;
  sub_258B03114();
  MEMORY[0x259C93530](v21, v12, v9, v27);
  _Block_release(v27);

  (*(v34 + 8))(v9, v28);
  (*(v36 + 8))(v12, v35);
  v31(v21, v32);
}

uint64_t sub_258AABB00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v6 = a2;
  v8 = *(a2 + 16);
  if (v8)
  {
    sub_258AACB88(a2, a2 + 32, 1, (2 * v8) | 1);
    v6 = v10;
  }

  else
  {
    sub_258B003E4();
  }

  sub_258AAB6A8(v6, a3, a4, a1);
}

uint64_t static StateOfMindVisualization.VisualizationPPTModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_258B02D24();
  v5[2] = a1;
  v5[3] = a2;
  return sub_258AABD98(sub_258AAD43C, v5, "MentalHealthUI/StateOfMindVisualizationLive.swift", 49, 2, 182) & 1;
}

uint64_t sub_258AABC0C@<X0>(BOOL *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  *a3 = 1;
  return result;
}

uint64_t sub_258AABD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  sub_258B02D14();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_258AAE2A0(v15);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v7 & 1;
      }

      __break(1u);
    }

    v7 = v15[0];
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return v7 & 1;
    }

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_258B031B4();
  MEMORY[0x259C931B0](0xD00000000000003FLL, 0x8000000258B38B50);
  v14 = sub_258B035A4();
  MEMORY[0x259C931B0](v14);

  MEMORY[0x259C931B0](46, 0xE100000000000000);
  result = sub_258B03294();
  __break(1u);
  return result;
}

uint64_t sub_258AABF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_258B02D14();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_258AAE278();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_258B031B4();
    MEMORY[0x259C931B0](0xD00000000000003FLL, 0x8000000258B38B50);
    v12 = sub_258B035A4();
    MEMORY[0x259C931B0](v12);

    MEMORY[0x259C931B0](46, 0xE100000000000000);
    result = sub_258B03294();
    __break(1u);
  }

  return result;
}

uint64_t sub_258AAC0D8(uint64_t a1)
{
  sub_258B02D24();
  v4[2] = a1;
  v5 = v1;
  return sub_258AABF50(sub_258AAD458, v4, "MentalHealthUI/StateOfMindVisualizationLive.swift", 49, 2u, 188);
}

uint64_t sub_258AAC150(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v2 = v5;
  if (v5 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x259C93B40](*&v2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_258B00564();

  v3 = v5;
  if (v5 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x259C93B40](*&v3);
}

uint64_t StateOfMindVisualization.VisualizationPPTModel.deinit()
{
  v1 = OBJC_IVAR____TtCV14MentalHealthUI24StateOfMindVisualization21VisualizationPPTModel__valence;
  sub_258AAE374(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtCV14MentalHealthUI24StateOfMindVisualization21VisualizationPPTModel__effectiveValence, v3);
  return v0;
}

uint64_t StateOfMindVisualization.VisualizationPPTModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV14MentalHealthUI24StateOfMindVisualization21VisualizationPPTModel__valence;
  sub_258AAE374(0, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  v3 = v2;
  v4 = *(*(v2 - 8) + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtCV14MentalHealthUI24StateOfMindVisualization21VisualizationPPTModel__effectiveValence, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_258AAC3F4()
{
  sub_258B03514();
  sub_258B02D24();
  v2[2] = v4;
  v3 = v0;
  sub_258AABF50(sub_258AAE428, v2, "MentalHealthUI/StateOfMindVisualizationLive.swift", 49, 2u, 188);
  return sub_258B03554();
}

uint64_t sub_258AAC480()
{
  v1 = *v0;
  sub_258B03514();
  sub_258B02D24();
  v3[2] = v4;
  v3[3] = v1;
  sub_258AABF50(sub_258AAE428, v3, "MentalHealthUI/StateOfMindVisualizationLive.swift", 49, 2u, 188);
  return sub_258B03554();
}

uint64_t sub_258AAC50C(uint64_t a1)
{
  v3 = *v1;
  sub_258B02D24();
  v5[2] = a1;
  v5[3] = v3;
  return sub_258AABF50(sub_258AAE428, v5, "MentalHealthUI/StateOfMindVisualizationLive.swift", 49, 2u, 188);
}

uint64_t sub_258AAC584(uint64_t a1)
{
  sub_258B03514();
  v2 = *v1;
  sub_258B02D24();
  v4[2] = v5;
  v4[3] = v2;
  sub_258AABF50(sub_258AAE428, v4, "MentalHealthUI/StateOfMindVisualizationLive.swift", 49, 2u, 188);
  return sub_258B03554();
}

uint64_t sub_258AAC60C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for StateOfMindVisualization.VisualizationPPTModel(0);
  result = sub_258B004E4();
  *a2 = result;
  return result;
}

uint64_t sub_258AAC64C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_258B02D24();
  v5[2] = v2;
  v5[3] = v3;
  return sub_258AABD98(sub_258AAE440, v5, "MentalHealthUI/StateOfMindVisualizationLive.swift", 49, 2, 182) & 1;
}

uint64_t StateOfMindVisualization.VisualizationPPTView.model.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t StateOfMindVisualization.VisualizationPPTView.$model.getter()
{
  type metadata accessor for StateOfMindVisualization.VisualizationPPTModel(0);
  sub_258AAE308(&qword_27F970A98, type metadata accessor for StateOfMindVisualization.VisualizationPPTModel, &protocol conformance descriptor for StateOfMindVisualization.VisualizationPPTModel);

  return sub_258B00A34();
}

uint64_t StateOfMindVisualization.VisualizationPPTView.init(model:)@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for StateOfMindVisualization.VisualizationPPTModel(0);
  sub_258AAE308(&qword_27F970A98, type metadata accessor for StateOfMindVisualization.VisualizationPPTModel, &protocol conformance descriptor for StateOfMindVisualization.VisualizationPPTModel);
  result = sub_258B00A24();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t StateOfMindVisualization.VisualizationPPTView.body.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for StateOfMindVisualization.VisualizationPPTModel(0);
  sub_258AAE308(&qword_27F970A98, type metadata accessor for StateOfMindVisualization.VisualizationPPTModel, &protocol conformance descriptor for StateOfMindVisualization.VisualizationPPTModel);
  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  sub_258B00A34();
  swift_getKeyPath();
  sub_258B00A44();

  KeyPath = swift_getKeyPath();
  sub_258B02114();
  sub_258B02114();
  sub_258B02114();
  v3 = sub_258B00B44();
  result = sub_258B01874();
  *a1 = KeyPath;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v10;
  *(a1 + 72) = v11;
  *(a1 + 80) = v12;
  *(a1 + 88) = v7;
  *(a1 + 96) = v8;
  *(a1 + 104) = v9;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0x3FF0000000000000;
  *(a1 + 136) = v3;
  *(a1 + 144) = result;
  return result;
}

void sub_258AACA88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_258AAE374(0, &qword_27F96E608, &_s19EntryMomentDataViewV15ItemDescriptionVN, MEMORY[0x277D84560]);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 48);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_258AACB88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_258AAE374(0, &qword_27F970B08, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_258AACC70(uint64_t a1)
{
  sub_258A320A4(0);
  v43 = v2;
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v4);
  v9 = &v38 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = *(v3 + 80);
    v40 = v12;
    v41 = (v12 + 32) & ~v12;
    v13 = MEMORY[0x277D84F90] + v41;
    v14 = 0;
    v15 = 0;
    v16 = *(_s5EntryVMa(0) - 8);
    v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v42 = *(v16 + 72);
    v18 = v11;
    v38 = v10;
    v39 = v3;
    while (1)
    {
      v20 = *(v43 + 48);
      *v6 = v14;
      sub_258A2C4E4(v17, v6 + v20);
      result = sub_258AAE05C(v6, v9, sub_258A320A4);
      if (v15)
      {
        v11 = v18;
        v19 = __OFSUB__(v15--, 1);
        if (v19)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v21 = v18[3];
        if (((v21 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v22 = v9;
        v23 = v21 & 0xFFFFFFFFFFFFFFFELL;
        if (v23 <= 1)
        {
          v24 = 1;
        }

        else
        {
          v24 = v23;
        }

        sub_258AAE3C4(0, &qword_27F970B18, sub_258A320A4, MEMORY[0x277D84560]);
        v25 = *(v3 + 72);
        v26 = v41;
        v11 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v11);
        if (!v25)
        {
          goto LABEL_34;
        }

        v27 = result - v26;
        if (result - v26 == 0x8000000000000000 && v25 == -1)
        {
          goto LABEL_35;
        }

        v29 = v27 / v25;
        v11[2] = v24;
        v11[3] = 2 * (v27 / v25);
        v30 = v11 + v26;
        v31 = v18[3] >> 1;
        v32 = v31 * v25;
        if (v18[2])
        {
          if (v11 < v18 || v30 >= v18 + v41 + v32)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v13 = &v30[v32];
        v34 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v9 = v22;
        v10 = v38;
        v3 = v39;
        v19 = __OFSUB__(v34, 1);
        v15 = v34 - 1;
        if (v19)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v14;
      result = sub_258AAE05C(v9, v13, sub_258A320A4);
      v13 += *(v3 + 72);
      v17 += v42;
      v18 = v11;
      if (v10 == v14)
      {
        goto LABEL_29;
      }
    }
  }

  v15 = 0;
LABEL_29:
  v35 = v11[3];
  if (v35 >= 2)
  {
    v36 = v35 >> 1;
    v19 = __OFSUB__(v36, v15);
    v37 = v36 - v15;
    if (v19)
    {
      goto LABEL_36;
    }

    v11[2] = v37;
  }

  return v11;
}

char *sub_258AACFBC(char *result)
{
  v1 = *(result + 2);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = result + 32;
    while (1)
    {
      v7 = v6[v3];
      if (v4)
      {
        result = sub_258B003E4();
        v8 = __OFSUB__(v4--, 1);
        if (v8)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v9 = *(v2 + 3);
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_28;
        }

        v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
        if (v10 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v10;
        }

        sub_258AAE3C4(0, &qword_27F970B20, sub_258A77A24, MEMORY[0x277D84560]);
        v12 = swift_allocObject();
        v13 = _swift_stdlib_malloc_size(v12);
        v14 = v13 - 32;
        if (v13 < 32)
        {
          v14 = v13 - 17;
        }

        v15 = v14 >> 4;
        *(v12 + 2) = v11;
        *(v12 + 3) = 2 * (v14 >> 4);
        v16 = v12 + 32;
        v17 = *(v2 + 3) >> 1;
        v5 = &v12[16 * v17 + 32];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (*(v2 + 2))
        {
          v19 = v2 + 32;
          if (v12 != v2 || v16 >= &v19[16 * v17])
          {
            memmove(v16, v19, 16 * v17);
          }

          sub_258B003E4();
          *(v2 + 2) = 0;
        }

        else
        {
          sub_258B003E4();
        }

        v2 = v12;
        v8 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v8)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      *(v5 + 1) = v7;
      v5 += 16;
      if (v1 == ++v3)
      {
        goto LABEL_23;
      }
    }
  }

  v4 = 0;
LABEL_23:
  v20 = *(v2 + 3);
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v8 = __OFSUB__(v21, v4);
    v22 = v21 - v4;
    if (v8)
    {
      goto LABEL_29;
    }

    *(v2 + 2) = v22;
  }

  return v2;
}

void sub_258AAD16C(double a1, double a2, double a3)
{
  v6 = a1 <= a2;
  if (a3 > 0.0)
  {
    v6 = a1 >= a2;
  }

  if (!v6)
  {
    v7 = -1;
    do
    {
      v8 = ++v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      v9 = a1 + v8 * a3;
      v10 = v9 <= a2;
      if (a3 > 0.0)
      {
        v10 = v9 >= a2;
      }
    }

    while (!v10);
    if (v7 == -1)
    {
      goto LABEL_18;
    }

    sub_258AAE374(0, &qword_27F970B08, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 25;
    }

    v14 = v13 >> 3;
    *(v11 + 2) = v8;
    *(v11 + 3) = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v8;
    v17 = -1;
    v18 = a1;
    while (1)
    {
      v19 = v18 <= a2;
      if (a3 > 0.0)
      {
        v19 = v18 >= a2;
      }

      if (v19)
      {
        goto LABEL_48;
      }

      v20 = a1 + (v17 + 2) * a3;
      *v15++ = v18;
      ++v17;
      v18 = v20;
      if (v7 == v17)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_18:
  v11 = MEMORY[0x277D84F90];
  v21 = *(MEMORY[0x277D84F90] + 24);

  v8 = 0;
  v15 = v11 + 4;
  v16 = v21 >> 1;
  v20 = a1;
LABEL_19:
  v22 = v20 <= a2;
  if (a3 > 0.0)
  {
    v22 = v20 >= a2;
  }

  if (!v22)
  {
    v23 = MEMORY[0x277D839F8];
    while (!__OFADD__(v8, 1))
    {
      if (!v16)
      {
        v24 = *(v11 + 3);
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_49;
        }

        v25 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        sub_258AAE374(0, &qword_27F970B08, v23, MEMORY[0x277D84560]);
        v27 = swift_allocObject();
        v28 = _swift_stdlib_malloc_size(v27);
        v29 = v28 - 32;
        if (v28 < 32)
        {
          v29 = v28 - 25;
        }

        v30 = v29 >> 3;
        *(v27 + 2) = v26;
        *(v27 + 3) = 2 * (v29 >> 3);
        v31 = (v27 + 4);
        v32 = *(v11 + 3) >> 1;
        if (*(v11 + 2))
        {
          v33 = v11 + 4;
          if (v27 != v11 || v31 >= v33 + 8 * v32)
          {
            memmove(v27 + 4, v33, 8 * v32);
          }

          v11[2] = 0.0;
        }

        v15 = (v31 + 8 * v32);
        v16 = (v30 & 0x7FFFFFFFFFFFFFFFLL) - v32;

        v11 = v27;
      }

      v34 = __OFSUB__(v16--, 1);
      if (v34)
      {
        goto LABEL_47;
      }

      *v15++ = v20;
      v20 = a1 + (v8 + 1) * a3;
      v35 = v20 <= a2;
      if (a3 > 0.0)
      {
        v35 = v20 >= a2;
      }

      ++v8;
      if (v35)
      {
        goto LABEL_41;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_41:
  v36 = *(v11 + 3);
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v34 = __OFSUB__(v37, v16);
    v38 = v37 - v16;
    if (v34)
    {
LABEL_50:
      __break(1u);
      return;
    }

    *(v11 + 2) = v38;
  }
}

uint64_t type metadata accessor for StateOfMindVisualization.VisualizationPPTModel(uint64_t a1)
{
  result = qword_27F970AA8;
  if (!qword_27F970AA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AAD52C(uint64_t a1)
{
  sub_258AAE374(319, &qword_27F96E6E0, MEMORY[0x277D839F8], MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_258AAD760()
{
  result = qword_27F970AB8;
  if (!qword_27F970AB8)
  {
    sub_258AAD7E0();
    sub_258A669C4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970AB8);
  }

  return result;
}

void sub_258AAD7E0()
{
  if (!qword_27F970AC0)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970AC0);
    }
  }
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_258AAD878(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258AAD8C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_258AAD96C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B00B04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_258AAD9C8(uint64_t a1)
{
  if (!qword_27F970AD8)
  {
    sub_258B02FC4();
    sub_258AAD96C(255, &qword_27F970AD0, sub_258AAD94C);
    sub_258AAE308(&qword_27F96FD38, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
    sub_258AADAA0();
    v1 = sub_258B00C54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970AD8);
    }
  }
}

unint64_t sub_258AADAA0()
{
  result = qword_27F970AE0;
  if (!qword_27F970AE0)
  {
    sub_258AAD96C(255, &qword_27F970AD0, sub_258AAD94C);
    sub_258AADB3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970AE0);
  }

  return result;
}

unint64_t sub_258AADB3C()
{
  result = qword_27F970AE8;
  if (!qword_27F970AE8)
  {
    sub_258AAD94C(255);
    sub_258AAE308(&qword_27F971CA0, type metadata accessor for EmotionShape, &unk_258B358A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970AE8);
  }

  return result;
}

void sub_258AADBEC(uint64_t a1)
{
  if (!qword_27F970AF0)
  {
    sub_258B02FC4();
    sub_258AAD9C8(255);
    sub_258AAE308(&qword_27F96FD38, MEMORY[0x277CC9DB0], MEMORY[0x277CC9DA8]);
    sub_258AAE308(&qword_27F970AF8, sub_258AAD9C8, MEMORY[0x277CDDB50]);
    v1 = sub_258B00C54();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970AF0);
    }
  }
}

uint64_t sub_258AADD10(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

float sub_258AADD1C@<S0>(float *a1@<X8>)
{
  v5 = *(v1 + 96);
  v6 = *(v1 + 112);
  sub_258AAE374(0, &qword_27F96E198, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v4);
  result = (v4 + 1.0) * 0.5;
  *a1 = result;
  return result;
}

float sub_258AADE30@<S0>(float *a1@<X8>)
{
  v5 = *(v1 + 120);
  v6 = *(v1 + 136);
  sub_258AAE374(0, &qword_27F96E198, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
  MEMORY[0x259C92900](&v4);
  result = (v4 + 1.0) * 0.5;
  *a1 = result;
  return result;
}

uint64_t objectdestroyTm_22()
{
  swift_unknownObjectRelease();
  sub_258AADD10(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

void sub_258AADFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F971C80)
  {
    sub_258A75B6C(0, a2, a3);
    v3 = sub_258B034D4();
    if (!v4)
    {
      atomic_store(v3, &qword_27F971C80);
    }
  }
}

uint64_t sub_258AAE05C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AAE0E4(uint64_t a1, uint64_t a2)
{
  sub_258AAD96C(0, &qword_27F970AD0, sub_258AAD94C);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_45Tm()
{
  sub_258AADD10(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_258AAE1F8(uint64_t a1)
{
  sub_258AAE374(0, &qword_27F970B00, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_258AAE2A0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

double block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_258AAE308(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_258AAE374(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_258AAE3C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258AAE46C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for ConfirmationView(uint64_t a1)
{
  result = qword_27F970B28;
  if (!qword_27F970B28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AAE530(uint64_t a1)
{
  sub_258AAE46C(319, &qword_27F96E3D8, type metadata accessor for ValenceSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258AAE46C(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_258AAE65C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_258B006A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ConfirmationView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_258AAFF44(v1, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConfirmationView);
  v10 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v11 = swift_allocObject();
  sub_258AAFA68(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ConfirmationView);
  v12 = sub_258B00B44();
  v13 = sub_258B01874();
  v14 = *v1;
  sub_258AC14E8(v6);
  sub_258A9B4D8(v6, sub_258AAF890, v11, v12, v13, v20, v14);

  (*(v4 + 8))(v6, v3);
  result = *(v1 + 32);
  v16 = v20[5];
  *(a1 + 64) = v20[4];
  *(a1 + 80) = v16;
  *(a1 + 96) = v21;
  v17 = v20[1];
  *a1 = v20[0];
  *(a1 + 16) = v17;
  v18 = v20[3];
  *(a1 + 32) = v20[2];
  *(a1 + 48) = v18;
  *(a1 + 104) = result;
  return result;
}

__n128 sub_258AAE8A8@<Q0>(double *a2@<X1>, uint64_t a3@<X8>)
{
  sub_258A9C690(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AAEA20();
  *v7 = sub_258B024F4();
  v7[1] = v8;
  sub_258AAF9D0(0);
  sub_258AAEB50(a2, v7 + *(v9 + 44));
  sub_258B024F4();
  sub_258B00C94();
  sub_258AAFA68(v7, a3, sub_258A9C690);
  sub_258AB0190(0, &qword_27F970758, sub_258A9C690, MEMORY[0x277CDFC70]);
  v11 = a3 + *(v10 + 36);
  v12 = v15[5];
  *(v11 + 64) = v15[4];
  *(v11 + 80) = v12;
  *(v11 + 96) = v15[6];
  v13 = v15[1];
  *v11 = v15[0];
  *(v11 + 16) = v13;
  result = v15[3];
  *(v11 + 32) = v15[2];
  *(v11 + 48) = result;
  return result;
}

id sub_258AAEA20()
{
  v0 = type metadata accessor for ValenceSelectionPhaseSpecs(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v4 = result;
    [result isiPad];

    sub_258B008C4();
    type metadata accessor for ConfirmationView(0);
    sub_258AC1B90(v2);
    return sub_258AAFFAC(v2, type metadata accessor for ValenceSelectionPhaseSpecs);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258AAEB50@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v110 = a2;
  v4 = sub_258B02554();
  v108 = *(v4 - 8);
  v109 = v4;
  MEMORY[0x28223BE20](v4);
  v107 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_258B006A4();
  v104 = *(v106 - 8);
  v6 = MEMORY[0x28223BE20](v106);
  v102 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v101 = v80 - v8;
  sub_258AB01F4(0, &qword_27F9707C8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE03B8]);
  v105 = v9 - 8;
  MEMORY[0x28223BE20](v9 - 8);
  v103 = v80 - v10;
  v90 = sub_258B019F4();
  v11 = *(v90 - 8);
  v12 = MEMORY[0x28223BE20](v90);
  v86 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v87 = v80 - v14;
  v15 = type metadata accessor for ValenceSelectionPhaseSpecs(0);
  MEMORY[0x28223BE20](v15);
  v84 = v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2589ED63C();
  v91 = v17;
  v89 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v83 = v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A9CB88(0);
  v88 = v19 - 8;
  MEMORY[0x28223BE20](v19 - 8);
  v85 = v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB011C(0, &qword_27F9707B0, sub_258A9CB88, sub_258A9CBBC);
  v95 = v21 - 8;
  MEMORY[0x28223BE20](v21 - 8);
  v93 = v80 - v22;
  sub_258A9CA58(0);
  v97 = v23 - 8;
  MEMORY[0x28223BE20](v23 - 8);
  v94 = v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AAF9A8(0);
  v96 = v25;
  MEMORY[0x28223BE20](v25);
  v92 = v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258A9C968(0);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v100 = v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v98 = v80 - v30;
  sub_258A9C828(0);
  v32 = MEMORY[0x28223BE20](v31 - 8);
  v99 = v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v82 = v80 - v34;
  v35 = *a1;
  LOBYTE(v112[0]) = 1;
  StateOfMindVisualization.ValenceImageProvider.init(valence:imageScale:)(v112, &v114, v35);
  v81 = v114;
  v36 = v115;
  sub_258B024F4();
  sub_258B00854();
  v38 = *(a1 + 1);
  v37 = *(a1 + 2);
  sub_258B025E4();
  v39 = *(a1 + 3);
  v114 = v81;
  *&v115 = v36;
  *(&v118 + 1) = v37;
  *&v119 = v38;
  *(&v119 + 1) = v38;
  *v120 = v40;
  *&v120[8] = v41;
  *&v120[16] = v39;
  v120[24] = 0;
  v112[4] = v118;
  v112[5] = v119;
  v113[0] = *v120;
  *(v113 + 9) = *&v120[9];
  v112[0] = v81;
  v112[1] = v115;
  v112[2] = v116;
  v112[3] = v117;
  v111 = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5848);
  sub_258AAFAD0(0, &qword_280DF8948, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  *&v81 = v42;
  v80[1] = sub_2589C6824();
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D5868);
  sub_258AAF980(0);
  sub_258AB000C(&qword_27F970B40, sub_258AAF980, sub_258AAFB20, MEMORY[0x277CDF4D0]);
  sub_258B01DD4();
  sub_258AAFFAC(&v114, sub_258AAF980);

  v43 = v83;
  sub_258B020E4();
  type metadata accessor for ConfirmationView(0);
  v44 = v84;
  sub_258AC1B90(v84);
  sub_258B01944();
  v45 = sub_258B00A84();
  v46 = MEMORY[0x277CE0A10];
  if ((v45 & 1) == 0)
  {
    v46 = MEMORY[0x277CE0A18];
  }

  v47 = v86;
  v48 = v90;
  (*(v11 + 104))(v86, *v46, v90);
  v49 = v87;
  (*(v11 + 32))(v87, v47, v48);
  sub_258B01A14();

  (*(v11 + 8))(v49, v48);
  sub_258AAFFAC(v44, type metadata accessor for ValenceSelectionPhaseSpecs);
  v50 = sub_258B01924();

  KeyPath = swift_getKeyPath();
  v52 = v85;
  (*(v89 + 32))(v85, v43, v91);
  v53 = (v52 + *(v88 + 44));
  *v53 = KeyPath;
  v53[1] = v50;
  v54 = sub_258B014B4();
  v55 = v101;
  sub_258AC14E8(v101);
  v56 = v104;
  v57 = v102;
  v58 = v106;
  (*(v104 + 104))(v102, *MEMORY[0x277CDF3C0], v106);
  LOBYTE(KeyPath) = sub_258B00694();
  v59 = *(v56 + 8);
  v59(v57, v58);
  v59(v55, v58);
  v60 = MEMORY[0x277CE13B8];
  if ((KeyPath & 1) == 0)
  {
    v60 = MEMORY[0x277CE13B0];
  }

  v62 = v107;
  v61 = v108;
  v63 = v109;
  (*(v108 + 104))(v107, *v60, v109);
  v64 = v103;
  (*(v61 + 32))(&v103[*(v105 + 44)], v62, v63);
  *v64 = v54;
  v65 = v93;
  sub_258AAFB98(v64, &v93[*(v95 + 44)]);
  sub_258AAFA68(v52, v65, sub_258A9CB88);
  v66 = swift_getKeyPath();
  v67 = v65;
  v68 = v94;
  sub_258AAFC28(v67, v94);
  v69 = v68 + *(v97 + 44);
  *v69 = v66;
  *(v69 + 8) = 1;
  v70 = *(a1 + 5);
  v71 = v92;
  sub_258AAFA68(v68, v92, sub_258A9CA58);
  *(v71 + *(v96 + 36)) = v70;
  *&v112[0] = &unk_2869D4670;
  sub_2589FC8C8(&unk_2869D5878);
  sub_258B02A34();

  sub_2589C68A0(&unk_2869D5898);
  sub_258AB000C(&qword_27F970B58, sub_258AAF9A8, sub_258AAFCBC, MEMORY[0x277CDF900]);
  v72 = v98;
  sub_258B01DD4();

  sub_258AAFFAC(v71, sub_258AAF9A8);
  v73 = v82;
  v74 = v99;
  sub_258AAFF44(v82, v99, sub_258A9C828);
  v75 = v72;
  v76 = v100;
  sub_258AAFF44(v72, v100, sub_258A9C968);
  v77 = v110;
  sub_258AAFF44(v74, v110, sub_258A9C828);
  sub_258AAF910(0);
  sub_258AAFF44(v76, v77 + *(v78 + 48), sub_258A9C968);
  sub_258AAFFAC(v75, sub_258A9C968);
  sub_258AAFFAC(v73, sub_258A9C828);
  sub_258AAFFAC(v76, sub_258A9C968);
  return sub_258AAFFAC(v74, sub_258A9C828);
}

uint64_t sub_258AAF788@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v8 = sub_258AFFD94();
  sub_2589BFF58(v8, v2, v3);
  result = sub_258B01B44();
  *a1 = result;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v7;
  return result;
}

uint64_t sub_258AAF84C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_258B02084();
  *a1 = result;
  return result;
}

double sub_258AAF890@<D0>(uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for ConfirmationView(0) - 8);
  v5 = (v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  *&result = sub_258AAE8A8(v5, a2).n128_u64[0];
  return result;
}

void sub_258AAF910(uint64_t a1)
{
  if (!qword_27F970770)
  {
    sub_258A9C828(255);
    sub_258A9C968(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970770);
    }
  }
}

void sub_258AAF9D0(uint64_t a1)
{
  if (!qword_27F970B38)
  {
    sub_258AAE46C(255, &qword_27F970768, sub_258AAF910, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970B38);
    }
  }
}

uint64_t sub_258AAFA68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258AAFAD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258AAFB98(uint64_t a1, uint64_t a2)
{
  sub_258AB01F4(0, &qword_27F9707C8, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE03B8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AAFC28(uint64_t a1, uint64_t a2)
{
  sub_258AB011C(0, &qword_27F9707B0, sub_258A9CB88, sub_258A9CBBC);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_258AAFCBC()
{
  result = qword_27F970B60;
  if (!qword_27F970B60)
  {
    sub_258A9CA58(255);
    sub_258AAFD3C();
    sub_2589DC3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970B60);
  }

  return result;
}

unint64_t sub_258AAFD3C()
{
  result = qword_27F970B68;
  if (!qword_27F970B68)
  {
    sub_258AB011C(255, &qword_27F9707B0, sub_258A9CB88, sub_258A9CBBC);
    sub_258AAFE1C();
    sub_258AAFEFC(&qword_27F970B78, sub_258A9CBBC, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970B68);
  }

  return result;
}

unint64_t sub_258AAFE1C()
{
  result = qword_27F970B70;
  if (!qword_27F970B70)
  {
    sub_258A9CB88(255);
    sub_258AAFEFC(&qword_27F96D6B8, sub_2589ED63C, MEMORY[0x277CDEFF0]);
    sub_258AAFEFC(&qword_27F96C938, sub_2589BF83C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970B70);
  }

  return result;
}

uint64_t sub_258AAFEFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258AAFF44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AAFFAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258AB000C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258AB008C(uint64_t a1)
{
  if (!qword_27F970B88)
  {
    sub_258AB011C(255, &qword_27F970740, sub_258A9C5E0, sub_258A005F0);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970B88);
    }
  }
}

void sub_258AB011C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258AB0190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258AB01F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258AB0248()
{
  result = qword_27F970B90;
  if (!qword_27F970B90)
  {
    sub_258AB011C(255, &qword_27F970740, sub_258A9C5E0, sub_258A005F0);
    sub_258AB0328();
    sub_258AAFEFC(qword_27F96DBD0, sub_258A005F0, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970B90);
  }

  return result;
}

unint64_t sub_258AB0328()
{
  result = qword_27F970B98;
  if (!qword_27F970B98)
  {
    sub_258A9C5E0(255);
    sub_258AAFEFC(&qword_27F970BA0, sub_258A9C608, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970B98);
  }

  return result;
}

void sub_258AB03EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for ReflectiveIntervalSelectionHeaderText(uint64_t a1)
{
  result = qword_27F970BA8;
  if (!qword_27F970BA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AB04B0(uint64_t a1)
{
  sub_258B00084();
  if (v1 <= 0x3F)
  {
    sub_258AB03EC(319, &qword_27F96F338, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_258AB03EC(319, &qword_27F96C7E0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_258AB03EC(319, &qword_27F96EB00, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_258AB0620@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v184 = a2;
  sub_258AB1D8C(0);
  v158 = v3;
  MEMORY[0x28223BE20](v3);
  v161 = &v144 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB1D2C(0);
  v160 = v5;
  MEMORY[0x28223BE20](v5);
  v159 = &v144 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB1CB8(0, &qword_27F970BF8, sub_258AB1D2C, sub_258AB1BE0);
  v187 = v7;
  v183 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v156 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v157 = &v144 - v10;
  v11 = sub_258B00224();
  v179 = *(v11 - 8);
  v180 = v11;
  MEMORY[0x28223BE20](v11);
  v178 = &v144 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB1C30(0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v182 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v186 = &v144 - v16;
  v177 = sub_258B006A4();
  v176 = *(v177 - 8);
  v17 = MEMORY[0x28223BE20](v177);
  v175 = &v144 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v174 = &v144 - v19;
  v185 = sub_258B019F4();
  v20 = *(v185 - 8);
  v21 = MEMORY[0x28223BE20](v185);
  v153 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v154 = &v144 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v144 - v26;
  MEMORY[0x28223BE20](v25);
  v166 = &v144 - v28;
  v29 = type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs(0);
  v30 = MEMORY[0x28223BE20](v29);
  v152 = &v144 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v144 - v32;
  v173 = sub_258AB1B88;
  v172 = type metadata accessor for LoggingFlowBlendMode;
  sub_258AB1CB8(0, &qword_27F970BE0, sub_258AB1B88, type metadata accessor for LoggingFlowBlendMode);
  v167 = v34 - 8;
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v144 - v35;
  sub_258AB1AF8(0);
  v171 = v37 - 8;
  MEMORY[0x28223BE20](v37 - 8);
  v169 = &v144 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB1AC4(0);
  v170 = v39 - 8;
  v40 = MEMORY[0x28223BE20](v39 - 8);
  v181 = &v144 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v168 = &v144 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v188 = &v144 - v45;
  v46 = a1;
  v47 = *a1;
  v48 = a1[1];
  v164 = v46;
  v189 = v47;
  v190 = v48;
  v51 = sub_2589BFF58(v44, v49, v50);
  sub_258B003E4();
  v150 = v51;
  v52 = sub_258B01B44();
  v54 = v53;
  v56 = v55;
  v163 = v57;
  v165 = type metadata accessor for ReflectiveIntervalSelectionHeaderText(0);
  v147 = *(v165 + 32);
  sub_258AC1BC4(v33);
  sub_258B018E4();
  v151 = v29;
  v58 = sub_258B00A84();
  v59 = v20[13];
  v60 = MEMORY[0x277CE0A10];
  if ((v58 & 1) == 0)
  {
    v60 = MEMORY[0x277CE0A18];
  }

  v61 = *v60;
  v62 = v27;
  v63 = v185;
  v149 = v20 + 13;
  v148 = v59;
  v59(v27, v61, v185);
  v64 = v20[4];
  v65 = v166;
  v146 = v20 + 4;
  v145 = v64;
  v64(v166, v62, v63);
  sub_258B01A14();

  v66 = v20[1];
  v155 = v20 + 1;
  v144 = v66;
  v66(v65, v63);
  sub_258AB1F2C(v33, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
  v67 = sub_258B01AE4();
  v69 = v68;
  v71 = v70;
  sub_2589BFFAC(v52, v54, v56 & 1);

  sub_258B01994();
  v72 = sub_258B01A94();
  v74 = v73;
  v76 = v75;
  sub_2589BFFAC(v67, v69, v71 & 1);

  LODWORD(v189) = sub_258B014A4();
  v77 = sub_258B01AB4();
  v163 = v78;
  v162 = v79;
  v166 = v80;
  sub_2589BFFAC(v72, v74, v76 & 1);

  v81 = v174;
  sub_258AC14E8(v174);
  v82 = v176;
  v83 = v175;
  v84 = v177;
  (*(v176 + 104))(v175, *MEMORY[0x277CDF3C0], v177);
  v85 = sub_258B00694();
  v86 = *(v82 + 8);
  v86(v83, v84);
  v86(v81, v84);
  if (v85)
  {
    v87 = 1.0;
  }

  else
  {
    v87 = 0.8;
  }

  v88 = *(v167 + 44);
  *&v36[v88] = swift_getKeyPath();
  sub_258AB03EC(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  v90 = v89;
  swift_storeEnumTagMultiPayload();
  v91 = v163;
  *v36 = v77;
  *(v36 + 1) = v91;
  v36[16] = v162 & 1;
  *(v36 + 3) = v166;
  *(v36 + 4) = v87;
  v92 = v169;
  sub_258AB1E54(v36, v169, &qword_27F970BE0, v173, v172);
  *(v92 + *(v171 + 44)) = 256;
  KeyPath = swift_getKeyPath();
  v94 = v92;
  v95 = v168;
  sub_258AB1DEC(v94, v168, sub_258AB1AF8);
  v96 = v95 + *(v170 + 44);
  *v96 = KeyPath;
  v97 = 1;
  *(v96 + 8) = 1;
  sub_258AB1DEC(v95, v188, sub_258AB1AC4);
  v98 = v178;
  sub_258AC1BF8(v178);
  LOBYTE(v95) = sub_258B00124();
  (*(v179 + 8))(v98, v180);
  if ((v95 & 1) == 0)
  {
    v189 = sub_258AB1598();
    v190 = v99;
    v100 = sub_258B01B44();
    v102 = v101;
    v180 = v90;
    v104 = v103;
    v105 = v152;
    sub_258AC1BC4(v152);
    sub_258B018E4();
    v106 = sub_258B00A84();
    v107 = MEMORY[0x277CE0A10];
    if ((v106 & 1) == 0)
    {
      v107 = MEMORY[0x277CE0A18];
    }

    v108 = v153;
    v109 = v185;
    v148(v153, *v107, v185);
    v110 = v154;
    v145(v154, v108, v109);
    sub_258B01A14();

    v144(v110, v109);
    sub_258AB1F2C(v105, type metadata accessor for ReflectiveIntervalSelectionPhaseSpecs);
    v111 = sub_258B01AE4();
    v113 = v112;
    v115 = v114;
    sub_2589BFFAC(v100, v102, v104 & 1);

    sub_258B01994();
    v116 = sub_258B01A94();
    v118 = v117;
    v120 = v119;
    sub_2589BFFAC(v111, v113, v115 & 1);

    LODWORD(v189) = sub_258B014B4();
    v121 = sub_258B01AB4();
    v123 = v122;
    LOBYTE(v111) = v124;
    v126 = v125;
    sub_2589BFFAC(v116, v118, v120 & 1);

    v127 = *(v158 + 36);
    v128 = swift_getKeyPath();
    v129 = v161;
    *&v161[v127] = v128;
    swift_storeEnumTagMultiPayload();
    *v129 = v121;
    *(v129 + 1) = v123;
    v129[16] = v111 & 1;
    *(v129 + 3) = v126;
    v130 = v129;
    v131 = v159;
    sub_258AB1DEC(v130, v159, sub_258AB1D8C);
    *(v131 + *(v160 + 36)) = 256;
    v132 = swift_getKeyPath();
    v133 = v156;
    sub_258AB1DEC(v131, v156, sub_258AB1D2C);
    v134 = v133 + *(v187 + 36);
    *v134 = v132;
    *(v134 + 8) = 1;
    v135 = v133;
    v136 = v157;
    sub_258AB1E54(v135, v157, &qword_27F970BF8, sub_258AB1D2C, sub_258AB1BE0);
    sub_258AB1E54(v136, v186, &qword_27F970BF8, sub_258AB1D2C, sub_258AB1BE0);
    v97 = 0;
  }

  v137 = v186;
  (*(v183 + 56))(v186, v97, 1, v187);
  v138 = v188;
  v139 = v181;
  sub_258AB1EC4(v188, v181, sub_258AB1AC4);
  v140 = v182;
  sub_258AB1EC4(v137, v182, sub_258AB1C30);
  v141 = v184;
  sub_258AB1EC4(v139, v184, sub_258AB1AC4);
  sub_258AB1A54(0);
  sub_258AB1EC4(v140, v141 + *(v142 + 48), sub_258AB1C30);
  sub_258AB1F2C(v137, sub_258AB1C30);
  sub_258AB1F2C(v138, sub_258AB1AC4);
  sub_258AB1F2C(v140, sub_258AB1C30);
  return sub_258AB1F2C(v139, sub_258AB1AC4);
}

uint64_t sub_258AB1598()
{
  v0 = sub_258AFFEF4();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x28223BE20](v0);
  v28 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_258AFFF54();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258AFFFA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258AFFFD4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v25 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v25 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v25 - v20;
  v25[1] = *(type metadata accessor for ReflectiveIntervalSelectionHeaderText(0) + 20);
  MEMORY[0x259C90120]();
  sub_258AFFF94();
  sub_258AFFFC4();
  (*(v6 + 8))(v8, v5);
  v22 = *(v10 + 8);
  v22(v13, v9);
  sub_258AFFF44();
  sub_258AFFED4();
  (*(v26 + 8))(v4, v27);
  v22(v16, v9);
  v23 = v28;
  sub_258AFFEE4();
  sub_258AFFEB4();
  (*(v29 + 8))(v23, v30);
  v22(v19, v9);
  sub_258AB2020(&qword_27F9702C8, MEMORY[0x277CC9428], MEMORY[0x277CC9420]);
  sub_258B00064();
  v22(v21, v9);
  return v31;
}

uint64_t sub_258AB1970@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_258B01194();
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 16) = 0;
  sub_258AB19B8(0);
  return sub_258AB0620(v2, a2 + *(v4 + 44));
}

void sub_258AB19B8(uint64_t a1)
{
  if (!qword_27F970BB8)
  {
    sub_258AB1A20(255);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970BB8);
    }
  }
}

void sub_258AB1A54(uint64_t a1)
{
  if (!qword_27F970BC8)
  {
    sub_258AB1AC4(255);
    sub_258AB1C30(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970BC8);
    }
  }
}

void sub_258AB1AF8(uint64_t a1)
{
  if (!qword_27F970BD8)
  {
    sub_258AB1CB8(255, &qword_27F970BE0, sub_258AB1B88, type metadata accessor for LoggingFlowBlendMode);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970BD8);
    }
  }
}

void sub_258AB1B88()
{
  if (!qword_27F970BE8)
  {
    v0 = sub_258B00B04();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970BE8);
    }
  }
}

void sub_258AB1BE0()
{
  if (!qword_27F96C8C0)
  {
    v0 = sub_258B017C4();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96C8C0);
    }
  }
}

void sub_258AB1C30(uint64_t a1)
{
  if (!qword_27F970BF0)
  {
    sub_258AB1CB8(255, &qword_27F970BF8, sub_258AB1D2C, sub_258AB1BE0);
    v1 = sub_258B030C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970BF0);
    }
  }
}

void sub_258AB1CB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_258B00B04();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_258AB1D2C(uint64_t a1)
{
  if (!qword_27F970C00)
  {
    sub_258AB1D8C(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970C00);
    }
  }
}

void sub_258AB1D8C(uint64_t a1)
{
  if (!qword_27F96FF48)
  {
    type metadata accessor for LoggingFlowBlendMode(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96FF48);
    }
  }
}

uint64_t sub_258AB1DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AB1E54(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  sub_258AB1CB8(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_258AB1EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AB1F2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258AB1F8C(uint64_t a1)
{
  if (!qword_27F970C10)
  {
    sub_258AB1A20(255);
    sub_258AB2020(&qword_27F970C18, sub_258AB1A20, MEMORY[0x277CE14C0]);
    v1 = sub_258B022D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970C10);
    }
  }
}

uint64_t sub_258AB2020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258AB2094(void (*a1)(void *), uint64_t a2, char a3, uint64_t a4)
{
  sub_258AB22FC();

  v5 = sub_258B02124();
  if ((v7 & 1) == 0)
  {
    a1(v5);
    sub_258B02134();
  }
}

double sub_258AB2144@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = *(v2 + 16);
  v8 = v2[3];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v7;
  *(v9 + 40) = v8;
  sub_258AB2240(0, v10, v11);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  sub_258AB229C(0, v13, v14);
  v16 = (a2 + *(v15 + 36));
  *v16 = sub_258AB2230;
  v16[1] = v9;
  v16[2] = 0;
  v16[3] = 0;

  return result;
}

void sub_258AB2240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F970C20)
  {
    sub_258A48FA4(0, a2, a3);
    v3 = sub_258B01464();
    if (!v4)
    {
      atomic_store(v3, &qword_27F970C20);
    }
  }
}

void sub_258AB229C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_27F970C28)
  {
    sub_258AB2240(255, a2, a3);
    v3 = sub_258B00B04();
    if (!v4)
    {
      atomic_store(v3, &qword_27F970C28);
    }
  }
}

void sub_258AB22FC()
{
  if (!qword_27F96D310)
  {
    v0 = sub_258B02154();
    if (!v1)
    {
      atomic_store(v0, &qword_27F96D310);
    }
  }
}

unint64_t sub_258AB234C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F970C30;
  if (!qword_27F970C30)
  {
    sub_258AB229C(255, a2, a3);
    sub_258AB23CC(v4, v5, v6);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970C30);
  }

  return result;
}

unint64_t sub_258AB23CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27F970C38;
  if (!qword_27F970C38)
  {
    sub_258AB2240(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970C38);
  }

  return result;
}

uint64_t sub_258AB2424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = sub_258B00154();
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258B00184();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258B00134();
  v9 = *(v8 - 8);
  v58 = v8;
  v59 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB2AEC(0, &qword_27F96EBF0, MEMORY[0x277CC9578]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v50 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v57 = &v44 - v15;
  v16 = sub_258B00084();
  v17 = *(v16 - 8);
  v48 = v16;
  v49 = v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB2AEC(0, &qword_27F970C40, MEMORY[0x277CC9A70]);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v44 - v21;
  sub_258AB2AEC(0, &qword_27F96F0A8, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v44 - v24;
  v26 = sub_258AFFD44();
  v46 = *(v26 - 8);
  v47 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_258B00224();
  (*(*(v29 - 8) + 56))(v25, 1, 1, v29);
  v30 = sub_258B00234();
  (*(*(v30 - 8) + 56))(v22, 1, 1, v30);
  sub_258AFFD34();
  v44 = a1;
  v45 = v19;
  sub_258B00114();
  v31 = v11;
  (*(v59 + 104))(v11, *MEMORY[0x277CC9878], v58);
  v33 = v51;
  v32 = v52;
  v34 = v7;
  (*(v51 + 104))(v7, *MEMORY[0x277CC9900], v52);
  v36 = v53;
  v35 = v54;
  v37 = v55;
  (*(v54 + 104))(v53, *MEMORY[0x277CC98E8], v55);
  sub_258B001F4();
  (*(v35 + 8))(v36, v37);
  v38 = v33;
  v39 = v48;
  (*(v38 + 8))(v34, v32);
  v40 = v49;
  (*(v59 + 8))(v31, v58);
  v41 = v50;
  (*(v40 + 8))(v45, v39);
  (*(v46 + 8))(v28, v47);
  sub_258A784F0(v57, v41);
  v42 = *(v40 + 48);
  if (v42(v41, 1, v39) != 1)
  {
    return (*(v40 + 32))(v56, v41, v39);
  }

  (*(v40 + 16))(v56, v44, v39);
  result = (v42)(v41, 1, v39);
  if (result != 1)
  {
    return sub_258A2A66C(v41);
  }

  return result;
}

void sub_258AB2AEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_258B030C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s9ViewModelOMa(uint64_t a1)
{
  result = qword_27F970C48;
  if (!qword_27F970C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AB2BDC(uint64_t a1)
{
  sub_258AB2CA8(319, &qword_27F96CF78, MEMORY[0x277CCB6A8], MEMORY[0x277D837D0], "dayIndex date ");
  if (v1 <= 0x3F)
  {
    sub_258AB2CA8(319, &qword_27F970C58, sub_258AB2D18, MEMORY[0x277D83B88], " selectedSummaryIndex ");
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_258AB2CA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_258AB2D18(uint64_t a1)
{
  if (!qword_27F96CD80)
  {
    type metadata accessor for StateOfMindTimeline.DaySummary(255);
    v1 = sub_258B02CD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96CD80);
    }
  }
}

uint64_t sub_258AB2D70()
{
  v1 = v0;
  v2 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s9ViewModelOMa(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AB3558(v1, v8, _s9ViewModelOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    sub_258AB2CA8(0, &qword_27F96CF78, MEMORY[0x277CCB6A8], MEMORY[0x277D837D0], "dayIndex date ");
    v11 = *(v8 + *(v10 + 48));
    v12 = sub_258B029C4();
    (*(*(v12 - 8) + 8))(v8, v12);
    return v11;
  }

  v13 = v8[1];
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v14 = *v8;
    if (v13 < *(v14 + 16))
    {
      sub_258AB3558(v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v5, type metadata accessor for StateOfMindTimeline.DaySummary);

      v11 = *&v5[*(v2 + 24)];
      sub_258B003E4();
      sub_258AB35C0(v5, type metadata accessor for StateOfMindTimeline.DaySummary);
      return v11;
    }
  }

  __break(1u);
  return result;
}

void sub_258AB2FA4(uint64_t *a1)
{
  v3 = _s9ViewModelOMa(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AB3558(v1, v5, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v8 = *v5;
    v7 = v5[1];
    v9 = *a1;
    if (v7 == *a1)
    {
    }

    else
    {
      sub_258AB35C0(v1, _s9ViewModelOMa);
      *v1 = v8;
      v1[1] = v9;
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_258AB2CA8(0, &qword_27F96CF78, MEMORY[0x277CCB6A8], MEMORY[0x277D837D0], "dayIndex date ");

    v6 = sub_258B029C4();
    (*(*(v6 - 8) + 8))(v5, v6);
  }
}

uint64_t sub_258AB3128()
{
  v1 = _s9ViewModelOMa(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB3558(v0, v3, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v6 = *(*v3 + 16);

    return v6 - 1;
  }

  else
  {
    sub_258AB2CA8(0, &qword_27F96CF78, MEMORY[0x277CCB6A8], MEMORY[0x277D837D0], "dayIndex date ");

    v4 = sub_258B029C4();
    (*(*(v4 - 8) + 8))(v3, v4);
    return 0;
  }
}

double sub_258AB3268()
{
  v1 = _s9ViewModelOMa(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AB3558(v0, v3, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v7 = *v3;
    v6 = v3[1];
    if (v6 >= sub_258AB3128())
    {
    }

    else
    {
      sub_258AB35C0(v0, _s9ViewModelOMa);
      *v0 = v7;
      v0[1] = v6 + 1;
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_258AB2CA8(0, &qword_27F96CF78, MEMORY[0x277CCB6A8], MEMORY[0x277D837D0], "dayIndex date ");

    v4 = sub_258B029C4();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  return result;
}

double sub_258AB33E4()
{
  v1 = _s9ViewModelOMa(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AB3558(v0, v3, _s9ViewModelOMa);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v7 = *v3;
    v6 = v3[1];
    v8 = v6 - 1;
    if (v6 < 1)
    {
    }

    else
    {
      sub_258AB35C0(v0, _s9ViewModelOMa);
      *v0 = v7;
      v0[1] = v8;
      swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    sub_258AB2CA8(0, &qword_27F96CF78, MEMORY[0x277CCB6A8], MEMORY[0x277D837D0], "dayIndex date ");

    v4 = sub_258B029C4();
    (*(*(v4 - 8) + 8))(v3, v4);
  }

  return result;
}

uint64_t sub_258AB3558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AB35C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_258AB3620(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_258B032B4();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x259C937C0](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_258AB3734(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for StateOfMindTimeline.DaySummary(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_258AB3820@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s9ViewModelOMa(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_258B029C4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB3558(v2, v10, _s9ViewModelOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    sub_258AB2CA8(0, &qword_27F96CF78, MEMORY[0x277CCB6A8], MEMORY[0x277D837D0], "dayIndex date ");

    v16 = *(v12 + 32);
    v16(v14, v10, v11);
    return (v16)(a1, v14, v11);
  }

  v17 = v10[1];
  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v18 = *v10;
  if (v17 >= *(v18 + 16))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_258AB3558(v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v7, type metadata accessor for StateOfMindTimeline.DaySummary);

  (*(v12 + 16))(a1, &v7[*(v4 + 20)], v11);
  return sub_258AB35C0(v7, type metadata accessor for StateOfMindTimeline.DaySummary);
}

uint64_t sub_258AB3AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = type metadata accessor for StateOfMindTimeline.DaySummary(0);
  v6 = *(v42 - 8);
  v7 = MEMORY[0x28223BE20](v42);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v41 = &v36 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - v11;
  v13 = sub_258B029C4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s9ViewModelOMa(0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AB3558(a1, v19, _s9ViewModelOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    sub_258AB35C0(a1, _s9ViewModelOMa);
    sub_258AB2CA8(0, &qword_27F96CF78, MEMORY[0x277CCB6A8], MEMORY[0x277D837D0], "dayIndex date ");

    (*(v14 + 8))(v19, v13);
    v21 = *(a2 + 16) - 1;
LABEL_15:
    *a3 = a2;
    a3[1] = v21;
    return swift_storeEnumTagMultiPayload();
  }

  v39 = a1;
  v22 = v19[1];
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = *v19;
  if (v22 >= *(v23 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v38 = a3;
  v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v37 = *(v6 + 72);
  sub_258AB3558(v23 + v24 + v37 * v22, v12, type metadata accessor for StateOfMindTimeline.DaySummary);

  (*(v14 + 16))(v16, &v12[*(v42 + 20)], v13);
  v25 = sub_258AB35C0(v12, type metadata accessor for StateOfMindTimeline.DaySummary);
  MEMORY[0x28223BE20](v25);
  *(&v36 - 2) = v16;
  v26 = sub_258AB3734(sub_258AB4088, (&v36 - 4), a2);
  if ((v27 & 1) == 0)
  {
    v21 = v26;
    v32 = _s9ViewModelOMa;
    v33 = v39;
LABEL_13:
    sub_258AB35C0(v33, v32);
    goto LABEL_14;
  }

  v28 = *(a2 + 16);
  if (!v28)
  {
    sub_258AB35C0(v39, _s9ViewModelOMa);
    v21 = -1;
    goto LABEL_14;
  }

  v29 = a2 + v24;
  v36 = a2 + v24;
  v30 = v41;
  sub_258AB3558(v29, v41, type metadata accessor for StateOfMindTimeline.DaySummary);
  sub_258AB40A8(&qword_27F971480, MEMORY[0x277CCB6B8]);
  v31 = sub_258B02A54();
  result = sub_258AB35C0(v30, type metadata accessor for StateOfMindTimeline.DaySummary);
  if (v31)
  {
    sub_258AB35C0(v39, _s9ViewModelOMa);
    v21 = 0;
LABEL_14:
    (*(v14 + 8))(v16, v13);
    a3 = v38;
    goto LABEL_15;
  }

  v34 = v39;
  if (v28 <= *(a2 + 16))
  {
    v21 = v28 - 1;
    v35 = v40;
    sub_258AB3558(v36 + (v28 - 1) * v37, v40, type metadata accessor for StateOfMindTimeline.DaySummary);
    sub_258B02934();
    sub_258AB35C0(v34, _s9ViewModelOMa);
    v33 = v35;
    v32 = type metadata accessor for StateOfMindTimeline.DaySummary;
    goto LABEL_13;
  }

LABEL_18:
  __break(1u);
  return result;
}

BOOL sub_258AB3FF0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StateOfMindTimeline.DaySummary(0);
  sub_258B029C4();
  sub_258AB40A8(&unk_27F9706C0, MEMORY[0x277CCB6C8]);
  sub_258B030E4();
  return v3 == 0;
}

uint64_t sub_258AB40A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_258B029C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_258AB40EC()
{
  v25[1] = *MEMORY[0x277D85DE8];
  v1 = sub_258B00384();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = sub_258B00014();
  v25[0] = 0;
  v7 = [v5 ageWithCurrentDate:v6 error:v25];

  v8 = v25[0];
  if (!v7)
  {
    v9 = v8;
    v10 = sub_258AFFDC4();

    swift_willThrow();
    sub_258B00364();
    v11 = v10;
    v12 = sub_258B00374();
    v13 = sub_258B02E84();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v25[0] = v15;
      *v14 = 136446466;
      v16 = sub_258B035A4();
      v18 = sub_2589F1F78(v16, v17, v25);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v24 = v10;
      v19 = v10;
      sub_2589F3AFC();
      v20 = sub_258B02B34();
      v22 = sub_2589F1F78(v20, v21, v25);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_2589A1000, v12, v13, "[%{public}s] Could not fetch age from data source with error %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v15, -1, -1);
      MEMORY[0x259C945C0](v14, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return v7;
}

uint64_t sub_258AB43D0()
{
  v1 = v0;
  v28[1] = *MEMORY[0x277D85DE8];
  v2 = sub_258B00384();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + 16);
  v28[0] = 0;
  v7 = [v6 biologicalSexWithError_];
  if (v7)
  {
    v8 = v7;
    v9 = v28[0];
    v10 = HKAnalyticsPropertyValueForBiologicalSex();
    v11 = sub_258B02B14();
  }

  else
  {
    v12 = v28[0];
    v13 = sub_258AFFDC4();

    swift_willThrow();
    sub_258B00364();
    v14 = v13;
    v15 = sub_258B00374();
    v16 = sub_258B02E84();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28[0] = v18;
      *v17 = 136446466;
      v19 = sub_258B035A4();
      v21 = sub_2589F1F78(v19, v20, v28);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v27 = v13;
      v22 = v13;
      sub_2589F3AFC();
      v23 = sub_258B02B34();
      v25 = sub_2589F1F78(v23, v24, v28);

      *(v17 + 14) = v25;
      _os_log_impl(&dword_2589A1000, v15, v16, "[%{public}s] Could not fetch age from data source with error %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C945C0](v18, -1, -1);
      MEMORY[0x259C945C0](v17, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v11;
}

uint64_t sub_258AB46D4()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExpandableInfoSectionHeader(uint64_t a1)
{
  result = qword_27F970C60;
  if (!qword_27F970C60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AB47A4(uint64_t a1)
{
  sub_258AB5FCC(319, &qword_27F96D290, type metadata accessor for AssociationSelectionPhaseSpecs, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258AB6408(319, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_258AB48A8@<X0>(uint64_t a1@<X8>)
{
  v108 = a1;
  v100 = sub_258B00FD4();
  v99 = *(v100 - 8);
  v2 = MEMORY[0x28223BE20](v100);
  v97 = v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v98 = v96 - v4;
  v105 = sub_258B023A4();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v6 = v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277CDF928];
  v103 = MEMORY[0x277CDF088];
  v8 = MEMORY[0x277CDFAB8];
  sub_258AB69CC(0, &qword_27F970958, MEMORY[0x277CDF088], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  v102 = v9 - 8;
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v107 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v101 = v96 - v13;
  MEMORY[0x28223BE20](v12);
  v111 = v96 - v14;
  v15 = type metadata accessor for AssociationSelectionPhaseSpecs(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB69CC(0, &qword_27F970C70, sub_258AB5F18, v7, v8);
  v19 = v18 - 8;
  v20 = MEMORY[0x28223BE20](v18);
  v110 = v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = v96 - v22;
  *v23 = sub_258B01004();
  *(v23 + 1) = 0;
  v23[16] = 0;
  sub_258AB66C0(0);
  sub_258AB51EC(v1, &v23[*(v24 + 44)]);
  LOBYTE(v7) = sub_258B01894();
  v25 = type metadata accessor for ExpandableInfoSectionHeader(0);
  v26 = *(v25 + 24);
  sub_258AC1B28(v17);
  sub_258A25118(v17);
  sub_258B00654();
  v27 = *(v19 + 44);
  v109 = v23;
  v28 = &v23[v27];
  *v28 = v7;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  sub_258B02394();
  LOBYTE(v7) = sub_258B01894();
  v33 = v1 + *(v25 + 28);
  v34 = *(v33 + 1);
  LOBYTE(v118) = *v33;
  LOBYTE(v25) = v118;
  v119 = v34;
  sub_258AB6408(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  sub_258B02124();
  v106 = v1;
  v96[1] = v26;
  v35 = v17;
  sub_258AC1B28(v17);
  sub_258A25118(v17);
  sub_258B00654();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = v101;
  (*(v104 + 32))(v101, v6, v105);
  v45 = v44 + *(v102 + 44);
  *v45 = v7;
  *(v45 + 8) = v37;
  *(v45 + 16) = v39;
  *(v45 + 24) = v41;
  *(v45 + 32) = v43;
  *(v45 + 40) = 0;
  sub_258AB6DE0(v44, v111, &qword_27F970958, v103);
  LOBYTE(v118) = v25;
  v119 = v34;
  v46 = sub_258B02124();
  if (v112 == 1)
  {
    v49 = v106[3];
    v118 = v106[2];
    v119 = v49;
    sub_2589BFF58(v46, v47, v48);
    sub_258B003E4();
    v50 = sub_258B01B44();
    v52 = v51;
    v54 = v53;
    sub_258B01914();
    v55 = sub_258B01AE4();
    v57 = v56;
    v59 = v58;

    sub_2589BFFAC(v50, v52, v54 & 1);

    sub_258B02044();
    v105 = sub_258B01AA4();
    v104 = v60;
    v62 = v61;
    v103 = v63;

    sub_2589BFFAC(v55, v57, v59 & 1);

    v64 = sub_258B01894();
    sub_258AC1B28(v35);
    sub_258A25118(v35);
    sub_258B00654();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    LOBYTE(v118) = v62 & 1;
    LOBYTE(v112) = 0;
    v73 = (v62 & 1);
    v106 = 0;
    v74 = v98;
    sub_258B00FC4();
    v75 = v99;
    v76 = v100;
    (*(v99 + 16))(v97, v74, v100);
    sub_258AB6BD0(&qword_27F96FCF0, MEMORY[0x277CE0068], MEMORY[0x277CE0060]);
    v102 = sub_258B00874();
    (*(v75 + 8))(v74, v76);
    v77 = v64;
  }

  else
  {
    v105 = 0;
    v104 = 0;
    v103 = 0;
    v102 = 0;
    v106 = 0;
    v77 = 0;
    v73 = 0;
    v66 = 0;
    v68 = 0;
    v70 = 0;
    v72 = 0;
  }

  v101 = v73;
  v78 = v110;
  sub_258AB6758(v109, v110, &qword_27F970C70, sub_258AB5F18);
  v79 = MEMORY[0x277CDF088];
  v80 = v111;
  v81 = v107;
  sub_258AB6758(v111, v107, &qword_27F970958, MEMORY[0x277CDF088]);
  v82 = v78;
  v83 = v108;
  sub_258AB6758(v82, v108, &qword_27F970C70, sub_258AB5F18);
  sub_258AB67E4(0);
  v85 = v84;
  sub_258AB6758(v81, v83 + *(v84 + 48), &qword_27F970958, v79);
  v86 = v83 + *(v85 + 64);
  v87 = v105;
  *&v112 = v105;
  v88 = v104;
  *(&v112 + 1) = v104;
  *&v113 = v73;
  v89 = v103;
  *(&v113 + 1) = v103;
  *&v114 = v77;
  *(&v114 + 1) = v66;
  *&v115 = v68;
  *(&v115 + 1) = v70;
  *&v116 = v72;
  v90 = v77;
  v91 = v106;
  v92 = v102;
  *(&v116 + 1) = v106;
  v117 = v102;
  v93 = v115;
  *(v86 + 32) = v114;
  *(v86 + 48) = v93;
  *(v86 + 80) = v92;
  v94 = v113;
  *v86 = v112;
  *(v86 + 16) = v94;
  *(v86 + 64) = v116;
  sub_258AB6A38(&v112, &v118);
  sub_258AB6ACC(v80, &qword_27F970958, v79);
  sub_258AB6ACC(v109, &qword_27F970C70, sub_258AB5F18);
  v118 = v87;
  v119 = v88;
  v120 = v101;
  v121 = v89;
  v122 = v90;
  v123 = v66;
  v124 = v68;
  v125 = v70;
  v126 = v72;
  v127 = v91;
  v128 = v92;
  sub_258AB6B44(&v118);
  sub_258AB6ACC(v81, &qword_27F970958, v79);
  return sub_258AB6ACC(v110, &qword_27F970C70, sub_258AB5F18);
}

uint64_t sub_258AB51EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = type metadata accessor for ExpandableInfoSectionHeader(0);
  v4 = *(v3 - 8);
  v109 = v3 - 8;
  v113 = v4;
  v112 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v110 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277CDF928];
  v116 = sub_258AB621C;
  v7 = MEMORY[0x277CDFAB8];
  sub_258AB69CC(0, &qword_27F970CA8, sub_258AB621C, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  v114 = v8 - 8;
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v115 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v111 = &v97 - v11;
  v12 = type metadata accessor for AssociationSelectionPhaseSpecs(0);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = &v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_258B019F4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB63A4(0, &qword_27F96FF48, type metadata accessor for LoggingFlowBlendMode, MEMORY[0x277CE0BD8]);
  v97 = v18 - 8;
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v97 - v19;
  sub_258AB6198(0);
  v100 = v21 - 8;
  MEMORY[0x28223BE20](v21 - 8);
  v99 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB610C(0);
  v104 = v23 - 8;
  MEMORY[0x28223BE20](v23 - 8);
  v101 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_258AB610C;
  sub_258AB69CC(0, &qword_27F970C90, sub_258AB610C, v6, v7);
  v105 = v25 - 8;
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v108 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v102 = &v97 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v103 = &v97 - v31;
  v98 = a1;
  v32 = *a1;
  v33 = a1[1];
  *&v118 = v32;
  *(&v118 + 1) = v33;
  sub_2589BFF58(v30, v34, v35);
  sub_258B003E4();
  v36 = sub_258B01B44();
  v38 = v37;
  v40 = v39;
  sub_258B01A44();
  (*(v15 + 104))(v17, *MEMORY[0x277CE0A10], v14);
  sub_258B01A14();

  (*(v15 + 8))(v17, v14);
  v41 = sub_258B01AE4();
  v43 = v42;
  LOBYTE(v15) = v44;

  sub_2589BFFAC(v36, v38, v40 & 1);

  LODWORD(v118) = sub_258B014A4();
  DWORD1(v118) = 1059648963;
  sub_258AB6C18(0, &qword_27F96ED30, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE01D0]);
  sub_258AB6C6C();
  v45 = sub_258B01AB4();
  v47 = v46;
  LOBYTE(v36) = v48;
  v50 = v49;
  sub_2589BFFAC(v41, v43, v15 & 1);

  v51 = *(v97 + 44);
  *&v20[v51] = swift_getKeyPath();
  sub_258AB5FCC(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *v20 = v45;
  *(v20 + 1) = v47;
  v20[16] = v36 & 1;
  *(v20 + 3) = v50;
  sub_258B02504();
  sub_258B00C94();
  v52 = v99;
  sub_258AB6CF0(v20, v99);
  v53 = (v52 + *(v100 + 44));
  v54 = v123;
  v53[4] = v122;
  v53[5] = v54;
  v53[6] = v124;
  v55 = v119;
  *v53 = v118;
  v53[1] = v55;
  v56 = v121;
  v53[2] = v120;
  v53[3] = v56;
  KeyPath = swift_getKeyPath();
  v58 = v101;
  sub_258AB6D78(v52, v101, sub_258AB6198);
  v59 = v58 + *(v104 + 44);
  *v59 = KeyPath;
  *(v59 + 8) = 0;
  LOBYTE(KeyPath) = sub_258B018C4();
  v60 = v98;
  v61 = v107;
  sub_258AC1B28(v107);
  sub_258A25118(v61);
  sub_258B00654();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = v102;
  sub_258AB6D78(v58, v102, sub_258AB610C);
  v71 = v70 + *(v105 + 44);
  *v71 = KeyPath;
  *(v71 + 8) = v63;
  *(v71 + 16) = v65;
  *(v71 + 24) = v67;
  *(v71 + 32) = v69;
  *(v71 + 40) = 0;
  v72 = v103;
  v73 = v106;
  sub_258AB6DE0(v70, v103, &qword_27F970C90, v106);
  v74 = v60;
  v75 = v110;
  sub_258AB6E6C(v74, v110);
  v76 = (*(v113 + 80) + 16) & ~*(v113 + 80);
  v77 = swift_allocObject();
  sub_258AB6D78(v75, v77 + v76, type metadata accessor for ExpandableInfoSectionHeader);
  sub_258AB6280(0);
  sub_258AB6458();
  v78 = v111;
  sub_258B02174();
  LOBYTE(KeyPath) = sub_258B018C4();
  sub_258AC1B28(v61);
  sub_258A25118(v61);
  sub_258B00654();
  v79 = &v78[*(v114 + 44)];
  *v79 = KeyPath;
  *(v79 + 1) = v80;
  *(v79 + 2) = v81;
  *(v79 + 3) = v82;
  *(v79 + 4) = v83;
  v79[40] = 0;
  v84 = v72;
  v85 = v72;
  v86 = v108;
  v87 = v73;
  sub_258AB6758(v84, v108, &qword_27F970C90, v73);
  v88 = v78;
  v89 = v78;
  v90 = v115;
  v91 = v116;
  sub_258AB6758(v88, v115, &qword_27F970CA8, v116);
  v92 = v86;
  v93 = v86;
  v94 = v117;
  sub_258AB6758(v92, v117, &qword_27F970C90, v87);
  sub_258AB6030(0);
  sub_258AB6758(v90, v94 + *(v95 + 48), &qword_27F970CA8, v91);
  sub_258AB6ACC(v89, &qword_27F970CA8, v91);
  sub_258AB6ACC(v85, &qword_27F970C90, v87);
  sub_258AB6ACC(v90, &qword_27F970CA8, v91);
  return sub_258AB6ACC(v93, &qword_27F970C90, v87);
}

uint64_t sub_258AB5BBC(uint64_t a1)
{
  sub_258B02534();
  sub_258B009A4();
}

uint64_t sub_258AB5C28(uint64_t a1)
{
  type metadata accessor for ExpandableInfoSectionHeader(0);
  sub_258AB6408(0, &qword_27F96D310, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);

  sub_258B02124();
  sub_258B02134();
}

void sub_258AB5D00(uint64_t *a1@<X8>)
{
  v2 = sub_258B019F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_258B02084();
  sub_258B01A44();
  (*(v3 + 104))(v5, *MEMORY[0x277CE0A10], v2);
  v7 = sub_258B01A14();

  (*(v3 + 8))(v5, v2);
  KeyPath = swift_getKeyPath();
  sub_258AB62E8(0);
  v10 = (a1 + *(v9 + 36));
  sub_258AB5FCC(0, &qword_27F96D398, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
  v12 = *(v11 + 28);
  v13 = *MEMORY[0x277CE1048];
  v14 = sub_258B020B4();
  (*(*(v14 - 8) + 104))(v10 + v12, v13, v14);
  *v10 = swift_getKeyPath();
  *a1 = v6;
  a1[1] = KeyPath;
  a1[2] = v7;
  LODWORD(v6) = sub_258B014A4();
  LODWORD(v7) = sub_258B01494();
  sub_258AB6280(0);
  v16 = (a1 + *(v15 + 36));
  *v16 = v6;
  v16[1] = v7;
}

void sub_258AB5F18(uint64_t a1)
{
  if (!qword_27F970C78)
  {
    sub_258AB5FCC(255, &qword_27F970C80, sub_258AB6030, MEMORY[0x277CE14B8]);
    sub_258AB665C(&qword_27F970CE0, &qword_27F970C80, sub_258AB6030);
    v1 = sub_258B021D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970C78);
    }
  }
}

void sub_258AB5FCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_258AB6030(uint64_t a1)
{
  if (!qword_27F970C88)
  {
    v1 = MEMORY[0x277CDF928];
    v2 = MEMORY[0x277CDFAB8];
    sub_258AB69CC(255, &qword_27F970C90, sub_258AB610C, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_258AB69CC(255, &qword_27F970CA8, sub_258AB621C, v1, v2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F970C88);
    }
  }
}

void sub_258AB610C(uint64_t a1)
{
  if (!qword_27F970C98)
  {
    sub_258AB6198(255);
    sub_258AB6408(255, &qword_27F96C8C0, MEMORY[0x277CDF720], MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970C98);
    }
  }
}

void sub_258AB6198(uint64_t a1)
{
  if (!qword_27F970CA0)
  {
    sub_258AB63A4(255, &qword_27F96FF48, type metadata accessor for LoggingFlowBlendMode, MEMORY[0x277CE0BD8]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970CA0);
    }
  }
}

void sub_258AB621C(uint64_t a1)
{
  if (!qword_27F970CB0)
  {
    sub_258AB6280(255);
    sub_258AB6458();
    v1 = sub_258B021B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970CB0);
    }
  }
}

void sub_258AB6280(uint64_t a1)
{
  if (!qword_27F970CB8)
  {
    sub_258AB62E8(255);
    sub_2589E2E5C();
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970CB8);
    }
  }
}

void sub_258AB62E8(uint64_t a1)
{
  if (!qword_27F970CC0)
  {
    sub_258AB63A4(255, &qword_27F970978, sub_2589BF83C, MEMORY[0x277CE1088]);
    sub_258AB5FCC(255, &qword_27F96D398, MEMORY[0x277CE1060], MEMORY[0x277CE0860]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970CC0);
    }
  }
}

void sub_258AB63A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_258AB6408(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_258AB6458()
{
  result = qword_27F970CC8;
  if (!qword_27F970CC8)
  {
    sub_258AB6280(255);
    sub_258AB6508();
    sub_258AB6BD0(&qword_27F96D498, sub_2589E2E5C, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970CC8);
  }

  return result;
}

unint64_t sub_258AB6508()
{
  result = qword_27F970CD0;
  if (!qword_27F970CD0)
  {
    sub_258AB62E8(255);
    sub_258AB6588();
    sub_2589E0CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970CD0);
  }

  return result;
}

unint64_t sub_258AB6588()
{
  result = qword_27F970CD8;
  if (!qword_27F970CD8)
  {
    sub_258AB63A4(255, &qword_27F970978, sub_2589BF83C, MEMORY[0x277CE1088]);
    sub_258AB6BD0(&qword_27F96C938, sub_2589BF83C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970CD8);
  }

  return result;
}

uint64_t sub_258AB665C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_258AB5FCC(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_258AB66C0(uint64_t a1)
{
  if (!qword_27F970CE8)
  {
    sub_258AB5FCC(255, &qword_27F970C80, sub_258AB6030, MEMORY[0x277CE14B8]);
    v1 = sub_258B00974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970CE8);
    }
  }
}

uint64_t sub_258AB6758(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_258AB69CC(0, a3, a4, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_258AB67E4(uint64_t a1)
{
  if (!qword_27F970CF0)
  {
    v1 = MEMORY[0x277CDF928];
    v2 = MEMORY[0x277CDFAB8];
    sub_258AB69CC(255, &qword_27F970C70, sub_258AB5F18, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_258AB69CC(255, &qword_27F970958, MEMORY[0x277CDF088], v1, v2);
    sub_258AB5FCC(255, &qword_27F970CF8, sub_258AB6900, MEMORY[0x277D83D88]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F970CF0);
    }
  }
}

void sub_258AB6900(uint64_t a1)
{
  if (!qword_27F970D00)
  {
    sub_258AB6C18(255, &qword_27F96DF40, MEMORY[0x277CE0BD8], MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
    sub_258AB69CC(255, &qword_27F96FCC0, MEMORY[0x277CE0180], MEMORY[0x277CE0178], MEMORY[0x277CE0498]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970D00);
    }
  }
}

void sub_258AB69CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_258AB6A38(uint64_t a1, uint64_t a2)
{
  sub_258AB5FCC(0, &qword_27F970CF8, sub_258AB6900, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AB6ACC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_258AB69CC(0, a2, a3, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_258AB6B44(uint64_t a1)
{
  sub_258AB5FCC(0, &qword_27F970CF8, sub_258AB6900, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258AB6BD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258AB6C18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258AB6C6C()
{
  result = qword_27F96ED38;
  if (!qword_27F96ED38)
  {
    sub_258AB6C18(255, &qword_27F96ED30, MEMORY[0x277CE04F8], MEMORY[0x277CE04E8], MEMORY[0x277CE01D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F96ED38);
  }

  return result;
}

uint64_t sub_258AB6CF0(uint64_t a1, uint64_t a2)
{
  sub_258AB63A4(0, &qword_27F96FF48, type metadata accessor for LoggingFlowBlendMode, MEMORY[0x277CE0BD8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AB6D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258AB6DE0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_258AB69CC(0, a3, a4, MEMORY[0x277CDF928], MEMORY[0x277CDFAB8]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_258AB6E6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExpandableInfoSectionHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258AB6ED0()
{
  v1 = *(type metadata accessor for ExpandableInfoSectionHeader(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258AB5BBC(v2);
}

void sub_258AB6F60(uint64_t a1)
{
  if (!qword_27F96C788)
  {
    type metadata accessor for StateOfMindTimeline.Styles(255);
    v1 = sub_258B00724();
    if (!v2)
    {
      atomic_store(v1, &qword_27F96C788);
    }
  }
}

uint64_t _s20EntryPlaceholderViewVMa(uint64_t a1)
{
  result = qword_27F970D18;
  if (!qword_27F970D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AB7018(uint64_t a1)
{
  sub_258AB6F60(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_258AB70A8(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v37[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v37[-v7];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v37[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v37[-v12];
  sub_258AB7A58(0);
  v15 = v14;
  MEMORY[0x28223BE20](v14);
  v17 = &v37[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = sub_258B01194();
  v38 = sub_258B01874();
  v49 = 0;
  v48 = 1;
  sub_258AC1060(v13);
  sub_258A3CBB4(v13, type metadata accessor for StateOfMindTimeline.Styles);
  v18 = [objc_opt_self() sharedBehavior];
  if (v18)
  {
    v19 = v18;
    [v18 isiPad];

    sub_258B024F4();
    sub_258B00854();
    *&v50[7] = v51[0];
    *&v50[23] = v51[1];
    *&v50[39] = v51[2];
    sub_258AC1060(v11);
    sub_258A3CBB4(v11, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258B024F4();
    sub_258B00C94();
    v20 = sub_258B024F4();
    v22 = v21;
    v23 = &v17[*(v15 + 36)];
    sub_258AB74A4(v1, v23);
    sub_258AB7B98(0);
    v25 = (v23 + *(v24 + 36));
    *v25 = v20;
    v25[1] = v22;
    *v17 = v39;
    *(v17 + 1) = 0;
    v17[16] = 0;
    v17[24] = v38;
    *(v17 + 2) = 0u;
    *(v17 + 3) = 0u;
    v17[64] = 1;
    *(v17 + 14) = *&v50[47];
    v26 = *&v50[16];
    *(v17 + 97) = *&v50[32];
    v27 = *v50;
    *(v17 + 81) = v26;
    *(v17 + 65) = v27;
    v28 = v41;
    v29 = v42;
    v30 = v44;
    *(v17 + 152) = v43;
    *(v17 + 136) = v29;
    *(v17 + 120) = v28;
    v31 = v45;
    v32 = v46;
    *(v17 + 216) = v47;
    *(v17 + 200) = v32;
    *(v17 + 184) = v31;
    *(v17 + 168) = v30;
    sub_258AC1060(v8);
    sub_258A3CBB4(v8, type metadata accessor for StateOfMindTimeline.Styles);
    sub_258B01FF4();
    v33 = sub_258B02024();

    sub_258AC1060(v5);
    sub_258A3CBB4(v5, type metadata accessor for StateOfMindTimeline.Styles);
    v34 = v40;
    sub_258AB7E7C(v17, v40, sub_258AB7A58);
    sub_258AB7E18(0, &qword_27F970D78, sub_258AB7A58, MEMORY[0x277CDF768]);
    v36 = (v34 + *(v35 + 36));
    *v36 = v33;
    v36[1] = 0x4028000000000000;
    v36[2] = 0;
    v36[3] = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_258AB74A4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258B00C34();
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  sub_258AC1060(&v25 - v12);
  sub_258A3CBB4(v13, type metadata accessor for StateOfMindTimeline.Styles);
  v14 = *(v5 + 28);
  v15 = *MEMORY[0x277CE0118];
  v16 = sub_258B010C4();
  (*(*(v16 - 8) + 104))(&v7[v14], v15, v16);
  __asm { FMOV            V0.2D, #26.0 }

  *v7 = _Q0;
  if (*(a1 + *(_s20EntryPlaceholderViewVMa(0) + 20)) == 1)
  {
    sub_258AB76D0(&v26);
  }

  else
  {
    sub_258AC1060(v11);
    sub_258A3CBB4(v11, type metadata accessor for StateOfMindTimeline.Styles);
    v22 = [objc_opt_self() systemGray5Color];
    *&v26 = sub_258B01F94();
  }

  v23 = sub_258B00864();
  sub_258AB7E7C(v7, a2, MEMORY[0x277CDFC08]);
  sub_258AB7BFC(0);
  *(a2 + *(v24 + 36)) = v23;
}

double sub_258AB76D0@<D0>(_OWORD *a1@<X8>)
{
  v26 = a1;
  v25 = type metadata accessor for StateOfMindTimeline.Styles.Entry(0) - 8;
  MEMORY[0x28223BE20](v25);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StateOfMindTimeline.Styles(0);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  sub_258AB7EE4();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_258B2BE60;
  sub_258AC1060(v12);
  sub_258A3CBB4(v12, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258B01FE4();
  sub_258B02024();

  *(v13 + 32) = sub_258B02464();
  *(v13 + 40) = v14;
  sub_258AC1060(v10);
  sub_258A3CBB4(v10, type metadata accessor for StateOfMindTimeline.Styles);
  v15 = objc_opt_self();
  v16 = [v15 secondarySystemGroupedBackgroundColor];
  v17 = [v15 tertiarySystemGroupedBackgroundColor];
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = v17;
  v18[4] = 0;
  v18[5] = v16;
  v19 = objc_allocWithZone(MEMORY[0x277D75348]);
  v29 = sub_2589C69C4;
  v30 = v18;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v28 = sub_258A52B54;
  *(&v28 + 1) = &block_descriptor_15;
  v20 = _Block_copy(&aBlock);
  [v19 initWithDynamicProvider_];
  _Block_release(v20);

  sub_258B01F94();
  sub_258AC1060(v7);
  sub_2589F55B4(&v7[*(v4 + 56)], v2);
  sub_258A3CBB4(v7, type metadata accessor for StateOfMindTimeline.Styles);
  sub_258A3CBB4(v2, type metadata accessor for StateOfMindTimeline.Styles.Entry);
  *(v13 + 48) = sub_258B02464();
  *(v13 + 56) = v21;
  sub_258B02474();
  sub_258B025C4();
  sub_258B025D4();
  sub_258B009F4();
  result = *&aBlock;
  v23 = v28;
  v24 = v26;
  *v26 = aBlock;
  v24[1] = v23;
  *(v24 + 4) = v29;
  return result;
}

void sub_258AB7A58(uint64_t a1)
{
  if (!qword_27F970D28)
  {
    sub_258AB7E18(255, &qword_27F970D30, sub_258AB7AE4, MEMORY[0x277CDFC70]);
    sub_258AB7B98(255);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970D28);
    }
  }
}

void sub_258AB7B0C(uint64_t a1)
{
  if (!qword_27F970D40)
  {
    sub_258AB7C90(255, &qword_27F970D48, MEMORY[0x277CE1428], MEMORY[0x277CE1410], MEMORY[0x277CE1190]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970D40);
    }
  }
}

void sub_258AB7B98(uint64_t a1)
{
  if (!qword_27F970D50)
  {
    sub_258AB7BFC(255);
    sub_258AB7CE4();
    v1 = sub_258B01294();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970D50);
    }
  }
}

void sub_258AB7BFC(uint64_t a1)
{
  if (!qword_27F970D58)
  {
    sub_258B00C34();
    sub_258AB7C90(255, &qword_27F970D60, MEMORY[0x277CDF6A8], MEMORY[0x277CDF6A0], MEMORY[0x277CE0730]);
    v1 = sub_258B00B04();
    if (!v2)
    {
      atomic_store(v1, &qword_27F970D58);
    }
  }
}

void sub_258AB7C90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_258AB7CE4()
{
  result = qword_27F970D68;
  if (!qword_27F970D68)
  {
    sub_258AB7BFC(255);
    sub_258AB82BC(&qword_27F96CA88, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    sub_258AB7D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970D68);
  }

  return result;
}

unint64_t sub_258AB7D94()
{
  result = qword_27F970D70;
  if (!qword_27F970D70)
  {
    sub_258AB7C90(255, &qword_27F970D60, MEMORY[0x277CDF6A8], MEMORY[0x277CDF6A0], MEMORY[0x277CE0730]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970D70);
  }

  return result;
}

void sub_258AB7E18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_258B00B04();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_258AB7E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_258AB7EE4()
{
  if (!qword_27F970D80)
  {
    v0 = sub_258B03424();
    if (!v1)
    {
      atomic_store(v0, &qword_27F970D80);
    }
  }
}

double block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_258AB7F4C()
{
  result = qword_27F970D88;
  if (!qword_27F970D88)
  {
    sub_258AB7E18(255, &qword_27F970D78, sub_258AB7A58, MEMORY[0x277CDF768]);
    sub_258AB7FF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970D88);
  }

  return result;
}

unint64_t sub_258AB7FF0()
{
  result = qword_27F970D90;
  if (!qword_27F970D90)
  {
    sub_258AB7A58(255);
    sub_258AB80A0();
    sub_258AB82BC(&qword_27F970DB8, sub_258AB7B98, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970D90);
  }

  return result;
}

unint64_t sub_258AB80A0()
{
  result = qword_27F970D98;
  if (!qword_27F970D98)
  {
    sub_258AB7E18(255, &qword_27F970D30, sub_258AB7AE4, MEMORY[0x277CDFC70]);
    sub_258AB817C(&qword_27F970DA0, sub_258AB7AE4, sub_258AB81FC, MEMORY[0x277CDF678]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970D98);
  }

  return result;
}

uint64_t sub_258AB817C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258AB8238()
{
  result = qword_27F970DB0;
  if (!qword_27F970DB0)
  {
    sub_258AB7C90(255, &qword_27F970D48, MEMORY[0x277CE1428], MEMORY[0x277CE1410], MEMORY[0x277CE1190]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F970DB0);
  }

  return result;
}

uint64_t sub_258AB82BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for NotificationsSetupPhaseContent(uint64_t a1)
{
  result = qword_27F970DC0;
  if (!qword_27F970DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258AB8378(uint64_t a1)
{
  sub_2589E3D24(319);
  if (v1 <= 0x3F)
  {
    sub_2589C0D10();
    if (v2 <= 0x3F)
    {
      sub_258B008E4();
      if (v3 <= 0x3F)
      {
        sub_258AB979C(319, &qword_27F96DCA8, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_258AB8478@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v173 = a2;
  sub_258AB9A54(0);
  v169 = v3;
  MEMORY[0x28223BE20](v3);
  v170 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for NotificationsSetupPhaseContent(0);
  v6 = v5 - 8;
  v161 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v162 = v7;
  v163 = &v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258AB9AE0(0);
  v165 = v8;
  MEMORY[0x28223BE20](v8);
  v168 = (&v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258AB99AC(0);
  v166 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v172 = &v147 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v167 = &v147 - v14;
  MEMORY[0x28223BE20](v13);
  v171 = &v147 - v15;
  v178 = sub_258B019F4();
  v186 = *(v178 - 8);
  v16 = MEMORY[0x28223BE20](v178);
  v159 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v160 = &v147 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v182 = &v147 - v21;
  MEMORY[0x28223BE20](v20);
  v183 = &v147 - v22;
  sub_258AB979C(0, &qword_27F96D1C8, MEMORY[0x277CE09A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v147 - v24;
  sub_258AB9898(0);
  v27 = v26 - 8;
  v28 = MEMORY[0x28223BE20](v26);
  v185 = &v147 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v147 - v30;
  v177 = type metadata accessor for NotificationsSetupPhaseSpecs(0);
  v32 = MEMORY[0x28223BE20](v177);
  v158 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v181 = &v147 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v147 - v36;
  sub_258B008C4();
  v39 = v38;
  v40 = *(v6 + 36);
  v164 = a1;
  v41 = a1 + v40;
  sub_258AC1B5C(v37);
  sub_258AB9BC0(v37, type metadata accessor for NotificationsSetupPhaseSpecs);
  v184 = sub_258B02084();
  sub_258AC1B5C(v37);
  sub_258AB9BC0(v37, type metadata accessor for NotificationsSetupPhaseSpecs);
  sub_258B01984();
  v42 = sub_258B01954();
  (*(*(v42 - 8) + 56))(v25, 1, 1, v42);
  v43 = sub_258B019A4();
  sub_258A79290(v25);
  KeyPath = swift_getKeyPath();
  LODWORD(a1) = sub_258B014B4();
  v45 = *(v27 + 44);
  *&v31[v45] = swift_getKeyPath();
  sub_258AB979C(0, &qword_27F96C908, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *v31 = v184;
  *(v31 + 1) = KeyPath;
  *(v31 + 2) = v43;
  v184 = v31;
  *(v31 + 6) = a1;
  sub_258AC1B5C(v37);
  v176 = v37;
  sub_258AB9BC0(v37, type metadata accessor for NotificationsSetupPhaseSpecs);
  if (qword_27F96C240 != -1)
  {
    swift_once();
  }

  v156 = qword_27F97AB98;
  v157 = qword_27F97AB90;
  v155 = qword_27F97ABA0;
  v212 = sub_258AFFD94();
  v213 = v46;
  v154 = sub_2589BFF58(v212, v46, v47);
  v180 = sub_258B01B44();
  v49 = v48;
  v51 = v50;
  v52 = v181;
  sub_258AC1B5C(v181);
  sub_258B01944();
  v175 = v41;
  v53 = sub_258B00A84();
  v54 = v186;
  v55 = *(v186 + 104);
  v149 = v55;
  v151 = v186 + 104;
  v56 = *MEMORY[0x277CE0A10];
  v148 = *MEMORY[0x277CE0A10];
  v57 = *MEMORY[0x277CE0A18];
  v150 = *MEMORY[0x277CE0A18];
  if (v53)
  {
    v58 = v56;
  }

  else
  {
    v58 = v57;
  }

  v59 = v182;
  v60 = v178;
  v55(v182, v58, v178);
  v61 = *(v54 + 32);
  v152 = v54 + 32;
  v153 = v61;
  v62 = v183;
  v61(v183, v59, v60);
  sub_258B01A14();

  v63 = *(v54 + 8);
  v186 = v54 + 8;
  v147 = v63;
  v63(v62, v60);
  v174 = type metadata accessor for NotificationsSetupPhaseSpecs;
  sub_258AB9BC0(v52, type metadata accessor for NotificationsSetupPhaseSpecs);
  v64 = v180;
  v65 = sub_258B01AE4();
  v67 = v66;
  v69 = v68;
  sub_2589BFFAC(v64, v49, v51 & 1);

  v70 = sub_258B01AD4();
  v181 = v71;
  v182 = v70;
  LOBYTE(v59) = v72;
  v183 = v73;
  sub_2589BFFAC(v65, v67, v69 & 1);

  v180 = swift_getKeyPath();
  v179 = v59 & 1;
  v238 = v59 & 1;
  sub_258B02504();
  sub_258B00C94();
  *(&v239[3] + 7) = *(&v239[10] + 8);
  *(&v239[4] + 7) = *(&v239[11] + 8);
  *(&v239[5] + 7) = *(&v239[12] + 8);
  *(&v239[6] + 7) = *(&v239[13] + 8);
  *(v239 + 7) = *(&v239[7] + 8);
  *(&v239[1] + 7) = *(&v239[8] + 8);
  *(&v239[2] + 7) = *(&v239[9] + 8);
  v74 = v176;
  sub_258AC1B5C(v176);
  sub_258AB9BC0(v74, v174);
  v212 = sub_258AFFD94();
  v213 = v75;
  v76 = sub_258B01B44();
  v78 = v77;
  v80 = v79;
  v81 = v158;
  sub_258AC1B5C(v158);
  sub_258B01914();
  if (sub_258B00A84())
  {
    v82 = v148;
  }

  else
  {
    v82 = v150;
  }

  v83 = v159;
  v84 = v178;
  v149(v159, v82, v178);
  v85 = v160;
  v153(v160, v83, v84);
  sub_258B01A14();

  v147(v85, v84);
  v86 = v81;
  v87 = v174;
  sub_258AB9BC0(v86, v174);
  v186 = sub_258B01AE4();
  v178 = v88;
  v90 = v89;
  v160 = v91;
  sub_2589BFFAC(v76, v78, v80 & 1);

  v177 = swift_getKeyPath();
  v233 = v90 & 1;
  v92 = v90 & 1;
  LODWORD(v159) = v90 & 1;
  sub_258B02504();
  sub_258B00C94();
  *(&v234[3] + 7) = *(&v239[17] + 8);
  *(&v234[4] + 7) = *(&v239[18] + 8);
  *(&v234[5] + 7) = *(&v239[19] + 8);
  *(&v234[6] + 7) = *(&v239[20] + 8);
  *(v234 + 7) = *(&v239[14] + 8);
  *(&v234[1] + 7) = *(&v239[15] + 8);
  *(&v234[2] + 7) = *(&v239[16] + 8);
  v93 = v176;
  sub_258AC1B5C(v176);
  sub_258AB9BC0(v93, v87);
  v94 = v163;
  sub_258AB9C88(v164, v163, type metadata accessor for NotificationsSetupPhaseContent);
  v95 = (*(v161 + 80) + 16) & ~*(v161 + 80);
  v96 = swift_allocObject();
  sub_258AB9C20(v94, v96 + v95, type metadata accessor for NotificationsSetupPhaseContent);
  type metadata accessor for StateOfMindEntryModel(0);
  sub_258AB9CF0(&qword_27F96C958, type metadata accessor for StateOfMindEntryModel, &protocol conformance descriptor for StateOfMindEntryModel);

  v97 = sub_258B00A24();
  v98 = v168;
  *v168 = v97;
  v98[1] = v99;
  v98[2] = sub_258AB9B5C;
  v98[3] = v96;
  v98[4] = [objc_allocWithZone(MEMORY[0x277D280B8]) init];
  v100 = *(type metadata accessor for ReminderView(0) + 28);
  *(v98 + v100) = swift_getKeyPath();
  sub_258AB979C(0, &qword_27F96D7B0, type metadata accessor for NotificationsSetupPhaseSpecs, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  LOBYTE(v100) = sub_258B01874();
  sub_258B00654();
  v101 = v98 + *(v165 + 36);
  *v101 = v100;
  *(v101 + 1) = v102;
  *(v101 + 2) = v103;
  *(v101 + 3) = v104;
  *(v101 + 4) = v105;
  v101[40] = 0;
  sub_258B02504();
  sub_258B00C94();
  v106 = v170;
  sub_258AB9C88(v98, v170, sub_258AB9AE0);
  v107 = (v106 + *(v169 + 36));
  v108 = *(&v239[26] + 8);
  v107[4] = *(&v239[25] + 8);
  v107[5] = v108;
  v107[6] = *(&v239[27] + 8);
  v109 = *(&v239[22] + 8);
  *v107 = *(&v239[21] + 8);
  v107[1] = v109;
  v110 = *(&v239[24] + 8);
  v107[2] = *(&v239[23] + 8);
  v107[3] = v110;
  v111 = sub_258B024F4();
  v113 = v112;
  v114 = v167;
  v115 = &v167[*(v166 + 36)];
  sub_258A5615C(v115);
  sub_258AB9BC0(v98, sub_258AB9AE0);
  sub_258A58978(0);
  v117 = (v115 + *(v116 + 36));
  *v117 = v111;
  v117[1] = v113;
  sub_258AB9C20(v106, v114, sub_258AB9A54);
  v118 = v171;
  sub_258AB9C20(v114, v171, sub_258AB99AC);
  v119 = v185;
  sub_258AB9C88(v184, v185, sub_258AB9898);
  v120 = v172;
  sub_258AB9C88(v118, v172, sub_258AB99AC);
  v121 = v173;
  *v173 = v39 * 0.09;
  *(v121 + 8) = 0;
  sub_258AB9800(0);
  v123 = v122;
  sub_258AB9C88(v119, v121 + v122[12], sub_258AB9898);
  v124 = v121 + v123[16];
  *v124 = 0x4034000000000000;
  v124[8] = 0;
  v125 = v121 + v123[20];
  *&v187 = v182;
  *(&v187 + 1) = v181;
  LOBYTE(v188) = v179;
  *(&v188 + 1) = *v237;
  DWORD1(v188) = *&v237[3];
  *(&v188 + 1) = v183;
  LOWORD(v189) = 256;
  *(&v189 + 2) = v235;
  WORD3(v189) = v236;
  *(&v189 + 1) = v180;
  v190[0] = 0;
  *&v190[1] = v239[0];
  *&v190[49] = v239[3];
  *&v190[33] = v239[2];
  *&v190[17] = v239[1];
  *&v190[112] = *(&v239[6] + 15);
  *&v190[97] = v239[6];
  *&v190[81] = v239[5];
  *&v190[65] = v239[4];
  v126 = v188;
  *v125 = v187;
  *(v125 + 1) = v126;
  v127 = v189;
  v128 = *v190;
  v129 = *&v190[32];
  *(v125 + 4) = *&v190[16];
  *(v125 + 5) = v129;
  *(v125 + 2) = v127;
  *(v125 + 3) = v128;
  v130 = *&v190[48];
  v131 = *&v190[64];
  v132 = *&v190[80];
  v133 = *&v190[96];
  *(v125 + 20) = *&v190[112];
  *(v125 + 8) = v132;
  *(v125 + 9) = v133;
  *(v125 + 6) = v130;
  *(v125 + 7) = v131;
  v134 = v121 + v123[24];
  *v134 = 0x402E000000000000;
  v134[8] = 0;
  v135 = v121 + v123[28];
  *&v191 = v186;
  *(&v191 + 1) = v178;
  LOBYTE(v192) = v92;
  *(&v192 + 1) = *v232;
  DWORD1(v192) = *&v232[3];
  v136 = v160;
  *(&v192 + 1) = v160;
  LOWORD(v193) = 256;
  *(&v193 + 2) = v230;
  WORD3(v193) = v231;
  *(&v193 + 1) = v177;
  v194[0] = 0;
  *&v194[49] = v234[3];
  *&v194[33] = v234[2];
  *&v194[17] = v234[1];
  *&v194[1] = v234[0];
  *&v194[112] = *(&v234[6] + 15);
  *&v194[97] = v234[6];
  *&v194[81] = v234[5];
  *&v194[65] = v234[4];
  v137 = v192;
  *v135 = v191;
  *(v135 + 1) = v137;
  v138 = v193;
  v139 = *v194;
  v140 = *&v194[32];
  *(v135 + 4) = *&v194[16];
  *(v135 + 5) = v140;
  *(v135 + 2) = v138;
  *(v135 + 3) = v139;
  v141 = *&v194[48];
  v142 = *&v194[64];
  v143 = *&v194[80];
  v144 = *&v194[96];
  *(v135 + 20) = *&v194[112];
  *(v135 + 8) = v143;
  *(v135 + 9) = v144;
  *(v135 + 6) = v141;
  *(v135 + 7) = v142;
  v145 = v121 + v123[32];
  *v145 = 0x402E000000000000;
  v145[8] = 0;
  sub_258AB9C88(v120, v121 + v123[36], sub_258AB99AC);
  sub_258AB9C88(&v187, &v212, sub_258AB98CC);
  sub_258AB9C88(&v191, &v212, sub_258AB98CC);
  sub_258AB9BC0(v118, sub_258AB99AC);
  sub_258AB9BC0(v184, sub_258AB9898);
  sub_258AB9BC0(v120, sub_258AB99AC);
  v209 = v234[4];
  v210 = v234[5];
  *v211 = v234[6];
  v205 = v234[0];
  v206 = v234[1];
  v207 = v234[2];
  v195[0] = v186;
  v195[1] = v178;
  v196 = v159;
  *v197 = *v232;
  *&v197[3] = *&v232[3];
  v198 = v136;
  v199 = 0;
  v200 = 1;
  v201 = v230;
  v202 = v231;
  v203 = v177;
  v204 = 0;
  *&v211[15] = *(&v234[6] + 15);
  v208 = v234[3];
  sub_258AB9BC0(v195, sub_258AB98CC);
  v227 = v239[4];
  v228 = v239[5];
  *v229 = v239[6];
  v223 = v239[0];
  v224 = v239[1];
  v225 = v239[2];
  v212 = v182;
  v213 = v181;
  v214 = v179;
  *v215 = *v237;
  *&v215[3] = *&v237[3];
  v216 = v183;
  v217 = 0;
  v218 = 1;
  v219 = v235;
  v220 = v236;
  v221 = v180;
  v222 = 0;
  *&v229[15] = *(&v239[6] + 15);
  v226 = v239[3];
  sub_258AB9BC0(&v212, sub_258AB98CC);
  return sub_258AB9BC0(v185, sub_258AB9898);
}