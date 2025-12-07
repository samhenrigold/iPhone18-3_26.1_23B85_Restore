uint64_t sub_21A41B668(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  if ((*(v2 + 72) & 2) != 0)
  {
    if ((a2 & 0x100000000) != 0)
    {
      sub_21A3DCAA4();
      swift_allocError();
      *v8 = 21;
      return swift_willThrow();
    }

    *(v2 + 88) = a2;
  }

  sub_21A41C7E4(v10);
  v11[0] = v10[0];
  v11[1] = v10[1];
  v11[2] = v10[2];
  sub_21A41F11C(v11);
  if (v3 || (swift_beginAccess(), swift_beginAccess(), v4 = , sub_21A41DA94(v4, (v2 + 96), (v2 + 104)), swift_endAccess(), swift_endAccess(), , swift_beginAccess(), swift_beginAccess(), v5 = , sub_21A41DA94(v5, (v2 + 112), (v2 + 120)), swift_endAccess(), swift_endAccess(), , swift_beginAccess(), v6 = , sub_21A41E464(v6, (v2 + 128)), swift_endAccess(), , sub_21A41CC80(), *(v2 + 136) != 1))
  {
  }

  else
  {
    sub_21A41C718();
    result = swift_beginAccess();
    v9 = *(v2 + 312);
    if (v9)
    {

      *v9 = *(v2 + 88);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21A41B8A8()
{
  v1 = v0;
  v2 = *(v0 + 496);
  v42 = *(v2 + 16);
  if (v42)
  {

    result = swift_beginAccess();
    v4 = 0;
    for (i = 0; i != v42; ++i)
    {
      if (i >= *(v2 + 16))
      {
        goto LABEL_39;
      }

      v6 = (v2 + 32 + 16 * i);
      v7 = *v6;
      v8 = v6[1];
      v9 = *(v1 + 24);
      v10 = *(v1 + 32);

      sub_21A414C78(v9, v10, v7, v8);
      v12 = v11;
      v14 = v13;
      v16 = v15;

      v17 = (v16 >> 1) - v14;
      if (v16 >> 1 != v14)
      {
        if ((v16 >> 1) <= v14)
        {
          goto LABEL_47;
        }

        v19 = (v12 + 8 * v14);
        v20 = 1;
        while (1)
        {
          v21 = *v19++;
          v18 = v20 * v21;
          if ((v20 * v21) >> 64 != (v20 * v21) >> 63)
          {
            break;
          }

          v20 = v18;
          if (!--v17)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v18 = 1;
LABEL_10:
      result = swift_unknownObjectRelease();
      v22 = __OFADD__(v4, v18);
      v4 += v18;
      if (v22)
      {
        goto LABEL_40;
      }
    }

    if (v4 < 0)
    {
      goto LABEL_49;
    }

    if (v4)
    {
      v23 = sub_21A451344();
      *(v23 + 16) = v4;
      memset_pattern16((v23 + 32), &unk_21A456140, 4 * v4);
      goto LABEL_16;
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_16:
  v24 = *(v1 + 496);
  v43 = *(v24 + 16);
  if (!v43)
  {
    return v23;
  }

  swift_beginAccess();
  result = swift_beginAccess();
  v25 = 0;
  v26 = 0;
  while (v25 < *(v24 + 16))
  {
    v27 = (v24 + 32 + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = *(v1 + 24);
    v31 = *(v1 + 32);

    result = sub_21A414C78(v30, v31, v28, v29);
    v35 = (v34 >> 1) - v33;
    if (v34 >> 1 != v33)
    {
      if ((v34 >> 1) <= v33)
      {
        goto LABEL_48;
      }

      v37 = (v32 + 8 * v33);
      v36 = 1;
      while (1)
      {
        v38 = *v37++;
        v39 = v36 * v38;
        if ((v36 * v38) >> 64 != (v36 * v38) >> 63)
        {
          goto LABEL_38;
        }

        v36 = v39;
        if (!--v35)
        {
          swift_unknownObjectRelease();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_27;
        }
      }
    }

    swift_unknownObjectRelease();
    result = swift_isUniquelyReferenced_nonNull_native();
    v36 = 1;
    if (result)
    {
      v36 = 1;
    }

    else
    {
LABEL_35:
      result = sub_21A410F90(v23);
      v23 = result;
LABEL_27:
      if (v36 < 0xFFFFFFFF80000000)
      {
        goto LABEL_42;
      }

      if (v36 > 0x7FFFFFFF)
      {
        goto LABEL_43;
      }
    }

    v40 = *(v1 + 128);
    if (!*(v40 + 16))
    {
      goto LABEL_44;
    }

    result = sub_21A3DCA2C(v28, v29);
    if ((v41 & 1) == 0)
    {
      goto LABEL_45;
    }

    if (!*(*(v40 + 56) + 168 * result))
    {
      goto LABEL_50;
    }

    cblas_scopy_NEWLAPACK();

    v22 = __OFADD__(v26, v36);
    v26 += v36;
    if (v22)
    {
      goto LABEL_46;
    }

    if (++v25 == v43)
    {

      return v23;
    }
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
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
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void *sub_21A41BC10()
{
  v1 = *(v0 + 488);
  v38 = *(v1 + 16);
  if (v38)
  {
    v2 = v0;
    v37 = v1 + 32;

    swift_beginAccess();
    swift_beginAccess();
    v3 = 0;
    v4 = MEMORY[0x277D84F98];
    v36 = v2;
    while (v3 < *(v1 + 16))
    {
      v5 = (v37 + 16 * v3);
      v7 = *v5;
      v6 = v5[1];
      v8 = *(v2 + 24);
      v9 = *(v2 + 32);

      sub_21A414C78(v8, v9, v7, v6);
      v13 = (v12 >> 1) - v11;
      if (v12 >> 1 == v11)
      {
        swift_unknownObjectRelease();
        v14 = 1;
      }

      else
      {
        if ((v12 >> 1) <= v11)
        {
          goto LABEL_43;
        }

        v15 = (v10 + 8 * v11);
        v14 = 1;
        do
        {
          v16 = *v15++;
          v17 = v14 * v16;
          if ((v14 * v16) >> 64 != (v14 * v16) >> 63)
          {
            __break(1u);
            goto LABEL_37;
          }

          v14 = v17;
          --v13;
        }

        while (v13);
        swift_unknownObjectRelease();
        if (v14 < 0)
        {
          goto LABEL_38;
        }

        if (!v14)
        {

          v18 = MEMORY[0x277D84F90];
          goto LABEL_15;
        }
      }

      v18 = sub_21A451344();
      *(v18 + 16) = v14;
      bzero((v18 + 32), 4 * v14);
LABEL_15:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v4;
      sub_21A4032A0(v18, v7, v6, isUniquelyReferenced_nonNull_native);

      if (v14 >> 31)
      {
        goto LABEL_39;
      }

      v20 = *(v2 + 112);
      if (!*(v20 + 16))
      {
        goto LABEL_40;
      }

      v21 = v40;

      v22 = sub_21A3DCA2C(v7, v6);
      if ((v23 & 1) == 0)
      {
        goto LABEL_41;
      }

      v39 = v3;
      if (!*(*(v20 + 56) + 168 * v22))
      {
        goto LABEL_44;
      }

      v24 = v1;

      v25 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v21;
      v4 = v21;
      v27 = sub_21A3DCA2C(v7, v6);
      v28 = v21[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        goto LABEL_42;
      }

      v31 = v26;
      if (v21[3] >= v30)
      {
        if (v25)
        {
          if ((v26 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v4 = &v40;
          sub_21A3E4280();
          if ((v31 & 1) == 0)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        sub_21A3E32BC(v30, v25);
        v4 = v40;
        v32 = sub_21A3DCA2C(v7, v6);
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_45;
        }

        v27 = v32;
        if ((v31 & 1) == 0)
        {
LABEL_32:
          __break(1u);
LABEL_33:

          return v4;
        }
      }

      v34 = *(v40[7] + 8 * v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_21A407D80(0, *(v34 + 2), 0, v34);
      }

      v1 = v24;

      cblas_scopy_NEWLAPACK();
      v2 = v36;
      if (v34)
      {

        v4 = v40;
        *(v40[7] + 8 * v27) = v34;
      }

      else
      {

        v4 = v40;
        sub_21A419EB8(v40[6] + 16 * v27);
        sub_21A4190E0(v27, v4);
      }

      ++v3;

      if (v39 + 1 == v38)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    result = sub_21A451A94();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21A41BFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  sub_21A3DCAA4();
  v9 = swift_allocError();
  *v10 = 19;
  if ((*(v3 + 72) & 1) == 0)
  {
LABEL_73:
    swift_willThrow();
    return a3;
  }

  if (*(v3 + 136))
  {
    result = swift_beginAccess();
    v12 = *(v3 + 144);
    if (!v12)
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    *v12 = 0;
  }

  v13 = *(v3 + 80);
  if (!v13)
  {
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
    goto LABEL_106;
  }

  if (a3 == 0x8000000000000000 && v13 == -1)
  {
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    a3 = sub_21A4082B4(0, *(a3 + 16) + 1, 1, a3);
LABEL_77:
    v59 = *(a3 + 16);
    v58 = *(a3 + 24);
    if (v59 >= v58 >> 1)
    {
      a3 = sub_21A4082B4((v58 > 1), v59 + 1, 1, a3);
    }

    *(a3 + 16) = v59 + 1;
    *(a3 + 8 * v59 + 32) = v5;
    sub_21A41F58C(v71);
    if (!v63)
    {
      return a3;
    }

LABEL_44:

    return a3;
  }

  v14 = a3 / v13;
  if (a3 / v13 < 0)
  {
    goto LABEL_94;
  }

  v61 = *(v3 + 80);
  v62 = a3;
  v63 = v4;
  v68 = a2;
  if (v14)
  {
    v15 = 0;
    a3 = MEMORY[0x277D84F90];
    v16 = a1;
    v17 = a1 + 64;
    v64 = v14;
    while (2)
    {
      v71 = v15;
      v65 = v15 + 1;
      v67 = a3;
      v18 = 1 << *(v16 + 32);
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      else
      {
        v19 = -1;
      }

      v20 = v19 & *(v16 + 64);

      swift_beginAccess();
      v21 = 0;
      v5 = (v18 + 63) >> 6;
      v69 = v5;
      if (v20)
      {
        while (1)
        {
          v22 = v21;
          v23 = a1;
LABEL_20:
          if (!*(v23 + 16))
          {
            break;
          }

          v24 = (*(v23 + 48) + ((v22 << 10) | (16 * __clz(__rbit64(v20)))));
          v25 = *v24;
          v26 = v24[1];

          sub_21A3DCA2C(v25, v26);
          if ((v27 & 1) == 0)
          {
            goto LABEL_82;
          }

          v28 = *(v6 + 96);
          if (!*(v28 + 16))
          {
            goto LABEL_83;
          }

          a3 = v6;

          v29 = sub_21A3DCA2C(v25, v26);
          if ((v30 & 1) == 0)
          {
            goto LABEL_84;
          }

          v5 = *(*(v28 + 56) + 168 * v29);

          if (!*(v68 + 16))
          {
            goto LABEL_85;
          }

          v31 = sub_21A3DCA2C(v25, v26);
          if ((v32 & 1) == 0)
          {
            goto LABEL_86;
          }

          v33 = *(*(v68 + 56) + 8 * v31);
          v34 = *(v6 + 80);
          v35 = v33 * v34;
          if ((v33 * v34) >> 64 != (v33 * v34) >> 63)
          {
            goto LABEL_87;
          }

          if (v35 < 0xFFFFFFFF80000000)
          {
            goto LABEL_88;
          }

          if (v35 > 0x7FFFFFFF)
          {
            goto LABEL_89;
          }

          if ((v33 * v71) >> 64 != (v33 * v71) >> 63)
          {
            goto LABEL_90;
          }

          if ((v33 * v71 * v34) >> 64 != (v33 * v71 * v34) >> 63)
          {
            goto LABEL_91;
          }

          if (!v5)
          {
            goto LABEL_107;
          }

          v20 &= v20 - 1;

          cblas_scopy_NEWLAPACK();

          v21 = v22;
          v17 = a1 + 64;
          v5 = v69;
          if (!v20)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

LABEL_16:
      v23 = a1;
      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
LABEL_76:
          v5 = sub_21A41BC10();
          a3 = v67;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_108;
          }

          goto LABEL_77;
        }

        if (v22 >= v5)
        {
          break;
        }

        v20 = *(v17 + 8 * v22);
        ++v21;
        if (v20)
        {
          goto LABEL_20;
        }
      }

      if (espresso_plan_execute_sync())
      {
LABEL_72:

        swift_allocError();
        *v57 = 20;
        goto LABEL_73;
      }

      v36 = sub_21A41BC10();
      a3 = v67;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a3 = sub_21A4082B4(0, v67[2] + 1, 1, v67);
      }

      v14 = v64;
      v38 = *(a3 + 16);
      v37 = *(a3 + 24);
      if (v38 >= v37 >> 1)
      {
        a3 = sub_21A4082B4((v37 > 1), v38 + 1, 1, a3);
      }

      *(a3 + 16) = v38 + 1;
      *(a3 + 8 * v38 + 32) = v36;
      v15 = v65;
      v16 = a1;
      if (v65 != v64)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    a3 = MEMORY[0x277D84F90];
  }

  if (v62 - v14 * v61 < 1)
  {
    return a3;
  }

  v39 = *(v6 + 80);
  sub_21A41F58C(v62 - v14 * v61);
  if (v4)
  {
    goto LABEL_44;
  }

  if (*(v6 + 136) != 1)
  {
LABEL_49:
    v70 = v62 - v14 * v61;
    v71 = v39;
    v67 = a3;
    v63 = 0;
    a3 = a1 + 64;
    v41 = 1 << *(a1 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & *(a1 + 64);

    swift_beginAccess();
    v44 = 0;
    v5 = (v41 + 63) >> 6;
    v60 = v6;
    for (i = v5; v43; v5 = i)
    {
      v45 = v44;
      v46 = a1;
LABEL_57:
      if (!*(v46 + 16))
      {
        goto LABEL_95;
      }

      v47 = (*(v46 + 48) + ((v45 << 10) | (16 * __clz(__rbit64(v43)))));
      v49 = *v47;
      v48 = v47[1];

      sub_21A3DCA2C(v49, v48);
      if ((v50 & 1) == 0)
      {
        goto LABEL_96;
      }

      a3 = v14;
      v51 = *(v6 + 96);
      if (!*(v51 + 16))
      {
        goto LABEL_97;
      }

      v52 = sub_21A3DCA2C(v49, v48);
      if ((v53 & 1) == 0)
      {
        goto LABEL_98;
      }

      v5 = *(*(v51 + 56) + 168 * v52);

      if (!*(v68 + 16))
      {
        goto LABEL_99;
      }

      result = sub_21A3DCA2C(v49, v48);
      if ((v54 & 1) == 0)
      {
        goto LABEL_100;
      }

      v55 = *(*(v68 + 56) + 8 * result);
      v56 = v55 * v70;
      if ((v55 * v70) >> 64 != (v55 * v70) >> 63)
      {
        goto LABEL_101;
      }

      if (v56 < 0xFFFFFFFF80000000)
      {
        goto LABEL_102;
      }

      if (v56 > 0x7FFFFFFF)
      {
        goto LABEL_103;
      }

      if ((v55 * a3) >> 64 != (v55 * a3) >> 63)
      {
        goto LABEL_104;
      }

      if ((v55 * a3 * v71) >> 64 != (v55 * a3 * v71) >> 63)
      {
        goto LABEL_105;
      }

      if (!v5)
      {
        __break(1u);
        goto LABEL_110;
      }

      v14 = a3;
      v43 &= v43 - 1;

      cblas_scopy_NEWLAPACK();

      v44 = v45;
      v6 = v60;
      a3 = a1 + 64;
    }

    v46 = a1;
    while (1)
    {
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_92;
      }

      if (v45 >= v5)
      {

        if (!espresso_plan_execute_sync())
        {
          goto LABEL_76;
        }

        goto LABEL_72;
      }

      v43 = *(a3 + 8 * v45);
      ++v44;
      if (v43)
      {
        goto LABEL_57;
      }
    }
  }

  result = swift_beginAccess();
  v40 = *(v6 + 144);
  if (v40)
  {
    *v40 = 0;
    goto LABEL_49;
  }

LABEL_111:
  __break(1u);
  return result;
}

uint64_t sub_21A41C718()
{
  swift_beginAccess();
  if (espresso_network_set_function_name())
  {
    v0 = 13;
  }

  else if (espresso_plan_execute_sync())
  {
    v0 = 12;
  }

  else
  {
    get_main_function_name();
    result = espresso_network_set_function_name();
    if (!result)
    {
      return result;
    }

    v0 = 14;
  }

  sub_21A3DCAA4();
  swift_allocError();
  *v2 = v0;
  return swift_willThrow();
}

uint64_t sub_21A41C7E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 480);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v10 = MEMORY[0x277D84F90];
    v40 = MEMORY[0x277D84F90];
    v41 = MEMORY[0x277D84F90];
    v42 = MEMORY[0x277D84F90];
    v39 = MEMORY[0x277D84F90];
LABEL_13:
    v37 = v10;
    v38 = v10;
    goto LABEL_14;
  }

  v4 = sub_21A451344();
  *(v4 + 16) = v3;
  v42 = v4;
  bzero((v4 + 32), 4 * v3);
  v2 = *(v1 + 480);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v10 = MEMORY[0x277D84F90];
    v40 = MEMORY[0x277D84F90];
    v41 = MEMORY[0x277D84F90];
    v39 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v5 = sub_21A451344();
  *(v5 + 16) = v3;
  v41 = v5;
  bzero((v5 + 32), 4 * v3);
  v2 = *(v1 + 480);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v10 = MEMORY[0x277D84F90];
    v39 = MEMORY[0x277D84F90];
    v40 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v6 = sub_21A451344();
  *(v6 + 16) = v3;
  v40 = v6;
  bzero((v6 + 32), 4 * v3);
  v2 = *(v1 + 480);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v10 = MEMORY[0x277D84F90];
    v39 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v7 = sub_21A451344();
  *(v7 + 16) = v3;
  v39 = v7;
  bzero((v7 + 32), 4 * v3);
  v2 = *(v1 + 480);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v10 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v8 = sub_21A451344();
  *(v8 + 16) = v3;
  v38 = v8;
  bzero((v8 + 32), 4 * v3);
  v2 = *(v1 + 480);
  v3 = *(v2 + 16);
  if (v3)
  {
    v9 = sub_21A451344();
    *(v9 + 16) = v3;
    v37 = v9;
    bzero((v9 + 32), 4 * v3);
    v2 = *(v1 + 480);
    v3 = *(v2 + 16);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

LABEL_14:

  result = swift_beginAccess();
  if (v3)
  {
    v12 = 0;
    v36 = v1;
    v34 = v3;
    v13 = (v2 + 40);
    v35 = v2;
    while (v12 < *(v2 + 16))
    {
      v14 = *(v13 - 1);
      v15 = *v13;
      v16 = *(v1 + 24);
      v17 = *(v1 + 32);

      sub_21A414C78(v16, v17, v14, v15);
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v24 = *(v1 + 80);
      if ((v23 & 1) == 0 || (result = swift_isUniquelyReferenced_nonNull(), (result & 1) == 0))
      {
        sub_21A41F9F0(v19, v21, v23);
        v19 = v25;
        v21 = v26;
        v23 = v27;
        result = swift_unknownObjectRelease();
      }

      if (v23 < 2 || v21 > 0)
      {
        goto LABEL_44;
      }

      *v19 = v24;
      result = sub_21A4196D8(v19, v21, v23, v43);
      if (v43[0] < 0xFFFFFFFF80000000)
      {
        goto LABEL_45;
      }

      if (v43[0] > 0x7FFFFFFF)
      {
        goto LABEL_46;
      }

      if (v12 >= *(v42 + 16))
      {
        goto LABEL_47;
      }

      v29 = v43[1];
      v28 = v43[2];
      v31 = v43[3];
      v30 = v43[4];
      v32 = v43[5];
      *(v42 + 32 + 4 * v12) = v43[0];
      if (v29 < 0xFFFFFFFF80000000)
      {
        goto LABEL_48;
      }

      if (v29 > 0x7FFFFFFF)
      {
        goto LABEL_49;
      }

      if (v12 >= *(v41 + 16))
      {
        goto LABEL_50;
      }

      *(v41 + 32 + 4 * v12) = v29;
      if (v28 < 0xFFFFFFFF80000000)
      {
        goto LABEL_51;
      }

      if (v28 > 0x7FFFFFFF)
      {
        goto LABEL_52;
      }

      if (v12 >= *(v40 + 16))
      {
        goto LABEL_53;
      }

      *(v40 + 32 + 4 * v12) = v28;
      if (v31 < 0xFFFFFFFF80000000)
      {
        goto LABEL_54;
      }

      if (v31 > 0x7FFFFFFF)
      {
        goto LABEL_55;
      }

      if (v12 >= *(v39 + 16))
      {
        goto LABEL_56;
      }

      *(v39 + 32 + 4 * v12) = v31;
      if (v30 < 0xFFFFFFFF80000000)
      {
        goto LABEL_57;
      }

      if (v30 > 0x7FFFFFFF)
      {
        goto LABEL_58;
      }

      if (v12 >= *(v38 + 16))
      {
        goto LABEL_59;
      }

      *(v38 + 32 + 4 * v12) = v30;
      if (v32 < 0xFFFFFFFF80000000)
      {
        goto LABEL_60;
      }

      if (v32 > 0x7FFFFFFF)
      {
        goto LABEL_61;
      }

      if (v12 >= *(v37 + 16))
      {
        goto LABEL_62;
      }

      *(v37 + 32 + 4 * v12) = v32;
      result = swift_unknownObjectRelease();
      v13 += 2;
      ++v12;
      v2 = v35;
      v1 = v36;
      if (v34 == v12)
      {
        goto LABEL_41;
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
LABEL_48:
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
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  else
  {
LABEL_41:

    *a1 = v42;
    a1[1] = v41;
    a1[2] = v40;
    a1[3] = v39;
    a1[4] = v38;
    a1[5] = v37;
  }

  return result;
}

void sub_21A41CC80()
{
  v1 = v0;
  v157 = *MEMORY[0x277D85DE8];
  v2 = v0[60];
  v3 = *(v2 + 16);
  v86 = v1;
  if (v3)
  {

    swift_beginAccess();
    if (!*(v2 + 16))
    {
LABEL_25:
      __break(1u);
LABEL_26:

      sub_21A3DCAA4();
      swift_allocError();
      v28 = 4;
      goto LABEL_59;
    }

    v4 = 0;
    v5 = (v2 + 40);
    v80 = v3 - 1;
    v82 = v2;
    while (1)
    {
      v89 = v5;
      v92 = v4;
      v6 = *(v5 - 1);
      v7 = *v5;
      v8 = *(v1 + 8);
      sub_21A4510E4();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v1[12];
      v116 = v10;
      v1[12] = 0x8000000000000000;
      v85 = v6;
      v12 = sub_21A3DCA2C(v6, v7);
      v13 = v10[2];
      v14 = (v11 & 1) == 0;
      v15 = v13 + v14;
      if (__OFADD__(v13, v14))
      {
        __break(1u);
LABEL_88:
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
      }

      v16 = v11;
      if (v10[3] >= v15)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v11)
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_21A3E4570();
          if (v16)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        sub_21A3E3828(v15, isUniquelyReferenced_nonNull_native);
        v17 = sub_21A3DCA2C(v85, v7);
        if ((v16 & 1) != (v18 & 1))
        {
LABEL_96:
          sub_21A451A94();
          __break(1u);
          return;
        }

        v12 = v17;
        if (v16)
        {
LABEL_11:
          memmove(&__dst, (v10[7] + 168 * v12), 0xA8uLL);
          sub_21A419F0C(&__dst);
          v154 = v144;
          v155 = v145;
          v156[0] = v146[0];
          *(v156 + 9) = *(v146 + 9);
          v151 = v141;
          v152 = v142;
          v153 = v143;
          goto LABEL_14;
        }
      }

      sub_21A419E74(&__dst);
      v155 = v145;
      v156[0] = v146[0];
      *(v156 + 9) = *(v146 + 9);
      v151 = v141;
      v152 = v142;
      v153 = v143;
      v154 = v144;
LABEL_14:
      v147 = __dst;
      v148 = v138;
      v149 = v139;
      v150 = v140;
      v145 = v155;
      v146[0] = v156[0];
      *(v146 + 9) = *(v156 + 9);
      v141 = v151;
      v142 = v152;
      v143 = v153;
      v144 = v154;
      if (sub_21A419E9C(&__dst) == 1)
      {
        goto LABEL_93;
      }

      v19 = espresso_network_bind_buffer();
      v124 = v154;
      v125 = v155;
      *v126 = v156[0];
      *&v126[9] = *(v156 + 9);
      v121 = v151;
      v122 = v152;
      v123 = v153;
      v117 = v147;
      v118 = v148;
      v119 = v149;
      v120 = v150;
      v134 = v154;
      v135 = v155;
      v136[0] = v156[0];
      *(v136 + 9) = *(v156 + 9);
      v131 = v151;
      v132 = v152;
      v133 = v153;
      v127 = v147;
      v128 = v148;
      v129 = v149;
      v130 = v150;
      if (sub_21A419E9C(&v127) == 1)
      {

        v20 = v116;
        if (v16)
        {
          sub_21A419EB8(v116[6] + 16 * v12);
          sub_21A419290(v12, v116);
        }
      }

      else if (v16)
      {

        v20 = v116;
        v21 = v116[7] + 168 * v12;
        *(v21 + 128) = v125;
        *(v21 + 144) = *v126;
        *(v21 + 160) = *&v126[16];
        *(v21 + 64) = v121;
        *(v21 + 80) = v122;
        *(v21 + 96) = v123;
        *(v21 + 112) = v124;
        *v21 = v117;
        *(v21 + 16) = v118;
        *(v21 + 32) = v119;
        *(v21 + 48) = v120;
      }

      else
      {
        v20 = v116;
        v116[(v12 >> 6) + 8] |= 1 << v12;
        v22 = (v116[6] + 16 * v12);
        *v22 = v85;
        v22[1] = v7;
        v23 = v116[7] + 168 * v12;
        *v23 = v117;
        *(v23 + 16) = v118;
        *(v23 + 64) = v121;
        *(v23 + 80) = v122;
        *(v23 + 32) = v119;
        *(v23 + 48) = v120;
        *(v23 + 160) = *&v126[16];
        *(v23 + 128) = v125;
        *(v23 + 144) = *v126;
        *(v23 + 96) = v123;
        *(v23 + 112) = v124;
        v24 = v116[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_89;
        }

        v116[2] = v26;
      }

      v1 = v86;
      v86[12] = v20;
      swift_endAccess();

      if (v19)
      {
        goto LABEL_26;
      }

      if (v80 == v92)
      {

        break;
      }

      v87 = v87 & 0xFFFFFFFF00000000 | v8;
      v4 = v92 + 1;
      v5 = v89 + 2;
      if ((v92 + 1) >= *(v82 + 16))
      {
        goto LABEL_25;
      }
    }
  }

  v29 = v1[61];
  v30 = *(v29 + 16);
  if (v30)
  {

    swift_beginAccess();
    if (!*(v29 + 16))
    {
LABEL_52:
      __break(1u);
LABEL_53:

      sub_21A3DCAA4();
      swift_allocError();
      v28 = 5;
      goto LABEL_59;
    }

    v31 = 0;
    v32 = (v29 + 40);
    v81 = v30 - 1;
    v83 = v29;
    while (1)
    {
      v90 = v32;
      v93 = v31;
      v33 = *(v32 - 1);
      v34 = *v32;
      v35 = *(v1 + 8);
      sub_21A4510E4();
      swift_beginAccess();

      v36 = swift_isUniquelyReferenced_nonNull_native();
      v37 = v1[14];
      v105 = v37;
      v1[14] = 0x8000000000000000;
      v85 = v33;
      v39 = sub_21A3DCA2C(v33, v34);
      v40 = v37[2];
      v41 = (v38 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        goto LABEL_88;
      }

      v43 = v38;
      if (v37[3] >= v42)
      {
        if (v36)
        {
          if (v38)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_21A3E4570();
          if (v43)
          {
            goto LABEL_38;
          }
        }
      }

      else
      {
        sub_21A3E3828(v42, v36);
        v44 = sub_21A3DCA2C(v85, v34);
        if ((v43 & 1) != (v45 & 1))
        {
          goto LABEL_96;
        }

        v39 = v44;
        if (v43)
        {
LABEL_38:
          memmove(&__dst, (v37[7] + 168 * v39), 0xA8uLL);
          sub_21A419F0C(&__dst);
          goto LABEL_41;
        }
      }

      sub_21A419E74(&__dst);
LABEL_41:
      v155 = v145;
      v156[0] = v146[0];
      *(v156 + 9) = *(v146 + 9);
      v151 = v141;
      v152 = v142;
      v153 = v143;
      v154 = v144;
      v147 = __dst;
      v148 = v138;
      v149 = v139;
      v150 = v140;
      v146[0] = v156[0];
      *(v146 + 9) = *(v156 + 9);
      if (sub_21A419E9C(&__dst) == 1)
      {
        goto LABEL_94;
      }

      v46 = espresso_network_bind_buffer();
      v113 = v154;
      v114 = v155;
      *v115 = v156[0];
      *&v115[9] = *(v156 + 9);
      v110 = v151;
      v111 = v152;
      v112 = v153;
      v106 = v147;
      v107 = v148;
      v108 = v149;
      v109 = v150;
      v135 = v155;
      v136[0] = v156[0];
      *(v136 + 9) = *(v156 + 9);
      v131 = v151;
      v132 = v152;
      v133 = v153;
      v134 = v154;
      v127 = v147;
      v128 = v148;
      v129 = v149;
      v130 = v150;
      if (sub_21A419E9C(&v127) == 1)
      {

        v47 = v105;
        if (v43)
        {
          sub_21A419EB8(v105[6] + 16 * v39);
          sub_21A419290(v39, v105);
        }
      }

      else if (v43)
      {

        v47 = v105;
        v48 = v105[7] + 168 * v39;
        *(v48 + 128) = v114;
        *(v48 + 144) = *v115;
        *(v48 + 160) = *&v115[16];
        *(v48 + 64) = v110;
        *(v48 + 80) = v111;
        *(v48 + 96) = v112;
        *(v48 + 112) = v113;
        *v48 = v106;
        *(v48 + 16) = v107;
        *(v48 + 32) = v108;
        *(v48 + 48) = v109;
      }

      else
      {
        v47 = v105;
        v105[(v39 >> 6) + 8] |= 1 << v39;
        v49 = (v105[6] + 16 * v39);
        *v49 = v85;
        v49[1] = v34;
        v50 = v105[7] + 168 * v39;
        *v50 = v106;
        *(v50 + 16) = v107;
        *(v50 + 64) = v110;
        *(v50 + 80) = v111;
        *(v50 + 32) = v108;
        *(v50 + 48) = v109;
        *(v50 + 160) = *&v115[16];
        *(v50 + 128) = v114;
        *(v50 + 144) = *v115;
        *(v50 + 96) = v112;
        *(v50 + 112) = v113;
        v51 = v105[2];
        v25 = __OFADD__(v51, 1);
        v52 = v51 + 1;
        if (v25)
        {
          goto LABEL_90;
        }

        v105[2] = v52;
      }

      v1 = v86;
      v86[14] = v47;
      swift_endAccess();

      if (v46)
      {
        goto LABEL_53;
      }

      if (v81 == v93)
      {

        break;
      }

      v87 = v87 & 0xFFFFFFFF00000000 | v35;
      v31 = v93 + 1;
      v32 = v90 + 2;
      if ((v93 + 1) >= *(v83 + 16))
      {
        goto LABEL_52;
      }
    }
  }

  if (*(v1 + 136) == 1)
  {
    swift_beginAccess();
    sub_21A4510E4();
    swift_beginAccess();
    v53 = espresso_network_bind_buffer_to_global();
    swift_endAccess();

    if (v53 || (sub_21A4510E4(), swift_beginAccess(), v54 = espresso_network_bind_buffer_to_global(), swift_endAccess(), , v54))
    {
      sub_21A3DCAA4();
      swift_allocError();
      v28 = 7;
      goto LABEL_59;
    }

    v55 = *(v1[62] + 16);
    if (v55)
    {

      v57 = 0;
      v58 = (v56 + 40);
      v84 = v56;
      while (1)
      {
        v88 = v58;
        v91 = v57;
        v60 = *(v58 - 1);
        v59 = *v58;
        v61 = *(v1 + 8);
        sub_21A4510E4();
        swift_beginAccess();

        v62 = swift_isUniquelyReferenced_nonNull_native();
        v63 = v1[16];
        v94 = v63;
        v1[16] = 0x8000000000000000;
        v65 = sub_21A3DCA2C(v60, v59);
        v66 = v63[2];
        v67 = (v64 & 1) == 0;
        v68 = v66 + v67;
        if (__OFADD__(v66, v67))
        {
          goto LABEL_91;
        }

        v69 = v64;
        if (v63[3] >= v68)
        {
          if (v62)
          {
            if ((v64 & 1) == 0)
            {
              goto LABEL_71;
            }
          }

          else
          {
            sub_21A3E4570();
            if ((v69 & 1) == 0)
            {
              goto LABEL_71;
            }
          }
        }

        else
        {
          sub_21A3E3828(v68, v62);
          v70 = sub_21A3DCA2C(v60, v59);
          if ((v69 & 1) != (v71 & 1))
          {
            goto LABEL_96;
          }

          v65 = v70;
          if ((v69 & 1) == 0)
          {
LABEL_71:
            sub_21A419E74(&__dst);
            goto LABEL_72;
          }
        }

        memmove(&__dst, (v63[7] + 168 * v65), 0xA8uLL);
        sub_21A419F0C(&__dst);
LABEL_72:
        v155 = v145;
        v156[0] = v146[0];
        *(v156 + 9) = *(v146 + 9);
        v151 = v141;
        v152 = v142;
        v153 = v143;
        v154 = v144;
        v147 = __dst;
        v148 = v138;
        v149 = v139;
        v150 = v140;
        v146[0] = v156[0];
        *(v146 + 9) = *(v156 + 9);
        if (sub_21A419E9C(&__dst) == 1)
        {
          __break(1u);
          goto LABEL_96;
        }

        v72 = v85 & 0xFFFFFFFF00000000 | v61;
        v73 = espresso_network_bind_buffer_to_global();
        v103 = v155;
        *v104 = v156[0];
        *&v104[9] = *(v156 + 9);
        v99 = v151;
        v100 = v152;
        v101 = v153;
        v102 = v154;
        v95 = v147;
        v96 = v148;
        v97 = v149;
        v98 = v150;
        v135 = v155;
        v136[0] = v156[0];
        *(v136 + 9) = *(v156 + 9);
        v131 = v151;
        v132 = v152;
        v133 = v153;
        v134 = v154;
        v127 = v147;
        v128 = v148;
        v129 = v149;
        v130 = v150;
        if (sub_21A419E9C(&v127) == 1)
        {

          v74 = v94;
          if (v69)
          {
            sub_21A419EB8(v94[6] + 16 * v65);
            sub_21A419290(v65, v94);
          }
        }

        else if (v69)
        {

          v74 = v94;
          v75 = v94[7] + 168 * v65;
          *(v75 + 128) = v103;
          *(v75 + 144) = *v104;
          *(v75 + 160) = *&v104[16];
          *(v75 + 64) = v99;
          *(v75 + 80) = v100;
          *(v75 + 96) = v101;
          *(v75 + 112) = v102;
          *v75 = v95;
          *(v75 + 16) = v96;
          *(v75 + 32) = v97;
          *(v75 + 48) = v98;
        }

        else
        {
          v74 = v94;
          v94[(v65 >> 6) + 8] |= 1 << v65;
          v76 = (v94[6] + 16 * v65);
          *v76 = v60;
          v76[1] = v59;
          v77 = v94[7] + 168 * v65;
          *v77 = v95;
          *(v77 + 16) = v96;
          *(v77 + 64) = v99;
          *(v77 + 80) = v100;
          *(v77 + 32) = v97;
          *(v77 + 48) = v98;
          *(v77 + 160) = *&v104[16];
          *(v77 + 128) = v103;
          *(v77 + 144) = *v104;
          *(v77 + 96) = v101;
          *(v77 + 112) = v102;
          v78 = v94[2];
          v25 = __OFADD__(v78, 1);
          v79 = v78 + 1;
          if (v25)
          {
            goto LABEL_92;
          }

          v94[2] = v79;
        }

        v1 = v86;
        v86[16] = v74;
        swift_endAccess();

        if (v73)
        {
          goto LABEL_84;
        }

        if (v55 - 1 == v91)
        {

          return;
        }

        v85 = v72;
        v57 = v91 + 1;
        v58 = v88 + 2;
        if ((v91 + 1) >= *(v84 + 16))
        {
          __break(1u);
LABEL_84:

          sub_21A3DCAA4();
          swift_allocError();
          v28 = 6;
LABEL_59:
          *v27 = v28;
          swift_willThrow();
          return;
        }
      }
    }
  }
}

uint64_t sub_21A41DA94(uint64_t result, void *a2, void *a3)
{
  v92 = *MEMORY[0x277D85DE8];
  v55 = *(result + 16);
  if (!v55)
  {
    return result;
  }

  v91 = 0;
  v54 = result + 32;
  memset(v90, 0, sizeof(v90));
  swift_beginAccess();
  v4 = 0;
  v5 = 0;
  v61 = a2;
  while (1)
  {
    v6 = (v54 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v78 = *a2;
    sub_21A4035A8(v90, v8, v7, isUniquelyReferenced_nonNull_native);
    *a2 = v78;
    v10 = sub_21A414C78(*(v56 + 24), *(v56 + 32), v8, v7);
    v14 = v12;
    v15 = v13;
    v16 = v13 >> 1;
    v17 = (v13 >> 1) - v12;
    v59 = v4;
    v60 = v10;
    v57 = v11;
    if (v13 >> 1 == v12)
    {
      v18 = 1;
      goto LABEL_13;
    }

    if ((v13 >> 1) <= v12)
    {
      goto LABEL_60;
    }

    v19 = (v11 + 8 * v12);
    v18 = 1;
    do
    {
      v20 = *v19++;
      v21 = v18 * v20;
      if ((v18 * v20) >> 64 != (v18 * v20) >> 63)
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v18 = v21;
      --v17;
    }

    while (v17);
    if (v21 < 0)
    {
      goto LABEL_54;
    }

    if (v21)
    {
LABEL_13:

      v22 = sub_21A451344();
      *(v22 + 16) = v18;
      bzero((v22 + 32), 4 * v18);
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
    }

    v23 = swift_isUniquelyReferenced_nonNull_native();
    *&v78 = *a3;
    sub_21A4032A0(v22, v8, v7, v23);

    *a3 = v78;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *&v78 = *a3;
    v25 = v78;
    v27 = sub_21A3DCA2C(v8, v7);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_55;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if (v24)
      {
        if ((v26 & 1) == 0)
        {
          goto LABEL_56;
        }

        goto LABEL_21;
      }

      sub_21A3E4280();
      if (v31)
      {
        goto LABEL_21;
      }

LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
    }

    sub_21A3E32BC(v30, v24);
    v32 = sub_21A3DCA2C(v8, v7);
    if ((v31 & 1) != (v33 & 1))
    {
      goto LABEL_62;
    }

    v27 = v32;
    if ((v31 & 1) == 0)
    {
      goto LABEL_56;
    }

LABEL_21:
    v34 = v78;
    v35 = *(*(v78 + 56) + 8 * v27);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_21A410F90(v35);
    }

    v36 = *(v35 + 2);
    if (v36 >> 61)
    {
      goto LABEL_57;
    }

    sub_21A41E140((v35 + 32), &v35[4 * v36 + 32], v61, v8, v7);
    *(*(v34 + 56) + 8 * v27) = v35;
    *a3 = v34;
    v37 = v16 - v14;
    v58 = v5;
    if (__OFSUB__(v16, v14))
    {
      goto LABEL_58;
    }

    if ((v15 & 1) == 0)
    {
      v38 = v60;
      swift_unknownObjectRetain();
      goto LABEL_27;
    }

    sub_21A451A34();
    v38 = v60;
    swift_unknownObjectRetain_n();
    v39 = swift_dynamicCastClass();
    if (!v39)
    {
      swift_unknownObjectRelease();
      v39 = MEMORY[0x277D84F90];
    }

    v40 = *(v39 + 16);

    if (v40 == v37)
    {
      v41 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      a2 = v61;
      if (!v41)
      {
        goto LABEL_32;
      }
    }

    else
    {
      swift_unknownObjectRelease();
LABEL_27:
      a2 = v61;
      sub_21A41F920(v38, v57, v14, v15);
LABEL_32:
      swift_unknownObjectRelease();
    }

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v43 = *a2;
    v63 = *a2;
    v45 = sub_21A3DCA2C(v8, v7);
    v46 = *(v43 + 16);
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_59;
    }

    v49 = v44;
    if (*(v43 + 24) < v48)
    {
      break;
    }

    if ((v42 & 1) == 0)
    {
      sub_21A3E4570();
    }

LABEL_39:
    if (v49)
    {
      memmove(__dst, (v63[7] + 168 * v45), 0xA8uLL);
      sub_21A419F0C(__dst);
    }

    else
    {
      sub_21A419E74(__dst);
    }

    v86 = __dst[8];
    v87[0] = v77[0];
    *(v87 + 9) = *(v77 + 9);
    v82 = __dst[4];
    v83 = __dst[5];
    v84 = __dst[6];
    v85 = __dst[7];
    v78 = __dst[0];
    v79 = __dst[1];
    v80 = __dst[2];
    v81 = __dst[3];
    v77[0] = v87[0];
    *(v77 + 9) = *(v87 + 9);
    if (sub_21A419E9C(__dst) == 1)
    {
      goto LABEL_61;
    }

    espresso_buffer_pack_tensor_shape();
    v72 = v86;
    *v73 = v87[0];
    *&v73[9] = *(v87 + 9);
    v68 = v82;
    v69 = v83;
    v70 = v84;
    v71 = v85;
    v64 = v78;
    v65 = v79;
    v66 = v80;
    v67 = v81;
    v74[8] = v86;
    v75[0] = v87[0];
    *(v75 + 9) = *(v87 + 9);
    v74[4] = v82;
    v74[5] = v83;
    v74[6] = v84;
    v74[7] = v85;
    v74[0] = v78;
    v74[1] = v79;
    v74[2] = v80;
    v74[3] = v81;
    if (sub_21A419E9C(v74) == 1)
    {

      v52 = v59;
      if (v49)
      {
        sub_21A419EB8(v63[6] + 16 * v45);
        sub_21A419290(v45, v63);
      }
    }

    else
    {
      v88[8] = v72;
      v88[9] = *v73;
      v89 = *&v73[16];
      v88[4] = v68;
      v88[5] = v69;
      v88[6] = v70;
      v88[7] = v71;
      v88[0] = v64;
      v88[1] = v65;
      v88[2] = v66;
      v88[3] = v67;
      v52 = v59;
      if (v49)
      {

        v53 = v63[7] + 168 * v45;
        *(v53 + 128) = v72;
        *(v53 + 144) = *v73;
        *(v53 + 160) = *&v73[16];
        *(v53 + 64) = v68;
        *(v53 + 80) = v69;
        *(v53 + 96) = v70;
        *(v53 + 112) = v71;
        *v53 = v64;
        *(v53 + 16) = v65;
        *(v53 + 32) = v66;
        *(v53 + 48) = v67;
      }

      else
      {
        sub_21A419540(v45, v8, v7, v88, v63);
      }
    }

    v4 = v52 + 1;
    swift_unknownObjectRelease();
    *a2 = v63;

    v5 = v58;
    if (v4 == v55)
    {
      return result;
    }
  }

  sub_21A3E3828(v48, v42);
  v50 = sub_21A3DCA2C(v8, v7);
  if ((v49 & 1) == (v51 & 1))
  {
    v45 = v50;
    goto LABEL_39;
  }

LABEL_62:
  result = sub_21A451A94();
  __break(1u);
  return result;
}

uint64_t sub_21A41E140(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = *a3;
  v11 = v62;
  *a3 = 0x8000000000000000;
  v13 = sub_21A3DCA2C(a4, a5);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
LABEL_11:
    sub_21A3E4570();
    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v5 = v12;
  if (v11[3] < v16)
  {
    sub_21A3E3828(v16, isUniquelyReferenced_nonNull_native);
    v17 = sub_21A3DCA2C(a4, a5);
    if ((v5 & 1) != (v18 & 1))
    {
LABEL_23:
      result = sub_21A451A94();
      __break(1u);
      return result;
    }

    v13 = v17;
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_9:
    memmove(&__dst, (v62[7] + 168 * v13), 0xA8uLL);
    sub_21A419F0C(&__dst);
    goto LABEL_13;
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v12)
  {
    goto LABEL_9;
  }

LABEL_12:
  sub_21A419E74(&__dst);
LABEL_13:
  v59 = v48;
  v60 = v49;
  v61 = v50;
  v55 = v44;
  v56 = v45;
  v57 = v46;
  v58 = v47;
  v51 = v40;
  v52 = v41;
  v53 = v42;
  v54 = v43;
  if (sub_21A419E9C(&__dst) == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v35 = v58;
  v36 = v59;
  v37 = v60;
  v31 = v54;
  v32 = v55;
  v33 = v56;
  v34 = v57;
  v28 = v51;
  v29 = v52;
  v38 = v61;
  v30 = v53;
  v27 = a1;
  result = sub_21A419E9C(&v27);
  if (result == 1)
  {
    v20 = v62;
    if (v5)
    {
      sub_21A419EB8(v62[6] + 16 * v13);
      result = sub_21A419290(v13, v20);
    }
  }

  else
  {
    *&v63[104] = v57;
    *&v63[120] = v58;
    *&v63[136] = v59;
    *&v63[152] = v60;
    *&v63[40] = v53;
    *&v63[56] = v54;
    *&v63[72] = v55;
    *&v63[88] = v56;
    *&v63[8] = v51;
    *v63 = a1;
    *&v63[24] = v52;
    v20 = v62;
    if (v5)
    {
      v21 = v62[7] + 168 * v13;
      v22 = *&v63[144];
      *(v21 + 128) = *&v63[128];
      *(v21 + 144) = v22;
      *(v21 + 160) = *&v63[160];
      v23 = *&v63[80];
      *(v21 + 64) = *&v63[64];
      *(v21 + 80) = v23;
      v24 = *&v63[112];
      *(v21 + 96) = *&v63[96];
      *(v21 + 112) = v24;
      v25 = *&v63[16];
      *v21 = *v63;
      *(v21 + 16) = v25;
      v26 = *&v63[48];
      *(v21 + 32) = *&v63[32];
      *(v21 + 48) = v26;
    }

    else
    {
      sub_21A419540(v13, a4, a5, v63, v62);
    }
  }

  *a3 = v20;
  return result;
}

uint64_t sub_21A41E464(uint64_t result, void *a2)
{
  v113 = *MEMORY[0x277D85DE8];
  v3 = *(result + 16);
  if (v3)
  {
    v4 = v2;
    v6 = result;
    v112 = 0;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    swift_beginAccess();
    v7 = (v6 + 40);
    v68 = v4;
    v71 = a2;
    do
    {
      v9 = *(v7 - 1);
      v10 = *v7;
      v70 = v7;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v92 = *a2;
      v12 = v92;
      v72 = v9;
      v13 = sub_21A3DCA2C(v9, v10);
      v15 = *(v12 + 16);
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        swift_unknownObjectRelease();
        __break(1u);
      }

      v19 = v14;
      if (*(v12 + 24) >= v18)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v67 = v13;
          sub_21A3E4570();
          v13 = v67;
        }
      }

      else
      {
        sub_21A3E3828(v18, isUniquelyReferenced_nonNull_native);
        v13 = sub_21A3DCA2C(v72, v10);
        if ((v19 & 1) != (v20 & 1))
        {
          goto LABEL_58;
        }
      }

      v21 = v92;
      v69 = v3;
      if (v19)
      {
        v22 = *(v92 + 56) + 168 * v13;
        v23 = v111;
        *(v22 + 128) = v110;
        *(v22 + 144) = v23;
        *(v22 + 160) = v112;
        v24 = v107;
        *(v22 + 64) = v106;
        *(v22 + 80) = v24;
        v25 = v109;
        *(v22 + 96) = v108;
        *(v22 + 112) = v25;
        v26 = v103;
        *v22 = v102;
        *(v22 + 16) = v26;
        v27 = v105;
        *(v22 + 32) = v104;
        *(v22 + 48) = v27;
      }

      else
      {
        *(v92 + 8 * (v13 >> 6) + 64) |= 1 << v13;
        v28 = (v21[6] + 16 * v13);
        *v28 = v72;
        v28[1] = v10;
        v29 = v21[7] + 168 * v13;
        v30 = v107;
        *(v29 + 64) = v106;
        *(v29 + 80) = v30;
        *(v29 + 160) = v112;
        v31 = v111;
        *(v29 + 128) = v110;
        *(v29 + 144) = v31;
        v32 = v109;
        *(v29 + 96) = v108;
        *(v29 + 112) = v32;
        v33 = v103;
        *v29 = v102;
        *(v29 + 16) = v33;
        v34 = v105;
        *(v29 + 32) = v104;
        *(v29 + 48) = v34;
        v35 = v21[2];
        v17 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v17)
        {
          goto LABEL_54;
        }

        v21[2] = v36;
      }

      *a2 = v21;
      sub_21A414C78(*(v4 + 24), *(v4 + 32), v72, v10);
      v40 = v39 >> 1;
      v41 = (v39 >> 1) - v38;
      if (__OFSUB__(v39 >> 1, v38))
      {
        goto LABEL_52;
      }

      v42 = v37;
      v43 = v38;
      if (v39)
      {
        sub_21A451A34();
        swift_unknownObjectRetain_n();
        v49 = swift_dynamicCastClass();
        if (!v49)
        {
          swift_unknownObjectRelease();
          v49 = MEMORY[0x277D84F90];
        }

        v50 = *(v49 + 16);

        if (v50 == v41)
        {
          v51 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          v4 = v68;
          if (v51)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

        swift_unknownObjectRelease();
        v4 = v68;
        if (v41)
        {
LABEL_19:
          if (v41 < 1)
          {
            v48 = MEMORY[0x277D84F90];
            if (v43 == v40)
            {
              goto LABEL_57;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28678, &qword_21A456A10);
            v44 = v4;
            v45 = swift_allocObject();
            v46 = _swift_stdlib_malloc_size(v45);
            v47 = v46 - 32;
            if (v46 < 32)
            {
              v47 = v46 - 25;
            }

            v45[2] = v41;
            v45[3] = 2 * (v47 >> 3);
            v48 = v45;
            v4 = v44;
            if (v43 == v40)
            {
              goto LABEL_57;
            }
          }

          memcpy(v48 + 4, (v42 + 8 * v43), 8 * v41);
        }
      }

      else
      {
        swift_unknownObjectRetain();
        if (v41)
        {
          goto LABEL_19;
        }
      }

LABEL_31:
      swift_unknownObjectRelease();
LABEL_32:
      v52 = swift_isUniquelyReferenced_nonNull_native();
      v53 = *v71;
      v55 = sub_21A3DCA2C(v72, v10);
      v56 = v53[2];
      v57 = (v54 & 1) == 0;
      v58 = v56 + v57;
      if (__OFADD__(v56, v57))
      {
        goto LABEL_53;
      }

      v59 = v54;
      if (v53[3] >= v58)
      {
        if ((v52 & 1) == 0)
        {
          sub_21A3E4570();
        }
      }

      else
      {
        sub_21A3E3828(v58, v52);
        v60 = sub_21A3DCA2C(v72, v10);
        if ((v59 & 1) != (v61 & 1))
        {
LABEL_58:
          result = sub_21A451A94();
          __break(1u);
          return result;
        }

        v55 = v60;
      }

      if (v59)
      {
        memmove(__dst, (v53[7] + 168 * v55), 0xA8uLL);
        sub_21A419F0C(__dst);
        v99 = v89;
        v100 = v90;
        v101[0] = v91[0];
        *(v101 + 9) = *(v91 + 9);
        v96 = v86;
        v97 = v87;
        v98 = v88;
      }

      else
      {
        sub_21A419E74(__dst);
        v100 = v90;
        v101[0] = v91[0];
        *(v101 + 9) = *(v91 + 9);
        v96 = v86;
        v97 = v87;
        v98 = v88;
        v99 = v89;
      }

      v92 = __dst[0];
      v93 = __dst[1];
      v94 = __dst[2];
      v95 = __dst[3];
      v90 = v100;
      v91[0] = v101[0];
      *(v91 + 9) = *(v101 + 9);
      v86 = v96;
      v87 = v97;
      v88 = v98;
      v89 = v99;
      if (sub_21A419E9C(__dst) == 1)
      {
        goto LABEL_56;
      }

      espresso_buffer_pack_tensor_shape();
      v81 = v100;
      *v82 = v101[0];
      *&v82[9] = *(v101 + 9);
      v77 = v96;
      v78 = v97;
      v79 = v98;
      v80 = v99;
      v73 = v92;
      v74 = v93;
      v75 = v94;
      v76 = v95;
      v83[7] = v99;
      v83[8] = v100;
      v84[0] = v101[0];
      *(v84 + 9) = *(v101 + 9);
      v83[4] = v96;
      v83[5] = v97;
      v83[6] = v98;
      v83[0] = v92;
      v83[1] = v93;
      v83[2] = v94;
      v83[3] = v95;
      if (sub_21A419E9C(v83) == 1)
      {

        v62 = v69;
        if (v59)
        {
          sub_21A419EB8(v53[6] + 16 * v55);
          sub_21A419290(v55, v53);
        }

        goto LABEL_4;
      }

      v62 = v69;
      if (v59)
      {

        v8 = v53[7] + 168 * v55;
        *(v8 + 128) = v81;
        *(v8 + 144) = *v82;
        *(v8 + 160) = *&v82[16];
        *(v8 + 64) = v77;
        *(v8 + 80) = v78;
        *(v8 + 96) = v79;
        *(v8 + 112) = v80;
        *v8 = v73;
        *(v8 + 16) = v74;
        *(v8 + 32) = v75;
        *(v8 + 48) = v76;
LABEL_4:
        swift_unknownObjectRelease();
        goto LABEL_5;
      }

      v53[(v55 >> 6) + 8] |= 1 << v55;
      v63 = (v53[6] + 16 * v55);
      *v63 = v72;
      v63[1] = v10;
      v64 = v53[7] + 168 * v55;
      *v64 = v73;
      *(v64 + 16) = v74;
      *(v64 + 64) = v77;
      *(v64 + 80) = v78;
      *(v64 + 32) = v75;
      *(v64 + 48) = v76;
      *(v64 + 160) = *&v82[16];
      *(v64 + 128) = v81;
      *(v64 + 144) = *v82;
      *(v64 + 96) = v79;
      *(v64 + 112) = v80;
      swift_unknownObjectRelease();
      v65 = v53[2];
      v17 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v17)
      {
        goto LABEL_55;
      }

      v53[2] = v66;
LABEL_5:
      a2 = v71;
      *v71 = v53;

      v7 = v70 + 2;
      v3 = v62 - 1;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_21A41EB58(uint64_t result, void *a2)
{
  v79 = *MEMORY[0x277D85DE8];
  if (*(result + 16))
  {
    v3 = result;
    v47 = *(result + 16);
    swift_beginAccess();
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);
    v6 = *(v45 + 24);
    v7 = *(v45 + 32);

    v48 = v4;
    sub_21A414C78(v6, v7, v4, v5);
    v11 = v10 >> 1;
    v12 = (v10 >> 1) - v9;
    if (__OFSUB__(v10 >> 1, v9))
    {
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      swift_unknownObjectRelease();
      __break(1u);
    }

    v13 = v8;
    v14 = v9;
    v15 = (v3 + 56);
    v44 = a2;
    while (1)
    {
      v46 = v15;
      if (v10)
      {
        sub_21A451A34();
        swift_unknownObjectRetain_n();
        v20 = swift_dynamicCastClass();
        if (!v20)
        {
          swift_unknownObjectRelease();
          v20 = MEMORY[0x277D84F90];
        }

        v21 = *(v20 + 16);

        if (v21 == v12)
        {
          v22 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          a2 = v44;
          if (v22)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        swift_unknownObjectRelease();
        a2 = v44;
        if (v12)
        {
LABEL_6:
          if (v12 < 1)
          {
            v19 = MEMORY[0x277D84F90];
            if (v14 == v11)
            {
              goto LABEL_49;
            }
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28678, &qword_21A456A10);
            v16 = swift_allocObject();
            v17 = _swift_stdlib_malloc_size(v16);
            v18 = v17 - 32;
            if (v17 < 32)
            {
              v18 = v17 - 25;
            }

            v16[2] = v12;
            v16[3] = 2 * (v18 >> 3);
            v19 = v16;
            if (v14 == v11)
            {
              goto LABEL_49;
            }
          }

          memcpy(v19 + 4, (v13 + 8 * v14), 8 * v12);
        }
      }

      else
      {
        swift_unknownObjectRetain();
        if (v12)
        {
          goto LABEL_6;
        }
      }

LABEL_18:
      swift_unknownObjectRelease();
LABEL_19:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *a2;
      v49 = *a2;
      v26 = sub_21A3DCA2C(v48, v5);
      v27 = *(v24 + 16);
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_46;
      }

      v30 = v25;
      if (*(v24 + 24) >= v29)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v25 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_21A3E4570();
          if ((v30 & 1) == 0)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        sub_21A3E3828(v29, isUniquelyReferenced_nonNull_native);
        v31 = sub_21A3DCA2C(v48, v5);
        if ((v30 & 1) != (v32 & 1))
        {
          result = sub_21A451A94();
          __break(1u);
          return result;
        }

        v26 = v31;
        if ((v30 & 1) == 0)
        {
LABEL_23:
          sub_21A419E74(__dst);
          v77 = v67;
          v78[0] = v68[0];
          *(v78 + 9) = *(v68 + 9);
          v73 = v63;
          v74 = v64;
          v75 = v65;
          v76 = v66;
          goto LABEL_27;
        }
      }

      memmove(__dst, (v49[7] + 168 * v26), 0xA8uLL);
      sub_21A419F0C(__dst);
      v76 = v66;
      v77 = v67;
      v78[0] = v68[0];
      *(v78 + 9) = *(v68 + 9);
      v73 = v63;
      v74 = v64;
      v75 = v65;
LABEL_27:
      v69 = __dst[0];
      v70 = __dst[1];
      v71 = __dst[2];
      v72 = __dst[3];
      v67 = v77;
      v68[0] = v78[0];
      *(v68 + 9) = *(v78 + 9);
      v63 = v73;
      v64 = v74;
      v65 = v75;
      v66 = v76;
      if (sub_21A419E9C(__dst) == 1)
      {
        goto LABEL_48;
      }

      espresso_buffer_pack_tensor_shape();
      v58 = v77;
      *v59 = v78[0];
      *&v59[9] = *(v78 + 9);
      v54 = v73;
      v55 = v74;
      v56 = v75;
      v57 = v76;
      v50 = v69;
      v51 = v70;
      v52 = v71;
      v53 = v72;
      v60[7] = v76;
      v60[8] = v77;
      v61[0] = v78[0];
      *(v61 + 9) = *(v78 + 9);
      v60[4] = v73;
      v60[5] = v74;
      v60[6] = v75;
      v60[0] = v69;
      v60[1] = v70;
      v60[2] = v71;
      v60[3] = v72;
      if (sub_21A419E9C(v60) == 1)
      {

        if (v30)
        {
          sub_21A419EB8(v49[6] + 16 * v26);
          sub_21A419290(v26, v49);
        }
      }

      else
      {
        if ((v30 & 1) == 0)
        {
          v49[(v26 >> 6) + 8] |= 1 << v26;
          v34 = (v49[6] + 16 * v26);
          *v34 = v48;
          v34[1] = v5;
          v35 = v49[7] + 168 * v26;
          *v35 = v50;
          *(v35 + 16) = v51;
          *(v35 + 64) = v54;
          *(v35 + 80) = v55;
          *(v35 + 32) = v52;
          *(v35 + 48) = v53;
          *(v35 + 160) = *&v59[16];
          *(v35 + 128) = v58;
          *(v35 + 144) = *v59;
          *(v35 + 96) = v56;
          *(v35 + 112) = v57;
          swift_unknownObjectRelease();
          v36 = v49[2];
          v37 = __OFADD__(v36, 1);
          v38 = v36 + 1;
          if (v37)
          {
            goto LABEL_47;
          }

          v49[2] = v38;
          goto LABEL_36;
        }

        v33 = v49[7] + 168 * v26;
        *(v33 + 128) = v58;
        *(v33 + 144) = *v59;
        *(v33 + 160) = *&v59[16];
        *(v33 + 64) = v54;
        *(v33 + 80) = v55;
        *(v33 + 96) = v56;
        *(v33 + 112) = v57;
        *v33 = v50;
        *(v33 + 16) = v51;
        *(v33 + 32) = v52;
        *(v33 + 48) = v53;
      }

      swift_unknownObjectRelease();
LABEL_36:
      *a2 = v49;

      if (v47 == 1)
      {
        return result;
      }

      --v47;
      v15 = v46 + 2;
      v39 = *(v46 - 1);
      v5 = *v46;
      v40 = *(v45 + 24);
      v41 = *(v45 + 32);

      v48 = v39;
      sub_21A414C78(v40, v41, v39, v5);
      v13 = v42;
      v14 = v43;
      v11 = v10 >> 1;
      v12 = (v10 >> 1) - v43;
      if (__OFSUB__(v10 >> 1, v43))
      {
        goto LABEL_45;
      }
    }
  }

  return result;
}

char **sub_21A41F11C(char **result)
{
  if (*(*(v1 + 480) + 16) >> 60)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = swift_slowAlloc();
  v4 = v3;
  v5 = *(v1 + 480);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  v33 = v1;
  if (v6)
  {
    v31 = v2;
    v32 = v3;
    v36 = MEMORY[0x277D84F90];

    result = sub_21A3E48FC(0, v6, 0);
    v8 = 0;
    v7 = v36;
    v9 = (v5 + 40);
    while (1)
    {
      if (v8 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      v10 = *v9;
      if ((*v9 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v10 & 0x2000000000000000) != 0)
      {
        *__s1 = *(v9 - 1);
        v35 = v10 & 0xFFFFFFFFFFFFFFLL;

        v11 = __s1;
      }

      else
      {
        if ((*(v9 - 1) & 0x1000000000000000) == 0)
        {
          break;
        }

        v11 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      result = strdup(v11);
      v12 = result;
      if (!result)
      {
        goto LABEL_45;
      }

LABEL_11:

      v36 = v7;
      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        result = sub_21A3E48FC((v13 > 1), v14 + 1, 1);
        v7 = v36;
      }

      ++v8;
      v7[2] = v14 + 1;
      v7[v14 + 4] = v12;
      v9 += 2;
      if (v6 == v8)
      {

        v4 = v32;
        v15 = 8 * *(*(v1 + 480) + 16);
        v2 = v31;
        goto LABEL_18;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD288C0, &unk_21A4570D0);
    result = sub_21A451724();
    v12 = *__s1;
    if (!*__s1)
    {
      goto LABEL_45;
    }

    goto LABEL_11;
  }

  v15 = 0;
LABEL_18:
  memcpy(v4, v7 + 4, v15);

  result = swift_beginAccess();
  if (*(*(v1 + 480) + 16) >> 31)
  {
    goto LABEL_44;
  }

  v16 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_21A408BB4(0, *(v16 + 2), 0, v16);
  }

  *v2 = v16;
  v17 = v2[1];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_21A408BB4(0, *(v17 + 2), 0, v17);
  }

  v2[1] = v17;
  v18 = v2[2];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_21A408BB4(0, *(v18 + 2), 0, v18);
  }

  v2[2] = v18;
  v19 = v2[3];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_21A408BB4(0, *(v19 + 2), 0, v19);
  }

  v2[3] = v19;
  v20 = v2[4];

  v21 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_21A408BB4(0, *(v20 + 2), 0, v20);
  }

  v2[4] = v20;
  v22 = v2;
  v23 = v2[5];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_21A408BB4(0, *(v23 + 2), 0, v23);
  }

  v22[5] = v23;
  v24 = espresso_network_change_input_blob_shapes_seq_rank();

  if (v24)
  {
    v25 = 1;
LABEL_40:
    sub_21A3DCAA4();
    swift_allocError();
    *v30 = v25;
    return swift_willThrow();
  }

  v26 = *(*(v33 + 480) + 16);
  if (v26)
  {
    v27 = v21;
    do
    {
      v29 = *v27++;
      v28 = v29;
      if (v29)
      {
        MEMORY[0x21CEDB220](v28, -1, -1);
      }

      --v26;
    }

    while (v26);
  }

  MEMORY[0x21CEDB220](v21, -1, -1);
  result = espresso_plan_build();
  if (result)
  {
    v25 = 9;
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_21A41F58C(uint64_t a1)
{
  *(v1 + 80) = a1;
  sub_21A41C7E4(v8);
  v9[0] = v8[0];
  v9[1] = v8[1];
  v9[2] = v8[2];
  v9[3] = v8[3];
  v9[4] = v8[4];
  v9[5] = v8[5];
  if (espresso_plan_build_clean())
  {

    sub_21A3DCAA4();
    swift_allocError();
    *v3 = 22;
    return swift_willThrow();
  }

  else
  {
    sub_21A41F11C(v9);
    if (v2 || (swift_beginAccess(), v5 = , sub_21A41EB58(v5, (v1 + 96)), swift_endAccess(), , swift_beginAccess(), v6 = , sub_21A41EB58(v6, (v1 + 112)), swift_endAccess(), , sub_21A41CC80(), *(v1 + 136) != 1))
    {
    }

    else
    {
      result = swift_beginAccess();
      v7 = *(v1 + 312);
      if (v7)
      {

        *v7 = *(v1 + 88);
        return sub_21A41C718();
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_21A41F79C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for EspressoEIRTrainer();
  swift_allocObject();
  v4 = sub_21A41FAA8(a1);

  *a2 = v4;
  return result;
}

uint64_t sub_21A41F818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v8 = 1;
  result = sub_21A41B32C(a1, a2, &v8, a3, a4, MEMORY[0x277D84F90]);
  if (!v5)
  {
    *(v6 + 136) = 0;
  }

  return result;
}

void sub_21A41F920(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28678, &qword_21A456A10);
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

char *sub_21A41F9F0(char *result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 1;
  v4 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  result = sub_21A44FB28((a3 >> 1) - a2, (a3 >> 1) - a2);
  if (v3 < a2)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  result = memcpy(result + 32, &v6[8 * a2], 8 * v4);
  if (__OFSUB__(0, a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = *(v7 + 2);
  v9 = __OFADD__(a2, v8);
  v10 = a2 + v8;
  if (v9)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v10 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    return v7;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_21A41FAA8(uint64_t a1)
{
  *(v1 + 56) = 0;
  *(v1 + 64) = 0xE000000000000000;
  *(v1 + 72) = 1;
  *(v1 + 88) = 0;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 96) = sub_21A3E58A4(MEMORY[0x277D84F90]);
  *(v1 + 104) = sub_21A3E5690(v3);
  *(v1 + 112) = sub_21A3E58A4(v3);
  *(v1 + 120) = sub_21A3E5690(v3);
  *(v1 + 128) = sub_21A3E58A4(v3);
  *(v1 + 136) = 1;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0u;
  *(v1 + 384) = 0u;
  *(v1 + 400) = 0u;
  *(v1 + 416) = 0u;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 464) = 0u;
  *(v1 + 480) = v3;
  *(v1 + 488) = v3;
  *(v1 + 496) = v3;
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;

  result = espresso_create_context();
  if (result)
  {
    *(v1 + 40) = result;
    result = espresso_create_plan();
    if (result)
    {
      *(v1 + 48) = result;
      *(v1 + 80) = -1;
      return v1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A41FBAC(uint64_t a1, uint64_t a2, int64_t a3, int a4, unsigned __int8 *a5)
{
  v6 = v5;
  v9 = *a5;
  sub_21A3DCAA4();
  v10 = swift_allocError();
  *v11 = 18;
  if ((*(v5 + 72) & 2) == 0)
  {
    return swift_willThrow();
  }

  v81 = v9;
  v82 = a4;

  result = swift_beginAccess();
  v13 = *(v5 + 144);
  if (v13)
  {
    *v13 = 1065353216;
    v14 = a1 + 64;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 64);

    swift_beginAccess();
    swift_beginAccess();
    v18 = 0;
    v90 = (v15 + 63) >> 6;
    v92 = v5;
    v86 = a1 + 64;
    v87 = a1;
    while (v17)
    {
LABEL_12:
      if (!*(*(v6 + 96) + 16))
      {
        goto LABEL_92;
      }

      v20 = (*(a1 + 48) + ((v18 << 10) | (16 * __clz(__rbit64(v17)))));
      v22 = *v20;
      v21 = v20[1];

      sub_21A3DCA2C(v22, v21);
      v24 = v23;

      if ((v24 & 1) == 0 || !*(a2 + 16) || (v25 = sub_21A3DCA2C(v22, v21), (v26 & 1) == 0))
      {

LABEL_92:
        swift_allocError();
        v77 = 10;
        goto LABEL_96;
      }

      v27 = *(*(a2 + 56) + 8 * v25);
      result = sub_21A414C78(*(v5 + 24), *(v5 + 32), v22, v21);
      v31 = (v30 >> 1) - v29;
      if (v30 >> 1 == v29)
      {
        result = swift_unknownObjectRelease();
        if (v27 <= 0)
        {
LABEL_94:

LABEL_95:
          swift_allocError();
          v77 = 11;
LABEL_96:
          *v76 = v77;
          swift_willThrow();
        }

        v32 = 1;
      }

      else
      {
        if ((v30 >> 1) <= v29)
        {
          goto LABEL_124;
        }

        v33 = (v28 + 8 * v29);
        v32 = 1;
        do
        {
          v34 = *v33++;
          v35 = v32 * v34;
          if ((v32 * v34) >> 64 != (v32 * v34) >> 63)
          {
            __break(1u);
            goto LABEL_107;
          }

          v32 = v35;
          --v31;
        }

        while (v31);
        result = swift_unknownObjectRelease();
        if (v27 <= 0)
        {
          goto LABEL_94;
        }
      }

      if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
      {
        goto LABEL_120;
      }

      if (!*(v87 + 16))
      {
        goto LABEL_121;
      }

      v36 = sub_21A3DCA2C(v22, v21);
      v38 = v37;

      if ((v38 & 1) == 0)
      {
        goto LABEL_122;
      }

      a1 = v87;
      v6 = v5;
      v14 = v86;
      if (v27 * a3 == *(*(*(v87 + 56) + 8 * v36) + 16))
      {
        v39 = *(v5 + 80);
        if ((v39 * v27) >> 64 != (v39 * v27) >> 63)
        {
          goto LABEL_123;
        }

        v17 &= v17 - 1;
        if (v32 == v39 * v27)
        {
          continue;
        }
      }

      goto LABEL_95;
    }

    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
LABEL_108:
        __break(1u);
      }

      if (v19 >= v90)
      {
        break;
      }

      v17 = *(v14 + 8 * v19);
      ++v18;
      if (v17)
      {
        v18 = v19;
        goto LABEL_12;
      }
    }

    result = sub_21A4113F8(0, a3, 1);
    v40 = result;
    if (!v82)
    {
    }

    v41 = 0;
    while (1)
    {
      if (v81)
      {
        v42 = *(v40 + 2);
        v43 = v42 - 2;
        if (v42 >= 2)
        {
          break;
        }
      }

LABEL_50:
      v53 = *(v6 + 80);
      if (!v53)
      {
        goto LABEL_125;
      }

      v79 = v41;
      if (a3 == 0x8000000000000000 && v53 == -1)
      {
        goto LABEL_127;
      }

      if (a3 / v53 < 0)
      {
        goto LABEL_126;
      }

      v91 = v40;
      if (a3 / v53)
      {
        v54 = 0;
        v55 = v40 + 32;
        v80 = a3 / v53;
        do
        {
          v83 = v54 + 1;
          v56 = 1 << *(a1 + 32);
          if (v56 < 64)
          {
            v57 = ~(-1 << v56);
          }

          else
          {
            v57 = -1;
          }

          v58 = v57 & *(a1 + 64);

          result = swift_beginAccess();
          v59 = 0;
          v60 = (v56 + 63) >> 6;
          v84 = v60;
          while (v58)
          {
            if (!*(a1 + 16))
            {
              goto LABEL_111;
            }

LABEL_63:
            v61 = (*(a1 + 48) + ((v59 << 10) | (16 * __clz(__rbit64(v58)))));
            v62 = *v61;
            v63 = v61[1];

            result = sub_21A3DCA2C(v62, v63);
            if ((v64 & 1) == 0)
            {
              goto LABEL_112;
            }

            v65 = *(v6 + 96);
            if (!*(v65 + 16))
            {
              goto LABEL_113;
            }

            result = sub_21A3DCA2C(v62, v63);
            if ((v66 & 1) == 0)
            {
              goto LABEL_114;
            }

            v88 = v63;
            v67 = *(*(v65 + 56) + 168 * result);

            if (!*(a2 + 16))
            {
              goto LABEL_115;
            }

            result = sub_21A3DCA2C(v62, v88);
            if ((v68 & 1) == 0)
            {
              goto LABEL_116;
            }

            v69 = *(v6 + 80);
            if (v69 < 0)
            {
              goto LABEL_117;
            }

            if (v69)
            {
              v70 = 0;
              v71 = *(*(a2 + 56) + 8 * result);
              while (1)
              {
                v72 = *(v92 + 80);
                v73 = v54 * v72;
                if ((v54 * v72) >> 64 != (v54 * v72) >> 63)
                {
                  break;
                }

                v50 = __OFADD__(v73, v70);
                v74 = v73 + v70;
                if (v50)
                {
                  goto LABEL_98;
                }

                if (v71 < 0xFFFFFFFF80000000)
                {
                  goto LABEL_99;
                }

                if (v71 > 0x7FFFFFFF)
                {
                  goto LABEL_100;
                }

                if ((v74 & 0x8000000000000000) != 0)
                {
                  goto LABEL_101;
                }

                if (v74 >= *(v91 + 2))
                {
                  goto LABEL_102;
                }

                if ((v71 * *&v55[8 * v74]) >> 64 != (v71 * *&v55[8 * v74]) >> 63)
                {
                  goto LABEL_103;
                }

                if (!v67)
                {
                  goto LABEL_128;
                }

                if ((v71 * v70) >> 64 != (v71 * v70) >> 63)
                {
                  goto LABEL_104;
                }

                ++v70;
                result = cblas_scopy_NEWLAPACK();
                if (v69 == v70)
                {
                  goto LABEL_60;
                }
              }

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
              swift_allocError();
              *v78 = 15;
              swift_willThrow();
            }

LABEL_60:
            v58 &= v58 - 1;

            v14 = v86;
            a1 = v87;
            v6 = v92;
            v60 = v84;
          }

          while (1)
          {
            v75 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
LABEL_107:
              __break(1u);
              goto LABEL_108;
            }

            if (v75 >= v60)
            {
              break;
            }

            v58 = *(v14 + 8 * v75);
            ++v59;
            if (v58)
            {
              v59 = v75;
              if (*(a1 + 16))
              {
                goto LABEL_63;
              }

              goto LABEL_111;
            }
          }

          result = espresso_plan_execute_sync();
          if (result)
          {
            goto LABEL_105;
          }

          ++v54;
        }

        while (v83 != v80);
      }

      v41 = v79 + 1;
      v40 = v91;
      if (v79 + 1 == v82)
      {
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_21A410FA4(v40);
    }

    v44 = 0;
    v45 = v40 + 32;
    while (1)
    {
      v93 = 0;
      result = MEMORY[0x21CEDB240](&v93, 8);
      v48 = (v93 * v42) >> 64;
      if (v42 > v93 * v42)
      {
        v49 = -v42 % v42;
        if (v49 > v93 * v42)
        {
          do
          {
            v93 = 0;
            result = MEMORY[0x21CEDB240](&v93, 8);
          }

          while (v49 > v93 * v42);
          v48 = (v93 * v42) >> 64;
        }
      }

      v50 = __OFADD__(v44, v48);
      v51 = v44 + v48;
      if (v50)
      {
        break;
      }

      if (v44 != v51)
      {
        v52 = *(v40 + 2);
        if (v44 >= v52)
        {
          goto LABEL_118;
        }

        if (v51 >= v52)
        {
          goto LABEL_119;
        }

        v46 = *&v45[8 * v44];
        *&v45[8 * v44] = *&v45[8 * v51];
        *&v45[8 * v51] = v46;
      }

      --v42;
      if (v44++ == v43)
      {
        v14 = v86;
        goto LABEL_50;
      }
    }

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
  }

  __break(1u);
  return result;
}

PrivateFederatedLearning::EspressoError_optional __swiftcall EspressoError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 30;
  switch(rawValue)
  {
    case 9100:
      goto LABEL_46;
    case 9101:
      v2 = 1;
      goto LABEL_46;
    case 9102:
      v2 = 2;
      goto LABEL_46;
    case 9103:
      v2 = 3;
      goto LABEL_46;
    case 9104:
      v2 = 4;
      goto LABEL_46;
    case 9105:
      v2 = 5;
      goto LABEL_46;
    case 9106:
      v2 = 6;
      goto LABEL_46;
    case 9107:
      v2 = 7;
      goto LABEL_46;
    case 9108:
      v2 = 8;
      goto LABEL_46;
    case 9109:
      v2 = 9;
      goto LABEL_46;
    case 9110:
      v2 = 10;
      goto LABEL_46;
    case 9111:
      v2 = 11;
      goto LABEL_46;
    case 9112:
      v2 = 12;
      goto LABEL_46;
    case 9113:
      v2 = 13;
      goto LABEL_46;
    case 9114:
      v2 = 14;
      goto LABEL_46;
    case 9115:
      v2 = 15;
      goto LABEL_46;
    case 9116:
      v2 = 16;
      goto LABEL_46;
    case 9117:
      v2 = 17;
      goto LABEL_46;
    case 9118:
      v2 = 18;
      goto LABEL_46;
    case 9119:
      v2 = 19;
      goto LABEL_46;
    case 9120:
      v2 = 20;
      goto LABEL_46;
    case 9121:
      v2 = 21;
      goto LABEL_46;
    case 9122:
      v2 = 22;
      goto LABEL_46;
    case 9123:
      v2 = 23;
      goto LABEL_46;
    case 9124:
      v2 = 24;
      goto LABEL_46;
    case 9125:
      v2 = 25;
      goto LABEL_46;
    case 9126:
      v2 = 26;
      goto LABEL_46;
    case 9150:
      v2 = 27;
      goto LABEL_46;
    case 9151:
      v2 = 28;
      goto LABEL_46;
    case 9152:
      v2 = 29;
LABEL_46:
      v3 = v2;
      goto LABEL_47;
    case 9153:
LABEL_47:
      *v1 = v3;
      break;
    case 9154:
      *v1 = 31;
      break;
    case 9155:
      *v1 = 32;
      break;
    case 9156:
      *v1 = 33;
      break;
    case 9157:
      *v1 = 34;
      break;
    case 9158:
      *v1 = 35;
      break;
    case 9159:
      *v1 = 36;
      break;
    case 9160:
      *v1 = 37;
      break;
    case 9161:
      *v1 = 38;
      break;
    case 9162:
      *v1 = 39;
      break;
    case 9163:
      *v1 = 40;
      break;
    case 9164:
      *v1 = 41;
      break;
    case 9165:
      *v1 = 42;
      break;
    case 9166:
      *v1 = 43;
      break;
    case 9180:
      *v1 = 44;
      break;
    case 9181:
      *v1 = 45;
      break;
    case 9182:
      *v1 = 46;
      break;
    case 9183:
      *v1 = 47;
      break;
    default:
      *v1 = 48;
      break;
  }

  return rawValue;
}

unint64_t sub_21A4207FC()
{
  result = qword_27CD289F0;
  if (!qword_27CD289F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD289F0);
  }

  return result;
}

uint64_t sub_21A420850()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](qword_21A457C00[v1]);
  return sub_21A451B24();
}

uint64_t sub_21A4208D8(uint64_t a1)
{
  v2 = *v1;
  sub_21A451B04();
  MEMORY[0x21CEDA220](qword_21A457C00[v2]);
  return sub_21A451B24();
}

unint64_t sub_21A420944(uint64_t a1)
{
  result = sub_21A3DCAA4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21A42096C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A420B14();
  v5 = sub_21A41B1AC();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for EspressoError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD1)
  {
    goto LABEL_17;
  }

  if (a2 + 47 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 47) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 47;
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

      return (*a1 | (v4 << 8)) - 47;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 47;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x30;
  v8 = v6 - 48;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EspressoError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 47 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 47) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD1)
  {
    v4 = 0;
  }

  if (a2 > 0xD0)
  {
    v5 = ((a2 - 209) >> 8) + 1;
    *result = a2 + 47;
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
    *result = a2 + 47;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A420B14()
{
  result = qword_27CD289F8;
  if (!qword_27CD289F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD289F8);
  }

  return result;
}

PrivateFederatedLearning::PFLError_optional __swiftcall PFLError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 40;
  if ((rawValue - 9000) >= 7)
  {
    v2 = 7;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_21A420B98()
{
  result = qword_27CD28A00;
  if (!qword_27CD28A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28A00);
  }

  return result;
}

uint64_t sub_21A420BEC()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1 + 9000);
  return sub_21A451B24();
}

