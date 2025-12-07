uint64_t OUTLINED_FUNCTION_106_2()
{
  v2 = *(v0 + 600);
  v3 = *(v0 + 312);

  return sub_2747310DC(v2, v3);
}

uint64_t OUTLINED_FUNCTION_101()
{

  return sub_274772ADC(v0 + 648, v0 + 264);
}

uint64_t OUTLINED_FUNCTION_101_0()
{

  return sub_2749FDE14();
}

uint64_t OUTLINED_FUNCTION_31_3(uint64_t a1)
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_31_8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27477C094(a1, a2, a3, a4, a5, v5, 0);
}

__n128 OUTLINED_FUNCTION_31_9(uint64_t a1)
{
  *(v2 - 288) = a1;
  result = *(v2 - 432);
  *v1 = result.n128_u32[0];
  return result;
}

__n128 OUTLINED_FUNCTION_31_11@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, arg18_274731B24 a18)
{
  *a1 = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = *a18.arr;
  result = *&a18.arr[9];
  *(a1 + 41) = *&a18.arr[9];
  return result;
}

uint64_t OUTLINED_FUNCTION_31_13(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 4;

  return sub_27477DEAC();
}

uint64_t sub_274731BE8(uint64_t a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 600))(a2 & 1, 0);
  }

  return result;
}

void sub_274731C74(char a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_observeChanges;
  OUTLINED_FUNCTION_42_1(v2 + OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_observeChanges, a2);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  sub_274731CEC(v5);
}

void sub_274731CEC(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_observeChanges;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (v5 != v3)
  {
    v6 = v2[2];
    v7 = v6 & 0xC000000000000001;
    if (v5)
    {
      if (v7)
      {

        sub_2749FD804();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
        sub_27472ABB4(&qword_2809688C0, &qword_280967A10, &qword_274A0FC10);
        sub_2749FD174();
        v6 = v35;
        v8 = v36;
        v9 = v37;
        v10 = v38;
        v11 = v39;
      }

      else
      {
        v16 = -1 << *(v6 + 32);
        v8 = v6 + 56;
        v9 = ~v16;
        v17 = -v16;
        if (v17 < 64)
        {
          v18 = ~(-1 << v17);
        }

        else
        {
          v18 = -1;
        }

        v11 = v18 & *(v6 + 56);

        v10 = 0;
      }

      v19 = (v9 + 64) >> 6;
      if (v6 < 0)
      {
        goto LABEL_18;
      }

      while (1)
      {
        v20 = v10;
        v21 = v11;
        v22 = v10;
        if (!v11)
        {
          break;
        }

LABEL_16:
        v23 = (v21 - 1) & v21;
        v24 = *(*(v6 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
        if (!v24)
        {
LABEL_22:
          sub_274730F8C(v6);
          (*(*v2 + 600))(1, 0);
          return;
        }

        while (1)
        {
          [v24 registerObserver_];

          v10 = v22;
          v11 = v23;
          if ((v6 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_18:
          if (sub_2749FD874())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
            swift_dynamicCast();
            v24 = v34;
            v22 = v10;
            v23 = v11;
            if (v34)
            {
              continue;
            }
          }

          goto LABEL_22;
        }
      }

      while (1)
      {
        v22 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v22 >= v19)
        {
          goto LABEL_22;
        }

        v21 = *(v8 + 8 * v22);
        ++v20;
        if (v21)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
      if (v7)
      {

        sub_2749FD804();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
        sub_27472ABB4(&qword_2809688C0, &qword_280967A10, &qword_274A0FC10);
        sub_2749FD174();
        v6 = v35;
        v12 = v36;
        v13 = v37;
        v14 = v38;
        v15 = v39;
      }

      else
      {
        v25 = -1 << *(v6 + 32);
        v12 = v6 + 56;
        v13 = ~v25;
        v26 = -v25;
        if (v26 < 64)
        {
          v27 = ~(-1 << v26);
        }

        else
        {
          v27 = -1;
        }

        v15 = v27 & *(v6 + 56);

        v14 = 0;
      }

      v28 = (v13 + 64) >> 6;
      if (v6 < 0)
      {
        goto LABEL_34;
      }

      while (1)
      {
        v29 = v14;
        v30 = v15;
        v31 = v14;
        if (!v15)
        {
          break;
        }

LABEL_32:
        v32 = (v30 - 1) & v30;
        v33 = *(*(v6 + 48) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
        if (!v33)
        {
LABEL_38:
          sub_274730F8C(v6);
          return;
        }

        while (1)
        {
          [v33 unregisterObserver_];

          v14 = v31;
          v15 = v32;
          if ((v6 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_34:
          if (sub_2749FD874())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A10, &qword_274A0FC10);
            swift_dynamicCast();
            v33 = v34;
            v31 = v14;
            v32 = v15;
            if (v34)
            {
              continue;
            }
          }

          goto LABEL_38;
        }
      }

      while (1)
      {
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v31 >= v28)
        {
          goto LABEL_38;
        }

        v30 = *(v12 + 8 * v31);
        ++v29;
        if (v30)
        {
          goto LABEL_32;
        }
      }
    }

    __break(1u);
  }
}

void sub_274732154()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v610 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968818, &qword_274A12BA8);
  OUTLINED_FUNCTION_34(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14();
  v578 = v5;
  OUTLINED_FUNCTION_57_0();
  v584 = sub_2749F9734();
  OUTLINED_FUNCTION_43();
  v606 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v583 = v9 - v8;
  v10 = OUTLINED_FUNCTION_57_0();
  v656 = type metadata accessor for ShortcutsLibraryItem(v10);
  OUTLINED_FUNCTION_43();
  v655 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_1();
  v648 = v13;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21_0();
  v636 = v15;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_21_0();
  v582 = v17;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_21_0();
  v640 = v19;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_21_0();
  v590 = v21;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_21_0();
  v630 = v23;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_15();
  v598 = v25;
  v26 = OUTLINED_FUNCTION_57_0();
  v654 = type metadata accessor for ShortcutsLibraryItem.ItemType(v26);
  OUTLINED_FUNCTION_43();
  v613 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_5_1();
  v581 = v29;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_21_0();
  v589 = v31;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_21_0();
  v628 = v33;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_21_0();
  v653 = v35;
  OUTLINED_FUNCTION_108_0();
  v37 = MEMORY[0x28223BE20](v36);
  v39 = &v575 - v38;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_15();
  v595 = v40;
  OUTLINED_FUNCTION_57_0();
  v605 = sub_2749F9164();
  OUTLINED_FUNCTION_43();
  v608 = v41;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_0();
  v604 = v44 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968820, &unk_274A12BB0);
  v46 = OUTLINED_FUNCTION_34(v45);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_5_1();
  v615 = v47;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_21_0();
  v594 = v49;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_15();
  v620 = v51;
  v52 = OUTLINED_FUNCTION_57_0();
  v53 = type metadata accessor for ShortcutsLibrarySection(v52);
  OUTLINED_FUNCTION_43();
  v622 = v54;
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_5_1();
  v634 = v56;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_21_0();
  v593 = v58;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_21_0();
  v580 = v60;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_21_0();
  v586 = v62;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_21_0();
  v587 = v64;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_21_0();
  v617 = v66;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_21_0();
  v596 = v68;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_21_0();
  v609 = v70;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_15();
  v619 = v72;
  OUTLINED_FUNCTION_57_0();
  v73 = sub_2749F97C4();
  OUTLINED_FUNCTION_43();
  v611 = v74;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_5_1();
  v579 = v76;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_21_0();
  v612 = v78;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_21_0();
  v585 = v80;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_21_0();
  v588 = v82;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_21_0();
  v631 = v84;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_21_0();
  v577 = v86;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_21_0();
  v627 = v88;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v89);
  v91 = &v575 - v90;
  v632 = sub_2749F9514();
  OUTLINED_FUNCTION_43();
  v93 = v92;
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_5_1();
  v635 = v95;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_15();
  v623 = v97;
  v98 = OUTLINED_FUNCTION_57_0();
  v647 = type metadata accessor for LibrarySectionOptions.SectionType(v98);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_5_1();
  v592 = v100;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_21_0();
  v607 = v102;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v103);
  OUTLINED_FUNCTION_21_0();
  v600 = v104;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v105);
  OUTLINED_FUNCTION_21_0();
  v618 = v106;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_21_0();
  v637 = v108;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v109);
  OUTLINED_FUNCTION_15();
  v643 = v110;
  v111 = OUTLINED_FUNCTION_57_0();
  v112 = type metadata accessor for LibrarySectionOptions(v111);
  OUTLINED_FUNCTION_43();
  v114 = v113;
  MEMORY[0x28223BE20](v115);
  OUTLINED_FUNCTION_5_1();
  v614 = v116;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_21_0();
  v597 = v118;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v119);
  OUTLINED_FUNCTION_21_0();
  v621 = v120;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v121);
  OUTLINED_FUNCTION_21_0();
  v650 = v122;
  OUTLINED_FUNCTION_108_0();
  MEMORY[0x28223BE20](v123);
  OUTLINED_FUNCTION_15();
  v646 = v124;
  v660 = MEMORY[0x277D84F90];
  v125 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_sections;
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  v616 = v125;
  v126 = *(*(v1 + v125) + 16);
  v657 = v1;
  v638 = v114;
  v639 = v53;
  v649 = v39;
  v652 = v73;
  v633 = v112;
  v599 = v93;
  v642 = v126;
  if (!v126)
  {
    v603 = 0;
    v148 = v112;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_71();
  v641 = v128 + v127;
  v629 = *(v112 + 28);
  *&v651 = v129 + 16;
  v130 = (v129 + 8);
  v624 = (v93 + 8);
  v625 = (v93 + 32);
  v644 = v128;

  v131 = v644;
  v132 = 0;
  v133 = v623;
  v134 = v643;
  while (1)
  {
    if (v132 >= v131[2])
    {
      goto LABEL_336;
    }

    v645 = v132;
    OUTLINED_FUNCTION_2_13();
    v93 = v646;
    sub_2747310DC(v135, v646);
    OUTLINED_FUNCTION_5_10();
    sub_2747310DC(v629 + v93, v134);
    v136 = OUTLINED_FUNCTION_135_1();
    if (!v136)
    {
      v147 = *v643;
      v93 = [*v643 count];

      goto LABEL_15;
    }

    if (v136 != 1)
    {
      OUTLINED_FUNCTION_4_9();
      sub_274731134();
      goto LABEL_16;
    }

    (*v625)(v133, v134, v632);
    v137 = *(sub_2749F9504() + 16);
    if (v137)
    {
      break;
    }

    v93 = 0;
LABEL_14:
    (*v624)(v133, v632);
    v53 = v639;
LABEL_15:
    v134 = v643;
    OUTLINED_FUNCTION_4_9();
    sub_274731134();
    if (v93 >= 1)
    {
      v603 = 1;
LABEL_20:

      v148 = v633;
LABEL_21:
      v149 = *(v1 + v616);
      v626 = v149[2];
      if (!v626)
      {
LABEL_320:
        swift_getKeyPath();
        swift_getKeyPath();
        v560 = sub_2749FA8F4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687B8, &qword_274A12998);
        sub_2749F9574();
        v560(v659, 0);

        v561 = *(v660 + 16);
        if (v561)
        {
          v562 = v634;
          v563 = (v634 + *(v639 + 28));
          OUTLINED_FUNCTION_71();
          v655 = v564;
          v566 = v564 + v565;
          v656 = *(v567 + 72);
          v568 = v578;
          do
          {
            sub_2747310DC(v566, v562);
            v570 = *v563;
            v569 = v563[1];
            sub_2747310DC(v562, v568);
            OUTLINED_FUNCTION_143();
            __swift_storeEnumTagSinglePayload(v571, v572, v573, v639);
            v658[0] = v570;
            v658[1] = v569;
            swift_getKeyPath();
            swift_getKeyPath();

            v574 = sub_2749FA8F4();
            sub_2749F95E4();
            v574(v659, 0);

            v562 = v634;

            OUTLINED_FUNCTION_12_8();
            sub_274731134();
            v566 += v656;
            --v561;
          }

          while (v561);
        }

        OUTLINED_FUNCTION_46();
        return;
      }

      v150 = OBJC_IVAR____TtC10WorkflowUI17LibraryDataSource_sortOrderComparators;
      OUTLINED_FUNCTION_71();
      v625 = (v149 + v151);

      OUTLINED_FUNCTION_24();
      swift_beginAccess();
      v601 = v150;
      OUTLINED_FUNCTION_24();
      swift_beginAccess();
      v152 = 0;
      v623 = 0;
      v602 = v608 + 1;
      v616 = v599 + 8;
      v608 = (v599 + 32);
      v645 = v611 + 16;
      v644 = (v611 + 8);
      v629 = (v611 + 32);
      v576 = *MEMORY[0x277D7BF08];
      v575 = v606 + 104;
      v599 = *MEMORY[0x277D7D090];
      v651 = xmmword_274A0EF10;
      v624 = v149;
      while (2)
      {
        if (v152 >= v149[2])
        {
          goto LABEL_333;
        }

        v641 = v152;
        OUTLINED_FUNCTION_2_13();
        v153 = v650;
        sub_2747310DC(v154, v650);
        v155 = *(v148 + 28);
        OUTLINED_FUNCTION_5_10();
        sub_2747310DC(v153 + v155, v637);
        v156 = OUTLINED_FUNCTION_135_1();
        if (v156)
        {
          if (v156 == 1)
          {
            v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809680D0, &qword_274A10BA8);
            v158 = *(v637 + *(v157 + 48));
            v159 = (*v608)(v635);
            if ((*(*v1 + 392))(v159))
            {
              OUTLINED_FUNCTION_107_2();
              v160 = OUTLINED_FUNCTION_34_2();
              v161(v160);
              v148 = v633;
              goto LABEL_28;
            }

            LODWORD(v606) = v158;
            if (v158)
            {
              v178 = sub_2749F9504();
              MEMORY[0x28223BE20](v178);
              *(&v575 - 4) = v1;
              *(&v575 - 24) = 1;
              *(&v575 - 2) = v650;
              v179 = v623;
              v180 = sub_2747A6794(sub_2747B15B8, (&v575 - 6), v178);
              v623 = v179;

              sub_274782434();
              v181 = sub_2749F94C4();
              sub_27472D918(v181);
              OUTLINED_FUNCTION_147();

              if (v179)
              {
                v182 = sub_2749F94C4();
                v659[0] = MEMORY[0x277D84F90];
                sub_27472D918(v182);
                OUTLINED_FUNCTION_108_2();
                while (v179 != v53)
                {
                  if (v646)
                  {
                    v194 = OUTLINED_FUNCTION_43_0();
                    v183 = MEMORY[0x277C5F6D0](v194);
                  }

                  else
                  {
                    if (v53 >= *(v643 + 16))
                    {
                      goto LABEL_328;
                    }

                    v183 = OUTLINED_FUNCTION_155();
                  }

                  v184 = v183;
                  if (__OFADD__(v53, 1))
                  {
                    goto LABEL_327;
                  }

                  v185 = v1[6];
                  if (v185 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968828, &qword_274A12BC0), inited = swift_initStackObject(), OUTLINED_FUNCTION_21_5(inited), v187 = v185, v188 = [v184 name], v189 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0(), v191 = v190, v188, inited[3].n128_u64[0] = v189, inited[3].n128_u64[1] = v191, v93 = v657, v192 = sub_2749FCCB4(), v193 = OUTLINED_FUNCTION_97_2(v192), , v180 = objc_msgSend(v187, sel_evaluateWithObject_, v193), v187, v193, v1 = v93, (v180 & 1) == 0))
                  {
                  }

                  else
                  {
                    sub_2749FD9E4();
                    v180 = *(v659[0] + 16);
                    sub_2749FDA24();
                    OUTLINED_FUNCTION_144();
                    sub_2749FDA34();
                    sub_2749FD9F4();
                  }

                  ++v53;
                  v39 = v649;
                }

                v280 = v659[0];
                v281 = sub_27472D918(v659[0]);
                if (v281)
                {
                  v282 = v281;
                  v659[0] = MEMORY[0x277D84F90];
                  OUTLINED_FUNCTION_120_1();
                  sub_2747360D8();
                  if (v282 < 0)
                  {
                    goto LABEL_345;
                  }

                  v283 = 0;
                  v284 = v659[0];
                  do
                  {
                    if ((v280 & 0xC000000000000001) != 0)
                    {
                      v285 = MEMORY[0x277C5F6D0](v283, v280);
                    }

                    else
                    {
                      v285 = *(v280 + 8 * v283 + 32);
                    }

                    v286 = v628;
                    OUTLINED_FUNCTION_152(v285);
                    v659[0] = v284;
                    v93 = *(v284 + 16);
                    OUTLINED_FUNCTION_91_2();
                    if (v237)
                    {
                      OUTLINED_FUNCTION_29_4(v287);
                      sub_2747360D8();
                      v284 = v659[0];
                    }

                    ++v283;
                    *(v284 + 16) = v180;
                    OUTLINED_FUNCTION_71();
                    OUTLINED_FUNCTION_23_5();
                    sub_274735A24(v286, v288);
                    v39 = v649;
                  }

                  while (v282 != v283);
                }

                else
                {

                  v284 = MEMORY[0x277D84F90];
                }

                v384 = *(v284 + 16);
                if (v384)
                {
                  v659[0] = MEMORY[0x277D84F90];
                  sub_2747AF3E8(v384);
                  OUTLINED_FUNCTION_31_0();
                  v386 = v284 + v385;
                  v388 = *(v387 + 72);
                  v389 = v630;
                  do
                  {
                    OUTLINED_FUNCTION_63_1();
                    v390 = v653;
                    sub_2747310DC(v386, v653);
                    sub_2747310DC(v390, v389);
                    v391 = sub_27473670C();
                    OUTLINED_FUNCTION_1_12();
                    sub_274731134();
                    OUTLINED_FUNCTION_84_2();
                    *(v389 + v392) = v391;
                    v393 = v659[0];
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      OUTLINED_FUNCTION_56_3();
                      sub_2747361A4();
                      v393 = v659[0];
                    }

                    v93 = *(v393 + 16);
                    OUTLINED_FUNCTION_91_2();
                    if (v237)
                    {
                      OUTLINED_FUNCTION_29_4(v394);
                      sub_2747361A4();
                      v393 = v659[0];
                    }

                    *(v393 + 16) = v389;
                    OUTLINED_FUNCTION_31_0();
                    OUTLINED_FUNCTION_3_17();
                    v389 = v395;
                    sub_274735A24(v395, v396);
                    v386 += v388;
                    --v384;
                  }

                  while (v384);
                }

                else
                {

                  v393 = MEMORY[0x277D84F90];
                }

                v53 = v639;
                v1 = v657;
                v162 = v641;
                if (*(v393 + 16))
                {
                  OUTLINED_FUNCTION_2_13();
                  OUTLINED_FUNCTION_106_2();
                  v397 = v635;
                  v398 = sub_2749F94B4();
                  v399 = v615;
                  *v615 = v398;
                  v399[1] = v400;
                  type metadata accessor for LibrarySectionOptions.Header(0);
                  OUTLINED_FUNCTION_96();
                  swift_storeEnumTagMultiPayload();
                  OUTLINED_FUNCTION_143();
                  __swift_storeEnumTagSinglePayload(v401, v402, v403, v397);
                  OUTLINED_FUNCTION_144();
                  ShortcutsLibrarySection.init(options:items:headerOverride:)();
                  if ((OUTLINED_FUNCTION_131_0() & 1) == 0)
                  {
                    OUTLINED_FUNCTION_27_3();
                    v397 = v542;
                  }

                  v404 = v606;
                  OUTLINED_FUNCTION_39_3();
                  if (v237)
                  {
                    v543 = OUTLINED_FUNCTION_15_5(v405);
                    sub_274735AB4(v543, v544, v545, v546);
                    v397 = v547;
                  }

                  OUTLINED_FUNCTION_11_7();
                  OUTLINED_FUNCTION_6_5();
                  sub_274735A24(v587, v406);
                  v294 = 0;
                  v660 = v397;
                  goto LABEL_237;
                }

                v294 = 0;
              }

              else
              {
                v294 = 0;
                v162 = v641;
              }

              v404 = v606;
              goto LABEL_237;
            }

            v202 = v1[6];
            if (v202)
            {
              v646 = v202;
              v203 = sub_2749F9504();
              v204 = *(v203 + 16);
              if (v204)
              {
                v659[0] = MEMORY[0x277D84F90];
                OUTLINED_FUNCTION_120_1();
                sub_27476D5B0();
                v205 = v659[0];
                OUTLINED_FUNCTION_31_0();
                v591 = v203;
                v643 = v206;
                v207 = v203 + v206;
                v93 = *(v208 + 72);
                v642 = *(v208 + 16);
                v209 = v577;
                do
                {
                  v210 = (v642)(v631, v207, v73);
                  MEMORY[0x28223BE20](v210);
                  *(&v575 - 2) = v646;
                  sub_2749F9754();
                  v211 = OUTLINED_FUNCTION_110_2();
                  v212(v211, v73);
                  v659[0] = v205;
                  v214 = *(v205 + 16);
                  v213 = *(v205 + 24);
                  if (v214 >= v213 >> 1)
                  {
                    OUTLINED_FUNCTION_8(v213);
                    sub_27476D5B0();
                    v205 = v659[0];
                  }

                  *(v205 + 16) = v214 + 1;
                  (*v629)(v205 + v643 + v214 * v93, v209, v73);
                  v207 += v93;
                  --v204;
                }

                while (v204);
              }

              else
              {

                v205 = MEMORY[0x277D84F90];
              }

              v320 = *(v205 + 16);
              if (v320)
              {
                OUTLINED_FUNCTION_71();
                v322 = v205 + v321;
                v643 = *(v323 + 72);
                v93 = *(v323 + 16);
                v324 = MEMORY[0x277D84F90];
                while (1)
                {
                  v325 = v652;
                  (v93)(v627, v322, v652);
                  v326 = sub_2749F97B4();
                  v327 = OUTLINED_FUNCTION_110_2();
                  v328(v327, v325);
                  v329 = *(v326 + 16);
                  v330 = *(v324 + 16);
                  v331 = v330 + v329;
                  if (__OFADD__(v330, v329))
                  {
                    goto LABEL_334;
                  }

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  if (!isUniquelyReferenced_nonNull_native || v331 > *(v324 + 24) >> 1)
                  {
                    if (v330 <= v331)
                    {
                      v333 = v330 + v329;
                    }

                    else
                    {
                      v333 = v330;
                    }

                    sub_2747373E0(isUniquelyReferenced_nonNull_native, v333, 1, v324);
                    v324 = v334;
                  }

                  if (*(v326 + 16))
                  {
                    v335 = (*(v324 + 24) >> 1) - *(v324 + 16);
                    sub_2749F9494();
                    if (v335 < v329)
                    {
                      goto LABEL_337;
                    }

                    swift_arrayInitWithCopy();

                    if (v329)
                    {
                      v336 = *(v324 + 16);
                      v146 = __OFADD__(v336, v329);
                      v337 = v336 + v329;
                      if (v146)
                      {
                        goto LABEL_338;
                      }

                      *(v324 + 16) = v337;
                    }
                  }

                  else
                  {

                    if (v329)
                    {
                      goto LABEL_335;
                    }
                  }

                  v322 += v643;
                  if (!--v320)
                  {

                    v338 = MEMORY[0x277D84F90];
                    goto LABEL_170;
                  }
                }
              }

              v338 = MEMORY[0x277D84F90];
              v324 = MEMORY[0x277D84F90];
LABEL_170:
              v659[0] = v338;
              if (*(v324 + 16))
              {
                v339 = OUTLINED_FUNCTION_123_1();
                v340(v339);
                sub_2749F94D4();
                sub_2749F94F4();
                v338 = MEMORY[0x277D84F90];
                sub_2749F9744();
                v341 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681D8, &qword_274A11590) + 48);
                v342 = v589;
                v343 = OUTLINED_FUNCTION_144();
                v344(v343);
                *(v342 + v341) = 0;
                swift_storeEnumTagMultiPayload();
                OUTLINED_FUNCTION_0_11();
                v345 = v590;
                sub_2747310DC(v342, v590);
                sub_27473670C();
                OUTLINED_FUNCTION_84_2();
                *(v345 + v347) = v346;
                sub_274763A40(0, 1, 1, v338);
                v349 = v348;
                v351 = *(v348 + 16);
                v350 = *(v348 + 24);
                if (v351 >= v350 >> 1)
                {
                  v537 = OUTLINED_FUNCTION_15_5(v350);
                  sub_274763A40(v537, v538, v539, v540);
                  v349 = v541;
                }

                OUTLINED_FUNCTION_1_12();
                sub_274731134();
                (*v644)(v588, v652);
                *(v349 + 16) = v351 + 1;
                OUTLINED_FUNCTION_31_0();
                OUTLINED_FUNCTION_3_17();
                sub_274735A24(v590, v352);
                v659[0] = v349;
              }

              else
              {
              }

              v360 = sub_2749F94A4();
              v658[0] = v338;
              v361 = sub_27472D918(v360);
              v362 = 0;
              v643 = v360 & 0xC000000000000001;
              while (v361 != v362)
              {
                if (v643)
                {
                  v363 = MEMORY[0x277C5F6D0](v362, v360);
                }

                else
                {
                  if (v362 >= *((v360 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_330;
                  }

                  v363 = *(v360 + 8 * v362 + 32);
                }

                v364 = v363;
                if (__OFADD__(v362, 1))
                {
                  goto LABEL_329;
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968828, &qword_274A12BC0);
                v365 = swift_initStackObject();
                v366 = [v364 phrase];
                v367 = [v366 localizedPhrase];

                v368 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                v93 = v369;

                v365[3].n128_u64[0] = v368;
                v365[3].n128_u64[1] = v93;
                sub_2749FCCB4();
                v370 = sub_2749FCC94();

                LOBYTE(v365) = [v646 evaluateWithObject_];

                if (v365)
                {
                  sub_2749FD9E4();
                  OUTLINED_FUNCTION_137_0();
                  OUTLINED_FUNCTION_66();
                  sub_2749FDA34();
                  sub_2749FD9F4();
                }

                else
                {
                }

                ++v362;
              }

              v371 = v658[0];
              v372 = sub_27472D918(v658[0]);
              if (v372)
              {
                v373 = v372;
                v658[0] = MEMORY[0x277D84F90];
                v374 = v658;
                sub_2747AF3E8(v372);
                v375 = v657;
                if (v373 < 0)
                {
                  goto LABEL_346;
                }

                v376 = 0;
                do
                {
                  if ((v371 & 0xC000000000000001) != 0)
                  {
                    v377 = MEMORY[0x277C5F6D0](v376, v371);
                  }

                  else
                  {
                    v377 = *(v371 + 8 * v376 + 32);
                  }

                  OUTLINED_FUNCTION_52_2(v377);
                  swift_storeEnumTagMultiPayload();
                  OUTLINED_FUNCTION_0_11();
                  v378 = v640;
                  sub_2747310DC(v93, v640);
                  v379 = v374;
                  v374 = sub_27473670C();

                  OUTLINED_FUNCTION_1_12();
                  sub_274731134();
                  OUTLINED_FUNCTION_84_2();
                  *(v378 + v380) = v374;
                  v381 = v658[0];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v374 = v658;
                    OUTLINED_FUNCTION_56_3();
                    sub_2747361A4();
                    v381 = v658[0];
                  }

                  v93 = *(v381 + 16);
                  OUTLINED_FUNCTION_91_2();
                  if (v237)
                  {
                    OUTLINED_FUNCTION_8(v382);
                    OUTLINED_FUNCTION_134_1();
                    v381 = v658[0];
                  }

                  ++v376;
                  *(v381 + 16) = v378;
                  OUTLINED_FUNCTION_31_0();
                  OUTLINED_FUNCTION_3_17();
                  sub_274735A24(v640, v383);
                }

                while (v373 != v376);

                v1 = v375;
              }

              else
              {

                v1 = v657;
              }

              v39 = v649;
              sub_274782460();
              v407 = v659[0];
              v53 = v639;
              v162 = v641;
              v404 = v606;
              if (*(v659[0] + 16))
              {
                OUTLINED_FUNCTION_2_13();
                OUTLINED_FUNCTION_106_2();
                v408 = type metadata accessor for LibrarySectionOptions.Header(0);
                OUTLINED_FUNCTION_45_1(v408);
                OUTLINED_FUNCTION_66_0();
                ShortcutsLibrarySection.init(options:items:headerOverride:)();
                if ((OUTLINED_FUNCTION_131_0() & 1) == 0)
                {
                  OUTLINED_FUNCTION_27_3();
                  v407 = v548;
                }

                OUTLINED_FUNCTION_39_3();
                if (v237)
                {
                  v549 = OUTLINED_FUNCTION_15_5(v409);
                  sub_274735AB4(v549, v550, v551, v552);
                  v407 = v553;
                }

                OUTLINED_FUNCTION_11_7();
                OUTLINED_FUNCTION_6_5();
                sub_274735A24(v586, v410);
                v660 = v407;
              }

              else
              {
              }
            }

            else
            {
              v295 = sub_2749F9504();
              if (*(v295 + 16))
              {
                v296 = v39;
                v297 = v1;
                v298 = v611;
                v299 = (*(v611 + 80) + 32) & ~*(v611 + 80);
                v300 = *(v611 + 16);
                (v300)(v585, v295 + v299, v73);

                v301 = sub_2749F9504();
                v302 = v301[2];
                if (v302)
                {
                  v646 = v301;
                  v303 = v301 + v299;
                  v304 = *(v298 + 72);
                  v305 = MEMORY[0x277D84F90];
                  do
                  {
                    v306 = OUTLINED_FUNCTION_94_0();
                    v307 = v652;
                    v300(v306);
                    v308 = sub_2749F97B4();
                    v309 = OUTLINED_FUNCTION_110_2();
                    v310(v309, v307);
                    v311 = *(v308 + 16);
                    v312 = *(v305 + 16);
                    v313 = v312 + v311;
                    if (__OFADD__(v312, v311))
                    {
                      goto LABEL_339;
                    }

                    v314 = swift_isUniquelyReferenced_nonNull_native();
                    if (!v314 || v313 > *(v305 + 24) >> 1)
                    {
                      if (v312 <= v313)
                      {
                        v315 = v312 + v311;
                      }

                      else
                      {
                        v315 = v312;
                      }

                      sub_2747373E0(v314, v315, 1, v305);
                      v305 = v316;
                    }

                    if (*(v308 + 16))
                    {
                      v317 = (*(v305 + 24) >> 1) - *(v305 + 16);
                      sub_2749F9494();
                      if (v317 < v311)
                      {
                        goto LABEL_341;
                      }

                      swift_arrayInitWithCopy();

                      v297 = v657;
                      v296 = v649;
                      if (v311)
                      {
                        v318 = *(v305 + 16);
                        v146 = __OFADD__(v318, v311);
                        v319 = v318 + v311;
                        if (v146)
                        {
                          goto LABEL_343;
                        }

                        *(v305 + 16) = v319;
                      }
                    }

                    else
                    {

                      v297 = v657;
                      v296 = v649;
                      if (v311)
                      {
                        goto LABEL_340;
                      }
                    }

                    v303 += v304;
                  }

                  while (--v302);
                }

                v411 = OUTLINED_FUNCTION_123_1();
                v412(v411);
                sub_2749F9764();
                sub_2749F97A4();
                v413 = v631;
                OUTLINED_FUNCTION_99_2();
                sub_2749F9744();
                sub_2749F94C4();
                v414 = v579;
                sub_2749F9774();

                v415 = *v644;
                v416 = v413;
                v417 = v652;
                (*v644)(v416, v652);
                v418 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681D8, &qword_274A11590) + 48);
                v419 = v581;
                (v300)(v581, v414, v417);
                *(v419 + v418) = 0;
                swift_storeEnumTagMultiPayload();
                OUTLINED_FUNCTION_0_11();
                v420 = v582;
                sub_2747310DC(v419, v582);
                v1 = v297;
                sub_27473670C();
                OUTLINED_FUNCTION_84_2();
                *(v420 + v422) = v421;
                OUTLINED_FUNCTION_2_13();
                sub_2747310DC(v650, v614);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B20, &qword_274A16A60);
                v423 = OUTLINED_FUNCTION_47_1();
                *(v423 + 16) = v651;
                OUTLINED_FUNCTION_8_6();
                sub_2747310DC(v420, v424 + v419);
                v425 = type metadata accessor for LibrarySectionOptions.Header(0);
                OUTLINED_FUNCTION_45_1(v425);
                OUTLINED_FUNCTION_66_0();
                ShortcutsLibrarySection.init(options:items:headerOverride:)();
                if ((OUTLINED_FUNCTION_131_0() & 1) == 0)
                {
                  OUTLINED_FUNCTION_27_3();
                  v423 = v554;
                }

                v39 = v296;
                v426 = *(v423 + 24);
                v53 = v639;
                if (*(v423 + 16) >= v426 >> 1)
                {
                  v555 = OUTLINED_FUNCTION_15_5(v426);
                  sub_274735AB4(v555, v556, v557, v558);
                  v423 = v559;
                }

                OUTLINED_FUNCTION_7_8();
                sub_274731134();
                OUTLINED_FUNCTION_1_12();
                sub_274731134();
                v427 = v652;
                v93 = v644;
                v415(v579, v652);
                v415(v585, v427);
                OUTLINED_FUNCTION_11_7();
                OUTLINED_FUNCTION_6_5();
                sub_274735A24(v580, v428);
                v660 = v423;
              }

              else
              {
              }

              v162 = v641;
              v404 = v606;
            }

            v429 = *(sub_2749F9504() + 16);

            if (v429)
            {
              v294 = 1;
            }

            else
            {
              v294 = v1[6] != 0;
            }

