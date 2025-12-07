uint64_t sub_2748112E4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_32_1();
  sub_2749FA904();

  return v1;
}

uint64_t sub_274811354(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t sub_2748113C8@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_28_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2748113F4(uint64_t a1)
{
  v2 = sub_274813CAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274811430(uint64_t a1)
{
  v2 = sub_274813CAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_274811474@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_274810560(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_27481149C(uint64_t a1)
{
  v2 = sub_274813B10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2748114D8(uint64_t a1)
{
  v2 = sub_274813B10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27481151C(uint64_t a1)
{
  sub_2749FDDF4();
  MEMORY[0x277C5FB60](0);
  return sub_2749FDE44();
}

uint64_t sub_274811560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2748106CC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_27481158C(uint64_t a1)
{
  v2 = sub_274813C04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2748115C8(uint64_t a1)
{
  v2 = sub_274813C04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_274811604(uint64_t a1)
{
  v2 = sub_274813BB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_274811640(uint64_t a1)
{
  v2 = sub_274813BB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2748116B4(uint64_t a1)
{
  sub_2749FDDF4();
  sub_274810B18();
  return sub_2749FDE44();
}

uint64_t sub_274811708(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(a2 + 16);
  swift_beginAccess();
  type metadata accessor for SmartShortcutPickerDataSource(0);
  sub_2749FA8C4();
  swift_endAccess();
  v6 = v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter;
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  return v2;
}

void sub_2748117A8(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  v6 = sub_2748122C0(a1);
  v7 = sub_2748121CC(v6);
  v103.n128_u64[0] = v6;
  sub_2747828F8(v7);
  v8 = *(v6 + 16);
  if (v5 == 2)
  {
    v9 = 0;
    v10 = 32;
    while (1)
    {
      if (v8 == v9)
      {

        *(a2 + 41) = 0u;
        a2[1] = 0u;
        a2[2] = 0u;
        *a2 = 0u;
        return;
      }

      if (v9 >= *(v6 + 16))
      {
        break;
      }

      *&v15 = OUTLINED_FUNCTION_6_15((v6 + v10)).n128_u64[0];
      switch(v104.n128_u8[0])
      {
        case 1u:

          v16 = OUTLINED_FUNCTION_11_0();
          goto LABEL_11;
        case 2u:

          v16 = OUTLINED_FUNCTION_12();
          goto LABEL_11;
        case 3u:
          if (*&v103 == 0)
          {
            OUTLINED_FUNCTION_48_1(v11, v12, v13, v14, v15);

            v67 = OUTLINED_FUNCTION_66();
            OUTLINED_FUNCTION_39_6(v67, v68);
            OUTLINED_FUNCTION_23_9();
            sub_27478C4DC(v69, v70, v71);
            v72 = v104;
            *a2 = v103;
            a2[1] = v72;
            a2[2] = *v105.arr;
            *(a2 + 41) = *&v105.arr[9];
            return;
          }

          v16 = OUTLINED_FUNCTION_66();
          v18 = 3;
LABEL_11:
          sub_27478C4DC(v16, v17, v18);
          OUTLINED_FUNCTION_23_9();
          sub_27478C4DC(v19, v20, v21);
          v10 += 64;
          ++v9;
          break;
        default:
          v16 = OUTLINED_FUNCTION_66();
          v18 = 0;
          goto LABEL_11;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
    return;
  }

  v22 = 0;
  v23 = v5 != 3;
  v24 = v5 == 3;
  if (v3 | v4)
  {
    v24 = 0;
  }

  if (v4 != 1 || v3 != 0)
  {
    v23 = 1;
  }

  v94 = __PAIR64__(v23, v24);
  v26 = 32;
  while (2)
  {
    if (v8 == v22)
    {

      OUTLINED_FUNCTION_30_6(v59, v60, v61, v62, v63, v64, v65, v66, a2);
      return;
    }

    if (v22 >= *(v6 + 16))
    {
      goto LABEL_52;
    }

    *&v31 = OUTLINED_FUNCTION_6_15((v6 + v26)).n128_u64[0];
    switch(v104.n128_u8[0])
    {
      case 1u:
        if (v5 != 1)
        {
          v54 = OUTLINED_FUNCTION_0_23();
          v32 = OUTLINED_FUNCTION_14_4(v54, v55, 1);
          v34 = 1;
          goto LABEL_39;
        }

        if (v103.n128_u64[0] == v4 && v103.n128_u64[1] == v3)
        {
          OUTLINED_FUNCTION_48_1(v27, v28, v29, v30, v31);
          v80 = OUTLINED_FUNCTION_11_0();
          sub_27477D408(v80, v81, v82);
          v83 = OUTLINED_FUNCTION_11_0();
          sub_27477D408(v83, v84, v85);
          v86 = OUTLINED_FUNCTION_11_0();
          sub_27478C4DC(v86, v87, v88);
          v89 = OUTLINED_FUNCTION_11_0();
          sub_27478C4DC(v89, v90, v91);
        }

        else
        {
          v38 = OUTLINED_FUNCTION_99();
          v39 = OUTLINED_FUNCTION_32_7(v38);
          v40 = v39;
          OUTLINED_FUNCTION_48_1(v39, v41, v42, v43);
          v44 = OUTLINED_FUNCTION_11_0();
          v47 = OUTLINED_FUNCTION_14_4(v44, v45, v46);
          v49 = OUTLINED_FUNCTION_14_4(v47, v48, 1);
          sub_27478C4DC(v49, v50, 1u);
          v51 = OUTLINED_FUNCTION_11_0();
          sub_27478C4DC(v51, v52, v53);
          if ((v40 & 1) == 0)
          {
            sub_2747D21CC(&v103);
            goto LABEL_40;
          }
        }

        goto LABEL_50;
      case 2u:
        v35 = OUTLINED_FUNCTION_0_23();
        v32 = OUTLINED_FUNCTION_14_4(v35, v36, 2);
        v34 = 2;
        goto LABEL_39;
      case 3u:
        if (*&v103 != 0)
        {
          if ((v94 & 0x100000000) == 0)
          {
            OUTLINED_FUNCTION_48_1(v27, v28, v29, v30, v31);

            v78 = OUTLINED_FUNCTION_99();
            sub_27478C4DC(v78, v79, 3u);
            goto LABEL_48;
          }

          goto LABEL_38;
        }

        if ((v94 & 1) == 0)
        {
LABEL_38:
          v32 = OUTLINED_FUNCTION_0_23();
          v34 = 3;
LABEL_39:
          sub_27478C4DC(v32, v33, v34);
          v56 = OUTLINED_FUNCTION_3_30();
          sub_27478C4DC(v56, v57, v58);
LABEL_40:
          v26 += 64;
          ++v22;
          continue;
        }

        OUTLINED_FUNCTION_48_1(v27, v28, v29, v30, v31);

        v92 = OUTLINED_FUNCTION_99();
        OUTLINED_FUNCTION_39_6(v92, v93);
LABEL_48:
        OUTLINED_FUNCTION_23_9();
LABEL_49:
        sub_27478C4DC(v75, v76, v77);
LABEL_50:
        OUTLINED_FUNCTION_31_11(a2, v103, v104, a2, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103.n128_i64[0], v103.n128_i64[1], v104.n128_i64[0], v104.n128_i64[1], v105);
        return;
      default:
        if (!v5)
        {
          OUTLINED_FUNCTION_48_1(v27, v28, v29, v30, v31);

          v73 = OUTLINED_FUNCTION_99();
          sub_27478C4DC(v73, v74, 0);
          v75 = OUTLINED_FUNCTION_66();
          v77 = 0;
          goto LABEL_49;
        }

        v32 = OUTLINED_FUNCTION_0_23();
        v34 = 0;
        goto LABEL_39;
    }
  }
}

void sub_274811B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, __int128 a21, uint64_t a22, uint64_t a23, __int128 a24, __int128 a25, __int128 a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  OUTLINED_FUNCTION_28_8();
  a41 = v43;
  a42 = v44;
  v45 = sub_2748123B8();
  v46 = 0;
  v47 = MEMORY[0x277D84F90];
  v75 = v45;
  v76 = *(v45 + 16);
  v48 = 32;
  v49 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v76 == v46)
    {

      OUTLINED_FUNCTION_29_8();
      return;
    }

    if (v46 >= *(v45 + 16))
    {
      break;
    }

    v50 = *(v45 + v48);
    v51 = *(v45 + v48 + 16);
    v52 = *(v45 + v48 + 32);
    *(&a26 + 9) = *(v45 + v48 + 41);
    a25 = v51;
    a26 = v52;
    a24 = v50;
    v53 = *(v45 + v48 + 16);
    a19 = *(v45 + v48);
    a20 = v53;
    a21 = *(v45 + v48 + 32);
    *(&a21 + 9) = *(v45 + v48 + 41);
    v54 = *(*v42 + 160);
    sub_2747B24E0(&a24, &a11);
    v54(&a11, &a19);
    v55 = v47;
    if (a11 - 3 >= 2)
    {
      v55 = a27;
      if ((a11 & 0xFF00) == 0x100 && ((v56 = a27[2], v56 >= 4) ? (v57 = 4) : (v57 = a27[2]), v56 > 4))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A48, &unk_274A14670);
        v58 = *(type metadata accessor for SmartShortcutPickerEntry(0) - 8);
        v59 = *(v58 + 72);
        v60 = (*(v58 + 80) + 32) & ~*(v58 + 80);
        v61 = swift_allocObject();
        v62 = _swift_stdlib_malloc_size(v61);
        if (!v59)
        {
          goto LABEL_37;
        }

        if (v62 - v60 == 0x8000000000000000 && v59 == -1)
        {
          goto LABEL_38;
        }

        v61[2] = v57;
        v61[3] = 2 * ((v62 - v60) / v59);
        swift_arrayInitWithCopy();
        v55 = v61;
        v45 = v75;
        v47 = MEMORY[0x277D84F90];
      }

      else
      {
      }
    }

    sub_2747D21CC(&a24);
    v64 = v55[2];
    v65 = *(v49 + 16);
    v66 = v65 + v64;
    if (__OFADD__(v65, v64))
    {
      goto LABEL_33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v68 = *(v49 + 24) >> 1, v68 < v66))
    {
      if (v65 <= v66)
      {
        v69 = v65 + v64;
      }

      else
      {
        v69 = v65;
      }

      sub_274763E3C(isUniquelyReferenced_nonNull_native, v69, 1, v49);
      v49 = v70;
      v68 = *(v70 + 24) >> 1;
    }

    if (v55[2])
    {
      v71 = v68 - *(v49 + 16);
      type metadata accessor for SmartShortcutPickerEntry(0);
      if (v71 < v64)
      {
        goto LABEL_35;
      }

      swift_arrayInitWithCopy();

      if (v64)
      {
        v72 = *(v49 + 16);
        v73 = __OFADD__(v72, v64);
        v74 = v72 + v64;
        if (v73)
        {
          goto LABEL_36;
        }

        *(v49 + 16) = v74;
      }
    }

    else
    {

      if (v64)
      {
        goto LABEL_34;
      }
    }

    v48 += 64;
    ++v46;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

void sub_274811E1C()
{
  sub_2748112E4();
  v1 = SmartShortcutPickerDataSource.sections.getter();

  v2 = 0;
  v3 = *(v1 + 16);
  v4 = (v0 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter);
  v112 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = (v2 << 6) | 0x20; ; i += 64)
  {
    if (v3 == v2)
    {

      return;
    }

    if (v2 >= *(v1 + 16))
    {
      break;
    }

    *&v10 = OUTLINED_FUNCTION_6_15((v1 + i)).n128_u64[0];
    v11 = *(v4 + 16);
    if (v11 != 254)
    {
      if (v11 == 255)
      {
LABEL_43:
        OUTLINED_FUNCTION_48_1(v6, v7, v8, v9, v10);
      }

      else
      {
        v13 = *v4;
        v12 = v4[1];
        switch(v114)
        {
          case 1:
            if (v11 != 1)
            {
              v57 = OUTLINED_FUNCTION_12_13();
              sub_27481360C(v57, v58, v59);
              v60 = OUTLINED_FUNCTION_11_0();
              sub_27477D408(v60, v61, v62);
              v17 = OUTLINED_FUNCTION_11_0();
              goto LABEL_41;
            }

            if (v113 != v13 || *(&v113 + 1) != v12)
            {
              OUTLINED_FUNCTION_66();
              v39 = sub_2749FDCC4();
              v22 = v39;
              OUTLINED_FUNCTION_48_1(v39, v40, v41, v42);
              v43 = OUTLINED_FUNCTION_43_0();
              sub_27481360C(v43, v44, 1u);
              v45 = OUTLINED_FUNCTION_11_0();
              sub_27477D408(v45, v46, v47);
              v48 = OUTLINED_FUNCTION_11_0();
              sub_27478C4DC(v48, v49, v50);
              v34 = OUTLINED_FUNCTION_43_0();
              v36 = 1;
              goto LABEL_34;
            }

            OUTLINED_FUNCTION_48_1(v6, v7, v8, v9, v10);
            v85 = OUTLINED_FUNCTION_11_0();
            sub_27481360C(v85, v86, v87);
            v88 = OUTLINED_FUNCTION_11_0();
            sub_27477D408(v88, v89, v90);
            v91 = OUTLINED_FUNCTION_11_0();
            sub_27478C4DC(v91, v92, v93);
            v73 = OUTLINED_FUNCTION_11_0();
            goto LABEL_49;
          case 2:
            if (v11 != 2)
            {
              v51 = OUTLINED_FUNCTION_12_13();
              sub_27481360C(v51, v52, v53);
              v54 = OUTLINED_FUNCTION_12();
              sub_27477D408(v54, v55, v56);
              v17 = OUTLINED_FUNCTION_12();
              goto LABEL_41;
            }

            if (v113 == v13 && *(&v113 + 1) == v12)
            {
              OUTLINED_FUNCTION_48_1(v6, v7, v8, v9, v10);
              v76 = OUTLINED_FUNCTION_12();
              sub_27481360C(v76, v77, v78);
              v79 = OUTLINED_FUNCTION_12();
              sub_27477D408(v79, v80, v81);
              v82 = OUTLINED_FUNCTION_12();
              sub_27478C4DC(v82, v83, v84);
              v73 = OUTLINED_FUNCTION_12();
              goto LABEL_49;
            }

            OUTLINED_FUNCTION_66();
            v21 = sub_2749FDCC4();
            v22 = v21;
            OUTLINED_FUNCTION_48_1(v21, v23, v24, v25);
            v26 = OUTLINED_FUNCTION_43_0();
            sub_27481360C(v26, v27, 2u);
            v28 = OUTLINED_FUNCTION_12();
            sub_27477D408(v28, v29, v30);
            v31 = OUTLINED_FUNCTION_12();
            sub_27478C4DC(v31, v32, v33);
            v34 = OUTLINED_FUNCTION_43_0();
            v36 = 2;
LABEL_34:
            sub_27478C4DC(v34, v35, v36);
            if ((v22 & 1) == 0)
            {
              sub_2747D21CC(&v113);
              goto LABEL_42;
            }

            break;
          case 3:
            if (v113 == 0)
            {
              if (v11 != 3 || v12 | v13)
              {
                goto LABEL_40;
              }

              OUTLINED_FUNCTION_48_1(v6, v7, v8, v9, v10);
              OUTLINED_FUNCTION_23_9();
              sub_27481360C(v94, v95, v96);
              v97 = OUTLINED_FUNCTION_66();
              OUTLINED_FUNCTION_39_6(v97, v98);
            }

            else
            {
              v37 = v11 == 3 && v13 == 1;
              if (!v37 || v12)
              {
LABEL_40:
                v63 = OUTLINED_FUNCTION_12_13();
                sub_27477D408(v63, v64, v65);
                v17 = OUTLINED_FUNCTION_66();
                v19 = 3;
                goto LABEL_41;
              }

              OUTLINED_FUNCTION_48_1(v6, v7, v8, v9, v10);
              OUTLINED_FUNCTION_23_9();
              sub_27481360C(v99, v100, v101);
              v102 = OUTLINED_FUNCTION_66();
              sub_27478C4DC(v102, v103, 3u);
            }

            OUTLINED_FUNCTION_23_9();
LABEL_49:
            sub_27478C4DC(v73, v74, v75);
            break;
          default:
            if (!*(v4 + 16))
            {
              OUTLINED_FUNCTION_48_1(v6, v7, v8, v9, v10);
              v69 = OUTLINED_FUNCTION_43_0();
              sub_27481360C(v69, v70, 0);
              v71 = OUTLINED_FUNCTION_66();
              sub_27478C4DC(v71, v72, 0);
              v73 = OUTLINED_FUNCTION_43_0();
              v75 = 0;
              goto LABEL_49;
            }

            v14 = OUTLINED_FUNCTION_12_13();
            sub_27477D408(v14, v15, v16);
            v17 = OUTLINED_FUNCTION_66();
            v19 = 0;
LABEL_41:
            sub_27478C4DC(v17, v18, v19);
            v66 = OUTLINED_FUNCTION_12_13();
            sub_27478C4DC(v66, v67, v68);
            goto LABEL_42;
        }
      }

      v104 = v112;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v116 = v112;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_27476D6D8(0, *(v112 + 16) + 1, 1);
        v104 = v116;
      }

      v107 = *(v104 + 16);
      v106 = *(v104 + 24);
      if (v107 >= v106 >> 1)
      {
        sub_27476D6D8(v106 > 1, v107 + 1, 1);
        v104 = v116;
      }

      ++v2;
      *(v104 + 16) = v107 + 1;
      v112 = v104;
      v108 = (v104 + (v107 << 6));
      v109 = v113;
      v110 = v114;
      v111 = v115[0];
      *(v108 + 73) = *(v115 + 9);
      v108[3] = v110;
      v108[4] = v111;
      v108[2] = v109;
      goto LABEL_2;
    }

    if (v114 >= 2u && (v114 != 3 || v113 == 0))
    {
      goto LABEL_43;
    }

LABEL_42:
    ++v2;
  }

  __break(1u);
}

uint64_t static SmartShortcutPickerViewLayout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter);
  v3 = *(a1 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 8);
  v4 = *(a1 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 16);
  v12[0] = v2;
  v12[1] = v3;
  v13 = v4;
  v6 = *(a2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 8);
  v7 = *(a2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 16);
  v10[0] = *(a2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter);
  v5 = v10[0];
  v10[1] = v6;
  v11 = v7;
  sub_27481360C(v2, v3, v4);
  sub_27481360C(v10[0], v6, v7);
  v8 = sub_27481041C(v12, v10);
  sub_274813620(v5, v6, v7);
  sub_274813620(v2, v3, v4);
  return v8 & 1;
}

uint64_t sub_27481256C()
{
  v1 = (v0 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter);
  v2 = *(v0 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 16);
  if (v2 == 254)
  {
LABEL_9:
    v3 = 2;
  }

  else
  {
    if (v2 != 255)
    {
      v4 = *v1;
      v5 = v1[1];
      MEMORY[0x277C5FB60](1);
      switch(v2)
      {
        case 1:
          v6 = 1;
          goto LABEL_12;
        case 2:
          v6 = 3;
LABEL_12:
          MEMORY[0x277C5FB60](v6);
          OUTLINED_FUNCTION_32_1();

          return sub_2749FCE24();
        case 3:
          if (!(v4 | v5))
          {
            goto LABEL_9;
          }

          v3 = 4;
          return MEMORY[0x277C5FB60](v3);
        default:
          MEMORY[0x277C5FB60](0);
          break;
      }
    }

    v3 = 0;
  }

  return MEMORY[0x277C5FB60](v3);
}

uint64_t SmartShortcutPickerViewLayout.deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout__dataSource;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A030, &qword_274A16678);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_34_4(OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter);
  return v0;
}

uint64_t sub_2748126BC()
{
  sub_2749FDDF4();
  sub_27481256C();
  return sub_2749FDE44();
}

uint64_t sub_274812744(uint64_t a1)
{
  sub_2749FDDF4();
  sub_27481256C();
  return sub_2749FDE44();
}

uint64_t sub_2748127A8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SmartShortcutPickerViewLayout(0);
  result = sub_2749FA874();
  *a2 = result;
  return result;
}

uint64_t sub_2748127F4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 >= 2 && (v3 == 2 || !(v1 | v2)))
  {
    type metadata accessor for UserLibrarySmartShortcutPickerViewLayout(0);
    v6 = sub_2748112E4();
    v10 = 0uLL;
    v11 = -2;
    return sub_2748128CC(v6, &v10);
  }

  else
  {
    OUTLINED_FUNCTION_41_8(&v10);
    OUTLINED_FUNCTION_41_8(__src);
    sub_2747D2AC8(&v10, v8);
    v4 = sub_2748112E4();
    v5 = OUTLINED_FUNCTION_42_4();
    sub_27477D408(v1, v2, v3);
    sub_274812BC4(__src, v4, v8);
  }

  return v5;
}

uint64_t sub_2748128CC(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  v5 = *(a2 + 16);
  v7 = *a2;
  v8 = v5;
  sub_274811708(a1, &v7);
  return v4;
}

uint64_t sub_274812934@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  v4 = 3;
  switch(*(result + 16))
  {
    case 1:
      goto LABEL_5;
    case 2:
      goto LABEL_4;
    case 3:
      if (*result != 0)
      {
LABEL_4:
        v4 = 4;
        goto LABEL_5;
      }

      v5 = *(*(result + 48) + 16);
      sub_274811E1C();
      v7 = *(v6 + 16) + 1;
      v8 = 48;
      break;
    default:
      v4 = 2 * (*(v2 + OBJC_IVAR____TtC10WorkflowUI37StaccatoSmartShortcutPickerViewLayout_style + 88) > 1u);
      goto LABEL_5;
  }

  while (--v7)
  {
    v9 = *(v6 + v8);
    v8 += 64;
    if (v9 == 2)
    {

LABEL_11:
      v10 = 1;
      goto LABEL_13;
    }
  }

  if (v5 >= 5)
  {
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:
  v4 = v10 << 8;
LABEL_5:
  *a2 = v4;
  return result;
}

uint64_t sub_274812A34(void *__src, uint64_t a2, void *a3)
{
  memcpy((v3 + *a3), __src, 0x59uLL);
  v6[0] = 0;
  v6[1] = 0;
  v7 = -1;
  sub_274811708(a2, v6);
  return v3;
}

uint64_t sub_274812A8C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  OUTLINED_FUNCTION_41_8(v9);
  OUTLINED_FUNCTION_41_8(__src);
  sub_27477D408(v1, v2, v3);
  sub_2747D2AC8(v9, v7);
  v4 = sub_2748112E4();
  v5 = OUTLINED_FUNCTION_42_4();
  sub_274812BC4(__src, v4, v7);
  return v5;
}