uint64_t sub_21A420C6C(uint64_t a1)
{
  v2 = *v1;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v2 + 9000);
  return sub_21A451B24();
}

unint64_t sub_21A420CD0(uint64_t a1)
{
  result = sub_21A3DCAF8();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21A420CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A420EA0();
  v5 = sub_21A41B1AC();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for PFLError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PFLError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A420EA0()
{
  result = qword_27CD28A08;
  if (!qword_27CD28A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD28A08);
  }

  return result;
}

uint64_t sub_21A420EF4(uint64_t a1, uint64_t a2)
{
  sub_21A3E7060(a1, v24, &qword_27CD28468, &unk_21A455FB0);
  if (!v25)
  {
    sub_21A3D3BF0(v24, &qword_27CD28468, &unk_21A455FB0);
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v11 = 0;
    return v11 & 1;
  }

  if (*(v22 + 16))
  {
    v3 = sub_21A3DCA2C(28783, 0xE200000000000000);
    if (v4)
    {
      sub_21A3D3B94(*(v22 + 56) + 32 * v3, v24);
      if (swift_dynamicCast())
      {
        v5 = sub_21A4242FC(&unk_282B3F980);
        swift_arrayDestroy();
        v21 = sub_21A4242FC(&unk_282B3F9D0);
        swift_arrayDestroy();
        v20 = sub_21A4242FC(&unk_282B3FA10);
        swift_arrayDestroy();
        v19 = sub_21A4242FC(&unk_282B3FAB0);
        swift_arrayDestroy();
        v6 = sub_21A4242FC(&unk_282B3FAF0);
        swift_arrayDestroy();
        v7 = sub_21A4242FC(&unk_282B3FB30);
        swift_arrayDestroy();
        v8 = sub_21A4242FC(&unk_282B3FB70);
        sub_21A419EB8(&unk_282B3FB90);
        v9 = sub_21A4236B4(v22, v23, v5);

        if (v9)
        {

          v10 = sub_21A42249C(v22, a2);
LABEL_22:
          v11 = v10;

          return v11 & 1;
        }

        v12 = sub_21A4236B4(v22, v23, v21);

        if (v12)
        {

          v10 = sub_21A4219D8(v22, a2);
          goto LABEL_22;
        }

        v13 = sub_21A4236B4(v22, v23, v20);

        if (v13)
        {

          v10 = sub_21A421B64(v22, a2);
          goto LABEL_22;
        }

        v14 = sub_21A4236B4(v22, v23, v19);

        if (v14)
        {

          v10 = sub_21A421EBC(v22, a2);
          goto LABEL_22;
        }

        v15 = sub_21A4236B4(v22, v23, v6);

        if (v15)
        {

          v10 = sub_21A4221A0(v22, a2);
          goto LABEL_22;
        }

        v16 = sub_21A4236B4(v22, v23, v7);

        if (v16)
        {

          v10 = sub_21A423268(v22, a2);
          goto LABEL_22;
        }

        v17 = sub_21A4236B4(v22, v23, v8);

        if (v17)
        {
          v10 = sub_21A422904(v22, a2);
          goto LABEL_22;
        }
      }
    }

    goto LABEL_24;
  }

  v11 = 1;
  return v11 & 1;
}