LABEL_237:
            v430 = sub_2749F94A4();
            if (v430 >> 62)
            {
              v431 = sub_2749FD844();
            }

            else
            {
              v431 = *((v430 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v431 == 0 || v294)
            {
              OUTLINED_FUNCTION_107_2();
              v432(v635, v632);
LABEL_127:
              v73 = v652;
LABEL_128:
              v148 = v633;
              v149 = v624;
LABEL_129:
              v152 = (v162 + 1);
              OUTLINED_FUNCTION_4_9();
              sub_274731134();
              if (v152 == v626)
              {

                goto LABEL_320;
              }

              continue;
            }

            if (v404)
            {
              v433 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else if (v1[6])
            {
              v433 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v433 = 2;
            }

            v434 = MEMORY[0x277D84F90];
            v659[0] = MEMORY[0x277D84F90];
            v435 = *(sub_2749F9504() + 16);

            v591 = v433;
            if (v435)
            {
              v436 = 1;
            }

            else
            {
              v436 = (v1[6] != 0) & (v404 ^ 1);
            }

            v437 = sub_2749F94C4();
            v438 = sub_27472D918(v437);

            if (v438 && (v436 & 1) == 0)
            {
              v439 = sub_2749F94C4();
              v658[0] = v434;
              sub_27472D918(v439);
              OUTLINED_FUNCTION_108_2();
              while (v438 != v434)
              {
                if (v646)
                {
                  v451 = OUTLINED_FUNCTION_43_0();
                  v440 = MEMORY[0x277C5F6D0](v451);
                }

                else
                {
                  if (v434 >= *(v643 + 16))
                  {
                    goto LABEL_332;
                  }

                  v440 = OUTLINED_FUNCTION_155();
                }

                v441 = v440;
                if (__OFADD__(v434, 1))
                {
                  goto LABEL_331;
                }

                v442 = v1[6];
                if (v442 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968828, &qword_274A12BC0), v443 = swift_initStackObject(), OUTLINED_FUNCTION_21_5(v443), v444 = v442, v445 = [v441 name], v446 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0(), v448 = v447, v445, v443[3].n128_u64[0] = v446, v443[3].n128_u64[1] = v448, v93 = v657, v449 = sub_2749FCCB4(), v450 = OUTLINED_FUNCTION_97_2(v449), , LOBYTE(v443) = objc_msgSend(v444, sel_evaluateWithObject_, v450), v444, v450, v1 = v93, (v443 & 1) == 0))
                {
                }

                else
                {
                  sub_2749FD9E4();
                  OUTLINED_FUNCTION_137_0();
                  OUTLINED_FUNCTION_144();
                  sub_2749FDA34();
                  sub_2749FD9F4();
                }

                ++v434;
              }

              v452 = v658[0];
              v453 = sub_27472D918(v658[0]);
              if (v453)
              {
                v454 = v453;
                v658[0] = MEMORY[0x277D84F90];
                v455 = v658;
                sub_2747AF3E8(v453);
                if (v454 < 0)
                {
                  goto LABEL_347;
                }

                v456 = 0;
                do
                {
                  if ((v452 & 0xC000000000000001) != 0)
                  {
                    v457 = OUTLINED_FUNCTION_43_0();
                    v458 = MEMORY[0x277C5F6D0](v457);
                  }

                  else
                  {
                    v458 = OUTLINED_FUNCTION_155();
                  }

                  OUTLINED_FUNCTION_52_2(v458);
                  swift_storeEnumTagMultiPayload();
                  OUTLINED_FUNCTION_0_11();
                  v459 = v636;
                  sub_2747310DC(v93, v636);
                  v460 = v455;
                  v455 = sub_27473670C();

                  OUTLINED_FUNCTION_1_12();
                  sub_274731134();
                  OUTLINED_FUNCTION_84_2();
                  *(v459 + v461) = v455;
                  v462 = v658[0];
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v455 = v658;
                    OUTLINED_FUNCTION_56_3();
                    sub_2747361A4();
                    v462 = v658[0];
                  }

                  v93 = *(v462 + 16);
                  OUTLINED_FUNCTION_91_2();
                  if (v237)
                  {
                    OUTLINED_FUNCTION_8(v463);
                    OUTLINED_FUNCTION_134_1();
                    v462 = v658[0];
                  }

                  ++v456;
                  *(v462 + 16) = v460;
                  OUTLINED_FUNCTION_31_0();
                  OUTLINED_FUNCTION_3_17();
                  sub_274735A24(v636, v464);
                }

                while (v454 != v456);

                v434 = MEMORY[0x277D84F90];
                v1 = v657;
              }

              else
              {

                v434 = MEMORY[0x277D84F90];
              }

              sub_274782460();
            }

            v465 = sub_2749F94A4();
            v658[0] = v434;
            v646 = sub_27472D918(v465);
            v466 = 0;
            v643 = v465 & 0xC000000000000001;
            v642 = v465 & 0xFFFFFFFFFFFFFF8;
            while (v646 != v466)
            {
              if (v643)
              {
                v467 = MEMORY[0x277C5F6D0](v466, v465);
              }

              else
              {
                if (v466 >= *(v642 + 16))
                {
                  goto LABEL_326;
                }

                v467 = *(v465 + 8 * v466 + 32);
              }

              v468 = v467;
              if (__OFADD__(v466, 1))
              {
                goto LABEL_325;
              }

              v469 = v1[6];
              if (v469 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968828, &qword_274A12BC0), v470 = swift_initStackObject(), OUTLINED_FUNCTION_21_5(v470), v471 = v469, v472 = [v468 phrase], v473 = objc_msgSend(v472, sel_localizedPhrase), v472, v474 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0(), v476 = v475, v473, v470[3].n128_u64[0] = v474, v470[3].n128_u64[1] = v476, v93 = v657, v477 = sub_2749FCCB4(), v478 = OUTLINED_FUNCTION_97_2(v477), , LOBYTE(v470) = objc_msgSend(v471, sel_evaluateWithObject_, v478), v471, v478, v1 = v93, (v470 & 1) == 0))
              {
              }

              else
              {
                sub_2749FD9E4();
                OUTLINED_FUNCTION_137_0();
                OUTLINED_FUNCTION_66();
                sub_2749FDA34();
                sub_2749FD9F4();
              }

              ++v466;
            }

            v479 = v658[0];
            v480 = sub_27472D918(v658[0]);
            if (v480)
            {
              v481 = v480;
              v658[0] = MEMORY[0x277D84F90];
              v482 = v658;
              sub_2747AF3E8(v480);
              if (v481 < 0)
              {
                goto LABEL_344;
              }

              v483 = 0;
              do
              {
                if ((v479 & 0xC000000000000001) != 0)
                {
                  v484 = OUTLINED_FUNCTION_43_0();
                  v485 = MEMORY[0x277C5F6D0](v484);
                }

                else
                {
                  v485 = OUTLINED_FUNCTION_155();
                }

                OUTLINED_FUNCTION_52_2(v485);
                swift_storeEnumTagMultiPayload();
                OUTLINED_FUNCTION_0_11();
                v486 = v648;
                sub_2747310DC(v93, v648);
                v487 = v482;
                v482 = sub_27473670C();

                OUTLINED_FUNCTION_1_12();
                sub_274731134();
                OUTLINED_FUNCTION_84_2();
                *(v486 + v488) = v482;
                v489 = v658[0];
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v482 = v658;
                  OUTLINED_FUNCTION_56_3();
                  sub_2747361A4();
                  v489 = v658[0];
                }

                v93 = *(v489 + 16);
                OUTLINED_FUNCTION_91_2();
                if (v237)
                {
                  OUTLINED_FUNCTION_8(v490);
                  OUTLINED_FUNCTION_134_1();
                  v489 = v658[0];
                }

                ++v483;
                *(v489 + 16) = v487;
                OUTLINED_FUNCTION_31_0();
                OUTLINED_FUNCTION_3_17();
                sub_274735A24(v648, v491);
              }

              while (v481 != v483);
            }

            v251 = v659;
            sub_274782460();
            v492 = sub_2747ACDCC(v591, v659[0], sub_2748142C0, sub_274813204);
            v494 = v493;
            v496 = v495;
            if (!sub_2747B14EC(v492, v497, v493, v495))
            {
              v498 = OUTLINED_FUNCTION_66_2();
              sub_2747B0350(v498, v499, v494, v496, v500, v501);
            }

            OUTLINED_FUNCTION_96();
            swift_unknownObjectRelease();
            v53 = v639;
            v73 = v652;
            v162 = v641;
            v39 = v649;
            if (!v659[2])
            {

              OUTLINED_FUNCTION_107_2();
              v505(v635, v632);
              goto LABEL_128;
            }

            OUTLINED_FUNCTION_2_13();
            OUTLINED_FUNCTION_106_2();
            v502 = type metadata accessor for LibrarySectionOptions.Header(0);
            OUTLINED_FUNCTION_45_1(v502);
            OUTLINED_FUNCTION_66_0();
            ShortcutsLibrarySection.init(options:items:headerOverride:)();
            if ((OUTLINED_FUNCTION_131_0() & 1) == 0)
            {
              OUTLINED_FUNCTION_27_3();
              v251 = v531;
            }

            OUTLINED_FUNCTION_39_3();
            if (v237)
            {
              v532 = OUTLINED_FUNCTION_15_5(v503);
              sub_274735AB4(v532, v533, v534, v535);
              v251 = v536;
            }

            OUTLINED_FUNCTION_107_2();
            v504(v635);
            OUTLINED_FUNCTION_11_7();
            OUTLINED_FUNCTION_6_5();
            v256 = v593;
          }

          else
          {
            OUTLINED_FUNCTION_2_13();
            v165 = v621;
            sub_2747310DC(v650, v621);
            type metadata accessor for LibrarySectionOptions.Header(0);
            OUTLINED_FUNCTION_88_2();
            __swift_storeEnumTagSinglePayload(v166, v167, v168, v169);
            OUTLINED_FUNCTION_5_10();
            v171 = v165 + v170;
            v172 = v618;
            sub_2747310DC(v171, v618);
            v173 = OUTLINED_FUNCTION_135_1();
            if (v173)
            {
              if (v173 == 1)
              {
                OUTLINED_FUNCTION_156(v173);
                sub_2749F9114();
                v174 = OUTLINED_FUNCTION_26_3();
                v175(v174);
                v176 = (v609 + *(v53 + 28));
                *v176 = v73;
                v176[1] = v148;
                OUTLINED_FUNCTION_107_2();
                v177(v618, v632);
              }

              else
              {
                OUTLINED_FUNCTION_156(v173);
                sub_2749F9114();
                v199 = OUTLINED_FUNCTION_26_3();
                v200(v199);
                v201 = (v609 + *(v53 + 28));
                *v201 = v73;
                v201[1] = v148;
              }
            }

            else
            {
              v195 = v148;
              v196 = *v618;
              v197 = *(v621 + *(v195 + 24));
              if (v197)
              {
                v198 = [v197 name];
                _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                OUTLINED_FUNCTION_95();
              }

              else
              {
                v659[0] = sub_2749FD624();
                v172 = v659;
                sub_2749FDC74();
                OUTLINED_FUNCTION_95();
              }

              v289 = (v609 + *(v53 + 28));
              *v289 = v172;
              v289[1] = v73;
            }

            OUTLINED_FUNCTION_2_13();
            v291 = v290;
            sub_2747310DC(v621, v290);
            sub_2749F9594();
            v251 = v620;
            sub_274735454(v620, v291 + *(v53 + 24));
            v292 = v623;
            sub_2747354C4(MEMORY[0x277D84F90], v291);
            v623 = v292;
            sub_2747359D0(v251, &qword_280968820, &unk_274A12BB0);
            OUTLINED_FUNCTION_4_9();
            sub_274731134();
            OUTLINED_FUNCTION_6_5();
            sub_274735A24(v291, v619);
            if ((OUTLINED_FUNCTION_131_0() & 1) == 0)
            {
              OUTLINED_FUNCTION_27_3();
              v251 = v513;
            }

            v162 = v641;
            OUTLINED_FUNCTION_39_3();
            if (v237)
            {
              v514 = OUTLINED_FUNCTION_15_5(v293);
              sub_274735AB4(v514, v515, v516, v517);
              v251 = v518;
            }

            OUTLINED_FUNCTION_11_7();
            OUTLINED_FUNCTION_6_5();
            v256 = v619;
          }