uint64_t sub_274812B6C(uint64_t *a1)
{
  sub_27481308C(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

uint64_t sub_274812BC4(void *__src, uint64_t a2, __int128 *a3)
{
  v6 = *(a3 + 16);
  memcpy((v3 + OBJC_IVAR____TtC10WorkflowUI37ExpandedSmartShortcutPickerViewLayout_style), __src, 0x59uLL);
  v8 = *a3;
  v9 = v6;
  sub_274811708(a2, &v8);
  return v3;
}

void sub_274812C30(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(v2 + OBJC_IVAR____TtC10WorkflowUI37ExpandedSmartShortcutPickerViewLayout_style + 88) > 1u)
  {
    v7 = 2 * (*(a1 + 16) == 0);
  }

  else
  {
    v4 = *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter);
    v5 = *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 8);
    v6 = *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 16);
    if (v6 == 255)
    {
      sub_274813620(*(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter), *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 8), 0xFFu);
      sub_274813620(0, 0, 0xFFu);
      v8 = (sub_2748112E4() + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerDataSource_searchText);
      swift_beginAccess();
      v10 = *v8;
      v9 = v8[1];

      v11 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v11 = v10 & 0xFFFFFFFFFFFFLL;
      }

      v7 = v11 != 0;
    }

    else
    {
      sub_27481360C(*(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter), *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 8), *(v2 + OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter + 16));
      sub_274813620(v4, v5, v6);
      sub_274813620(0, 0, 0xFFu);
      v7 = 2;
    }
  }

  *a2 = v7;
}

void sub_274812D94(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v5 = sub_2748122C0(a1);
  v6 = sub_2748121CC(v5);
  v106.n128_u64[0] = v5;
  sub_2747828F8(v6);
  v7 = 0;
  v8 = *(v5 + 16);
  v10 = v3 != 1 || v2 != 0;
  if (v2 | v3)
  {
    v11 = 0;
  }

  else
  {
    v11 = v4 == 3;
  }

  LODWORD(v97) = v11;
  HIDWORD(v97) = v4 != 3 || v10;
  v12 = 32;
  while (2)
  {
    if (v8 == v7)
    {

      OUTLINED_FUNCTION_30_6(v58, v59, v60, v61, v62, v63, v64, v65, a2);
      return;
    }

    if (v7 >= *(v5 + 16))
    {
      __break(1u);
      return;
    }

    *&v17 = OUTLINED_FUNCTION_6_15((v5 + v12)).n128_u64[0];
    switch(v107.n128_u8[0])
    {
      case 1u:
        if (v4 != 1)
        {
          v53 = OUTLINED_FUNCTION_0_23();
          v18 = OUTLINED_FUNCTION_14_4(v53, v54, 1);
          v20 = 1;
          goto LABEL_37;
        }

        if (v106.n128_u64[0] != v3 || v106.n128_u64[1] != v2)
        {
          v39 = OUTLINED_FUNCTION_99();
          v40 = OUTLINED_FUNCTION_32_7(v39);
          v24 = v40;
          OUTLINED_FUNCTION_48_1(v40, v41, v42, v43);
          v44 = OUTLINED_FUNCTION_11_0();
          v47 = OUTLINED_FUNCTION_14_4(v44, v45, v46);
          v49 = OUTLINED_FUNCTION_14_4(v47, v48, 1);
          sub_27478C4DC(v49, v50, 1u);
          v35 = OUTLINED_FUNCTION_11_0();
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_48_1(v13, v14, v15, v16, v17);
        v85 = OUTLINED_FUNCTION_11_0();
        sub_27477D408(v85, v86, v87);
        v88 = OUTLINED_FUNCTION_11_0();
        sub_27477D408(v88, v89, v90);
        v91 = OUTLINED_FUNCTION_11_0();
        sub_27478C4DC(v91, v92, v93);
        v82 = OUTLINED_FUNCTION_11_0();
        goto LABEL_43;
      case 2u:
        if (v4 != 2)
        {
          v51 = OUTLINED_FUNCTION_0_23();
          v18 = OUTLINED_FUNCTION_14_4(v51, v52, 2);
          v20 = 2;
          goto LABEL_37;
        }

        if (v106.n128_u64[0] != v3 || v106.n128_u64[1] != v2)
        {
          v22 = OUTLINED_FUNCTION_99();
          v23 = OUTLINED_FUNCTION_32_7(v22);
          v24 = v23;
          OUTLINED_FUNCTION_48_1(v23, v25, v26, v27);
          v28 = OUTLINED_FUNCTION_12();
          v31 = OUTLINED_FUNCTION_14_4(v28, v29, v30);
          v33 = OUTLINED_FUNCTION_14_4(v31, v32, 2);
          sub_27478C4DC(v33, v34, 2u);
          v35 = OUTLINED_FUNCTION_12();
LABEL_31:
          sub_27478C4DC(v35, v36, v37);
          if (v24)
          {
            goto LABEL_44;
          }

          sub_2747D21CC(&v106);
LABEL_38:
          v12 += 64;
          ++v7;
          continue;
        }

        OUTLINED_FUNCTION_48_1(v13, v14, v15, v16, v17);
        v73 = OUTLINED_FUNCTION_12();
        sub_27477D408(v73, v74, v75);
        v76 = OUTLINED_FUNCTION_12();
        sub_27477D408(v76, v77, v78);
        v79 = OUTLINED_FUNCTION_12();
        sub_27478C4DC(v79, v80, v81);
        v82 = OUTLINED_FUNCTION_12();
LABEL_43:
        sub_27478C4DC(v82, v83, v84);
LABEL_44:

LABEL_48:
        OUTLINED_FUNCTION_31_11(a2, v106, v107, a2, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106.n128_i64[0], v106.n128_i64[1], v107.n128_i64[0], v107.n128_i64[1], v108);
        return;
      case 3u:
        if (*&v106 == 0)
        {
          if (v97)
          {
            OUTLINED_FUNCTION_48_1(v13, v14, v15, v16, v17);

            v94 = OUTLINED_FUNCTION_99();
            OUTLINED_FUNCTION_39_6(v94, v95);
            goto LABEL_46;
          }
        }

        else if ((v97 & 0x100000000) == 0)
        {
          OUTLINED_FUNCTION_48_1(v13, v14, v15, v16, v17);

          v71 = OUTLINED_FUNCTION_99();
          sub_27478C4DC(v71, v72, 3u);
LABEL_46:
          OUTLINED_FUNCTION_23_9();
LABEL_47:
          sub_27478C4DC(v68, v69, v70);
          goto LABEL_48;
        }

        v18 = OUTLINED_FUNCTION_0_23();
        v20 = 3;
        goto LABEL_37;
      default:
        if (v4)
        {
          v18 = OUTLINED_FUNCTION_0_23();
          v20 = 0;
LABEL_37:
          sub_27478C4DC(v18, v19, v20);
          v55 = OUTLINED_FUNCTION_3_30();
          sub_27478C4DC(v55, v56, v57);
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_48_1(v13, v14, v15, v16, v17);

        v66 = OUTLINED_FUNCTION_99();
        sub_27478C4DC(v66, v67, 0);
        v68 = OUTLINED_FUNCTION_66();
        v70 = 0;
        goto LABEL_47;
    }
  }
}

uint64_t sub_27481308C(uint64_t *a1)
{
  v3 = OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout__dataSource;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A030, &qword_274A16678);
  OUTLINED_FUNCTION_1_2();
  (*(v4 + 8))(v1 + v3);
  OUTLINED_FUNCTION_34_4(OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter);
  OUTLINED_FUNCTION_16_0(*a1);
  return v1;
}

uint64_t _s10WorkflowUI29SmartShortcutPickerViewLayoutCfD_0()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout__dataSource;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A030, &qword_274A16678);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_34_4(OBJC_IVAR____TtC10WorkflowUI29SmartShortcutPickerViewLayout_filter);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

unint64_t sub_274813234(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    a4(0);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_27481330C()
{
  OUTLINED_FUNCTION_37_6();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A38, &unk_274A0FC30);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_40_7(v1);
  OUTLINED_FUNCTION_38_6(v2 / 8);
  return v0;
}

uint64_t sub_274813418()
{
  OUTLINED_FUNCTION_37_6();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967A58, &qword_274A0FC60);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_40_7(v1);
  OUTLINED_FUNCTION_38_6(v2 / 64);
  return v0;
}

uint64_t sub_274813484()
{
  OUTLINED_FUNCTION_37_6();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_40_7(v3);
  *(v0 + 16) = v2;
  *(v0 + 24) = (2 * (v4 / 8)) | 1;
  return v0;
}

uint64_t sub_274813598()
{
  OUTLINED_FUNCTION_37_6();
  if (!v0)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A120, &qword_274A16A58);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_40_7(v1);
  OUTLINED_FUNCTION_38_6(v2 / 40);
  return v0;
}

uint64_t sub_27481360C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_27477D408(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_274813620(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_27478C4DC(a1, a2, a3);
  }

  return a1;
}

unint64_t sub_274813638()
{
  result = qword_28096A038;
  if (!qword_28096A038)
  {
    type metadata accessor for SmartShortcutPickerViewLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A038);
  }

  return result;
}

void sub_2748136B8(uint64_t a1, __n128 a2)
{
  sub_274813864(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_274813864(uint64_t a1, __n128 a2)
{
  if (!qword_28096A050)
  {
    type metadata accessor for SmartShortcutPickerDataSource(255);
    v2 = sub_2749FA924();
    if (!v3)
    {
      atomic_store(v2, &qword_28096A050);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10WorkflowUI29SmartShortcutPickerViewLayoutC13SectionFilterO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2748139EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 > 3)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274813A34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -2 - a2;
    }
  }

  return result;
}

uint64_t sub_274813A80(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 16) = -a2;
  }

  return result;
}

unint64_t sub_274813ABC()
{
  result = qword_28096A098;
  if (!qword_28096A098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A098);
  }

  return result;
}

unint64_t sub_274813B10()
{
  result = qword_28096A0C0;
  if (!qword_28096A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A0C0);
  }

  return result;
}

uint64_t sub_274813B64(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

unint64_t sub_274813BB0()
{
  result = qword_28096A0D0;
  if (!qword_28096A0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A0D0);
  }

  return result;
}

unint64_t sub_274813C04()
{
  result = qword_28096A0D8;
  if (!qword_28096A0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A0D8);
  }

  return result;
}

unint64_t sub_274813C58()
{
  result = qword_28096A0E0;
  if (!qword_28096A0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A0E0);
  }

  return result;
}

unint64_t sub_274813CAC()
{
  result = qword_28096A0E8;
  if (!qword_28096A0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A0E8);
  }

  return result;
}

unint64_t sub_274813D00()
{
  result = qword_28096A110;
  if (!qword_28096A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A110);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerViewLayout.SectionFilter.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SmartShortcutPickerNavigationDestination(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SmartShortcutPickerViewLayout.SectionFilter.SectionCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_274813F54()
{
  result = qword_28096A138;
  if (!qword_28096A138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A138);
  }

  return result;
}

unint64_t sub_274813FAC()
{
  result = qword_28096A140;
  if (!qword_28096A140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A140);
  }

  return result;
}

unint64_t sub_274814004()
{
  result = qword_28096A148;
  if (!qword_28096A148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A148);
  }

  return result;
}

unint64_t sub_27481405C()
{
  result = qword_28096A150;
  if (!qword_28096A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A150);
  }

  return result;
}

unint64_t sub_2748140B4()
{
  result = qword_28096A158;
  if (!qword_28096A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A158);
  }

  return result;
}

unint64_t sub_27481410C()
{
  result = qword_28096A160;
  if (!qword_28096A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A160);
  }

  return result;
}

unint64_t sub_274814164()
{
  result = qword_28096A168;
  if (!qword_28096A168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A168);
  }

  return result;
}

unint64_t sub_2748141BC()
{
  result = qword_28096A170;
  if (!qword_28096A170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A170);
  }

  return result;
}

unint64_t sub_274814214()
{
  result = qword_28096A178;
  if (!qword_28096A178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A178);
  }

  return result;
}

unint64_t sub_27481426C()
{
  result = qword_28096A180;
  if (!qword_28096A180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A180);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_7(uint64_t a1, uint64_t a2)
{

  return sub_2749FDC04();
}

uint64_t sub_274814318(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  OUTLINED_FUNCTION_30_0();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_274814344()
{
  OUTLINED_FUNCTION_79();
  sub_2749FD0A4();
  *(v0 + 32) = sub_2749FD094();
  v2 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_2748143D4, v2, v1);
}

uint64_t sub_2748143D4()
{
  v1 = *(v0 + 16);

  v1(v2);
  v3 = *(v0 + 40);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_274814490(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_30_0();
    sub_2749F9B44();
  }

  sub_2749F9BF4();
  OUTLINED_FUNCTION_9();
  v7 = *(v6 + 8);

  return v7(a1, v5);
}

uint64_t sub_274814514@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749F9BF4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
  if (v9)
  {
    v14 = v5;
    v10 = v9;
    sub_2749F9B84();

    return (*(v14 + 32))(a1, v8, v3);
  }

  else
  {
    v12 = *MEMORY[0x277D7BD38];
    v13 = *(v5 + 104);

    return v13(a1, v12, v3);
  }
}

void sub_274814634(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_bottomInset) != a1)
  {
    swift_getObjectType();

    sub_2748152F4(v1);
  }
}

void sub_274814684(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_bottomInset);
  *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_bottomInset) = a1;
  sub_274814634(v2);
}

void sub_27481469C(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_toolbar);
  *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_toolbar) = a1;
  v3 = a1;

  sub_2748146F4();
}

void sub_2748146F4()
{
  OUTLINED_FUNCTION_48();
  v1 = sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
  v12 = sub_2749FD404();
  OUTLINED_FUNCTION_86();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  OUTLINED_FUNCTION_5_21(v13);
  OUTLINED_FUNCTION_49_1(COERCE_DOUBLE(1107296256));
  v21[2] = v14;
  v21[3] = &block_descriptor_93_0;
  v15 = _Block_copy(v21);
  v16 = v0;
  sub_2749FCA94();
  OUTLINED_FUNCTION_7_14();
  sub_274720EB8(v17, 255, v18, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
  sub_27473FCD0();
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v11, v7, v15);
  _Block_release(v15);

  (*(v3 + 8))(v7, v1);
  v19 = OUTLINED_FUNCTION_34_2();
  v20(v19);

  OUTLINED_FUNCTION_46();
}

void sub_27481493C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerEmbeddedToolbarView);
  if (v1)
  {
    v3 = v1;
    sub_2747F3FC8(v2);
  }
}

id sub_274814998(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneNavigationController] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneRootViewController] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_bottomInset] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_toolbar] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerEmbeddedToolbarView] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_actionDetailsSheetView] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover] = 0;
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedInspectorPaneContentViewController] = 0;
  sub_2749F9724();
  *&v2[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_dataSource] = sub_2749F96D4();

  if (a2)
  {
    v5 = WFSerializableHomeIdentifier();
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  sub_2749F96C4();

  v8.receiver = v2;
  v8.super_class = type metadata accessor for WFActionDrawerCoordinator();
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

void sub_274814B60()
{
  OUTLINED_FUNCTION_48();
  v2 = v1;
  v3 = sub_2749F9BF4();
  OUTLINED_FUNCTION_43();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  if (*(v0 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode) == 1)
  {
    v10 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
    if (v10)
    {
      v11 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
      if (v11)
      {
        if (v2)
        {
          v12 = objc_opt_self();
          v13 = v10;
          v14 = v11;
          v15 = [v12 systemShortcutsUserDefaults];
          v16 = [v15 BOOLForKey_];

          if ((v16 & 1) == 0)
          {
            sub_274814F3C();
            v17 = OUTLINED_FUNCTION_25_7();
            v18(v17);
            OUTLINED_FUNCTION_32_2();
            v19 = swift_allocObject();
            *(v19 + 16) = v13;
            *(v19 + 24) = v14;
            v20 = v13;
            v21 = v14;
            sub_2749F9B44();

            (*(v5 + 8))(v9, v3);
            goto LABEL_9;
          }
        }

        else
        {
          v22 = v10;
          v23 = v11;
        }

        v24 = OUTLINED_FUNCTION_25_7();
        v25(v24);
        sub_274814490(v9);
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_46();
}

id sub_274814D64(uint64_t a1, uint64_t a2)
{
  v3 = sub_2749F9BF4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  sub_2749F9B84();
  (*(v4 + 104))(v7, *MEMORY[0x277D7BD50], v3);
  sub_274720EB8(&qword_28096A288, 255, MEMORY[0x277D7BD58], MEMORY[0x277D7BD70]);
  sub_2749FCEF4();
  sub_2749FCEF4();
  v10 = *(v4 + 8);
  v10(v7, v3);
  result = (v10)(v9, v3);
  if (v12[1] == v12[0])
  {
    [*(a2 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView) setContentOffset_];
    return sub_27483F8CC();
  }

  return result;
}

void sub_274814F3C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView);
    v3 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
    v4 = *&v2[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar];
    v15 = v2;
    v5 = [v4 searchTextField];
    sub_27471CF08(0, &unk_28096B150, 0x277D75A00);
    v6 = sub_2749FCF74();
    v7 = OUTLINED_FUNCTION_24_1();
    [v7 v8];

    v9 = [*&v2[v3] searchTextField];
    sub_2748205A0(0, 0xE000000000000000, v9);

    [*&v2[v3] resignFirstResponder];
    v10 = [*&v2[v3] delegate];
    if (v10)
    {
      if ([v10 respondsToSelector_])
      {
        v11 = *&v2[v3];
        v12 = sub_2749FCD64();
        v13 = OUTLINED_FUNCTION_24_1();
        [v13 v14];

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    sub_2749585BC(0);
  }
}

id sub_274815100()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
  if (v1)
  {
    return [*(*(v1 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView) + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar) becomeFirstResponder];
  }

  return result;
}

void sub_27481514C(unsigned int *a1)
{
  sub_2749F9BF4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  if (*(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode) == 1)
  {
    (*(v4 + 104))(v7, *a1);
    sub_274814490(v7);
  }
}

void sub_274815210(char a1)
{
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v4 = *&v1[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView];
    if (v4)
    {
      OUTLINED_FUNCTION_32_2();
      v5 = swift_allocObject();
      *(v5 + 16) = v1;
      *(v5 + 24) = ObjectType;
      v6 = v4;
      v7 = v1;
      sub_2749F9AB4();
    }
  }

  else
  {

    sub_2748152F4(v1);
  }
}

void sub_2748152F4(uint64_t a1)
{
  v2 = sub_2749F9BF4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  v9 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView;
  v10 = *(a1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
  if (v10)
  {
    v11 = v10;
    sub_2749F9AF4();
  }

  if (swift_unknownObjectWeakLoadStrong() && (v12 = sub_2748B630C(), swift_unknownObjectRelease(), v12))
  {
    v13 = *(a1 + v9);
    if (v13)
    {
      v14 = v13;
      sub_2749F9B74();
    }

    sub_274814514(v8);
    v15 = *(v3 + 104);
    v15(v6, *MEMORY[0x277D7BD50], v2);
    sub_274720EB8(&qword_28096A288, 255, MEMORY[0x277D7BD58], MEMORY[0x277D7BD70]);
    sub_2749FCEF4();
    sub_2749FCEF4();
    v16 = *(v3 + 8);
    v16(v6, v2);
    v16(v8, v2);
    if (v22 == v21)
    {
      v15(v8, *MEMORY[0x277D7BD48], v2);
      sub_274814490(v8);
    }
  }

  else
  {
    v17 = *(a1 + v9);
    if (v17)
    {
      v20 = v17;
      sub_2749F9B74();
      v18 = v20;
    }
  }
}

void sub_2748155C8(void *a1, void *a2)
{
  v3 = v2;
  swift_getObjectType();
  sub_2749FA524();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v6 = sub_2749F9BF4();
  OUTLINED_FUNCTION_43();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController;
  v14 = *(v2 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
  v15 = *(v2 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode);
  *(v2 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode) = 1;
  v102 = a1;
  if (v15 == 2)
  {
    if (v14)
    {
      v21 = v14;
      [v21 willMoveToParentViewController_];
      v22 = [v21 view];
      if (!v22)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v23 = v22;
      [v22 removeFromSuperview];

      [v21 removeFromParentViewController];
      v24 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneNavigationController;
      v25 = *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneNavigationController);
      if (v25)
      {
        [v25 willMoveToParentViewController_];
        v26 = *(v3 + v24);
        if (v26)
        {
          v27 = [v26 view];
          if (!v27)
          {
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }

          v28 = v27;
          [v27 removeFromSuperview];

          v29 = *(v3 + v24);
          if (v29)
          {
            [v29 &selRef_intrinsicContentSize + 3];
          }
        }
      }

      v30 = *(v3 + v13);
      *(v3 + v13) = 0;

      v31 = *(v3 + v24);
      *(v3 + v24) = 0;

      v32 = *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneRootViewController);
      *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneRootViewController) = 0;

      v33 = *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedInspectorPaneContentViewController);
      *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedInspectorPaneContentViewController) = 0;

      v34 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover;
      v35 = *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover);
      if (v35)
      {
        v36 = v35;
        [v36 dismissViewControllerAnimated:1 completion:0];
      }

      v37 = *(v3 + v34);
      *(v3 + v34) = 0;

      a1 = v102;
    }

LABEL_18:
    v99 = v14;
    v100 = v6;
    (*(v8 + 104))(v12, *MEMORY[0x277D7BD50], v6);
    v39 = objc_allocWithZone(sub_2749F9BB4());
    v40 = sub_2749F9B04();
    OUTLINED_FUNCTION_8_17();
    sub_274720EB8(v41, v42, v43, &unk_274A16F78);
    swift_unknownObjectRetain();
    sub_2749F9B94();
    sub_2749F9B14();
    sub_2749F9AC4();
    v44 = v40;
    v45 = [a1 view];
    if (v45)
    {
      v46 = v45;
      [v45 bounds];
      OUTLINED_FUNCTION_36();

      v47 = OUTLINED_FUNCTION_4_0();
      [v48 v49];
      [v44 setAutoresizingMask_];

      v50 = *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
      *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView) = v44;
      v51 = v44;

      type metadata accessor for WFDrawerSearchControlsView();
      v52 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      [v52 setAutoresizingMask_];
      v53 = sub_2749F9B64();
      [v53 frame];

      v54 = sub_2749F9B64();
      [v54 bounds];
      v56 = v55;
      v58 = v57;

      [v52 sizeThatFits_];
      CGSizeMake();
      [v52 frame];
      [v52 setFrame_];

      v59 = sub_2749F9B64();
      [v59 addSubview_];

      objc_allocWithZone(type metadata accessor for WFDrawerViewController());
      v60 = v52;

      v62 = sub_27483E180(v61, v52);
      *&v62[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_delegate + 8] = &off_288395648;
      swift_unknownObjectWeakAssign();
      v63 = v62;
      v64 = [v63 view];
      if (v64)
      {
        v65 = v64;
        [v64 setAutoresizingMask_];

        v66 = [v63 view];
        if (v66)
        {
          v67 = v66;
          v68 = sub_2749F9AE4();
          [v68 frame];
          OUTLINED_FUNCTION_36();

          v69 = OUTLINED_FUNCTION_4_0();
          [v70 v71];

          v72 = sub_2749F9AE4();
          v73 = [v63 view];
          if (v73)
          {
            v74 = v73;
            [v72 addSubview_];

            v75 = *&v63[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView];
            sub_2749F9AD4();
            sub_2748152F4(v3);
            v76 = *(v3 + v13);
            *(v3 + v13) = v63;
            v77 = v63;

            v78 = *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_toolbar);
            if (v78)
            {
              v79 = objc_allocWithZone(type metadata accessor for WFDrawerEmbeddedToolbarView());
              v80 = v78;
              v81 = sub_2747F2F2C(v80);
              v82 = sub_2749F9B64();
              [v82 bounds];
              OUTLINED_FUNCTION_36();

              v103.origin.x = OUTLINED_FUNCTION_4_0();
              CGRectGetWidth(v103);
              [v81 setFrame_];
              [v81 setAutoresizingMask_];

              v83 = sub_2749F9B64();
              [v83 addSubview_];

              v84 = *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerEmbeddedToolbarView);
              *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerEmbeddedToolbarView) = v81;
              v85 = v81;

              sub_2747F3FC8(v86);
            }

            if (!a2)
            {
              v88 = v102;
              v91 = [v102 view];
              if (v91)
              {
                v90 = v91;
                [v91 addSubview_];
                goto LABEL_29;
              }

              goto LABEL_46;
            }

            v87 = a2;
            v88 = v102;
            v89 = [v102 view];
            if (v89)
            {
              v90 = v89;
              [v89 insertSubview:v51 belowSubview:v87];

LABEL_29:
              [v88 addChildViewController_];
              [v77 didMoveToParentViewController_];
              sub_2749FD374();
              sub_2749FA514();
              sub_2749FD384();

              v14 = v99;
              v6 = v100;
              goto LABEL_40;
            }

LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

LABEL_44:
          __break(1u);
          goto LABEL_45;
        }

LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_43;
  }

  if (v15 != 1)
  {
    v38 = v14;
    goto LABEL_18;
  }

  if (!v14)
  {
LABEL_40:
    sub_274814514(v12);
    sub_274817A64(v12, 1);

    (*(v8 + 8))(v12, v6);
    return;
  }

  v16 = v14;
  v17 = [v16 parentViewController];
  if (v17)
  {
    v18 = v17;
    sub_27471CF08(0, &unk_28159E510, 0x277D75D28);
    v19 = v102;
    v20 = sub_2749FD604();

    if (v20)
    {

LABEL_39:
      goto LABEL_40;
    }
  }

  [v16 willMoveToParentViewController_];
  v92 = [v16 view];
  if (!v92)
  {
    goto LABEL_48;
  }

  v93 = v92;
  [v92 removeFromSuperview];

  [v16 removeFromParentViewController];
  [v102 addChildViewController_];
  if (a2)
  {
    v94 = a2;
    v95 = [v102 view];
    if (v95)
    {
      v96 = v95;
      v97 = [v16 view];

      if (v97)
      {
        [v96 insertSubview:v97 belowSubview:v94];

LABEL_38:
        [v16 didMoveToParentViewController_];
        goto LABEL_39;
      }

      goto LABEL_50;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v98 = [v102 view];
  if (!v98)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v96 = v98;
  v97 = [v16 view];

  if (v97)
  {
    [v96 addSubview_];
    goto LABEL_38;
  }

LABEL_53:
  __break(1u);
}

void sub_274815FE8(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController;
  v5 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
  v6 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode);
  *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode) = 2;
  if (v6 == 1)
  {
    if (v5)
    {
      v21 = v5;
      [v21 willMoveToParentViewController_];
      v22 = [v21 view];
      if (!v22)
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v23 = v22;
      [v22 removeFromSuperview];

      [v21 removeFromParentViewController];
      v24 = *(v2 + v4);
      *(v2 + v4) = 0;

      v25 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView;
      v26 = *(v2 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
      if (v26)
      {
        v27 = v26;
        [v27 removeFromSuperview];
      }

      v28 = *(v2 + v25);
      *(v2 + v25) = 0;
    }

LABEL_17:
    v30 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneNavigationController;
    v31 = *(v2 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneNavigationController);
    if (v31)
    {
      v32 = v31;
      [v32 willMoveToParentViewController_];
      v33 = [v32 view];
      if (!v33)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v34 = v33;
      [v33 removeFromSuperview];

      [v32 removeFromParentViewController];
      v35 = *(v2 + v30);
      *(v2 + v30) = 0;
    }

    v36 = objc_allocWithZone(type metadata accessor for WFDrawerViewController());

    v38 = sub_27483E180(v37, 0);
    *&v38[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_delegate + 8] = &off_288395648;
    swift_unknownObjectWeakAssign();
    v39 = [v38 view];
    if (v39)
    {
      v40 = v39;
      v64 = v5;
      v41 = objc_allocWithZone(MEMORY[0x277D75348]);
      v42 = sub_2747CA0C4(sub_274816624, 0);
      [v40 setBackgroundColor_];

      v43 = *(v2 + v4);
      *(v2 + v4) = v38;
      v44 = v38;

      v45 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneRootViewController;
      v46 = *(v2 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneRootViewController);
      v47 = a1;
      if (v46)
      {
        v48 = *(v2 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneRootViewController);
        v49 = v48;
      }

      else
      {
        v49 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
        v48 = 0;
        v46 = *(v2 + v45);
      }

      *(v2 + v45) = v49;
      v50 = v49;
      v51 = v48;

      sub_274817338(v44);
      v52 = [objc_allocWithZone(WFComposeNavigationController) initWithRootViewController_];
      v53 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
      v54 = [v50 navigationItem];
      v55 = v53;
      [v54 setScrollEdgeAppearance_];

      v56 = [v50 navigationItem];
      [v56 setCompactScrollEdgeAppearance_];

      v57 = v52;
      [a1 addChildViewController_];
      v58 = [a1 view];
      if (v58)
      {
        v59 = v58;
        v60 = [v57 view];

        if (v60)
        {
          [v59 addSubview_];

          [v57 didMoveToParentViewController_];
          *(v2 + v30) = v57;
          goto LABEL_27;
        }

        goto LABEL_33;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v6 != 2)
  {
    v29 = v5;
    goto LABEL_17;
  }

  if (!v5)
  {
    OUTLINED_FUNCTION_56_1();
    return;
  }

  v7 = v5;
  v8 = [v7 parentViewController];
  if (v8)
  {
    v9 = v8;
    sub_27471CF08(0, &unk_28159E510, 0x277D75D28);
    v10 = a1;
    v11 = sub_2749FD604();

    if (v11)
    {
      goto LABEL_10;
    }
  }

  [v7 willMoveToParentViewController_];
  v12 = [v7 view];
  if (!v12)
  {
    goto LABEL_36;
  }

  v13 = v12;
  [v12 removeFromSuperview];

  [v7 removeFromParentViewController];
  [a1 addChildViewController_];
  v14 = [a1 view];
  if (!v14)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v15 = v14;
  v16 = [v7 view];
  if (!v16)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v17 = v16;
  [v15 addSubview_];

  [v7 didMoveToParentViewController_];
LABEL_10:
  v18 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  v19 = [v7 navigationItem];
  v63 = v18;
  [v19 setScrollEdgeAppearance_];

  v20 = [v7 navigationItem];
  [v20 setCompactScrollEdgeAppearance_];

LABEL_27:
  OUTLINED_FUNCTION_56_1();
}

id sub_274816624(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = [objc_opt_self() systemGray4Color];
    v2 = [v1 colorWithAlphaComponent_];

    return v2;
  }

  else
  {
    v4 = objc_allocWithZone(MEMORY[0x277D75348]);

    return [v4 initWithRed:0.969 green:0.969 blue:0.976 alpha:1.0];
  }
}

void sub_2748166E4()
{
  v1 = v0;
  OUTLINED_FUNCTION_1_18();
  v3 = v2;
  v5 = v4;
  sub_2749FA524();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v7 = sub_2749F9CB4();
  OUTLINED_FUNCTION_43();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  sub_2749F9BF4();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v19 = v18 - v17;
  v20 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
  if (!v20)
  {
    goto LABEL_34;
  }

  v103 = v19;
  v104 = v16;
  v105 = v15;
  sub_2749F9D24();
  v108 = swift_dynamicCastClass();
  if (v108)
  {
    v21 = v5;
    if (v3)
    {
LABEL_4:
      v106 = v20;
      [v5 setModalPresentationStyle_];
      if (v108)
      {
        v22 = v108;
        sub_2749F9D04();
        CGSizeMake();
        sub_2749F9CF4();
        [v5 setPreferredContentSize_];
      }

      else
      {
        [v5 setPreferredContentSize_];
      }

      v25 = [v5 popoverPresentationController];
      if (!v25)
      {
LABEL_13:
        [v106 presentViewController:v5 animated:1 completion:0];
        v38 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover);
        *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover) = v5;
        v39 = v5;

        if (v108)
        {
          OUTLINED_FUNCTION_86();
          v40 = swift_allocObject();
          OUTLINED_FUNCTION_29_9(v40);

          sub_2749F9CE4();
        }

        goto LABEL_15;
      }

      v26 = v25;
      [v25 setDelegate_];
      v27 = v106;
      v28 = [v27 view];
      v29 = OUTLINED_FUNCTION_24_1();
      [v29 v30];

      v31 = [v27 view];
      if (v31)
      {
        v32 = OUTLINED_FUNCTION_26_8();
        [v33 v34];
        OUTLINED_FUNCTION_36();

        v35 = OUTLINED_FUNCTION_4_0();
        [v36 v37];

        goto LABEL_13;
      }

      __break(1u);
      goto LABEL_46;
    }
  }

  else
  {
    v108 = 0;
    if (v3)
    {
      goto LABEL_4;
    }
  }

  v23 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
  v102 = v20;
  v24 = v20;
  if (v23)
  {
    v107 = [v23 superview];
  }

  else
  {
    v107 = 0;
  }

  type metadata accessor for WFPreviewNavigationController();
  v43 = swift_dynamicCastClass();
  if (v43)
  {
    v44 = v43;
    v100 = *(v104 + 104);
    v100(v103, *MEMORY[0x277D7BD50], v105);
    v45 = objc_allocWithZone(sub_2749F9BB4());
    v46 = v5;
    v47 = sub_2749F9B04();
    sub_2749F9BA4();
    sub_2749F9B14();
    sub_2749F9AC4();
    v48 = v47;
    if (v107)
    {
      [v107 bounds];
      OUTLINED_FUNCTION_36();
    }

    else
    {
      v107 = 0;
    }

    v50 = OUTLINED_FUNCTION_4_0();
    [v51 v52];
    [v47 setAutoresizingMask_];

    (*(v9 + 104))(v13, *MEMORY[0x277D7BD90], v7);
    sub_2749F9B34();
    [v107 addSubview_];
    v53 = v46;
    v54 = [v44 view];
    if (!v54)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v55 = v54;
    v56 = sub_2749F9AE4();
    [v56 frame];
    OUTLINED_FUNCTION_36();

    v57 = OUTLINED_FUNCTION_4_0();
    [v58 v59];

    v60 = [v44 view];
    if (!v60)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v61 = v60;
    [v60 setAutoresizingMask_];

    v62 = sub_2749F9AE4();
    v63 = [v44 view];
    if (!v63)
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v64 = v63;
    v65 = OUTLINED_FUNCTION_24_1();
    [v65 v66];

    v67 = *&v44[OBJC_IVAR___WFPreviewNavigationController_rootViewController];
    type metadata accessor for WFIconPickerViewController();
    v68 = swift_dynamicCastClass();
    if (v68)
    {
      v69 = *(v68 + OBJC_IVAR___WFIconPickerViewController_gridView);
      v70 = v67;
      v71 = v69;
      sub_2749F9AD4();
    }

    v72 = [v102 parentViewController];
    if (v72)
    {
      v73 = v72;
      [v72 addChildViewController_];
      [v44 didMoveToParentViewController_];
    }

    v100(v103, *MEMORY[0x277D7BD40], v105);
    OUTLINED_FUNCTION_30_0();
    sub_2749F9B44();
    (*(v104 + 8))(v103, v105);
    sub_2749FD374();
    sub_2749FA514();
    sub_2749FD384();

LABEL_34:
    OUTLINED_FUNCTION_31_12();
    return;
  }

  if (v108)
  {
    v49 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_actionDetailsSheetView;
    if (!*(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_actionDetailsSheetView))
    {
      v101 = *(v104 + 104);
      v101(v103, *MEMORY[0x277D7BD50], v105);
      v74 = objc_allocWithZone(sub_2749F9BB4());
      v75 = sub_2749F9B04();
      OUTLINED_FUNCTION_8_17();
      sub_274720EB8(v76, v77, v78, &unk_274A16F78);
      swift_unknownObjectRetain();
      sub_2749F9B94();
      sub_2749F9B14();
      v79 = v108;
      sub_2749F9B24();
      v80 = v75;
      [v80 setAutoresizingMask_];
      if (v107)
      {
        [v107 bounds];
      }

      else
      {
        v107 = 0;
        v81 = *MEMORY[0x277CBF3A0];
        v82 = *(MEMORY[0x277CBF3A0] + 8);
        v83 = *(MEMORY[0x277CBF3A0] + 16);
        v84 = *(MEMORY[0x277CBF3A0] + 24);
      }

      [v80 setFrame_];

      [v107 addSubview_];
      v85 = v79;
      v86 = [v85 view];
      if (!v86)
      {
        goto LABEL_49;
      }

      v87 = v86;
      v88 = sub_2749F9AE4();
      [v88 frame];
      OUTLINED_FUNCTION_36();

      v89 = OUTLINED_FUNCTION_4_0();
      [v90 v91];

      v92 = [v85 view];
      if (!v92)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v93 = v92;
      [v92 setAutoresizingMask_];

      v94 = sub_2749F9AE4();
      v95 = [v85 view];

      if (!v95)
      {
LABEL_51:
        __break(1u);
        return;
      }

      [v94 addSubview_];

      v101(v103, *MEMORY[0x277D7BD40], v105);
      OUTLINED_FUNCTION_30_0();
      sub_2749F9B44();
      (*(v104 + 8))(v103, v105);
      v96 = OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView;
      if ([*(*&v20[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView] + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar) isFirstResponder])
      {
        swift_unknownObjectWeakAssign();
        [*(*&v20[v96] + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar) resignFirstResponder];
      }

      v97 = *(v1 + v49);
      *(v1 + v49) = v80;
      v98 = v80;

      OUTLINED_FUNCTION_86();
      v99 = swift_allocObject();
      OUTLINED_FUNCTION_29_9(v99);

      sub_2749F9CE4();

      goto LABEL_34;
    }
  }

  else
  {
  }

LABEL_15:
  OUTLINED_FUNCTION_31_12();
}

void sub_274817164(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover;
    v4 = *(Strong + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover);
    if (v4)
    {
      [v4 dismissViewControllerAnimated:1 completion:0];
      v5 = *&v2[v3];
    }

    else
    {
      v5 = 0;
    }

    *&v2[v3] = 0;
  }
}

void sub_2748171F4(uint64_t a1)
{
  v1 = sub_2749F9BF4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_actionDetailsSheetView);
    v8 = v7;

    if (v7)
    {
      (*(v2 + 104))(v4, *MEMORY[0x277D7BD50], v1);
      sub_2749F9B44();

      (*(v2 + 8))(v4, v1);
    }
  }
}

void sub_274817338(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_inspectorPaneRootViewController);
  if (!v2)
  {
    OUTLINED_FUNCTION_56_1();
    return;
  }

  v4 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedInspectorPaneContentViewController;
  v5 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedInspectorPaneContentViewController);
  if (v5)
  {
    v6 = v2;
    v7 = v5;
    [v7 willMoveToParentViewController_];
    v8 = [v7 view];
    if (!v8)
    {
LABEL_32:
      __break(1u);
      return;
    }

    v9 = v8;
    [v8 removeFromSuperview];

    [v7 removeFromParentViewController];
  }

  else
  {
    v10 = v2;
  }

  [v2 addChildViewController_];
  v11 = OUTLINED_FUNCTION_19_11();
  if (!v11)
  {
    __break(1u);
    goto LABEL_22;
  }

  v12 = v11;
  v13 = OUTLINED_FUNCTION_18_13();
  if (!v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v14 = v13;
  [v12 addSubview_];

  v15 = OUTLINED_FUNCTION_25_7();
  [v15 v16];
  v17 = *(v1 + v4);
  *(v1 + v4) = a1;
  v18 = a1;

  v19 = OUTLINED_FUNCTION_18_13();
  if (!v19)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v20 = v19;
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_274A108E0;
  v22 = OUTLINED_FUNCTION_18_13();
  if (!v22)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v23 = v22;
  v24 = [v22 topAnchor];

  v25 = OUTLINED_FUNCTION_19_11();
  if (!v25)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v26 = v25;
  v27 = [v25 topAnchor];

  v28 = OUTLINED_FUNCTION_17_10();
  *(v21 + 32) = v28;
  v29 = OUTLINED_FUNCTION_18_13();
  if (!v29)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v30 = v29;
  v31 = [v29 leadingAnchor];

  v32 = OUTLINED_FUNCTION_19_11();
  if (!v32)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v33 = v32;
  v34 = [v32 leadingAnchor];

  v35 = OUTLINED_FUNCTION_17_10();
  *(v21 + 40) = v35;
  v36 = OUTLINED_FUNCTION_18_13();
  if (!v36)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v37 = v36;
  v38 = [v36 trailingAnchor];

  v39 = OUTLINED_FUNCTION_19_11();
  if (!v39)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v40 = v39;
  v41 = [v39 trailingAnchor];

  v42 = OUTLINED_FUNCTION_17_10();
  *(v21 + 48) = v42;
  v43 = OUTLINED_FUNCTION_18_13();
  if (!v43)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v44 = v43;
  v45 = [v43 bottomAnchor];

  v46 = OUTLINED_FUNCTION_19_11();
  if (!v46)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v47 = v46;
  v48 = objc_opt_self();
  v49 = [v47 bottomAnchor];

  v50 = [v45 constraintEqualToAnchor_];
  *(v21 + 56) = v50;
  sub_27471CF08(0, &qword_280968040, 0x277CCAAD0);
  v53 = sub_2749FCF74();

  [v48 activateConstraints_];

  OUTLINED_FUNCTION_56_1();
}

double sub_274817774(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2749F9BF4();
  OUTLINED_FUNCTION_43();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_86();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_29_9(v13);
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  if (*(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode) == 2)
  {

    sub_274817958(v13, a1, a2);
  }

  else
  {
    v15 = *(v3 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
    if (v15)
    {
      v16 = OUTLINED_FUNCTION_25_7();
      v17(v16);

      v18 = v15;
      sub_2749F9B44();

      (*(v8 + 8))(v12, v6);
      return result;
    }
  }

  return result;
}

void sub_274817958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
    v8 = v7;

    if (v7)
    {
      sub_2748408FC(*MEMORY[0x277CFC5E8]);
      v9 = objc_opt_self();
      v10 = *&v8[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_tableView];
      v11 = objc_allocWithZone(MEMORY[0x277D44360]);
      v12 = v10;

      v14 = sub_27481A474(a2, a3, v12, 0, 0, v13);
      [v9 runTestWithParameters_];
    }
  }
}

id sub_274817A64(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_2749F9BF4();
  OUTLINED_FUNCTION_43();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v12 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274814514(v12);
  OUTLINED_FUNCTION_9_13();
  sub_274720EB8(v13, 255, v14, MEMORY[0x277D7BD68]);
  v15 = sub_2749FCD54();
  v16 = *(v8 + 8);
  v17 = OUTLINED_FUNCTION_34_2();
  result = v16(v17);
  if (v15 & 1) == 0 || (a2)
  {
    v50 = v16;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2748B61E8();
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_86();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = *(v8 + 16);
    v48 = v8 + 16;
    v49 = v20;
    v20(&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
    v51 = v3;
    v43 = *(v8 + 80);
    v46 = (v43 + 24) & ~v43;
    v21 = a1;
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    v47 = *(v8 + 32);
    OUTLINED_FUNCTION_22_11();
    v23();
    v24 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v25 = sub_27480FE78(sub_27481A644, v22, 0.3, 1.0);
    [v25 startAnimation];

    v45 = *MEMORY[0x277D7BD50];
    v44 = *(v8 + 104);
    v44(&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    OUTLINED_FUNCTION_9_13();
    v42 = sub_274720EB8(v26, 255, v27, MEMORY[0x277D7BD60]);
    OUTLINED_FUNCTION_21_11();
    LOBYTE(v25) = sub_2749FCD34();
    v28 = OUTLINED_FUNCTION_34_2();
    v50(v28);
    if (v25)
    {
      v29 = 0.15;
    }

    else
    {
      v29 = 0.35;
    }

    OUTLINED_FUNCTION_86();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49(&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v6);
    v31 = v51;
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    OUTLINED_FUNCTION_22_11();
    v47();
    v33 = objc_allocWithZone(MEMORY[0x277D75D40]);
    v34 = sub_27480FE78(sub_27481A728, v32, v29, 1.0);
    v35 = v44;
    (v44)(v12, v45, v6);
    OUTLINED_FUNCTION_21_11();
    LOBYTE(v30) = sub_2749FCD34();
    v36 = OUTLINED_FUNCTION_34_2();
    v37 = v50;
    v50(v36);
    v38 = 0.06;
    if (v30)
    {
      v38 = 0.0;
    }

    [v34 startAnimationAfterDelay_];

    (v35)(v12, *MEMORY[0x277D7BD48], v6);
    v39 = sub_2749F9BE4();
    v40 = OUTLINED_FUNCTION_34_2();
    result = v37(v40);
    if (v39)
    {
      v41 = *(v31 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
      if (v41)
      {
        return [*(*(v41 + OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView) + OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar) resignFirstResponder];
      }
    }
  }

  return result;
}

void sub_274817EE0(uint64_t a1)
{
  v1 = sub_2749F9BF4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
    v8 = v7;

    if (v7)
    {
      v9 = *&v8[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_contentContainer];

      (*(v2 + 104))(v4, *MEMORY[0x277D7BD50], v1);
      sub_274720EB8(&unk_28096A2A0, 255, MEMORY[0x277D7BD58], MEMORY[0x277D7BD60]);
      v10 = sub_2749FCD34();
      (*(v2 + 8))(v4, v1);
      v11 = 0.0;
      if (v10)
      {
        v11 = 1.0;
      }

      [v9 setAlpha_];
    }
  }
}

void sub_2748180AC(uint64_t a1)
{
  v1 = sub_2749F9BF4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerEmbeddedToolbarView);
    v8 = v7;

    if (v7)
    {
      (*(v2 + 104))(v4, *MEMORY[0x277D7BD50], v1);
      sub_274720EB8(&unk_28096A2A0, 255, MEMORY[0x277D7BD58], MEMORY[0x277D7BD60]);
      v9 = sub_2749FCD34();
      (*(v2 + 8))(v4, v1);
      v10 = 1.0;
      if (v9)
      {
        v10 = 0.0;
      }

      [v8 setAlpha_];
    }
  }
}

id sub_27481829C(__n128 a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFActionDrawerCoordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2748183D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover);
  *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentedPopover) = 0;
}

_BYTE *storeEnumTagSinglePayload for WFActionDrawerPresentationMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27481852C()
{
  result = qword_28096A260;
  if (!qword_28096A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A260);
  }

  return result;
}