uint64_t sub_21A421374@<X0>(uint64_t a1@<X1>, _OWORD *a2@<X8>, uint64_t a3@<X0>)
{
  v4 = sub_21A424464(a3);
  sub_21A3E7060(a1, &v46, &qword_27CD28468, &unk_21A455FB0);
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_85:

    v39 = v47;
    *a2 = v46;
    a2[1] = v39;
    return result;
  }

  v6 = 0;
  while (1)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_93:

LABEL_94:

      v41 = a2;
      result = sub_21A3D3BF0(&v46, &qword_27CD28468, &unk_21A455FB0);
      goto LABEL_95;
    }

    v7 = (v4 + 32 + 16 * v6);
    v8 = *v7;
    v9 = v7[1];
    sub_21A3E7060(&v46, &v44, &qword_27CD28468, &unk_21A455FB0);
    if (!*(&v45 + 1))
    {

      sub_21A3D3BF0(&v46, &qword_27CD28468, &unk_21A455FB0);
      result = sub_21A3D3BF0(&v44, &qword_27CD28468, &unk_21A455FB0);
      *a2 = 0u;
      a2[1] = 0u;
      return result;
    }

    sub_21A3D3BF0(&v44, &qword_27CD28468, &unk_21A455FB0);
    sub_21A3E7060(&v46, &v44, &qword_27CD28468, &unk_21A455FB0);
    if (!*(&v45 + 1))
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28440, &unk_21A456490);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_13;
    }

    if (!*(v43 + 16))
    {

LABEL_45:

      sub_21A3D3BF0(&v46, &qword_27CD28468, &unk_21A455FB0);
      v44 = 0u;
      v45 = 0u;
      goto LABEL_4;
    }

    v10 = sub_21A3DCA2C(v8, v9);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      goto LABEL_45;
    }

    sub_21A3D3B94(*(v43 + 56) + 32 * v10, &v44);
    sub_21A3D3BF0(&v46, &qword_27CD28468, &unk_21A455FB0);