LABEL_126:
          sub_274735A24(v256, v255);
          v660 = v251;
          goto LABEL_127;
        }

        break;
      }

      v163 = *v637;
      if (v610)
      {
        [*v637 reset];
      }

      [v163 setSearchPredicate_];
      if (v1[6])
      {
        OUTLINED_FUNCTION_5_10();
        v164 = v600;
        sub_2747310DC(v650 + v155, v600);
        if (OUTLINED_FUNCTION_135_1())
        {
          OUTLINED_FUNCTION_24_4();
          sub_274731134();
        }

        else
        {
          v215 = *v164;
          v216 = [v215 descriptors];
          sub_27471CF08(0, &qword_28159E4A8, 0x277D7CAA8);
          v217 = sub_2749FCF84();

          if (v217 >> 62)
          {
            OUTLINED_FUNCTION_71_2();
            v73 = sub_2749FD844();
          }

          else
          {
            v73 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v148 = v633;
          if (!v73)
          {

            v73 = v652;
LABEL_28:
            v149 = v624;
            v162 = v641;
            goto LABEL_129;
          }
        }
      }

      v218 = *(v650 + *(v148 + 24));
      if (v218)
      {
        v219 = [v218 identifier];
        v73 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v221 = v220;

        if (v73 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v221 == v222)
        {
        }

        else
        {
          v73 = sub_2749FDCC4();

          v224 = 0;
          if ((v73 & 1) == 0)
          {
LABEL_73:
            OUTLINED_FUNCTION_5_10();
            v225 = v607;
            sub_2747310DC(v650 + v155, v607);
            if (OUTLINED_FUNCTION_135_1())
            {
              OUTLINED_FUNCTION_24_4();
              sub_274731134();
            }

            else
            {
              v225 = *v225;
              v226 = [v225 descriptors];
              sub_27471CF08(0, &qword_28159E4A8, 0x277D7CAA8);
              v227 = sub_2749FCF84();

              if (v227 >> 62)
              {
                OUTLINED_FUNCTION_71_2();
                v73 = sub_2749FD844();
              }

              else
              {
                v73 = *((v227 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (v73)
              {
                v228 = 1;
              }

              else
              {
                v228 = v224;
              }

              if ((v228 & 1) == 0)
              {
                v93 = v163;
                sub_2747310DC(v650, v595);
                swift_storeEnumTagMultiPayload();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967B20, &qword_274A16A60);
                v257 = (*(v655 + 80) + 32) & ~*(v655 + 80);
                v258 = swift_allocObject();
                *(v258 + 16) = v651;
                v259 = v258 + v257;
                OUTLINED_FUNCTION_0_11();
                v260 = OUTLINED_FUNCTION_99_2();
                sub_2747310DC(v260, v261);
                sub_27473670C();
                OUTLINED_FUNCTION_84_2();
                *(v259 + v263) = v262;
                v264 = v597;
                OUTLINED_FUNCTION_66_0();
                sub_2747310DC(v265, v266);
                type metadata accessor for LibrarySectionOptions.Header(0);
                OUTLINED_FUNCTION_88_2();
                __swift_storeEnumTagSinglePayload(v267, v268, v269, v270);
                v271 = v633;
                OUTLINED_FUNCTION_5_10();
                v273 = v264 + v272;
                v274 = v592;
                sub_2747310DC(v273, v592);
                v275 = OUTLINED_FUNCTION_135_1();
                v53 = v639;
                if (v275)
                {
                  if (v275 == 1)
                  {
                    OUTLINED_FUNCTION_156(v275);
                    sub_2749F9114();
                    v276 = OUTLINED_FUNCTION_26_3();
                    v277(v276);
                    v278 = (v596 + *(v53 + 28));
                    *v278 = v259;
                    v278[1] = v271;
                    OUTLINED_FUNCTION_107_2();
                    v279(v592, v632);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_156(v275);
                    sub_2749F9114();
                    v357 = OUTLINED_FUNCTION_26_3();
                    v358(v357);
                    v359 = (v596 + *(v53 + 28));
                    *v359 = v259;
                    v359[1] = v271;
                  }
                }

                else
                {
                  v353 = v271;
                  v354 = *v592;
                  v355 = *(v597 + *(v353 + 24));
                  if (v355)
                  {
                    v356 = [v355 name];
                    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
                    OUTLINED_FUNCTION_95();

                    v53 = v639;
                  }

                  else
                  {
                    v659[0] = sub_2749FD624();
                    v274 = v659;
                    sub_2749FDC74();
                    OUTLINED_FUNCTION_95();
                  }

                  v506 = (v596 + *(v53 + 28));
                  *v506 = v274;
                  v506[1] = v259;
                }

                OUTLINED_FUNCTION_2_13();
                v508 = v507;
                sub_2747310DC(v597, v507);
                sub_2749F9594();
                v251 = v594;
                sub_274735454(v594, v508 + *(v53 + 24));
                v509 = OUTLINED_FUNCTION_34_2();
                v510 = v623;
                sub_2747354C4(v509, v511);
                v623 = v510;

                sub_2747359D0(v251, &qword_280968820, &unk_274A12BB0);
                OUTLINED_FUNCTION_4_9();
                sub_274731134();
                if ((OUTLINED_FUNCTION_131_0() & 1) == 0)
                {
                  OUTLINED_FUNCTION_27_3();
                  v251 = v525;
                }

                v162 = v641;
                OUTLINED_FUNCTION_39_3();
                if (v237)
                {
                  v526 = OUTLINED_FUNCTION_15_5(v512);
                  sub_274735AB4(v526, v527, v528, v529);
                  v251 = v530;
                }

                OUTLINED_FUNCTION_1_12();
                sub_274731134();
                OUTLINED_FUNCTION_11_7();
                OUTLINED_FUNCTION_6_5();
                v256 = v596;
                goto LABEL_126;
              }
            }

            v229 = [v163 descriptors];
            v230 = OUTLINED_FUNCTION_59_0();
            sub_27471CF08(v230, &qword_28159E4A8, 0x277D7CAA8);
            OUTLINED_FUNCTION_3();
            v231 = sub_2749FCF84();

            if (v231 >> 62)
            {
              OUTLINED_FUNCTION_71_2();
              v232 = sub_2749FD844();
            }

            else
            {
              v232 = *((v231 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v646 = v163;
            if (v232)
            {
              v659[0] = MEMORY[0x277D84F90];
              OUTLINED_FUNCTION_120_1();
              sub_2747360D8();
              if (v232 < 0)
              {
                goto LABEL_342;
              }

              v233 = 0;
              v234 = v659[0];
              do
              {
                if ((v231 & 0xC000000000000001) != 0)
                {
                  v235 = MEMORY[0x277C5F6D0](v233, v231);
                }

                else
                {
                  v235 = *(v231 + 8 * v233 + 32);
                }

                OUTLINED_FUNCTION_152(v235);
                v659[0] = v234;
                OUTLINED_FUNCTION_91_2();
                if (v237)
                {
                  OUTLINED_FUNCTION_29_4(v236);
                  sub_2747360D8();
                  v234 = v659[0];
                }

                ++v233;
                *(v234 + 16) = v73;
                OUTLINED_FUNCTION_71();
                OUTLINED_FUNCTION_23_5();
                sub_274735A24(v39, v238);
              }

              while (v232 != v233);
            }

            else
            {

              v234 = MEMORY[0x277D84F90];
            }

            v239 = *(v234 + 16);
            if (v239)
            {
              v659[0] = MEMORY[0x277D84F90];
              OUTLINED_FUNCTION_120_1();
              sub_2747361A4();
              v240 = v659[0];
              OUTLINED_FUNCTION_31_0();
              v242 = v234 + v241;
              v244 = *(v243 + 72);
              v245 = v598;
              do
              {
                OUTLINED_FUNCTION_63_1();
                v246 = v653;
                sub_2747310DC(v242, v653);
                sub_2747310DC(v246, v245);
                v247 = sub_27473670C();
                OUTLINED_FUNCTION_1_12();
                sub_274731134();
                OUTLINED_FUNCTION_84_2();
                *(v245 + v248) = v247;
                v659[0] = v240;
                OUTLINED_FUNCTION_91_2();
                if (v237)
                {
                  OUTLINED_FUNCTION_29_4(v249);
                  sub_2747361A4();
                  v245 = v598;
                  v240 = v659[0];
                }

                *(v240 + 16) = v246;
                OUTLINED_FUNCTION_31_0();
                OUTLINED_FUNCTION_3_17();
                sub_274735A24(v245, v250);
                v242 += v244;
                --v239;
              }

              while (v239);
            }

            else
            {

              v240 = MEMORY[0x277D84F90];
            }

            v659[0] = v240;
            v658[0] = *(v657 + v601);
            v643 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968830, &qword_274A12BC8);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968838, &unk_274A12BD0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809681E8, &qword_274A11598);
            sub_27472ABB4(&qword_28159E548, &qword_280968830, &qword_274A12BC8);
            v93 = sub_27472ABB4(&qword_28159E560, &qword_280968838, &unk_274A12BD0);
            sub_27472ABB4(&qword_2815A0CD8, &qword_2809681E8, &qword_274A11598);
            v251 = v659;
            sub_2749FCEC4();
            OUTLINED_FUNCTION_96();

            OUTLINED_FUNCTION_2_13();
            OUTLINED_FUNCTION_106_2();
            v252 = type metadata accessor for LibrarySectionOptions.Header(0);
            OUTLINED_FUNCTION_45_1(v252);
            OUTLINED_FUNCTION_66_0();
            ShortcutsLibrarySection.init(options:items:headerOverride:)();
            if ((OUTLINED_FUNCTION_131_0() & 1) == 0)
            {
              OUTLINED_FUNCTION_27_3();
              v251 = v519;
            }

            v53 = v639;
            v162 = v641;
            v253 = v646;
            OUTLINED_FUNCTION_39_3();
            v39 = v649;
            v1 = v657;
            if (v237)
            {
              v520 = OUTLINED_FUNCTION_15_5(v254);
              sub_274735AB4(v520, v521, v522, v523);
              v251 = v524;
            }

            OUTLINED_FUNCTION_11_7();
            OUTLINED_FUNCTION_6_5();
            v256 = v617;
            goto LABEL_126;
          }
        }
      }

      v224 = v603;
      goto LABEL_73;
    }

LABEL_16:
    v132 = v645 + 1;
    v131 = v644;
    if (v645 + 1 == v642)
    {
      v603 = 0;
      goto LABEL_20;
    }
  }

  v93 = 0;
  OUTLINED_FUNCTION_31_0();
  v626 = v138;
  v140 = v138 + v139;
  v142 = *(v141 + 72);
  v143 = *(v141 + 16);
  while (1)
  {
    v144 = v652;
    v143(v91, v140, v652);
    v145 = *(sub_2749F97B4() + 16);

    (*v130)(v91, v144);
    v146 = __OFADD__(v93, v145);
    v93 += v145;
    if (v146)
    {
      break;
    }

    v140 += v142;
    if (!--v137)
    {

      v1 = v657;
      v39 = v649;
      v73 = v652;
      v133 = v623;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_325:
  __break(1u);
LABEL_326:
  __break(1u);
LABEL_327:
  __break(1u);
LABEL_328:
  __break(1u);
LABEL_329:
  __break(1u);
LABEL_330:
  __break(1u);
LABEL_331:
  __break(1u);
LABEL_332:
  __break(1u);
LABEL_333:
  __break(1u);
LABEL_334:
  __break(1u);
LABEL_335:
  __break(1u);
LABEL_336:
  __break(1u);
LABEL_337:
  __break(1u);
LABEL_338:
  __break(1u);
LABEL_339:
  __break(1u);
LABEL_340:
  __break(1u);
LABEL_341:
  __break(1u);
LABEL_342:
  __break(1u);
LABEL_343:
  __break(1u);
LABEL_344:
  __break(1u);
LABEL_345:
  __break(1u);
LABEL_346:
  __break(1u);
LABEL_347:
  __break(1u);
}

void OUTLINED_FUNCTION_98_2()
{
  *(v0 + 16) = v1;
  v3 = v0 + 48 * v2;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
}

id OUTLINED_FUNCTION_126_0()
{
  v2 = *(v0 + 768);

  return objc_allocWithZone(v2);
}

uint64_t OUTLINED_FUNCTION_80_0(uint64_t a1)
{

  return sub_2749FD7B4();
}

uint64_t sub_274735454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968820, &unk_274A12BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747354C4(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809688E8, &unk_274A13040);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v32 - v4;
  v42 = type metadata accessor for LibrarySectionOptions(0);
  MEMORY[0x28223BE20](v42);
  v41 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2749F9164();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2749F97C4();
  v9 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ShortcutsLibraryItem.ItemType(0);
  result = MEMORY[0x28223BE20](v11);
  v14 = (&v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = 0;
  v44 = v14;
  v45 = a1;
  v49 = *(a1 + 16);
  v34 = (v7 + 8);
  v35 = (v9 + 32);
  v33 = (v9 + 8);
  v43 = v5;
  v36 = result;
  while (v49 != v15)
  {
    v16 = type metadata accessor for ShortcutsLibraryItem(0);
    v17 = v45 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(*(v16 - 8) + 72) * v15;
    sub_2747310DC(v17, v14);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v29 = *v14;
        v30 = [*v14 id];
        v19 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
        v21 = v31;

        v5 = v43;
        v14 = v44;
        break;
      case 2u:
        v22 = v37;
        v23 = v14;
        v24 = v38;
        (*v35)(v37, v23, v38);
        v25 = v39;
        sub_2749F9794();
        v19 = sub_2749F9114();
        v21 = v26;
        (*v34)(v25, v40);
        v27 = v24;
        v14 = v44;
        (*v33)(v22, v27);
        break;
      case 3u:
        sub_274735A24(v14, v41);
        v19 = sub_2749F9114();
        v21 = v28;
        sub_274731134();
        break;
      default:
        v18 = *v14;
        v47 = [*v14 hash];
        v19 = sub_2749FDC74();
        v21 = v20;

        break;
    }

    sub_2747310DC(v17, v5);
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v16);
    v47 = v19;
    v48 = v21;
    type metadata accessor for ShortcutsLibrarySection(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687E0, &qword_274A12A50);
    result = sub_2749F95E4();
    ++v15;
  }

  return result;
}

uint64_t sub_2747359D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_2();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_274735A24(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_59_0();
  v4(v3);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  return a2;
}

id OUTLINED_FUNCTION_11_4()
{

  return [v0 (v3 + 3668)];
}

uint64_t OUTLINED_FUNCTION_11_6()
{
  *(v3 - 312) = v2;
  *(v3 - 304) = v0;
  return v1;
}

id OUTLINED_FUNCTION_11_11(uint64_t a1)
{

  return [v1 (v2 + 120)];
}

id OUTLINED_FUNCTION_11_13()
{

  return [v0 (v1 + 1016)];
}

double OUTLINED_FUNCTION_11_14@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v14 = *(a9 + 89);
  v13 = *(a9 + 88);
  v12 = *(a9 + 80);
  v11 = *(a9 + 64);

  return sub_274807610(a1, a2, a3, a4, a5, a6, a7, a8, v11, *(&v11 + 1), v12, v13, v14);
}

uint64_t OUTLINED_FUNCTION_11_16()
{

  return swift_task_create();
}

uint64_t OUTLINED_FUNCTION_11_17(uint64_t a1)
{

  return swift_dynamicCastClassUnconditional();
}

uint64_t OUTLINED_FUNCTION_11_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);

  return sub_274860628(v4);
}