void sub_274818580()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  sub_2749FCA74();
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  sub_2749FCAA4();
  OUTLINED_FUNCTION_43();
  v29 = v9;
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_actionDetailsSheetView;
  v14 = *(v1 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_actionDetailsSheetView);
  if (v14)
  {
    sub_2749F9BB4();
    v15 = v3;
    v16 = v14;
    v17 = sub_2749FD604();

    if (v17)
    {
      sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
      v28 = sub_2749FD404();
      OUTLINED_FUNCTION_86();
      v18 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_32_2();
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v15;
      OUTLINED_FUNCTION_5_21(v19);
      OUTLINED_FUNCTION_49_1(COERCE_DOUBLE(1107296256));
      v31[2] = v20;
      v31[3] = &block_descriptor_19;
      v21 = _Block_copy(v31);
      v22 = v15;

      sub_2749FCA94();
      OUTLINED_FUNCTION_7_14();
      sub_274720EB8(v23, 255, v24, MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
      sub_27473FCD0();
      sub_2749FD7B4();
      MEMORY[0x277C5F170](0, v12, v7, v21);
      _Block_release(v21);

      v25 = OUTLINED_FUNCTION_34_2();
      v26(v25);
      (*(v29 + 8))(v12, v30);

      v27 = *(v1 + v13);
      *(v1 + v13) = 0;
    }
  }

  OUTLINED_FUNCTION_46();
}

void sub_274818854(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
    v4 = v3;

    if (v3)
    {
      v5 = swift_unknownObjectWeakLoadStrong();

      if (v5)
      {
        sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
        v6 = sub_2749FD604();

        if (v6)
        {
          swift_beginAccess();
          v7 = swift_unknownObjectWeakLoadStrong();
          if (v7)
          {
            v8 = v7;
            v9 = *(v7 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
            v10 = v9;

            if (v9)
            {
              swift_unknownObjectWeakAssign();
            }
          }

          swift_beginAccess();
          v11 = swift_unknownObjectWeakLoadStrong();
          if (v11)
          {
            v12 = v11;
            v13 = *(v11 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController);
            v14 = v13;

            if (v13)
            {
              v15 = *&v14[OBJC_IVAR____TtC10WorkflowUI22WFDrawerViewController_searchControlsView];

              v16 = *&v15[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar];
              [v16 becomeFirstResponder];
            }
          }
        }
      }
    }
  }
}

void sub_274818A00(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView);
  if (v3)
  {
    sub_2749F9BB4();
    v6 = a2;
    v7 = v3;
    LOBYTE(a2) = sub_2749FD604();

    if (a2)
    {

      sub_274817A64(a1, 0);
    }
  }
}

void sub_274818AC8()
{
  OUTLINED_FUNCTION_48();
  v26 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096A270, &unk_274A16FC0);
  v5 = OUTLINED_FUNCTION_27(v4);
  v7 = v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v25 - v8;
  v10 = sub_2749F9444();
  OUTLINED_FUNCTION_43();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  v16 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v25 - v18;
  if (*&v0[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView] && *&v0[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController])
  {
    sub_274815210(1);
    sub_274814B60();
  }

  v20 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  (*(v12 + 16))(&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v10);
  sub_27481944C(v26, v9);
  v21 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v22 = (v14 + *(v7 + 80) + v21) & ~*(v7 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v0;
  (*(v12 + 32))(&v23[v21], v16, v10);
  sub_2748194BC(v9, &v23[v22]);
  v24 = v0;
  sub_2748828E4(0, 0, v19, &unk_274A16FD8, v23);

  sub_27472ECBC(v19, &unk_28096C960, &unk_274A10040);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_274818D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_2749FA4E4();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = sub_2749F93E4();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_274818E78, 0, 0);
}

uint64_t sub_274818E78()
{
  OUTLINED_FUNCTION_79();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_274818F20;
  v2 = v0[10];
  v3 = v0[3];
  v4 = v0[4];

  return MEMORY[0x2821E4468](v2, v3, v4);
}

uint64_t sub_274818F20()
{
  OUTLINED_FUNCTION_79();
  v2 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v3 = v2;
  *(v4 + 96) = v0;

  OUTLINED_FUNCTION_30_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_274819024()
{
  v1 = v0[10];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[13] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_274819100;

  return sub_274814318(sub_27481A570, v3);
}

void sub_274819100()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8_1();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {

    OUTLINED_FUNCTION_30_0();

    MEMORY[0x2822009F8](v4, v5, v6);
  }
}

uint64_t sub_274819230()
{
  OUTLINED_FUNCTION_79();
  (*(v0[9] + 8))(v0[10], v0[8]);

  OUTLINED_FUNCTION_48_0();

  return v1();
}

uint64_t sub_2748192AC()
{
  v1 = v0[12];
  sub_2749FA3D4();
  v2 = v1;
  v3 = sub_2749FA4D4();
  v4 = sub_2749FD2C4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_274719000, v3, v4, "Error creating action for inserting: %@", v7, 0xCu);
    sub_27472ECBC(v8, &qword_28096A280, &qword_274A16FE0);
    MEMORY[0x277C61040](v8, -1, -1);
    MEMORY[0x277C61040](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[6] + 8))(v0[7], v0[5]);

  OUTLINED_FUNCTION_48_0();

  return v11();
}

uint64_t sub_27481944C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096A270, &unk_274A16FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2748194BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096A270, &unk_274A16FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_27481952C(uint64_t a1)
{
  v3 = v2;
  v5 = sub_2749F9444();
  OUTLINED_FUNCTION_27(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = v7 + *(v8 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096A270, &unk_274A16FC0) - 8);
  v11 = (v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = v1[4];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_274819690;

  return sub_274818D58(a1, v12, v13, v14, v1 + v7, v1 + v11);
}

uint64_t sub_274819690()
{
  OUTLINED_FUNCTION_79();
  v1 = *v0;
  OUTLINED_FUNCTION_8_1();
  *v2 = v1;

  OUTLINED_FUNCTION_48_0();

  return v3();
}

void sub_274819774(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = sub_2749F93E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v9, a1, v6);
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D7BE50])
  {
    (*(v7 + 96))(v9, v6);
    v10 = *v9;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_2748B6280(a2, v10);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    *a3 = Strong == 0;
  }

  else
  {
    sub_2749FDCB4();
    __break(1u);
  }
}

void sub_2748198FC()
{
  OUTLINED_FUNCTION_1_18();
  v1 = sub_2749F9444();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v7);
  v8 = *&v0[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController];
  if (v8)
  {
    v9 = [v8 traitCollection];
    [v9 horizontalSizeClass];
  }

  v10 = *(v3 + 16);
  OUTLINED_FUNCTION_22_11();
  v10();
  OUTLINED_FUNCTION_22_11();
  v10();
  v11 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  (*(v3 + 32))(v12 + v11, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1);
  v13 = objc_allocWithZone(sub_2749F9D24());
  v0;
  v14 = sub_2749F9D14();
  OUTLINED_FUNCTION_86();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_29_9(v15);

  sub_2749F9CE4();

  OUTLINED_FUNCTION_26_8();
  sub_2748166E4();
}

uint64_t sub_274819B44(_BYTE *a1, uint64_t a2)
{
  v33 = a2;
  v3 = sub_2749FCA74();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2749FCAA4();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2749F9444();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = sub_2749F9BF4();
  v32 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = *&a1[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerViewController];
  if (v16)
  {
    swift_unknownObjectWeakAssign();
    if (a1[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_presentationMode] == 1)
    {
      v17 = *&a1[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_drawerSheetView];
      if (v17)
      {
        v31 = v16;
        v30 = v17;
        sub_2749F9B84();
        v18 = v32;
        (*(v32 + 104))(v13, *MEMORY[0x277D7BD40], v10);
        v29 = sub_274720EB8(&qword_28096A288, 255, MEMORY[0x277D7BD58], MEMORY[0x277D7BD70]);
        sub_2749FCEF4();
        sub_2749FCEF4();
        v19 = *(v18 + 8);
        v19(v13, v10);
        v19(v15, v10);
        if (aBlock[0] == v40)
        {
          sub_274814F3C();
        }
      }
    }
  }

  sub_274814B54();
  sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
  v20 = sub_2749FD404();
  (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v7);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = swift_allocObject();
  (*(v8 + 32))(v22 + v21, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v22 + ((v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_27481A5C0;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_66_0;
  v23 = _Block_copy(aBlock);
  v24 = a1;

  v25 = v34;
  sub_2749FCA94();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274720EB8(&qword_28159E580, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
  sub_27473FCD0();
  v26 = v37;
  v27 = v39;
  sub_2749FD7B4();
  MEMORY[0x277C5F170](0, v25, v26, v23);
  _Block_release(v23);

  (*(v38 + 8))(v26, v27);
  return (*(v35 + 8))(v25, v36);
}

uint64_t sub_27481A0D8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A290, &unk_274A16FF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - v4;
  v6 = sub_2749F93E4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - v11;
  sub_2749F93F4();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_27472ECBC(v5, &qword_28096A290, &unk_274A16FF0);
  }

  (*(v7 + 32))(v12, v5, v6);
  (*(v7 + 16))(v10, v12, v6);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x277D7BE50])
  {
    (*(v7 + 96))(v10, v6);
    v14 = *v10;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2748B6280(a2, v14);
      swift_unknownObjectRelease();
    }

    return (*(v7 + 8))(v12, v6);
  }

  else
  {
    result = sub_2749FDCB4();
    __break(1u);
  }

  return result;
}

void sub_27481A328(uint64_t a1)
{
  v1 = sub_2749F9BF4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *&Strong[OBJC_IVAR____TtC10WorkflowUI25WFActionDrawerCoordinator_actionDetailsSheetView];
    if (v7)
    {
      (*(v2 + 104))(v4, *MEMORY[0x277D7BD50], v1);
      v8 = v7;
      sub_2749F9B44();

      (*(v2 + 8))(v4, v1);
    }

    else
    {
    }
  }
}

id sub_27481A474(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6)
{
  if (!a2)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_2749FCD64();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14[4] = a4;
  v14[5] = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_274760264;
  v14[3] = &block_descriptor_81;
  v11 = _Block_copy(v14);

LABEL_6:
  v12 = [v6 initWithTestName:v10 scrollView:a3 completionHandler:v11];
  _Block_release(v11);

  return v12;
}

uint64_t sub_27481A5C0()
{
  v1 = sub_2749F9444();
  OUTLINED_FUNCTION_27(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_27481A0D8(v0 + v6, v7);
}

uint64_t objectdestroy_69Tm()
{
  v1 = sub_2749F9BF4();
  OUTLINED_FUNCTION_43();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27481A754(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

id OUTLINED_FUNCTION_18_13()
{

  return [v0 (v1 + 2808)];
}

void sub_27481A89C(uint64_t a1)
{
  sub_27481E138(319, &qword_28096A330, MEMORY[0x277D7D388], MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_27481E138(319, &qword_28096A338, MEMORY[0x277D7D388], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_27481A9B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v95 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A340, &qword_274A17070);
  OUTLINED_FUNCTION_34(v3);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_10_1(&v80 - v5);
  v6 = sub_2749FBA94();
  v7 = OUTLINED_FUNCTION_0_0(v6, &v105);
  v92 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_10_1(v9);
  v10 = sub_2749FAF64();
  v11 = OUTLINED_FUNCTION_0_0(v10, &__src[96]);
  v88 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_10_1(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A348, &qword_274A17078);
  OUTLINED_FUNCTION_34(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  v17 = &v80 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A350, &qword_274A17080) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A358, &qword_274A17088) - 8;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  v25 = &v80 - v24;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A360, &qword_274A17090);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v26);
  v28 = &v80 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A368, &qword_274A17098);
  OUTLINED_FUNCTION_0_0(v29, &__src[56]);
  v85 = v30;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10_1(&v80 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A370, &qword_274A170A0);
  OUTLINED_FUNCTION_0_0(v33, &v104);
  v90 = v34;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v35);
  v37 = &v80 - v36;
  v38 = sub_2749FB644();
  v39 = type metadata accessor for IconColorSchemePickerView(0);
  v40 = *(v2 + *(v39 + 24));
  *v17 = v38;
  *(v17 + 1) = v40;
  v17[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A378, &unk_274A170A8);
  v81 = v2;
  sub_27481B1E0(v2);
  sub_2749FC914();
  sub_2749FB004();
  sub_2747D31F8(v17, v21, &qword_28096A348, &qword_274A17078);
  memcpy(&v21[*(v18 + 44)], __src, 0x70uLL);
  v41 = sub_27481B740();
  sub_27481C0D4(*(v2 + *(v39 + 28)), v41);

  sub_2749FC914();
  sub_2749FABB4();
  v42 = v21;
  v43 = v37;
  sub_2747D31F8(v42, v25, &qword_28096A350, &qword_274A17080);
  v44 = &v25[*(v22 + 44)];
  v45 = v104;
  *v44 = v103;
  *(v44 + 1) = v45;
  *(v44 + 2) = v105;
  LOBYTE(v39) = sub_2749FBCC4();
  sub_2749FA9E4();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v25;
  v55 = v82;
  sub_2747D31F8(v54, v28, &qword_28096A358, &qword_274A17088);
  v56 = v84;
  v57 = &v28[*(v84 + 36)];
  *v57 = v39;
  *(v57 + 1) = v47;
  *(v57 + 2) = v49;
  *(v57 + 3) = v51;
  *(v57 + 4) = v53;
  v57[40] = 0;
  v58 = v86;
  sub_2749FAF54();
  v59 = sub_27481C528();
  v60 = sub_27473DB28(&qword_28159E6A0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v61 = v83;
  v62 = v56;
  v63 = v87;
  sub_2749FBFC4();
  OUTLINED_FUNCTION_40_5();
  v64(v58, v63);
  sub_27472ECBC(v28, &qword_28096A360, &qword_274A17090);
  v65 = v89;
  sub_2749FBA84();
  v98 = v62;
  v99 = v63;
  v100 = v59;
  v101 = v60;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2749FC1A4();
  OUTLINED_FUNCTION_40_5();
  v67(v65, v93);
  OUTLINED_FUNCTION_40_5();
  v68(v61, v55);
  v69 = v81;
  v70 = sub_27481B740();
  v96 = v69;
  v71 = v94;
  sub_2748D83F8(sub_27481C6F8, v70, v94);

  v72 = v71;
  v73 = type metadata accessor for NamedColorScheme(0);
  if (__swift_getEnumTagSinglePayload(v72, 1, v73) == 1)
  {
    sub_27472ECBC(v72, &qword_28096A340, &qword_274A17070);
    v74 = 0;
    v75 = 0xE000000000000000;
  }

  else
  {
    v76 = (v72 + *(v73 + 20));
    v74 = *v76;
    v75 = v76[1];

    sub_27481C738(v72);
  }

  v98 = v74;
  v99 = v75;
  v97[0] = v55;
  v97[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_27475D0D0();
  v77 = v91;
  sub_2749FC104();

  OUTLINED_FUNCTION_40_5();
  return v78(v43, v77);
}

uint64_t sub_27481B1E0(uint64_t a1)
{
  v2 = type metadata accessor for IconColorSchemePickerView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = sub_27481B740();
  sub_27481C0D4(*(a1 + *(v3 + 36)), v6);
  v8 = v7;

  v12[1] = v8;
  swift_getKeyPath();
  sub_27481DFB8(a1, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IconColorSchemePickerView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_27481DCA0(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for IconColorSchemePickerView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A3A8, &qword_274A170E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A3B0, &qword_274A170E8);
  sub_27472AB6C(&qword_28096A3B8, &qword_28096A3A8, &qword_274A170E0, MEMORY[0x277D83980]);
  sub_27481DD68();
  sub_27472AB6C(&qword_28096A3D0, &qword_28096A3B0, &qword_274A170E8, MEMORY[0x277CE1138]);
  return sub_2749FC754();
}

uint64_t sub_27481B41C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for IconColorSchemePickerView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8);
  v10 = *a1;
  v11 = *(a2 + *(v9 + 32));
  *a3 = sub_2749FB524();
  *(a3 + 8) = v11;
  *(a3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A3D8, &qword_274A170F8);
  v15[1] = v10;
  swift_getKeyPath();
  sub_27481DFB8(a2, v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for IconColorSchemePickerView);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  sub_27481DCA0(v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for IconColorSchemePickerView);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BD0, &qword_274A170F0);
  type metadata accessor for ColorPickerButton(0);
  sub_27472AB6C(&qword_28096A3E0, &qword_280967BD0, &qword_274A170F0, MEMORY[0x277D83980]);
  sub_27473DB28(&qword_28096A3C8, type metadata accessor for NamedColorScheme, &unk_274A17218);
  sub_27473DB28(&qword_28096A3E8, type metadata accessor for ColorPickerButton, &unk_274A171C8);
  return sub_2749FC754();
}

uint64_t sub_27481B688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_27481DFB8(a1, a2, type metadata accessor for NamedColorScheme);
  v3 = type metadata accessor for ColorPickerButton(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28, &qword_274A13C50);
  sub_2749FC6E4();
  v4 = *(v3 + 24);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_27481B740()
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A3A0, &unk_274A170B8);
  v1 = MEMORY[0x28223BE20](v48);
  v44 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v47 = &v34 - v3;
  v4 = type metadata accessor for NamedColorScheme(0);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v8 = [v7 workflowPalette];
  sub_27481DC5C();
  v9 = sub_2749FCF84();

  v10 = [v7 workflowPaletteNames];
  v11 = sub_2749FCF84();

  sub_27481BC74(v9, v11);
  v13 = v12;

  v14 = *(v0 + *(type metadata accessor for IconColorSchemePickerView(0) + 20));
  v15 = *(v14 + 16);
  if (v15)
  {
    v35 = v13;
    v52 = MEMORY[0x277D84F90];
    sub_27476D948();
    v43 = *(v14 + 16);
    result = sub_2749F9EB4();
    v17 = 0;
    v18 = *(result - 8);
    v38 = v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v39 = v14;
    v19 = v52;
    v40 = v18;
    v41 = result;
    v36 = v18 + 32;
    v37 = v18 + 16;
    v42 = v15;
    v20 = v18;
    v21 = v44;
    while (v43 != v17)
    {
      if (v17 >= *(v14 + 16))
      {
        goto LABEL_11;
      }

      v23 = v47;
      v22 = v48;
      v24 = *(v48 + 48);
      v25 = v38 + *(v20 + 72) * v17;
      v26 = *(v20 + 16);
      v49 = v19;
      v27 = v41;
      v26(&v47[v24], v25, v41);
      *v21 = v17;
      v28 = *(v22 + 48);
      (*(v20 + 32))(&v21[v28], &v23[v24], v27);
      v29 = v27;
      v19 = v49;
      v26(v6, &v21[v28], v29);
      strcpy(v51, "Custom Color ");
      HIWORD(v51[1]) = -4864;
      v50 = ++v17;
      v30 = sub_2749FDC74();
      MEMORY[0x277C5EBC0](v30);

      v31 = v51[1];
      v32 = &v6[*(v46 + 20)];
      *v32 = v51[0];
      *(v32 + 1) = v31;
      sub_27472ECBC(v21, &qword_28096A3A0, &unk_274A170B8);
      v52 = v19;
      v33 = *(v19 + 16);
      if (v33 >= *(v19 + 24) >> 1)
      {
        sub_27476D948();
        v19 = v52;
      }

      *(v19 + 16) = v33 + 1;
      result = sub_27481DCA0(v6, v19 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v33, type metadata accessor for NamedColorScheme);
      v14 = v39;
      if (v42 == v17)
      {
        v13 = v35;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_9:
    v51[0] = v13;
    sub_274782C24();
    return v51[0];
  }

  return result;
}

uint64_t sub_27481BB74(uint64_t a1)
{
  v1 = sub_2749F9EB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28, &qword_274A13C50);
  MEMORY[0x277C5E410](v5);
  v6 = sub_2749F9EA4();
  (*(v2 + 8))(v4, v1);
  return v6 & 1;
}