LABEL_4:
    v46 = v44;
    v47 = v45;
    if (++v6 == v5)
    {
      goto LABEL_85;
    }
  }

  sub_21A3D3BF0(&v44, &qword_27CD28468, &unk_21A455FB0);
LABEL_13:
  sub_21A3E7060(&v46, &v44, &qword_27CD28468, &unk_21A455FB0);
  if (!*(&v45 + 1))
  {

    sub_21A3D3BF0(&v46, &qword_27CD28468, &unk_21A455FB0);
    v40 = &v44;
    goto LABEL_90;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A8, &unk_21A458EE0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {

    v40 = &v46;
LABEL_90:
    result = sub_21A3D3BF0(v40, &qword_27CD28468, &unk_21A455FB0);
LABEL_91:
    v41 = a2;
LABEL_95:
    *v41 = 0u;
    v41[1] = 0u;
    return result;
  }

  v14 = v43;
  v15 = HIBYTE(v9) & 0xF;
  v16 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v9 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v17 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    goto LABEL_93;
  }

  if ((v9 & 0x1000000000000000) != 0)
  {
    v19 = sub_21A4238FC(v8, v9, 10);
    v37 = v38;
    goto LABEL_79;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    *&v44 = v8;
    *(&v44 + 1) = v9 & 0xFFFFFFFFFFFFFFLL;
    if (v8 == 43)
    {
      if (!v15)
      {
        goto LABEL_97;
      }

      if (--v15)
      {
        v19 = 0;
        v29 = &v44 + 1;
        while (1)
        {
          v30 = *v29 - 48;
          if (v30 > 9)
          {
            break;
          }

          v31 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v31 + v30;
          if (__OFADD__(v31, v30))
          {
            break;
          }

          ++v29;
          if (!--v15)
          {
            goto LABEL_78;
          }
        }
      }
    }

    else if (v8 == 45)
    {
      if (!v15)
      {
        goto LABEL_99;
      }

      if (--v15)
      {
        v19 = 0;
        v23 = &v44 + 1;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v25 - v24;
          if (__OFSUB__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v15)
          {
            goto LABEL_78;
          }
        }
      }
    }

    else if (v15)
    {
      v19 = 0;
      v34 = &v44;
      while (1)
      {
        v35 = *v34 - 48;
        if (v35 > 9)
        {
          break;
        }

        v36 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v36 + v35;
        if (__OFADD__(v36, v35))
        {
          break;
        }

        ++v34;
        if (!--v15)
        {
          goto LABEL_78;
        }
      }
    }