uint64_t OUTLINED_FUNCTION_20_4(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_11_25(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11_26()
{

  return _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
}

void OUTLINED_FUNCTION_95_2()
{
  *(v0 - 80) = 65793;
  *(v0 - 72) = 0;
  *(v0 - 64) = 0;
  *(v0 - 56) = 0;
}

void ShortcutsLibrarySection.init(options:items:headerOverride:)()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_2749F9164();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  type metadata accessor for LibrarySectionOptions.SectionType(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v9 = OUTLINED_FUNCTION_80();
  v10 = type metadata accessor for LibrarySectionOptions(v9);
  OUTLINED_FUNCTION_5_10();
  sub_2747310DC(v4 + v11, v0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v21 = *v0;
    v22 = *(v4 + *(v10 + 24));
    if (v22)
    {
      v23 = [v22 name];
      v24 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v26 = v25;
    }

    else
    {
      sub_2749FD624();
      v24 = sub_2749FDC74();
      v26 = v30;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2749F9154();
    v24 = sub_2749F9114();
    v26 = v27;
    v28 = OUTLINED_FUNCTION_94_0();
    v29(v28);
LABEL_8:
    v18 = type metadata accessor for ShortcutsLibrarySection(0);
    v31 = (v6 + *(v18 + 28));
    *v31 = v24;
    v31[1] = v26;
    goto LABEL_9;
  }

  sub_2749F9154();
  v13 = sub_2749F9114();
  v15 = v14;
  v16 = OUTLINED_FUNCTION_94_0();
  v17(v16);
  v18 = type metadata accessor for ShortcutsLibrarySection(0);
  v19 = (v6 + *(v18 + 28));
  *v19 = v13;
  v19[1] = v15;
  sub_2749F9514();
  OUTLINED_FUNCTION_1_2();
  (*(v20 + 8))(v0);
LABEL_9:
  OUTLINED_FUNCTION_2_13();
  v32 = OUTLINED_FUNCTION_125();
  sub_2747310DC(v32, v33);
  type metadata accessor for ShortcutsLibrarySection(0);
  type metadata accessor for ShortcutsLibraryItem(0);
  sub_2749F9594();
  sub_274735454(v2, v6 + *(v18 + 24));
  v34 = OUTLINED_FUNCTION_34_2();
  sub_2747354C4(v34, v35);

  sub_2747359D0(v2, &qword_280968820, &unk_274A12BB0);
  OUTLINED_FUNCTION_4_9();
  sub_274731134();
  OUTLINED_FUNCTION_46();
}

uint64_t OUTLINED_FUNCTION_144_0(void *a1)
{
  *a1 = v1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_144_1(uint64_t a1, uint64_t a2)
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_20_7()
{

  return sub_2747C247C(v0, v1);
}

uint64_t OUTLINED_FUNCTION_20_8(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_20_12()
{
  *(v0 - 256) = 0;

  return sub_2749FA8C4();
}

uint64_t OUTLINED_FUNCTION_20_13()
{

  return sub_2749FCD64();
}

void *OUTLINED_FUNCTION_20_17()
{

  return memcpy((v0 + 408), (v0 + 736), 0xB9uLL);
}

void sub_274736328()
{
  OUTLINED_FUNCTION_49_2();
  v0 = type metadata accessor for ShortcutsLibraryItem.ItemType(0);
  v1 = OUTLINED_FUNCTION_27(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  sub_2747367DC();
  sub_2749FC494();
  sub_2749FC484();

  __asm { FMOV            V0.2D, #22.0 }

  v23[0] = _Q0;
  memset(&v23[1], 0, 32);
  OUTLINED_FUNCTION_86();
  v11 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_0_11();
  v12 = OUTLINED_FUNCTION_66();
  sub_2747310DC(v12, v13);
  v14 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  OUTLINED_FUNCTION_23_5();
  sub_274735A24(v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v14);
  v17 = type metadata accessor for ShortcutChiclet.RunButton.Model(0);
  OUTLINED_FUNCTION_132(v17);
  v18 = OUTLINED_FUNCTION_44();
  ShortcutChiclet.RunButton.Model.init(workflowReference:color:changeColorOnHover:isHidden:symbolName:metrics:action:)(v18, v19, 0, 0, 0xD000000000000010, v20, v21, v22, v15);
  OUTLINED_FUNCTION_50_0();
}

uint64_t sub_2747364C8()
{
  OUTLINED_FUNCTION_49_2();
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_110();
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = (v0 + v2);
  OUTLINED_FUNCTION_125();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:

      goto LABEL_15;
    case 2u:
      sub_2749F97C4();
      OUTLINED_FUNCTION_1_2();
      (*(v4 + 8))(v0 + v2);
      goto LABEL_15;
    case 3u:
      type metadata accessor for LibrarySectionOptions.Header(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
        sub_2749F9514();
        OUTLINED_FUNCTION_1_2();
        (*(v6 + 8))(v0 + v2);
      }

      else
      {
        if (EnumCaseMultiPayload != 1)
        {
          if (EnumCaseMultiPayload)
          {
            goto LABEL_10;
          }
        }
      }

LABEL_10:
      v7 = type metadata accessor for LibrarySectionOptions(0);

      v8 = v7[7];
      type metadata accessor for LibrarySectionOptions.SectionType(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 == 1)
      {
        sub_2749F9514();
        OUTLINED_FUNCTION_1_2();
        (*(v10 + 8))(v3 + v8);
      }

      else if (!v9)
      {
      }

      sub_27472F124(*(v3 + v7[8]), *(v3 + v7[8] + 8));

      v11 = v7[10];
      sub_2749F9164();
      OUTLINED_FUNCTION_1_2();
      (*(v12 + 8))(v3 + v11);
LABEL_15:
      OUTLINED_FUNCTION_50_0();

      return MEMORY[0x2821FE8E8](v13);
    default:
      goto LABEL_15;
  }
}

uint64_t sub_27473670C()
{
  sub_274736328();
  v2 = OUTLINED_FUNCTION_134();
  v3 = type metadata accessor for ShortcutChiclet.Progress(v2);
  OUTLINED_FUNCTION_132(v3);
  v4 = ShortcutChiclet.Progress.init()();
  v5 = *(v1 + 24);
  v6 = objc_allocWithZone(type metadata accessor for PopoverModel(0));
  v7 = v5;
  sub_274736CE4();
  v9 = v8;
  OUTLINED_FUNCTION_86();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = type metadata accessor for NameIconView.Model(0);
  OUTLINED_FUNCTION_132(v11);
  return NameIconView.Model.init(runButtonModel:progress:popoverModel:onStop:)(v0, v4, v9, sub_2747B2680, v10);
}

uint64_t sub_2747367DC()
{
  OUTLINED_FUNCTION_126_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_92_2();
  OUTLINED_FUNCTION_0_11();
  v2 = OUTLINED_FUNCTION_32_1();
  sub_2747310DC(v2, v3);
  OUTLINED_FUNCTION_125();
  if (!swift_getEnumCaseMultiPayload())
  {
    return *v0;
  }

  sub_274731134();
  return 0;
}

id OUTLINED_FUNCTION_112_1(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t ShortcutChiclet.RunButton.Model.init(workflowReference:color:changeColorOnHover:isHidden:symbolName:metrics:action:)(void *a1, uint64_t (*a2)(), char a3, int a4, uint64_t (*a5)(), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = a5;
  v33 = a6;
  v30 = a4;
  v34 = a9;
  v35 = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F6D8, &qword_274A23760);
  OUTLINED_FUNCTION_1_29();
  v16 = v15;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  v19 = &v29 - v18;
  v20 = *(a7 + 32);
  v21 = *(a7 + 40);
  v22 = OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9RunButton5Model__workflowReference;
  v38 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F700, &qword_274A238A8);
  sub_2749FA8C4();
  (*(v16 + 32))(v9 + v22, v19, v10);
  OUTLINED_FUNCTION_15_19(v9 + v22);
  v23 = *(v16 + 8);
  v31 = a1;
  v23(v9 + v22, v10);
  v36 = a1;
  sub_2749FA8C4();
  swift_endAccess();
  OUTLINED_FUNCTION_15_19(v9 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9RunButton5Model__color);
  v36 = a2;

  sub_2749FA8C4();
  swift_endAccess();
  OUTLINED_FUNCTION_15_19(v9 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9RunButton5Model__changeColorOnHover);
  LOBYTE(v36) = a3;
  sub_2749FA8C4();
  swift_endAccess();
  OUTLINED_FUNCTION_15_19(v9 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9RunButton5Model__isHidden);
  LOBYTE(v36) = v30;
  sub_2749FA8C4();
  swift_endAccess();
  OUTLINED_FUNCTION_15_19(v9 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9RunButton5Model__symbolName);
  v36 = v32;
  v37 = v33;
  sub_2749FA8C4();
  swift_endAccess();
  v24 = v9 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9RunButton5Model_metrics;
  v25 = *(a7 + 16);
  *v24 = *a7;
  *(v24 + 16) = v25;
  *(v24 + 32) = v20;
  *(v24 + 40) = v21;
  OUTLINED_FUNCTION_15_19(v9 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet9RunButton5Model__action);
  OUTLINED_FUNCTION_32_2();
  v26 = swift_allocObject();
  v27 = v34;
  *(v26 + 16) = v35;
  *(v26 + 24) = v27;
  v36 = sub_27491222C;
  v37 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FAE0, &qword_274A180F0);
  sub_2749FA8C4();
  swift_endAccess();

  return v9;
}

uint64_t sub_274736B9C()
{

  OUTLINED_FUNCTION_32_2();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t ShortcutChiclet.Progress.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A628, &qword_274A17D58);
  OUTLINED_FUNCTION_43();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  v7 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet8Progress__state;
  v9 = 0;
  v10 = 2;
  sub_2749FA8C4();
  (*(v3 + 32))(v0 + v7, v6, v1);
  return v0;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_274736CE4()
{
  OUTLINED_FUNCTION_48();
  v23 = v3;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968798, &qword_274A12978);
  OUTLINED_FUNCTION_43();
  v5 = v4;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_22();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968788, &qword_274A12920);
  OUTLINED_FUNCTION_43();
  v9 = v8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968778, &qword_274A128C8);
  OUTLINED_FUNCTION_43();
  v15 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_111_0();
  v17 = OBJC_IVAR___WFPopoverModel__iconEditorViewModel;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968888, &qword_274A12F18);
  sub_2749FA8C4();
  (*(v15 + 32))(&v0[v17], v2, v13);
  v18 = OBJC_IVAR___WFPopoverModel__sharingPromptModel;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968890, &qword_274A12F20);
  sub_2749FA8C4();
  (*(v9 + 32))(&v0[v18], v12, v7);
  v19 = OBJC_IVAR___WFPopoverModel__fileActivityModel[0];
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968898, &qword_274A12F28);
  sub_2749FA8C4();
  (*(v5 + 32))(&v0[v19], v1, v22);
  *&v0[OBJC_IVAR___WFPopoverModel_database] = v23;
  v20 = type metadata accessor for PopoverModel(0);
  v24.receiver = v0;
  v24.super_class = v20;
  objc_msgSendSuper2(&v24, sel_init);
  OUTLINED_FUNCTION_46();
}

uint64_t NameIconView.Model.init(runButtonModel:progress:popoverModel:onStop:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_43();
  v13 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  v16 = &v21[-v15 - 8];
  v17 = OBJC_IVAR____TtCV10WorkflowUI12NameIconView5Model__isHovered;
  v21[0] = 0;
  sub_2749FA8C4();
  (*(v13 + 32))(v5 + v17, v16, v11);
  OUTLINED_FUNCTION_10_3(v5 + OBJC_IVAR____TtCV10WorkflowUI12NameIconView5Model__runButtonModel[0], v21);
  v20 = a1;
  type metadata accessor for ShortcutChiclet.RunButton.Model(0);

  sub_2749FA8C4();
  swift_endAccess();
  OUTLINED_FUNCTION_10_3(v5 + OBJC_IVAR____TtCV10WorkflowUI12NameIconView5Model__progress, v21);
  v20 = a2;
  type metadata accessor for ShortcutChiclet.Progress(0);

  sub_2749FA8C4();
  swift_endAccess();
  OUTLINED_FUNCTION_10_3(v5 + OBJC_IVAR____TtCV10WorkflowUI12NameIconView5Model__popoverModel, v21);
  v20 = a3;
  type metadata accessor for PopoverModel(0);
  sub_2749FA8C4();
  swift_endAccess();

  v18 = (v5 + OBJC_IVAR____TtCV10WorkflowUI12NameIconView5Model_onStop);
  *v18 = a4;
  v18[1] = a5;
  return v5;
}

void sub_27473716C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_59_0();
  type metadata accessor for ShortcutsLibraryItem.ItemType(v8);
  OUTLINED_FUNCTION_74();
  if (*(v10 + 84) == a3)
  {

    __swift_storeEnumTagSinglePayload(v4, a2, a2, v9);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }
}

uint64_t sub_274737220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_134();
  type metadata accessor for ShortcutsLibraryItem.ItemType(v6);
  OUTLINED_FUNCTION_74();
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_148(*(v3 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_2747372D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_1();
  sub_2749FA904();

  return v1;
}

uint64_t sub_274737344@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_40_3();
  result = (*(v2 + 392))();
  *a1 = result & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_136_0()
{

  return sub_274729CBC(v0, v1);
}

uint64_t OUTLINED_FUNCTION_136_1(uint64_t a1)
{

  return sub_2749FA904();
}

void sub_2747374C0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_59_0();
  type metadata accessor for LibrarySectionOptions(v8);
  OUTLINED_FUNCTION_74();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687E0, &qword_274A12A50);
    OUTLINED_FUNCTION_74();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968820, &unk_274A12BB0);
      OUTLINED_FUNCTION_74();
      if (*(v17 + 84) != a3)
      {
        *(v4 + a4[7] + 8) = (a2 - 1);
        return;
      }

      v11 = v16;
      v15 = a4[6];
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_274737614(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_59_0();
  type metadata accessor for LibrarySectionOptions(v6);
  OUTLINED_FUNCTION_74();
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687E0, &qword_274A12A50);
    OUTLINED_FUNCTION_74();
    if (*(v12 + 84) == a2)
    {
      v9 = v11;
      v13 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968820, &unk_274A12BB0);
      OUTLINED_FUNCTION_74();
      if (*(v15 + 84) != a2)
      {
        return OUTLINED_FUNCTION_148(*(v3 + a3[7] + 8));
      }

      v9 = v14;
      v13 = a3[6];
    }

    v10 = v3 + v13;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t LibraryLayoutMode.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1684632167;
  }

  else
  {
    return 1953720684;
  }
}

void static LibrarySectionOptions.Header.== infix(_:_:)()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  sub_2749F9514();
  OUTLINED_FUNCTION_43();
  v38 = v6;
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_13_4();
  type metadata accessor for LibrarySectionOptions.Header(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_39();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_54_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_81_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809680D8, &unk_274A10BB0);
  OUTLINED_FUNCTION_34(v13);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_56_2();
  v16 = (v0 + v15);
  sub_274729CBC(v4, v0);
  v17 = OUTLINED_FUNCTION_99();
  sub_274729CBC(v17, v18);
  switch(OUTLINED_FUNCTION_135_0())
  {
    case 1u:
      OUTLINED_FUNCTION_1_7();
      OUTLINED_FUNCTION_136_0();
      v30 = *v1;
      v29 = v1[1];
      OUTLINED_FUNCTION_65_2();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_16;
      }

      if (v30 == *v16 && v29 == v16[1])
      {
        goto LABEL_27;
      }

      goto LABEL_15;
    case 2u:
      OUTLINED_FUNCTION_1_7();
      v23 = OUTLINED_FUNCTION_95_1();
      sub_274729CBC(v23, v24);
      OUTLINED_FUNCTION_65_2();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        OUTLINED_FUNCTION_112_0();
        v25 = OUTLINED_FUNCTION_116_1();
        v26(v25);
        OUTLINED_FUNCTION_63();
        sub_2749F94E4();
        v27 = *(v38 + 8);
        v28 = OUTLINED_FUNCTION_116_1();
        v27(v28);
        (v27)(v10, v39);
        OUTLINED_FUNCTION_19_3();
        goto LABEL_29;
      }

      (*(v38 + 8))(v10, v39);
      goto LABEL_20;
    case 3u:
      OUTLINED_FUNCTION_65_2();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    case 4u:
      OUTLINED_FUNCTION_65_2();
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    case 5u:
      OUTLINED_FUNCTION_65_2();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    default:
      OUTLINED_FUNCTION_1_7();
      sub_274729CBC(v0, v2);
      v20 = *v2;
      v19 = v2[1];
      v22 = v2[2];
      v21 = v2[3];
      OUTLINED_FUNCTION_65_2();
      if (!swift_getEnumCaseMultiPayload())
      {
        v34 = v16[2];
        v33 = v16[3];
        if (v20 == *v16 && v19 == v16[1])
        {
        }

        else
        {
          v36 = sub_2749FDCC4();

          if ((v36 & 1) == 0)
          {

            goto LABEL_39;
          }
        }

        if (v21)
        {
          if (v33)
          {
            if (v22 == v34 && v21 == v33)
            {
LABEL_27:
            }

            else
            {
LABEL_15:
              v32 = OUTLINED_FUNCTION_70_1();
              OUTLINED_FUNCTION_130_0(v32);
            }

            goto LABEL_28;
          }
        }

        else if (!v33)
        {
LABEL_28:
          OUTLINED_FUNCTION_19_3();
          goto LABEL_29;
        }

LABEL_39:

        goto LABEL_28;
      }

LABEL_16:

LABEL_20:
      sub_27478C584(v0, &qword_2809680D8);
LABEL_29:
      OUTLINED_FUNCTION_46();
      return;
  }
}

uint64_t OUTLINED_FUNCTION_61_2()
{
}

id OUTLINED_FUNCTION_61_3(void *a1)
{

  return [a1 (v1 + 3192)];
}

uint64_t OUTLINED_FUNCTION_61_5()
{
  result = *(v0 - 608);
  *(v0 - 288) = *(v0 - 616) + 16;
  return result;
}

uint64_t ShortcutsLibrarySection.id.getter()
{
  type metadata accessor for ShortcutsLibrarySection(0);

  return OUTLINED_FUNCTION_44();
}

uint64_t ShortcutsLibrarySection.items.getter()
{
  type metadata accessor for ShortcutsLibrarySection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687E0, &qword_274A12A50);
  return sub_2749F9534();
}

void ShortcutsLibraryItem.id.getter()
{
  OUTLINED_FUNCTION_48();
  type metadata accessor for LibrarySectionOptions(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_50_1();
  sub_2749F9164();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_51_1();
  v6 = sub_2749F97C4();
  OUTLINED_FUNCTION_43();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v10 = OUTLINED_FUNCTION_80();
  type metadata accessor for ShortcutsLibraryItem.ItemType(v10);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_111_0();
  OUTLINED_FUNCTION_0_11();
  sub_2747310DC(v0, v3);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v17 = *v3;
      v18 = [*v3 id];
      _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      OUTLINED_FUNCTION_84();

      break;
    case 2u:
      v13 = OUTLINED_FUNCTION_118_2();
      v14(v13);
      sub_2749F9794();
      sub_2749F9114();
      OUTLINED_FUNCTION_84();
      v15 = OUTLINED_FUNCTION_63();
      v16(v15);
      (*(v8 + 8))(v2, v6);
      break;
    case 3u:
      OUTLINED_FUNCTION_13_8();
      sub_274735A24(v3, v1);
      sub_2749F9114();
      OUTLINED_FUNCTION_84();
      OUTLINED_FUNCTION_4_9();
      sub_274731134();
      break;
    default:
      v12 = *v3;
      [*v3 hash];
      sub_2749FDC74();
      OUTLINED_FUNCTION_84();

      break;
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_46();
}

uint64_t ShortcutsLibrarySection.header.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968820, &unk_274A12BB0);
  OUTLINED_FUNCTION_34(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_50_1();
  v7 = type metadata accessor for ShortcutsLibrarySection(v6);
  sub_274735454(v1 + *(v7 + 24), v2);
  v8 = type metadata accessor for LibrarySectionOptions.Header(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v8) == 1)
  {
    v9 = OUTLINED_FUNCTION_32_1();
    sub_2747310DC(v9, v10);
    result = __swift_getEnumTagSinglePayload(v2, 1, v8);
    if (result != 1)
    {
      return sub_2747359D0(v2, &qword_280968820, &unk_274A12BB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_60_1();
    return sub_274735A24(v2, a1);
  }

  return result;
}

uint64_t ShortcutsLibrarySection.footer.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LibrarySectionOptions(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ShortcutsLibrarySection.item(for:)()
{
  OUTLINED_FUNCTION_35_0();
  type metadata accessor for ShortcutsLibrarySection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809687E0, &qword_274A12A50);
  OUTLINED_FUNCTION_87_2();
  return sub_2749F95D4();
}

uint64_t OUTLINED_FUNCTION_84_1()
{

  return _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
}

uint64_t EnvironmentValues.libraryMenuDataSource.getter()
{
  sub_2747383FC();

  return sub_2749FB4D4();
}

uint64_t LibraryMenu.init(entry:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for LibraryMenu(0);
  v5 = &a2[v4[6]];
  *v5 = swift_getKeyPath();
  v5[40] = 0;
  v6 = &a2[v4[7]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B600, &unk_274A1A6A0);
  sub_2749FC5B4();
  *v6 = v11;
  *(v6 + 1) = v12;
  v7 = v4[5];
  v8 = sub_2749F9494();
  OUTLINED_FUNCTION_9();
  (*(v9 + 32))(&a2[v7], a1, v8);
  result = __swift_storeEnumTagSinglePayload(&a2[v7], 0, 1, v8);
  *a2 = 0;
  return result;
}

unint64_t sub_2747383FC()
{
  result = qword_28159E650;
  if (!qword_28159E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E650);
  }

  return result;
}

uint64_t sub_274738458(uint64_t (*a1)(void), uint64_t a2)
{
  a1();
  sub_2749FB4D4();
  return v3;
}

uint64_t static EnvironmentValues.LibraryMenuDataSourceKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28159E660 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_28159E660);
  }

  swift_beginAccess();
  return sub_274738558(&xmmword_28159E668, a1, &qword_28096B5F8, &qword_274A1A670);
}

double sub_274738540()
{
  qword_28159E688 = 0;
  result = 0.0;
  xmmword_28159E668 = 0u;
  unk_28159E678 = 0u;
  return result;
}

uint64_t sub_274738558(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  return a2;
}

unint64_t sub_2747385B4()
{
  result = qword_28159E690;
  if (!qword_28159E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E690);
  }

  return result;
}

uint64_t EnvironmentValues.libraryMenuDataSource.setter(uint64_t a1)
{
  sub_274738558(a1, v3, &qword_28096B5F8, &qword_274A1A670);
  sub_2747383FC();
  sub_2749FB4E4();
  return sub_27472ECBC(a1, &qword_28096B5F8, &qword_274A1A670);
}