void sub_27481BC74(uint64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for NamedColorScheme(0);
  v4 = *(v44 - 8);
  v5 = MEMORY[0x28223BE20](v44);
  v7 = (&v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v9 = (&v36 - v8);
  v10 = sub_27472D918(a1);
  v11 = v10;
  v12 = *(a2 + 16);
  if (v12 >= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = *(a2 + 16);
  }

  v47 = MEMORY[0x277D84F90];
  sub_27476D948();
  if (v11 < 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:

    __break(1u);
    return;
  }

  v15 = v47;
  v42 = *MEMORY[0x277D7D378];
  v46 = a1 >> 62;
  v41 = a1;
  v43 = v12;
  if (v13)
  {
    v16 = a2;
    v17 = 0;
    v45 = a1 & 0xC000000000000001;
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v18 = a1;
    }

    v39 = v18;
    v37 = v16;
    v38 = v9;
    v19 = (v16 + 40);
    while (1)
    {
      v14 = v46 ? sub_2749FD844() : *(v40 + 16);
      if (v17 == v14)
      {
        break;
      }

      if (v45)
      {
        v14 = MEMORY[0x277C5F6D0](v17, a1);
      }

      else
      {
        if (v17 >= *(v40 + 16))
        {
          goto LABEL_47;
        }

        v14 = *(a1 + 8 * v17 + 32);
      }

      if (v12 == v17)
      {
        goto LABEL_49;
      }

      v20 = *(v19 - 1);
      v21 = *v19;
      *v7 = v14;
      v22 = sub_2749F9EB4();
      (*(*(v22 - 8) + 104))(v7, v42, v22);
      v23 = (v7 + *(v44 + 20));
      *v23 = v20;
      v23[1] = v21;
      v47 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);

      if (v25 >= v24 >> 1)
      {
        sub_27476D948();
        v15 = v47;
      }

      ++v17;
      *(v15 + 16) = v25 + 1;
      sub_27481DCA0(v7, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v25, type metadata accessor for NamedColorScheme);
      v19 += 2;
      a1 = v41;
      v12 = v43;
      if (v13 == v17)
      {
        a2 = v37;
        v9 = v38;
        v26 = v40;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v26 = a1 & 0xFFFFFFFFFFFFFF8;
  v45 = a1 & 0xC000000000000001;
LABEL_23:
  if (a1 < 0)
  {
    v27 = a1;
  }

  else
  {
    v27 = v26;
  }

  v39 = v27;
  v40 = a1 + 32;
  for (i = (a2 + 16 * v13 + 40); ; i += 2)
  {
    v14 = v46 ? sub_2749FD844() : *(v26 + 16);
    if (v13 == v14)
    {
      break;
    }

    if (v45)
    {
      v14 = MEMORY[0x277C5F6D0](v13, v41);
    }

    else
    {
      if (v13 >= *(v26 + 16))
      {
        goto LABEL_45;
      }

      v14 = *(v40 + 8 * v13);
    }

    if (__OFADD__(v13, 1))
    {
      goto LABEL_44;
    }

    if (v12 == v13)
    {

      return;
    }

    if (v13 >= v12)
    {
      goto LABEL_46;
    }

    v29 = v26;
    v30 = *(i - 1);
    v31 = *i;
    *v9 = v14;
    v32 = sub_2749F9EB4();
    (*(*(v32 - 8) + 104))(v9, v42, v32);
    v33 = (v9 + *(v44 + 20));
    *v33 = v30;
    v33[1] = v31;
    v47 = v15;
    v35 = *(v15 + 16);
    v34 = *(v15 + 24);

    if (v35 >= v34 >> 1)
    {
      sub_27476D948();
      v15 = v47;
    }

    *(v15 + 16) = v35 + 1;
    sub_27481DCA0(v9, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v35, type metadata accessor for NamedColorScheme);
    ++v13;
    v12 = v43;
    v26 = v29;
  }
}

void sub_27481C0D4(uint64_t result, void *a2)
{
  if (result)
  {
    v4 = a2[2];
    v5 = sub_2748DB104(0, v4, result);
    v32 = MEMORY[0x277D84F90];
    sub_27476D9A0(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      goto LABEL_68;
    }

    if (!v5)
    {
      v10 = 0;
LABEL_32:
      v17 = MEMORY[0x277D84F90];
      while (1)
      {
        v18 = v4 >= v10;
        if (result > 0)
        {
          v18 = v10 >= v4;
        }

        if (v18)
        {
          return;
        }

        v19 = v10 + result;
        if (__OFADD__(v10, result))
        {
          v20 = ((v10 + result) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v20 = v10 + result;
        }

        if (__OFADD__(v10, result))
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v4 < v19)
        {
          v19 = v4;
        }

        v21 = v19 - v10;
        if (v19 < v10)
        {
          goto LABEL_61;
        }

        if (v10 < 0)
        {
          goto LABEL_62;
        }

        if (v4 == v21)
        {

          v22 = a2;
        }

        else
        {
          v22 = v17;
          if (v19 != v10)
          {
            if (v21 < 1)
            {
              v22 = v17;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BD8, &qword_274A0FDC0);
              v25 = *(type metadata accessor for NamedColorScheme(0) - 8);
              v29 = (*(v25 + 80) + 32) & ~*(v25 + 80);
              v31 = *(v25 + 72);
              v22 = swift_allocObject();
              v26 = _swift_stdlib_malloc_size(v22);
              if (!v31)
              {
                goto LABEL_69;
              }

              if (v26 - v29 == 0x8000000000000000 && v31 == -1)
              {
                goto LABEL_71;
              }

              v22[2] = v21;
              v22[3] = 2 * ((v26 - v29) / v31);
            }

            type metadata accessor for NamedColorScheme(0);
            swift_arrayInitWithCopy();
          }
        }

        v24 = *(v32 + 16);
        v23 = *(v32 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_27476D9A0(v23 > 1, v24 + 1, 1);
        }

        *(v32 + 16) = v24 + 1;
        *(v32 + 8 * v24 + 32) = v22;
        v10 = v20;
      }
    }

    v6 = 0;
    v30 = *(type metadata accessor for NamedColorScheme(0) - 8);
    v7 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    while (1)
    {
      v8 = v4 >= v6;
      if (result > 0)
      {
        v8 = v6 >= v4;
      }

      if (v8)
      {
        break;
      }

      v9 = v6 + result;
      if (__OFADD__(v6, result))
      {
        v10 = ((v6 + result) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v10 = v6 + result;
      }

      if (__OFADD__(v6, result))
      {
        goto LABEL_64;
      }

      if (v4 < v9)
      {
        v9 = v4;
      }

      v11 = v9 - v6;
      if (v9 < v6)
      {
        goto LABEL_65;
      }

      if (v6 < 0)
      {
        goto LABEL_66;
      }

      if (v4 == v11)
      {

        v12 = a2;
      }

      else
      {
        v12 = MEMORY[0x277D84F90];
        if (v9 != v6)
        {
          if (v11 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967BD8, &qword_274A0FDC0);
            v28 = *(v30 + 72);
            v12 = swift_allocObject();
            v15 = _swift_stdlib_malloc_size(v12);
            if (!v28)
            {
              goto LABEL_70;
            }

            if (v15 - v7 == 0x8000000000000000 && v28 == -1)
            {
              goto LABEL_72;
            }

            v12[2] = v11;
            v12[3] = 2 * ((v15 - v7) / v28);
          }

          swift_arrayInitWithCopy();
        }
      }

      v14 = *(v32 + 16);
      v13 = *(v32 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_27476D9A0(v13 > 1, v14 + 1, 1);
      }

      *(v32 + 16) = v14 + 1;
      *(v32 + 8 * v14 + 32) = v12;
      v6 = v10;
      if (!--v5)
      {
        goto LABEL_32;
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

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
  __break(1u);
}

unint64_t sub_27481C528()
{
  result = qword_28096A380;
  if (!qword_28096A380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A360, &qword_274A17090);
    sub_27481C5B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A380);
  }

  return result;
}

unint64_t sub_27481C5B4()
{
  result = qword_28096A388;
  if (!qword_28096A388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A358, &qword_274A17088);
    sub_27481C640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A388);
  }

  return result;
}

unint64_t sub_27481C640()
{
  result = qword_28096A390;
  if (!qword_28096A390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A350, &qword_274A17080);
    sub_27472AB6C(&qword_28096A398, &qword_28096A348, &qword_274A17078, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A390);
  }

  return result;
}

uint64_t sub_27481C738(uint64_t a1)
{
  v2 = type metadata accessor for NamedColorScheme(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27481C794(uint64_t a1, uint64_t a2)
{
  if ((sub_2749F9EA4() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for NamedColorScheme(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_2749FDCC4();
}

uint64_t sub_27481C814(uint64_t a1)
{
  sub_2749F9EB4();
  sub_27473DB28(&qword_280967AF0, MEMORY[0x277D7D388], MEMORY[0x277D7D390]);
  sub_2749FCD04();
  type metadata accessor for NamedColorScheme(0);

  return sub_2749FCE24();
}

uint64_t sub_27481C8B4()
{
  sub_2749FDDF4();
  sub_2749F9EB4();
  sub_27473DB28(&qword_280967AF0, MEMORY[0x277D7D388], MEMORY[0x277D7D390]);
  sub_2749FCD04();
  type metadata accessor for NamedColorScheme(0);
  sub_2749FCE24();
  return sub_2749FDE44();
}

uint64_t sub_27481C960(uint64_t a1, uint64_t a2)
{
  sub_2749FDDF4();
  sub_2749F9EB4();
  sub_27473DB28(&qword_280967AF0, MEMORY[0x277D7D388], MEMORY[0x277D7D390]);
  sub_2749FCD04();
  sub_2749FCE24();
  return sub_2749FDE44();
}

uint64_t sub_27481CA08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v44 = sub_2749F9EB4();
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v39 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2749FB5D4();
  v47 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v46 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ColorPickerButton(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A428, &qword_274A17258);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A430, &qword_274A17260);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A438, &qword_274A17268);
  MEMORY[0x28223BE20](v14 - 8);
  v40 = &v39 - v15;
  sub_27481DFB8(v2, &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ColorPickerButton);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_27481DCA0(&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ColorPickerButton);
  v49 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A440, &qword_274A17270);
  sub_27472AB6C(&qword_28096A448, &qword_28096A440, &qword_274A17270, MEMORY[0x277CE11A8]);
  v18 = v8;
  sub_2749FC624();
  sub_2749FC914();
  sub_2749FABB4();
  v19 = (v10 + *(v8 + 36));
  v20 = v55;
  *v19 = v54;
  v19[1] = v20;
  v19[2] = v56;
  v21 = (v2 + *(type metadata accessor for NamedColorScheme(0) + 20));
  v23 = *v21;
  v22 = v21[1];
  v53[0] = v23;
  v53[1] = v22;
  v24 = sub_27481E48C();
  v25 = sub_27475D0D0();
  sub_2749FC234();
  sub_27472ECBC(v10, &qword_28096A428, &qword_274A17258);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28, &qword_274A13C50);
  v27 = v39;
  MEMORY[0x277C5E410](v26);
  LOBYTE(v10) = sub_2749F9EA4();
  (*(v41 + 8))(v27, v44);
  if (v10)
  {
    v28 = v46;
    sub_2749FB594();
    v29 = v45;
  }

  else
  {
    v53[0] = MEMORY[0x277D84F90];
    sub_27473DB28(&unk_28159E630, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A468, &qword_274A17280);
    sub_27472AB6C(&qword_28159E538, &qword_28096A468, &qword_274A17280, MEMORY[0x277D83970]);
    v30 = v45;
    v28 = v46;
    sub_2749FD7B4();
    v29 = v30;
  }

  v53[0] = v18;
  v53[1] = MEMORY[0x277D837D0];
  v53[2] = v24;
  v53[3] = v25;
  swift_getOpaqueTypeConformance2();
  v31 = v40;
  v32 = v43;
  sub_2749FC1D4();
  (*(v47 + 8))(v28, v29);
  (*(v42 + 8))(v13, v32);
  v33 = sub_2749FC914();
  v35 = v34;
  sub_27481DA40(v51);
  memcpy(v52, v51, 0x80uLL);
  v52[16] = v33;
  v52[17] = v35;
  v36 = v48;
  sub_2747D31F8(v31, v48, &qword_28096A438, &qword_274A17268);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A470, &qword_274A17288);
  memcpy((v36 + *(v37 + 36)), v52, 0x90uLL);
  memcpy(v53, v51, 0x80uLL);
  v53[16] = v33;
  v53[17] = v35;
  sub_27473ADB8(v52, &v50, &qword_28096A478, &qword_274A17290);
  return sub_27472ECBC(v53, &qword_28096A478, &qword_274A17290);
}

uint64_t sub_27481D0E8(uint64_t a1)
{
  v2 = sub_2749F9EB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  type metadata accessor for ColorPickerButton(0);
  v9(v6, v8, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28, &qword_274A13C50);
  sub_2749FC6C4();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_27481D23C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_2749FC914();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A480, &qword_274A17298);
  return sub_27481D28C(a1, a2 + *(v5 + 44));
}

uint64_t sub_27481D28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v59 = a2;
  v56 = sub_2749FAA94();
  v61 = *(v56 - 8);
  v2 = MEMORY[0x28223BE20](v56);
  v58 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v57 = &v56 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A488, &qword_274A172A0);
  v5 = MEMORY[0x28223BE20](v62);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v56 - v8);
  MEMORY[0x28223BE20](v7);
  v63 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A490, &qword_274A172A8);
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A498, &qword_274A172B0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - v16;
  v18 = sub_2749F9EB4();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A4A0, &qword_274A172B8);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v60 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v56 - v25;
  (*(v19 + 16))(v21, v65, v18);
  v27 = (*(v19 + 88))(v21, v18);
  if (v27 == *MEMORY[0x277D7D378])
  {
    (*(v19 + 96))(v21, v18);
    v28 = *v21;
    v29 = [*v21 paletteGradient];
    v30 = sub_27481E55C();
    sub_2749FC5A4();

    (*(v15 + 16))(v13, v17, v14);
    swift_storeEnumTagMultiPayload();
    v66 = MEMORY[0x277CE1120];
    v67 = v30;
LABEL_5:
    swift_getOpaqueTypeConformance2();
    sub_2749FB7B4();

    (*(v15 + 8))(v17, v14);
    sub_2749FC454();
    type metadata accessor for ColorPickerButton(0);
    v33 = v57;
    sub_27473B1B4();
    v34 = v61;
    v35 = v58;
    v36 = v56;
    (*(v61 + 104))(v58, *MEMORY[0x277CDF3D0], v56);
    sub_2749FAA84();
    v37 = *(v34 + 8);
    v37(v35, v36);
    v37(v33, v36);
    v38 = sub_2749FC484();

    sub_2749FAB34();
    v39 = v66;
    v40 = v68;
    v41 = v69;
    v42 = v70;
    v43 = sub_2749FC914();
    v45 = v44;
    v46 = *(v62 + 36);
    v47 = *MEMORY[0x277CE13F0];
    v48 = sub_2749FC994();
    v49 = v67;
    (*(*(v48 - 8) + 104))(v9 + v46, v47, v48);
    *v9 = v39 * 0.5;
    v9[1] = v39;
    *(v9 + 2) = v49;
    *(v9 + 3) = v40;
    *(v9 + 4) = v41;
    *(v9 + 5) = v42;
    *(v9 + 6) = v38;
    *(v9 + 28) = 256;
    *(v9 + 8) = v43;
    *(v9 + 9) = v45;
    v50 = v63;
    sub_2747D31F8(v9, v63, &qword_28096A488, &qword_274A172A0);
    v51 = v60;
    sub_27473ADB8(v26, v60, &qword_28096A4A0, &qword_274A172B8);
    v52 = v64;
    sub_27473ADB8(v50, v64, &qword_28096A488, &qword_274A172A0);
    v53 = v59;
    sub_27473ADB8(v51, v59, &qword_28096A4A0, &qword_274A172B8);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A4B0, &unk_274A172C0);
    sub_27473ADB8(v52, v53 + *(v54 + 48), &qword_28096A488, &qword_274A172A0);
    sub_27472ECBC(v50, &qword_28096A488, &qword_274A172A0);
    sub_27472ECBC(v26, &qword_28096A4A0, &qword_274A172B8);
    sub_27472ECBC(v52, &qword_28096A488, &qword_274A172A0);
    return sub_27472ECBC(v51, &qword_28096A4A0, &qword_274A172B8);
  }

  if (v27 == *MEMORY[0x277D7D380])
  {
    (*(v19 + 96))(v21, v18);
    v28 = *(v21 + 1);

    v31 = sub_27481E55C();
    v32 = MEMORY[0x277CE1120];
    sub_2749FC5A4();
    (*(v15 + 16))(v13, v17, v14);
    swift_storeEnumTagMultiPayload();
    v66 = v32;
    v67 = v31;
    goto LABEL_5;
  }

  result = sub_2749FDCB4();
  __break(1u);
  return result;
}

void *sub_27481DA40@<X0>(void *a2@<X8>)
{
  v3 = sub_2749F9EB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ColorPickerButton(0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28, &qword_274A13C50);
  MEMORY[0x277C5E410](v7);
  v8 = sub_2749F9EA4();
  (*(v4 + 8))(v6, v3);
  if (v8)
  {
    v9 = [objc_opt_self() systemGray3Color];
    v10 = sub_2749FC3E4();
    sub_2749FAB34();
    v11 = v20[16];
    v12 = v20[18];
    v13 = v20[19];
    v14 = v20[20];
    v15 = sub_2749FC914();
    v17 = v16;
    sub_2749FC914();
    sub_2749FABB4();
    v20[0] = v11 * 0.5;
    v20[1] = v11;
    v20[2] = v20[17];
    v20[3] = v12;
    v20[4] = v13;
    v20[5] = v14;
    *&v20[6] = v10;
    LOWORD(v20[7]) = 256;
    *&v20[8] = v15;
    v20[9] = v17;
    CGSizeMake();
    memcpy(v21, v20, sizeof(v21));
  }

  else
  {
    sub_27481E544(v21);
  }

  return memcpy(a2, v21, 0x80uLL);
}

unint64_t sub_27481DC5C()
{
  result = qword_280968670;
  if (!qword_280968670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280968670);
  }

  return result;
}

uint64_t sub_27481DCA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

uint64_t sub_27481DCFC()
{
  v0 = type metadata accessor for IconColorSchemePickerView(0);
  OUTLINED_FUNCTION_34(v0);
  v1 = OUTLINED_FUNCTION_8_0();

  return sub_27481B41C(v1, v2, v3);
}

unint64_t sub_27481DD68()
{
  result = qword_28096A3C0;
  if (!qword_28096A3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280967BD0, &qword_274A170F0);
    sub_27473DB28(&qword_28096A3C8, type metadata accessor for NamedColorScheme, &unk_274A17218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A3C0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = *(type metadata accessor for IconColorSchemePickerView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968C28, &qword_274A13C50) + 32);
  sub_2749F9EB4();
  OUTLINED_FUNCTION_9();
  (*(v4 + 8))(v2 + v3);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_27481DF2C()
{
  v0 = type metadata accessor for IconColorSchemePickerView(0);
  OUTLINED_FUNCTION_34(v0);
  v1 = OUTLINED_FUNCTION_8_0();

  return sub_27481B688(v1, v2);
}

uint64_t sub_27481DFB8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  v4 = OUTLINED_FUNCTION_44();
  v5(v4);
  return a2;
}

void sub_27481E03C(uint64_t a1)
{
  type metadata accessor for NamedColorScheme(319);
  if (v1 <= 0x3F)
  {
    sub_27481E138(319, &qword_28096A330, MEMORY[0x277D7D388], MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_27481E138(319, &qword_280968A60, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_27481E138(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_27481E1C4(uint64_t a1)
{
  result = sub_2749F9EB4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_27481E238()
{
  result = qword_28096A410;
  if (!qword_28096A410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A418, &qword_274A17198);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A368, &qword_274A17098);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A360, &qword_274A17090);
    sub_2749FAF64();
    sub_27481C528();
    sub_27473DB28(&qword_28159E6A0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_27473DB28(&qword_28159E5A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A410);
  }

  return result;
}

uint64_t sub_27481E428()
{
  v1 = type metadata accessor for ColorPickerButton(0);
  OUTLINED_FUNCTION_34(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_27481D0E8(v3);
}

unint64_t sub_27481E48C()
{
  result = qword_28096A450;
  if (!qword_28096A450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A428, &qword_274A17258);
    sub_27472AB6C(&qword_28096A458, &qword_28096A460, &qword_274A17278, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A450);
  }

  return result;
}

double sub_27481E544(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_27481E55C()
{
  result = qword_28096A4A8;
  if (!qword_28096A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A4A8);
  }

  return result;
}

unint64_t sub_27481E5B0()
{
  result = qword_28096A4B8;
  if (!qword_28096A4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A470, &qword_274A17288);
    sub_27481E668();
    sub_27472AB6C(&qword_28096A4C8, &qword_28096A478, &qword_274A17290, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A4B8);
  }

  return result;
}

unint64_t sub_27481E668()
{
  result = qword_28096A4C0;
  if (!qword_28096A4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A438, &qword_274A17268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A428, &qword_274A17258);
    sub_27481E48C();
    sub_27475D0D0();
    swift_getOpaqueTypeConformance2();
    sub_27473DB28(&qword_28159E5A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A4C0);
  }

  return result;
}

uint64_t SharingPromptModel.__allocating_init(workflow:applicationActivities:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SharingPromptModel.init(workflow:applicationActivities:)(a1, a2);
  return v4;
}

uint64_t FileActivityModel.__allocating_init(viewController:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_2749F9154();
  *(v2 + 16) = a1;
  return v2;
}

id WorkflowSharingPrompt.makeUIViewController(context:)()
{
  v2 = *(*v0 + 16);
  v1 = *(*v0 + 24);
  v3 = objc_allocWithZone(WFWorkflowActivityViewController);
  v4 = v2;

  return sub_27481ED80(v4, v1);
}

uint64_t sub_27481E878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27481EFC4();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_27481E8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27481EFC4();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_27481E940(uint64_t a1)
{
  sub_27481EFC4();
  sub_2749FBB74();
  __break(1u);
}

uint64_t SharingPromptModel.init(workflow:applicationActivities:)(uint64_t a1, uint64_t a2)
{
  sub_2749F9154();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t SharingPromptModel.deinit()
{

  v1 = OBJC_IVAR____TtC10WorkflowUI18SharingPromptModel_id;
  sub_2749F9164();
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t SharingPromptModel.__deallocating_deinit()
{
  SharingPromptModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_27481EA78@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SharingPromptModel(0);
  result = sub_2749FA874();
  *a2 = result;
  return result;
}

uint64_t FileActivityModel.init(viewController:)(uint64_t a1)
{
  sub_2749F9154();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t FileActivityModel.deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI17FileActivityModel_id;
  sub_2749F9164();
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t FileActivityModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI17FileActivityModel_id;
  sub_2749F9164();
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_27481EC1C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FileActivityModel(0);
  result = sub_2749FA874();
  *a2 = result;
  return result;
}

uint64_t sub_27481EC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27481EF70();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_27481ECF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27481EF70();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_27481ED58(uint64_t a1)
{
  sub_27481EF70();
  sub_2749FBB74();
  __break(1u);
}

id sub_27481ED80(void *a1, uint64_t a2)
{
  if (a2)
  {
    sub_27481F018();
    v4 = sub_2749FCF74();
  }

  else
  {
    v4 = 0;
  }

  v5 = [v2 initWithWorkflow:a1 applicationActivities:v4];

  return v5;
}

unint64_t sub_27481EE04()
{
  result = qword_2809707C0;
  if (!qword_2809707C0)
  {
    sub_2749F9164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809707C0);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

unint64_t sub_27481EF70()
{
  result = qword_28096A4D0;
  if (!qword_28096A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A4D0);
  }

  return result;
}

unint64_t sub_27481EFC4()
{
  result = qword_28096A4D8;
  if (!qword_28096A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A4D8);
  }

  return result;
}

unint64_t sub_27481F018()
{
  result = qword_28096A4E0;
  if (!qword_28096A4E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28096A4E0);
  }

  return result;
}

double *sub_27481F080(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v7[2] = a3;
  v7[3] = a4;
  v7[4] = a5;
  v7[5] = a6;
  swift_beginAccess();
  sub_2749FA8C4();
  swift_endAccess();
  v10 = (v7 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet17DownloadingButton5Model_action);
  *v10 = a1;
  v10[1] = a2;
  return v7;
}

uint64_t sub_27481F118()
{
  v1 = OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet17DownloadingButton5Model__pointSize;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969F40, &unk_274A17790);
  OUTLINED_FUNCTION_9();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t _s14descr28838E601O17DownloadingButtonV5ModelCMa(uint64_t a1)
{
  result = qword_2815A0598;
  if (!qword_2815A0598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27481F220(uint64_t a1)
{
  sub_274809398();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_27481F2E4@<X0>(uint64_t *a2@<X8>)
{
  _s14descr28838E601O17DownloadingButtonV5ModelCMa(0);
  result = sub_2749FA874();
  *a2 = result;
  return result;
}

uint64_t sub_27481F324@<X0>(float64x2_t *a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v40 = a3;
  v39 = a2;
  v38 = a4;
  v5 = sub_2749FAF64();
  v6 = *(v5 - 8);
  v36 = v5;
  v37 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A4E8, &unk_274A17730);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v35.f64[0] = *(a1->f64 + OBJC_IVAR____TtCVV10WorkflowUI15ShortcutChiclet17DownloadingButton5Model_action);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A4F0, &qword_274A1B330);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096DBC0, &qword_274A17740);
  v14 = sub_2749FBA34();
  v15 = sub_27472AB6C(&qword_28159E718, &qword_28096DBC0, &qword_274A17740, MEMORY[0x277CDD7F8]);
  v16 = sub_27481FA38(&qword_28096A4F8, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
  v43 = v13;
  v44 = v14;
  v45 = v15;
  v46 = v16;
  swift_getOpaqueTypeConformance2();
  sub_2749FC624();
  v17 = a1[2];
  __asm { FMOV            V2.2D, #3.5 }

  v35 = vaddq_f64(a1[1], _Q2);
  v34 = vaddq_f64(v17, xmmword_274A17630);
  LOBYTE(v15) = sub_2749FBC64();
  v23 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A500, &qword_274A17748) + 36)];
  *v23 = v15;
  v24 = v35;
  *(v23 + 24) = v34;
  *(v23 + 8) = v24;
  v23[40] = 0;
  v25 = sub_2749FC474();
  KeyPath = swift_getKeyPath();
  v27 = &v12[*(v9 + 36)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_2749FAF54();
  sub_27481F8C8();
  sub_27481FA38(&qword_28159E6A0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v28 = v38;
  v29 = v36;
  sub_2749FBFC4();
  (*(v37 + 8))(v8, v29);
  sub_274747254(v12);
  v41 = v39;
  v42 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096B400, &qword_274A15820);
  sub_2749FC5E4();
  v30 = v43;
  v31 = v44;
  LOBYTE(v29) = v45;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A528, &qword_274A17788);
  v33 = v28 + *(result + 36);
  *v33 = v30;
  *(v33 + 8) = v31;
  *(v33 + 16) = v29;
  return result;
}

uint64_t sub_27481F6B0()
{
  v0 = sub_2749FBA34();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DBC0, &qword_274A17740);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  sub_2749FAB64();
  sub_2749FC474();
  sub_2749FBA14();
  sub_27472AB6C(&qword_28159E718, &qword_28096DBC0, &qword_274A17740, MEMORY[0x277CDD7F8]);
  sub_27481FA38(&qword_28096A4F8, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
  sub_2749FBF84();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_27481F8C8()
{
  result = qword_28096A508;
  if (!qword_28096A508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A4E8, &unk_274A17730);
    sub_27481F980();
    sub_27472AB6C(&unk_28159E5B0, &unk_28096CFD0, &qword_274A15B50, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A508);
  }

  return result;
}

unint64_t sub_27481F980()
{
  result = qword_28096A510;
  if (!qword_28096A510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A500, &qword_274A17748);
    sub_27472AB6C(&qword_28096A518, &qword_28096A520, &qword_274A17780, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A510);
  }

  return result;
}