LABEL_77:
    v19 = 0;
    LOBYTE(v15) = 1;
    goto LABEL_78;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    result = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_21A4517E4();
  }

  v18 = *result;
  if (v18 == 43)
  {
    if (v16 < 1)
    {
      goto LABEL_98;
    }

    v15 = v16 - 1;
    if (v16 != 1)
    {
      v19 = 0;
      if (!result)
      {
        goto LABEL_69;
      }

      v26 = (result + 1);
      while (1)
      {
        v27 = *v26 - 48;
        if (v27 > 9)
        {
          break;
        }

        v28 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v28 + v27;
        if (__OFADD__(v28, v27))
        {
          break;
        }

        ++v26;
        if (!--v15)
        {
          goto LABEL_78;
        }
      }
    }

    goto LABEL_77;
  }

  if (v18 != 45)
  {
    if (!v16)
    {
      goto LABEL_77;
    }

    v19 = 0;
    if (!result)
    {
      goto LABEL_69;
    }

    while (1)
    {
      v32 = *result - 48;
      if (v32 > 9)
      {
        goto LABEL_77;
      }

      v33 = 10 * v19;
      if ((v19 * 10) >> 64 != (10 * v19) >> 63)
      {
        goto LABEL_77;
      }

      v19 = v33 + v32;
      if (__OFADD__(v33, v32))
      {
        goto LABEL_77;
      }

      ++result;
      if (!--v16)
      {
        goto LABEL_69;
      }
    }
  }

  if (v16 >= 1)
  {
    v15 = v16 - 1;
    if (v16 == 1)
    {
      goto LABEL_77;
    }

    v19 = 0;
    if (result)
    {
      v20 = (result + 1);
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          goto LABEL_77;
        }

        v22 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          goto LABEL_77;
        }

        v19 = v22 - v21;
        if (__OFSUB__(v22, v21))
        {
          goto LABEL_77;
        }

        ++v20;
        if (!--v15)
        {
          goto LABEL_78;
        }
      }
    }

LABEL_69:
    LOBYTE(v15) = 0;
LABEL_78:
    LOBYTE(v43) = v15;
    v37 = v15;
LABEL_79:

    if (v37)
    {
      goto LABEL_94;
    }

    if (v19 < 0 || v19 >= *(v14 + 16))
    {
      sub_21A3D3BF0(&v46, &qword_27CD28468, &unk_21A455FB0);

      goto LABEL_91;
    }

    sub_21A3D3B94(v14 + 32 * v19 + 32, &v44);

    sub_21A3D3BF0(&v46, &qword_27CD28468, &unk_21A455FB0);
    goto LABEL_4;
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
  return result;
}

uint64_t sub_21A4219D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v3 = a2;
    v4 = sub_21A3DCA2C(1752457584, 0xE400000000000000);
    if (v5)
    {
      sub_21A3D3B94(*(a1 + 56) + 32 * v4, &v13);
    }

    else
    {
      v13 = 0u;
      v14 = 0u;
    }

    a2 = v3;
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  sub_21A421374(a2, &v15, &v13);
  sub_21A3D3BF0(&v13, &qword_27CD28468, &unk_21A455FB0);
  if (*(a1 + 16) && (v6 = sub_21A3DCA2C(28783, 0xE200000000000000), (v7 & 1) != 0) && (sub_21A3D3B94(*(a1 + 56) + 32 * v6, &v13), (swift_dynamicCast() & 1) != 0))
  {
    v8 = v16;
    if (v12)
    {
      if (v11 == 0x64656E69666564 && v12 == 0xE700000000000000)
      {

        v9 = 1;
      }

      else
      {
        v9 = sub_21A4519B4();
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
    v8 = v16;
  }

  sub_21A3D3BF0(&v15, &qword_27CD28468, &unk_21A455FB0);
  return ((v8 == 0) ^ v9) & 1;
}

uint64_t sub_21A421B64(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) && (v4 = sub_21A3DCA2C(28783, 0xE200000000000000), (v5 & 1) != 0) && (sub_21A3D3B94(*(a1 + 56) + 32 * v4, v27), (swift_dynamicCast() & 1) != 0))
  {
    v6 = *(&v25 + 1);
    v7 = v25;
  }

  else
  {
    v7 = 0;
    v6 = 0xE000000000000000;
  }

  v28 = v7;
  v29 = v6;
  if (!*(a1 + 16) || (v8 = sub_21A3DCA2C(0x65756C6176, 0xE500000000000000), (v9 & 1) == 0) || (sub_21A3D3B94(*(a1 + 56) + 32 * v8, v27), (swift_dynamicCast() & 1) == 0))
  {

LABEL_13:
    v13 = 0;
    return v13 & 1;
  }

  v10 = v25;
  if (*(a1 + 16) && (v11 = sub_21A3DCA2C(1752457584, 0xE400000000000000), (v12 & 1) != 0))
  {
    sub_21A3D3B94(*(a1 + 56) + 32 * v11, v24);
  }

  else
  {
    memset(v24, 0, sizeof(v24));
  }

  sub_21A421374(a2, &v25, v24);
  sub_21A3D3BF0(v24, &qword_27CD28468, &unk_21A455FB0);
  if (!v26)
  {

    sub_21A3D3BF0(&v25, &qword_27CD28468, &unk_21A455FB0);
    goto LABEL_13;
  }

  sub_21A3D3B38(&v25, v27);
  sub_21A3D3B94(v27, &v25);
  if (swift_dynamicCast())
  {
    v15 = *(&v24[0] + 1);
    v16 = *&v24[0];
  }

  else
  {
    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    sub_21A451804();
    v15 = *(&v25 + 1);
    v16 = v25;
  }

  v17 = sub_21A451234();
  if (v17)
  {
    sub_21A421E54(v17);

    v18 = sub_21A4510D4();
    v20 = v19;

    v21 = sub_21A4510D4();
    v23 = v22;

    v13 = sub_21A4246EC(v28, v29, v18, v20, v21, v23);
  }

  else
  {
    v13 = sub_21A4246EC(v7, v6, v16, v15, v10, *(&v10 + 1));
  }

  __swift_destroy_boxed_opaque_existential_0(v27);
  return v13 & 1;
}

uint64_t sub_21A421E54(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_21A451174();

  return MEMORY[0x2821FBE70](a1);
}

BOOL sub_21A421EBC(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_21A3DCA2C(28783, 0xE200000000000000);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v4, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_10;
  }

  v6 = sub_21A3DCA2C(0x65756C6176, 0xE500000000000000);
  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v6, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = v20;
  if (*(a1 + 16) && (v9 = sub_21A3DCA2C(1752457584, 0xE400000000000000), (v10 & 1) != 0))
  {
    sub_21A3D3B94(*(a1 + 56) + 32 * v9, v19);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  sub_21A421374(a2, &v20, v19);
  sub_21A3D3BF0(v19, &qword_27CD28468, &unk_21A455FB0);
  if (!v21)
  {

    sub_21A3D3BF0(&v20, &qword_27CD28468, &unk_21A455FB0);
    return 0;
  }

  sub_21A3D3B38(&v20, v22);
  sub_21A3D3B94(v22, &v20);
  if (!swift_dynamicCast())
  {
    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
    sub_21A451804();
  }

  v12 = sub_21A451234();

  v13 = objc_allocWithZone(MEMORY[0x277CCAC68]);
  v14 = sub_21A4237AC(v8, *(&v8 + 1), v12 & 1);
  if (!v14)
  {
    __swift_destroy_boxed_opaque_existential_0(v22);
LABEL_10:

    return 0;
  }

  v15 = v14;
  v16 = sub_21A451054();
  v17 = sub_21A451154();

  v18 = [v15 numberOfMatchesInString:v16 options:0 range:{0, v17}];

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v18 > 0;
}