unint64_t sub_2747386D8()
{
  result = qword_28159E648;
  if (!qword_28159E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E648);
  }

  return result;
}

uint64_t ShortcutChiclet.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v139 = a1;
  v143 = sub_2749FB954();
  OUTLINED_FUNCTION_43();
  v144 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_70(v7 - v6);
  v133 = sub_2749FA3C4();
  OUTLINED_FUNCTION_43();
  v132 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_70(v11 - v10);
  v129 = sub_2749FB5D4();
  OUTLINED_FUNCTION_43();
  v130 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_70(v15 - v14);
  v125 = sub_2749FB944();
  OUTLINED_FUNCTION_43();
  v124 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = OUTLINED_FUNCTION_70(v19 - v18);
  v21 = type metadata accessor for ShortcutChiclet(v20);
  v121 = *(v21 - 8);
  v120 = *(v121 + 64);
  MEMORY[0x28223BE20](v21 - 8);
  OUTLINED_FUNCTION_70(v116 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v117 = sub_2749FBA94();
  OUTLINED_FUNCTION_43();
  v116[0] = v23;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966CB0, &qword_274A17970);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_22();
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5D8, &qword_274A17978);
  OUTLINED_FUNCTION_43();
  v116[1] = v30;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  v33 = v116 - v32;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966CA8, &unk_274A0CB80);
  OUTLINED_FUNCTION_9();
  v35 = MEMORY[0x28223BE20](v34);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_1(v116 - v36);
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966C88, &unk_274A0CB70);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_10_1(v116 - v38);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966C80, &unk_274A17980);
  OUTLINED_FUNCTION_43();
  v134 = v39;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_10_1(v116 - v41);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966CC8, &qword_274A0CB98);
  OUTLINED_FUNCTION_43();
  v136 = v42;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_10_1(v116 - v44);
  *v2 = sub_2749FC914();
  v2[1] = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5E0, &unk_274A17990);
  sub_274822AB0(v1, v2 + *(v46 + 44));
  sub_2749FBA74();
  v47 = sub_27472AB6C(&qword_280966CB8, &qword_280966CB0, &qword_274A17970, MEMORY[0x277CE11A8]);
  sub_2749FC1A4();
  OUTLINED_FUNCTION_40_5();
  v48(v27, v117);
  sub_2747359D0(v2, &qword_280966CB0, &qword_274A17970);
  OUTLINED_FUNCTION_37_7();
  v49 = v119;
  sub_27473B9F0(v1, v119, v50);
  v51 = (*(v121 + 80) + 16) & ~*(v121 + 80);
  v52 = swift_allocObject();
  sub_27473D980(v49, v52 + v51);
  OUTLINED_FUNCTION_68_2();
  v53 = sub_2749FB934();
  v157 = v28;
  v158 = v47;
  OUTLINED_FUNCTION_75_2(v53, MEMORY[0x277CDEAE8]);
  v54 = v118;
  sub_2749FC174();

  OUTLINED_FUNCTION_40_5();
  v55(v49, v125);
  OUTLINED_FUNCTION_40_5();
  v56(v33, v54);
  v125 = v3;
  v57 = *(v3 + 104);
  if (sub_27473B638())
  {
    OUTLINED_FUNCTION_68_2();
    sub_2749FB594();
  }

  else
  {
    v157 = MEMORY[0x277D84F90];
    sub_27473AB0C(&unk_28159E630, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A468, &qword_274A17280);
    sub_27472AB6C(&qword_28159E538, &qword_28096A468, &qword_274A17280, MEMORY[0x277D83970]);
    OUTLINED_FUNCTION_68_2();
    sub_2749FD7B4();
  }

  v58 = v126;
  sub_2749FAE84();
  OUTLINED_FUNCTION_40_5();
  v59 = OUTLINED_FUNCTION_66();
  v60(v59);
  v61 = OUTLINED_FUNCTION_44();
  sub_2747359D0(v61, v62, &unk_274A0CB80);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v63 = v157;
  v64 = v140;
  v65 = v127;
  v66 = (v127 + *(v140 + 36));
  v67 = *(sub_2749FAFC4() + 20);
  v68 = *MEMORY[0x277CE0118];
  sub_2749FB584();
  OUTLINED_FUNCTION_9();
  (*(v69 + 104))(&v66[v67], v68);
  *v66 = v63;
  *(v66 + 1) = v63;
  v66[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966CC0, &qword_274A0CB90) + 36)] = 0;
  sub_2747D31F8(v58, v65, &qword_280966CA8, &unk_274A0CB80);
  OUTLINED_FUNCTION_68_2();
  (*(v70 + 104))(v131);
  sub_2749FA3B4();
  v71 = OUTLINED_FUNCTION_32();
  v73 = v72(v71);
  MEMORY[0x28223BE20](v73);
  v74 = v125;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966C90, &qword_274A179F0);
  v75 = sub_2747547B8();
  v157 = v64;
  v158 = v75;
  OUTLINED_FUNCTION_41_9();
  v124 = OUTLINED_FUNCTION_75_2(v76, v77);
  sub_2749FBF34();
  sub_2747359D0(v65, &qword_280966C88, &unk_274A0CB70);
  v133 = *(v74 + 96);
  v132 = type metadata accessor for ShortcutChiclet.Model(0);
  OUTLINED_FUNCTION_6_16();
  sub_27473AB0C(v78, v79, &protocol conformance descriptor for ShortcutChiclet.Model);
  sub_2749FAD94();
  swift_getKeyPath();
  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_68();
  sub_2749FADA4();

  v128 = v57;
  v80 = v154;
  v81 = v155;
  v82 = v156;
  swift_getKeyPath();
  v151 = v80;
  v152 = v81;
  v153 = v82;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5E8, &qword_274A17A48);
  sub_2749FC6D4();

  v83 = v148;
  v84 = v149;
  v85 = v150;
  v122 = v150;

  v86 = sub_2749FC604();
  v87 = v138;
  *v138 = v86;
  LODWORD(v130) = *MEMORY[0x277CDE248];
  v88 = v144;
  v129 = *(v144 + 104);
  v89 = v143;
  v129(v87);
  v145 = v83;
  v146 = v84;
  v147 = v85;
  type metadata accessor for SharingPromptModel(0);
  OUTLINED_FUNCTION_74_2();
  *(v91 - 256) = v90;
  v157 = v140;
  v158 = v126;
  v159 = v75;
  v160 = v124;
  OUTLINED_FUNCTION_40_8();
  v125 = OUTLINED_FUNCTION_75_2(v92, v93);
  OUTLINED_FUNCTION_39_7();
  v126 = sub_27473AB0C(v94, v95, &protocol conformance descriptor for SharingPromptModel);
  v127 = sub_27473E450();
  OUTLINED_FUNCTION_67_3();
  v96 = v135;
  v97 = v141;
  sub_2749FC024();
  v98 = *(v88 + 8);
  v144 = v88 + 8;
  v140 = v98;
  v98(v87, v89);
  OUTLINED_FUNCTION_40_5();
  v99(v97, v96);

  sub_2749FAD94();
  swift_getKeyPath();
  OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_68();
  sub_2749FADA4();

  v100 = v154;
  v101 = v155;
  v102 = v156;
  swift_getKeyPath();
  v151 = v100;
  v152 = v101;
  v153 = v102;
  sub_2749FC6D4();

  v103 = v148;
  v104 = v149;
  v105 = v150;

  *v87 = sub_2749FC604();
  v106 = v143;
  (v129)(v87, v130, v143);
  v145 = v103;
  v146 = v104;
  v147 = v105;
  type metadata accessor for FileActivityModel(0);
  OUTLINED_FUNCTION_74_2();
  v108 = *(v107 - 256);
  v157 = v96;
  v158 = v108;
  v159 = &type metadata for WorkflowSharingPrompt;
  v160 = v125;
  v161 = v126;
  v162 = v127;
  OUTLINED_FUNCTION_75_2(v109, &unk_274A3ADA8);
  OUTLINED_FUNCTION_38_7();
  sub_27473AB0C(v110, v111, &protocol conformance descriptor for FileActivityModel);
  sub_27473E670();
  OUTLINED_FUNCTION_67_3();
  v112 = v137;
  v113 = v142;
  sub_2749FC024();
  (v140)(v87, v106);
  OUTLINED_FUNCTION_40_5();
  v114(v113, v112);
}

uint64_t sub_274739658()
{
  if (OUTLINED_FUNCTION_14_0())
  {
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }

  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_2747396C0()
{
  if (OUTLINED_FUNCTION_14_0())
  {
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
  }

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274739750()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_2747398D8();
  *v0 = result;
  return result;
}

void sub_27473978C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_53_1(uint64_t a1, uint64_t a2)
{

  return sub_2749FCE24();
}

uint64_t OUTLINED_FUNCTION_53_2(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v6 = *(v4 - 296);

  return sub_274723238(v3, v6, a3);
}

uint64_t OUTLINED_FUNCTION_53_3()
{

  return sub_2749FD324();
}

uint64_t OUTLINED_FUNCTION_53_5()
{
  *(v5 + 16) = v0;

  return sub_2748605C4(v2, v5 + v4 + v3 * v1);
}

void *OUTLINED_FUNCTION_53_8(void *a1)
{

  return memcpy(a1, (v1 + 2432), 0xB9uLL);
}

uint64_t sub_2747398D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_68();
  sub_2749FA904();

  return v1;
}

void sub_274739948(uint64_t a1)
{
  sub_27473978C(319, &qword_28159E540, &qword_280968830, &qword_274A12BC8, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_274739AA8(319);
    if (v2 <= 0x3F)
    {
      sub_27473978C(319, &qword_28159E728, &qword_28096B5F8, &qword_274A1A670, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_27473978C(319, &unk_28159E590, &qword_28096B600, &unk_274A1A6A0, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_274739A80()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_274739B88();
  *v0 = result;
  return result;
}

void sub_274739AA8(uint64_t a1)
{
  if (!qword_28159E818)
  {
    sub_2749F9494();
    v1 = sub_2749FD6C4();
    if (!v2)
    {
      atomic_store(v1, &qword_28159E818);
    }
  }
}

uint64_t sub_274739B00(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  sub_2749FA904();

  return v3;
}

uint64_t sub_274739B9C()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_274739B88();
  *v0 = result;
  return result;
}

void sub_274739BC8(uint64_t a1)
{
  sub_274739CBC();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_274739C90()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_274739C7C();
  *v0 = result;
  return result;
}

void sub_274739CBC()
{
  if (!qword_28159E7D8)
  {
    v0 = sub_2749FA924();
    if (!v1)
    {
      atomic_store(v0, &qword_28159E7D8);
    }
  }
}

uint64_t sub_274739D0C()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_274739C7C();
  *v0 = result;
  return result;
}

uint64_t sub_274739D58@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ShortcutChiclet.Model(0);
  result = sub_2749FA874();
  *a2 = result;
  return result;
}

uint64_t sub_274739DB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 6;
    }
  }

  return result;
}

double static ShortcutChiclet.Model.Metrics.default.getter@<D0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_274A17800;
  a1[1] = xmmword_274A17810;
  result = 11.0;
  __asm { FMOV            V1.2D, #22.0 }

  a1[2] = xmmword_274A17820;
  a1[3] = _Q1;
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

void sub_274739E44(uint64_t a1)
{
  sub_27472CC40(319, &qword_28159E7C8, &type metadata for ShortcutChiclet.Model.Metrics, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_27472CC40(319, &qword_28159E750, MEMORY[0x277D839B0], MEMORY[0x277CBCED0]);
    if (v2 <= 0x3F)
    {
      sub_27473A098(319, &qword_28159E7D0, &qword_28096A620, &qword_274A17D08, MEMORY[0x277CBCED0]);
      if (v3 <= 0x3F)
      {
        sub_27473A13C(319, &qword_28159E7E0, type metadata accessor for PopoverModel, MEMORY[0x277CBCED0]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_27473A03C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483641);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_27473A098(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_27473A0FC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ShortcutChiclet.Progress(0);
  result = sub_2749FA874();
  *a2 = result;
  return result;
}

void sub_27473A13C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t ShortcutChiclet.Model.init(metrics:isSelected:isHovered:isEditing:isGallery:isGalleryDetail:isAddedToLibrary:isDownloading:buttonType:buttonAction:)(__int128 *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v61 = a8;
  v60 = a7;
  v59 = a6;
  v58 = a5;
  v55 = a4;
  v54 = a3;
  v53 = a2;
  v57 = a11;
  v56 = a10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A610, &qword_274A17CF8);
  OUTLINED_FUNCTION_43();
  v50 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A600, &qword_274A17CC8);
  OUTLINED_FUNCTION_43();
  v19 = v18;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  v22 = &v49 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_43();
  v24 = v23;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  v26 = a1[1];
  v67 = *a1;
  v68 = v26;
  v27 = a1[3];
  v69 = a1[2];
  v70 = v27;
  v52 = *a9;
  LOBYTE(v62) = 0;
  sub_2749FA8C4();
  v28 = *(v24 + 32);
  v29 = OUTLINED_FUNCTION_16_9();
  v28(v29);
  OUTLINED_FUNCTION_20_12();
  v30 = OUTLINED_FUNCTION_16_9();
  v28(v30);
  OUTLINED_FUNCTION_20_12();
  v31 = OUTLINED_FUNCTION_16_9();
  v28(v31);
  OUTLINED_FUNCTION_20_12();
  v32 = OUTLINED_FUNCTION_16_9();
  v28(v32);
  OUTLINED_FUNCTION_20_12();
  v33 = OUTLINED_FUNCTION_16_9();
  v28(v33);
  OUTLINED_FUNCTION_20_12();
  v34 = OUTLINED_FUNCTION_16_9();
  v28(v34);
  OUTLINED_FUNCTION_20_12();
  v35 = OUTLINED_FUNCTION_16_9();
  v28(v35);
  v36 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__buttonType;
  *&v62 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A620, &qword_274A17D08);
  sub_2749FA8C4();
  (*(v19 + 32))(v12 + v36, v22, v49);
  v37 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__popoverModel;
  v38 = objc_allocWithZone(type metadata accessor for PopoverModel(0));
  sub_274736CE4();
  *&v62 = v39;
  sub_2749FA8C4();
  (*(v50 + 32))(v12 + v37, v17, v51);
  v40 = (v12 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model_buttonAction);
  *v40 = 0;
  v40[1] = 0;
  OUTLINED_FUNCTION_10_3(v12 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__metrics, v66);
  v62 = v67;
  v63 = v68;
  v64 = v69;
  v65 = v70;
  sub_2749FA8C4();
  swift_endAccess();
  sub_27473A698(v53);
  sub_27473A738(v54);
  sub_27473A844(v55);
  swift_beginAccess();
  v41 = *v40;
  v42 = v40[1];
  v43 = v57;
  *v40 = v56;
  v40[1] = v43;
  v44 = OUTLINED_FUNCTION_66();
  sub_27473A658(v44, v45);
  sub_27471F8A4(v41, v42);
  sub_27473A8E0(v58);
  sub_27473A92C(v59);
  sub_27473A958(v60);
  sub_27473A9B8(v61);
  v66[0] = v52;
  sub_27473AA60(v66);
  v46 = OUTLINED_FUNCTION_66();
  sub_27471F8A4(v46, v47);
  return v12;
}

uint64_t sub_27473A658(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_27473A6AC(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

unint64_t sub_27473A74C()
{
  result = qword_28096A750;
  if (!qword_28096A750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096B0A0, &qword_274A18650);
    sub_27473AB0C(&qword_28159E800, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
    sub_27472AB6C(&qword_28096A758, &qword_28096A760, &qword_274A18660, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A750);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_27473A8F4()
{
  v1 = [v0 icon];

  return v1;
}

uint64_t sub_27473A96C()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_274828564();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t WFWorkflowIcon.iconDisplayMode.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = [objc_opt_self() whiteColor];
  *(a1 + 8) = 0;
  v2 = *MEMORY[0x277D7D6C0];
  sub_2749FA2F4();
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_27473AA60(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v1;

  return OUTLINED_FUNCTION_54_5(&v3);
}

uint64_t sub_27473AAC4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27473AB0C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_27473ACF4()
{
  result = qword_28096A710;
  if (!qword_28096A710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A6B8, &qword_274A18530);
    sub_27482B3C0();
    sub_27472AB6C(&qword_28096A708, &qword_28096A6C8, &qword_274A18540, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A710);
  }

  return result;
}

uint64_t sub_27473ADB8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_47(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9();
  v5 = OUTLINED_FUNCTION_44();
  v6(v5);
  return v4;
}

__n128 ShortcutChiclet.Model.Metrics.init(cornerRadius:insets:icon:button:)@<Q0>(__n128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>)
{
  v8 = *a2;
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  *(a3 + 32) = a8;
  result = *a1;
  *(a3 + 40) = *a1;
  *(a3 + 56) = v8;
  return result;
}

unint64_t sub_27473AE24()
{
  result = qword_28096A7B8;
  if (!qword_28096A7B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A7A8, &qword_274A186E8);
    sub_27482B9DC();
    sub_27473C764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A7B8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_27473AEE0()
{
  OUTLINED_FUNCTION_48();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v11 = v10;
  v12 = sub_2749FB4C4();
  OUTLINED_FUNCTION_43();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_91_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v6);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_64_1();
  sub_2747B97A0(v9, v2, v8, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4(0);
    OUTLINED_FUNCTION_9();
    (*(v17 + 32))(v11, v2);
  }

  else
  {
    v18 = sub_2749FD2D4();
    v19 = sub_2749FBC14();
    OUTLINED_FUNCTION_17_4(v18, &dword_274719000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_2749FB4B4();
    OUTLINED_FUNCTION_66_2();
    swift_getAtKeyPath();

    (*(v14 + 8))(v1, v12);
  }

  OUTLINED_FUNCTION_46();
}

unint64_t sub_27473B094()
{
  result = qword_28096A740;
  if (!qword_28096A740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A748, &qword_274A18658);
    sub_27473AB0C(&qword_28159E800, MEMORY[0x277D7D6E0], MEMORY[0x277D7D6D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A740);
  }

  return result;
}

uint64_t sub_27473B150()
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(KeyPath);
}

uint64_t static ShortcutChiclet.Model.Metrics.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[6];
  v2 = a2[7];
  v5 = a1[6];
  v4 = a1[7];
  v6 = a2[5];
  v7 = a1[5];
  v8 = sub_2749FA9D4() & (v7 == v6);
  if (v5 != v3)
  {
    v8 = 0;
  }

  if (v4 == v2)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t OUTLINED_FUNCTION_46_1(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return sub_27472AFE4();
}

id OUTLINED_FUNCTION_46_5()
{

  return [v0 (v1 + 3832)];
}

uint64_t OUTLINED_FUNCTION_46_7(uint64_t a1)
{

  return sub_2749F9014();
}

id OUTLINED_FUNCTION_46_10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_27477C094(a1, a2, a3, a4, a5, a6, 0);
}

unint64_t sub_27473B378()
{
  result = qword_28096A6D8;
  if (!qword_28096A6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A6E0, &qword_274A18548);
    sub_27473B49C();
    sub_27472AB6C(&qword_28159E5A8, &unk_28096D970, &qword_274A18560, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A6D8);
  }

  return result;
}

uint64_t sub_27473B430(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_54_5(v4);
}

unint64_t sub_27473B49C()
{
  result = qword_28096A6E8;
  if (!qword_28096A6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A6F0, &qword_274A18550);
    sub_27472AB6C(&qword_28096A6F8, &qword_28096A700, &qword_274A18558, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A6E8);
  }

  return result;
}

id WFWorkflowIcon.backgroundGradient.getter()
{
  v1 = [v0 backgroundColor];
  v2 = [v1 gradient];

  return v2;
}

uint64_t sub_27473B5D8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model_buttonAction);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_27471F8A4(v6, v7);
}

uint64_t sub_27473B64C()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_27473B638();
  return OUTLINED_FUNCTION_20(v0);
}