uint64_t sub_27481FA38(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_27481FA80()
{
  result = qword_28096A530;
  if (!qword_28096A530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A528, &qword_274A17788);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28096A4E8, &unk_274A17730);
    sub_2749FAF64();
    sub_27481F8C8();
    sub_27481FA38(&qword_28159E6A0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_27473F5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28096A530);
  }

  return result;
}

void sub_27481FB98()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textField);
  v2 = [v1 text];
  if (v2)
  {
    v3 = v2;
    v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_text);
  v8 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_text);
  v9 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_text + 8);
  if (!v6)
  {
LABEL_11:

    sub_2748205A0(v8, v9, v1);
    goto LABEL_13;
  }

  if (v4 != v8 || v6 != v9)
  {
    v11 = sub_2749FDCC4();

    if (v11)
    {
      goto LABEL_13;
    }

    v8 = *v7;
    v9 = v7[1];
    goto LABEL_11;
  }

LABEL_13:
  v12 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textDidChangeHandler);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textDidChangeHandler + 8);
    v14 = *v7;
    v15 = v7[1];
    sub_27473A658(v12, v13);

    v12(v14, v15);

    sub_27471F8A4(v12, v13);
  }
}

char *sub_27481FCFC(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textDidChangeHandler];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v4[OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_text];
  *v10 = 0;
  *(v10 + 1) = 0xE000000000000000;
  v11 = OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textField;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  v35.receiver = v4;
  v35.super_class = type metadata accessor for WFCollectionNameFieldCell();
  v12 = objc_msgSendSuper2(&v35, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textField;
  v14 = *&v12[OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textField];
  v15 = v12;
  [v14 setAutocapitalizationType_];
  [*&v12[v13] setTextAlignment_];
  v16 = *&v12[v13];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 labelColor];
  [v18 setTextColor_];

  [*&v12[v13] setClearButtonMode_];
  v20 = *&v12[v13];
  v21 = objc_opt_self();
  v22 = *MEMORY[0x277D76A28];
  v23 = v20;
  v24 = [v21 preferredFontForTextStyle_];
  [v23 setFont_];

  v25 = *&v12[v13];
  [v25 setDelegate_];

  v26 = *&v12[v13];
  sub_2749FCE14("Folder Name", 11);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v27 = qword_28159E448;
  v28 = sub_2749FCD64();
  v29 = sub_2749FCD64();

  v30 = [v27 localizedStringForKey:v28 value:v29 table:0];

  v31 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v33 = v32;

  sub_274885CE8(v31, v33, v26);
  [*&v12[v13] setAutoresizingMask_];
  [v15 addSubview_];
  [*&v12[v13] addTarget:v15 action:sel_textFieldValueDidChange forControlEvents:0x20000];

  return v15;
}

void sub_274820048()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textField) text];
  if (v1)
  {
    v2 = v1;
    v3 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = (v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_text);
  *v6 = v3;
  v6[1] = v5;

  sub_27481FB98();
}

id sub_274820120(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for WFCollectionNameFieldCell();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v2 = *&v1[OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textField];
  [v1 bounds];
  CGRectGetWidth(v5);
  [v1 bounds];
  CGRectGetHeight(v6);
  return [v2 setFrame_];
}

void sub_274820208(void *a1)
{
  v2 = sub_2749760F0(a1);
  if (v3)
  {
    v13 = v2;
    v14 = v3;
    v11 = 606827356;
    v12 = 0xE400000000000000;
    v9 = 0;
    v10 = 0xE000000000000000;
    v7 = sub_27475D0D0();
    v8 = v7;
    v5 = MEMORY[0x277D837D0];
    v6 = v7;
    sub_2749FD724();

    v4 = sub_2749FCD64();
  }

  else
  {
    v4 = 0;
  }

  [a1 setText_];
}

void sub_2748203A0()
{
  v1 = (v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textDidChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_text);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v3 = OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textField;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
  sub_2749FDAE4();
  __break(1u);
}

void sub_274820464()
{
  sub_27471F8A4(*(v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textDidChangeHandler), *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textDidChangeHandler + 8));

  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI25WFCollectionNameFieldCell_textField);
}

id sub_2748204BC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFCollectionNameFieldCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

BOOL sub_274820578(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v3 = v2 == 0;
  return !a2 || v3;
}

void sub_2748205A0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  [a3 setText_];
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_2749FCE14(result, a2);
    }

    __break(1u);
  }

  v3 = HIDWORD(result);
  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    v3 = result >> 16;
    if (result >> 16 <= 0x10)
    {
      if (result <= 0x7F)
      {
        v4 = result + 1;
LABEL_9:
        v5 = __clz(v4);
        a2 = 4 - (v5 >> 3);
        v11 = (v4 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (v5 >> 3))));
        result = &v11;
        return sub_2749FCE14(result, a2);
      }

LABEL_13:
      v6 = (result & 0x3F) << 8;
      v7 = (result >> 6) + v6 + 33217;
      v8 = (v6 | (result >> 6) & 0x3F) << 8;
      v9 = (result >> 18) + ((v8 | (result >> 12) & 0x3F) << 8) - 2122219023;
      v10 = (result >> 12) + v8 + 8487393;
      if (v3)
      {
        v4 = v9;
      }

      else
      {
        v4 = v10;
      }

      if (result < 0x800)
      {
        v4 = v7;
      }

      goto LABEL_9;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v1 = qword_28159E448;

  return v1;
}

double sub_27482076C()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x277D76988];
  v2 = [v0 preferredFontForTextStyle_];

  [v2 lineHeight];
  v4 = v3;

  result = v4 + 16.0;
  *&qword_2809891A0 = v4 + 16.0;
  return result;
}

id sub_274820800(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v29.receiver = v5;
  v29.super_class = type metadata accessor for WFIconPickerContentUnavailableView();
  v10 = objc_msgSendSuper2(&v29, sel_initWithFrame_, a2, a3, a4, a5);
  v11 = objc_allocWithZone(MEMORY[0x277D756B8]);
  v12 = v10;
  v13 = [v11 init];
  [v13 setTextAlignment_];
  v14 = [objc_opt_self() tertiaryLabelColor];
  [v13 setTextColor_];

  sub_2749FCE14("No Symbols Found", 16);
  if (qword_28159E3A8 != -1)
  {
    swift_once();
  }

  v15 = qword_28159E448;
  v16 = sub_2749FCD64();
  v17 = sub_2749FCD64();

  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  v19 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v21 = v20;

  sub_27484E534(v19, v21, v13);
  v22 = [objc_opt_self() preferredFontForTextStyle_];
  [v13 setFont_];

  [v13 setNumberOfLines_];
  CGAffineTransformMakeTranslation(&v28, 0.0, 4.0);
  v26 = *&v28.c;
  v27 = *&v28.a;
  v25 = *&v28.tx;
  v23 = v13;
  *&v28.a = v27;
  *&v28.c = v26;
  *&v28.tx = v25;
  [v23 setTransform_];
  [v23 setAutoresizingMask_];

  [v12 addSubview_];
  return v12;
}

id sub_274820B30(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFIconPickerContentUnavailableView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t ShortcutChiclet.Progress.__allocating_init()()
{
  v0 = swift_allocObject();
  ShortcutChiclet.Progress.init()();
  return v0;
}

uint64_t ShortcutChiclet.Model.__allocating_init(metrics:isSelected:isHovered:isEditing:isGallery:isGalleryDetail:isAddedToLibrary:isDownloading:buttonType:buttonAction:)(__int128 *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t *a9, uint64_t a10, uint64_t a11)
{
  v19 = swift_allocObject();
  ShortcutChiclet.Model.init(metrics:isSelected:isHovered:isEditing:isGallery:isGalleryDetail:isAddedToLibrary:isDownloading:buttonType:buttonAction:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  return v19;
}

uint64_t ShortcutChiclet.init(name:icon:textColor:renderUnderglow:associatedAppBundleIdentifier:model:progress:runAction:stopAction:accessibilitySelectionAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v20 = type metadata accessor for ShortcutChiclet(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  *(v24 + 128) = swift_getKeyPath();
  *(v24 + 136) = 0;
  *(v24 + 144) = swift_getKeyPath();
  *(v24 + 152) = 0;
  v25 = v20[15];
  *(v24 + v25) = swift_getKeyPath();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  OUTLINED_FUNCTION_55_1(v26);
  v27 = v20[16];
  *(v24 + v27) = swift_getKeyPath();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60, &qword_274A13620);
  OUTLINED_FUNCTION_55_1(v28);
  v29 = v24 + v20[17];
  OUTLINED_FUNCTION_72_2();
  sub_2749FC5B4();
  OUTLINED_FUNCTION_71_3();
  *v29 = v30;
  *(v29 + 8) = v31;
  v32 = v24 + v20[18];
  OUTLINED_FUNCTION_72_2();
  sub_2749FC5B4();
  OUTLINED_FUNCTION_71_3();
  *v32 = v33;
  *(v32 + 8) = v34;
  *v24 = a1;
  *(v24 + 8) = a2;
  sub_2747B960C(a3, v24 + 16);
  v56 = a3;
  if (a4)
  {
    v35 = a4;
  }

  else
  {
    v36 = a3[3];
    v37 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v36);
    v35 = (*(v37 + 24))(v36, v37);
  }

  *(v24 + 89) = a5 & 1;
  *(v24 + 56) = v35;
  *(v24 + 64) = a6;
  *(v24 + 72) = a7;
  *(v24 + 80) = 0;
  type metadata accessor for ShortcutChiclet.Model(0);
  OUTLINED_FUNCTION_6_16();
  sub_27473AB0C(v38, v39, &protocol conformance descriptor for ShortcutChiclet.Model);

  v40 = a4;
  *(v24 + 96) = sub_2749FAD84();
  *(v24 + 104) = v41;
  if (!a10)
  {
    type metadata accessor for ShortcutChiclet.Progress(0);
    swift_allocObject();
    ShortcutChiclet.Progress.init()();
  }

  v42 = (v24 + v20[19]);
  v43 = (v24 + v20[20]);
  v44 = (v24 + v20[21]);
  type metadata accessor for ShortcutChiclet.Progress(0);
  OUTLINED_FUNCTION_12_14();
  sub_27473AB0C(v45, v46, &protocol conformance descriptor for ShortcutChiclet.Progress);
  v47 = sub_2749FAD84();
  v49 = v48;

  *(v24 + 112) = v47;
  *(v24 + 120) = v49;
  *v42 = a11;
  v42[1] = a12;
  *v43 = a13;
  v43[1] = a14;
  *v44 = a15;
  v44[1] = a16;
  *(v24 + 88) = 0;
  OUTLINED_FUNCTION_36_8();
  sub_27473B9F0(v24, a9, v50);
  __swift_destroy_boxed_opaque_existential_0(v56);
  return sub_27473BA4C();
}

uint64_t sub_274820F94()
{
  OUTLINED_FUNCTION_14_7();
  v0 = sub_27473872C();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t CustomShortcutChicletIcon.iconDisplayMode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CustomShortcutChicletIcon(0) + 20);
  sub_2749FA2F4();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

id CustomShortcutChicletIcon.foregroundColor.getter()
{
  v1 = *(v0 + *(type metadata accessor for CustomShortcutChicletIcon(0) + 24));

  return v1;
}

id CustomShortcutChicletIcon.backgroundGradient.getter()
{
  v1 = *(v0 + *(type metadata accessor for CustomShortcutChicletIcon(0) + 28));

  return v1;
}

uint64_t sub_274821184()
{
  v1 = sub_2749FB4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 128);
  if (*(v0 + 136) != 1)
  {

    sub_2749FD2D4();
    v6 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_2747F2F1C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_2748212CC()
{
  v1 = sub_2749FB4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 144);
  if (*(v0 + 152) != 1)
  {

    sub_2749FD2D4();
    v6 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_2747F2F1C(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_274821414@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ShortcutChiclet(0);
  sub_27473ADB8(v1 + *(v10 + 60), v9, &qword_28096D850, &unk_274A13E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FAA94();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_27482161C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60, &qword_274A13620);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for ShortcutChiclet(0);
  sub_27473ADB8(v1 + *(v10 + 64), v9, &qword_28096DA60, &qword_274A13620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FB614();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t ShortcutChiclet.init(name:icon:textColor:renderUnderglow:associatedAppBundleIdentifier:model:progress:runAction:stopAction:accessibilitySelectionAction:)(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = type metadata accessor for ShortcutChiclet(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  *(v24 + 128) = swift_getKeyPath();
  *(v24 + 136) = 0;
  *(v24 + 144) = swift_getKeyPath();
  *(v24 + 152) = 0;
  v25 = v20[15];
  *(v24 + v25) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  swift_storeEnumTagMultiPayload();
  v26 = v20[16];
  *(v24 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60, &qword_274A13620);
  swift_storeEnumTagMultiPayload();
  v27 = v24 + v20[17];
  OUTLINED_FUNCTION_72_2();
  sub_2749FC5B4();
  OUTLINED_FUNCTION_71_3();
  *v27 = v28;
  *(v27 + 8) = v29;
  v30 = v24 + v20[18];
  OUTLINED_FUNCTION_72_2();
  sub_2749FC5B4();
  OUTLINED_FUNCTION_71_3();
  *v30 = v31;
  *(v30 + 8) = v32;
  v33 = (v24 + v20[21]);
  *v33 = 0;
  v33[1] = 0;
  *v24 = a1;
  *(v24 + 8) = a2;
  sub_2747B960C(a3, v24 + 16);
  if (a4)
  {
    v34 = a4;
  }

  else
  {
    v35 = a3[3];
    v36 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v35);
    v34 = (*(v36 + 24))(v35, v36);
  }

  v37 = (v24 + v20[19]);
  v38 = (v24 + v20[20]);
  *(v24 + 89) = a5 & 1;
  *(v24 + 56) = v34;
  *(v24 + 64) = a6;
  *(v24 + 72) = a7;
  *(v24 + 80) = 0;
  type metadata accessor for ShortcutChiclet.Model(0);
  OUTLINED_FUNCTION_6_16();
  sub_27473AB0C(v39, v40, &protocol conformance descriptor for ShortcutChiclet.Model);
  v41 = a4;

  *(v24 + 96) = sub_2749FAD84();
  *(v24 + 104) = v42;
  type metadata accessor for ShortcutChiclet.Progress(0);
  OUTLINED_FUNCTION_12_14();
  sub_27473AB0C(v43, v44, &protocol conformance descriptor for ShortcutChiclet.Progress);
  v45 = sub_2749FAD84();
  v47 = v46;

  *(v24 + 112) = v45;
  *(v24 + 120) = v47;
  *v37 = a10;
  v37[1] = a11;
  *v38 = a12;
  v38[1] = a13;
  *(v24 + 88) = 0;
  OUTLINED_FUNCTION_36_8();
  sub_27473B9F0(v24, v48, v49);
  __swift_destroy_boxed_opaque_existential_0(a3);
  return sub_27473BA4C();
}

void ShortcutChiclet.init(reference:model:progress:renderUnderglow:runAction:stopAction:accessibilitySelectionAction:shouldUseClearBackground:)(void *a1@<X0>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  HIDWORD(v63) = a12;
  *(a9 + 128) = swift_getKeyPath();
  *(a9 + 136) = 0;
  *(a9 + 144) = swift_getKeyPath();
  *(a9 + 152) = 0;
  v15 = type metadata accessor for ShortcutChiclet(0);
  v16 = v15[15];
  *(a9 + v16) = swift_getKeyPath();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  OUTLINED_FUNCTION_55_1(v17);
  v18 = v15[16];
  *(a9 + v18) = swift_getKeyPath();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60, &qword_274A13620);
  OUTLINED_FUNCTION_55_1(v19);
  HIBYTE(v78) = 0;
  v20 = sub_2749FC5B4();
  OUTLINED_FUNCTION_73_1(v20, v21, v22, v23, v24, v25, v26, v27, v55, a3, a10, a11, v63, a5, a6, a7, a8, v78, v80, v82);
  HIBYTE(v79) = 0;
  v28 = sub_2749FC5B4();
  OUTLINED_FUNCTION_73_1(v28, v29, v30, v31, v32, v33, v34, v35, v56, v58, v59, v61, v64, v67, v70, v73, v76, v79, v81, v83);
  v36 = (a9 + v15[19]);
  v37 = (a9 + v15[20]);
  v38 = (a9 + v15[21]);
  v39 = a1;
  v40 = [v39 name];
  v41 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v43 = v42;

  *a9 = v41;
  *(a9 + 8) = v43;
  v44 = [v39 icon];
  v45 = sub_27471CF08(0, &qword_28159E520, 0x277D7A1E0);
  *(a9 + 40) = v45;
  *(a9 + 48) = &protocol witness table for WFWorkflowIcon;
  *(a9 + 16) = v44;
  __swift_project_boxed_opaque_existential_1((a9 + 16), v45);
  *(a9 + 56) = WFWorkflowIcon.foregroundColor.getter();
  *(a9 + 89) = a4;
  *(a9 + 64) = sub_274829F6C(v39);
  *(a9 + 72) = v46;
  *(a9 + 80) = v39;
  type metadata accessor for ShortcutChiclet.Model(0);
  OUTLINED_FUNCTION_6_16();
  sub_27473AB0C(v47, v48, &protocol conformance descriptor for ShortcutChiclet.Model);

  *(a9 + 96) = sub_2749FAD84();
  *(a9 + 104) = v49;
  type metadata accessor for ShortcutChiclet.Progress(0);
  OUTLINED_FUNCTION_12_14();
  sub_27473AB0C(v50, v51, &protocol conformance descriptor for ShortcutChiclet.Progress);
  v52 = sub_2749FAD84();
  v54 = v53;

  *(a9 + 112) = v52;
  *(a9 + 120) = v54;
  *v36 = v68;
  v36[1] = v71;
  *v37 = v74;
  v37[1] = v77;
  *v38 = v60;
  v38[1] = v62;
  *(a9 + 88) = v65;
}

uint64_t sub_274821E04()
{
  v1 = *v0;
  sub_2749FDDF4();
  if (v1)
  {
    MEMORY[0x277C5FB60](1);
    sub_2749F9164();
    OUTLINED_FUNCTION_5_22();
    sub_27473AB0C(v2, v3, MEMORY[0x277CC9600]);
    sub_2749FCD04();
  }

  else
  {
    MEMORY[0x277C5FB60](0);
  }

  return sub_2749FDE44();
}

BOOL static ShortcutChiclet.MenuItem.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {

      v3 = sub_2749F9134();

      return v3 & 1;
    }

    return 0;
  }

  return !v2;
}

uint64_t ShortcutChiclet.MenuItem.hash(into:)()
{
  if (!*v0)
  {
    return MEMORY[0x277C5FB60](0);
  }

  MEMORY[0x277C5FB60](1);
  sub_2749F9164();
  OUTLINED_FUNCTION_5_22();
  sub_27473AB0C(v1, v2, MEMORY[0x277CC9600]);
  OUTLINED_FUNCTION_125();
  return sub_2749FCD04();
}

uint64_t sub_274821FE4(uint64_t a1)
{
  v2 = *v1;
  sub_2749FDDF4();
  if (v2)
  {
    MEMORY[0x277C5FB60](1);
    sub_2749F9164();
    sub_27473AB0C(&qword_2809707C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_2749FCD04();
  }

  else
  {
    MEMORY[0x277C5FB60](0);
  }

  return sub_2749FDE44();
}

uint64_t sub_27482209C@<X0>(uint64_t *a1@<X8>)
{
  result = ShortcutChiclet.MenuItem.id.getter();
  *a1 = result;
  return result;
}

uint64_t ShortcutChiclet.MenuItemDataSource.__allocating_init(getMenuItems:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_0();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ShortcutChiclet.MenuItemDataSource.init(getMenuItems:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ShortcutChiclet.MenuItemDataSource.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_12_0();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

double sub_274822218()
{
  OUTLINED_FUNCTION_44_0();
  sub_2748222A4();
  result = *&v2;
  *v0 = v2;
  *(v0 + 16) = v3;
  return result;
}

uint64_t sub_274822258(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  sub_27482BC98();
  return sub_274822308(v4);
}

double sub_2748222A4()
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(KeyPath);

  return result;
}

uint64_t sub_274822308(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  v5[0] = v1;
  v5[1] = v2;
  v6 = v3;

  return OUTLINED_FUNCTION_54_5(v5);
}

uint64_t (*sub_27482237C())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747A7A20;
}

uint64_t sub_274822408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5D0, &qword_274A17968);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_35();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5C8, &qword_274A17960);
  OUTLINED_FUNCTION_65_0(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_30();
  return v6(v5);
}

uint64_t sub_2748224EC()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5D0, &qword_274A17968);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5C8, &qword_274A17960);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t ShortcutChiclet.MenuItemModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet13MenuItemModel_id;
  sub_2749F9164();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t ShortcutChiclet.MenuItemModel.__allocating_init(name:symbol:role:variant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = swift_allocObject();
  ShortcutChiclet.MenuItemModel.init(name:symbol:role:variant:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void *ShortcutChiclet.MenuItemModel.init(name:symbol:role:variant:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  sub_2749F9154();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  sub_27473ADB8(a5, v6 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet13MenuItemModel_role, &qword_28096C020, &qword_274A17910);
  OUTLINED_FUNCTION_10_3(v6 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet13MenuItemModel__variant, v15);
  sub_2749FA8C4();
  swift_endAccess();
  v12 = OUTLINED_FUNCTION_125();
  sub_2747359D0(v12, v13, &qword_274A17910);
  return v6;
}

uint64_t sub_2748227C8()
{
  sub_2749F9164();
  OUTLINED_FUNCTION_5_22();
  sub_27473AB0C(v0, v1, MEMORY[0x277CC9600]);
  OUTLINED_FUNCTION_125();
  return sub_2749FCD04();
}

uint64_t ShortcutChiclet.MenuItemModel.deinit()
{

  sub_2747359D0(v0 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet13MenuItemModel_role, &qword_28096C020, &qword_274A17910);
  v1 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet13MenuItemModel__variant;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5C8, &qword_274A17960);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet13MenuItemModel_id;
  sub_2749F9164();
  OUTLINED_FUNCTION_1_2();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t sub_274822914()
{
  sub_2749FDDF4();
  sub_2749F9164();
  OUTLINED_FUNCTION_5_22();
  sub_27473AB0C(v0, v1, MEMORY[0x277CC9600]);
  sub_2749FCD04();
  return sub_2749FDE44();
}

uint64_t sub_2748229A0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ShortcutChiclet.MenuItemModel(0);
  result = sub_2749FA874();
  *a2 = result;
  return result;
}

uint64_t sub_274822A28(uint64_t a1)
{
  sub_2749FDDF4();
  sub_2748227C8();
  return sub_2749FDE44();
}

uint64_t sub_274822AB0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v21 = a2;
  v20 = v31;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A798, &qword_274A186D8);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 88);
  sub_2749FC8C4();
  v24 = a1;
  v22 = a1;
  v23 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A7A0, &qword_274A186E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A7A8, &qword_274A186E8);
  sub_27472AB6C(&qword_28096A7B0, &qword_28096A7A0, &qword_274A186E0, MEMORY[0x277CE11A8]);
  sub_27473AE24();
  sub_2749FC8D4();
  v27[0] = sub_2749FB644();
  v27[1] = 0;
  v28 = 1;
  sub_274822DF0(a1, v29);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v18 = v26;
  v19 = *&v25[8];
  v30 = sub_2749FBC64();
  v11 = v20;
  v12 = v18;
  *v20 = v19;
  v11[1] = v12;
  v31[32] = 0;
  v13 = *(v4 + 16);
  v13(v7, v9, v3);
  sub_27473ADB8(v27, v25, &qword_28096A7F8, &qword_274A18720);
  v14 = v21;
  v13(v21, v7, v3);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A800, &qword_274A18728);
  sub_27473ADB8(v25, &v14[*(v15 + 48)], &qword_28096A7F8, &qword_274A18720);
  sub_2747359D0(v27, &qword_28096A7F8, &qword_274A18720);
  v16 = *(v4 + 8);
  v16(v9, v3);
  sub_2747359D0(v25, &qword_28096A7F8, &qword_274A18720);
  return (v16)(v7, v3);
}