BOOL sub_21A4221A0(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_21A3DCA2C(28783, 0xE200000000000000);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v4, v22);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = *(&v20 + 1);
  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

  v7 = v20;
  v8 = sub_21A3DCA2C(0x65756C6176, 0xE500000000000000);
  if ((v9 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v8, v22);
  sub_21A3ED284(0, &qword_27CD28450, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v10 = v20;
  if (*(a1 + 16) && (v11 = sub_21A3DCA2C(1752457584, 0xE400000000000000), (v12 & 1) != 0))
  {
    sub_21A3D3B94(*(a1 + 56) + 32 * v11, &v18);
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  sub_21A421374(a2, &v20, &v18);
  sub_21A3D3BF0(&v18, &qword_27CD28468, &unk_21A455FB0);
  if (!v21)
  {

    sub_21A3D3BF0(&v20, &qword_27CD28468, &unk_21A455FB0);
    return 0;
  }

  sub_21A3D3B38(&v20, v22);
  sub_21A3D3B94(v22, &v20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v22);

LABEL_19:

    return 0;
  }

  v13 = v18;
  if (v7 == 1936942444 && v6 == 0xE400000000000000 || (sub_21A4519B4() & 1) != 0)
  {

    v14 = [v13 compare_];

    __swift_destroy_boxed_opaque_existential_0(v22);
    return v14 == -1;
  }

  if (v7 == 1701998445 && v6 == 0xE400000000000000)
  {

LABEL_26:
    v17 = [v13 compare_];

    __swift_destroy_boxed_opaque_existential_0(v22);
    return v17 == 1;
  }

  v16 = sub_21A4519B4();

  if (v16)
  {
    goto LABEL_26;
  }

  __swift_destroy_boxed_opaque_existential_0(v22);

  return 0;
}

uint64_t sub_21A42249C(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_21A3DCA2C(28783, 0xE200000000000000);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v4, v33);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = *(&v32[0] + 1);
  if (!*(a1 + 16) || (v7 = *&v32[0], v8 = sub_21A3DCA2C(0x796C707061, 0xE500000000000000), (v9 & 1) == 0) || (sub_21A3D3B94(*(a1 + 56) + 32 * v8, v33), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A8, &unk_21A458EE0), (swift_dynamicCast() & 1) == 0))
  {

    return 0;
  }

  v10 = *&v32[0];
  if (*(a1 + 16) && (v11 = sub_21A3DCA2C(1752457584, 0xE400000000000000), (v12 & 1) != 0))
  {
    sub_21A3D3B94(*(a1 + 56) + 32 * v11, v32);
  }

  else
  {
    memset(v32, 0, sizeof(v32));
  }

  sub_21A421374(a2, v33, v32);
  sub_21A3D3BF0(v32, &qword_27CD28468, &unk_21A455FB0);
  if ((v7 != 6581857 || v6 != 0xE300000000000000) && (sub_21A4519B4() & 1) == 0)
  {
    if (v7 == 7630702 && v6 == 0xE300000000000000 || (sub_21A4519B4() & 1) != 0)
    {

      result = v10 + 32;
      v21 = -*(v10 + 16);
      v22 = -1;
      do
      {
        v23 = v21 + v22 == -1;
        if (v21 + v22 == -1)
        {
          break;
        }

        if (++v22 >= *(v10 + 16))
        {
          goto LABEL_41;
        }

        v24 = result + 32;
        sub_21A3D3B94(result, v32);
        sub_21A3D3B94(v32, v31);
        v25 = sub_21A420EF4(v31, v33);
        sub_21A3D3BF0(v31, &qword_27CD28468, &unk_21A455FB0);
        __swift_destroy_boxed_opaque_existential_0(v32);
        result = v24;
      }

      while ((v25 & 1) == 0);
LABEL_29:

      sub_21A3D3BF0(v33, &qword_27CD28468, &unk_21A455FB0);
      return v23;
    }

    if (v7 == 29295 && v6 == 0xE200000000000000)
    {

      goto LABEL_34;
    }

    v26 = sub_21A4519B4();

    if (v26)
    {
LABEL_34:
      result = v10 + 32;
      v27 = -*(v10 + 16);
      v28 = -1;
      do
      {
        v23 = v27 + v28 != -1;
        if (v27 + v28 == -1)
        {
          break;
        }

        if (++v28 >= *(v10 + 16))
        {
          goto LABEL_42;
        }

        v29 = result + 32;
        sub_21A3D3B94(result, v32);
        sub_21A3D3B94(v32, v31);
        v30 = sub_21A420EF4(v31, v33);
        sub_21A3D3BF0(v31, &qword_27CD28468, &unk_21A455FB0);
        __swift_destroy_boxed_opaque_existential_0(v32);
        result = v29;
      }

      while ((v30 & 1) == 0);
      goto LABEL_29;
    }

    sub_21A3D3BF0(v33, &qword_27CD28468, &unk_21A455FB0);
    return 0;
  }

  result = v10 + 32;
  v14 = -*(v10 + 16);
  v15 = -1;
  while (1)
  {
    v16 = v14 + v15 == -1;
    if (v14 + v15 == -1)
    {
LABEL_21:
      v20 = v16;

      sub_21A3D3BF0(v33, &qword_27CD28468, &unk_21A455FB0);
      return v20;
    }

    if (++v15 >= *(v10 + 16))
    {
      break;
    }

    v17 = result + 32;
    v18 = v16;
    sub_21A3D3B94(result, v32);
    sub_21A3D3B94(v32, v31);
    v19 = sub_21A420EF4(v31, v33);
    sub_21A3D3BF0(v31, &qword_27CD28468, &unk_21A455FB0);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v16 = v18;
    result = v17;
    if ((v19 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_21A422904(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    goto LABEL_39;
  }

  v4 = sub_21A3DCA2C(0x65756C6176, 0xE500000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_39;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v4, v31);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v6 = v29;
  if (*(a1 + 16) && (v7 = sub_21A3DCA2C(1752457584, 0xE400000000000000), (v8 & 1) != 0))
  {
    sub_21A3D3B94(*(a1 + 56) + 32 * v7, &v27);
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
  }

  sub_21A421374(a2, &v29, &v27);
  sub_21A3D3BF0(&v27, &qword_27CD28468, &unk_21A455FB0);
  if (!v30)
  {
    sub_21A3D3BF0(&v29, &qword_27CD28468, &unk_21A455FB0);
    if (v6 == __PAIR128__(0xE900000000000064, 0x656E696665646E75))
    {

      v10 = 1;
    }

    else
    {
      v10 = sub_21A4519B4();
    }

    return v10 & 1;
  }

  sub_21A3D3B38(&v29, v31);
  if (v6 != __PAIR128__(0xE600000000000000, 0x676E69727473) && (sub_21A4519B4() & 1) == 0)
  {
    if (v6 == __PAIR128__(0xE600000000000000, 0x7265626D756ELL) || (sub_21A4519B4() & 1) != 0)
    {

      v11 = sub_21A42492C(v31);
LABEL_19:
      v10 = v11;
      __swift_destroy_boxed_opaque_existential_0(v31);
      return v10 & 1;
    }

    if (v6 == __PAIR128__(0xE700000000000000, 0x6E61656C6F6F62) || (sub_21A4519B4() & 1) != 0)
    {

      sub_21A3D3B38(v31, &v29);
      v10 = swift_dynamicCast();
      return v10 & 1;
    }

    if (v6 == __PAIR128__(0xE600000000000000, 0x7463656A626FLL) || (sub_21A4519B4() & 1) != 0)
    {

      sub_21A3D3B38(v31, &v29);
      v12 = &qword_27CD28440;
      v13 = &unk_21A456490;
      goto LABEL_26;
    }

    if (v6 == __PAIR128__(0xE500000000000000, 0x7961727261) || (sub_21A4519B4() & 1) != 0)
    {

      sub_21A3D3B38(v31, &v29);
      v12 = &qword_27CD284A8;
      v13 = &unk_21A458EE0;
LABEL_26:
      __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
      v14 = swift_dynamicCast();
      v10 = v14;
      if (!v14)
      {
        return v10 & 1;
      }

      goto LABEL_12;
    }

    if (v6 == __PAIR128__(0xE400000000000000, 1819047278) || (sub_21A4519B4() & 1) != 0)
    {

      sub_21A3D3B94(v31, &v29);
      sub_21A3ED284(0, &qword_27CD28A18, 0x277CBEB68);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v31);

        v10 = 1;
        return v10 & 1;
      }

      v11 = sub_21A4249CC(v31);
      goto LABEL_19;
    }

    if (v6 == __PAIR128__(0xE900000000000064, 0x656E696665646E75) || (sub_21A4519B4() & 1) != 0)
    {
      __swift_destroy_boxed_opaque_existential_0(v31);

LABEL_39:
      v10 = 0;
      return v10 & 1;
    }

    if (v6 == __PAIR128__(0xE400000000000000, 1702125924) || (sub_21A4519B4() & 1) != 0)
    {

      sub_21A3D3B94(v31, &v29);
      sub_21A3E7060(&v29, &v27, &qword_27CD28468, &unk_21A455FB0);
      if (*(&v28 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_47:
          sub_21A3D3BF0(&v29, &qword_27CD28468, &unk_21A455FB0);
LABEL_48:
          __swift_destroy_boxed_opaque_existential_0(v31);
          goto LABEL_39;
        }

        v16 = objc_allocWithZone(MEMORY[0x277CCAC68]);
        v17 = sub_21A4237AC(0xD00000000000001FLL, 0x800000021A45CA60, 0);
        if (v17)
        {
LABEL_56:
          v19 = v17;
          v20 = sub_21A451054();
          v21 = sub_21A451154();

          v22 = [v19 matchesInString:v20 options:0 range:{0, v21}];

          sub_21A3ED284(0, &qword_27CD28A10, 0x277CCACC0);
          v23 = sub_21A4512E4();

          if (v23 >> 62)
          {
            v24 = sub_21A451844();
          }

          else
          {
            v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_21A3D3BF0(&v29, &qword_27CD28468, &unk_21A455FB0);
          __swift_destroy_boxed_opaque_existential_0(v31);
          v10 = v24 == 1;
          return v10 & 1;
        }

LABEL_46:

        goto LABEL_47;
      }
    }

    else if (v6 == __PAIR128__(0xE900000000000065, 0x6D69742D65746164) || (sub_21A4519B4() & 1) != 0)
    {

      sub_21A3D3B94(v31, &v29);
      sub_21A3E7060(&v29, &v27, &qword_27CD28468, &unk_21A455FB0);
      if (*(&v28 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        v18 = objc_allocWithZone(MEMORY[0x277CCAC68]);
        v17 = sub_21A4237AC(0xD00000000000006ELL, 0x800000021A45C9F0, 0);
        if (v17)
        {
          goto LABEL_56;
        }

        goto LABEL_46;
      }
    }

    else
    {
      if (v6 == __PAIR128__(0xE400000000000000, 1701669236))
      {
      }

      else
      {
        v25 = sub_21A4519B4();

        if ((v25 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      sub_21A3D3B94(v31, &v29);
      sub_21A3E7060(&v29, &v27, &qword_27CD28468, &unk_21A455FB0);
      if (*(&v28 + 1))
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        v26 = objc_allocWithZone(MEMORY[0x277CCAC68]);
        v17 = sub_21A4237AC(0xD00000000000004DLL, 0x800000021A45C9A0, 0);
        if (v17)
        {
          goto LABEL_56;
        }

        goto LABEL_46;
      }
    }

    sub_21A3D3BF0(&v29, &qword_27CD28468, &unk_21A455FB0);
    __swift_destroy_boxed_opaque_existential_0(v31);
    sub_21A3D3BF0(&v27, &qword_27CD28468, &unk_21A455FB0);
    goto LABEL_39;
  }

  sub_21A3D3B38(v31, &v29);
  v9 = swift_dynamicCast();
  v10 = v9;
  if (v9)
  {
LABEL_12:
  }

  return v10 & 1;
}

uint64_t sub_21A423268(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = sub_21A3DCA2C(0x65756C6176, 0xE500000000000000);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  sub_21A3D3B94(*(a1 + 56) + 32 * v4, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A8, &unk_21A458EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = v24;
  if (*(a1 + 16) && (v7 = sub_21A3DCA2C(1752457584, 0xE400000000000000), (v8 & 1) != 0))
  {
    sub_21A3D3B94(*(a1 + 56) + 32 * v7, &v24);
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  sub_21A421374(a2, v26, &v24);
  sub_21A3D3BF0(&v24, &qword_27CD28468, &unk_21A455FB0);
  sub_21A3E7060(v26, &v22, &qword_27CD28468, &unk_21A455FB0);
  if (!v23)
  {
    sub_21A3D3BF0(v26, &qword_27CD28468, &unk_21A455FB0);

    sub_21A3D3BF0(&v22, &qword_27CD28468, &unk_21A455FB0);
    return 0;
  }

  result = sub_21A3D3B38(&v22, &v24);
  if (*(a1 + 16) && (result = sub_21A3DCA2C(28783, 0xE200000000000000), (v10 & 1) != 0) && (sub_21A3D3B94(*(a1 + 56) + 32 * result, &v22), result = swift_dynamicCast(), (result & 1) != 0))
  {
    if (v20 == 2977385 && v21 == 0xE300000000000000)
    {

      v17 = 1;
      v11 = *(v6 + 16);
      if (!v11)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v17 = sub_21A4519B4();

    v11 = *(v6 + 16);
    if (!v11)
    {
LABEL_30:

      sub_21A3D3BF0(v26, &qword_27CD28468, &unk_21A455FB0);
      __swift_destroy_boxed_opaque_existential_0(&v24);
      return 0;
    }
  }

  else
  {
    v17 = 0;
    v11 = *(v6 + 16);
    if (!v11)
    {
      goto LABEL_30;
    }
  }

LABEL_17:
  v12 = 0;
  v13 = v6 + 32;
  while (v12 < *(v6 + 16))
  {
    sub_21A3D3B94(v13, &v22);
    sub_21A3D3B94(&v24, &v20);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_21A3D3B94(&v22, &v20);
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_19:
      __swift_project_boxed_opaque_existential_1(&v22, v23);
      v14 = sub_21A4519A4();
      __swift_project_boxed_opaque_existential_1(&v24, *(&v25 + 1));
      v15 = [v14 isEqual_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v15)
      {
        goto LABEL_32;
      }

      goto LABEL_20;
    }

    if ((v17 & 1) == 0)
    {

LABEL_32:
      sub_21A3D3BF0(v26, &qword_27CD28468, &unk_21A455FB0);

      __swift_destroy_boxed_opaque_existential_0(&v22);
      __swift_destroy_boxed_opaque_existential_0(&v24);
      return 1;
    }

    v20 = v18;
    v21 = v19;
    sub_21A3ED2CC();
    v16 = sub_21A451664();

    if (!v16)
    {
      goto LABEL_32;
    }

LABEL_20:
    ++v12;
    result = __swift_destroy_boxed_opaque_existential_0(&v22);
    v13 += 32;
    if (v11 == v12)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A4236B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_21A451B04();
  sub_21A451144();
  v6 = sub_21A451B24();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_21A4519B4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_21A4237AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_21A451054();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_21A450A84();

    swift_willThrow();
  }

  return v6;
}

void *sub_21A423888(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28550, &unk_21A456260);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_21A4238FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_21A451274();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21A423E88(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_21A4517E4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_21A423E88(uint64_t a1, unint64_t a2)
{
  v2 = sub_21A451284();
  v6 = sub_21A423F08(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_21A423F08(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_21A451624();
    if (!v9 || (v10 = v9, v11 = sub_21A423888(v9, 0), v12 = sub_21A424060(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_21A451134();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_21A451134();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_21A4517E4();
LABEL_4:

  return sub_21A451134();
}

unint64_t sub_21A424060(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21A424280(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21A451204();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21A4517E4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21A424280(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_21A4511E4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_21A424280(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21A451214();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CED9900](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_21A4242FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28460, &unk_21A455FA0);
    v3 = sub_21A451704();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_21A451B04();

      sub_21A451144();
      result = sub_21A451B24();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_21A4519B4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_21A424464(uint64_t a1)
{
  sub_21A3E7060(a1, &v19, &qword_27CD28468, &unk_21A455FB0);
  if (!v21)
  {
    sub_21A3D3BF0(&v19, &qword_27CD28468, &unk_21A455FB0);
    return MEMORY[0x277D84F90];
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v19 = v17;
  v20 = v18;
  sub_21A3ED2CC();
  v1 = sub_21A451644();

  v2 = *(v1 + 16);
  v3 = v2 != 0;
  if (v2 <= 1)
  {

    return MEMORY[0x277D84F90];
  }

  v16 = MEMORY[0x277D84F90];
  result = sub_21A3E48DC(0, (v2 - v3) & ~((v2 - v3) >> 63), 0);
  if (((v2 - v3) & 0x8000000000000000) == 0)
  {
    v4 = v16;
    v15 = v2;
    v6 = (v1 + 16 * v3 + 40);
    while (v3 < v2)
    {
      v7 = *v6;
      v19 = *(v6 - 1);
      v20 = v7;

      v19 = sub_21A451654();
      v20 = v8;
      v9 = sub_21A451654();
      v11 = v10;

      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_21A3E48DC((v12 > 1), v13 + 1, 1);
      }

      *(v16 + 16) = v13 + 1;
      v14 = v16 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      ++v3;
      v6 += 2;
      v2 = v15;
      if (v15 == v3)
      {

        return v4;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21A4246EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = a1 == 0x737472617473 && a2 == 0xE600000000000000;
  if (v9 || (sub_21A4519B4() & 1) != 0)
  {

    return sub_21A451224();
  }

  if (a1 == 1935961701 && a2 == 0xE400000000000000 || (sub_21A4519B4() & 1) != 0)
  {

    return sub_21A451234();
  }

  if (a1 == 0x736E6961746E6F63 && a2 == 0xE800000000000000 || (v14 = sub_21A4519B4(), v15 = a3, v16 = a4, (v14 & 1) != 0))
  {
    sub_21A3ED2CC();
    v17 = sub_21A451684();
    return v17 & 1;
  }

  if (a1 != 1953719668 || a2 != 0xE400000000000000)
  {
    v18 = sub_21A4519B4();
    v15 = a3;
    v16 = a4;
    v19 = v18;
    v17 = 0;
    if ((v19 & 1) == 0)
    {
      return v17 & 1;
    }
  }

  if (v15 == a5 && v16 == a6)
  {
    v17 = 1;
    return v17 & 1;
  }

  return sub_21A4519B4();
}

uint64_t sub_21A42492C(uint64_t a1)
{
  sub_21A3D3B94(a1, v4);
  sub_21A3ED284(0, &qword_27CD28450, 0x277CCABB0);
  result = swift_dynamicCast();
  if (result)
  {

    sub_21A3D3B94(a1, v4);
    return swift_dynamicCast() ^ 1;
  }

  return result;
}

uint64_t sub_21A4249CC(uint64_t a1)
{
  v2 = sub_21A451B44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v30 = &v28[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A20, &qword_21A457EC0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v28[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A28, &qword_21A457EC8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v33 = &v28[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28[-v13];
  MEMORY[0x28223BE20](v12);
  v16 = &v28[-v15];
  v17 = sub_21A451B74();
  v31 = *(v17 - 8);
  v32 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v28[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21A3D3B94(a1, v34);
  sub_21A451B34();
  sub_21A451B54();
  (*(v3 + 104))(v14, *MEMORY[0x277D84C18], v2);
  (*(v3 + 56))(v14, 0, 1, v2);
  v20 = *(v6 + 56);
  sub_21A3E7060(v16, v8, &qword_27CD28A28, &qword_21A457EC8);
  sub_21A3E7060(v14, &v8[v20], &qword_27CD28A28, &qword_21A457EC8);
  v21 = *(v3 + 48);
  if (v21(v8, 1, v2) == 1)
  {
    sub_21A3D3BF0(v14, &qword_27CD28A28, &qword_21A457EC8);
    sub_21A3D3BF0(v16, &qword_27CD28A28, &qword_21A457EC8);
    if (v21(&v8[v20], 1, v2) == 1)
    {
      sub_21A3D3BF0(v8, &qword_27CD28A28, &qword_21A457EC8);
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_21A3E7060(v8, v33, &qword_27CD28A28, &qword_21A457EC8);
  if (v21(&v8[v20], 1, v2) == 1)
  {
    sub_21A3D3BF0(v14, &qword_27CD28A28, &qword_21A457EC8);
    sub_21A3D3BF0(v16, &qword_27CD28A28, &qword_21A457EC8);
    (*(v3 + 8))(v33, v2);
LABEL_6:
    sub_21A3D3BF0(v8, &qword_27CD28A20, &qword_21A457EC0);
LABEL_7:
    v22 = 0;
LABEL_11:
    (*(v31 + 8))(v19, v32);
    return v22 & 1;
  }

  v23 = v30;
  (*(v3 + 32))(v30, &v8[v20], v2);
  v24 = v33;
  v29 = sub_21A451004();
  v25 = *(v3 + 8);
  v25(v23, v2);
  sub_21A3D3BF0(v14, &qword_27CD28A28, &qword_21A457EC8);
  sub_21A3D3BF0(v16, &qword_27CD28A28, &qword_21A457EC8);
  v25(v24, v2);
  sub_21A3D3BF0(v8, &qword_27CD28A28, &qword_21A457EC8);
  if ((v29 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  sub_21A451B64();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v26 = sub_21A451764();
  swift_getObjectType();
  result = sub_21A451764();
  if (v26 == result)
  {
    v22 = sub_21A451774();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_21A424F34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A30, &unk_21A457ED0);
    v3 = sub_21A451704();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_21A451084();
      sub_21A451B04();
      v27 = v7;
      sub_21A451144();
      v8 = sub_21A451B24();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_21A451084();
        v18 = v17;
        if (v16 == sub_21A451084() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_21A4519B4();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void *sub_21A425138(uint64_t a1, unsigned __int8 *a2)
{
  v4 = v2;
  *(v4 + 16) = a1;
  type metadata accessor for TensorDescriptor();
  swift_allocObject();
  v6 = sub_21A409738(a1);
  if (!v3)
  {
    *(v4 + 24) = v6;
    type metadata accessor for Buffer();
    swift_allocObject();

    v7 = e5rt_tensor_desc_alloc_buffer_object();
    sub_21A3DCF54(v7);
    sub_21A3DCAF8();
    swift_allocError();
    *v8 = 6;
    swift_willThrow();

    swift_deallocPartialClassInstance();
  }

  type metadata accessor for IOPort();
  swift_deallocPartialClassInstance();
  return v4;
}

void *sub_21A425320(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v4[2] = a1;
  type metadata accessor for TensorDescriptor();
  swift_allocObject();
  v7 = sub_21A409738(a1);
  if (v3)
  {
    type metadata accessor for IOPort();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v4[3] = v7;

    v8 = sub_21A409638();

    type metadata accessor for Buffer();
    swift_allocObject();
    v4[4] = Buffer.init(from:size:)(a2, v8);
    v10 = e5rt_io_port_bind_buffer_object();
    sub_21A3DCF54(v10);
  }

  return v4;
}

void *sub_21A425434(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v4[2] = a1;
  type metadata accessor for TensorDescriptor();
  swift_allocObject();
  v7 = sub_21A409738(a1);
  if (v3)
  {

    type metadata accessor for IOPort();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v4[3] = v7;
    v4[4] = a2;

    v8 = e5rt_io_port_bind_buffer_object();
    sub_21A3DCF54(v8);
  }

  return v4;
}

void *sub_21A425508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;

  v7 = sub_21A409638();
  type metadata accessor for Buffer();
  swift_allocObject();
  v8 = Buffer.init(from:size:)(a3, v7);
  if (v4)
  {

    type metadata accessor for IOPort();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 32) = v8;
    v9 = e5rt_io_port_bind_buffer_object();
    sub_21A3DCF54(v9);
  }

  return v5;
}

void *IOPort.deinit()
{
  e5rt_io_port_release();

  return v0;
}

uint64_t IOPort.__deallocating_deinit()
{
  e5rt_io_port_release();

  return swift_deallocClassInstance();
}

uint64_t sub_21A425718(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000646FLL;
  v3 = 0x72505F4C4D646F44;
  v4 = a1;
  v5 = 0x69676174535F4B43;
  v6 = 0xEA0000000000676ELL;
  if (a1 != 5)
  {
    v5 = 0x69445F6C61636F4CLL;
    v6 = 0xEF79726F74636572;
  }

  v7 = 0xE700000000000000;
  v8 = 0x646F72505F4B43;
  if (a1 != 3)
  {
    v8 = 0x79727261435F4B43;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x61435F4C4D646F44;
  v10 = 0xEB00000000797272;
  if (a1 != 1)
  {
    v9 = 0x74535F4C4D646F44;
    v10 = 0xED0000676E696761;
  }

  if (!a1)
  {
    v9 = 0x72505F4C4D646F44;
    v10 = 0xEA0000000000646FLL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEB00000000797272;
        if (v11 != 0x61435F4C4D646F44)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xED0000676E696761;
        if (v11 != 0x74535F4C4D646F44)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEA0000000000676ELL;
        if (v11 != 0x69676174535F4B43)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEF79726F74636572;
        if (v11 != 0x69445F6C61636F4CLL)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE700000000000000;
      if (v11 != 0x646F72505F4B43)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0xE800000000000000;
    v3 = 0x79727261435F4B43;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = sub_21A4519B4();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t PFLTaskDiscovery.__allocating_init(for:useCase:taskPreferences:allowsCellularAccess:policy:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void *a7)
{
  v9 = a6;
  v15 = a7[3];
  v16 = a7[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a7, v15);
  v18 = sub_21A42F864(a1, a2, a3, a4, a5, v9, v17, v7, v15, v16);
  __swift_destroy_boxed_opaque_existential_0(a7);
  return v18;
}

uint64_t sub_21A425A3C(uint64_t a1, unsigned __int8 a2)
{
  sub_21A451B04();
  sub_21A451144();

  return sub_21A451B24();
}

PrivateFederatedLearning::PFLTaskDiscoveryReachLocation_optional __swiftcall PFLTaskDiscoveryReachLocation.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 100;
  if ((rawValue - 100) >= 0xB)
  {
    v2 = 11;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_21A425BB4()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1 + 100);
  return sub_21A451B24();
}

uint64_t sub_21A425C2C(uint64_t a1)
{
  v2 = *v1;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v2 + 100);
  return sub_21A451B24();
}

uint64_t sub_21A425CCC(uint64_t a1)
{
  sub_21A451144();
}

unint64_t sub_21A425E08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21A430FA4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21A425E38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x72505F4C4D646F44;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x69676174535F4B43;
  if (v2 != 5)
  {
    v5 = 0x69445F6C61636F4CLL;
    v4 = 0xEF79726F74636572;
  }

  v6 = 0xE700000000000000;
  v7 = 0x646F72505F4B43;
  if (v2 != 3)
  {
    v7 = 0x79727261435F4B43;
    v6 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xEB00000000797272;
  v9 = 0x61435F4C4D646F44;
  if (v2 != 1)
  {
    v9 = 0x74535F4C4D646F44;
    v8 = 0xED0000676E696761;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xEA0000000000646FLL;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}

uint64_t sub_21A425F3C()
{
  v1 = *v0;
  v2 = 0x72505F4C4D646F44;
  v3 = 0x69676174535F4B43;
  if (v1 != 5)
  {
    v3 = 0x69445F6C61636F4CLL;
  }

  v4 = 0x646F72505F4B43;
  if (v1 != 3)
  {
    v4 = 0x79727261435F4B43;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x61435F4C4D646F44;
  if (v1 != 1)
  {
    v5 = 0x74535F4C4D646F44;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_21A42603C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21A430FA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21A42607C(uint64_t a1)
{
  v2 = sub_21A42F994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A4260B8(uint64_t a1)
{
  v2 = sub_21A42F994();

  return MEMORY[0x2821FE720](a1, v2);
}

void PFLTaskSource.nonprodSource.getter(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  if (v3 == 3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v3 = 4;
  }

  else
  {
    v5 = v1[2];
    v6 = v1[3];
    v4 = *v1;
    sub_21A3ED4E4(*v1, v1[1], v5, v6);
  }

  *a1 = v4;
  a1[1] = v3;
  a1[2] = v5;
  a1[3] = v6;
}

uint64_t sub_21A426168(uint64_t a1)
{
  v2 = sub_21A42FA90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A4261A4(uint64_t a1)
{
  v2 = sub_21A42FA90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A4261E0(uint64_t a1)
{
  v2 = sub_21A42FAE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A42621C(uint64_t a1)
{
  v2 = sub_21A42FAE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A426258(uint64_t a1)
{
  v2 = sub_21A42FA3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A426294(uint64_t a1)
{
  v2 = sub_21A42FA3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A4262D0(uint64_t a1)
{
  v2 = sub_21A42FB8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A42630C(uint64_t a1)
{
  v2 = sub_21A42FB8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A426348(uint64_t a1)
{
  v2 = sub_21A42FBE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A426384(uint64_t a1)
{
  v2 = sub_21A42FBE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A4263C0(uint64_t a1)
{
  v2 = sub_21A42FB38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A4263FC(uint64_t a1)
{
  v2 = sub_21A42FB38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21A426438()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6150657069636572;
  }
}

uint64_t sub_21A42647C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6150657069636572 && a2 == 0xEA00000000006874;
  if (v6 || (sub_21A4519B4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000021A45C6B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21A4519B4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21A426574(uint64_t a1)
{
  v2 = sub_21A42F9E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21A4265B0(uint64_t a1)
{
  v2 = sub_21A42F9E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PFLTaskSource.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A38, &qword_21A457F20);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = v37 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A40, &qword_21A457F28);
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A48, &qword_21A457F30);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A50, &qword_21A457F38);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v44 = v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A58, &qword_21A457F40);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v41 = v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A60, &qword_21A457F48);
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A68, &qword_21A457F50);
  v38 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v37 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28A70, &qword_21A457F58);
  v20 = *(v19 - 8);
  v56 = v19;
  v57 = v20;
  MEMORY[0x28223BE20](v19);
  v22 = v37 - v21;
  v23 = v1[1];
  v37[2] = *v1;
  v24 = v1[3];
  v37[1] = v1[2];
  v37[0] = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21A42F994();
  v25 = v22;
  sub_21A451BC4();
  if (v23 > 2)
  {
    if (v23 == 3)
    {
      v62 = 3;
      sub_21A42FAE4();
      v31 = v44;
      v26 = v56;
      sub_21A451934();
      v33 = v45;
      v32 = v46;
    }

    else
    {
      v26 = v56;
      if (v23 != 4)
      {
        if (v23 == 5)
        {
          v64 = 5;
          sub_21A42FA3C();
          v27 = v50;
          sub_21A451934();
          v29 = v51;
          v28 = v52;
          goto LABEL_10;
        }

        goto LABEL_13;
      }

      v63 = 4;
      sub_21A42FA90();
      v31 = v47;
      sub_21A451934();
      v33 = v48;
      v32 = v49;
    }

    (*(v33 + 8))(v31, v32);
    return (*(v57 + 8))(v25, v26);
  }

  if (!v23)
  {
    v59[0] = 0;
    sub_21A42FBE0();
    v26 = v56;
    sub_21A451934();
    (*(v38 + 8))(v18, v16);
    return (*(v57 + 8))(v25, v26);
  }

  if (v23 == 1)
  {
    v60 = 1;
    sub_21A42FB8C();
    v26 = v56;
    sub_21A451934();
    (*(v39 + 8))(v15, v40);
    return (*(v57 + 8))(v25, v26);
  }

  v26 = v56;
  if (v23 == 2)
  {
    v61 = 2;
    sub_21A42FB38();
    v27 = v41;
    sub_21A451934();
    v29 = v42;
    v28 = v43;
LABEL_10:
    (*(v29 + 8))(v27, v28);
    return (*(v57 + 8))(v22, v26);
  }

LABEL_13:
  v67 = 6;
  sub_21A42F9E8();
  v34 = v53;
  sub_21A451934();
  v66 = 0;
  v35 = v55;
  v36 = v58;
  sub_21A451944();
  if (!v36)
  {
    v65 = 1;
    sub_21A451944();
  }

  (*(v54 + 8))(v34, v35);
  return (*(v57 + 8))(v22, v26);
}

uint64_t PFLTaskSource.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v77 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AB8, &qword_21A457F60);
  v73 = *(v3 - 8);
  v74 = v3;
  MEMORY[0x28223BE20](v3);
  v76 = &v59 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AC0, &qword_21A457F68);
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v80 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AC8, &qword_21A457F70);
  v8 = *(v7 - 8);
  v69 = v7;
  v70 = v8;
  MEMORY[0x28223BE20](v7);
  v79 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AD0, &qword_21A457F78);
  v11 = *(v10 - 8);
  v67 = v10;
  v68 = v11;
  MEMORY[0x28223BE20](v10);
  v78 = &v59 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AD8, &qword_21A457F80);
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x28223BE20](v13);
  v75 = &v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AE0, &qword_21A457F88);
  v63 = *(v15 - 8);
  v64 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AE8, &qword_21A457F90);
  v62 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AF0, &qword_21A457F98);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v59 - v23;
  v25 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_21A42F994();
  v26 = v82;
  sub_21A451BB4();
  if (v26)
  {
    goto LABEL_11;
  }

  v60 = v18;
  v27 = v17;
  v29 = v78;
  v28 = v79;
  v61 = 0;
  v30 = v80;
  v82 = v22;
  v31 = v21;
  v32 = sub_21A451924();
  if (*(v32 + 16) != 1 || (v33 = *(v32 + 32), v33 == 7))
  {
    v42 = sub_21A4517D4();
    swift_allocError();
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28AF8, &unk_21A457FA0);
    *v44 = &type metadata for PFLTaskSource;
    sub_21A4518D4();
    sub_21A4517C4();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
    swift_willThrow();
    (*(v82 + 8))(v24, v31);
  }

  else
  {
    if (*(v32 + 32) > 2u)
    {
      if (*(v32 + 32) <= 4u)
      {
        if (v33 == 3)
        {
          v86 = 3;
          sub_21A42FAE4();
          v34 = v61;
          sub_21A4518C4();
          v35 = v77;
          v36 = v82;
          if (!v34)
          {
            (*(v68 + 8))(v29, v67);
            (*(v36 + 8))(v24, v21);
            swift_unknownObjectRelease();
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 3;
            v41 = v81;
LABEL_32:
            *v35 = v37;
            v35[1] = v40;
            v35[2] = v38;
            v35[3] = v39;
            return __swift_destroy_boxed_opaque_existential_0(v41);
          }
        }

        else
        {
          v87 = 4;
          sub_21A42FA90();
          v50 = v61;
          sub_21A4518C4();
          v35 = v77;
          v36 = v82;
          if (!v50)
          {
            (*(v70 + 8))(v28, v69);
            (*(v36 + 8))(v24, v21);
            swift_unknownObjectRelease();
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 4;
            v41 = v81;
            goto LABEL_32;
          }
        }

        (*(v36 + 8))(v24, v21);
        goto LABEL_10;
      }

      if (v33 == 5)
      {
        v88 = 5;
        sub_21A42FA3C();
        v47 = v61;
        sub_21A4518C4();
        if (!v47)
        {
          (*(v71 + 8))(v30, v72);
          (*(v82 + 8))(v24, v21);
          swift_unknownObjectRelease();
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 5;
          goto LABEL_31;
        }
      }

      else
      {
        v91 = 6;
        sub_21A42F9E8();
        v51 = v76;
        v52 = v61;
        sub_21A4518C4();
        if (!v52)
        {
          v90 = 0;
          v53 = v74;
          v54 = sub_21A4518E4();
          v79 = v24;
          v80 = v55;
          v78 = v54;
          v89 = 1;
          v56 = sub_21A4518E4();
          v57 = (v82 + 8);
          v38 = v56;
          v39 = v58;
          (*(v73 + 8))(v51, v53);
          (*v57)(v79, v21);
          swift_unknownObjectRelease();
          v37 = v78;
          v40 = v80;
          goto LABEL_31;
        }
      }

LABEL_23:
      (*(v82 + 8))(v24, v31);
      goto LABEL_10;
    }

    if (*(v32 + 32))
    {
      v46 = v61;
      if (v33 == 1)
      {
        v84 = 1;
        sub_21A42FB8C();
        sub_21A4518C4();
        if (!v46)
        {
          (*(v63 + 8))(v27, v64);
          (*(v82 + 8))(v24, v31);
          swift_unknownObjectRelease();
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 1;
LABEL_31:
          v41 = v81;
          v35 = v77;
          goto LABEL_32;
        }
      }

      else
      {
        v85 = 2;
        sub_21A42FB38();
        v49 = v75;
        sub_21A4518C4();
        if (!v46)
        {
          (*(v65 + 8))(v49, v66);
          (*(v82 + 8))(v24, v31);
          swift_unknownObjectRelease();
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 2;
          goto LABEL_31;
        }
      }

      goto LABEL_23;
    }

    v83[0] = 0;
    sub_21A42FBE0();
    v48 = v61;
    sub_21A4518C4();
    if (!v48)
    {
      (*(v62 + 8))(v20, v60);
      (*(v82 + 8))(v24, v21);
      swift_unknownObjectRelease();
      v37 = 0;
      v40 = 0;
      v38 = 0;
      v39 = 0;
      goto LABEL_31;
    }

    (*(v82 + 8))(v24, v21);
  }

LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v41 = v81;
  return __swift_destroy_boxed_opaque_existential_0(v41);
}

uint64_t Dictionary<>.parameter<A>(for:default:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_21A4515F4();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v21 - v13;
  if (*(a4 + 16) && (v15 = sub_21A3DCA2C(a1, a2), (v16 & 1) != 0))
  {
    sub_21A3D3B94(*(a4 + 56) + 32 * v15, v21);
  }

  else
  {
    memset(v21, 0, sizeof(v21));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28468, &unk_21A455FB0);
  v17 = swift_dynamicCast();
  v18 = *(a5 - 8);
  v19 = *(v18 + 56);
  if (v17)
  {
    v19(v14, 0, 1, a5);
    return (*(v18 + 32))(a6, v14, a5);
  }

  else
  {
    v19(v14, 1, 1, a5);
    return (*(v18 + 16))(a6, a3, a5);
  }
}

uint64_t PFLTaskDiscovery.init(for:useCase:taskPreferences:allowsCellularAccess:policy:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, void *a7)
{
  v8 = a6;
  v15 = a7[3];
  v14 = a7[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a7, v15);
  MEMORY[0x28223BE20](v16);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = sub_21A42F0E8(a1, a2, a3, a4, a5, v8, v18, v22[1], v15, v14);
  __swift_destroy_boxed_opaque_existential_0(a7);
  return v20;
}

void sub_21A427C04()
{
  v1 = *(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_numDeliveries);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_numDeliveries) = v3;
  }
}

uint64_t sub_21A427C44()
{
  v36 = v0;
  v1 = *(v0 + 1488);
  swift_beginAccess();
  sub_21A42FC34(v1 + 88, v0 + 496);
  v2 = *(v0 + 520);
  sub_21A3D3BF0(v0 + 496, &qword_27CD28B00, &qword_21A457FB8);
  v3 = *(v0 + 1488);
  if (v2)
  {
    sub_21A42FC34((v3 + 11), v0 + 896);
    if (!*(v0 + 920))
    {
      sub_21A3D3BF0(v0 + 896, &qword_27CD28B00, &qword_21A457FB8);
      goto LABEL_16;
    }

    sub_21A3C50DC((v0 + 896), v0 + 536);
    v4 = *(v0 + 560);
    v5 = __swift_project_boxed_opaque_existential_1((v0 + 536), v4);
    v6 = *(v4 - 8);
    v7 = swift_task_alloc();
    (*(v6 + 16))(v7, v5, v4);
    *(v0 + 800) = swift_getAssociatedTypeWitness();
    *(v0 + 808) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 776));
    sub_21A451294();

    *(v0 + 1568) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_numDeliveries;
    *(v0 + 1576) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_maximumTasksToDeliver;
    *(v0 + 1584) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_pm;
    *(v0 + 1592) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskPreferences;
    *(v0 + 1600) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskDownloadTimeSeconds;
    *(v0 + 1608) = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policy;
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 776, *(v0 + 800));
    sub_21A451634();
    if (!*(v0 + 960))
    {
LABEL_7:
      __swift_destroy_boxed_opaque_existential_0((v0 + 776));
      __swift_destroy_boxed_opaque_existential_0((v0 + 536));
LABEL_16:
      v24 = *(v0 + 8);

      return v24(0);
    }

    v8 = *(v0 + 1488);
    *(v0 + 1616) = 0;
    v9 = *(v0 + 1576);
    v10 = *(v0 + 1568);
    sub_21A3C50DC((v0 + 936), v0 + 576);
    v11 = *(v8 + v9);
    if (*(v8 + v10) >= v11 && (v11 & 0x8000000000000000) == 0)
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 576));
      goto LABEL_7;
    }

    v25 = *(v0 + 1592);
    v26 = *(v0 + 1488);
    v27 = &v26[*(v0 + 1608)];
    *(v0 + 1624) = *(v26 + 2);
    *(v0 + 1632) = *(v26 + 3);
    v28 = *(v0 + 600);
    v29 = *(v0 + 608);
    __swift_project_boxed_opaque_existential_1((v0 + 576), v28);
    *(v0 + 1640) = (*(v29 + 48))(v28, v29);
    *(v0 + 1648) = v30;
    *(v0 + 1656) = *(v26 + 4);
    *(v0 + 1664) = *(v26 + 5);
    v31 = *(v27 + 3);
    v32 = *(v27 + 4);
    __swift_project_boxed_opaque_existential_1(v27, v31);
    v34 = (*(v32 + 8) + **(v32 + 8));
    v33 = swift_task_alloc();
    *(v0 + 1672) = v33;
    *v33 = v0;
    v33[1] = sub_21A4293BC;

    return v34(v0 + 1464, v0 + 576, &v26[v25], v31, v32);
  }

  else
  {
    v12 = v3[10];
    __swift_project_boxed_opaque_existential_1(v3 + 6, v3[9]);
    *(v0 + 1496) = v3[2];
    *(v0 + 1504) = v3[3];
    v13 = (*(v12 + 16))();
    v15 = v14;
    *(v0 + 1512) = v13;
    *(v0 + 1520) = v14;
    if (qword_27CD28170 != -1)
    {
      swift_once();
    }

    v16 = sub_21A450F24();
    *(v0 + 1528) = __swift_project_value_buffer(v16, qword_27CD28C90);

    v17 = sub_21A450F04();
    v18 = sub_21A451574();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_21A3E2554(v13, v15, &v35);
      _os_log_impl(&dword_21A3C2000, v17, v18, "Start download policy %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x21CEDB220](v20, -1, -1);
      MEMORY[0x21CEDB220](v19, -1, -1);
    }

    v21 = *(v0 + 1488);
    *(v0 + 1536) = *(v21 + 32);
    *(v0 + 1544) = *(v21 + 40);
    v22 = swift_task_alloc();
    *(v0 + 1552) = v22;
    *v22 = v0;
    v22[1] = sub_21A42825C;

    return sub_21A42E60C(v0 + 616);
  }
}

uint64_t sub_21A42825C()
{
  *(*v1 + 1560) = v0;

  if (v0)
  {
    v2 = sub_21A428AC0;
  }

  else
  {
    v2 = sub_21A428370;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A428370()
{
  v1 = v0[188];
  v2 = v0[187];
  v3 = v0[186];
  swift_beginAccess();
  sub_21A42FCCC((v0 + 77), v3 + 88);
  swift_endAccess();
  v0[152] = v2;
  v0[153] = v1;
  v0[140] = 46;
  v4 = 0xE100000000000000;
  v0[141] = 0xE100000000000000;
  sub_21A3ED2CC();
  v5 = (sub_21A451644() + 16);
  if (*v5)
  {
    v6 = &v5[2 * *v5];
    v7 = *v6;
    v4 = v6[1];
  }

  else
  {
    v7 = 85;
  }

  v8 = v0[193];
  v9 = v0[192];

  if ((v9 != v7 || v8 != v4) && (sub_21A4519B4() & 1) == 0)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21A456280;
  *(v10 + 32) = 0x6E6967756C70;
  *(v10 + 40) = 0xE600000000000000;
  v11 = sub_21A451054();

  *(v10 + 48) = v11;
  *(v10 + 56) = 0x64496B736174;
  *(v10 + 64) = 0xE600000000000000;
  v12 = sub_21A451054();

  *(v10 + 72) = v12;
  *(v10 + 80) = 0x6E6F697461636F6CLL;
  *(v10 + 88) = 0xE800000000000000;
  *(v10 + 96) = sub_21A451054();
  *(v10 + 104) = 0x65736143657375;
  *(v10 + 112) = 0xE700000000000000;
  v13 = sub_21A451054();

  *(v10 + 120) = v13;
  *(v10 + 128) = 0x646F43726F727265;
  *(v10 + 136) = 0xE900000000000065;
  *(v10 + 144) = sub_21A4514E4();
  *(v10 + 152) = 0x6D6F44726F727265;
  *(v10 + 160) = 0xEB000000006E6961;
  *(v10 + 168) = sub_21A451054();
  v14 = sub_21A3E57A0(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  v16 = sub_21A451054();
  v0[54] = sub_21A3ED530;
  v0[55] = v15;
  v0[50] = MEMORY[0x277D85DD0];
  v0[51] = 1107296256;
  v0[52] = sub_21A432B2C;
  v0[53] = &block_descriptor_66;
  v17 = _Block_copy(v0 + 50);

  AnalyticsSendEventLazy();

  _Block_release(v17);

  v18 = v0[195];
  sub_21A42FC34(v0[186] + 88, (v0 + 112));
  if (!v0[115])
  {
    sub_21A3D3BF0((v0 + 112), &qword_27CD28B00, &qword_21A457FB8);
    goto LABEL_16;
  }

  sub_21A3C50DC(v0 + 56, (v0 + 67));
  v19 = v0[70];
  v20 = __swift_project_boxed_opaque_existential_1(v0 + 67, v19);
  v21 = *(v19 - 8);
  v22 = swift_task_alloc();
  (*(v21 + 16))(v22, v20, v19);
  v0[100] = swift_getAssociatedTypeWitness();
  v0[101] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 97);
  sub_21A451294();

  v0[196] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_numDeliveries;
  v0[197] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_maximumTasksToDeliver;
  v0[198] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_pm;
  v0[199] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskPreferences;
  v0[200] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskDownloadTimeSeconds;
  v0[201] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policy;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 97), v0[100]);
  sub_21A451634();
  if (!v0[120])
  {
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0(v0 + 97);
    __swift_destroy_boxed_opaque_existential_0(v0 + 67);
LABEL_16:
    v27 = v0[1];

    return v27(0);
  }

  v23 = v0[186];
  v0[202] = v18;
  v24 = v0[197];
  v25 = v0[196];
  sub_21A3C50DC((v0 + 117), (v0 + 72));
  v26 = *(v23 + v24);
  if (*(v23 + v25) >= v26 && (v26 & 0x8000000000000000) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 72);
    goto LABEL_14;
  }

  v29 = v0[199];
  v30 = v0[186];
  v31 = (v30 + v0[201]);
  v0[203] = v30[2];
  v0[204] = v30[3];
  v32 = v0[75];
  v33 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v32);
  v0[205] = (*(v33 + 48))(v32, v33);
  v0[206] = v34;
  v0[207] = v30[4];
  v0[208] = v30[5];
  v35 = v31[3];
  v36 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v35);
  aBlock = (*(v36 + 8) + **(v36 + 8));
  v37 = swift_task_alloc();
  v0[209] = v37;
  *v37 = v0;
  v37[1] = sub_21A4293BC;

  return (aBlock)(v0 + 183, v0 + 72, v30 + v29, v35, v36);
}

uint64_t sub_21A428AC0()
{
  v1 = v0[195];
  v2 = sub_21A450A74();
  [v2 code];

  v0[181] = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 92);
  }

  else
  {
    v4 = sub_21A450A74();
    v5 = [v4 domain];

    sub_21A451084();
  }

  v6 = v0[188];
  v0[154] = v0[187];
  v0[155] = v6;
  v0[148] = 46;
  v7 = 0xE100000000000000;
  v0[149] = 0xE100000000000000;
  sub_21A3ED2CC();
  v8 = (sub_21A451644() + 16);
  if (*v8)
  {
    v9 = &v8[2 * *v8];
    v10 = *v9;
    v7 = v9[1];
  }

  else
  {
    v10 = 85;
  }

  v11 = v0[193];
  v12 = v0[192];

  if ((v12 != v10 || v11 != v7) && (sub_21A4519B4() & 1) == 0)
  {
  }

  v50 = v0[195];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21A456280;
  *(v13 + 32) = 0x6E6967756C70;
  *(v13 + 40) = 0xE600000000000000;
  v14 = sub_21A451054();

  *(v13 + 48) = v14;
  *(v13 + 56) = 0x64496B736174;
  *(v13 + 64) = 0xE600000000000000;
  v15 = sub_21A451054();

  *(v13 + 72) = v15;
  *(v13 + 80) = 0x6E6F697461636F6CLL;
  *(v13 + 88) = 0xE800000000000000;
  *(v13 + 96) = sub_21A451054();
  *(v13 + 104) = 0x65736143657375;
  *(v13 + 112) = 0xE700000000000000;
  v16 = sub_21A451054();

  *(v13 + 120) = v16;
  *(v13 + 128) = 0x646F43726F727265;
  *(v13 + 136) = 0xE900000000000065;
  *(v13 + 144) = sub_21A4514E4();
  *(v13 + 152) = 0x6D6F44726F727265;
  *(v13 + 160) = 0xEB000000006E6961;
  v17 = sub_21A451054();

  *(v13 + 168) = v17;
  v18 = sub_21A3E57A0(v13);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = sub_21A451054();
  v0[48] = sub_21A3ED320;
  v0[49] = v19;
  v0[44] = MEMORY[0x277D85DD0];
  v0[45] = 1107296256;
  v0[46] = sub_21A432B2C;
  v0[47] = &block_descriptor_1;
  v21 = _Block_copy(v0 + 44);

  AnalyticsSendEventLazy();

  _Block_release(v21);

  swift_willThrow();
  v22 = v50;
  v23 = sub_21A450F04();
  v24 = sub_21A451584();

  v25 = os_log_type_enabled(v23, v24);
  v26 = v0[195];
  if (v25)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    v29 = v26;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    _os_log_impl(&dword_21A3C2000, v23, v24, "Failed to download policy with error %@", v27, 0xCu);
    sub_21A3D3BF0(v28, &qword_27CD28608, &qword_21A456570);
    MEMORY[0x21CEDB220](v28, -1, -1);
    MEMORY[0x21CEDB220](v27, -1, -1);
  }

  else
  {
  }

  sub_21A42FC34(v0[186] + 88, (v0 + 112));
  if (!v0[115])
  {
    sub_21A3D3BF0((v0 + 112), &qword_27CD28B00, &qword_21A457FB8);
    goto LABEL_22;
  }

  sub_21A3C50DC(v0 + 56, (v0 + 67));
  v31 = v0[70];
  v32 = __swift_project_boxed_opaque_existential_1(v0 + 67, v31);
  v33 = *(v31 - 8);
  v34 = swift_task_alloc();
  (*(v33 + 16))(v34, v32, v31);
  v0[100] = swift_getAssociatedTypeWitness();
  v0[101] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 97);
  sub_21A451294();

  v0[196] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_numDeliveries;
  v0[197] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_maximumTasksToDeliver;
  v0[198] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_pm;
  v0[199] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskPreferences;
  v0[200] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_taskDownloadTimeSeconds;
  v0[201] = OBJC_IVAR____TtC24PrivateFederatedLearning16PFLTaskDiscovery_policy;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 97), v0[100]);
  sub_21A451634();
  if (!v0[120])
  {
LABEL_20:
    __swift_destroy_boxed_opaque_existential_0(v0 + 97);
    __swift_destroy_boxed_opaque_existential_0(v0 + 67);
LABEL_22:
    v39 = v0[1];

    return v39(0);
  }

  v35 = v0[186];
  v0[202] = 0;
  v36 = v0[197];
  v37 = v0[196];
  sub_21A3C50DC((v0 + 117), (v0 + 72));
  v38 = *(v35 + v36);
  if (*(v35 + v37) >= v38 && (v38 & 0x8000000000000000) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 72);
    goto LABEL_20;
  }

  v41 = v0[199];
  v42 = v0[186];
  v43 = (v42 + v0[201]);
  v0[203] = v42[2];
  v0[204] = v42[3];
  v44 = v0[75];
  v45 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v44);
  v0[205] = (*(v45 + 48))(v44, v45);
  v0[206] = v46;
  v0[207] = v42[4];
  v0[208] = v42[5];
  v47 = v43[3];
  v48 = v43[4];
  __swift_project_boxed_opaque_existential_1(v43, v47);
  aBlock = (*(v48 + 8) + **(v48 + 8));
  v49 = swift_task_alloc();
  v0[209] = v49;
  *v49 = v0;
  v49[1] = sub_21A4293BC;

  return (aBlock)(v0 + 183, v0 + 72, v42 + v41, v47, v48);
}

uint64_t sub_21A4293BC()
{

  return MEMORY[0x2822009F8](sub_21A4294B8, 0, 0);
}

uint64_t sub_21A4294B8()
{
  v237 = v0;
  v1 = v0[183];
  v0[210] = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      sub_21A3EC940();
      v2 = swift_allocError();
      *v3 = 52;
      swift_willThrow();
LABEL_10:
      v13 = sub_21A450A74();
      [v13 code];

      v0[180] = v2;
      v14 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
      v233 = v2;
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v0 + 82);
      }

      else
      {
        v15 = sub_21A450A74();
        v16 = [v15 domain];

        sub_21A451084();
      }

      v17 = v0[204];
      v0[176] = v0[203];
      v0[177] = v17;
      v0[166] = 46;
      v18 = 0xE100000000000000;
      v0[167] = 0xE100000000000000;
      sub_21A3ED2CC();
      v19 = (sub_21A451644() + 16);
      if (*v19)
      {
        v20 = &v19[2 * *v19];
        v21 = *v20;
        v18 = v20[1];
      }

      else
      {
        v21 = 85;
      }

      v22 = v0[208];
      v23 = v0[207];

      if ((v23 != v21 || v22 != v18) && (sub_21A4519B4() & 1) == 0)
      {
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_21A456280;
      *(v24 + 32) = 0x6E6967756C70;
      *(v24 + 40) = 0xE600000000000000;
      v25 = sub_21A451054();

      *(v24 + 48) = v25;
      *(v24 + 56) = 0x64496B736174;
      *(v24 + 64) = 0xE600000000000000;
      v26 = sub_21A451054();

      *(v24 + 72) = v26;
      *(v24 + 80) = 0x6E6F697461636F6CLL;
      *(v24 + 88) = 0xE800000000000000;
      *(v24 + 96) = sub_21A451054();
      *(v24 + 104) = 0x65736143657375;
      *(v24 + 112) = 0xE700000000000000;
      v27 = sub_21A451054();

      *(v24 + 120) = v27;
      *(v24 + 128) = 0x646F43726F727265;
      *(v24 + 136) = 0xE900000000000065;
      *(v24 + 144) = sub_21A4514E4();
      *(v24 + 152) = 0x6D6F44726F727265;
      *(v24 + 160) = 0xEB000000006E6961;
      v28 = sub_21A451054();

      *(v24 + 168) = v28;
      v29 = sub_21A3E57A0(v24);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      v31 = sub_21A451054();
      v0[6] = sub_21A3ED530;
      v0[7] = v30;
      v0[2] = MEMORY[0x277D85DD0];
      v0[3] = 1107296256;
      v0[4] = sub_21A432B2C;
      v0[5] = &block_descriptor_9;
      v32 = _Block_copy(v0 + 2);

      AnalyticsSendEventLazy();

      _Block_release(v32);

      swift_willThrow();

      goto LABEL_22;
    }

    v230 = v1;
    v232 = v0[202];
  }

  else
  {
    v230 = 0;
    v4 = v0[186];
    v5 = v4 + v0[199];
    v6 = v0[75];
    v7 = v0[76];
    __swift_project_boxed_opaque_existential_1(v0 + 72, v6);
    v9 = *(v4 + 128);
    v8 = *(v4 + 136);
    v10 = type metadata accessor for PFLTaskPreferences(0);
    if ((*(v5 + *(v10 + 24)) & 1) != 0 && (v11 = *(v0[186] + v0[199] + *(v10 + 20) + 32)) != 0)
    {
    }

    else
    {
      v11 = sub_21A3E509C(MEMORY[0x277D84F90]);
    }

    v12 = v0[202];
    (*(v7 + 8))(v9, v8, v11, v6, v7);
    v2 = v12;

    if (v12)
    {
      goto LABEL_10;
    }

    v232 = 0;
  }

  v33 = v0[204];
  v34 = v0[203];
  *(v0 + 1744) = 0;
  v0[160] = v34;
  v0[161] = v33;
  v0[158] = 46;
  v35 = 0xE100000000000000;
  v0[159] = 0xE100000000000000;
  v0[211] = sub_21A3ED2CC();
  v36 = (sub_21A451644() + 16);
  if (*v36)
  {
    v37 = &v36[2 * *v36];
    v38 = *v37;
    v35 = v37[1];
  }

  else
  {
    v38 = 85;
  }

  v39 = v0[208];
  v40 = v0[207];

  if ((v40 != v38 || v39 != v35) && (sub_21A4519B4() & 1) == 0)
  {
  }

  v0[212] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F0, &unk_21A456560);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_21A456280;
  *(v41 + 32) = 0x6E6967756C70;
  *(v41 + 40) = 0xE600000000000000;
  v42 = sub_21A451054();

  *(v41 + 48) = v42;
  *(v41 + 56) = 0x64496B736174;
  *(v41 + 64) = 0xE600000000000000;
  v43 = sub_21A451054();

  *(v41 + 72) = v43;
  *(v41 + 80) = 0x6E6F697461636F6CLL;
  *(v41 + 88) = 0xE800000000000000;
  *(v41 + 96) = sub_21A451054();
  *(v41 + 104) = 0x65736143657375;
  *(v41 + 112) = 0xE700000000000000;
  v44 = sub_21A451054();

  *(v41 + 120) = v44;
  *(v41 + 128) = 0x646F43726F727265;
  *(v41 + 136) = 0xE900000000000065;
  *(v41 + 144) = sub_21A4514E4();
  *(v41 + 152) = 0x6D6F44726F727265;
  *(v41 + 160) = 0xEB000000006E6961;
  *(v41 + 168) = sub_21A451054();
  v45 = sub_21A3E57A0(v41);
  swift_setDeallocating();
  v0[213] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285F8, &unk_21A4564F0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  v47 = sub_21A451054();
  v0[60] = sub_21A3ED530;
  v0[61] = v46;
  v0[56] = MEMORY[0x277D85DD0];
  v0[57] = 1107296256;
  v0[58] = sub_21A432B2C;
  v0[59] = &block_descriptor_16;
  v48 = _Block_copy(v0 + 56);

  AnalyticsSendEventLazy();

  _Block_release(v48);

  if (v0[218])
  {
    sub_21A42FCBC(v230);
    goto LABEL_34;
  }

  if (!v230)
  {
    v77 = v0[199];
    v78 = v0[186];
    v79 = *&v78[v0[198]];
    v0[214] = v79;
    Current = CFAbsoluteTimeGetCurrent();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v236 = *(v79 + 16);
    *(v79 + 16) = 0x8000000000000000;
    sub_21A4033E8(0x6E776F446B736154, 0xEC00000064616F6CLL, isUniquelyReferenced_nonNull_native, Current);
    *(v79 + 16) = v236;
    swift_endAccess();
    v82 = *(v78 + 9);
    v83 = *(v78 + 10);
    __swift_project_boxed_opaque_existential_1(v78 + 6, v82);
    v235 = (*(v83 + 24) + **(v83 + 24));
    v84 = swift_task_alloc();
    v0[215] = v84;
    *v84 = v0;
    v84[1] = sub_21A42BB08;

    return v235(v0 + 72, &v78[v77], v82, v83);
  }

  v65 = qword_27CD28170;

  if (v65 != -1)
  {
    swift_once();
  }

  v66 = sub_21A450F24();
  __swift_project_value_buffer(v66, qword_27CD28C90);
  sub_21A3F939C((v0 + 72), (v0 + 107));
  sub_21A3F939C((v0 + 107), (v0 + 102));
  __swift_destroy_boxed_opaque_existential_0(v0 + 107);
  v67 = sub_21A450F04();
  v68 = sub_21A451574();
  v221 = v66;
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v236 = v70;
    *v69 = 136315138;
    v71 = v0[105];
    v72 = v0[106];
    __swift_project_boxed_opaque_existential_1(v0 + 102, v71);
    v73 = (*(v72 + 48))(v71, v72);
    v75 = v74;
    __swift_destroy_boxed_opaque_existential_0(v0 + 102);
    v76 = sub_21A3E2554(v73, v75, &v236);

    *(v69 + 4) = v76;
    _os_log_impl(&dword_21A3C2000, v67, v68, "Recipe %s is ready.", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v70);
    MEMORY[0x21CEDB220](v70, -1, -1);
    MEMORY[0x21CEDB220](v69, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v0 + 102);
  }

  v85 = v0[204];
  v86 = v0[203];
  v87 = v0[75];
  v88 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v87);
  (*(v88 + 48))(v87, v88);
  v0[162] = v86;
  v0[163] = v85;
  v0[164] = 46;
  v89 = 0xE100000000000000;
  v0[165] = 0xE100000000000000;
  v90 = (sub_21A451644() + 16);
  if (*v90)
  {
    v91 = &v90[2 * *v90];
    v92 = *v91;
    v89 = v91[1];
  }

  else
  {
    v92 = 85;
  }

  v93 = v0[208];
  v94 = v0[207];

  if ((v94 != v92 || v93 != v89) && (sub_21A4519B4() & 1) == 0)
  {
  }

  v223 = v0[204];
  v222 = v0[203];
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_21A456280;
  *(v95 + 32) = 0x6E6967756C70;
  *(v95 + 40) = 0xE600000000000000;
  v96 = sub_21A451054();

  *(v95 + 48) = v96;
  *(v95 + 56) = 0x64496B736174;
  *(v95 + 64) = 0xE600000000000000;
  v97 = sub_21A451054();

  *(v95 + 72) = v97;
  *(v95 + 80) = 0x6E6F697461636F6CLL;
  *(v95 + 88) = 0xE800000000000000;
  v98 = 0xE100000000000000;
  *(v95 + 96) = sub_21A451054();
  *(v95 + 104) = 0x65736143657375;
  *(v95 + 112) = 0xE700000000000000;
  v99 = sub_21A451054();

  *(v95 + 120) = v99;
  *(v95 + 128) = 0x646F43726F727265;
  *(v95 + 136) = 0xE900000000000065;
  *(v95 + 144) = sub_21A4514E4();
  *(v95 + 152) = 0x6D6F44726F727265;
  *(v95 + 160) = 0xEB000000006E6961;
  *(v95 + 168) = sub_21A451054();
  v100 = sub_21A3E57A0(v95);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v101 = swift_allocObject();
  *(v101 + 16) = v100;
  v102 = sub_21A451054();
  v0[30] = sub_21A3ED530;
  v0[31] = v101;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_21A432B2C;
  v0[29] = &block_descriptor_38;
  v103 = _Block_copy(v0 + 26);

  AnalyticsSendEventLazy();

  _Block_release(v103);

  v104 = v0[75];
  v105 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v104);
  (*(v105 + 48))(v104, v105);
  v0[168] = v222;
  v0[169] = v223;
  v0[170] = 46;
  v0[171] = 0xE100000000000000;
  v106 = (sub_21A451644() + 16);
  if (*v106)
  {
    v107 = &v106[2 * *v106];
    v108 = *v107;
    v98 = v107[1];
  }

  else
  {
    v108 = 85;
  }

  v109 = v0[208];
  v110 = v0[207];

  if (v110 == v108 && v109 == v98)
  {
    v224 = v0[207];
    v226 = v0[208];
  }

  else
  {
    v111 = sub_21A4519B4();
    v226 = v0[208];
    if ((v111 & 1) == 0)
    {
    }

    v224 = v0[207];
  }

  v112 = (v0[186] + v0[201]);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_21A456280;
  *(v113 + 32) = 0x6E6967756C70;
  *(v113 + 40) = 0xE600000000000000;
  v114 = sub_21A451054();

  *(v113 + 48) = v114;
  *(v113 + 56) = 0x64496B736174;
  *(v113 + 64) = 0xE600000000000000;
  v115 = sub_21A451054();

  *(v113 + 72) = v115;
  *(v113 + 80) = 0x6E6F697461636F6CLL;
  *(v113 + 88) = 0xE800000000000000;
  v116 = 0xE100000000000000;
  *(v113 + 96) = sub_21A451054();
  *(v113 + 104) = 0x65736143657375;
  *(v113 + 112) = 0xE700000000000000;
  v117 = sub_21A451054();

  *(v113 + 120) = v117;
  *(v113 + 128) = 0x646F43726F727265;
  *(v113 + 136) = 0xE900000000000065;
  *(v113 + 144) = sub_21A4514E4();
  *(v113 + 152) = 0x6D6F44726F727265;
  *(v113 + 160) = 0xEB000000006E6961;
  *(v113 + 168) = sub_21A451054();
  v118 = sub_21A3E57A0(v113);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v119 = swift_allocObject();
  *(v119 + 16) = v118;
  v120 = sub_21A451054();
  v0[24] = sub_21A3ED530;
  v0[25] = v119;
  v0[20] = MEMORY[0x277D85DD0];
  v0[21] = 1107296256;
  v0[22] = sub_21A432B2C;
  v0[23] = &block_descriptor_45;
  v121 = _Block_copy(v0 + 20);

  AnalyticsSendEventLazy();

  _Block_release(v121);

  v122 = v0[75];
  v123 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v122);
  (*(v123 + 48))(v122, v123);
  v124 = v112[3];
  v125 = v112[4];
  __swift_project_boxed_opaque_existential_1(v112, v124);
  (*(v125 + 16))(v230, v224, v226, v124, v125);
  if (!v232)
  {
    v232 = v0 + 8;
    v128 = v0[204];
    v0[172] = v0[203];
    v0[173] = v128;
    v0[156] = 46;
    v0[157] = 0xE100000000000000;
    v129 = (sub_21A451644() + 16);
    if (*v129)
    {
      v130 = &v129[2 * *v129];
      v131 = *v130;
      v116 = v130[1];
    }

    else
    {
      v131 = 85;
    }

    v179 = v0[208];
    v180 = v0[207];

    if (v180 == v131 && v179 == v116 || (sub_21A4519B4() & 1) != 0)
    {
      v152 = 0;
    }

    else
    {

      v152 = v0[207];
    }

    v225 = v0[186];
    v227 = v0[196];
    v183 = swift_allocObject();
    *(v183 + 16) = xmmword_21A456280;
    *(v183 + 32) = 0x6E6967756C70;
    *(v183 + 40) = 0xE600000000000000;
    v184 = sub_21A451054();

    *(v183 + 48) = v184;
    *(v183 + 56) = 0x64496B736174;
    *(v183 + 64) = 0xE600000000000000;
    v185 = sub_21A451054();

    *(v183 + 72) = v185;
    *(v183 + 80) = 0x6E6F697461636F6CLL;
    *(v183 + 88) = 0xE800000000000000;
    *(v183 + 96) = sub_21A451054();
    *(v183 + 104) = 0x65736143657375;
    *(v183 + 112) = 0xE700000000000000;
    v186 = sub_21A451054();

    *(v183 + 120) = v186;
    *(v183 + 128) = 0x646F43726F727265;
    *(v183 + 136) = 0xE900000000000065;
    *(v183 + 144) = sub_21A4514E4();
    *(v183 + 152) = 0x6D6F44726F727265;
    *(v183 + 160) = 0xEB000000006E6961;
    *(v183 + 168) = sub_21A451054();
    v187 = sub_21A3E57A0(v183);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v188 = swift_allocObject();
    *(v188 + 16) = v187;
    v151 = sub_21A451054();
    v0[12] = sub_21A3ED530;
    v0[13] = v188;
    v0[8] = MEMORY[0x277D85DD0];
    v0[9] = 1107296256;
    v0[10] = sub_21A432B2C;
    v0[11] = &block_descriptor_59;
    v189 = _Block_copy(v232);

    AnalyticsSendEventLazy();

    _Block_release(v189);

    v190 = *&v225[v227];
    v191 = __OFADD__(v190, 1);
    v192 = v190 + 1;
    if (!v191)
    {
      v193 = v0[210];
      *(v0[186] + v0[196]) = v192;
      sub_21A42FCBC(v193);
      v53 = v230;
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_126;
  }

  v126 = sub_21A450A74();
  [v126 code];

  v0[179] = v232;
  v127 = v232;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 87);
  }

  else
  {
    v132 = sub_21A450A74();
    v133 = [v132 domain];

    sub_21A451084();
  }

  v134 = v0[204];
  v0[138] = v0[203];
  v0[139] = v134;
  v0[174] = 46;
  v135 = 0xE100000000000000;
  v0[175] = 0xE100000000000000;
  v136 = (sub_21A451644() + 16);
  if (*v136)
  {
    v137 = &v136[2 * *v136];
    v138 = *v137;
    v135 = v137[1];
  }

  else
  {
    v138 = 85;
  }

  v139 = v0[208];
  v140 = v0[207];

  if ((v140 != v138 || v139 != v135) && (sub_21A4519B4() & 1) == 0)
  {
  }

  v141 = swift_allocObject();
  *(v141 + 16) = xmmword_21A456280;
  *(v141 + 32) = 0x6E6967756C70;
  *(v141 + 40) = 0xE600000000000000;
  v142 = sub_21A451054();

  *(v141 + 48) = v142;
  *(v141 + 56) = 0x64496B736174;
  *(v141 + 64) = 0xE600000000000000;
  v143 = sub_21A451054();

  *(v141 + 72) = v143;
  *(v141 + 80) = 0x6E6F697461636F6CLL;
  *(v141 + 88) = 0xE800000000000000;
  *(v141 + 96) = sub_21A451054();
  *(v141 + 104) = 0x65736143657375;
  *(v141 + 112) = 0xE700000000000000;
  v144 = sub_21A451054();

  *(v141 + 120) = v144;
  *(v141 + 128) = 0x646F43726F727265;
  *(v141 + 136) = 0xE900000000000065;
  *(v141 + 144) = sub_21A4514E4();
  *(v141 + 152) = 0x6D6F44726F727265;
  *(v141 + 160) = 0xEB000000006E6961;
  v145 = sub_21A451054();

  *(v141 + 168) = v145;
  v146 = sub_21A3E57A0(v141);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v147 = swift_allocObject();
  *(v147 + 16) = v146;
  v148 = sub_21A451054();
  v0[18] = sub_21A3ED530;
  v0[19] = v147;
  v0[14] = MEMORY[0x277D85DD0];
  v0[15] = 1107296256;
  v0[16] = sub_21A432B2C;
  v0[17] = &block_descriptor_52;
  v149 = _Block_copy(v0 + 14);

  AnalyticsSendEventLazy();

  _Block_release(v149);

  swift_willThrow();

  v0[184] = v232;
  v150 = v232;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
  if (swift_dynamicCast())
  {
    v151 = *(v0 + 1136);
    v152 = v0[143];
    if (qword_27CD28170 == -1)
    {
LABEL_88:
      __swift_project_value_buffer(v221, qword_27CD28C90);
      v153 = v152;
      v154 = v152;
      v155 = sub_21A450F04();
      v156 = sub_21A451574();

      v231 = v151;
      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        v0[182] = v159;
        *v157 = 136315394;
        *(v157 + 4) = sub_21A3E2554(qword_21A458BA0[v231], 0xE100000000000000, v0 + 182);
        *(v157 + 12) = 2112;
        v160 = v152;
        v161 = _swift_stdlib_bridgeErrorToNSError();
        *(v157 + 14) = v161;
        *v158 = v161;
        _os_log_impl(&dword_21A3C2000, v155, v156, "Failed to download task with location: %s, error %@", v157, 0x16u);
        sub_21A3D3BF0(v158, &qword_27CD28608, &qword_21A456570);
        MEMORY[0x21CEDB220](v158, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v159);
        MEMORY[0x21CEDB220](v159, -1, -1);
        MEMORY[0x21CEDB220](v157, -1, -1);
      }

      v162 = v0[75];
      v163 = v0[76];
      __swift_project_boxed_opaque_existential_1(v0 + 72, v162);
      (*(v163 + 48))(v162, v163);
      v0[185] = v152;
      v164 = v152;
      if (swift_dynamicCast())
      {
        v165 = *(v0 + 1745);
      }

      else
      {
        v165 = 0;
      }

      sub_21A3EC940();
      v168 = swift_allocError();
      *v169 = v165;
      v170 = sub_21A450A74();
      [v170 code];

      v0[178] = v168;
      v171 = v168;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285E0, &unk_21A4564E0);
      v229 = v152;
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_0(v0 + 122);
      }

      else
      {
        v172 = sub_21A450A74();
        v173 = [v172 domain];

        sub_21A451084();
      }

      v174 = v0[204];
      v0[144] = v0[203];
      v0[145] = v174;
      v0[146] = 46;
      v175 = 0xE100000000000000;
      v0[147] = 0xE100000000000000;
      v176 = (sub_21A451644() + 16);
      if (*v176)
      {
        v177 = &v176[2 * *v176];
        v178 = *v177;
        v175 = v177[1];
      }

      else
      {
        v178 = 85;
      }

      v181 = v0[208];
      v182 = v0[207];

      if ((v182 != v178 || v181 != v175) && (sub_21A4519B4() & 1) == 0)
      {
      }

      v194 = swift_allocObject();
      *(v194 + 16) = xmmword_21A456280;
      *(v194 + 32) = 0x6E6967756C70;
      *(v194 + 40) = 0xE600000000000000;
      v195 = sub_21A451054();

      *(v194 + 48) = v195;
      *(v194 + 56) = 0x64496B736174;
      *(v194 + 64) = 0xE600000000000000;
      v196 = sub_21A451054();

      *(v194 + 72) = v196;
      *(v194 + 80) = 0x6E6F697461636F6CLL;
      *(v194 + 88) = 0xE800000000000000;
      v197 = 0xE100000000000000;
      *(v194 + 96) = sub_21A451054();
      *(v194 + 104) = 0x65736143657375;
      *(v194 + 112) = 0xE700000000000000;
      v198 = sub_21A451054();

      *(v194 + 120) = v198;
      *(v194 + 128) = 0x646F43726F727265;
      *(v194 + 136) = 0xE900000000000065;
      *(v194 + 144) = sub_21A4514E4();
      *(v194 + 152) = 0x6D6F44726F727265;
      *(v194 + 160) = 0xEB000000006E6961;
      v199 = sub_21A451054();

      *(v194 + 168) = v199;
      v200 = sub_21A3E57A0(v194);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v201 = swift_allocObject();
      *(v201 + 16) = v200;
      v202 = sub_21A451054();
      v0[42] = sub_21A3ED530;
      v0[43] = v201;
      v0[38] = MEMORY[0x277D85DD0];
      v0[39] = 1107296256;
      v0[40] = sub_21A432B2C;
      v0[41] = &block_descriptor_24;
      v203 = _Block_copy(v0 + 38);

      AnalyticsSendEventLazy();

      _Block_release(v203);

      if (v231 == 5)
      {
        v204 = v0[204];
        v205 = v0[203];
        v206 = v0[75];
        v207 = v0[76];
        __swift_project_boxed_opaque_existential_1(v0 + 72, v206);
        (*(v207 + 48))(v206, v207);
        v0[150] = v205;
        v0[151] = v204;
        v0[136] = 46;
        v0[137] = 0xE100000000000000;
        v208 = (sub_21A451644() + 16);
        if (*v208)
        {
          v209 = &v208[2 * *v208];
          v210 = *v209;
          v197 = v209[1];
        }

        else
        {
          v210 = 85;
        }

        v211 = v0[208];
        v212 = v0[207];

        if ((v212 != v210 || v211 != v197) && (sub_21A4519B4() & 1) == 0)
        {
        }

        v228 = v0[210];
        v213 = swift_allocObject();
        *(v213 + 16) = xmmword_21A456280;
        *(v213 + 32) = 0x6E6967756C70;
        *(v213 + 40) = 0xE600000000000000;
        v214 = sub_21A451054();

        *(v213 + 48) = v214;
        *(v213 + 56) = 0x64496B736174;
        *(v213 + 64) = 0xE600000000000000;
        v215 = sub_21A451054();

        *(v213 + 72) = v215;
        *(v213 + 80) = 0x6E6F697461636F6CLL;
        *(v213 + 88) = 0xE800000000000000;
        *(v213 + 96) = sub_21A451054();
        *(v213 + 104) = 0x65736143657375;
        *(v213 + 112) = 0xE700000000000000;
        v216 = sub_21A451054();

        *(v213 + 120) = v216;
        *(v213 + 128) = 0x646F43726F727265;
        *(v213 + 136) = 0xE900000000000065;
        *(v213 + 144) = sub_21A4514E4();
        *(v213 + 152) = 0x6D6F44726F727265;
        *(v213 + 160) = 0xEB000000006E6961;
        *(v213 + 168) = sub_21A451054();
        v217 = sub_21A3E57A0(v213);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v218 = swift_allocObject();
        *(v218 + 16) = v217;
        v219 = sub_21A451054();
        v0[36] = sub_21A3ED530;
        v0[37] = v218;
        v0[32] = MEMORY[0x277D85DD0];
        v0[33] = 1107296256;
        v0[34] = sub_21A432B2C;
        v0[35] = &block_descriptor_31;
        v220 = _Block_copy(v0 + 32);

        AnalyticsSendEventLazy();

        _Block_release(v220);

        sub_21A42FCBC(v228);
        goto LABEL_22;
      }

      v166 = v0[210];

      v167 = v229;
      goto LABEL_117;
    }