void sub_27473B698(uint64_t a1)
{
  sub_27473B994();
  if (v1 <= 0x3F)
  {
    sub_27471CF08(319, &qword_280968670, 0x277D79E20);
    if (v2 <= 0x3F)
    {
      sub_27472CC40(319, &qword_28096D810, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_27473BA9C(319);
        if (v4 <= 0x3F)
        {
          sub_27473C440(319);
          if (v5 <= 0x3F)
          {
            sub_27473C4D4(319);
            if (v6 <= 0x3F)
            {
              sub_27472CC40(319, &qword_2809695F0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                sub_27473A13C(319, &qword_280968A60, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
                if (v8 <= 0x3F)
                {
                  sub_27473A13C(319, &qword_2809695D8, MEMORY[0x277CE0228], MEMORY[0x277CDF468]);
                  if (v9 <= 0x3F)
                  {
                    sub_27472CC40(319, &qword_28096D840, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
                    if (v10 <= 0x3F)
                    {
                      sub_27473A098(319, &qword_280967D18, &unk_28096FAE0, &qword_274A180F0, MEMORY[0x277D83D88]);
                      if (v11 <= 0x3F)
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
    }
  }
}

uint64_t sub_27473B92C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32();
  sub_2749FA904();

  return v3;
}

unint64_t sub_27473B994()
{
  result = qword_28096A668;
  if (!qword_28096A668)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28096A668);
  }

  return result;
}

uint64_t sub_27473B9F0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

uint64_t sub_27473BA4C()
{
  v1 = OUTLINED_FUNCTION_134();
  v2(v1);
  OUTLINED_FUNCTION_1_2();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_27473BA9C(uint64_t a1)
{
  if (!qword_28096A670)
  {
    sub_27471CF08(255, &qword_28159E4A8, 0x277D7CAA8);
    v1 = sub_2749FD6C4();
    if (!v2)
    {
      atomic_store(v1, &qword_28096A670);
    }
  }
}

uint64_t sub_27473BB04@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v75 = a3;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A868, &qword_274A18778);
  MEMORY[0x28223BE20](v73);
  v74 = &v56 - v4;
  v59 = sub_2749FC404();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A7C0, &qword_274A186F0);
  MEMORY[0x28223BE20](v72);
  v60 = &v56 - v6;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A870, &qword_274A18780);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v56 - v7;
  v8 = sub_2749FAFC4();
  MEMORY[0x28223BE20](v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A7E0, &qword_274A18710);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A7D8, &qword_274A18708);
  MEMORY[0x28223BE20](v64);
  v16 = &v56 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A7D0, &qword_274A18700);
  MEMORY[0x28223BE20](v70);
  v71 = &v56 - v17;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v18 = v76;
  v68 = v8;
  v19 = *(v8 + 20);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_2749FB584();
  v22 = *(v21 - 8);
  v23 = *(v22 + 104);
  v63 = v20;
  v62 = v23;
  v61 = v22 + 104;
  v23(&v10[v19], v20, v21);
  *v10 = v18;
  *(v10 + 1) = v18;
  v24 = sub_2749FC3F4();
  sub_27473B638();
  sub_2749FAB34();
  v25 = MEMORY[0x277CDFC08];
  sub_27473B9F0(v10, v14, MEMORY[0x277CDFC08]);
  v26 = *&v77 * 0.5;
  v27 = &v14[*(v12 + 76)];
  sub_27473B9F0(v10, v27, v25);
  *(v27 + *(sub_2749FAFB4() + 20)) = v26;
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A878, &qword_274A18788) + 36);
  v29 = v78;
  *v28 = v77;
  *(v28 + 16) = v29;
  *(v28 + 32) = v79;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A880, &qword_274A18790);
  *(v27 + *(v30 + 52)) = v24;
  *(v27 + *(v30 + 56)) = 256;
  v31 = sub_2749FC914();
  v33 = v32;
  sub_27473BA4C();
  v34 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A888, &qword_274A18798) + 36));
  *v34 = v31;
  v34[1] = v33;
  if (sub_27473B638() & 1) != 0 || (sub_274821184())
  {
    v35 = a1[5];
    v36 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v35);
    v37 = (*(v36 + 32))(v35, v36);
    v38 = sub_274826264();
  }

  else
  {
    v39 = a1[5];
    v40 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v39);
    v38 = (*(v40 + 32))(v39, v40);
  }

  sub_27473C710();
  v41 = v65;
  sub_2749FC5A4();

  v42 = sub_2749FC914();
  v44 = v43;
  v45 = &v16[*(v64 + 36)];
  (*(v66 + 32))(v45, v41, v67);
  v46 = &v45[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A7E8, &qword_274A18718) + 36)];
  *v46 = v42;
  v46[1] = v44;
  sub_2747D31F8(v14, v16, &qword_28096A7E0, &qword_274A18710);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v47 = v76;
  v48 = v71;
  v49 = &v71[*(v70 + 36)];
  v62(&v49[*(v68 + 20)], v63, v21);
  *v49 = v47;
  *(v49 + 1) = v47;
  *&v49[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969C20, &qword_274A15F60) + 36)] = 256;
  sub_2747D31F8(v16, v48, &qword_28096A7D8, &qword_274A18708);
  if (sub_2748212CC())
  {
    (*(v58 + 104))(v57, *MEMORY[0x277CE0EE0], v59);
    v50 = sub_2749FC4B4();
    v51 = v60;
    sub_27473ADB8(v48, v60, &qword_28096A7D0, &qword_274A18700);
    *(v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A7C8, &qword_274A186F8) + 36)) = v50;
    v52 = *(v72 + 36);
    v53 = *MEMORY[0x277CE13B8];
    v54 = sub_2749FC994();
    (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
    sub_27473ADB8(v51, v74, &qword_28096A7C0, &qword_274A186F0);
    swift_storeEnumTagMultiPayload();
    sub_27482B9DC();
    sub_27473C764();
    sub_2749FB7B4();
    sub_2747359D0(v51, &qword_28096A7C0, &qword_274A186F0);
  }

  else
  {
    sub_27473ADB8(v48, v74, &qword_28096A7D0, &qword_274A18700);
    swift_storeEnumTagMultiPayload();
    sub_27482B9DC();
    sub_27473C764();
    sub_2749FB7B4();
  }

  return sub_2747359D0(v48, &qword_28096A7D0, &qword_274A18700);
}

void sub_27473C440(uint64_t a1)
{
  if (!qword_28096A678)
  {
    type metadata accessor for ShortcutChiclet.Model(255);
    sub_27473AB0C(&qword_2815A0440, type metadata accessor for ShortcutChiclet.Model, &protocol conformance descriptor for ShortcutChiclet.Model);
    v1 = sub_2749FADB4();
    if (!v2)
    {
      atomic_store(v1, &qword_28096A678);
    }
  }
}

void sub_27473C4D4(uint64_t a1)
{
  if (!qword_28096A680)
  {
    type metadata accessor for ShortcutChiclet.Progress(255);
    sub_27473AB0C(&qword_2815A0130, type metadata accessor for ShortcutChiclet.Progress, &protocol conformance descriptor for ShortcutChiclet.Progress);
    v1 = sub_2749FADB4();
    if (!v2)
    {
      atomic_store(v1, &qword_28096A680);
    }
  }
}

unint64_t sub_27473C568()
{
  result = qword_28159E6B0;
  if (!qword_28159E6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A7C8, &qword_274A186F8);
    sub_27473C764();
    sub_27472AB6C(&qword_28159E5D0, &qword_28096A7F0, &qword_274A1D200, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E6B0);
  }

  return result;
}

void sub_27473C640()
{
  OUTLINED_FUNCTION_64_2();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0, &unk_274A17150) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 60);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969588, &qword_274A14F80);
      v8 = *(v5 + 64);
    }

    v9 = OUTLINED_FUNCTION_51(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

unint64_t sub_27473C710()
{
  result = qword_28159E588;
  if (!qword_28159E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E588);
  }

  return result;
}

unint64_t sub_27473C764()
{
  result = qword_28159E6C8;
  if (!qword_28159E6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A7D0, &qword_274A18700);
    sub_27473C8B4();
    sub_27472AB6C(&qword_28159E720, &qword_280969C20, &qword_274A15F60, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E6C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_51_4()
{
}

id OUTLINED_FUNCTION_51_5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27477C094(a1, a2, a3, a4, a5, v5, 0);
}

unint64_t sub_27473C8B4()
{
  result = qword_28159E6F8;
  if (!qword_28159E6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A7D8, &qword_274A18708);
    sub_27472AB6C(&qword_28159E5F0, &qword_28096A7E0, &qword_274A18710, MEMORY[0x277CE0458]);
    sub_27472AB6C(&qword_28159E628, &qword_28096A7E8, &qword_274A18718, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E6F8);
  }

  return result;
}

uint64_t sub_27473C9AC()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_27473C998();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t OUTLINED_FUNCTION_32_4(uint64_t a1)
{

  return sub_2749626F8(a1, 1);
}

uint64_t OUTLINED_FUNCTION_32_5(uint64_t a1, void (*a2)(void))
{
  v4 = *(v2 + 200);

  return sub_2747E2D5C(v4, a2);
}

uint64_t OUTLINED_FUNCTION_32_7(uint64_t a1)
{

  return sub_2749FDCC4();
}

uint64_t OUTLINED_FUNCTION_32_9@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = *(a3 + 72);
  *(v5 + 200) = v7;

  return sub_2748605C4(a1, a2 + ((v3 + 32) & ~v3) + v7 * v4);
}

uint64_t OUTLINED_FUNCTION_32_10@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_32_11()
{
}

unint64_t OUTLINED_FUNCTION_32_12()
{

  return sub_274797CC0(v1, v0);
}

uint64_t OUTLINED_FUNCTION_32_15(uint64_t a1, uint64_t a2)
{

  return sub_2749FDB94();
}

void OUTLINED_FUNCTION_43_1()
{
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
  *(v2 - 128) = MEMORY[0x277D85DD0];
}

uint64_t OUTLINED_FUNCTION_43_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 192) = a4;
  result = *(v5 + 160);
  *(a4 + 16) = v4;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return __swift_storeEnumTagSinglePayload(v4, 1, 1, a4);
}

uint64_t OUTLINED_FUNCTION_43_7(uint64_t a1)
{
}

uint64_t sub_27473CC30@<X0>(uint64_t *a1@<X8>)
{
  if (sub_27473CDB4() && (result = type metadata accessor for ShortcutChiclet(0), *(v1 + *(result + 80))))
  {
    v4 = 1;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2749FA904();

    v4 = v6;
    if (v6 != 7)
    {
      type metadata accessor for ShortcutChiclet(0);
      OUTLINED_FUNCTION_56_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
      result = sub_2749FC5C4();
      if (v5 != 1)
      {
        goto LABEL_18;
      }

      sub_27482B9C4(v6);
    }

    result = sub_27473CE90();
    if (result)
    {
      v4 = 5;
    }

    else if (sub_27473CF60())
    {
      result = sub_274828564();
      if (result)
      {
        v4 = 4;
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      result = sub_27473D0A8();
      if (result)
      {
        v4 = 0;
      }

      else
      {
        type metadata accessor for ShortcutChiclet(0);
        OUTLINED_FUNCTION_56_5();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
        result = sub_2749FC5C4();
        if (v5)
        {
          v4 = 6;
        }

        else
        {
          v4 = 0;
        }
      }
    }
  }

LABEL_18:
  *a1 = v4;
  return result;
}

BOOL sub_27473CDB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_68();
  sub_2749FA904();

  return !v2 || v2 == 2 && v1 == 1;
}

id WFWorkflowIcon.foregroundColor.getter()
{
  v0 = [objc_opt_self() whiteColor];

  return v0;
}

uint64_t sub_27473CEA4()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_27473CE90();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_27473CEF0(void *a1)
{
  v2 = [a1 associatedAppBundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v3;
}

uint64_t sub_27473CF74()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_27473CF60();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_27473CFD4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_148(*(a1 + 8));
  }

  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0, &unk_274A17150) - 8) + 84) == a2)
  {
    v5 = *(a3 + 60);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969588, &qword_274A14F80);
    v5 = *(a3 + 64);
  }

  v6 = OUTLINED_FUNCTION_51(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

uint64_t sub_27473D0BC()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_27473D0A8();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_27473D108@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ShortcutChiclet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v22 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27473D5C0(v22);
  sub_2749FA904();

  v9 = v21;
  v10 = sub_27473D5F4();
  LOBYTE(a1) = sub_27473B638();
  sub_27473D654(v3, &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_27473D980(&v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  _s14descr28838E601O10EditButtonV5ModelCMa(0);
  swift_allocObject();
  sub_27473DA30(&v22, v10 & 1, a1 & 1, sub_274832700, v12, 0.0, 0.0, 0.0, 0.0, v9);
  sub_27473DB70(&qword_2815A0858, _s14descr28838E601O10EditButtonV5ModelCMa, &unk_274A18E44);
  v13 = sub_2749FAD84();
  v15 = v14;
  LOBYTE(v22) = 0;
  result = sub_2749FC5B4();
  v17 = v19[8];
  v18 = v20;
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17;
  *(a2 + 24) = v18;
  return result;
}

uint64_t sub_27473D354()
{
  v1 = type metadata accessor for ShortcutChiclet(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));

  sub_2747F2F1C(*(v2 + 128), *(v2 + 136));
  sub_2747F2F1C(*(v2 + 144), *(v2 + 152));
  v3 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v1[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60, &qword_274A13620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FB614();
    OUTLINED_FUNCTION_9();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  if (*(v2 + v1[19]))
  {
  }

  if (*(v2 + v1[20]))
  {
  }

  if (*(v2 + v1[21]))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

unint64_t sub_27473D5C0(unint64_t result)
{
  if (result >= 7)
  {
  }

  return result;
}

uint64_t sub_27473D608()
{
  OUTLINED_FUNCTION_44_0();
  v0 = sub_27473D5F4();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_27473D654(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutChiclet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27473D6B8(char a1, double a2)
{
  sub_2749FA4E4();
  OUTLINED_FUNCTION_1_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  if (a1)
  {
    v5 = a2;
    v6 = 1;
  }

  else if (a2 == -1.0)
  {
    v5 = 0.0;
    v6 = 2;
  }

  else if (a2 == 1.0)
  {
    v6 = 2;
    *&v5 = 1;
  }

  else
  {
    if (sub_274829CCC() > a2)
    {
      sub_2749FA3D4();

      v7 = sub_2749FA4D4();
      v8 = sub_2749FD2C4();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 134218240;
        *(v9 + 4) = a2;
        *(v9 + 12) = 2048;
        *(v9 + 14) = sub_274829CCC();
        _os_log_impl(&dword_274719000, v7, v8, "Incoming value %f is less than current value %f", v9, 0x16u);
        OUTLINED_FUNCTION_31();
      }

      v10 = OUTLINED_FUNCTION_66();
      v11(v10);
    }

    v12 = sub_274829CCC();
    v6 = 0;
    if (v12 <= a2)
    {
      v12 = a2;
    }

    v5 = v12;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_44();
  sub_2749FA904();

  if (!v6)
  {
    if (!v17 && v5 == v16)
    {
      return result;
    }

    goto LABEL_34;
  }

  if (v6 != 1)
  {
    if (v5 != 0.0)
    {
      if (v17 != 2 || *&v16 != 1)
      {
        goto LABEL_34;
      }

      return result;
    }

    if (v17 == 2 && v16 == 0.0)
    {
      return result;
    }

LABEL_34:
    v16 = v5;
    v17 = v6;
    return sub_2748298C8(&v16);
  }

  if (v17 != 1 || v5 != v16)
  {
    goto LABEL_34;
  }

  return result;
}

id LibrarySectionOptions.workflowCreationBehavior.getter()
{
  v0 = OUTLINED_FUNCTION_69_0();
  v1 = type metadata accessor for LibrarySectionOptions(v0);
  v2 = OUTLINED_FUNCTION_91_0(*(v1 + 32));

  return sub_27472EEFC(v2, v3);
}

uint64_t sub_27473D980(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutChiclet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s14descr28838E601O10EditButtonV5ModelCMa(uint64_t a1)
{
  result = qword_2815A0848;
  if (!qword_2815A0848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27473DA30(void *a1, char a2, char a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10)
{
  *(v10 + 16) = *a1;
  *(v10 + 24) = a6;
  *(v10 + 32) = a7;
  *(v10 + 40) = a8;
  *(v10 + 48) = a9;
  OUTLINED_FUNCTION_1_30(a1);
  sub_2749FA8C4();
  v15 = swift_endAccess();
  OUTLINED_FUNCTION_1_30(v15, *&a10);
  LOBYTE(v19) = a2;
  sub_2749FA8C4();
  v16 = swift_endAccess();
  OUTLINED_FUNCTION_1_30(v16, v19);
  sub_2749FA8C4();
  swift_endAccess();
  v17 = (v10 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet10EditButton5Model_action);
  *v17 = a4;
  v17[1] = a5;
  return v10;
}

uint64_t sub_27473DB28(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27473DB70(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27473DBB8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_27473DC08(unint64_t result)
{
  if (result >= 7)
  {
  }

  return result;
}

unint64_t sub_27473DC18()
{
  result = qword_2815A06D0;
  if (!qword_2815A06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A06D0);
  }

  return result;
}

unint64_t sub_27473DC6C()
{
  result = qword_28159E6D0;
  if (!qword_28159E6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280966D38, &qword_274A0CBD8);
    sub_27473F11C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E6D0);
  }

  return result;
}

unint64_t sub_27473DD00()
{
  result = qword_28159E610;
  if (!qword_28159E610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A840, &qword_274A18768);
    sub_27473F2DC();
    sub_27473F330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E610);
  }

  return result;
}

unint64_t sub_27473DDB4()
{
  result = qword_28159E620;
  if (!qword_28159E620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A838, &qword_274A18760);
    sub_27473DC18();
    sub_27473DC6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E620);
  }

  return result;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_2815A0D38 == -1)
  {
    if (qword_2815A0D40)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_2815A0D40)
    {
      return _availability_version_check();
    }
  }

  if (qword_2815A0D30 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_2815A0D24 > a3)
      {
        return 1;
      }

      if (dword_2815A0D24 >= a3)
      {
        return dword_2815A0D28 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

unint64_t sub_27473DFDC()
{
  result = qword_28159E600;
  if (!qword_28159E600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A830, &qword_274A18758);
    sub_27482BA68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E600);
  }

  return result;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_2815A0D40;
  if (qword_2815A0D40)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_2815A0D40 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x277C60620](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_2815A0D24, &dword_2815A0D28);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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

  return result;
}

uint64_t OUTLINED_FUNCTION_50_10()
{

  return sub_274772B38(v0 + 1160, v0 + 400);
}

unint64_t sub_27473E450()
{
  result = qword_2815A0CD0;
  if (!qword_2815A0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A0CD0);
  }

  return result;
}

uint64_t sub_27473E4CC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280966CC8, &qword_274A0CB98);
  type metadata accessor for FileActivityModel(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280966C80, &unk_274A17980);
  type metadata accessor for SharingPromptModel(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280966C88, &unk_274A0CB70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280966C90, &qword_274A179F0);
  sub_2747547B8();
  OUTLINED_FUNCTION_41_9();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_40_8();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_39_7();
  sub_27473AB0C(v0, v1, &protocol conformance descriptor for SharingPromptModel);
  sub_27473E450();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_38_7();
  sub_27473AB0C(v2, v3, &protocol conformance descriptor for FileActivityModel);
  sub_27473E670();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_27473E670()
{
  result = qword_28159FC38[0];
  if (!qword_28159FC38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28159FC38);
  }

  return result;
}

void sub_27473E6C8(uint64_t a1)
{
  sub_2747254DC(319, &qword_28159E778, MEMORY[0x277D85048]);
  if (v1 <= 0x3F)
  {
    sub_2747254DC(319, &qword_28159E750, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_27473E7D4@<X0>(uint64_t *a2@<X8>)
{
  _s14descr28838E601O10EditButtonV5ModelCMa(0);
  result = sub_2749FA874();
  *a2 = result;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_27473E820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v10 = sub_2749FAF64();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AA38, &qword_274A18E80);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  sub_27473EB18(a1, a2, v6, a4, &v27 - v16);
  LOBYTE(a1) = sub_27473F220();
  v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AA40, &qword_274A18E88) + 36)] = (a1 & 1) == 0;
  v18 = *(a2 + 24);
  v27 = *(a2 + 40);
  v28 = v18;
  v19 = sub_2749FBC64();
  v20 = &v17[*(v14 + 36)];
  *v20 = v19;
  v21 = v28;
  *(v20 + 24) = v27;
  *(v20 + 8) = v21;
  v20[40] = 0;
  sub_2749FAF54();
  sub_274831C80();
  sub_27473DB70(&qword_28159E6A0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_2749FBFC4();
  (*(v11 + 8))(v13, v10);
  sub_27472ECBC(v17, &qword_28096AA38, &qword_274A18E80);
  sub_2749FABF4();
  sub_2749FC974();
  sub_2749FAC24();

  sub_2749FAC14();
  v22 = sub_2749FABD4();

  *(a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AA98, &qword_274A18EB0) + 36)) = v22;
  v32 = v6;
  v33 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
  sub_2749FC5E4();
  v23 = v29;
  v24 = v30;
  LOBYTE(v6) = v31;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AAA0, &qword_274A18EB8);
  v26 = a5 + *(result + 36);
  *v26 = v23;
  *(v26 + 8) = v24;
  *(v26 + 16) = v6;
  return result;
}