uint64_t sub_274822DF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = sub_2749FB524();
  v17[1] = 0;
  v18 = 1;
  sub_274823070(a1, v19);
  v4 = sub_2749FC914();
  v6 = v5;
  v7 = sub_2749FB524();
  LOBYTE(v23[0]) = 1;
  sub_2748231E8(a1, v15);
  memcpy(__dst, v15, 0xC3uLL);
  memcpy(v22, v15, 0xC3uLL);
  sub_27473ADB8(__dst, v24, &qword_28096A808, &qword_274A18730);
  sub_2747359D0(v22, &qword_28096A808, &qword_274A18730);
  memcpy(&__src[7], __dst, 0xC3uLL);
  v8 = v23[0];
  v23[0] = v7;
  v23[1] = 0;
  LOBYTE(v23[2]) = v8;
  memcpy(&v23[2] + 1, __src, 0xCAuLL);
  v23[28] = v4;
  v23[29] = v6;
  memcpy(v20, v23, sizeof(v20));
  v24[0] = v7;
  v24[1] = 0;
  v25 = v8;
  memcpy(v26, __src, sizeof(v26));
  v27 = v4;
  v28 = v6;
  sub_27473ADB8(v23, v15, &qword_28096A810, &qword_274A18738);
  sub_2747359D0(v24, &qword_28096A810, &qword_274A18738);
  v9 = 0;
  if ((sub_2749FC8B4() & 1) == 0)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2749FA904();

    v9 = v15[5];
  }

  v11 = *a1;
  v10 = a1[1];
  v12 = a1[7];
  sub_27473ADB8(v17, v15, &qword_28096A818, &qword_274A18740);
  sub_27473ADB8(v15, a2, &qword_28096A818, &qword_274A18740);
  *(a2 + 336) = v9;
  *(a2 + 344) = 0;
  *(a2 + 352) = v11;
  *(a2 + 360) = v10;
  *(a2 + 368) = v12;
  swift_bridgeObjectRetain_n();
  v13 = v12;
  sub_2747359D0(v17, &qword_28096A818, &qword_274A18740);

  return sub_2747359D0(v15, &qword_28096A818, &qword_274A18740);
}

uint64_t sub_274823070@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v4 = v14;
  sub_2747B960C((a1 + 2), v12);
  v5 = a1[9];
  if (v5)
  {
    v6 = a1[8];
    sub_27471CF08(0, &qword_28096BB10, 0x277D79DA8);

    v7 = sub_274903E28(v6, v5);
  }

  else
  {
    v8 = a1[5];
    v9 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, v8);
    v7 = (*(v9 + 8))(v8, v9);
  }

  v10 = v7;
  *&v15[0] = v4;
  sub_2747A45FC(v12, v15 + 8);
  v16 = v10;
  v14 = v10;
  v13[0] = v15[0];
  v13[1] = v15[1];
  v13[2] = v15[2];
  sub_27482BC30(v13, v15);
  sub_27482BC30(v15, a2);
  *(a2 + 56) = 0;
  *(a2 + 64) = 1;
  sub_27482BC68(v13);
  return sub_27482BC68(v15);
}

uint64_t sub_2748231E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ShortcutChiclet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_27473C998();
  sub_27473CC30(&v35);
  switch(v35)
  {
    case 0uLL:
      goto LABEL_8;
    case 1uLL:
      sub_2748E538C(v28);
      memcpy(v29, v28, 0xB0uLL);
      sub_27482BC24(v29);
      memcpy(v36, v29, 0xB1uLL);
      sub_27473ADB8(v28, v34, &unk_280966D38, &qword_274A0CBD8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280966D38, &qword_274A0CBD8);
      sub_27473DC18();
      sub_27473DC6C();
      sub_2749FB7B4();
      memcpy(v31, v34, 0xB1uLL);
      sub_27473DCF8(v31);
      memcpy(v36, v31, 0xB2uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A838, &qword_274A18760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A840, &qword_274A18768);
      sub_27473DDB4();
      sub_27473DD00();
      sub_2749FB7B4();
      memcpy(v34, v30, 0xB2uLL);
      sub_27473DE40(v34);
      memcpy(v36, v34, 0xB3uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A828, &qword_274A18750);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A830, &qword_274A18758);
      sub_27482BB00();
      sub_27473DFDC();
      sub_2749FB7B4();
      sub_2747359D0(v28, &unk_280966D38, &qword_274A0CBD8);
      goto LABEL_13;
    case 2uLL:
      sub_27490EA94(v36);
      *&v36[1] = LOBYTE(v36[1]);
      LOBYTE(v36[2]) = 0;
      goto LABEL_6;
    case 3uLL:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2749FA904();

      v13 = *(&v36[3] + 1);
      sub_27473B9F0(a1, &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ShortcutChiclet);
      v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v15 = swift_allocObject();
      sub_27473D980(&v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v15 + v14);
      _s14descr28838E601O9AddButtonV5ModelCMa(0);
      swift_allocObject();
      sub_274809150(sub_27482BB8C, v15, 0.0, 0.0, 0.0, 0.0, v13);
      sub_27473AB0C(&qword_28096A860, _s14descr28838E601O9AddButtonV5ModelCMa, &unk_274A16464);
      v16 = sub_2749FAD84();
      v18 = v17;
      v34[0] = 0;
      sub_2749FC5B4();
      v19 = LOBYTE(v36[0]);
      v20 = *(&v36[0] + 1);
      *&v36[0] = v16;
      *(&v36[0] + 1) = v18;
      *&v36[1] = v19;
      *(&v36[1] + 1) = v20;
      LOBYTE(v36[2]) = 1;
LABEL_6:
      sub_27473F2DC();
      sub_27473F330();

      sub_2749FB7B4();
      *v31 = *v34;
      *&v31[16] = *&v34[16];
      v31[32] = v34[32];
      sub_27482BC18(v31);
      goto LABEL_9;
    case 4uLL:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2749FA904();

      v7 = *(&v36[3] + 1);
      sub_27473B9F0(a1, &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ShortcutChiclet);
      v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v9 = swift_allocObject();
      sub_27473D980(&v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v9 + v8);
      _s14descr28838E601O11CheckButtonV5ModelCMa(0);
      swift_allocObject();
      sub_274867B44(sub_27482BB8C, v9, 0.0, 0.0, 0.0, 0.0, v7);
      sub_27473AB0C(&qword_28096A858, _s14descr28838E601O11CheckButtonV5ModelCMa, &unk_274A1B434);
      v10 = sub_2749FAD84();
      v12 = v11;
      v34[0] = 0;
      sub_2749FC5B4();
      *v34 = v10;
      *&v34[8] = v12;
      *&v34[16] = LOBYTE(v36[0]);
      *&v34[24] = *(&v36[0] + 1);
      v34[32] = 0;
      goto LABEL_11;
    case 5uLL:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2749FA904();

      v21 = *(&v36[3] + 1);
      sub_27473B9F0(a1, &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ShortcutChiclet);
      v22 = (*(v5 + 80) + 16) & ~*(v5 + 80);
      v23 = swift_allocObject();
      sub_27473D980(&v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v23 + v22);
      _s14descr28838E601O17DownloadingButtonV5ModelCMa(0);
      swift_allocObject();
      sub_27481F080(sub_27482BB8C, v23, 0.0, 0.0, 0.0, 0.0, v21);
      sub_27473AB0C(&qword_28096A850, _s14descr28838E601O17DownloadingButtonV5ModelCMa, &unk_274A176F4);
      v24 = sub_2749FAD84();
      v26 = v25;
      v34[0] = 0;
      sub_2749FC5B4();
      *v34 = v24;
      *&v34[8] = v26;
      *&v34[16] = LOBYTE(v36[0]);
      *&v34[24] = *(&v36[0] + 1);
      v34[32] = 1;
LABEL_11:
      sub_27473F504();
      sub_27473F558();

      sub_2749FB7B4();
      *v34 = v36[0];
      *&v34[16] = v36[1];
      *&v34[32] = LOBYTE(v36[2]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A820, &qword_274A18748);
      sub_27482BA68();
      sub_2749FB7B4();
      *v34 = v36[0];
      *&v34[16] = v36[1];
      *&v34[32] = v36[2];
      sub_27482BAF4(v34);
      goto LABEL_12;
    case 6uLL:
      memset(v34, 0, 32);
      *&v34[32] = 256;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A820, &qword_274A18748);
      sub_27482BA68();
      sub_2749FB7B4();
      *v34 = v36[0];
      *&v34[16] = v36[1];
      *&v34[32] = v36[2];
      sub_27482BAF4(v34);
      memcpy(v33, v34, 0xB3uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A828, &qword_274A18750);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A830, &qword_274A18758);
      sub_27482BB00();
      sub_27473DFDC();
      sub_2749FB7B4();
      goto LABEL_14;
    default:
      sub_27473DC08(v35);
LABEL_8:
      sub_27473C998();
      sub_27473CC30(v34);
      sub_27473D108(v34, v36);
      sub_27473DC08(*v34);
      *v29 = v36[0];
      v29[16] = v36[1];
      *&v29[24] = *(&v36[1] + 1);
      sub_27473DC00(v29);
      memcpy(v36, v29, 0xB1uLL);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280966D38, &qword_274A0CBD8);
      sub_27473DC18();
      sub_27473DC6C();
      sub_2749FB7B4();
      memcpy(v31, v34, 0xB1uLL);
      sub_27473DCF8(v31);
LABEL_9:
      memcpy(v36, v31, 0xB2uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A838, &qword_274A18760);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A840, &qword_274A18768);
      sub_27473DDB4();
      sub_27473DD00();
      sub_2749FB7B4();
      memcpy(v34, v30, 0xB2uLL);
      sub_27473DE40(v34);
LABEL_12:
      memcpy(v36, v34, 0xB3uLL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A828, &qword_274A18750);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A830, &qword_274A18758);
      sub_27482BB00();
      sub_27473DFDC();
      sub_2749FB7B4();

LABEL_13:
      memcpy(v36, v33, 0xB3uLL);
LABEL_14:
      memcpy(v34, v36, sizeof(v34));
      v30[0] = 1;
      memcpy(v33, v36, 0xB3uLL);
      memcpy(&v32[7], v36, 0xB3uLL);
      *a2 = 0;
      *(a2 + 8) = 1;
      memcpy((a2 + 9), v32, 0xBAuLL);
      sub_27473ADB8(v33, v31, &qword_28096A848, &qword_274A18770);
      return sub_2747359D0(v34, &qword_28096A848, &qword_274A18770);
  }
}

void sub_274823DA4(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (sub_27473D5F4())
  {
    v3 = *(type metadata accessor for ShortcutChiclet(0) + 84);
    goto LABEL_3;
  }

  sub_27473CC30(v10);
  if (v10[0] - 3 >= 3)
  {
    if (v10[0] == 1)
    {
      v3 = *(type metadata accessor for ShortcutChiclet(0) + 80);
LABEL_3:
      v4 = *(a1 + v3);
      if (v4)
      {
        v4();
      }

      return;
    }

    if (v10[0])
    {
      sub_27473DC08(v10[0]);
    }

    else
    {
      v9 = (a1 + *(type metadata accessor for ShortcutChiclet(0) + 76));
      if (*v9)
      {
        (*v9)(0);
      }
    }
  }

  else
  {
    v5 = v2 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model_buttonAction;
    swift_beginAccess();
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 8);

      v6(v8);
      sub_27471F8A4(v6, v7);
    }
  }
}

uint64_t sub_274823EC0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ShortcutChiclet(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(a2 + 80);
  if (v6 && [v6 hasShortcutInputVariables])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A768, &unk_274A18698);
    sub_2749FA414();
    *(swift_allocObject() + 16) = xmmword_274A0EF10;
    sub_2749FA3F4();
  }

  sub_27473B9F0(a2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ShortcutChiclet);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_27473D980(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280966C88, &unk_274A0CB70);
  sub_2747547B8();
  sub_2749FC284();
}

uint64_t sub_2748240E0(uint64_t a1)
{
  v87 = a1;
  v96 = *MEMORY[0x277D85DE8];
  v2 = sub_2749FA4E4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v78 - v7;
  v9 = type metadata accessor for ShortcutChiclet(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v78 - v14;
  v16 = *(v1 + 80);
  if (!v16)
  {
    return 0;
  }

  v17 = v16;
  if (![v17 hasShortcutInputVariables])
  {

    return 0;
  }

  v84 = v15;
  v85 = v10;
  v86 = v11;
  v18 = [objc_opt_self() defaultDatabase];
  sub_2747AFBB0(&unk_28838FE70, v19, v20, v21, v22, v23, v24, v25, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94[0], v94[1], v94[2], v95, v96, v97);
  v94[0] = 0;
  v27 = sub_27482B730(v17, v26, v94, v18);

  v28 = v94[0];
  if (!v27)
  {
    v47 = v94[0];
    v48 = sub_2749F8FE4();

    swift_willThrow();
    sub_2749FA3D4();
    v49 = v48;
    v50 = sub_2749FA4D4();
    v51 = sub_2749FD2C4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v94[0] = v53;
      *v52 = 136315138;
      swift_getErrorValue();
      v54 = sub_2749FDD84();
      v56 = sub_2747AF460(v54, v55, v94);
      v83 = v17;
      v57 = v56;

      *(v52 + 4) = v57;
      _os_log_impl(&dword_274719000, v50, v51, "Failed to load record for chiclet item drop execution with error: %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x277C61040](v53, -1, -1);
      MEMORY[0x277C61040](v52, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  v81 = v12;
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  v30 = v28;
  if (!v29)
  {

    sub_2749FA3D4();
    v64 = sub_2749FA4D4();
    v65 = sub_2749FD2C4();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_274719000, v64, v65, "Failed to load record for chiclet item drop execution", v66, 2u);
      MEMORY[0x277C61040](v66, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v8, v2);
    return 0;
  }

  v80 = v1;
  v83 = v17;
  v31 = [v29 inputClasses];
  v32 = sub_2749FCF84();

  v33 = 0;
  v78 = 0;
  v34 = *(v32 + 16);
  v35 = MEMORY[0x277D84F90];
  v82 = MEMORY[0x277D84F90];
LABEL_6:
  v36 = (v32 + 40 + 16 * v33);
  while (v34 != v33)
  {
    if (v33 >= *(v32 + 16))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    ++v33;
    v2 = (v36 + 2);
    v29 = *v36;

    v37 = sub_2749FCD64();
    v38 = NSClassFromString(v37);

    v36 = v2;
    if (v38)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2747647F0();
        v35 = v41;
      }

      v39 = *(v35 + 16);
      v29 = (v39 + 1);
      if (v39 >= *(v35 + 24) >> 1)
      {
        sub_2747647F0();
        v35 = v42;
      }

      ObjCClassMetadata = swift_getObjCClassMetadata();
      *(v35 + 16) = v29;
      *(v35 + 8 * v39 + 32) = ObjCClassMetadata;
      goto LABEL_6;
    }
  }

  v79 = v35;

  v88 = MEMORY[0x277D84F90];
  v43 = v87;
  v27 = sub_27472D918(v87);
  v34 = 0;
  v29 = &qword_28096A778;
  while (v27 != v34)
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      v44 = MEMORY[0x277C5F6D0](v34, v87);
    }

    else
    {
      if (v34 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v44 = *(v87 + 8 * v34 + 32);
    }

    v45 = v44;
    v2 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      goto LABEL_50;
    }

    sub_27471CF08(0, &qword_28096A770, 0x277CFC478);
    v95 = sub_27471CF08(0, &qword_28096A778, 0x277CCAA88);
    v94[0] = v45;
    v46 = sub_274826414(v94);
    ++v34;
    if (v46)
    {
      MEMORY[0x277C5ECC0](v46);
      if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2749FCFB4();
      }

      sub_2749FCFF4();
      v82 = v88;
      v34 = v2;
    }
  }

  v58 = v82;
  v59 = sub_27472D918(v82);
  if (v59)
  {
    v60 = v59;
    v27 = v83;
    v2 = v79;
    v34 = v80;
    if (v59 < 1)
    {
      __break(1u);
    }

    for (i = 0; i != v60; ++i)
    {
      if ((v58 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x277C5F6D0](i, v58);
      }

      else
      {
        v62 = *(v58 + 8 * i + 32);
      }

      v63 = v62;
      [v62 setUseNewLoadingAPI_];
    }
  }

  else
  {
    v27 = v83;
    v2 = v79;
    v34 = v80;
  }

  v29 = v81;
  if (!(v58 >> 62))
  {

    sub_2749FDCF4();
    sub_27471CF08(0, &qword_28096D760, 0x277CFC2F8);
    v67 = v58;
    goto LABEL_44;
  }

LABEL_52:
  sub_27471CF08(0, &qword_28096D760, 0x277CFC2F8);

  v67 = sub_2749FDAF4();

LABEL_44:

  sub_27471CF08(0, &qword_28096A780, 0x277CFC2E0);
  v68 = sub_27482648C(v67);
  v69 = sub_2749FD0E4();
  v70 = 1;
  __swift_storeEnumTagSinglePayload(v84, 1, 1, v69);
  sub_27473B9F0(v34, v29, type metadata accessor for ShortcutChiclet);
  sub_2749FD0A4();
  v71 = v29;
  v72 = v68;
  v73 = sub_2749FD094();
  v74 = (*(v85 + 80) + 48) & ~*(v85 + 80);
  v75 = swift_allocObject();
  v76 = MEMORY[0x277D85700];
  v75[2] = v73;
  v75[3] = v76;
  v75[4] = v72;
  v75[5] = v2;
  sub_27473D980(v71, v75 + v74);
  sub_27479930C();

  return v70;
}

uint64_t sub_2748249E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2747398D8();
  *a1 = result;
  return result;
}

double sub_274824A38@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = *a1;

  return result;
}

id sub_274824A44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 16);
  *a2 = v2;
  return v2;
}

uint64_t sub_274824A54(uint64_t a1)
{
  sub_2749FC8C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A730, &qword_274A18648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B0A0, &qword_274A18650);
  sub_27482B45C();
  sub_27473A74C();
  return sub_2749FC8D4();
}

uint64_t sub_274824B24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v43 = sub_2749FA2C4();
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v44 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_2749FA304();
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x28223BE20](v4);
  v42 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A748, &qword_274A18658);
  MEMORY[0x28223BE20](v39);
  v41 = &v38 - v6;
  v7 = sub_2749FA2F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  v14 = objc_opt_self();
  v15 = *MEMORY[0x277D74410];
  v16 = [v14 _preferredFontForTextStyle_weight_];
  if (!v16)
  {
    v16 = [v14 systemFontOfSize:22.0 weight:v15];
  }

  [v16 lineHeight];
  v18 = v17;
  v19 = a1[6];
  objc_opt_self();
  v38 = swift_dynamicCastObjCClass();
  v21 = a1[4];
  v20 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v21);
  (*(v20 + 16))(v21, v20);
  *v11 = [objc_opt_self() whiteColor];
  v11[8] = 0;
  (*(v8 + 104))(v11, *MEMORY[0x277D7D6C0], v7);
  v22 = sub_2749FA2E4();
  v23 = *(v8 + 8);
  v23(v11, v7);
  v23(v13, v7);
  v24 = 1.0;
  if (v22)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v24 = 1.0;
    }

    else
    {
      v24 = 0.88;
    }
  }

  v25 = v43;
  v26 = v44;
  *v44 = v18 + 2.0;
  (*(v40 + 104))(v26, *MEMORY[0x277D7D688], v25);
  v27 = a1[4];
  v28 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v27);
  v29 = *(v28 + 16);
  v30 = v19;
  v29(v27, v28);
  v31 = v42;
  sub_2749FA314();

  v32 = v41;
  (*(v45 + 32))(v41, v31, v46);
  *(v32 + *(v39 + 36)) = v24;
  if (v38)
  {
    v33 = 0.6;
  }

  else
  {
    v33 = 0.0;
  }

  if (v38)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = -1.0;
  }

  v35 = v47;
  sub_2747D31F8(v32, v47, &qword_28096A748, &qword_274A18658);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A730, &qword_274A18648);
  v37 = (v35 + *(result + 36));
  *v37 = v34;
  v37[1] = v33;
  return result;
}

uint64_t sub_27482500C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2749FA2F4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2749FA2C4();
  MEMORY[0x28223BE20](v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a1[6];
  *v7 = *a1;
  (*(v9 + 104))(v7, *MEMORY[0x277D7D688]);
  v10 = a1[4];
  v11 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v10);
  v12 = *(v11 + 16);
  v13 = v8;
  v12(v10, v11);
  sub_2749FA314();
  KeyPath = swift_getKeyPath();
  v15 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096B0A0, &qword_274A18650) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A760, &qword_274A18660) + 28);
  v17 = *MEMORY[0x277D7D6A8];
  v18 = sub_2749FA2D4();
  result = (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = KeyPath;
  return result;
}