LABEL_126:
    swift_once();
    goto LABEL_88;
  }

  v166 = v0[210];
  v167 = v232;
LABEL_117:

  sub_21A42FCBC(v166);
LABEL_22:
  v232 = 0;
LABEL_34:
  __swift_destroy_boxed_opaque_existential_0(v0 + 72);
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 97), v0[100]);
  sub_21A451634();
  if (!v0[120])
  {
    v53 = 0;
    goto LABEL_40;
  }

  v0[202] = v232;
  v49 = v0[197];
  v50 = v0[196];
  v51 = v0[186];
  sub_21A3C50DC((v0 + 117), (v0 + 72));
  v52 = *(v51 + v49);
  if (*(v51 + v50) >= v52 && (v52 & 0x8000000000000000) == 0)
  {
    v53 = 0;
LABEL_38:
    __swift_destroy_boxed_opaque_existential_0(v0 + 72);
LABEL_40:
    __swift_destroy_boxed_opaque_existential_0(v0 + 97);
    __swift_destroy_boxed_opaque_existential_0(v0 + 67);
    v54 = v0[1];

    return v54(v53);
  }

  v56 = v0[199];
  v57 = v0[186];
  v58 = &v57[v0[201]];
  v0[203] = *(v57 + 2);
  v0[204] = *(v57 + 3);
  v59 = v0[75];
  v60 = v0[76];
  __swift_project_boxed_opaque_existential_1(v0 + 72, v59);
  v0[205] = (*(v60 + 48))(v59, v60);
  v0[206] = v61;
  v0[207] = *(v57 + 4);
  v0[208] = *(v57 + 5);
  v62 = *(v58 + 3);
  v63 = *(v58 + 4);
  __swift_project_boxed_opaque_existential_1(v58, v62);
  v234 = (*(v63 + 8) + **(v63 + 8));
  v64 = swift_task_alloc();
  v0[209] = v64;
  *v64 = v0;
  v64[1] = sub_21A4293BC;

  return v234(v0 + 183, v0 + 72, &v57[v56], v62, v63);
}