uint64_t sub_27473EB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a3;
  v23 = a5;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AA90, &qword_274A18EA8);
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = v20 - v9;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AAA8, &qword_274A18EC0);
  MEMORY[0x28223BE20](v22);
  v12 = v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AA80, &qword_274A18EA0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  if (*(a2 + 16) >= 7uLL)
  {
    v20[1] = v20;
    MEMORY[0x28223BE20](v15);
    v20[-4] = a1;
    v20[-3] = a2;
    LOBYTE(v20[-2]) = v21 & 1;
    v20[-1] = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AAB0, &qword_274A18EC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AB48, &qword_274A18F18);
    sub_274831EA8();
    sub_274832350();
    sub_2749FBE54();
    (*(v14 + 16))(v12, v17, v13);
    swift_storeEnumTagMultiPayload();
    sub_27472AB6C(&qword_28096AA78, &qword_28096AA80, &qword_274A18EA0, MEMORY[0x277CDE5B0]);
    sub_27472AB6C(&qword_28096AA88, &qword_28096AA90, &qword_274A18EA8, MEMORY[0x277CDF028]);
    sub_2749FB7B4();
    return (*(v14 + 8))(v17, v13);
  }

  else
  {
    MEMORY[0x28223BE20](v15);
    v20[-4] = a1;
    v20[-3] = a2;
    LOBYTE(v20[-2]) = v21 & 1;
    v20[-1] = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AAB0, &qword_274A18EC8);
    sub_274831EA8();
    sub_2749FC624();
    v18 = v24;
    (*(v8 + 16))(v12, v10, v24);
    swift_storeEnumTagMultiPayload();
    sub_27472AB6C(&qword_28096AA78, &qword_28096AA80, &qword_274A18EA0, MEMORY[0x277CDE5B0]);
    sub_27472AB6C(&qword_28096AA88, &qword_28096AA90, &qword_274A18EA8, MEMORY[0x277CDF028]);
    sub_2749FB7B4();
    return (*(v8 + 8))(v10, v18);
  }
}

uint64_t sub_27473EFD0@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0, &qword_274A13E30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - v9;
  sub_274830ED4(v6, a4, a5);
  sub_27473F43C();
  v11 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v12 = sub_2749FBD64();
  sub_27472ECBC(v10, &unk_28096C0A0, &qword_274A13E30);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AAB0, &qword_274A18EC8);
  v15 = (a5 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = v12;
  return result;
}

unint64_t sub_27473F11C()
{
  result = qword_28159E710;
  if (!qword_28159E710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280966D48, &qword_274A0CBE0);
    sub_27473F1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E710);
  }

  return result;
}

unint64_t sub_27473F1A8()
{
  result = qword_2815A05B0;
  if (!qword_2815A05B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A05B0);
  }

  return result;
}

uint64_t sub_27473F234@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27473F220();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27473F28C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_47(a1, a2, a3, a4);
  OUTLINED_FUNCTION_9();
  (*(v6 + 16))(v4, v5);
  return v4;
}

unint64_t sub_27473F2DC()
{
  result = qword_28159FCD8[0];
  if (!qword_28159FCD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28159FCD8);
  }

  return result;
}

unint64_t sub_27473F330()
{
  result = qword_28159FF10;
  if (!qword_28159FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159FF10);
  }

  return result;
}

unint64_t sub_27473F384()
{
  result = qword_28159E6B8;
  if (!qword_28159E6B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AB40, &qword_274A18F10);
    sub_27473F824();
    sub_27472AB6C(&qword_28159E640, &unk_28096E8F0, &qword_274A1EB10, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E6B8);
  }

  return result;
}

double sub_27473F43C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  return v1;
}

unint64_t sub_27473F504()
{
  result = qword_2815A05B8[0];
  if (!qword_2815A05B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815A05B8);
  }

  return result;
}

unint64_t sub_27473F558()
{
  result = qword_2815A0498[0];
  if (!qword_2815A0498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2815A0498);
  }

  return result;
}

unint64_t sub_27473F5EC()
{
  result = qword_28159F4A0;
  if (!qword_28159F4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159F4A0);
  }

  return result;
}

unint64_t sub_27473F660()
{
  result = qword_28159E700;
  if (!qword_28159E700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A6B0, &unk_274A18520);
    sub_27472AB6C(&qword_28159E5D8, &qword_28096A6A8, &qword_274A18518, MEMORY[0x277CE04B0]);
    sub_27473F718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E700);
  }

  return result;
}

unint64_t sub_27473F718()
{
  result = qword_28159E5F8;
  if (!qword_28159E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E5F8);
  }

  return result;
}

unint64_t sub_27473F76C()
{
  result = qword_28159E6D8;
  if (!qword_28159E6D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969B70, &unk_274A15DC8);
    sub_27472AB6C(&unk_28159E5B0, &unk_28096CFD0, &qword_274A15B50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E6D8);
  }

  return result;
}

unint64_t sub_27473F824()
{
  result = qword_28159E6E0;
  if (!qword_28159E6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969F08, &qword_274A164B0);
    sub_27472AB6C(&qword_28159E5C8, &qword_280969F10, &qword_274A164B8, MEMORY[0x277CE07B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E6E0);
  }

  return result;
}

uint64_t static AppStorePromptController.didBecomeActive()()
{
  v0 = sub_2749FCA74();
  OUTLINED_FUNCTION_3_0();
  v28 = v1;
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749FCAA4();
  OUTLINED_FUNCTION_3_0();
  v26 = v6;
  v27 = v5;
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2749FCAC4();
  v24 = v9;
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
  v18 = sub_2749FD404();
  sub_2749FCAB4();
  sub_2749FCB14();
  v19 = *(v11 + 8);
  v19(v15, v9);
  v20 = swift_allocObject();
  *(v20 + 16) = v25;
  aBlock[4] = sub_27484E768;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_22;
  v21 = _Block_copy(aBlock);

  sub_2749FCA94();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27473FC78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
  sub_27473FCD0();
  sub_2749FD7B4();
  MEMORY[0x277C5F120](v17, v8, v4, v21);
  _Block_release(v21);

  (*(v28 + 8))(v4, v0);
  (*(v26 + 8))(v8, v27);
  return (v19)(v17, v24);
}

unint64_t sub_27473FC78()
{
  result = qword_28159E580;
  if (!qword_28159E580)
  {
    sub_2749FCA74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E580);
  }

  return result;
}

unint64_t sub_27473FCD0()
{
  result = qword_28159E530;
  if (!qword_28159E530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096DB60, &qword_274A0F640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28159E530);
  }

  return result;
}

Swift::Void __swiftcall LibraryView.observeChanges(_:)(Swift::Bool a1)
{
  v3 = v2;
  v5 = OUTLINED_FUNCTION_108(a1, v1);
  v7 = v6(v5);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = (v7 + 40);
    do
    {
      v10 = *v9;
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 24);
      swift_unknownObjectRetain();
      v12(a1, ObjectType, v10);
      swift_unknownObjectRelease();
      v9 += 2;
      --v8;
    }

    while (v8);
  }

  v13 = *(*(v3 + 40))(v14, v3);
  (*(v13 + 568))(a1);
}

id sub_27473FEC4(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_shouldUpdate;
  OUTLINED_FUNCTION_125_0(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  return sub_27473FF10(v4);
}

id sub_27473FF10(char a1)
{
  v2 = a1 & 1;
  v3 = OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_shouldUpdate;
  result = swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    if (*(v1 + v3))
    {
      v5 = &selRef_registerObserver_;
    }

    else
    {
      v5 = &selRef_unregisterObserver_;
    }

    return [*(v1 + OBJC_IVAR____TtC10WorkflowUI17AllShortcutsGroup_collectionsResult) *v5];
  }

  return result;
}

uint64_t sub_27473FF9C()
{
  if (OUTLINED_FUNCTION_14_0())
  {
    OUTLINED_FUNCTION_6();
  }

  else
  {
    OUTLINED_FUNCTION_7_0();
  }

  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_27473FFF8()
{
  if (OUTLINED_FUNCTION_14_0())
  {
    OUTLINED_FUNCTION_6();
  }

  else
  {
    OUTLINED_FUNCTION_7_0();
  }

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274740050(uint64_t *a1)
{
  if (OUTLINED_FUNCTION_18_3())
  {
    sub_2749FBA04();

    return sub_2749FAEA4();
  }

  else
  {
    sub_2749FAFF4();
    OUTLINED_FUNCTION_13_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_16_1();
    sub_2749FB884();
    OUTLINED_FUNCTION_16_1();
    sub_2749FAEA4();
    sub_2749FD6C4();
    OUTLINED_FUNCTION_12_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_16_1();
    sub_2749FAFF4();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_16_1();
    sub_2749FB884();
    return sub_2749FAEA4();
  }
}

uint64_t sub_274740174(uint64_t a1)
{
  if (OUTLINED_FUNCTION_18_3())
  {
    v1 = sub_2749FBA04();
    OUTLINED_FUNCTION_19(v1);
  }

  else
  {
    sub_2749FAFF4();
    OUTLINED_FUNCTION_13_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_16_1();
    v2 = sub_2749FB884();
    OUTLINED_FUNCTION_19(v2);
    sub_2749FD6C4();
    OUTLINED_FUNCTION_12_3();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_16_1();
    sub_2749FAFF4();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_16_1();
    sub_2749FB884();
    sub_2749FAEA4();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_274740354@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_274756F0C(a2);
  *a1 = result;
  return result;
}

void sub_2747403D0(uint64_t a2@<X8>)
{
  sub_274740404();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t getEnumTagSinglePayload for ShortcutChiclet.Model.Metrics.Icon(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ShortcutChiclet.Model.Metrics.Icon(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_274740558()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_274758014();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_274740584()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_274758354();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2747405B0()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_274758664();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2747405DC()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_2747589BC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_274740660@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsEmptyStateView.content.getter();
  *a1 = result;
  return result;
}

uint64_t sub_274740690(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809676C8, &unk_274A0F220);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274740724(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809676C8, &unk_274A0F220);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2747407B4()
{
  OUTLINED_FUNCTION_48();
  v1 = (type metadata accessor for ShortcutsEmptyStateView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = sub_2749F9064();
  OUTLINED_FUNCTION_43();
  v6 = v5;
  v7 = *(v5 + 80);

  v8 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096FBF0, &qword_274A0F058);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FACC4();
    OUTLINED_FUNCTION_9();
    (*(v9 + 8))(v0 + v2 + v8);
  }

  else
  {
  }

  (*(v6 + 8))(v0 + ((v2 + v3 + v7) & ~v7), v4);
  OUTLINED_FUNCTION_46();

  return MEMORY[0x2821FE8E8](v10);
}

uint64_t sub_274740940()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27474097C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747409C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274740A14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27475DD98();
  *a1 = result;
  return result;
}

uint64_t sub_274740A44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27475DCC4();
  *a1 = result;
  return result;
}

uint64_t sub_274740A90()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274740BD8()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_274760E5C();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_274740C2C()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_274760EC4(v1, v2);
  *v0 = result & 1;
  return result;
}

uint64_t sub_274740C7C()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_2747611A4(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

uint64_t sub_274740CD0()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_274761328(v1, v2);
  *v0 = result & 1;
  return result;
}

uint64_t sub_274740D20()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_274727120(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_274740D4C()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_274761A2C(v1, v2);
  *v0 = result;
  return result;
}

uint64_t sub_274740DC8()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_2747625E4(v1, v2);
  *v0 = result & 1;
  return result;
}

uint64_t sub_274740E18()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_274762640(v1, v2);
  *v0 = result;
  v0[1] = v4;
  return result;
}

void sub_274740E6C()
{
  OUTLINED_FUNCTION_44_0();
  sub_274722764();
  *v0 = v1;
}

void sub_274740E98()
{
  OUTLINED_FUNCTION_44_0();
  sub_27471FE94();
  *v0 = v1;
}

uint64_t sub_274740F60()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274740F98()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274740FD0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274741040()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274741110()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28096D950, &unk_274A1F650);
  OUTLINED_FUNCTION_1();
  sub_2749FD6C4();
  OUTLINED_FUNCTION_1();
  sub_2749FC654();
  sub_2749FD6C4();
  swift_getTupleTypeMetadata3();
  sub_2749FC9D4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1();
  sub_2749FC694();
  OUTLINED_FUNCTION_1();
  sub_2749FAEA4();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2747412B8()
{
  MEMORY[0x277C61150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747412F0()
{

  OUTLINED_FUNCTION_23_2();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274741334()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_23_2();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747413C8()
{
  MEMORY[0x277C61150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274741408()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274741468(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F48, &qword_274A109E0);
  OUTLINED_FUNCTION_9();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2747414D0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967F48, &qword_274A109E0);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274741534()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747416E4()
{
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274741718@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2747879FC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274741770@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274787B2C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2747417A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_59_0();
  type metadata accessor for RootNavigationDestination(v6);
  OUTLINED_FUNCTION_74();
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_89_0();
LABEL_8:

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = type metadata accessor for LibraryEditingBehavior(0);
    v8 = v3 + *(a3 + 28);
    goto LABEL_8;
  }

  v10 = *(v3 + *(a3 + 20) + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

void sub_274741868(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = OUTLINED_FUNCTION_59_0();
  type metadata accessor for RootNavigationDestination(v8);
  OUTLINED_FUNCTION_74();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(v4 + *(a4 + 20) + 8) = (a2 - 1);
      return;
    }

    v11 = type metadata accessor for LibraryEditingBehavior(0);
    v12 = v4 + *(a4 + 28);
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_274741938(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = OUTLINED_FUNCTION_59_0();
  type metadata accessor for LibrarySectionOptions.Header(v6);
  OUTLINED_FUNCTION_74();
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_89_0();
LABEL_13:

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  if (a2 != 2147483646)
  {
    type metadata accessor for LibrarySectionOptions.SectionType(0);
    OUTLINED_FUNCTION_74();
    if (*(v14 + 84) == a2)
    {
      v9 = v13;
      v15 = a3[7];
    }

    else
    {
      v9 = sub_2749F9164();
      v15 = a3[10];
    }

    v8 = v3 + v15;
    goto LABEL_13;
  }

  v10 = *(v3 + a3[6]);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

void sub_274741A48(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = OUTLINED_FUNCTION_59_0();
  type metadata accessor for LibrarySectionOptions.Header(v8);
  OUTLINED_FUNCTION_74();
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + a4[6]) = a2;
      return;
    }

    type metadata accessor for LibrarySectionOptions.SectionType(0);
    OUTLINED_FUNCTION_74();
    if (*(v14 + 84) == a3)
    {
      v11 = v13;
      v15 = a4[7];
    }

    else
    {
      v11 = sub_2749F9164();
      v15 = a4[10];
    }

    v12 = v4 + v15;
  }

  __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_274741B84()
{
  v1 = sub_2749F9514();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274741CD0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968310, &qword_274A1E140);
  sub_2749FB7C4();
  sub_2749FB7C4();
  sub_2749FC4F4();
  sub_2749FAEA4();
  sub_27478E4C4();
  swift_getWitnessTable();
  sub_27478E528();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_8();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_8();
  return swift_getWitnessTable();
}

BOOL sub_274741E04(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_274741E50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27478ED44();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274741E80()
{
  MEMORY[0x277C61150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274741EB8()
{
  swift_unknownObjectUnownedDestroy();
  v0 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274741F44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27478FDB8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274741F74@<X0>(_WORD *a1@<X8>)
{
  result = sub_27478FCD4();
  *a1 = result;
  return result;
}

uint64_t sub_274741FC8()
{
  MEMORY[0x277C61150](v0 + 16);
  v1 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274741FF8()
{
  v1 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274742094(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260, &unk_274A11B70);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274742128(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260, &unk_274A11B70);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2747421F8()
{
  v1 = (type metadata accessor for GalleryShortcutActionsView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50, &qword_274A11AE0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0, &qword_274A11BA0) + 32);
    sub_2749FAF84();
    OUTLINED_FUNCTION_1_2();
    (*(v6 + 8))(v3 + v5);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274742330(uint64_t a1, uint64_t a2)
{
  v4 = sub_2749F9494();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_274742378(uint64_t a1, uint64_t a2)
{
  v4 = sub_2749F9494();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_27474240C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274795BF8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_27474243C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274795AA4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274742494@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274795F28();
  *a1 = result;
  return result;
}

uint64_t sub_2747424E8()
{
  MEMORY[0x277C61150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747425EC()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_49_0();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274742620()
{
  v1 = sub_2749F9494();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747426EC()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_49_0();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274742728()
{

  v0 = OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274742758()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747427C0()
{

  v0 = OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747427F0()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_49_0();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27474282C()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27474287C()
{
  if (*(v0 + 16))
  {
  }

  v1 = OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2747428B4()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747428FC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27474293C()
{
  v1 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_27474296C()
{
  _Block_release(*(v0 + 16));
  v1 = OUTLINED_FUNCTION_6_2();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2747429BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968770, qword_274A19E70);
  OUTLINED_FUNCTION_5_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v4, v0);

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274742A8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968770, qword_274A19E70);
  OUTLINED_FUNCTION_5_9();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v1 + v4, v0);

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274742B50()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_2747A723C();
  *v0 = result;
  return result;
}

void sub_274742C08(uint64_t *a1@<X8>)
{
  ShortcutsLibraryItem.name.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_274742C34@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsLibraryItem.actionCountText.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274742C60@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutsLibraryItem.modificationDateText.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274742DAC()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_2747A87D4();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_274742DD8()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_2747A8AB4();
  *v0 = result;
  return result;
}

uint64_t sub_274742EDC()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_2747AAAF4();
  *v0 = result;
  return result;
}

uint64_t sub_274742F68()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_2747AAED8();
  *v0 = result;
  return result;
}

uint64_t sub_274742F9C()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_2747ABD78();
  *v0 = result & 1;
  return result;
}

__n128 sub_27474304C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_274743064(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260, &unk_274A11B70);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2747430F8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260, &unk_274A11B70);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274743184()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968950, &qword_274A131E0);
  sub_2749FB9A4();
  OUTLINED_FUNCTION_3_18();
  sub_27472AB6C(v0, &qword_280968950, &qword_274A131E0, v1);
  OUTLINED_FUNCTION_2_14();
  sub_2747B511C(v2, v3, MEMORY[0x277CDE298]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274743244@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2747B2E64();
  *a1 = result & 1;
  return result;
}

uint64_t sub_27474329C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747432D4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274743314()
{
  v1 = (type metadata accessor for AutoShortcutsSettingView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50, &qword_274A11AE0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0, &qword_274A11BA0) + 32);
    sub_2749FAF84();
    OUTLINED_FUNCTION_1_2();
    (*(v6 + 8))(v3 + v5);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274743448()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274743488()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747434E8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 185);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0, &unk_274A17150);
    OUTLINED_FUNCTION_74();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A38, &unk_274A133F0);
      OUTLINED_FUNCTION_74();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[6];
      }

      else
      {
        v10 = type metadata accessor for SmartShortcutPickerEntry(0);
        v11 = a3[7];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_274743600(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 185) = -a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0, &unk_274A17150);
    OUTLINED_FUNCTION_74();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A38, &unk_274A133F0);
      OUTLINED_FUNCTION_74();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[6];
      }

      else
      {
        v10 = type metadata accessor for SmartShortcutPickerEntry(0);
        v11 = a4[7];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_274743770@<X0>(uint64_t *a1@<X8>)
{
  result = GlyphRegistry.categories.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2747437A0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274743810()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274743888()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747438C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2747BF4B0();
  *a1 = result;
  return result;
}

uint64_t sub_27474391C()
{
  MEMORY[0x277C61150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274743988()
{
  MEMORY[0x277C61150](v0 + 16);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2747439C8()
{
  v1 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274743B34()
{
  MEMORY[0x277C61150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274743B6C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274743BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2749FD014();
  v6 = OUTLINED_FUNCTION_0_15(v5);

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_274743C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2749FD014();
  v7 = OUTLINED_FUNCTION_0_15(v6);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v7);
}

uint64_t sub_274743CB8()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274743CEC()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274743D24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2747CBD94();
  *a1 = result;
  return result;
}

uint64_t sub_274743D5C()
{
  v1 = (type metadata accessor for SmartShortcutPickerEntry(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  sub_2747D2BDC(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 80), *(v4 + 88), *(v4 + 96), *(v4 + 104), *(v4 + 112), *(v4 + 120), *(v4 + 128), *(v4 + 136), *(v4 + 144), *(v4 + 152), *(v4 + 160), *(v4 + 168), *(v4 + 176), *(v4 + 184));
  v5 = v1[7];
  sub_2749FA0F4();
  OUTLINED_FUNCTION_9();
  (*(v6 + 8))(v4 + v5);

  sub_27478C4DC(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274743F6C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274743FA4()
{

  return MEMORY[0x2821FE8E8](v0);
}

id sub_274743FE8@<X0>(id a1@<X2>, void *a2@<X8>)
{
  result = [a1 status];
  *a2 = result;
  return result;
}

uint64_t sub_274744024()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27474406C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2747D7100();
  *a1 = result;
  return result;
}

uint64_t sub_27474409C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2747D753C();
  *a1 = result;
  return result;
}

uint64_t sub_2747440E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2747D7114();
  *a1 = result;
  return result;
}

uint64_t sub_274744128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2749F9164();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 8);
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_2747441D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2749F9164();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2747442A4()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747442D8()
{

  OUTLINED_FUNCTION_32_2();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27474430C()
{
  MEMORY[0x277C61150](v0 + 16);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274744340()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27474439C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747443D4()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27474442C()
{
  v1 = (type metadata accessor for SmartShortcutPickerSelectedEntry(0) - 8);
  v2 = (*(*v1 + 80) + 217) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_3_2();
  sub_2747EBBF4(v4, v5, v6, v7, v8, v9, v10, v11, v24, v26, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54);
  v12 = v0 + v2;
  OUTLINED_FUNCTION_3_2();
  sub_2747D2BDC(v13, v14, v15, v16, v17, v18, v19, v20, v25, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55);
  sub_27478C4DC(*(v12 + 192), *(v12 + 200), *(v12 + 208));

  v21 = v1[9];
  v22 = sub_2749FA0F4();
  if (!__swift_getEnumTagSinglePayload(v0 + v2 + v21, 1, v22))
  {
    (*(*(v22 - 8) + 8))(v12 + v21, v22);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747445D4()
{
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274744608()
{
  MEMORY[0x277C61150](v0 + 16);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274744640()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274744678()
{

  if (*(v0 + 24))
  {
  }

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t get_enum_tag_for_layout_string_So20LNSnippetEnvironmentCIego_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_27474470C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969530, &qword_274A14DF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969538, &qword_274A14DF8);
  OUTLINED_FUNCTION_4_14();
  sub_27472AB6C(v0, &qword_280969530, &qword_274A14DF0, v1);
  sub_2747EC96C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2747447B8(uint64_t *a1)
{
  type metadata accessor for SnippetEnvironmentModifier(255);
  sub_2749FAEA4();
  sub_2747F1888(&qword_280969568, type metadata accessor for SnippetEnvironmentModifier, &unk_274A1504C);
  return OUTLINED_FUNCTION_3_27();
}

uint64_t sub_274744834(void *a1)
{
  sub_2749FAEA4();
  sub_2747F1A40();
  return OUTLINED_FUNCTION_3_27();
}

uint64_t sub_274744878(uint64_t a1, uint64_t a2, int *a3)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969578, &qword_274A14F58);
    OUTLINED_FUNCTION_74();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB90, &qword_274A14F60);
      OUTLINED_FUNCTION_74();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969580, &qword_274A14F68);
        OUTLINED_FUNCTION_74();
        if (*(v15 + 84) == a2)
        {
          v10 = v14;
          v11 = a3[8];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CB40, &unk_274A14F70);
          OUTLINED_FUNCTION_74();
          if (*(v17 + 84) == a2)
          {
            v10 = v16;
            v11 = a3[9];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0, &unk_274A17150);
            OUTLINED_FUNCTION_74();
            if (*(v19 + 84) == a2)
            {
              v10 = v18;
              v11 = a3[10];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969588, &qword_274A14F80);
              OUTLINED_FUNCTION_74();
              if (*(v21 + 84) == a2)
              {
                v10 = v20;
                v11 = a3[11];
              }

              else
              {
                v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969590, &qword_274A14F88);
                v11 = a3[13];
              }
            }
          }
        }
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_274744AD4(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969578, &qword_274A14F58);
    OUTLINED_FUNCTION_74();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB90, &qword_274A14F60);
      OUTLINED_FUNCTION_74();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[7];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969580, &qword_274A14F68);
        OUTLINED_FUNCTION_74();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[8];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096CB40, &unk_274A14F70);
          OUTLINED_FUNCTION_74();
          if (*(v17 + 84) == a3)
          {
            v10 = v16;
            v11 = a4[9];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0, &unk_274A17150);
            OUTLINED_FUNCTION_74();
            if (*(v19 + 84) == a3)
            {
              v10 = v18;
              v11 = a4[10];
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969588, &qword_274A14F80);
              OUTLINED_FUNCTION_74();
              if (*(v21 + 84) == a3)
              {
                v10 = v20;
                v11 = a4[11];
              }

              else
              {
                v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969590, &qword_274A14F88);
                v11 = a4[13];
              }
            }
          }
        }
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_274744DD8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