uint64_t sub_274825270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_22();
  v9 = OUTLINED_FUNCTION_66();
  v10(v9);
  return a6(v6);
}

uint64_t sub_274825328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A6B8, &qword_274A18530);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19[-v10];
  sub_2749FC8C4();
  v23 = a1;
  v24 = a2;
  v25 = a3;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A6C0, &qword_274A18538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A6C8, &qword_274A18540);
  sub_27482B3C0();
  sub_27472AB6C(&qword_28096A708, &qword_28096A6C8, &qword_274A18540, MEMORY[0x277CE1198]);
  sub_2749FC8D4();
  sub_27473ACF4();
  sub_2749FC0D4();
  (*(v9 + 8))(v11, v8);
  *(a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A718, &qword_274A18568) + 36)) = 0x3FF0000000000000;
  KeyPath = swift_getKeyPath();
  v13 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A720, &qword_274A185A0) + 36);
  *v13 = KeyPath;
  *(v13 + 8) = 0;
  v14 = a3;
  v15 = sub_2749FC414();
  v16 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A728, &unk_274A185D8);
  v18 = (a4 + *(result + 36));
  *v18 = v16;
  v18[1] = v15;
  return result;
}

double sub_27482559C@<D0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0, &qword_274A13E30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27[-v5];
  v7 = sub_2749FBE14();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = objc_opt_self();
  [v11 systemFontSize];
  v12 = [v11 systemFontOfSize_weight_];
  (*(v8 + 104))(v10, *MEMORY[0x277CE0A68], v7);
  v13 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v13);

  sub_2749FBD74();
  sub_2747359D0(v6, &unk_28096C0A0, &qword_274A13E30);
  (*(v8 + 8))(v10, v7);
  sub_2749FBD54();
  sub_2749FBDA4();

  v14 = sub_2749FBEC4();
  v16 = v15;
  LOBYTE(v7) = v17;
  v19 = v18;

  [v12 descender];
  v21 = v20 + 3.0;
  KeyPath = swift_getKeyPath();
  v23 = swift_getKeyPath();
  LOBYTE(v7) = v7 & 1;
  v27[24] = v7;
  v27[16] = 0;
  [v12 descender];
  v25 = v24;

  result = -v25;
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v7;
  *(a3 + 24) = v19;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = v21;
  *(a3 + 48) = v23;
  *(a3 + 56) = 2;
  *(a3 + 64) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = -v25;
  return result;
}

uint64_t sub_274825864@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C0A0, &qword_274A13E30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_2749FBE14();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2749FB644();
  v22 = 0;
  (*(v8 + 104))(v10, *MEMORY[0x277CE0AC0], v7);
  v12 = sub_2749FBD24();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);

  sub_2749FBD74();
  sub_2747359D0(v6, &unk_28096C0A0, &qword_274A13E30);
  (*(v8 + 8))(v10, v7);
  sub_2749FBD54();
  sub_2749FBDA4();

  v13 = sub_2749FBEC4();
  v15 = v14;
  LOBYTE(v7) = v16;
  v18 = v17;

  result = swift_getKeyPath();
  v20 = v22;
  *a3 = v11;
  *(a3 + 8) = 0;
  *(a3 + 16) = v20;
  *(a3 + 24) = v13;
  *(a3 + 32) = v15;
  *(a3 + 40) = v7 & 1;
  *(a3 + 48) = v18;
  *(a3 + 56) = result;
  *(a3 + 64) = 3;
  *(a3 + 72) = 0;
  return result;
}

uint64_t sub_274825AB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_2749FC914();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A890, &qword_274A187A0);
  return sub_274825B04(a1, a2 + *(v5 + 44));
}

uint64_t sub_274825B04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_2749FB614();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v33[-v8];
  v10 = sub_2749FAA94();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v33[-v15];
  sub_274821414(&v33[-v15]);
  (*(v11 + 104))(v14, *MEMORY[0x277CDF3C0], v10);
  v34 = sub_2749FAA84();
  v17 = *(v11 + 8);
  v17(v14, v10);
  v17(v16, v10);
  sub_27482161C(v9);
  (*(v4 + 104))(v7, *MEMORY[0x277CE0220], v3);
  LOBYTE(v10) = sub_2749FAA84();
  v18 = *(v4 + 8);
  v18(v7, v3);
  v18(v9, v3);
  v19 = a1[5];
  v20 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v19);
  v21 = (*(v20 + 32))(v19, v20);
  v22 = [v21 baseColorForDarkMode:v34 & 1 highContrast:v10 & 1];

  v23 = [v22 platformColor];
  v24 = v23;
  sub_2749FC3E4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  v25 = v36;

  v26 = v35;
  sub_2749F9F94();
  v27 = sub_2749FC914();
  v29 = v28;
  v30 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A898, &qword_274A187A8) + 36);
  sub_274825EC4(a1, v30, v25);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A8A0, &qword_274A187B0);
  v32 = (v30 + *(result + 36));
  *v32 = v27;
  v32[1] = v29;
  return result;
}

uint64_t sub_274825EC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_2749FC404();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A8A8, &qword_274A187B8);
  MEMORY[0x28223BE20](v9);
  v11 = (&v31 - v10);
  v12 = sub_2749FB4C4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 144);
  if (*(a1 + 152) != 1)
  {

    sub_2749FD2D4();
    v18 = sub_2749FBC14();
    v32 = v7;
    v19 = v9;
    v20 = v6;
    v21 = a2;
    v22 = v18;
    sub_2749FA424();

    a2 = v21;
    v6 = v20;
    v9 = v19;
    v7 = v32;
    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_2747F2F1C(v16, 0);
    (*(v13 + 8))(v15, v12);
    if (v34 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v23 = *(sub_2749FAFC4() + 20);
    v24 = *MEMORY[0x277CE0118];
    v25 = sub_2749FB584();
    (*(*(v25 - 8) + 104))(v11 + v23, v24, v25);
    *v11 = a3;
    v11[1] = a3;
    (*(v7 + 104))(v33, *MEMORY[0x277CE0EE0], v6);
    v26 = sub_2749FC4B4();
    *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A8B0, &unk_274A187C0) + 36)) = v26;
    v27 = *(v9 + 36);
    v28 = *MEMORY[0x277CE13B8];
    v29 = sub_2749FC994();
    (*(*(v29 - 8) + 104))(v11 + v27, v28, v29);
    sub_2747D31F8(v11, a2, &qword_28096A8A8, &qword_274A187B8);
    v17 = 0;
    return __swift_storeEnumTagSinglePayload(a2, v17, 1, v9);
  }

  if (v16)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = 1;
  return __swift_storeEnumTagSinglePayload(a2, v17, 1, v9);
}

id sub_274826264()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = [v0 baseColor];
  v2 = [v1 platformColor];

  v9 = 0.0;
  v10[0] = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [v2 getHue:v10 saturation:&v9 brightness:&v8 alpha:&v7];
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithHue:v10[0] saturation:v9 + -0.05 brightness:v8 + -0.15 alpha:v7];
  v4 = [objc_allocWithZone(MEMORY[0x277D79E20]) initWithPlatformColor_];

  sub_27471CF08(0, &qword_280968AA0, 0x277D79F98);
  v5 = sub_274827220(v4, [v0 startColor], objc_msgSend(v0, sel_endColor));

  return v5;
}

id sub_274826414(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = sub_2749FDCA4();
  v3 = [swift_getObjCClassFromMetadata() itemWithObject_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

id sub_27482648C(uint64_t a1)
{
  sub_27471CF08(0, &qword_28096D760, 0x277CFC2F8);
  v1 = sub_2749FCF74();

  v2 = [swift_getObjCClassFromMetadata() collectionWithItems_];

  return v2;
}

uint64_t sub_274826510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  v7 = *(type metadata accessor for ShortcutChiclet(0) - 8);
  v6[18] = v7;
  v6[19] = *(v7 + 64);
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  v6[21] = swift_task_alloc();
  v8 = sub_2749FA4E4();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = sub_2749FD0A4();
  v6[28] = sub_2749FD094();
  v10 = sub_2749FD044();
  v6[29] = v10;
  v6[30] = v9;

  return MEMORY[0x2822009F8](sub_2748266BC, v10, v9);
}

uint64_t sub_2748266BC()
{
  sub_27471CF08(0, &qword_28096A788, 0x277CFC298);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A790, &qword_274A186B8);
  inited = swift_initStackObject();
  v2 = MEMORY[0x277CFC608];
  *(inited + 16) = xmmword_274A0EF10;
  v3 = *v2;
  *(inited + 32) = *v2;
  v4 = *MEMORY[0x277CFC6C8];
  type metadata accessor for WFItemClassPrioritizationType(0);
  *(inited + 64) = v5;
  *(inited + 40) = v4;
  type metadata accessor for WFCoercionOptionName(0);
  sub_27473AB0C(&qword_280967310, type metadata accessor for WFCoercionOptionName, &unk_274A0E93C);
  v6 = v3;
  v7 = v4;
  OUTLINED_FUNCTION_125();
  v8 = sub_2749FCCB4();
  v9 = sub_274826EF0(v8);
  v0[31] = v9;
  v10 = swift_task_alloc();
  v0[32] = v10;
  *v10 = v0;
  v10[1] = sub_27482684C;
  v11 = v0[16];

  return MEMORY[0x28214EF80](v11, v9);
}

uint64_t sub_27482684C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[33] = a1;
  v5[34] = a2;
  v5[35] = v2;

  v6 = v4[30];
  v7 = v4[29];
  if (v2)
  {
    v8 = sub_274826CEC;
  }

  else
  {
    v8 = sub_274826994;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_274826994()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);

  if (v1)
  {
    v3 = *(v0 + 272);
    v4 = *(v0 + 264);
    v5 = v3;
    v6 = [v5 items];
    sub_27471CF08(0, &qword_28096D760, 0x277CFC2F8);
    v7 = sub_2749FCF84();

    v8 = sub_27472D918(v7);

    if (v8)
    {
      sub_2749FA3D4();
      v9 = sub_2749FA4D4();
      v10 = sub_2749FD2C4();
      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 208);
      v13 = *(v0 + 176);
      v14 = *(v0 + 184);
      if (v11)
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_274719000, v9, v10, "Failed to coerce some content items", v15, 2u);
        OUTLINED_FUNCTION_31();
      }

      (*(v14 + 8))(v12, v13);
    }

    else
    {
    }

    v16 = *(v0 + 264);
    if (v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = *(v0 + 264);
    v17 = v16;
    if (v16)
    {
LABEL_12:
      v26 = *(v0 + 272);
      v28 = *(v0 + 160);
      v27 = *(v0 + 168);
      v30 = *(v0 + 144);
      v29 = *(v0 + 152);
      v31 = *(v0 + 136);
      v32 = sub_2749FD0E4();
      __swift_storeEnumTagSinglePayload(v27, 1, 1, v32);
      OUTLINED_FUNCTION_37_7();
      sub_27473B9F0(v31, v28, v33);
      v34 = v16;
      v35 = sub_2749FD094();
      v36 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v37 = swift_allocObject();
      v38 = MEMORY[0x277D85700];
      *(v37 + 16) = v35;
      *(v37 + 24) = v38;
      sub_27473D980(v28, v37 + v36);
      *(v37 + ((v29 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;
      sub_27479930C();

      goto LABEL_13;
    }
  }

  sub_2749FA3D4();
  v18 = sub_2749FA4D4();
  v19 = sub_2749FD2C4();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v0 + 272);
  v22 = *(v0 + 200);
  v23 = *(v0 + 176);
  v24 = *(v0 + 184);
  if (v20)
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_274719000, v18, v19, "Coercion request returned nil", v25, 2u);
    OUTLINED_FUNCTION_31();
  }

  (*(v24 + 8))(v22, v23);
LABEL_13:

  OUTLINED_FUNCTION_48_0();

  return v39();
}

uint64_t sub_274826CEC()
{
  v20 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);

  sub_2749FA3D4();
  v3 = v1;
  v4 = sub_2749FA4D4();
  v5 = sub_2749FD2C4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 280);
    v7 = *(v0 + 184);
    v18 = *(v0 + 192);
    v8 = *(v0 + 176);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = sub_2749FDD84();
    v13 = sub_2747AF460(v11, v12, &v19);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_274719000, v4, v5, "Content collection failed with error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();

    (*(v7 + 8))(v18, v8);
  }

  else
  {

    v14 = OUTLINED_FUNCTION_32();
    v15(v14);
  }

  OUTLINED_FUNCTION_48_0();

  return v16();
}

id sub_274826EF0(uint64_t a1)
{
  type metadata accessor for WFCoercionOptionName(0);
  sub_27473AB0C(&qword_280967310, type metadata accessor for WFCoercionOptionName, &unk_274A0E93C);
  v1 = sub_2749FCC94();

  v2 = [swift_getObjCClassFromMetadata() optionsWithDictionary_];

  return v2;
}

uint64_t sub_274826FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2749FD0A4();
  v5[4] = sub_2749FD094();
  v7 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_274827044, v7, v6);
}

uint64_t sub_274827044()
{
  v1 = *(v0 + 16);

  v2 = (v1 + *(type metadata accessor for ShortcutChiclet(0) + 76));
  if (*v2)
  {
    (*v2)(*(v0 + 24));
  }

  OUTLINED_FUNCTION_48_0();

  return v3();
}

double sub_2748270CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A6A8, &qword_274A18518);
  (*(*(v11 - 8) + 16))(a5, a1, v11);
  v12 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A6B0, &unk_274A18520) + 36));
  *v12 = sub_27482B39C;
  v12[1] = v10;

  return result;
}

id sub_274827220(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBaseColor:a1 startColor:a2 endColor:a3];

  return v6;
}

double sub_2748272D0()
{
  OUTLINED_FUNCTION_44_0();
  sub_27473B150();
  *v0 = v2;
  v0[1] = v3;
  result = *&v4;
  v0[2] = v4;
  v0[3] = v5;
  return result;
}

uint64_t (*sub_274827334())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_2748273A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22();
  v10 = OUTLINED_FUNCTION_66();
  v11(v10);
  return a7(v7);
}

uint64_t sub_274827478()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5F8, &qword_274A17A80);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_35();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5F0, &qword_274A17A78);
  OUTLINED_FUNCTION_65_0(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_30();
  return v6(v5);
}

uint64_t sub_27482755C()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5F8, &qword_274A17A80);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5F0, &qword_274A17A78);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

void sub_27482765C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {
    v7 = v4[4];
    v8 = v4[5];
    (*(v8 + 16))(*(*a1 + 48), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 56));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_274827724@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27473B638();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_27482777C())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274827808()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_35();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_65_0(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_30();
  return v6(v5);
}

uint64_t sub_2748278EC()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_2748279EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27473C998();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_274827A44())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274827AD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_35();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_65_0(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_30();
  return v6(v5);
}

uint64_t sub_274827BB4()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_274827CB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27473D5F4();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_274827D0C())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274827D98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_35();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_65_0(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_30();
  return v6(v5);
}

uint64_t sub_274827E7C()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_274827F7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27473CF60();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_274827FD4())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274828060()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_35();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_65_0(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_30();
  return v6(v5);
}

uint64_t sub_274828144()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_274828244@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27473D0A8();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_27482829C())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274828328()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_35();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_65_0(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_30();
  return v6(v5);
}

uint64_t sub_27482840C()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_27482850C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274828564();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_274828578())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274828604()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_35();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_65_0(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_30();
  return v6(v5);
}

uint64_t sub_2748286E8()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_2748287E8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27473CE90();
  *a1 = result & 1;
  return result;
}

uint64_t (*sub_274828840())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_2748288CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_35();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_65_0(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_30();
  return v6(v5);
}

uint64_t sub_2748289B0()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DB80, &unk_274A12B00);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_274828AEC(unint64_t *a1)
{
  v2 = *a1;
  sub_27482B4E8(v2);
  return sub_27473AA60(&v2);
}

double sub_274828B28()
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(KeyPath);

  return result;
}

uint64_t (*sub_274828B8C())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274828C18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A608, &qword_274A17CD0);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_35();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A600, &qword_274A17CC8);
  OUTLINED_FUNCTION_65_0(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_30();
  return v6(v5);
}

uint64_t sub_274828CFC()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A608, &qword_274A17CD0);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A600, &qword_274A17CC8);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_274828DFC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2749FA914();
}

uint64_t (*sub_274828E6C())()
{
  v1 = OUTLINED_FUNCTION_116();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_54(v2);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_125_1(KeyPath);
  v4 = swift_getKeyPath();
  *(v0 + 48) = OUTLINED_FUNCTION_33(v4);
  return sub_2747B2788;
}

uint64_t sub_274828EF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A618, &qword_274A17D00);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_35();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A610, &qword_274A17CF8);
  OUTLINED_FUNCTION_65_0(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_30();
  return v6(v5);
}

uint64_t sub_274828FDC()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A618, &qword_274A17D00);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A610, &qword_274A17CF8);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

uint64_t sub_2748290DC@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_2748291DC();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_27475D1DC;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_27482914C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_27475D1D4;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_27473A658(v1, v2);
  return sub_27473B5D8(v4, v3);
}

uint64_t sub_2748291DC()
{
  v1 = (v0 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model_buttonAction);
  swift_beginAccess();
  v2 = *v1;
  sub_27473A658(*v1, v1[1]);
  return v2;
}

uint64_t sub_274829290()
{
  v12[0] = xmmword_274A17800;
  v12[1] = xmmword_274A17810;
  __asm { FMOV            V1.2D, #22.0 }

  v12[2] = xmmword_274A17820;
  v12[3] = _Q1;
  sub_27473B430(v12);
  sub_27473A698(0);
  sub_27473A738(0);
  sub_27473A844(0);
  sub_27473A8E0(0);
  sub_27473A92C(0);
  sub_27473A958(0);
  sub_27473A9B8(0);
  *&v12[0] = 7;
  sub_27473AA60(v12);
  v6 = (v0 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model_buttonAction);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = 0;
  v6[1] = 0;
  sub_27471F8A4(v7, v8);
  v9 = objc_allocWithZone(type metadata accessor for PopoverModel(0));
  sub_274736CE4();
  return sub_274828DFC(v10);
}

uint64_t ShortcutChiclet.Model.deinit()
{
  v1 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__metrics;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A5F0, &qword_274A17A78);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__isSelected;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096C270, &qword_274A129A0);
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v7 = OUTLINED_FUNCTION_51(OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__isHovered);
  (v6)(v7);
  v8 = OUTLINED_FUNCTION_51(OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__isEditing);
  (v6)(v8);
  v9 = OUTLINED_FUNCTION_51(OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__isGallery);
  (v6)(v9);
  v10 = OUTLINED_FUNCTION_51(OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__isGalleryDetail);
  (v6)(v10);
  v11 = OUTLINED_FUNCTION_51(OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__isAddedToLibrary);
  (v6)(v11);
  v12 = OUTLINED_FUNCTION_51(OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__isDownloading);
  (v6)(v12);
  v13 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__buttonType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A600, &qword_274A17CC8);
  OUTLINED_FUNCTION_1_2();
  (*(v14 + 8))(v0 + v13);
  v15 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model__popoverModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A610, &qword_274A17CF8);
  OUTLINED_FUNCTION_1_2();
  (*(v16 + 8))(v0 + v15);
  sub_27471F8A4(*(v0 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model_buttonAction), *(v0 + OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet5Model_buttonAction + 8));
  return v0;
}

uint64_t sub_27482956C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_2748295C8()
{
  OUTLINED_FUNCTION_44_0();
  sub_274829864();
  *v0 = v1;
  *(v0 + 8) = v2;
}

uint64_t sub_274829608(uint64_t *a1, __n128 a2)
{
  v2 = *(a1 + 8);
  v4 = *a1;
  v5 = v2;
  return sub_2748298C8(&v4);
}

uint64_t sub_274829648()
{
  v0 = sub_2749FA4E4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2749FA3D4();

  v4 = sub_2749FA4D4();
  v5 = sub_2749FD2B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2749FA904();

    v12[1] = v14;
    v13 = v15;
    v8 = sub_2749FCDD4();
    v10 = sub_2747AF460(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_274719000, v4, v5, "Set running state to %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x277C61040](v7, -1, -1);
    MEMORY[0x277C61040](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

double sub_274829864()
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(KeyPath);

  return result;
}

uint64_t sub_2748298C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v1;
  v5 = v2;

  OUTLINED_FUNCTION_54_5(&v4);
  return sub_274829648();
}

uint64_t (*sub_274829940(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_17_11(KeyPath);

  return sub_2748299B8;
}

uint64_t sub_2748299B8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return sub_2748298C8(&v3);
}

uint64_t sub_274829A14(void *a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_10_3(v3 + *a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_50();
  return swift_endAccess();
}

uint64_t sub_274829A7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A630, &qword_274A17D60);
  OUTLINED_FUNCTION_1_29();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_10_6(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_35();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A628, &qword_274A17D58);
  OUTLINED_FUNCTION_65_0(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_30();
  return v6(v5);
}

uint64_t sub_274829B60()
{
  v1 = OUTLINED_FUNCTION_98();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A630, &qword_274A17D60);
  OUTLINED_FUNCTION_25_0(v3);
  *(v0 + 40) = v4;
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_104(v6);
  v8 = __swift_coroFrameAllocStub(v7);
  OUTLINED_FUNCTION_105(v8);
  OUTLINED_FUNCTION_42_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A628, &qword_274A17D58);
  OUTLINED_FUNCTION_50();
  swift_endAccess();
  return OUTLINED_FUNCTION_102_0();
}

BOOL static ShortcutChiclet.Progress.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) != 1)
    {
      if (v2 == 0.0)
      {
        if (v4 != 2 || *&v3 != 0)
        {
          return 0;
        }
      }

      else if (v4 != 2 || *&v3 != 1)
      {
        return 0;
      }

      return 1;
    }

    if (v4 != 1)
    {
      return 0;
    }
  }

  else if (*(a2 + 8))
  {
    return 0;
  }

  return v2 == v3;
}

double sub_274829CCC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_68();
  sub_2749FA904();

  result = -1.0;
  if (!v2)
  {
    result = v1;
  }

  if (v2 == 1)
  {
    return v1;
  }

  return result;
}

BOOL sub_274829D58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_68();
  sub_2749FA904();

  return v1 == 1;
}

uint64_t ShortcutChiclet.Progress.deinit()
{
  v1 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet8Progress__state[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A628, &qword_274A17D58);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t ShortcutChiclet.Progress.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV10WorkflowUI15ShortcutChiclet8Progress__state[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096A628, &qword_274A17D58);
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_274829ECC()
{
  OUTLINED_FUNCTION_14_7();
  v0 = sub_274738520();
  return OUTLINED_FUNCTION_20(v0);
}

uint64_t sub_274829F6C(void *a1)
{
  v2 = [a1 associatedAppBundleIdentifier];

  if (v2)
  {
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  return OUTLINED_FUNCTION_32();
}