void sub_274744F18()
{
  OUTLINED_FUNCTION_14_7();
  sub_2749FB114();
  *v0 = v1;
}

uint64_t sub_274744FCC()
{
  OUTLINED_FUNCTION_14_7();
  v0 = sub_2749FB394();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_274745018()
{
  OUTLINED_FUNCTION_14_7();
  v0 = sub_2749FB304();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_274745064()
{
  OUTLINED_FUNCTION_14_7();
  v0 = sub_2749FB314();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_2747450B0()
{
  OUTLINED_FUNCTION_14_7();
  v0 = sub_2749FB374();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_274745150()
{
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274745184()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747451BC()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747451FC()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274745268@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2747F5BE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_274745298()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747452E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809698A0, &qword_274A156C8);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27474537C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747453B4()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747453EC()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274745460()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747454DC()
{
  sub_2749FB9F4();
  OUTLINED_FUNCTION_9();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27474556C()
{
  OUTLINED_FUNCTION_130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A68, &qword_274A15B30);
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_44();
  v2(v1);
  return v0;
}

uint64_t sub_2747455CC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A68, &qword_274A15B30);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_27474562C()
{
  OUTLINED_FUNCTION_130();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969A60, &qword_274A15B28);
  OUTLINED_FUNCTION_9();
  v1 = OUTLINED_FUNCTION_44();
  v2(v1);
  return v0;
}

uint64_t sub_27474568C()
{
  v0 = OUTLINED_FUNCTION_44();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0, v1);
  sub_2749FAF64();
  sub_27472AB6C(&qword_280969A10, &qword_2809699D8, &qword_274A15A68, MEMORY[0x277CDF028]);
  sub_274724ED0(&qword_28159E6A0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2747457B4()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274745804()
{

  return MEMORY[0x2821FE8E8](v0);
}

void *sub_274745960()
{
  OUTLINED_FUNCTION_10_13();
  sub_2747B6A3C();
  v0 = OUTLINED_FUNCTION_31_10();
  return memcpy(v0, v1, 0xB9uLL);
}

void *sub_2747459C4()
{
  OUTLINED_FUNCTION_10_13();
  EnvironmentValues.smartShortcutPickerViewStyle.getter();
  v0 = OUTLINED_FUNCTION_31_10();
  return memcpy(v0, v1, 0x59uLL);
}

uint64_t sub_274745A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SmartShortcutPickerEntry(0);
  OUTLINED_FUNCTION_74();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0, &unk_274A17150);
  OUTLINED_FUNCTION_74();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 32) + 8);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

void sub_274745B0C()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for SmartShortcutPickerEntry(0);
  OUTLINED_FUNCTION_74();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0, &unk_274A17150);
    OUTLINED_FUNCTION_74();
    if (*(v9 + 84) != v3)
    {
      *(v1 + *(v2 + 32) + 8) = v0;
      return;
    }

    v6 = v8;
    v7 = v1 + *(v2 + 28);
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_274745BFC(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0, &unk_274A17150);
  OUTLINED_FUNCTION_74();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB90, &qword_274A14F60);
    OUTLINED_FUNCTION_74();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = a3[5];
    }

    else
    {
      if (a2 == 254)
      {
        v14 = *(a1 + a3[6] + 185);
        if (v14 > 1)
        {
          return (v14 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A38, &unk_274A133F0);
      OUTLINED_FUNCTION_74();
      if (*(v16 + 84) == a2)
      {
        v8 = v15;
        v12 = a3[7];
      }

      else
      {
        v8 = type metadata accessor for SmartShortcutPickerEntry(0);
        v12 = a3[10];
      }
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

void sub_274745D68()
{
  OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0, &unk_274A17150);
  OUTLINED_FUNCTION_74();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB90, &qword_274A14F60);
    OUTLINED_FUNCTION_74();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = v2[5];
    }

    else
    {
      if (v3 == 254)
      {
        *(v1 + v2[6] + 185) = -v0;
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A38, &unk_274A133F0);
      OUTLINED_FUNCTION_74();
      if (*(v12 + 84) == v3)
      {
        v6 = v11;
        v10 = v2[7];
      }

      else
      {
        v6 = type metadata accessor for SmartShortcutPickerEntry(0);
        v10 = v2[10];
      }
    }

    v7 = v1 + v10;
  }

  __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_274745EC8()
{
  type metadata accessor for SmartShortcutPickerSectionGridEntryView.StaccatoEntryView(0);
  OUTLINED_FUNCTION_23();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = v1 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v5 + 8))(v1 + v3);
  }

  else
  {
  }

  v6 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200, &qword_274A15100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAE14();
    OUTLINED_FUNCTION_9();
    (*(v7 + 8))(v4 + v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_17(v4 + v0[6]);
  v73 = *(v8 + 185);
  v71 = *(v8 + 184);
  v69 = *(v8 + 176);
  OUTLINED_FUNCTION_5_19();
  sub_274807638(v9, v10, v11, v12, v13, v14, v15, v16, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73);
  v17 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A88, &qword_274A15F20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_2749FA0F4();
    if (!__swift_getEnumTagSinglePayload(v4 + v17, 1, v18))
    {
      (*(*(v18 - 8) + 8))(v4 + v17, v18);
    }
  }

  else
  {
  }

  v19 = OUTLINED_FUNCTION_4_17(v4 + v0[8]);
  OUTLINED_FUNCTION_11_14(v19, v20, v21, v22, v23, v24, v25, v26, v27);
  v28 = v4 + v0[10];
  v72 = *(v28 + 184);
  v70 = *(v28 + 176);
  OUTLINED_FUNCTION_5_19();
  sub_2747D2BDC(v29, v30, v31, v32, v33, v34, v35, v36, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72);
  v37 = type metadata accessor for SmartShortcutPickerEntry(0);
  v38 = *(v37 + 20);
  sub_2749FA0F4();
  OUTLINED_FUNCTION_9();
  (*(v39 + 8))(v28 + v38);

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2747461A8()
{
  OUTLINED_FUNCTION_14_7();
  result = sub_2749FB494();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_2747461DC()
{
  OUTLINED_FUNCTION_14_7();
  result = sub_2749FB2E4();
  *v0 = result;
  return result;
}

uint64_t sub_274746298()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969CE0, &qword_274A160A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969D00, &qword_274A160C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969D08, &qword_274A160D0);
  sub_274807F80();
  sub_2748083D8();
  sub_274808464();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274746420()
{
  MEMORY[0x277C61150](v0 + 16);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274746458()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274746498()
{

  OUTLINED_FUNCTION_23_2();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2747464DC()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_23_2();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274746524()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274746564()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27474659C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274746634()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747466BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_27474667C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_274746754@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2748112E4();
  *a1 = result;
  return result;
}

uint64_t sub_2747467FC()
{
  MEMORY[0x277C61150](v0 + 16);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274746830()
{

  OUTLINED_FUNCTION_32_2();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_27474686C()
{
  v1 = sub_2749F9444();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v6 = v4 + *(v5 + 64);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096A270, &unk_274A16FC0);
  OUTLINED_FUNCTION_27(v7);
  v9 = (v6 + *(v8 + 80)) & ~*(v8 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);
  v10 = sub_2749F9374();
  if (!__swift_getEnumTagSinglePayload(v0 + v9, 1, v10))
  {
    (*(*(v10 - 8) + 8))(v0 + v9, v10);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747469E4()
{
  v1 = sub_2749F9444();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274746A9C()
{
  sub_2749F9444();
  OUTLINED_FUNCTION_9();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274746B34()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274746B74()
{
  OUTLINED_FUNCTION_32_2();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274746BA8()
{
  OUTLINED_FUNCTION_32_2();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274746BE4()
{
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274746C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28, &qword_274A13C50);
  OUTLINED_FUNCTION_74();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_148(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_274746CC4()
{
  OUTLINED_FUNCTION_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28, &qword_274A13C50);
  OUTLINED_FUNCTION_74();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_13_13();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = (v0 - 1);
  }
}

uint64_t sub_274746D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NamedColorScheme(0);
  OUTLINED_FUNCTION_74();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28, &qword_274A13C50);
    OUTLINED_FUNCTION_74();
    if (*(v11 + 84) == a2)
    {
      v8 = v10;
      v12 = *(a3 + 20);
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0, &unk_274A17150);
      v12 = *(a3 + 24);
    }

    v9 = a1 + v12;
  }

  return __swift_getEnumTagSinglePayload(v9, a2, v8);
}

uint64_t sub_274746E58()
{
  OUTLINED_FUNCTION_29();
  type metadata accessor for NamedColorScheme(0);
  OUTLINED_FUNCTION_74();
  if (*(v5 + 84) == v3)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28, &qword_274A13C50);
    OUTLINED_FUNCTION_74();
    if (*(v9 + 84) == v3)
    {
      v6 = v8;
      v10 = *(v2 + 20);
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0, &unk_274A17150);
      v10 = *(v2 + 24);
    }

    v7 = v1 + v10;
  }

  return __swift_storeEnumTagSinglePayload(v7, v0, v0, v6);
}

uint64_t sub_274746F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2749F9EB4();
  OUTLINED_FUNCTION_74();
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_148(*(a1 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

void sub_274746FE4()
{
  OUTLINED_FUNCTION_29();
  sub_2749F9EB4();
  OUTLINED_FUNCTION_74();
  if (*(v4 + 84) == v3)
  {
    v5 = OUTLINED_FUNCTION_13_13();

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }
}

uint64_t sub_274747078()
{
  v1 = (type metadata accessor for ColorPickerButton(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v3 = sub_2749F9EB4();
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 8);
  v5(v2, v3);
  type metadata accessor for NamedColorScheme(0);

  v6 = v2 + v1[7];

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28, &qword_274A13C50);
  v5(v6 + *(v7 + 32), v3);
  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_9();
    (*(v9 + 8))(v2 + v8);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274747254(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A4E8, &unk_274A17730);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_2747472E0()
{
  OUTLINED_FUNCTION_14_7();
  v0 = sub_274738520();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_27474733C()
{
  OUTLINED_FUNCTION_14_7();
  v0 = sub_27473872C();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_2747478B0(unint64_t *a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_148(*a1);
  }

  sub_2749FA2F4();
  v5 = OUTLINED_FUNCTION_51(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_274747928()
{
  OUTLINED_FUNCTION_64_2();
  if (v3)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_2749FA2F4();
    v5 = OUTLINED_FUNCTION_51(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_274747998()
{

  return MEMORY[0x2821FE8E8](v0);
}

void sub_2747479F0()
{
  OUTLINED_FUNCTION_14_7();
  sub_2749FB0E4();
  *v0 = v1;
}

uint64_t sub_274747AA4()
{

  v0 = OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274747AD4()
{
  type metadata accessor for ShortcutChiclet(0);
  OUTLINED_FUNCTION_23();
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  v5 = v1 + v4;

  __swift_destroy_boxed_opaque_existential_0((v1 + v4 + 16));

  OUTLINED_FUNCTION_45_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  if (OUTLINED_FUNCTION_59_3(v6) == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_1_2();
    (*(v7 + 8))(v5 + v2);
  }

  else
  {
  }

  v8 = *(v0 + 64);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60, &qword_274A13620);
  if (OUTLINED_FUNCTION_59_3(v9) == 1)
  {
    sub_2749FB614();
    OUTLINED_FUNCTION_1_2();
    (*(v10 + 8))(v5 + v8);
  }

  else
  {
  }

  OUTLINED_FUNCTION_61_2();
  OUTLINED_FUNCTION_60_2();
  OUTLINED_FUNCTION_46_4();
  if (v11)
  {
  }

  OUTLINED_FUNCTION_46_4();
  if (v12)
  {
  }

  OUTLINED_FUNCTION_46_4();
  if (v13)
  {
  }

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274747CC0()
{
  type metadata accessor for ShortcutChiclet(0);
  OUTLINED_FUNCTION_23();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();
  v7 = v1 + v4;

  __swift_destroy_boxed_opaque_existential_0((v1 + v4 + 16));

  OUTLINED_FUNCTION_45_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  if (OUTLINED_FUNCTION_59_3(v8) == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_1_2();
    (*(v9 + 8))(v7 + v2);
  }

  else
  {
  }

  v10 = *(v0 + 64);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60, &qword_274A13620);
  if (OUTLINED_FUNCTION_59_3(v11) == 1)
  {
    sub_2749FB614();
    OUTLINED_FUNCTION_1_2();
    (*(v12 + 8))(v7 + v10);
  }

  else
  {
  }

  OUTLINED_FUNCTION_61_2();
  OUTLINED_FUNCTION_60_2();
  OUTLINED_FUNCTION_46_4();
  if (v13)
  {
  }

  OUTLINED_FUNCTION_46_4();
  if (v14)
  {
  }

  OUTLINED_FUNCTION_46_4();
  if (v15)
  {
  }

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274747ECC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27482C0C0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274747F2C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274747F7C()
{
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274747FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260, &unk_274A11B70);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20) + 16);
    if (v8 > 1)
    {
      return (v8 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_274748098(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260, &unk_274A11B70);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = -a2;
  }

  return result;
}

uint64_t sub_274748150(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A958, &qword_274A18AF0);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_2747481AC()
{
  v1 = type metadata accessor for ShortcutIconEditorNavigationView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096BF50, &qword_274A11AE0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B2A0, &qword_274A11BA0) + 32);
    sub_2749FAF84();
    OUTLINED_FUNCTION_1_2();
    (*(v5 + 8))(v2 + v4);
  }

  sub_274727224(*(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27474833C()
{

  sub_274830180(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274748380()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747483B8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A9F0, &qword_274A18C80);
  OUTLINED_FUNCTION_9();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_274748438()
{
  sub_2749FAF04();
  OUTLINED_FUNCTION_9();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747484B8()
{
  v1 = sub_2749FAAF4();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_2749FAF04();
  OUTLINED_FUNCTION_43();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747485E8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A9C8, &qword_274A18C70);
  sub_27482FED4();
  sub_27475D0D0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274748690()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747486D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274748718@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274831B04();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274748770()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747487B0()
{
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2747487E4()
{
  MEMORY[0x277C61150](v0 + 16);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274748818()
{
  v1 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747488D0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096AC10, &qword_274A192B8);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274748930()
{
  sub_27478C4DC(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274748994()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096AC10, &qword_274A192B8);
  sub_274835A5C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2747489FC()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_274835D48();
  *v0 = result;
  return result;
}

uint64_t sub_274748A28()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_27483603C();
  *v0 = result;
  return result;
}

uint64_t sub_274748A54()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_2748364BC();
  *v0 = result;
  return result;
}

uint64_t sub_274748A80()
{
  OUTLINED_FUNCTION_44_0();
  result = sub_2748367B0();
  *v0 = result & 1;
  return result;
}

uint64_t sub_274748C94(uint64_t a1, int a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  type metadata accessor for ShortcutsLibraryItem(0);
  OUTLINED_FUNCTION_74();
  if (*(v6 + 84) == a2)
  {
    v7 = a3[7];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0, &unk_274A17150);
    OUTLINED_FUNCTION_74();
    if (*(v8 + 84) == a2)
    {
      v7 = a3[9];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACE0, &unk_274A1F450);
      v7 = a3[10];
    }
  }

  v9 = OUTLINED_FUNCTION_51(v7);

  return __swift_getEnumTagSinglePayload(v9, v10, v11);
}

void sub_274748DA0()
{
  OUTLINED_FUNCTION_64_2();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    type metadata accessor for ShortcutsLibraryItem(0);
    OUTLINED_FUNCTION_74();
    if (*(v7 + 84) == v6)
    {
      v8 = v5[7];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096FAB0, &unk_274A17150);
      OUTLINED_FUNCTION_74();
      if (*(v9 + 84) == v6)
      {
        v8 = v5[9];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096ACE0, &unk_274A1F450);
        v8 = v5[10];
      }
    }

    v10 = OUTLINED_FUNCTION_51(v8);

    __swift_storeEnumTagSinglePayload(v10, v11, v0, v12);
  }
}

uint64_t sub_274748EF0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_15_12();
  }

  type metadata accessor for ShortcutsLibraryItem(0);
  v5 = OUTLINED_FUNCTION_51(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_274748F64()
{
  OUTLINED_FUNCTION_64_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for ShortcutsLibraryItem(0);
    v5 = OUTLINED_FUNCTION_51(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_274749058()
{
  MEMORY[0x277C61150](v0 + 16);
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_27474908C()
{
  v1 = sub_2749F9374();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274749174@<X0>(uint64_t a1@<X8>)
{
  result = sub_2749FB264();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_2747491AC()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747491F0()
{

  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274749234()
{
  OUTLINED_FUNCTION_86();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_274749268()
{

  if (*(v0 + 88))
  {
    sub_27484DF88(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747492D8()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274749374()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747493BC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27474940C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968770, qword_274A19E70);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747494C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274749508()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_274749550(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260, &unk_274A11B70);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2747495E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B260, &unk_274A11B70);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274749674(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B370, &qword_274A1A030);
  OUTLINED_FUNCTION_9();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2747496EC()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27474973C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B3F8, &unk_274A1A130);
  sub_27485524C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2747497F8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809677E0, &qword_274A1A3E0);
  sub_27471CF08(255, &qword_28096EA30, 0x277D7CA80);
  sub_27472AB6C(&qword_28096B520, &qword_2809677E0, &qword_274A1A3E0, MEMORY[0x277D83980]);
  sub_27475F564();
  sub_2749FC774();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B528, &qword_274A1A3E8);
  sub_2749FAEA4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096B530, &unk_274A1A3F0);
  sub_2749FAEA4();
  swift_getWitnessTable();
  v1 = MEMORY[0x277CE04A0];
  sub_27472AB6C(&qword_28096B538, &qword_28096B528, &qword_274A1A3E8, MEMORY[0x277CE04A0]);
  swift_getWitnessTable();
  sub_27472AB6C(&qword_28096B540, &qword_28096B530, &unk_274A1A3F0, v1);
  return swift_getWitnessTable();
}