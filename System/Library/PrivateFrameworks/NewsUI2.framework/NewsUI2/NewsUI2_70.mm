void sub_218E97024(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a1;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_88:
    v9 = v10;
    v10 = *v7;
    if (!*v7)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_218C81048(v9);
    }

    v97 = *(v9 + 16);
    if (v97 >= 2)
    {
      do
      {
        v98 = *v6;
        if (!*v6)
        {
          goto LABEL_124;
        }

        v6 = (v97 - 1);
        v99 = *(v9 + 16 * v97);
        v100 = *(v9 + 16 * (v97 - 1) + 40);
        sub_218E977CC((v98 + 8 * v99), (v98 + 8 * *(v9 + 16 * (v97 - 1) + 32)), (v98 + 8 * v100), v10);
        if (v5)
        {
          break;
        }

        if (v100 < v99)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_218C81048(v9);
        }

        if (v97 - 2 >= *(v9 + 16))
        {
          goto LABEL_114;
        }

        v101 = (v9 + 16 * v97);
        *v101 = v99;
        *(v101 + 1) = v100;
        sub_218C80FBC(v97 - 1);
        v97 = *(v9 + 16);
        v6 = a3;
      }

      while (v97 > 1);
    }

LABEL_98:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v104 = v10;
      v106 = v5;
      v12 = *v6;
      v13 = *(*v6 + 8 * v11);
      v14 = 8 * v9;
      v15 = (v12 + 8 * v9);
      v17 = *v15;
      v16 = v15 + 2;

      v18 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v13, v17);

      v19 = v9;
      v20 = (v9 + 2);
      while (v8 != v20)
      {
        v22 = *(v16 - 1);
        v21 = *v16;

        v9 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v21, v22);

        ++v20;
        ++v16;
        if (v18 != v9)
        {
          v8 = (v20 - 1);
          break;
        }
      }

      v10 = v104;
      v5 = v106;
      v6 = a3;
      if (v18)
      {
        v7 = a1;
        if (v8 < v19)
        {
          goto LABEL_117;
        }

        v9 = v19;
        if (v19 < v8)
        {
          v23 = 8 * v8 - 8;
          v24 = v8;
          v25 = v19;
          do
          {
            if (v25 != --v24)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v26 = *(v27 + v14);
              *(v27 + v14) = *(v27 + v23);
              *(v27 + v23) = v26;
            }

            ++v25;
            v23 -= 8;
            v14 += 8;
          }

          while (v25 < v24);
        }

        v11 = v8;
      }

      else
      {
        v11 = v8;
        v7 = a1;
        v9 = v19;
      }
    }

    v28 = v6[1];
    if (v11 < v28)
    {
      if (__OFSUB__(v11, v9))
      {
        goto LABEL_116;
      }

      if (v11 - v9 < a4)
      {
        v29 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v29 >= v28)
        {
          v29 = v6[1];
        }

        if (v29 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v11 != v29)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v11 < v9)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_2191F6B60(0, *(v10 + 2) + 1, 1, v10);
    }

    v51 = *(v10 + 2);
    v50 = *(v10 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      v10 = sub_2191F6B60((v50 > 1), v51 + 1, 1, v10);
    }

    *(v10 + 2) = v52;
    v53 = &v10[16 * v51];
    *(v53 + 4) = v9;
    *(v53 + 5) = v11;
    v54 = *v7;
    if (!v54)
    {
      goto LABEL_125;
    }

    v9 = v11;
    if (v51)
    {
      while (1)
      {
        v55 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v56 = *(v10 + 4);
          v57 = *(v10 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_57:
          if (v59)
          {
            goto LABEL_104;
          }

          v72 = &v10[16 * v52];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_107;
          }

          v78 = &v10[16 * v55 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_111;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v55 = v52 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v82 = &v10[16 * v52];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_71:
        if (v77)
        {
          goto LABEL_106;
        }

        v85 = &v10[16 * v55];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_109;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_78:
        v93 = v55 - 1;
        if (v55 - 1 >= v52)
        {
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
          goto LABEL_119;
        }

        if (!*v6)
        {
          goto LABEL_122;
        }

        v94 = *&v10[16 * v93 + 32];
        v95 = *&v10[16 * v55 + 40];
        sub_218E977CC((*v6 + 8 * v94), (*v6 + 8 * *&v10[16 * v55 + 32]), (*v6 + 8 * v95), v54);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v95 < v94)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_218C81048(v10);
        }

        if (v93 >= *(v10 + 2))
        {
          goto LABEL_101;
        }

        v96 = &v10[16 * v93];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        sub_218C80FBC(v55);
        v52 = *(v10 + 2);
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v10[16 * v52 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_102;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_103;
      }

      v67 = &v10[16 * v52];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_105;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_108;
      }

      if (v71 >= v63)
      {
        v89 = &v10[16 * v55 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_112;
        }

        if (v58 < v92)
        {
          v55 = v52 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v8 = v6[1];
    v7 = a1;
    if (v9 >= v8)
    {
      goto LABEL_88;
    }
  }

  v105 = v10;
  v107 = v5;
  v114 = *v6;
  v30 = *v6 + 8 * v11 - 8;
  v102 = v9;
  v31 = (v9 - v11);
  v110 = v29;
LABEL_30:
  v112 = v30;
  v113 = v11;
  v32 = *(v114 + 8 * v11);
  v111 = v31;
  v33 = v30;
  while (1)
  {
    v34 = *v33;
    v35 = *(v32 + 16);

    v36 = [v35 name];
    sub_219BF5414();

    sub_219BF54D4();

    v37 = [v35 identifier];
    v38 = sub_219BF5414();
    v40 = v39;

    MEMORY[0x21CECC330](v38, v40);

    v41 = *(v34 + 16);
    v42 = [v41 name];
    sub_219BF5414();

    sub_219BF54D4();

    v43 = [v41 identifier];
    v44 = sub_219BF5414();
    v46 = v45;

    MEMORY[0x21CECC330](v44, v46);

    sub_2187F3BD4();
    v47 = sub_219BF7054();

    if (v47 != -1)
    {
LABEL_29:
      v11 = v113 + 1;
      v30 = v112 + 8;
      v31 = v111 - 1;
      if ((v113 + 1) != v110)
      {
        goto LABEL_30;
      }

      v11 = v110;
      v10 = v105;
      v5 = v107;
      v7 = a1;
      v6 = a3;
      v9 = v102;
      goto LABEL_37;
    }

    if (!v114)
    {
      break;
    }

    v48 = *v33;
    v32 = v33[1];
    *v33 = v32;
    v33[1] = v48;
    --v33;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_218E977CC(char *__src, char *a2, char *a3, char *a4)
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

    v14 = &v4[v9];
    if (v7 < 8)
    {
LABEL_10:
      v15 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v13;
      v19 = *v4;

      v20 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v18, v19);

      if (v20)
      {
        break;
      }

      v16 = v4;
      v17 = v6 == v4++;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v13;
    v17 = v6 == v13++;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v16;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[8 * v12] <= a4)
  {
    v21 = a2;
    memmove(a4, a2, 8 * v12);
    a2 = v21;
  }

  v15 = a2;
  v14 = &v4[v12];
  if (v10 >= 8 && a2 > v6)
  {
    v32 = v4;
LABEL_25:
    v31 = v15;
    v22 = (v15 - 8);
    v5 -= 8;
    v23 = v14;
    do
    {
      v24 = v5 + 8;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;

      v28 = _s7NewsUI28TagModelC1loiySbAC_ACtFZ_0(v25, v27);

      if (v28)
      {
        v29 = v26;
        if (v24 != v31)
        {
          *v5 = *v26;
        }

        v4 = v32;
        if (v14 <= v32 || (v15 = v29, v29 <= v6))
        {
          v15 = v29;
          goto LABEL_36;
        }

        goto LABEL_25;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      v5 -= 8;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v32);
    v14 = v23;
    v15 = v31;
    v4 = v32;
  }

LABEL_36:
  if (v15 != v4 || v15 >= v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8))
  {
    memmove(v15, v4, 8 * (v14 - v4));
  }

  return 1;
}

id sub_218E97A74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [*(a3 + 40) allPurchasedTagIDs];
  if (result)
  {
    v9 = result;
    v10 = sub_219BF5D44();

    v11 = [*(a3 + 32) mutedTagIDs];
    if (v11)
    {
      v12 = v11;
      v13 = sub_219BF5924();
    }

    else
    {
      v13 = MEMORY[0x277D84F90];
    }

    v14 = sub_218845F78(v13);

    v15 = sub_218E97B80(a1, v10, v14, a2, a3, a4);

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218E97B80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_unknownObjectRetain();
  v12 = sub_218E97C68(v11, a5);
  v13 = sub_218E97D20(a1, a5);
  v14 = sub_218E97DE4(a1, a5);
  v15 = sub_218E97E6C(a1, a2, a3, a5);
  type metadata accessor for TagModel();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v12;
  *(v16 + 25) = v13;
  *(v16 + 26) = v14;
  *(v16 + 27) = v15;
  *(v16 + 32) = a4;

  return v16;
}

uint64_t sub_218E97C68(void *a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v3 = [a1 identifier];
  if (!v3)
  {
    sub_219BF5414();
    v3 = sub_219BF53D4();
  }

  v4 = [v2 subscriptionForTagID_];

  if (v4 && (v5 = [v4 subscriptionOrigin], v4, v5 <= 0xA))
  {
    return byte_219C41D6A[v5];
  }

  else
  {
    return 7;
  }
}

uint64_t sub_218E97D20(void *a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  v5 = *(a2 + 80);
  __swift_project_boxed_opaque_existential_1((a2 + 48), v4);
  if (((*(v5 + 24))(v4, v5) & 1) == 0)
  {
    return 0;
  }

  v6 = [*(a2 + 32) hasNotificationsEnabledForTag_];
  if ([a1 isNotificationEnabled] && (v6 & 1) != 0)
  {
    return 1;
  }

  if (v6 & 1 | (([a1 isNotificationEnabled] & 1) == 0))
  {
    return 0;
  }

  return 2;
}

uint64_t sub_218E97DE4(void *a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  if (!v2)
  {
    return 2;
  }

  v3 = [a1 identifier];
  if (!v3)
  {
    sub_219BF5414();
    v3 = sub_219BF53D4();
  }

  v4 = [v2 containsShortcut_];

  return v4;
}

uint64_t sub_218E97E6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a4 + 32) hasSubscriptionToTag_];
  v8 = [a1 identifier];
  v9 = sub_219BF5414();
  v11 = v10;

  if (v7)
  {
    v12 = sub_2188537B8(v9, v11, a2);

    return v12 & 1;
  }

  else
  {
    v14 = sub_2188537B8(v9, v11, a3);

    return v14 & 1 | 0xFFFFFF80;
  }
}

void sub_218E97F2C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a7;
  v14 = *(a1 + 16);
  if (v14)
  {
    v45 = v13;

    v15 = 0;
    v16 = a1 + 40;
    v17 = MEMORY[0x277D84F90];
    do
    {
      v47 = v17;
      v18 = (v16 + 16 * v15);
      v19 = v15;
      while (1)
      {
        if (v19 >= v14)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v15 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_31;
        }

        v21 = *(v18 - 1);
        v20 = *v18;
        v22 = objc_opt_self();

        v23 = sub_219BF53D4();
        LOBYTE(v22) = [v22 isPuzzleTypeIdentifier_];

        if (v22)
        {
          break;
        }

        ++v19;
        v18 += 2;
        if (v15 == v14)
        {
          goto LABEL_14;
        }
      }

      v17 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v47 + 16) + 1, 1);
        v17 = v47;
      }

      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21870B65C((v24 > 1), v25 + 1, 1);
        v17 = v47;
      }

      *(v17 + 16) = v25 + 1;
      v26 = v17 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v20;
      v16 = a1 + 40;
    }

    while (v15 != v14);
LABEL_14:
    v27 = 0;
    v28 = a1 + 40;
    v46 = MEMORY[0x277D84F90];
LABEL_15:
    v29 = (v28 + 16 * v27);
    v30 = v27;
    while (v30 < v14)
    {
      v27 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_33;
      }

      v32 = *(v29 - 1);
      v31 = *v29;
      v33 = objc_opt_self();

      v34 = sub_219BF53D4();
      LODWORD(v33) = [v33 isPuzzleTypeIdentifier_];

      if (!v33)
      {
        v35 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v46 + 16) + 1, 1);
          v35 = v46;
        }

        v37 = *(v35 + 16);
        v36 = *(v35 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_21870B65C((v36 > 1), v37 + 1, 1);
          v35 = v46;
        }

        *(v35 + 16) = v37 + 1;
        v46 = v35;
        v38 = v35 + 16 * v37;
        *(v38 + 32) = v32;
        *(v38 + 40) = v31;
        v28 = a1 + 40;
        if (v27 == v14)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v39 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v39);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v40);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v41 = swift_allocObject();
          v41[2] = a1;
          v41[3] = sub_218E9A2A8;
          v41[4] = v45;

          v42 = sub_219BE2E54();
          type metadata accessor for TagService();
          sub_219BE2F94();

          v43 = swift_allocObject();
          *(v43 + 16) = sub_218E9A2A8;
          *(v43 + 24) = v45;

          v44 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v30;
      v29 += 2;
      if (v27 == v14)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    sub_218A15904(MEMORY[0x277D84F90], 0, a3, a4, a5, a6, a7);
  }
}

uint64_t sub_218E984F4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v41 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_37:
    v31 = a1;
    v32 = a4;
    v33 = a3;
    v34 = sub_219BF7214();
    a3 = v33;
    a4 = v32;
    v6 = v34;
    a1 = v31;
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = a3;
  v37 = a4;
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = 0;
    v38 = a1 & 0xFFFFFFFFFFFFFF8;
    v39 = a1 & 0xC000000000000001;
    v35 = a1;
    v9 = a1 + 32;
    v10 = a5 + 56;
    while (1)
    {
      if (v39)
      {
        v11 = MEMORY[0x21CECE0F0](v8, v35);
        v12 = __OFADD__(v8++, 1);
        if (v12)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v8 >= *(v38 + 16))
        {
          __break(1u);
          goto LABEL_37;
        }

        v11 = *(v9 + 8 * v8);
        swift_unknownObjectRetain();
        v12 = __OFADD__(v8++, 1);
        if (v12)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v23 = v41;
          v7 = MEMORY[0x277D84F90];
          if ((v41 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_38;
        }
      }

      v13 = [v11 identifier];
      v14 = sub_219BF5414();
      v16 = v15;

      if (*(a5 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v17 = sub_219BF7AE4(), v18 = -1 << *(a5 + 32), v19 = v17 & ~v18, ((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(a5 + 48) + 16 * v19);
          v22 = *v21 == v14 && v21[1] == v16;
          if (v22 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v10 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        a1 = sub_219BF73E4();
      }

      else
      {
LABEL_5:
        swift_unknownObjectRelease();
      }

      if (v8 == v6)
      {
        goto LABEL_24;
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

LABEL_27:
  if ((v23 & 0x4000000000000000) == 0)
  {
    v24 = *(v23 + 16);
    v26 = v36;
    v25 = v37;
    if (v24)
    {
      goto LABEL_29;
    }

LABEL_39:

    return MEMORY[0x277D84F90];
  }

LABEL_38:
  v24 = sub_219BF7214();
  v26 = v36;
  v25 = v37;
  if (!v24)
  {
    goto LABEL_39;
  }

LABEL_29:
  result = sub_219BF73F4();
  if (v24 < 0)
  {
    __break(1u);
  }

  else
  {
    v28 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x21CECE0F0](v28, v23);
      }

      else
      {
        v29 = *(v23 + 8 * v28 + 32);
        swift_unknownObjectRetain();
      }

      ++v28;
      ObjectType = swift_getObjectType();
      sub_218E97B80(v29, a2, v26, 0, v25, ObjectType);
      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v24 != v28);

    return v7;
  }

  return result;
}

uint64_t sub_218E9883C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v25 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_28:
    v21 = a4;
    v22 = sub_219BF7214();
    a4 = v21;
    v8 = v22;
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = a4;
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](v10, a1);
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v10 >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v12 = *(a1 + 8 * v10 + 32);
        swift_unknownObjectRetain();
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v14 = v25;
          v9 = MEMORY[0x277D84F90];
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_29;
        }
      }

      if (sub_218E94530(v12, a5))
      {
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        v11 = a1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v10;
      if (v13 == v8)
      {
        goto LABEL_15;
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_29;
  }

LABEL_18:
  if ((v14 & 0x4000000000000000) == 0)
  {
    v15 = *(v14 + 16);
    v16 = v23;
    if (v15)
    {
      goto LABEL_20;
    }

LABEL_30:

    return MEMORY[0x277D84F90];
  }

LABEL_29:
  v15 = sub_219BF7214();
  v16 = v23;
  if (!v15)
  {
    goto LABEL_30;
  }

LABEL_20:
  result = sub_219BF73F4();
  if (v15 < 0)
  {
    __break(1u);
  }

  else
  {
    v18 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x21CECE0F0](v18, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v18 + 32);
        swift_unknownObjectRetain();
      }

      ++v18;
      ObjectType = swift_getObjectType();
      sub_218E97B80(v19, a2, a3, 0, v16, ObjectType);
      swift_unknownObjectRelease();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v15 != v18);

    return v9;
  }

  return result;
}

void sub_218E98AD4(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = *(a1 + 16);
  if (v8)
  {
    v39 = v7;

    v9 = 0;
    v10 = a1 + 40;
    v11 = MEMORY[0x277D84F90];
    do
    {
      v41 = v11;
      v12 = (v10 + 16 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= v8)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_31;
        }

        v15 = *(v12 - 1);
        v14 = *v12;
        v16 = objc_opt_self();

        v17 = sub_219BF53D4();
        LOBYTE(v16) = [v16 isPuzzleTypeIdentifier_];

        if (v16)
        {
          break;
        }

        ++v13;
        v12 += 2;
        if (v9 == v8)
        {
          goto LABEL_14;
        }
      }

      v11 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v41 + 16) + 1, 1);
        v11 = v41;
      }

      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_21870B65C((v18 > 1), v19 + 1, 1);
        v11 = v41;
      }

      *(v11 + 16) = v19 + 1;
      v20 = v11 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v14;
      v10 = a1 + 40;
    }

    while (v9 != v8);
LABEL_14:
    v21 = 0;
    v22 = a1 + 40;
    v40 = MEMORY[0x277D84F90];
LABEL_15:
    v23 = (v22 + 16 * v21);
    v24 = v21;
    while (v24 < v8)
    {
      v21 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_33;
      }

      v26 = *(v23 - 1);
      v25 = *v23;
      v27 = objc_opt_self();

      v28 = sub_219BF53D4();
      LODWORD(v27) = [v27 isPuzzleTypeIdentifier_];

      if (!v27)
      {
        v29 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v40 + 16) + 1, 1);
          v29 = v40;
        }

        v31 = *(v29 + 16);
        v30 = *(v29 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_21870B65C((v30 > 1), v31 + 1, 1);
          v29 = v40;
        }

        *(v29 + 16) = v31 + 1;
        v40 = v29;
        v32 = v29 + 16 * v31;
        *(v32 + 32) = v26;
        *(v32 + 40) = v25;
        v22 = a1 + 40;
        if (v21 == v8)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v33 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v33);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v34);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v35 = swift_allocObject();
          v35[2] = a1;
          v35[3] = sub_218E9B5B0;
          v35[4] = v39;

          v36 = sub_219BE2E54();
          type metadata accessor for TagService();
          sub_219BE2F94();

          v37 = swift_allocObject();
          *(v37 + 16) = sub_218E9B5B0;
          *(v37 + 24) = v39;

          v38 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v24;
      v23 += 2;
      if (v21 == v8)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    sub_218A23BE8(MEMORY[0x277D84F90], 0, a3, a4);
  }
}

void sub_218E9905C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  v8 = *(a1 + 16);
  if (v8)
  {
    v39 = v7;

    v9 = 0;
    v10 = a1 + 40;
    v11 = MEMORY[0x277D84F90];
    do
    {
      v41 = v11;
      v12 = (v10 + 16 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= v8)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_31;
        }

        v15 = *(v12 - 1);
        v14 = *v12;
        v16 = objc_opt_self();

        v17 = sub_219BF53D4();
        LOBYTE(v16) = [v16 isPuzzleTypeIdentifier_];

        if (v16)
        {
          break;
        }

        ++v13;
        v12 += 2;
        if (v9 == v8)
        {
          goto LABEL_14;
        }
      }

      v11 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v41 + 16) + 1, 1);
        v11 = v41;
      }

      v19 = *(v11 + 16);
      v18 = *(v11 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_21870B65C((v18 > 1), v19 + 1, 1);
        v11 = v41;
      }

      *(v11 + 16) = v19 + 1;
      v20 = v11 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v14;
      v10 = a1 + 40;
    }

    while (v9 != v8);
LABEL_14:
    v21 = 0;
    v22 = a1 + 40;
    v40 = MEMORY[0x277D84F90];
LABEL_15:
    v23 = (v22 + 16 * v21);
    v24 = v21;
    while (v24 < v8)
    {
      v21 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_33;
      }

      v26 = *(v23 - 1);
      v25 = *v23;
      v27 = objc_opt_self();

      v28 = sub_219BF53D4();
      LODWORD(v27) = [v27 isPuzzleTypeIdentifier_];

      if (!v27)
      {
        v29 = v40;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v40 + 16) + 1, 1);
          v29 = v40;
        }

        v31 = *(v29 + 16);
        v30 = *(v29 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_21870B65C((v30 > 1), v31 + 1, 1);
          v29 = v40;
        }

        *(v29 + 16) = v31 + 1;
        v40 = v29;
        v32 = v29 + 16 * v31;
        *(v32 + 32) = v26;
        *(v32 + 40) = v25;
        v22 = a1 + 40;
        if (v21 == v8)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v33 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v33);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v34);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v35 = swift_allocObject();
          v35[2] = a1;
          v35[3] = sub_218E9B5BC;
          v35[4] = v39;

          v36 = sub_219BE2E54();
          type metadata accessor for TagService();
          sub_219BE2F94();

          v37 = swift_allocObject();
          *(v37 + 16) = sub_218E9B5BC;
          *(v37 + 24) = v39;

          v38 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v24;
      v23 += 2;
      if (v21 == v8)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    sub_218A24298(MEMORY[0x277D84F90], 0, a3, a4);
  }
}

void sub_218E995E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {

    v6 = 0;
    v39 = a1;
    v7 = a1 + 40;
    v40 = a1 + 40;
    v42 = MEMORY[0x277D84F90];
    do
    {
      v8 = (v7 + 16 * v6);
      v9 = v6;
      while (1)
      {
        if (v9 >= v4)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v6 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_31;
        }

        v11 = *(v8 - 1);
        v10 = *v8;
        v12 = objc_opt_self();

        v13 = sub_219BF53D4();
        LOBYTE(v12) = [v12 isPuzzleTypeIdentifier_];

        if (v12)
        {
          break;
        }

        ++v9;
        v8 += 2;
        if (v6 == v4)
        {
          goto LABEL_14;
        }
      }

      v14 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v42 + 16) + 1, 1);
        v14 = v42;
      }

      v7 = v40;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21870B65C((v15 > 1), v16 + 1, 1);
        v14 = v42;
      }

      *(v14 + 16) = v16 + 1;
      v42 = v14;
      v17 = v14 + 16 * v16;
      *(v17 + 32) = v11;
      *(v17 + 40) = v10;
    }

    while (v6 != v4);
LABEL_14:
    v18 = 0;
    v19 = v39 + 40;
    v20 = MEMORY[0x277D84F90];
LABEL_15:
    v41 = v20;
    v21 = (v19 + 16 * v18);
    v22 = v18;
    while (v22 < v4)
    {
      v18 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_33;
      }

      v24 = *(v21 - 1);
      v23 = *v21;
      v25 = objc_opt_self();

      v26 = sub_219BF53D4();
      LODWORD(v25) = [v25 isPuzzleTypeIdentifier_];

      if (!v25)
      {
        v20 = v41;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v41 + 16) + 1, 1);
          v20 = v41;
        }

        v28 = *(v20 + 16);
        v27 = *(v20 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_21870B65C((v27 > 1), v28 + 1, 1);
          v20 = v41;
        }

        *(v20 + 16) = v28 + 1;
        v29 = v20 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v23;
        v19 = v39 + 40;
        if (v18 == v4)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v30 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v30);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v31);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v32 = swift_allocObject();
          v32[2] = v39;
          v32[3] = sub_218E99B70;
          v32[4] = a3;

          v33 = sub_219BE2E54();
          type metadata accessor for TagService();
          sub_219BE2F94();

          v34 = swift_allocObject();
          *(v34 + 16) = sub_218E99B70;
          *(v34 + 24) = a3;

          v35 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v22;
      v21 += 2;
      if (v18 == v4)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v36 = swift_allocObject();
    v37 = MEMORY[0x277D84F90];
    *(v36 + 16) = a3;
    *(v36 + 24) = v37;
    swift_retain_n();
    sub_219BE3494();
  }
}

void sub_218E99B88(uint64_t a1)
{
  if (!qword_280E8FA78)
  {
    sub_218E99C60(255, &unk_280E8FA80, MEMORY[0x277D834F8]);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8FA78);
    }
  }
}

void sub_218E99C60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = sub_2186D6710(255, &qword_280E8E680, &protocolRef_FCTagProviding);
    v7 = a3(a1, MEMORY[0x277D837D0], v6, MEMORY[0x277D837E0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_218E99CEC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128), uint64_t a4, void (*a5)(unint64_t, __n128), uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v12 = *(a1 + 16);
  if (v12)
  {
    v43 = v11;

    v13 = 0;
    v14 = a1 + 40;
    v15 = MEMORY[0x277D84F90];
    do
    {
      v45 = v15;
      v16 = (v14 + 16 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= v12)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v13 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_31;
        }

        v19 = *(v16 - 1);
        v18 = *v16;
        v20 = objc_opt_self();

        v21 = sub_219BF53D4();
        LOBYTE(v20) = [v20 isPuzzleTypeIdentifier_];

        if (v20)
        {
          break;
        }

        ++v17;
        v16 += 2;
        if (v13 == v12)
        {
          goto LABEL_14;
        }
      }

      v15 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v45 + 16) + 1, 1);
        v15 = v45;
      }

      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_21870B65C((v22 > 1), v23 + 1, 1);
        v15 = v45;
      }

      *(v15 + 16) = v23 + 1;
      v24 = v15 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v18;
      v14 = a1 + 40;
    }

    while (v13 != v12);
LABEL_14:
    v25 = 0;
    v26 = a1 + 40;
    v44 = MEMORY[0x277D84F90];
LABEL_15:
    v27 = (v26 + 16 * v25);
    v28 = v25;
    while (v28 < v12)
    {
      v25 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_33;
      }

      v30 = *(v27 - 1);
      v29 = *v27;
      v31 = objc_opt_self();

      v32 = sub_219BF53D4();
      LODWORD(v31) = [v31 isPuzzleTypeIdentifier_];

      if (!v31)
      {
        v33 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v44 + 16) + 1, 1);
          v33 = v44;
        }

        v35 = *(v33 + 16);
        v34 = *(v33 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_21870B65C((v34 > 1), v35 + 1, 1);
          v33 = v44;
        }

        *(v33 + 16) = v35 + 1;
        v44 = v33;
        v36 = v33 + 16 * v35;
        *(v36 + 32) = v30;
        *(v36 + 40) = v29;
        v26 = a1 + 40;
        if (v25 == v12)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v37 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v37);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v38);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v39 = swift_allocObject();
          v39[2] = a1;
          v39[3] = sub_218E9A298;
          v39[4] = v43;

          v40 = sub_219BE2E54();
          type metadata accessor for TagService();
          sub_219BE2F94();

          v41 = swift_allocObject();
          *(v41 + 16) = sub_218E9A298;
          *(v41 + 24) = v43;

          v42 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v28;
      v27 += 2;
      if (v25 == v12)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    sub_218B64F00(MEMORY[0x277D84F90], 0, a3, a4, a5);
  }
}

unint64_t sub_218E9A2C0()
{
  result = qword_27CC12D40;
  if (!qword_27CC12D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12D40);
  }

  return result;
}

void sub_218E9A31C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v15[7] = a8;
  v16 = *(a1 + 16);
  if (v16)
  {
    v47 = v15;

    v17 = 0;
    v18 = a1 + 40;
    v19 = MEMORY[0x277D84F90];
    do
    {
      v49 = v19;
      v20 = (v18 + 16 * v17);
      v21 = v17;
      while (1)
      {
        if (v21 >= v16)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v17 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_31;
        }

        v23 = *(v20 - 1);
        v22 = *v20;
        v24 = objc_opt_self();

        v25 = sub_219BF53D4();
        LOBYTE(v24) = [v24 isPuzzleTypeIdentifier_];

        if (v24)
        {
          break;
        }

        ++v21;
        v20 += 2;
        if (v17 == v16)
        {
          goto LABEL_14;
        }
      }

      v19 = v49;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v49 + 16) + 1, 1);
        v19 = v49;
      }

      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_21870B65C((v26 > 1), v27 + 1, 1);
        v19 = v49;
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v22;
      v18 = a1 + 40;
    }

    while (v17 != v16);
LABEL_14:
    v29 = 0;
    v30 = a1 + 40;
    v48 = MEMORY[0x277D84F90];
LABEL_15:
    v31 = (v30 + 16 * v29);
    v32 = v29;
    while (v32 < v16)
    {
      v29 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        goto LABEL_33;
      }

      v34 = *(v31 - 1);
      v33 = *v31;
      v35 = objc_opt_self();

      v36 = sub_219BF53D4();
      LODWORD(v35) = [v35 isPuzzleTypeIdentifier_];

      if (!v35)
      {
        v37 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v48 + 16) + 1, 1);
          v37 = v48;
        }

        v39 = *(v37 + 16);
        v38 = *(v37 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_21870B65C((v38 > 1), v39 + 1, 1);
          v37 = v48;
        }

        *(v37 + 16) = v39 + 1;
        v48 = v37;
        v40 = v37 + 16 * v39;
        *(v40 + 32) = v34;
        *(v40 + 40) = v33;
        v30 = a1 + 40;
        if (v29 == v16)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v41 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v41);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v42);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v43 = swift_allocObject();
          v43[2] = a1;
          v43[3] = sub_218E9AF3C;
          v43[4] = v47;

          v44 = sub_219BE2E54();
          type metadata accessor for TagService();
          sub_219BE2F94();

          v45 = swift_allocObject();
          *(v45 + 16) = sub_218E9AF3C;
          *(v45 + 24) = v47;

          v46 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v32;
      v31 += 2;
      if (v29 == v16)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    sub_218E96530(MEMORY[0x277D84F90], 0, a3, a4, a5, a6, a7);
  }
}

void sub_218E9A8EC(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v12 = *(a1 + 16);
  if (v12)
  {
    v43 = v11;

    v13 = 0;
    v14 = a1 + 40;
    v15 = MEMORY[0x277D84F90];
    do
    {
      v45 = v15;
      v16 = (v14 + 16 * v13);
      v17 = v13;
      while (1)
      {
        if (v17 >= v12)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v13 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_31;
        }

        v19 = *(v16 - 1);
        v18 = *v16;
        v20 = objc_opt_self();

        v21 = sub_219BF53D4();
        LOBYTE(v20) = [v20 isPuzzleTypeIdentifier_];

        if (v20)
        {
          break;
        }

        ++v17;
        v16 += 2;
        if (v13 == v12)
        {
          goto LABEL_14;
        }
      }

      v15 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v45 + 16) + 1, 1);
        v15 = v45;
      }

      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_21870B65C((v22 > 1), v23 + 1, 1);
        v15 = v45;
      }

      *(v15 + 16) = v23 + 1;
      v24 = v15 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v18;
      v14 = a1 + 40;
    }

    while (v13 != v12);
LABEL_14:
    v25 = 0;
    v26 = a1 + 40;
    v44 = MEMORY[0x277D84F90];
LABEL_15:
    v27 = (v26 + 16 * v25);
    v28 = v25;
    while (v28 < v12)
    {
      v25 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_33;
      }

      v30 = *(v27 - 1);
      v29 = *v27;
      v31 = objc_opt_self();

      v32 = sub_219BF53D4();
      LODWORD(v31) = [v31 isPuzzleTypeIdentifier_];

      if (!v31)
      {
        v33 = v44;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v44 + 16) + 1, 1);
          v33 = v44;
        }

        v35 = *(v33 + 16);
        v34 = *(v33 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_21870B65C((v34 > 1), v35 + 1, 1);
          v33 = v44;
        }

        *(v33 + 16) = v35 + 1;
        v44 = v33;
        v36 = v33 + 16 * v35;
        *(v36 + 32) = v30;
        *(v36 + 40) = v29;
        v26 = a1 + 40;
        if (v25 == v12)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v37 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v37);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v38);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v39 = swift_allocObject();
          v39[2] = a1;
          v39[3] = sub_218E9AE88;
          v39[4] = v43;

          v40 = sub_219BE2E54();
          type metadata accessor for TagService();
          sub_219BE2F94();

          v41 = swift_allocObject();
          *(v41 + 16) = sub_218E9AE88;
          *(v41 + 24) = v43;

          v42 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v28;
      v27 += 2;
      if (v25 == v12)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    a3(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_218E9AE88(uint64_t a1, char a2)
{
  if (a2)
  {
    return (*(v2 + 32))(a1);
  }

  else
  {
    return (*(v2 + 16))(a1);
  }
}

void sub_218E9AED8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218E9AF50(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, void (*a6)(char *), uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a7;
  v14 = *(a1 + 16);
  if (v14)
  {
    v45 = v13;

    v15 = 0;
    v16 = a1 + 40;
    v17 = MEMORY[0x277D84F90];
    do
    {
      v47 = v17;
      v18 = (v16 + 16 * v15);
      v19 = v15;
      while (1)
      {
        if (v19 >= v14)
        {
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v15 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_31;
        }

        v21 = *(v18 - 1);
        v20 = *v18;
        v22 = objc_opt_self();

        v23 = sub_219BF53D4();
        LOBYTE(v22) = [v22 isPuzzleTypeIdentifier_];

        if (v22)
        {
          break;
        }

        ++v19;
        v18 += 2;
        if (v15 == v14)
        {
          goto LABEL_14;
        }
      }

      v17 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v47 + 16) + 1, 1);
        v17 = v47;
      }

      v25 = *(v17 + 16);
      v24 = *(v17 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_21870B65C((v24 > 1), v25 + 1, 1);
        v17 = v47;
      }

      *(v17 + 16) = v25 + 1;
      v26 = v17 + 16 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v20;
      v16 = a1 + 40;
    }

    while (v15 != v14);
LABEL_14:
    v27 = 0;
    v28 = a1 + 40;
    v46 = MEMORY[0x277D84F90];
LABEL_15:
    v29 = (v28 + 16 * v27);
    v30 = v27;
    while (v30 < v14)
    {
      v27 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        goto LABEL_33;
      }

      v32 = *(v29 - 1);
      v31 = *v29;
      v33 = objc_opt_self();

      v34 = sub_219BF53D4();
      LODWORD(v33) = [v33 isPuzzleTypeIdentifier_];

      if (!v33)
      {
        v35 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v46 + 16) + 1, 1);
          v35 = v46;
        }

        v37 = *(v35 + 16);
        v36 = *(v35 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_21870B65C((v36 > 1), v37 + 1, 1);
          v35 = v46;
        }

        *(v35 + 16) = v37 + 1;
        v46 = v35;
        v38 = v35 + 16 * v37;
        *(v38 + 32) = v32;
        *(v38 + 40) = v31;
        v28 = a1 + 40;
        if (v27 == v14)
        {
LABEL_26:
          FCCurrentQoSOrUtilityIfMain();
          v39 = FCDispatchQueueForQualityOfService();
          MEMORY[0x28223BE20](v39);
          sub_218E9AED8(0, &qword_280EE6B90, sub_218E99B88, MEMORY[0x277D6CF30]);
          swift_allocObject();
          sub_219BE30B4();

          MEMORY[0x28223BE20](v40);
          swift_allocObject();
          sub_219BE30B4();

          sub_219BE31C4();
          v41 = swift_allocObject();
          v41[2] = a1;
          v41[3] = sub_218E9B560;
          v41[4] = v45;

          v42 = sub_219BE2E54();
          type metadata accessor for TagService();
          sub_219BE2F94();

          v43 = swift_allocObject();
          *(v43 + 16) = sub_218E9B560;
          *(v43 + 24) = v45;

          v44 = sub_219BE2E54();
          sub_219BE2FD4();

          return;
        }

        goto LABEL_15;
      }

      ++v30;
      v29 += 2;
      if (v27 == v14)
      {
        goto LABEL_26;
      }
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

    sub_219976F20(MEMORY[0x277D84F90], 0, a3, a4, a5, a6, a7);
  }
}

uint64_t objectdestroy_65Tm()
{

  return swift_deallocObject();
}

uint64_t sub_218E9B608(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a3;
  v18 = a5;
  sub_218E9BFAC(0, &qword_280E8C588, MEMORY[0x277D84538]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E9BF10();
  sub_219BF7B44();
  v20 = a2;
  v19 = 0;
  sub_218D554B0(0);
  sub_218E9BF64(&unk_280E916C0, sub_218D554B0, MEMORY[0x277D32508]);
  sub_219BF7834();
  if (!v5)
  {
    v14 = v18;
    v20 = v17;
    v19 = 1;
    sub_218D55534(0);
    sub_218E9BF64(&qword_280E916A8, sub_218D55534, MEMORY[0x277D32508]);
    sub_219BF7834();
    v20 = a4;
    v19 = 2;
    sub_218D556B4(0);
    sub_218E9BF64(&qword_280E914C8, sub_218D556B4, MEMORY[0x277D32610]);
    sub_219BF7834();
    v20 = v14;
    v19 = 3;
    sub_2186F95C4();
    sub_218E9BF64(&qword_280E91400, sub_2186F95C4, MEMORY[0x277D32610]);
    sub_219BF7834();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_218E9B910()
{
  v1 = 0x737265746C6966;
  v2 = 0x676E69726564726FLL;
  if (*v0 != 2)
  {
    v2 = 0x6C6C69666B636162;
  }

  if (*v0)
  {
    v1 = 0x6F697463656C6573;
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

uint64_t sub_218E9B990@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_218E9C128(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_218E9B9B8(uint64_t a1)
{
  v2 = sub_218E9BF10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E9B9F4(uint64_t a1)
{
  v2 = sub_218E9BF10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E9BA30@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_218E9BB40(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_218E9BA80(uint64_t *a1, uint64_t *a2)
{
  sub_218D554B0(0);
  if ((sub_219BEF254() & 1) == 0)
  {
    return 0;
  }

  sub_218D55534(0);
  if ((sub_219BEF254() & 1) == 0)
  {
    return 0;
  }

  sub_218D556B4(0);
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186F95C4();
  return sub_219BEF504() & 1;
}

uint64_t sub_218E9BB40(void *a1)
{
  sub_218E9BFAC(0, &qword_280E8CDD0, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_218E9BF10();
  sub_219BF7B34();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_218D554B0(0);
    LOBYTE(v11) = 0;
    sub_218E9BF64(&qword_280E916B8, sub_218D554B0, MEMORY[0x277D32518]);
    sub_219BF7674();
    v8 = v12;
    v10 = v5;
    if (!v12)
    {
      swift_allocObject();
      v8 = sub_219BEF274();
    }

    sub_218D55534(0);
    LOBYTE(v11) = 1;
    sub_218E9BF64(&qword_280E916A0, sub_218D55534, MEMORY[0x277D32518]);
    sub_219BF7674();
    if (!v12)
    {
      swift_allocObject();
      sub_219BEF274();
    }

    sub_218D556B4(0);
    LOBYTE(v11) = 2;
    sub_218E9BF64(&qword_280E914C0, sub_218D556B4, MEMORY[0x277D32620]);
    sub_219BF7674();
    if (!v12)
    {
      v11 = 0;
      swift_allocObject();
      sub_219BEF534();
    }

    sub_2186F95C4();
    LOBYTE(v11) = 3;
    sub_218E9BF64(&qword_280E913F8, sub_2186F95C4, MEMORY[0x277D32620]);
    sub_219BF7674();
    if (!v12)
    {
      LOBYTE(v11) = 1;
      swift_allocObject();
      sub_219BEF534();
    }

    (*(v10 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

unint64_t sub_218E9BF10()
{
  result = qword_280EC3210[0];
  if (!qword_280EC3210[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC3210);
  }

  return result;
}

uint64_t sub_218E9BF64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218E9BFAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E9BF10();
    v7 = a3(a1, &type metadata for SportsScoreSortingKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E9C024()
{
  result = qword_27CC12D58;
  if (!qword_27CC12D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12D58);
  }

  return result;
}

unint64_t sub_218E9C07C()
{
  result = qword_280EC3200;
  if (!qword_280EC3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC3200);
  }

  return result;
}

unint64_t sub_218E9C0D4()
{
  result = qword_280EC3208;
  if (!qword_280EC3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC3208);
  }

  return result;
}

uint64_t sub_218E9C128(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737265746C6966 && a2 == 0xE700000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F697463656C6573 && a2 == 0xEA0000000000736ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69726564726FLL && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6C69666B636162 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unsigned __int8 *sub_218E9C294(uint64_t a1)
{
  v78 = sub_219BDBD64();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v76 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE22B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v76 - v8;
  v10 = sub_219BE22F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v76 - v15;
  sub_218C4E41C(0);
  v18 = v17;
  v88 = a1;
  sub_219BE2594();
  sub_219BE22D4();
  v19 = *(v11 + 8);
  v83 = v16;
  v20 = v16;
  v21 = v19;
  v19(v20, v10);
  v85 = sub_219BE22C4();
  v86 = v9;
  v23 = v22;
  v24 = v9;
  v25 = *(v4 + 8);
  v87 = v3;
  v25(v24, v3);
  v84 = v23;
  v81 = v19;
  v82 = v18;
  v80 = v25;
  if (!v23)
  {
    v41 = v10;
    v32 = v87;
LABEL_24:
    v79 = 0;
    v42 = 0;
    v43 = 0;
LABEL_74:
    v63 = [objc_allocWithZone(type metadata accessor for AdContext()) init];
    v64 = v83;
    sub_219BE2594();
    v65 = v86;
    sub_219BE22D4();
    v81(v64, v41);
    v66 = sub_219BE22C4();
    v68 = v67;
    v80(v65, v32);
    v69 = &v63[OBJC_IVAR____TtC7NewsUI29AdContext_qToken];
    swift_beginAccess();
    *v69 = v66;
    v69[1] = v68;

    v70 = &v63[OBJC_IVAR____TtC7NewsUI29AdContext_previewID];
    swift_beginAccess();
    v71 = v84;
    *v70 = v85;
    v70[1] = v71;

    v72 = &v63[OBJC_IVAR____TtC7NewsUI29AdContext_previewSessionID];
    swift_beginAccess();
    *v72 = v42;
    v72[1] = v43;

    v73 = &v63[OBJC_IVAR____TtC7NewsUI29AdContext_maximumAdRequestsForCurrentAdPreviewID];
    swift_beginAccess();
    *v73 = v79;
    v73[8] = 0;
    return v63;
  }

  sub_219BE2594();
  sub_219BE22D4();
  v21(v13, v10);
  v26 = sub_219BE22C4();
  v28 = v27;
  v29 = v6;
  v30 = v87;
  result = (v25)(v29, v87);
  v32 = v30;
  if (!v28)
  {
    v41 = v10;
    goto LABEL_24;
  }

  v33 = HIBYTE(v28) & 0xF;
  v34 = v26 & 0xFFFFFFFFFFFFLL;
  if ((v28 & 0x2000000000000000) != 0)
  {
    v35 = HIBYTE(v28) & 0xF;
  }

  else
  {
    v35 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v35)
  {
    v41 = v10;

    v59 = 0;
    goto LABEL_71;
  }

  if ((v28 & 0x1000000000000000) != 0)
  {
    sub_218C8BAF0(v26, v28, 10);
    v37 = v74;
    v58 = v75;
LABEL_68:

    v41 = v10;
    v32 = v87;
    if (v58)
    {
      v59 = 0;
    }

    else
    {
      v59 = v37;
    }

LABEL_71:
    v60 = v59 & ~(v59 >> 63);
    if (v60 >= 50)
    {
      v60 = 50;
    }

    v79 = v60;
    v61 = v76;
    sub_219BDBD54();
    v42 = sub_219BDBD44();
    v43 = v62;
    (*(v77 + 8))(v61, v78);
    goto LABEL_74;
  }

  if ((v28 & 0x2000000000000000) == 0)
  {
    if ((v26 & 0x1000000000000000) != 0)
    {
      result = ((v28 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_219BF73B4();
    }

    v36 = *result;
    if (v36 == 43)
    {
      if (v34 >= 1)
      {
        v33 = v34 - 1;
        if (v34 != 1)
        {
          v37 = 0;
          if (result)
          {
            v47 = result + 1;
            while (1)
            {
              v48 = *v47 - 48;
              if (v48 > 9)
              {
                goto LABEL_66;
              }

              v49 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                goto LABEL_66;
              }

              v37 = v49 + v48;
              if (__OFADD__(v49, v48))
              {
                goto LABEL_66;
              }

              ++v47;
              if (!--v33)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_58;
        }

        goto LABEL_66;
      }

      goto LABEL_80;
    }

    if (v36 != 45)
    {
      if (v34)
      {
        v37 = 0;
        if (result)
        {
          while (1)
          {
            v53 = *result - 48;
            if (v53 > 9)
            {
              goto LABEL_66;
            }

            v54 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              goto LABEL_66;
            }

            v37 = v54 + v53;
            if (__OFADD__(v54, v53))
            {
              goto LABEL_66;
            }

            ++result;
            if (!--v34)
            {
              goto LABEL_58;
            }
          }
        }

        goto LABEL_58;
      }

LABEL_66:
      v37 = 0;
      LOBYTE(v33) = 1;
      goto LABEL_67;
    }

    if (v34 >= 1)
    {
      v33 = v34 - 1;
      if (v34 != 1)
      {
        v37 = 0;
        if (result)
        {
          v38 = result + 1;
          while (1)
          {
            v39 = *v38 - 48;
            if (v39 > 9)
            {
              goto LABEL_66;
            }

            v40 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              goto LABEL_66;
            }

            v37 = v40 - v39;
            if (__OFSUB__(v40, v39))
            {
              goto LABEL_66;
            }

            ++v38;
            if (!--v33)
            {
              goto LABEL_67;
            }
          }
        }

LABEL_58:
        LOBYTE(v33) = 0;
LABEL_67:
        v89[0] = v33;
        v58 = v33;
        goto LABEL_68;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v90[0] = v26;
  v90[1] = v28 & 0xFFFFFFFFFFFFFFLL;
  if (v26 != 43)
  {
    if (v26 != 45)
    {
      if (v33)
      {
        v37 = 0;
        v55 = v90;
        while (1)
        {
          v56 = *v55 - 48;
          if (v56 > 9)
          {
            break;
          }

          v57 = 10 * v37;
          if ((v37 * 10) >> 64 != (10 * v37) >> 63)
          {
            break;
          }

          v37 = v57 + v56;
          if (__OFADD__(v57, v56))
          {
            break;
          }

          ++v55;
          if (!--v33)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    if (v33)
    {
      if (--v33)
      {
        v37 = 0;
        v44 = v90 + 1;
        while (1)
        {
          v45 = *v44 - 48;
          if (v45 > 9)
          {
            break;
          }

          v46 = 10 * v37;
          if ((v37 * 10) >> 64 != (10 * v37) >> 63)
          {
            break;
          }

          v37 = v46 - v45;
          if (__OFSUB__(v46, v45))
          {
            break;
          }

          ++v44;
          if (!--v33)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    goto LABEL_79;
  }

  if (v33)
  {
    if (--v33)
    {
      v37 = 0;
      v50 = v90 + 1;
      while (1)
      {
        v51 = *v50 - 48;
        if (v51 > 9)
        {
          break;
        }

        v52 = 10 * v37;
        if ((v37 * 10) >> 64 != (10 * v37) >> 63)
        {
          break;
        }

        v37 = v52 + v51;
        if (__OFADD__(v52, v51))
        {
          break;
        }

        ++v50;
        if (!--v33)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_66;
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t firstlyAfterLaunching<A>(closure:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219BE2254();
  v5 = sub_219BE2234();
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v5;
  v11[4] = sub_218E9CCD0;
  v11[5] = v7;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_218793E0C;
  v11[3] = &block_descriptor_66;
  v8 = _Block_copy(v11);

  [v6 scheduleLowPriorityBlock_];
  _Block_release(v8);
  result = MEMORY[0x21CEB8FB0]();
  if (result)
  {
    v10 = result;

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218E9CBAC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_219BE3204();

  v3 = sub_219BE2E54();
  sub_219BE2F74();

  v4 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t firstlyAfterLaunching<A>(on:closure:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_219BE2254();
  v7 = sub_219BE2234();
  v8 = objc_opt_self();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = v7;
  v14[4] = sub_218E9CF98;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_218793E0C;
  v14[3] = &block_descriptor_6_0;
  v10 = _Block_copy(v14);
  v11 = a1;

  [v8 scheduleLowPriorityBlock_];
  _Block_release(v10);
  result = MEMORY[0x21CEB8FB0]();
  if (result)
  {
    v13 = result;

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218E9CE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = swift_allocObject();
  v7[2] = *(v6 + *MEMORY[0x277D6CB98]);
  v7[3] = a2;
  v7[4] = a3;

  sub_219BE31D4();

  v8 = sub_219BE2E54();
  sub_219BE2F74();

  v9 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t firstlyAfterLaunching<A, B>(on:disposeOn:closure:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_219BE2254();
  v10 = sub_219BE2234();
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = a6;
  v13[3] = v12;
  v13[4] = v10;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v18[4] = sub_218E9D384;
  v18[5] = v13;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_218793E0C;
  v18[3] = &block_descriptor_15_3;
  v14 = _Block_copy(v18);

  v15 = a1;

  [v11 scheduleLowPriorityBlock_];
  _Block_release(v14);
  result = MEMORY[0x21CEB8FB0]();
  if (result)
  {
    v17 = result;

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218E9D11C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = swift_allocObject();
    v11[2] = *(v10 + *MEMORY[0x277D6CB98]);
    v11[3] = a6;
    v11[4] = a4;
    v11[5] = a5;

    sub_219BE31F4();

    v12 = swift_allocObject();
    *(v12 + 16) = a6;
    *(v12 + 24) = a2;

    v13 = sub_219BE2E54();
    sub_219BE2F74();

    v14 = swift_allocObject();
    *(v14 + 16) = a6;
    *(v14 + 24) = a2;

    v15 = sub_219BE2E54();
    sub_219BE2FD4();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = sub_219BE1D94();
    sub_218DB220C();
    v17 = swift_allocError();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D6CAE0], v16);
    sub_219BE2204();
  }
}

uint64_t firstlyAfterLaunching<A, B>(on:disposeOn:qos:closure:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v25 = a4;
  v26 = a5;
  v10 = sub_219BED1D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  sub_219BE2254();
  v13 = sub_219BE2234();
  v27 = objc_opt_self();
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v11 + 16))(&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  v15 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v16 = swift_allocObject();
  v17 = v24;
  *(v16 + 2) = a6;
  *(v16 + 3) = v17;
  *(v16 + 4) = v14;
  *(v16 + 5) = v13;
  *(v16 + 6) = a1;
  (*(v11 + 32))(&v16[v15], &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v18 = &v16[(v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  v19 = v26;
  *v18 = v25;
  v18[1] = v19;
  aBlock[4] = sub_218E9D870;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_22_3;
  v20 = _Block_copy(aBlock);

  v21 = a1;

  [v27 scheduleLowPriorityBlock_];
  _Block_release(v20);
  result = MEMORY[0x21CEB8FB0]();
  if (result)
  {
    v23 = result;

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218E9D5F8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *a2;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = swift_allocObject();
    v12[2] = *(v11 + *MEMORY[0x277D6CB98]);
    v12[3] = a7;
    v12[4] = a5;
    v12[5] = a6;

    sub_219BE31E4();

    v13 = swift_allocObject();
    *(v13 + 16) = a7;
    *(v13 + 24) = a2;

    v14 = sub_219BE2E54();
    sub_219BE2F74();

    v15 = swift_allocObject();
    *(v15 + 16) = a7;
    *(v15 + 24) = a2;

    v16 = sub_219BE2E54();
    sub_219BE2FD4();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = sub_219BE1D94();
    sub_218DB220C();
    v18 = swift_allocError();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D6CAE0], v17);
    sub_219BE2204();
  }
}

void sub_218E9D870()
{
  v1 = v0[3];
  v2 = *(sub_219BED1D4() - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_218E9D5F8(v4, v5, v6, v0 + v3, v8, v9, v1);
}

uint64_t sub_218E9DA14()
{
  v1 = v0;
  v2 = type metadata accessor for SportsDetailModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA1B48(v1 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_model, v4, type metadata accessor for SportsDetailModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v6 = *(v4 + 1);
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *(&v12 - 4) = v1;
    *(&v12 - 3) = v7;
    *(&v12 - 2) = v6;
    sub_218EA199C(0);
    sub_219BE3204();

    v8 = sub_219BE2E54();
    sub_218EA1A0C(0);
    sub_219BE2F84();
  }

  else
  {
    sub_218EA1CB4(v4, type metadata accessor for SportsDetailModel);
    sub_218EA1A0C(0);
    sub_219BE3204();
  }

  v9 = sub_219BE2E54();
  type metadata accessor for SportsManagementDetailPrewarmResult(0);
  v10 = sub_219BE2F94();

  return v10;
}

uint64_t sub_218E9DC70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_sportsGraphManager), *(a1 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_sportsGraphManager + 24));
  sub_219BF4434();
  v5 = off_282A4D750[0];
  type metadata accessor for TagService();
  v5(a2, a3);
  v6 = sub_219BE31C4();

  return v6;
}

uint64_t sub_218E9DD4C(uint64_t *a1, uint64_t a2)
{
  v39 = a2;
  v35 = type metadata accessor for SportsDetailModel(0);
  MEMORY[0x28223BE20](v35);
  v37 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v38 = v34 - v5;
  sub_218EA1AC8(0, &qword_27CC13BD0, MEMORY[0x277D33E48], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v34 - v7;
  v9 = sub_219BF34F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v36 = v34 - v14;
  v15 = *a1;
  v16 = a1[1];
  v17 = *(v16 + 16);

  v18 = [v17 identifier];
  sub_219BF5414();

  v19 = v15;
  v20 = v10;
  sub_219BF29A4();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_218EA208C(v8, &qword_27CC13BD0, MEMORY[0x277D33E48]);
    if (qword_280E8D818 != -1)
    {
      swift_once();
    }

    v21 = qword_280F61718;
    v22 = sub_219BF61F4();
    sub_2186F20D4(0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_219C09BA0;
    v40 = 0;
    v41 = 0xE000000000000000;
    v42 = *(v16 + 16);
    sub_2186D8870();
    sub_219BF7484();
    v24 = v40;
    v25 = v41;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = sub_2186FC3BC();
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    sub_219BE5314("Sports Management Detail Data Manager failed to load link, tag=%{public}@", 73, 2, &dword_2186C1000, v21, v22, v23);

    sub_218EA2038();
    swift_allocError();
    *v26 = 0;
    sub_218EA1AC8(0, &qword_27CC12E28, sub_218EA1A0C, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v27 = sub_219BE2FF4();
  }

  else
  {
    v28 = v36;
    (*(v10 + 32))(v36, v8, v9);
    v34[1] = v19;
    v29 = *(v10 + 16);
    v29(v12, v28, v9);
    v30 = v38;
    v29(v38, v12, v9);

    v31 = sub_219BF34A4();
    v34[0] = *(v20 + 8);
    (v34[0])(v12, v9);
    v32 = type metadata accessor for SportsModel(0);
    *(v30 + *(v32 + 20)) = v31;
    *(v30 + *(v32 + 24)) = v16;
    swift_storeEnumTagMultiPayload();
    sub_218EA1B48(v30, v37, type metadata accessor for SportsDetailModel);
    sub_218EA1AC8(0, &qword_27CC12DD0, type metadata accessor for SportsDetailModel, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
    sub_218E9E308(v30);
    sub_218E9E690(v30);
    v27 = sub_219BE31B4();

    sub_218EA1CB4(v30, type metadata accessor for SportsDetailModel);
    (v34[0])(v28, v9);
  }

  return v27;
}

uint64_t sub_218E9E308(uint64_t a1)
{
  v3 = type metadata accessor for SportsModel(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsDetailModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218EA1B48(a1, v8, type metadata accessor for SportsDetailModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_218EA1CB4(v8, type metadata accessor for SportsDetailModel);
      v10 = MEMORY[0x277D84F90];
    }

    else
    {
      v10 = *v8;
    }

    v19 = v10;
    sub_218EA1AC8(0, &qword_280EE6AF0, sub_218A3A1C4, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    sub_218EA1D4C(v8, v5, type metadata accessor for SportsModel);
    v11 = [*(*&v5[*(v3 + 24)] + 16) asSports];
    if (v11)
    {
      MEMORY[0x28223BE20](v11);
      *(&v18 - 2) = v1;
      *(&v18 - 1) = v12;
      sub_219BE4F14();
      sub_219BE3204();
      v13 = sub_219BE2E54();
      sub_218A3A1C4(0);
      sub_219BE2F94();

      v14 = sub_219BE2E54();
      v15 = sub_219BE3054();

      swift_unknownObjectRelease();
      sub_218EA1CB4(v5, type metadata accessor for SportsModel);
      return v15;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
      sub_218EA1AC8(0, &qword_280EE6AF0, sub_218A3A1C4, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v17 = sub_219BE3014();
      sub_218EA1CB4(v5, type metadata accessor for SportsModel);
      return v17;
    }
  }
}

void sub_218E9E690(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_218EA1AC8(0, &qword_27CC12DD8, MEMORY[0x277D34030], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v81 = &v71 - v4;
  v5 = sub_219BF34F4();
  v88 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v85 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v80 = &v71 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v71 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v71 - v13;
  v15 = type metadata accessor for SportsModel(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v78 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SportsDetailModel(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA1AC8(0, &qword_27CC12DE0, type metadata accessor for SportsModel, v2);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v71 - v25;
  sub_218EA1B48(a1, v20, type metadata accessor for SportsDetailModel);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_218EA1CB4(v20, type metadata accessor for SportsDetailModel);
    v27 = 1;
  }

  else
  {
    sub_218EA1D4C(v20, v26, type metadata accessor for SportsModel);
    v27 = 0;
  }

  (*(v16 + 56))(v26, v27, 1, v15);
  sub_218EA1BB0(v26, v23);
  v28 = (*(v16 + 48))(v23, 1, v15);
  v29 = MEMORY[0x277D84F90];
  if (v28 == 1)
  {
    sub_218EA208C(v23, &qword_27CC12DE0, type metadata accessor for SportsModel);
    v93 = v29;
    sub_218EA1AC8(0, &qword_27CC12DE8, sub_218EA1A94, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
    sub_218EA208C(v26, &qword_27CC12DE0, type metadata accessor for SportsModel);
    return;
  }

  v75 = v26;
  v30 = v78;
  sub_218EA1D4C(v23, v78, type metadata accessor for SportsModel);
  v93 = v29;
  v31 = swift_allocObject();
  v74 = v31;
  *(v31 + 16) = v29;
  v32 = v31 + 16;
  v71 = v32;
  v33 = *(v30 + *(v15 + 20));
  v34 = *(v33 + 16);
  v35 = v81;
  if (!v34)
  {
LABEL_47:
    MEMORY[0x28223BE20](v32);
    v69 = v78;
    *(&v71 - 4) = v77;
    *(&v71 - 3) = v69;
    *(&v71 - 2) = &v93;
    sub_218EA1C64(0);
    sub_219BE3204();

    v70 = sub_219BE2E54();
    sub_218EA1A94(0);
    sub_219BE2F64();

    sub_218EA208C(v75, &qword_27CC12DE0, type metadata accessor for SportsModel);

    sub_218EA1CB4(v69, type metadata accessor for SportsModel);
    return;
  }

  v92 = *(v88 + 16);
  v83 = (*(v88 + 80) + 32) & ~*(v88 + 80);
  v36 = v33 + v83;
  v37 = *(v88 + 72);
  v91 = (v88 + 88);
  v90 = *MEMORY[0x277D33E30];
  v87 = *MEMORY[0x277D33E28];
  v84 = *MEMORY[0x277D33E38];
  v76 = *MEMORY[0x277D33E40];
  v38 = (v88 + 8);
  v73 = (v88 + 96);
  v79 = (v88 + 32);
  v88 += 16;
  v89 = MEMORY[0x277D84F90];
  v86 = v37;
  v72 = v11;
  while (1)
  {
    v40 = v92;
    v92(v14, v36, v5);
    v40(v11, v14, v5);
    v41 = (*v91)(v11, v5);
    if (v41 == v90)
    {
      goto LABEL_8;
    }

    if (v41 == v87)
    {
      v42 = *v38;
      (*v38)(v11, v5);
      if ((sub_219BF34E4() & 1) == 0)
      {
        v92(v85, v14, v5);
        v55 = v89;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = sub_2191F955C(0, v55[2] + 1, 1, v55);
        }

        v57 = v55[2];
        v56 = v55[3];
        v89 = v55;
        if (v57 >= v56 >> 1)
        {
          v89 = sub_2191F955C((v56 > 1), v57 + 1, 1, v89);
        }

        v42(v14, v5);
        v58 = v89;
        v89[2] = v57 + 1;
        v37 = v86;
        v32 = (*v79)(&v58[v83 + v57 * v86], v85, v5);
        v93 = v58;
        goto LABEL_9;
      }

      v32 = (v42)(v14, v5);
      goto LABEL_14;
    }

    if (v41 != v84)
    {
      if (v41 == v76)
      {
        (*v73)(v11, v5);
        v59 = *v11;
        v60 = *(*v11 + 16);

        sub_219BF4444();
        v61 = sub_219BF3AF4();
        if ((*(*(v61 - 8) + 48))(v35, 1, v61) != 1)
        {
          v82 = v59;
          v66 = sub_218EA208C(v35, &qword_27CC12DD8, MEMORY[0x277D34030]);
          MEMORY[0x28223BE20](v66);
          *(&v71 - 2) = v77;
          *(&v71 - 1) = v60;
          sub_218EA1C64(0);
          sub_219BE3204();

          v67 = sub_219BE2E54();
          type metadata accessor for SportsManagementDetailSection(0);
          sub_219BE2F64();

          v68 = v71;
          MEMORY[0x21CECC690]();
          if (*((*v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();

          (*v38)(v14, v5);

          v37 = v86;
          v35 = v81;
          goto LABEL_9;
        }

        (*v38)(v14, v5);

        sub_218EA208C(v35, &qword_27CC12DD8, MEMORY[0x277D34030]);

LABEL_14:
        v37 = v86;
        goto LABEL_9;
      }

LABEL_8:
      v39 = *v38;
      (*v38)(v14, v5);
      v32 = (v39)(v11, v5);
      goto LABEL_9;
    }

    v82 = *v38;
    v82(v11, v5);
    if ((sub_219BF34E4() & 1) == 0)
    {
      v92(v80, v14, v5);
      v62 = v89;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_2191F955C(0, v62[2] + 1, 1, v62);
      }

      v64 = v62[2];
      v63 = v62[3];
      v89 = v62;
      if (v64 >= v63 >> 1)
      {
        v89 = sub_2191F955C((v63 > 1), v64 + 1, 1, v89);
      }

      v82(v14, v5);
      v65 = v89;
      v89[2] = v64 + 1;
      v37 = v86;
      v32 = (*v79)(&v65[v83 + v64 * v86], v80, v5);
      v93 = v65;
      goto LABEL_9;
    }

    v43 = sub_219BF34A4();
    v44 = *(v43 + 16);
    v45 = v89;
    v46 = v89[2];
    v47 = v46 + v44;
    if (__OFADD__(v46, v44))
    {
      break;
    }

    v48 = v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v47 > v45[3] >> 1)
    {
      if (v46 <= v47)
      {
        v50 = v46 + v44;
      }

      else
      {
        v50 = v46;
      }

      v89 = sub_2191F955C(isUniquelyReferenced_nonNull_native, v50, 1, v45);
    }

    v35 = v81;
    v11 = v72;
    if (*(v48 + 16))
    {
      v51 = v89;
      if ((v89[3] >> 1) - v89[2] < v44)
      {
        goto LABEL_50;
      }

      swift_arrayInitWithCopy();

      if (v44)
      {
        v52 = *(v51 + 2);
        v53 = __OFADD__(v52, v44);
        v54 = v52 + v44;
        if (v53)
        {
          goto LABEL_51;
        }

        *(v51 + 2) = v54;
      }
    }

    else
    {

      v51 = v89;
      if (v44)
      {
        goto LABEL_49;
      }
    }

    v93 = v51;
    v32 = (v82)(v14, v5);
    v37 = v86;
LABEL_9:
    v36 += v37;
    if (!--v34)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t sub_218E9F2EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218EA1A0C(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsDetailModel(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA1B48(a1, v7, sub_218EA1A0C);
  v11 = *&v7[*(v5 + 56)];
  v12 = *&v7[*(v5 + 72)];
  sub_218EA1D4C(v7, v10, type metadata accessor for SportsDetailModel);
  if (v11 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_4;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_4;
  }

  if (!*(v12 + 16))
  {

    sub_218EA2038();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    return sub_218EA1CB4(v10, type metadata accessor for SportsDetailModel);
  }

LABEL_4:
  sub_218E9F4CC(v10, v11, v12, a2);

  return sub_218EA1CB4(v10, type metadata accessor for SportsDetailModel);
}

uint64_t sub_218E9F4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a1;
  v5 = sub_218EA147C(a1, a2, a3, v4);
  v6 = sub_218845E04();
  v7 = v6;
  if (v6 >> 62)
  {
LABEL_39:
    v8 = sub_219BF7214();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v43 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    v11 = v5;
    v12 = 0;
    v13 = v43;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x21CECE0F0](v12, v7);
      }

      else
      {
        v14 = *(v7 + 8 * v12 + 32);
      }

      v15 = [*(v14 + 16) identifier];
      v16 = sub_219BF5414();
      v18 = v17;

      v20 = *(v43 + 16);
      v19 = *(v43 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_21870B65C((v19 > 1), v20 + 1, 1);
      }

      ++v12;
      *(v43 + 16) = v20 + 1;
      v21 = v43 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v8 != v12);

    v5 = v11;
    v9 = MEMORY[0x277D84F90];
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v7 = sub_218845F78(v13);

  v44 = v9;
  if (v5 >> 62)
  {
    v22 = sub_219BF7214();
    if (v22)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v22 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
LABEL_16:
      v23 = 0;
      v41 = v5 & 0xFFFFFFFFFFFFFF8;
      v42 = v5 & 0xC000000000000001;
      v38 = v5;
      v24 = v5 + 32;
      v25 = v7 + 56;
      while (1)
      {
        if (v42)
        {
          v26 = MEMORY[0x21CECE0F0](v23, v38);
          v27 = __OFADD__(v23++, 1);
          if (v27)
          {
LABEL_35:
            __break(1u);
LABEL_36:
            v9 = v44;
            break;
          }
        }

        else
        {
          if (v23 >= *(v41 + 16))
          {
            __break(1u);
            goto LABEL_39;
          }

          v26 = *(v24 + 8 * v23);

          v27 = __OFADD__(v23++, 1);
          if (v27)
          {
            goto LABEL_35;
          }
        }

        v28 = [*(v26 + 16) identifier];
        v5 = sub_219BF5414();
        v30 = v29;

        if (*(v7 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v31 = sub_219BF7AE4(), v32 = -1 << *(v7 + 32), v33 = v31 & ~v32, ((*(v25 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
        {
          v34 = ~v32;
          while (1)
          {
            v35 = (*(v7 + 48) + 16 * v33);
            v36 = *v35 == v5 && v35[1] == v30;
            if (v36 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v33 = (v33 + 1) & v34;
            if (((*(v25 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_17;
            }
          }

          if (v23 == v22)
          {
            goto LABEL_36;
          }
        }

        else
        {
LABEL_17:

          sub_219BF73D4();
          v5 = *(v44 + 16);
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          if (v23 == v22)
          {
            goto LABEL_36;
          }
        }
      }
    }
  }

  sub_218EA1B48(v39, a4, type metadata accessor for SportsDetailModel);
  type metadata accessor for SportsManagementDetailSection(0);
  v37 = sub_219BF5964();
  result = type metadata accessor for SportsManagementDetailPrewarmResult(0);
  *(a4 + *(result + 20)) = v9;
  *(a4 + *(result + 24)) = v37;
  return result;
}

uint64_t sub_218E9F8D8(uint64_t a1)
{
  v2 = type metadata accessor for SportsDetailModel(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_model;
  sub_218EA1B48(a1 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_model, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsDetailModel);
  sub_218EA1AC8(0, &qword_27CC12DD0, type metadata accessor for SportsDetailModel, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE3014();
  sub_218E9E308(a1 + v4);
  sub_218E9E690(a1 + v4);
  v5 = sub_219BE31B4();

  return v5;
}

uint64_t sub_218E9FA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218EA1A0C(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsDetailModel(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA1B48(a1, v7, sub_218EA1A0C);
  v11 = *&v7[*(v5 + 56)];
  v12 = *&v7[*(v5 + 72)];
  sub_218EA1D4C(v7, v10, type metadata accessor for SportsDetailModel);
  sub_218E9F4CC(v10, v11, v12, a2);

  return sub_218EA1CB4(v10, type metadata accessor for SportsDetailModel);
}

void sub_218E9FB8C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = sub_219BE4F54();
  v31 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(*__swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_configManager) *(a1 + OBJC:sel_possiblyUnfetchedAppConfiguration IVAR:? :? :? :? TtC7NewsUI233SportsManagementDetailDataManager:?configManager + 24)) + 16)];
  if ([v8 respondsToSelector_])
  {
    v28 = v5;
    v9 = [swift_unknownObjectRetain() editoralRecommendedSportsTopicTagIds];
    if (v9)
    {
      v10 = v9;
      sub_219BF5924();
    }

    v11 = [v8 respondsToSelector_];
    v29 = a2;
    if (v11)
    {
      [v8 sportsManagementRecommendedItemsCount];
    }

    v27 = v7;
    if ([v8 respondsToSelector_])
    {
      [v8 sportsManagementMinChildItemsCount];
    }

    swift_unknownObjectRelease_n();

    v12 = MEMORY[0x277D84F90];
    v13 = sub_219BE4F04();
    if (qword_280E8D818 != -1)
    {
      swift_once();
    }

    sub_2186F20D4(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    v15 = *(v13 + 16);
    v16 = MEMORY[0x277D83C10];
    *(v14 + 56) = MEMORY[0x277D83B88];
    *(v14 + 64) = v16;
    *(v14 + 32) = v15;
    sub_219BF6214();
    sub_219BE5314("Sports Management Detail Data Manager got recommended %ld tags", v26[0]);

    if (v15)
    {
      v26[1] = v2;
      v33 = v12;
      sub_219BF73F4();
      v17 = *(a1 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_tagService);
      v18 = v31 + 16;
      v31 = *(v31 + 16);
      v32 = v17;
      v19 = *(v18 + 64);
      v26[0] = v13;
      v20 = v13 + ((v19 + 32) & ~v19);
      v30 = *(v18 + 56);
      v21 = v27;
      v22 = v28;
      do
      {
        (v31)(v21, v20, v22);
        v23 = sub_219BE4F44();
        ObjectType = swift_getObjectType();
        sub_218E97A64(v23, v32, ObjectType);
        swift_unknownObjectRelease();
        (*(v18 - 8))(v21, v22);
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        v20 += v30;
        --v15;
      }

      while (v15);

      v25 = v33;
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    *v29 = v25;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218E9FF7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = sub_219BF34F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = *a3;
  v17 = a1;
  v18 = v9;
  sub_218A3A1C4(0);

  sub_219BE3204();
  (*(v7 + 16))(&v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a2, v6);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  (*(v7 + 32))(v11 + v10, &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v12 = sub_219BE2E54();
  sub_218EA1C64(0);
  sub_219BE2F64();

  v13 = sub_219BE2E54();
  v14 = sub_219BE3054();

  return v14;
}

uint64_t sub_218EA0178(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsManagementDetailSection(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (v18 - v9);
  v11 = *a1;
  *v10 = 0;
  v10[1] = 0;
  v12 = *MEMORY[0x277D34028];
  v13 = sub_219BF3AF4();
  (*(*(v13 - 8) + 104))(v10, v12, v13);
  type metadata accessor for SportsManagementDetailSectionDescriptor(0);
  swift_storeEnumTagMultiPayload();
  *(v10 + *(v5 + 28)) = v11;
  sub_218EA1B48(v10, v7, type metadata accessor for SportsManagementDetailSection);
  sub_218EA1DB4(0);
  swift_allocObject();

  v14 = sub_219BE3014();
  swift_beginAccess();
  if (*(a2 + 16) >> 62 && (result = sub_219BF7214(), result < 0))
  {
    __break(1u);
  }

  else
  {
    sub_2189507C8(0, 0, v14);
    swift_endAccess();

    swift_beginAccess();
    v18[5] = *(a2 + 16);

    v15 = sub_219BE2E54();
    sub_218EA1AC8(0, &qword_27CC12E08, sub_218EA1DB4, MEMORY[0x277D83940]);
    sub_218EA1E1C();
    v16 = sub_219BE2F34();

    sub_218EA1CB4(v10, type metadata accessor for SportsManagementDetailSection);
    return v16;
  }

  return result;
}

uint64_t sub_218EA0400(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF34F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v19[-v9];
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *v10 = v11;
  (*(v5 + 104))(v10, *MEMORY[0x277D33E40], v4);

  v12 = sub_219BF4454();
  v20 = a1;
  v21 = v12;
  sub_218A3A1C4(0);
  sub_219BE3204();
  (*(v5 + 16))(v7, v10, v4);
  v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  (*(v5 + 32))(v14 + v13, v7, v4);
  v15 = sub_219BE2E54();
  sub_218EA1C64(0);
  sub_219BE2F64();

  v16 = sub_219BE2E54();
  v17 = sub_219BE3054();

  (*(v5 + 8))(v10, v4);
  return v17;
}

uint64_t sub_218EA0678(uint64_t *a1)
{
  sub_218EA1AC8(0, &qword_27CC12DD8, MEMORY[0x277D34030], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3;
  v5 = type metadata accessor for SportsManagementDetailSectionDescriptor(0);
  MEMORY[0x28223BE20](v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsManagementDetailSection(0);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  sub_219BF4444();
  v12 = sub_219BF3AF4();
  v13 = *(v12 - 8);
  result = (*(v13 + 48))(v4, 1, v12);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v13 + 32))(v7, v4, v12);
    swift_storeEnumTagMultiPayload();
    sub_218EA1D4C(v7, v10, type metadata accessor for SportsManagementDetailSectionDescriptor);
    *&v10[*(v8 + 20)] = v11;
    sub_218EA1DB4(0);
    swift_allocObject();

    return sub_219BE3014();
  }

  return result;
}

uint64_t sub_218EA08B8(uint64_t a1, uint64_t a2)
{
  v26 = sub_219BF34F4();
  v4 = *(v26 - 8);
  v5 = MEMORY[0x28223BE20](v26);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = *(a1 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_tagService);
  v8 = *(a2 + 16);
  if (v8)
  {
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v11 = a2 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v24 = *(v9 + 56);
    v25 = v10;
    v12 = MEMORY[0x277D84F90];
    v23[3] = v9;
    do
    {
      v14 = v26;
      v25(v7, v11, v26, v5);
      v15 = sub_219BF34D4();
      v17 = v16;
      (*(v9 - 8))(v7, v14);
      if (v17)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_218840D24(0, *(v12 + 2) + 1, 1, v12);
        }

        v19 = *(v12 + 2);
        v18 = *(v12 + 3);
        if (v19 >= v18 >> 1)
        {
          v12 = sub_218840D24((v18 > 1), v19 + 1, 1, v12);
        }

        *(v12 + 2) = v19 + 1;
        v13 = &v12[16 * v19];
        *(v13 + 4) = v15;
        *(v13 + 5) = v17;
      }

      v11 += v24;
      --v8;
    }

    while (v8);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v20 = off_282A4D758;
  type metadata accessor for TagService();
  v21 = v20(v12);

  return v21;
}

uint64_t sub_218EA0ADC(unint64_t *a1, void *a2, uint64_t a3)
{
  v61 = a3;
  v66 = type metadata accessor for SportsModel(0);
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v60 - v7;
  v8 = sub_219BF34F4();
  v72 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v74 = &v60 - v13;
  v14 = *a1;
  if (v14 >> 62)
  {
    goto LABEL_46;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v60 = a2;
  v65 = v11;
  if (v15)
  {
    v16 = 0;
    v70 = (v14 & 0xFFFFFFFFFFFFFF8);
    v71 = (v14 & 0xC000000000000001);
    a2 = MEMORY[0x277D84F98];
    v68 = v15;
    v69 = v14;
    while (1)
    {
      if (v71)
      {
        v11 = MEMORY[0x21CECE0F0](v16, v14, v12);
        v17 = v11;
        v18 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v16 >= v70[2])
        {
          goto LABEL_43;
        }

        v17 = *(v14 + 8 * v16 + 32);

        v18 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          v59 = v11;
          v15 = sub_219BF7214();
          v11 = v59;
          goto LABEL_3;
        }
      }

      v73 = v18;
      v19 = [*(v17 + 16) identifier];
      v20 = sub_219BF5414();
      v22 = v21;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = a2;
      v14 = a2;
      v25 = sub_21870F700(v20, v22);
      v26 = a2[2];
      v27 = (v24 & 1) == 0;
      v11 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        goto LABEL_44;
      }

      v28 = v24;
      if (a2[3] >= v11)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v24)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v14 = &v75;
          sub_219492A6C();
          if (v28)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_219481C7C(v11, isUniquelyReferenced_nonNull_native);
        v14 = v75;
        v29 = sub_21870F700(v20, v22);
        if ((v28 & 1) != (v30 & 1))
        {
          result = sub_219BF79A4();
          __break(1u);
          return result;
        }

        v25 = v29;
        if (v28)
        {
LABEL_5:

          a2 = v75;
          *(v75[7] + 8 * v25) = v17;

          goto LABEL_6;
        }
      }

      a2 = v75;
      v75[(v25 >> 6) + 8] |= 1 << v25;
      v31 = (a2[6] + 16 * v25);
      *v31 = v20;
      v31[1] = v22;
      *(a2[7] + 8 * v25) = v17;

      v32 = a2[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_45;
      }

      a2[2] = v34;
LABEL_6:
      ++v16;
      v14 = v69;
      if (v73 == v68)
      {
        goto LABEL_25;
      }
    }
  }

  a2 = MEMORY[0x277D84F98];
LABEL_25:
  v35 = v60[2];
  if (v35)
  {
    v36 = *(v72 + 16);
    v37 = v60 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v38 = *(v72 + 72);
    v72 += 16;
    v73 = v38;
    v71 = (v72 - 8);
    v70 = MEMORY[0x277D84F90];
    v39 = v65;
    v68 = v36;
    (v36)(v74, v37, v65, v12);
    while (1)
    {
      v41 = sub_219BF34D4();
      if (!v42)
      {
        goto LABEL_28;
      }

      if (!a2[2])
      {
        break;
      }

      v43 = sub_21870F700(v41, v42);
      v45 = v44;

      if ((v45 & 1) == 0)
      {
        goto LABEL_28;
      }

      v46 = *(a2[7] + 8 * v43);
      v47 = v62;
      v48 = v36;
      (v36)(v62, v74, v39);
      v49 = v39;
      v50 = v63;
      (v48)(v63, v47, v49);

      v69 = sub_219BF34A4();
      v51 = *v71;
      (*v71)(v47, v49);
      v51(v74, v49);
      v53 = v66;
      v52 = v67;
      *(v50 + *(v66 + 20)) = v69;
      *(v50 + *(v53 + 24)) = v46;
      sub_218EA1D4C(v50, v52, type metadata accessor for SportsModel);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v70 = sub_2191F9590(0, v70[2] + 1, 1, v70);
      }

      v55 = v70[2];
      v54 = v70[3];
      v39 = v65;
      v36 = v68;
      if (v55 >= v54 >> 1)
      {
        v70 = sub_2191F9590((v54 > 1), v55 + 1, 1, v70);
      }

      v56 = v70;
      v70[2] = v55 + 1;
      sub_218EA1D4C(v67, v56 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v55, type metadata accessor for SportsModel);
LABEL_29:
      v37 = &v73[v37];
      if (!--v35)
      {

        goto LABEL_41;
      }

      (v36)(v74, v37, v39, v40);
    }

LABEL_28:
    (*v71)(v74, v39);
    goto LABEL_29;
  }

  v70 = MEMORY[0x277D84F90];
LABEL_41:
  v57 = sub_219BF3494();

  v75 = v57;
  sub_218EA1AC8(0, &qword_27CC12E00, sub_218EA1C64, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218EA1184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsModel(0);
  v5 = [*(*(a1 + *(v4 + 24)) + 16) displayName];
  sub_219BF5414();

  v6 = sub_219BF5494();
  v8 = v7;

  v9 = [*(*(a2 + *(v4 + 24)) + 16) displayName];
  sub_219BF5414();

  v10 = sub_219BF5494();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_219BF78F4();
  }

  return v14 & 1;
}

uint64_t sub_218EA12E4(uint64_t a1, const char *a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), ...)
{
  if (qword_280E8D818 != -1)
  {
    swift_once();
  }

  v9 = qword_280F61718;
  v10 = sub_219BF61F4();
  sub_2186F20D4(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_2186FC3BC();
  *(v11 + 32) = 0;
  *(v11 + 40) = 0xE000000000000000;
  sub_219BE5314(a2, a3, 2, &dword_2186C1000, v9, v10, v11);

  sub_218EA1AC8(0, a4, a5, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

id sub_218EA147C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for SportsManagementDetailSection(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SportsDetailModel(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA1B48(a1, v14, type metadata accessor for SportsDetailModel);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  sub_218EA1CB4(v14, type metadata accessor for SportsDetailModel);
  if (a1 > 1)
  {
    goto LABEL_13;
  }

  if (!*(a3 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  sub_218EA1B48(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v11, type metadata accessor for SportsManagementDetailSection);
  v15 = *(*&v11[*(v8 + 20)] + 16);
  v16 = [*(*__swift_project_boxed_opaque_existential_1((a4 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_configManager) *(a4 + OBJC:sel_possiblyUnfetchedAppConfiguration IVAR:? :? :? :? TtC7NewsUI233SportsManagementDetailDataManager:?configManager + 24)) + 16)];
  result = [v16 respondsToSelector_];
  if (result)
  {
    v18 = [swift_unknownObjectRetain() editoralRecommendedSportsTopicTagIds];
    if (v18)
    {
      v19 = v18;
      sub_219BF5924();
    }

    if ([v16 respondsToSelector_])
    {
      [v16 sportsManagementRecommendedItemsCount];
    }

    if ([v16 respondsToSelector_])
    {
      v20 = [v16 sportsManagementMinChildItemsCount];
    }

    else
    {
      v20 = 15;
    }

    swift_unknownObjectRelease_n();

    sub_218EA1CB4(v11, type metadata accessor for SportsManagementDetailSection);
    if (v15 < v20)
    {
      return MEMORY[0x277D84F90];
    }

LABEL_13:

    return a2;
  }

  __break(1u);
  return result;
}

void sub_218EA1758(uint64_t *a1@<X8>)
{
  sub_21977633C();
  v2 = sub_219BF5494();
  v4 = v3;

  *a1 = v2;
  a1[1] = v4;
}

uint64_t sub_218EA17A4()
{
  sub_218774F78(v0 + 16);
  sub_218EA1CB4(v0 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_model, type metadata accessor for SportsDetailModel);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_recommendationService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_configManager));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_sportsOnboardingManager));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI233SportsManagementDetailDataManager_sportsGraphManager));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SportsManagementDetailDataManager(uint64_t a1)
{
  result = qword_27CC12D98;
  if (!qword_27CC12D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218EA18C8(uint64_t a1)
{
  result = type metadata accessor for SportsDetailModel(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_218EA199C(uint64_t a1)
{
  if (!qword_27CC12DB0)
  {
    sub_219BF29D4();
    type metadata accessor for TagModel();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC12DB0);
    }
  }
}

void sub_218EA1A0C(uint64_t a1)
{
  if (!qword_27CC12DB8)
  {
    type metadata accessor for SportsDetailModel(255);
    sub_218A3A1C4(255);
    sub_218EA1A94(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC12DB8);
    }
  }
}

void sub_218EA1AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218EA1B48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218EA1BB0(uint64_t a1, uint64_t a2)
{
  sub_218EA1AC8(0, &qword_27CC12DE0, type metadata accessor for SportsModel, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EA1CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218EA1D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_218EA1E1C()
{
  result = qword_27CC12E10;
  if (!qword_27CC12E10)
  {
    sub_218EA1AC8(255, &qword_27CC12E08, sub_218EA1DB4, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12E10);
  }

  return result;
}

uint64_t objectdestroy_12Tm_2()
{
  v1 = sub_219BF34F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

unint64_t sub_218EA2038()
{
  result = qword_27CC12E20;
  if (!qword_27CC12E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12E20);
  }

  return result;
}

uint64_t sub_218EA208C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218EA1AC8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_218EA2110()
{
  result = qword_27CC12E30;
  if (!qword_27CC12E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12E30);
  }

  return result;
}

uint64_t sub_218EA2194()
{
  v0 = sub_219BE63A4();
  __swift_allocate_value_buffer(v0, qword_280EE5AA0);
  __swift_project_value_buffer(v0, qword_280EE5AA0);
  return sub_219BE6374();
}

uint64_t sub_218EA222C()
{
  v0 = sub_219BE63A4();
  __swift_allocate_value_buffer(v0, qword_27CC12E40);
  __swift_project_value_buffer(v0, qword_27CC12E40);
  return sub_219BE6374();
}

uint64_t sub_218EA22DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_219BE63A4();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_218EA2374(char *a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = sub_219BEF754();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3[2];
  v12 = *(v11 + 16);
  if (v12)
  {
    v21[1] = v5;
    v21[3] = v2;
    v13 = *(v7 + 16);
    v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v13(v10, v11 + v14, v6, v8);
    if (v12 == 1)
    {
      (*(v7 + 32))(a1, v10, v6);
      return 0;
    }

    else
    {
      (v13)(a1, v10, v6);
      sub_218B6708C(v11, v11 + v14, 1, (2 * v12) | 1);
      v20 = v19;
      (*(v7 + 8))(v10, v6);
      result = swift_allocObject();
      *(result + 16) = v20;
    }
  }

  else
  {
    v16 = sub_219BEEDD4();
    sub_218EA25D0(v17);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D32390], v16);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_218EA25D0(__n128 a1)
{
  result = qword_280E917E0;
  if (!qword_280E917E0)
  {
    sub_219BEEDD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E917E0);
  }

  return result;
}

void sub_218EA2628(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a2;
  v98 = a3;
  v110 = type metadata accessor for AudioPlaylistFeedModel(0);
  v85 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v106 = v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v105 = v84 - v6;
  sub_218B7E48C(0);
  v108 = *(v7 - 8);
  v109 = v7;
  MEMORY[0x28223BE20](v7);
  v86 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA3928(0);
  MEMORY[0x28223BE20](v9 - 8);
  v97 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_219BF2094();
  v101 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v102 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_219BF2DA4();
  v12 = *(v107 - 1);
  MEMORY[0x28223BE20](v107);
  v14 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_219BF1904();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v16 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for AudioPlaylistFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v96);
  v100 = v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v84 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = v84 - v22;
  v24 = type metadata accessor for ArticleListAudioPlaylistFeedGroup(0);
  v25 = v24 - 8;
  MEMORY[0x28223BE20](v24);
  v27 = (v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v30 = v84 - v29;
  v31 = type metadata accessor for AudioPlaylistFeedGroup(0);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA3A18(a1, v33, type metadata accessor for AudioPlaylistFeedGroup);
  sub_218A6DD44(v33, v30);
  sub_218EA3A18(v30, v23, type metadata accessor for ArticleListAudioPlaylistFeedGroup);
  v89 = *&v30[*(v25 + 32)];
  v95 = v30;
  sub_219BED874();
  v99 = v23;
  sub_218EA3A18(v23, v20, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
  sub_218A6DD44(v20, v27);
  v34 = v27[1];
  v87 = *v27;
  v88 = v34;

  sub_218EA3A80(v27, type metadata accessor for ArticleListAudioPlaylistFeedGroup);
  v90 = v16;
  v35 = sub_219BF18F4();
  v36 = *(v35 + 16);
  if (v36)
  {
    v38 = *(v12 + 16);
    v37 = v12 + 16;
    v104 = v38;
    v39 = (*(v37 + 64) + 32) & ~*(v37 + 64);
    v84[1] = v35;
    v40 = v35 + v39;
    v103 = *(v37 + 56);
    v41 = MEMORY[0x277D84F90];
    while (1)
    {
      v42 = v107;
      (v104)(v14, v40, v107);
      v43 = sub_219BF2D94();
      (*(v37 - 8))(v14, v42);
      v44 = *(v43 + 16);
      v45 = v41[2];
      v46 = v45 + v44;
      if (__OFADD__(v45, v44))
      {
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
        return;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v46 <= v41[3] >> 1)
      {
        if (*(v43 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v45 <= v46)
        {
          v48 = v45 + v44;
        }

        else
        {
          v48 = v45;
        }

        v41 = sub_2191F7160(isUniquelyReferenced_nonNull_native, v48, 1, v41);
        if (*(v43 + 16))
        {
LABEL_14:
          if ((v41[3] >> 1) - v41[2] < v44)
          {
            goto LABEL_50;
          }

          swift_arrayInitWithCopy();

          if (v44)
          {
            v49 = v41[2];
            v50 = __OFADD__(v49, v44);
            v51 = v49 + v44;
            if (v50)
            {
              goto LABEL_52;
            }

            v41[2] = v51;
          }

          goto LABEL_4;
        }
      }

      if (v44)
      {
        goto LABEL_47;
      }

LABEL_4:
      v40 += v103;
      if (!--v36)
      {

        v52 = v41[2];
        if (v52)
        {
          goto LABEL_19;
        }

        goto LABEL_37;
      }
    }
  }

  v41 = MEMORY[0x277D84F90];
  v52 = *(MEMORY[0x277D84F90] + 16);
  if (v52)
  {
LABEL_19:
    v107 = *(v101 + 16);
    v53 = v41 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
    v104 = *(v101 + 72);
    v54 = (v101 + 8);
    v55 = MEMORY[0x277D84F90];
    while (1)
    {
      v56 = v102;
      v57 = v111;
      (v107)(v102, v53, v111);
      v58 = sub_219BF2084();
      (*v54)(v56, v57);
      v59 = *(v58 + 16);
      v60 = v55[2];
      v61 = v60 + v59;
      if (__OFADD__(v60, v59))
      {
        goto LABEL_48;
      }

      v62 = swift_isUniquelyReferenced_nonNull_native();
      if (v62 && v61 <= v55[3] >> 1)
      {
        if (*(v58 + 16))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v60 <= v61)
        {
          v63 = v60 + v59;
        }

        else
        {
          v63 = v60;
        }

        v55 = sub_218855C7C(v62, v63, 1, v55);
        if (*(v58 + 16))
        {
LABEL_31:
          v64 = (v55[3] >> 1) - v55[2];
          sub_219BF3C84();
          if (v64 < v59)
          {
            goto LABEL_51;
          }

          swift_arrayInitWithCopy();

          if (v59)
          {
            v65 = v55[2];
            v50 = __OFADD__(v65, v59);
            v66 = v65 + v59;
            if (v50)
            {
              goto LABEL_53;
            }

            v55[2] = v66;
          }

          goto LABEL_21;
        }
      }

      if (v59)
      {
        goto LABEL_49;
      }

LABEL_21:
      v53 = &v104[v53];
      if (!--v52)
      {

        goto LABEL_38;
      }
    }
  }

LABEL_37:

  v55 = MEMORY[0x277D84F90];
LABEL_38:
  MEMORY[0x28223BE20](v67);
  v69 = v93;
  v68 = v94;
  v84[-6] = v89;
  v84[-5] = v69;
  v84[-4] = v68;
  v70 = v88;
  v84[-3] = v87;
  v84[-2] = v70;
  sub_218DDE454(sub_218EA39F4, &v84[-8], v55);
  v72 = v71;

  (*(v91 + 8))(v90, v92);
  sub_218EA3A18(v99, v100, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
  v73 = *(v72 + 16);
  if (v73)
  {
    v112 = MEMORY[0x277D84F90];
    sub_218C34AD8(0, v73, 0);
    v74 = v112;
    v75 = *(v85 + 80);
    v111 = v72;
    v76 = v72 + ((v75 + 32) & ~v75);
    v77 = *(v85 + 72);
    v78 = v86;
    do
    {
      v79 = v105;
      sub_218EA3A18(v76, v105, type metadata accessor for AudioPlaylistFeedModel);
      sub_218EA3A18(v79, v106, type metadata accessor for AudioPlaylistFeedModel);
      sub_218EA3B94(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel, &unk_219C8F008);
      sub_219BE5FB4();
      sub_218EA3A80(v79, type metadata accessor for AudioPlaylistFeedModel);
      v112 = v74;
      v81 = *(v74 + 16);
      v80 = *(v74 + 24);
      if (v81 >= v80 >> 1)
      {
        sub_218C34AD8((v80 > 1), v81 + 1, 1);
        v78 = v86;
        v74 = v112;
      }

      *(v74 + 16) = v81 + 1;
      (*(v108 + 32))(v74 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v81, v78, v109);
      v76 += v77;
      --v73;
    }

    while (v73);
  }

  else
  {

    v74 = MEMORY[0x277D84F90];
  }

  v82 = sub_218EA3B94(&qword_27CC12E60, sub_218B7E48C, MEMORY[0x277D6D408]);
  v83 = sub_218EA3B94(&qword_27CC12E68, sub_218B7E48C, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v74, v109, v82, v83);
  sub_218EA3B94(&unk_27CC11BE0, type metadata accessor for AudioPlaylistFeedSectionDescriptor, &unk_219C3085C);
  sub_218EA3B94(&unk_27CC0B7F0, type metadata accessor for AudioPlaylistFeedModel, &unk_219C8F008);
  sub_219BE6924();
  sub_218EA3A80(v99, type metadata accessor for AudioPlaylistFeedSectionDescriptor);
  sub_218EA3A80(v95, type metadata accessor for ArticleListAudioPlaylistFeedGroup);
}

uint64_t sub_218EA3240@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v32 = a5;
  v33 = a6;
  v30 = a3;
  v31 = a4;
  v36 = a2;
  v9 = sub_219BF2164();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF3C84();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a1, v13, v15);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == *MEMORY[0x277D34128] || v18 == *MEMORY[0x277D34108] || v18 == *MEMORY[0x277D34100] || v18 == *MEMORY[0x277D34130] || v18 == *MEMORY[0x277D34110])
  {
    result = (*(v14 + 8))(v17, v13);
    *a7 = MEMORY[0x277D84F90];
  }

  else if (v18 == *MEMORY[0x277D340F0])
  {
    (*(v14 + 96))(v17, v13);
    v24 = (*(v10 + 32))(v12, v17, v9);
    MEMORY[0x28223BE20](v24);
    v25 = v31;
    *(&v30 - 6) = v30;
    *(&v30 - 5) = v25;
    v26 = v33;
    *(&v30 - 4) = v32;
    *(&v30 - 3) = v26;
    *(&v30 - 2) = v12;
    *a7 = sub_218948040(sub_218EA3AE0, (&v30 - 8), v36);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    sub_2186E8080(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_219C09BA0;
    v34 = 0;
    v35 = 0xE000000000000000;
    sub_219BF7484();
    v28 = v34;
    v29 = v35;
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = sub_2186FC3BC();
    *(v27 + 32) = v28;
    *(v27 + 40) = v29;
    MEMORY[0x21CEB8D80]("Unknown format item %{public}@ encountered. Please update this switch statement to handle the new case.", 103, 2, v27);

    *a7 = MEMORY[0x277D84F90];
    return (*(v14 + 8))(v17, v13);
  }

  return result;
}

uint64_t sub_218EA35F0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = a4;
  v24 = a5;
  v22 = a3;
  v25 = a6;
  v8 = sub_219BF0BD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E8080(0, &unk_280E90C60, MEMORY[0x277D32FE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  v15 = *a1;
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  if (swift_unknownObjectWeakLoadStrong())
  {
    v21 = v8;
    swift_getObjectType();
    v8 = v21;
    sub_219BEEFB4();
    swift_unknownObjectRelease();
    (*(v9 + 56))(v14, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v14, 1, 1, v8);
  }

  v16 = sub_21983F764(v15, v14);
  sub_218EA3B08(v14);
  v26 = v16;
  (*(v9 + 16))(v11, v22, v8);
  sub_21871D24C();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09EC0;
  *(v17 + 32) = v23;
  *(v17 + 40) = v24;

  *(v17 + 48) = sub_219BF2154();
  *(v17 + 56) = v18;
  MEMORY[0x21CEC80A0](v17);

  type metadata accessor for HeadlineModel(0);
  sub_218EA3B94(&qword_280EDE358, type metadata accessor for HeadlineModel, &unk_219C5F62C);
  sub_218EA3B94(&qword_280EDE360, type metadata accessor for HeadlineModel, &unk_219C5F604);
  return sub_219BF0844();
}

void sub_218EA3928(uint64_t a1)
{
  if (!qword_27CC12E58)
  {
    sub_218B7E48C(255);
    sub_218EA3B94(&qword_27CC12E60, sub_218B7E48C, MEMORY[0x277D6D408]);
    sub_218EA3B94(&qword_27CC12E68, sub_218B7E48C, MEMORY[0x277D6D3F8]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC12E58);
    }
  }
}

uint64_t sub_218EA3A18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218EA3A80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218EA3B08(uint64_t a1)
{
  sub_2186E8080(0, &unk_280E90C60, MEMORY[0x277D32FE0], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218EA3B94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t MyMagazineSharingActivitySource.hashValue.getter()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

unint64_t sub_218EA3C68()
{
  result = qword_27CC12E70;
  if (!qword_27CC12E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12E70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MyMagazinesSharingActivity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 3)
  {
    v8 = v7 - 2;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MyMagazinesSharingActivity(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_218EA3E14(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_218EA3E28(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

uint64_t sub_218EA3E58()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_218EA3EB4(void *a1, unsigned __int8 a2)
{
  v5 = a2;
  v11 = [objc_allocWithZone(MEMORY[0x277D75788]) init];
  v6 = _UISolariumFeatureFlagEnabled();
  v7 = &selRef_configureWithTransparentBackground;
  if (!v6)
  {
    v7 = &selRef_configureWithOpaqueBackground;
  }

  [v11 *v7];
  if (v5 != 2)
  {
    *(v2 + 56) = a2 & 1;
    if ((a2 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*(v2 + 56))
  {
LABEL_7:
    v8 = objc_opt_self();
    v9 = v11;
    v10 = [v8 clearColor];
    [v9 setShadowColor_];
  }

LABEL_8:
  [a1 setStandardAppearance_];
  [a1 setScrollEdgeAppearance_];
}

uint64_t sub_218EA3FE0(void *a1)
{
  sub_218EA4A64(0, &qword_27CC12EA0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EA4950();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BED8D4();
  sub_218EA4AC8(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for ChannelPickerTodayFeedGroup(0);
    v9[14] = 1;
    sub_219BF77F4();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218EA41AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_219BED8D4();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA4A64(0, &qword_27CC12E90, MEMORY[0x277D844C8]);
  v28 = v7;
  v25 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EA4950();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v12;
  v13 = v25;
  v14 = v26;
  v30 = 0;
  sub_218EA4AC8(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
  v15 = v27;
  sub_219BF7734();
  (*(v14 + 32))(v23, v6, v15);
  v29 = 1;
  v16 = sub_219BF76F4();
  v18 = v17;
  (*(v13 + 8))(v9, v28);
  v20 = v23;
  v19 = v24;
  v21 = &v23[*(v10 + 20)];
  *v21 = v16;
  v21[1] = v18;
  sub_218EA49A4(v20, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_218EA4A08(v20);
}

uint64_t sub_218EA44EC(uint64_t a1)
{
  v2 = sub_218EA4950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218EA4528(uint64_t a1)
{
  v2 = sub_218EA4950();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218EA45BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  v4 = a1 + v3;
  v5 = *(a1 + v3);
  v6 = (a2 + v3);
  v7 = v5 == *v6 && *(v4 + 8) == v6[1];
  if (v7 || (v8 = 0, (sub_219BF78F4() & 1) != 0))
  {
    v9 = sub_219BED784();
    v11 = v10;
    if (v9 == sub_219BED784() && v11 == v12)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_219BF78F4();
    }
  }

  return v8 & 1;
}

uint64_t sub_218EA4750(uint64_t a1)
{
  result = sub_218EA4AC8(&qword_27CC0B978, type metadata accessor for ChannelPickerTodayFeedGroup, &unk_219C42478);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218EA47A8(uint64_t a1)
{
  v2 = sub_218EA4AC8(&qword_27CC12E88, type metadata accessor for ChannelPickerTodayFeedGroup, &unk_219C4235C);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218EA4814(uint64_t a1)
{
  sub_219BF7314();

  v4 = *(v1 + *(a1 + 20));

  MEMORY[0x21CECC330](0x6C656E6E61684320, 0xEE0072656B636950);
  return v4;
}

uint64_t sub_218EA48A4(void *a1)
{
  a1[1] = sub_218EA4AC8(&qword_27CC12E88, type metadata accessor for ChannelPickerTodayFeedGroup, &unk_219C4235C);
  a1[2] = sub_218EA4AC8(&qword_27CC0B9C0, type metadata accessor for ChannelPickerTodayFeedGroup, &unk_219C42450);
  result = sub_218EA4AC8(&qword_27CC0BA00, type metadata accessor for ChannelPickerTodayFeedGroup, &unk_219C42428);
  a1[3] = result;
  return result;
}

unint64_t sub_218EA4950()
{
  result = qword_27CC12E98;
  if (!qword_27CC12E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12E98);
  }

  return result;
}

uint64_t sub_218EA49A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EA4A08(uint64_t a1)
{
  v2 = type metadata accessor for ChannelPickerTodayFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218EA4A64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218EA4950();
    v7 = a3(a1, &type metadata for ChannelPickerTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218EA4AC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218EA4B24()
{
  result = qword_27CC12EA8;
  if (!qword_27CC12EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12EA8);
  }

  return result;
}

unint64_t sub_218EA4B7C()
{
  result = qword_27CC12EB0;
  if (!qword_27CC12EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12EB0);
  }

  return result;
}

unint64_t sub_218EA4BD4()
{
  result = qword_27CC12EB8[0];
  if (!qword_27CC12EB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC12EB8);
  }

  return result;
}

uint64_t sub_218EA4C28(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

double sub_218EA4CF4()
{
  v1 = *v0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v3 = sub_219BF5054();
  sub_218EA4E64(v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = *(v1 + 80);
  v5[3] = *(v1 + 88);
  v5[4] = v4;

  return result;
}

double sub_218EA4E64(uint64_t a1)
{
  if (qword_280E8D890 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61760;
  v2 = sub_219BF6214();
  sub_219BE5314("SharedWithYou feed starting prewarming", 38, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);
  v3 = CACurrentMediaTime();
  sub_219BE3204();
  sub_2187D9028();
  v4 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  v5 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v3;
  sub_219BE2F94();

  v6 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v3;
  sub_219BE2FE4();

  return result;
}

double sub_218EA50B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218C8AAD8(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA8D58(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v28 = a3;
    v29 = v10;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = a2;
        v19 = a1;
        v20 = a4;
        v21 = off_282A609C0[0];
        type metadata accessor for SharedWithYouFeedViewController();
        v21(v18);
        a4 = v20;
        a1 = v19;
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    sub_218EA9390(a1, v15, sub_218EA8D58);
    v22 = sub_219BF1584();
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) != 1)
    {

      sub_218EA9308(v15, sub_218EA8D58);
      return result;
    }

    sub_219BE6EC4();
    v33 = v30;
    sub_218987294(0);
    sub_218EA891C(&unk_27CC12F70, sub_218987294, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    sub_218EA891C(&qword_27CC10500, sub_218C8AAD8, MEMORY[0x277D6EC70]);
    sub_219BF5DF4();
    sub_219BF5E84();
    (*(v29 + 8))(v12, v9);
    if (v32 == v31)
    {
      swift_beginAccess();
      v23 = swift_weakLoadStrong();
      if (!v23)
      {
LABEL_13:

        return result;
      }

      sub_218EA4E64(v23);
    }

    else
    {
      v24 = v28;
      v33 = (*(a4 + 64))(v28, a4);
      v25 = swift_allocObject();
      swift_beginAccess();
      swift_weakLoadStrong();
      swift_weakInit();

      v26 = swift_allocObject();
      v26[2] = v24;
      v26[3] = a4;
      v26[4] = v25;
      sub_218EA8C20(0);
      sub_218EA891C(&unk_27CC12F90, sub_218EA8C20, MEMORY[0x277D6D890]);

      sub_219BE6EF4();
    }

    goto LABEL_13;
  }

  return result;
}

double sub_218EA5560(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE85F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v4 + 16))(v6, a1, v3);
    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D6DFA0])
    {
      (*(v4 + 8))(v6, v3);
      if (swift_unknownObjectWeakLoadStrong())
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          *(swift_allocObject() + 16) = Strong;
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

double sub_218EA5750(uint64_t a1)
{
  v2 = *v1;
  sub_219BE6EC4();
  v3 = sub_2189828D0();

  if ((v3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = *(v2 + 80);
  *(v6 + 24) = *(v2 + 88);
  *(v6 + 32) = v5;
  *(v6 + 40) = HIBYTE(v3) & 1;

  sub_219BE6F24();

  return result;
}

double sub_218EA58E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  sub_218C8AAD8(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((a3 & 1) != 0 && (Strong = swift_unknownObjectWeakLoadStrong()) != 0)
    {
      v15 = Strong;

      sub_219BE6EC4();
      v18[3] = v18[4];
      sub_218987294(0);
      sub_218EA891C(&unk_27CC12F70, sub_218987294, MEMORY[0x277D6D8C8]);
      sub_219BE7B94();

      sub_218EA891C(&qword_27CC10500, sub_218C8AAD8, MEMORY[0x277D6EC70]);
      sub_219BF5DF4();
      sub_219BF5E84();
      (*(v10 + 8))(v12, v9);
      v16 = v18[2] == v18[1];
      type metadata accessor for SharedWithYouFeedInteractor(0, a4, a5, v17);
      sub_2197DFC9C(v16, v15);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_218EA5B2C(void *a1)
{
  v58 = *v1;
  v54 = type metadata accessor for SharedWithYouFeedExpandRequest(0);
  MEMORY[0x28223BE20](v54);
  v61 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v62);
  v63 = (&v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SharedWithYouFeedGapLocation(0);
  v55 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = v6;
  v57 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v60 = &v50 - v8;
  sub_218EA88B8(0, &unk_27CC12F60, sub_218C40500, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  sub_218C40500(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v64 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C8AAD8(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v1;
  sub_219BE6EC4();
  v66 = *&v65[0];
  sub_218987294(0);
  sub_218EA891C(&unk_27CC12F70, sub_218987294, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  v21 = v17;

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1D74();
  sub_219BEB1C4();

  v22 = v14;
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    sub_218EAA044(v11, &unk_27CC12F60, sub_218C40500);
    v23 = a1[3];
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v23);
    MEMORY[0x21CEC0B20](0, v23, v24);
    return (*(v18 + 8))(v20, v21);
  }

  else
  {
    v51 = a1;
    v52 = v18;
    v53 = v20;
    v26 = v64;
    v27 = v13;
    (*(v14 + 32))(v64, v11, v13);
    v28 = v63;
    sub_219BE5FC4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_218EA9308(v28, type metadata accessor for SharedWithYouFeedModel);
      v29 = v51[3];
      v30 = v51[4];
      __swift_project_boxed_opaque_existential_1(v51, v29);
      MEMORY[0x21CEC0B20](0, v29, v30);
      (*(v14 + 8))(v26, v27);
      return (*(v52 + 8))(v53, v21);
    }

    else
    {
      v62 = v27;
      v32 = *v28;
      v31 = *(v28 + 1);
      sub_218EA89D8(0);
      v34 = *(v33 + 48);
      v50 = type metadata accessor for SharedWithYouFeedGapLocation;
      v35 = v28 + v34;
      v36 = v60;
      sub_218EA93F8(v35, v60, type metadata accessor for SharedWithYouFeedGapLocation);
      v37 = *(v54 + 20);
      v63 = type metadata accessor for SharedWithYouFeedGapLocation;
      v38 = v61;
      v39 = sub_218EA9390(v36, v61 + v37, type metadata accessor for SharedWithYouFeedGapLocation);
      *v38 = v32;
      *(v38 + 8) = v31;
      MEMORY[0x28223BE20](v39);
      *(&v50 - 2) = v59;
      *(&v50 - 1) = v38;
      sub_219BE3204();
      sub_2187D9028();
      v40 = sub_219BF66A4();
      sub_219BE95D4();
      v41 = v58;
      sub_219BE2F84();

      v42 = sub_219BF66A4();
      v43 = v51;
      sub_218718690(v51, v65);
      v44 = swift_allocObject();
      v54 = v21;
      sub_2186CB1F0(v65, v44 + 16);
      sub_219BE2F94();

      v45 = sub_219BF66A4();
      sub_218718690(v43, v65);
      v46 = v60;
      v47 = v57;
      sub_218EA9390(v60, v57, v63);
      v48 = (*(v55 + 80) + 72) & ~*(v55 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = *(v41 + 80);
      *(v49 + 24) = *(v41 + 88);
      sub_2186CB1F0(v65, v49 + 32);
      sub_218EA93F8(v47, v49 + v48, v50);
      sub_219BE2FE4();

      sub_218EA9308(v46, type metadata accessor for SharedWithYouFeedGapLocation);
      (*(v22 + 8))(v64, v62);
      (*(v52 + 8))(v53, v54);
      return sub_218EA9308(v61, type metadata accessor for SharedWithYouFeedExpandRequest);
    }
  }
}

uint64_t sub_218EA6334(void *a1, uint64_t a2)
{
  (*(*(*a2 + 88) + 48))(*a1, a1[1], a1[2], *(*a2 + 80));
  sub_218EA8C20(0);
  sub_218EA891C(&unk_27CC12F90, sub_218EA8C20, MEMORY[0x277D6D890]);
  v2 = sub_219BE6E84();

  return v2;
}

uint64_t sub_218EA643C(uint64_t a1, uint64_t *a2, void *a3)
{
  v17 = a1;
  v4 = *a2;
  sub_218C8AAD8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_219BE6EC4();
    v20 = v21;
    sub_218987294(0);
    v16 = v4;
    sub_218EA891C(&unk_27CC12F70, sub_218987294, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    sub_218EA891C(&qword_27CC10500, sub_218C8AAD8, MEMORY[0x277D6EC70]);
    sub_219BF5DF4();
    sub_219BF5E84();
    (*(v7 + 8))(v9, v6);
    v12 = v19 == v18;
    type metadata accessor for SharedWithYouFeedInteractor(0, *(v16 + 80), *(v16 + 88), v13);
    sub_2197DFC9C(v12, v11);
    swift_unknownObjectRelease();
  }

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  return sub_219BE9D74();
}

double sub_218EA6698(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = *a2;
  v8 = type metadata accessor for SharedWithYouFeedFailedData(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_219BE81D4())
  {
    v11 = a3[3];
    v12 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v11);
    MEMORY[0x21CEC0B20](0, v11, v12);
  }

  else
  {
    v27 = a4;
    v28 = v7;
    if (qword_280E8D890 != -1)
    {
      swift_once();
    }

    v26 = qword_280F61760;
    HIDWORD(v25) = sub_219BF61F4();
    sub_2186F20D4(0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09EC0;
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    sub_2186CFDE4(0, &unk_280EE3DF0, MEMORY[0x277D6E8E8]);
    sub_219BF7484();
    v15 = v29[0];
    v16 = MEMORY[0x277D837D0];
    *(v14 + 56) = MEMORY[0x277D837D0];
    v17 = sub_2186FC3BC();
    *(v14 + 64) = v17;
    *(v14 + 32) = v15;
    *&v29[0] = 0;
    *(&v29[0] + 1) = 0xE000000000000000;
    v30 = a1;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    v18 = v29[0];
    *(v14 + 96) = v16;
    *(v14 + 104) = v17;
    *(v14 + 72) = v18;
    sub_219BE5314("Error while trying to expand sharedWithYou feed, request=%{public}@, error=%{public}@", 85, 2, &dword_2186C1000, v26, HIDWORD(v25), v14);

    __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v19 = sub_219BE1D74();
    v21 = v20;
    sub_218EA9390(v27, v10 + *(v8 + 20), type metadata accessor for SharedWithYouFeedGapLocation);
    *v10 = v19;
    v10[1] = v21;
    v22 = (*(*(v28 + 88) + 72))(v10, *(v28 + 80));
    sub_218EA9308(v10, type metadata accessor for SharedWithYouFeedFailedData);
    v30 = v22;
    sub_218718690(a3, v29);
    v23 = swift_allocObject();
    sub_2186CB1F0(v29, v23 + 16);
    *(v23 + 56) = a1;
    v24 = a1;
    sub_218EA8C20(0);
    sub_218EA891C(&unk_27CC12F90, sub_218EA8C20, MEMORY[0x277D6D890]);
    sub_219BE6EF4();
  }

  return result;
}

uint64_t sub_218EA6A44(uint64_t a1, char a2, uint64_t a3)
{
  v21 = a3;
  sub_218EA88B8(0, &qword_27CC12F58, type metadata accessor for SharedWithYouFeedRouteModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for SharedWithYouFeedRouteModel(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BDE294();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D2FEF8];
  if ((a2 & 1) == 0)
  {
    v17 = MEMORY[0x277D2FF08];
  }

  (*(v13 + 104))(v16, *v17, v12, v14);
  sub_218EA6D60(a1, v16, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    (*(v13 + 8))(v16, v12);
    return sub_218EAA044(v7, &qword_27CC12F58, type metadata accessor for SharedWithYouFeedRouteModel);
  }

  else
  {
    sub_218EA93F8(v7, v11, type metadata accessor for SharedWithYouFeedRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      sub_21900D6B4(v11, v21);
      sub_218EA9308(v11, type metadata accessor for SharedWithYouFeedRouteModel);
      (*(v13 + 8))(v16, v12);
      return swift_unknownObjectRelease();
    }

    else
    {
      sub_218EA9308(v11, type metadata accessor for SharedWithYouFeedRouteModel);
      return (*(v13 + 8))(v16, v12);
    }
  }
}

uint64_t sub_218EA6D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v56 = a2;
  v59 = a3;
  v54 = *v4;
  v6 = sub_219BDE744();
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF0634();
  v51 = *(v8 - 8);
  v52 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_218EA88B8(0, &unk_280EE8AA0, MEMORY[0x277D30260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v48 = &v45 - v12;
  sub_218EA88B8(0, &unk_280EE8C40, MEMORY[0x277D30018], v10);
  MEMORY[0x28223BE20](v13 - 8);
  v46 = &v45 - v14;
  sub_218C40500(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BDE7A4();
  v49 = *(v20 - 8);
  v50 = v20;
  MEMORY[0x28223BE20](v20);
  v47 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC(0);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for SharedWithYouFeedModel(0);
  MEMORY[0x28223BE20](v27);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v45 = v24;
      v37 = *(v24 + 32);
      v38 = v23;
      v37(v26, v29, v23);
      (*(v17 + 16))(v19, a1, v16);
      sub_219BF07D4();
      swift_unknownObjectRetain();

      v39 = sub_219BDE4D4();
      (*(*(v39 - 8) + 56))(v46, 1, 1, v39);
      v40 = sub_219BDEA34();
      (*(*(v40 - 8) + 56))(v48, 1, 1, v40);
      (*(v51 + 104))(v53, *MEMORY[0x277D32E60], v52);
      sub_218EA891C(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
      v41 = v47;
      sub_219BDE794();
      swift_getWitnessTable();
      v42 = v55;
      sub_219BDEB64();
      sub_219BDE734();
      sub_219BDEC64();

      v36 = v59;
      sub_219BDE724();
      (*(v57 + 8))(v42, v58);
      (*(v49 + 8))(v41, v50);
      (*(v45 + 8))(v26, v38);
      v35 = 0;
      goto LABEL_7;
    }

    sub_218EA8964(0);
    v32 = *(v31 + 48);
    v33 = sub_219BF1584();
    (*(*(v33 - 8) + 8))(&v29[v32], v33);
  }

  else
  {

    sub_218EA89D8(0);
    v29 += *(v34 + 48);
  }

  sub_218EA9308(v29, type metadata accessor for SharedWithYouFeedGapLocation);
  v35 = 1;
  v36 = v59;
LABEL_7:
  v43 = type metadata accessor for SharedWithYouFeedRouteModel(0);
  return (*(*(v43 - 8) + 56))(v36, v35, 1, v43);
}

uint64_t sub_218EA74A0(void *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  (*(v5 + 40))(*a1, v2, v4, v6, v5);
  sub_218EA8C20(0);
  sub_218EA891C(&unk_27CC12F90, sub_218EA8C20, MEMORY[0x277D6D890]);
  sub_219BE6E84();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = v5;
  v7[4] = v3;
  v7[5] = v2;
  v7[6] = v4;

  v8 = sub_219BE2E54();
  sub_219BE95D4();
  v9 = sub_219BE2F74();

  return v9;
}

uint64_t sub_218EA7648@<X0>(uint64_t a1@<X0>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  type metadata accessor for SharedWithYouFeedServiceConfig(0);
  sub_218EA891C(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig, &unk_219C438B8);
  if ((sub_219BEF394() & 1) != 0 && (v9 = *(sub_219BEF3E4() + 16), , !v9))
  {
    type metadata accessor for SharedWithYouFeedInteractor.Errors(0, a3, a4, v10);
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v11 = sub_219BE95D4();
    return (*(*(v11 - 8) + 16))(a5, a1, v11);
  }
}

void sub_218EA779C(double a1, uint64_t a2, uint64_t a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (qword_280E8D890 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v5 = MEMORY[0x277D83A80];
  *(v4 + 56) = MEMORY[0x277D839F8];
  *(v4 + 64) = v5;
  *(v4 + 32) = v6;
  sub_219BF6214();
  sub_219BE5314("SharedWithYou feed successfully loaded duration %fms", v7);
}

uint64_t sub_218EA78FC(void *a1, double a2)
{
  if (qword_280E8D890 != -1)
  {
    swift_once();
  }

  v3 = qword_280F61760;
  v4 = sub_219BF61F4();
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v6 = MEMORY[0x277D83A80];
  *(v5 + 56) = MEMORY[0x277D839F8];
  *(v5 + 64) = v6;
  *(v5 + 32) = v7;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v5 + 96) = MEMORY[0x277D837D0];
  *(v5 + 104) = sub_2186FC3BC();
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xE000000000000000;
  sub_219BE5314("Error while prewarming sharedWithYou feed with visible duration %fms, error=%{public}@", 86, 2, &dword_2186C1000, v3, v4, v5);

  return sub_218EA7A68(a1);
}

uint64_t sub_218EA7A68(void *a1)
{
  v3 = *v1;
  v4 = sub_219BF1584();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9;
  sub_218EA8D58(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[1] = a1;
  v14 = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  type metadata accessor for SharedWithYouFeedInteractor.Errors(0, *(v3 + 80), *(v3 + 88), v15);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    sub_219BF1B74();
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        if (qword_27CC089B0 != -1)
        {
          swift_once();
        }

        v17 = __swift_project_value_buffer(v4, qword_27CCD8F88);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v19 = Strong;
          (*(v5 + 16))(v10, v17, v4);
          v20 = (*(v5 + 80) + 24) & ~*(v5 + 80);
          v21 = swift_allocObject();
          *(v21 + 16) = v19;
          (*(v5 + 32))(v21 + v20, v10, v4);
          swift_unknownObjectRetain();
          sub_219BE3494();

          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      v22 = *(v5 + 32);
      v22(v7, v13, v4);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = swift_unknownObjectWeakLoadStrong();
        if (v23)
        {
          v24 = v23;
          (*(v5 + 16))(v10, v7, v4);
          v25 = (*(v5 + 80) + 24) & ~*(v5 + 80);
          v26 = swift_allocObject();
          *(v26 + 16) = v24;
          v22((v26 + v25), v10, v4);
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      return (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

char *sub_218EA7E54()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_218EA7F84()
{
  sub_218EA7E54();

  return swift_deallocClassInstance();
}

void sub_218EA8008(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  sub_219BDEC34();
  v6 = *(v5 + 88);
  v7 = *(v5 + 80);
  (*(v6 + 56))(a1, v7, v6);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = v6;
  v9[4] = v8;
  v9[5] = a3;
  sub_218EA8C20(0);
  sub_218EA891C(&unk_27CC12F90, sub_218EA8C20, MEMORY[0x277D6D890]);

  sub_219BE6EF4();
}

double sub_218EA81BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_219BE85F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v10 + 16))(v12, a1, v9);
    v14 = (*(v10 + 88))(v12, v9);
    v15 = *MEMORY[0x277D6DF98];
    v16 = (*(v10 + 8))(v12, v9);
    if (v14 == v15)
    {
      sub_218EA4E64(v16);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v19 = Strong;
        v20 = *(a3 + 16) == 0;
        type metadata accessor for SharedWithYouFeedInteractor(0, a4, a5, v18);

        sub_2197DFC9C(v20, v19);
        swift_unknownObjectRelease();
      }
    }

    sub_219BDEC84();
  }

  return result;
}

uint64_t sub_218EA83BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  refreshed = type metadata accessor for SharedWithYouFeedRefreshRequest(0);
  v8 = *(refreshed - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](refreshed - 8);
  v10 = *(a1 + *(*a1 + 120));
  v11 = CACurrentMediaTime();
  if (qword_280E8D890 != -1)
  {
    swift_once();
  }

  v12 = qword_280F61760;
  v13 = sub_219BF6214();
  sub_219BE5314("SharedWithYouFeed start refreshing", 34, 2, &dword_2186C1000, v12, v13, MEMORY[0x277D84F90], v20);
  MEMORY[0x28223BE20](v14);
  *(&v20 - 2) = v10;
  *(&v20 - 1) = a2;
  sub_218EA88B8(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_218EA9390(a2, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SharedWithYouFeedRefreshRequest);
  v15 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  sub_218EA93F8(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for SharedWithYouFeedRefreshRequest);
  v17 = sub_219BE2E54();
  type metadata accessor for SharedWithYouFeedRefreshResult(0);
  v18 = sub_219BE2F64();

  return v18;
}

void sub_218EA8638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 80);
  (*(v5 + 56))(a1, v6, v5);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v7;
  v8[5] = a4;
  sub_218EA8C20(0);
  sub_218EA891C(&unk_27CC12F90, sub_218EA8C20, MEMORY[0x277D6D890]);

  sub_219BE6EF4();
}

double sub_218EA87CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = *(a3 + 16) == 0;
      type metadata accessor for SharedWithYouFeedInteractor(0, a4, a5, v10);

      sub_2197DFC9C(v12, v11);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_218EA88B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218EA891C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218EA8964(uint64_t a1)
{
  if (!qword_27CC12F48)
  {
    type metadata accessor for SharedWithYouFeedGapLocation(255);
    sub_219BF1584();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC12F48);
    }
  }
}

void sub_218EA89D8(uint64_t a1)
{
  if (!qword_27CC12F50)
  {
    type metadata accessor for SharedWithYouFeedGapLocation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC12F50);
    }
  }
}

void sub_218EA8ABC(uint64_t a1)
{
  if (!qword_27CC12F80)
  {
    type metadata accessor for SharedWithYouFeedServiceConfig(255);
    sub_218EA891C(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig, &unk_219C438B8);
    v1 = sub_219BF0F94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC12F80);
    }
  }
}

double sub_218EA8B50(void *a1, uint64_t *a2)
{
  v5 = *(type metadata accessor for SharedWithYouFeedGapLocation(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 72) & ~*(v5 + 80));

  return sub_218EA6698(a1, a2, (v2 + 32), v6);
}

uint64_t type metadata accessor for SharedWithYouFeedFailedData(uint64_t a1)
{
  result = qword_27CC13030;
  if (!qword_27CC13030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218EA8C40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SharedWithYouFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for SharedWithYouFeedModel(255);
    v8[2] = sub_218EA891C(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C1903C);
    v8[3] = sub_218EA891C(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218EA8D58(uint64_t a1)
{
  if (!qword_27CC12FA0[0])
  {
    sub_2186F175C();
    v1 = sub_219BF1B54();
    if (!v2)
    {
      atomic_store(v1, qword_27CC12FA0);
    }
  }
}

uint64_t sub_218EA8E60()
{
  sub_219BF1584();

  return sub_219147D6C();
}

void sub_218EA8EE8(uint64_t a1)
{
  v16[1] = *v1;
  refreshed = type metadata accessor for SharedWithYouFeedRefreshRequest(0);
  MEMORY[0x28223BE20](refreshed);
  v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218C8AAD8(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v16[2] = v16[3];
  sub_218987294(0);
  sub_218EA891C(&unk_27CC12F70, sub_218987294, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v11 = sub_219462998();
  (*(v8 + 8))(v10, v7);
  if ((~v11 & 0xF000000000000007) != 0)
  {
    type metadata accessor for SharedWithYouFeedServiceConfig(0);
    sub_218EA891C(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig, &unk_219C438B8);

    v14 = sub_219BEE7A4();
    *v5 = a1;
    MEMORY[0x28223BE20](v14);
    v16[-2] = v1;
    v16[-1] = v5;
    type metadata accessor for SharedWithYouFeedRefreshResult(0);
    sub_219BE3204();
    sub_2187D9028();
    v15 = sub_219BF66A4();
    *(swift_allocObject() + 16) = a1;

    sub_219BE2F94();
    sub_21885AB78(v11);

    sub_218EA9308(v5, type metadata accessor for SharedWithYouFeedRefreshRequest);
  }

  else
  {
    if (qword_280E8D890 != -1)
    {
      swift_once();
    }

    v12 = qword_280F61760;
    v13 = sub_219BF61F4();
    sub_219BE5314("Shared With You feed attempting to refresh with a blueprint that has no cursor", 78, 2, &dword_2186C1000, v12, v13, MEMORY[0x277D84F90]);
  }
}

uint64_t sub_218EA9308(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218EA9390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218EA93F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218EA9478(uint64_t a1)
{
  v17[1] = *v1;
  refreshed = type metadata accessor for SharedWithYouFeedRefreshRequest(0);
  MEMORY[0x28223BE20](refreshed);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218C8AAD8(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v17[2] = v17[3];
  sub_218987294(0);
  sub_218EA891C(&unk_27CC12F70, sub_218987294, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v11 = sub_219462998();
  (*(v8 + 8))(v10, v7);
  if ((~v11 & 0xF000000000000007) != 0)
  {
    type metadata accessor for SharedWithYouFeedServiceConfig(0);
    sub_218EA891C(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig, &unk_219C438B8);

    v14 = sub_219BEE7A4();
    *v5 = a1;
    MEMORY[0x28223BE20](v14);
    v17[-2] = v1;
    v17[-1] = v5;
    type metadata accessor for SharedWithYouFeedRefreshResult(0);
    sub_219BE3204();
    sub_2187D9028();
    v15 = sub_219BF66A4();
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    *(v16 + 24) = a1;

    sub_219BE2F94();
    sub_21885AB78(v11);

    sub_218EA9308(v5, type metadata accessor for SharedWithYouFeedRefreshRequest);
  }

  else
  {
    if (qword_280E8D890 != -1)
    {
      swift_once();
    }

    v12 = qword_280F61760;
    v13 = sub_219BF61F4();
    sub_219BE5314("Shared With You feed attempting to refresh with a blueprint that has no cursor", 78, 2, &dword_2186C1000, v12, v13, MEMORY[0x277D84F90]);
  }
}

uint64_t objectdestroy_57Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_60Tm()
{
  v1 = (type metadata accessor for SharedWithYouFeedRefreshRequest(0) - 8);
  v2 = (*(*v1 + 80) + 24) & ~*(*v1 + 80);

  v3 = v1[7];
  v4 = sub_219BF0BD4();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

void sub_218EA9A44(uint64_t a1)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  v3 = [v2 indexPathsForVisibleItems];

  sub_219BDC104();
  v4 = sub_219BF5924();

  LOBYTE(v3) = sub_2190890C0(a1, v4);

  if ((v3 & 1) == 0)
  {
    sub_219BE8664();
    v5 = sub_219BE7BC4();

    v6 = sub_219BDC094();
    [v5 scrollToItemAtIndexPath:v6 atScrollPosition:2 animated:0];
  }
}

void sub_218EA9B64(uint64_t a1, uint64_t a2, char a3)
{
  v35 = a1;
  v5 = MEMORY[0x277D83D88];
  sub_218EA88B8(0, &unk_280EE9BB0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_219BDC104();
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v33 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EA88B8(0, &unk_27CC12F60, sub_218C40500, v5);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  sub_218C40500(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C8AAD8(0);
  v20 = v19;
  MEMORY[0x28223BE20](v19);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 1) == 0)
  {
    v31 = v9;
    v32 = v21;
    v30 = v3;
    sub_219BDEC74();
    sub_219BDEDC4();
    sub_219BEB1C4();

    if ((*(v16 + 48))(v13, 1, v15) == 1)
    {
      (*(v32 + 8))(v23, v20);
      v24 = &unk_27CC12F60;
      v25 = sub_218C40500;
      v26 = v13;
LABEL_6:
      sub_218EAA044(v26, v24, v25);
      return;
    }

    (*(v16 + 32))(v18, v13, v15);
    sub_219BEB2F4();
    v27 = v34;
    v28 = v31;
    if ((*(v34 + 48))(v8, 1, v31) == 1)
    {
      (*(v16 + 8))(v18, v15);
      (*(v32 + 8))(v23, v20);
      v24 = &unk_280EE9BB0;
      v25 = MEMORY[0x277CC9AF8];
      v26 = v8;
      goto LABEL_6;
    }

    v29 = v33;
    (*(v27 + 32))(v33, v8, v28);
    if (sub_219BDEC24())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          sub_218EA9A44(v29);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      (*(v27 + 8))(v29, v31);
    }

    else
    {
      (*(v27 + 8))(v29, v28);
    }

    (*(v16 + 8))(v18, v15);
    (*(v32 + 8))(v23, v20);
  }
}

uint64_t sub_218EAA044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218EA88B8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218EAA0DC(uint64_t a1)
{
  result = type metadata accessor for SharedWithYouFeedGapLocation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_218EAA1B8()
{
  result = qword_280E8E488;
  if (!qword_280E8E488)
  {
    sub_218805E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8E488);
  }

  return result;
}

void sub_218EAA230(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x21CEC1E40);
}

void sub_218EAA284(char a1, void *a2, uint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [Strong presentedViewController];
    if (v8)
    {
      v9 = v8;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        if (a2)
        {
          v10[4] = a2;
          v10[5] = a3;
          v10[0] = MEMORY[0x277D85DD0];
          v10[1] = 1107296256;
          v10[2] = sub_218793E0C;
          v10[3] = &block_descriptor_67;
          a2 = _Block_copy(v10);
        }

        [v7 dismissViewControllerAnimated:a1 & 1 completion:a2];
        _Block_release(a2);

        return;
      }
    }

    else
    {
      v9 = v7;
    }
  }

  if (a2)
  {
    (a2)();
  }
}

uint64_t sub_218EAA3C4()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocClassInstance();
}

double sub_218EAA3FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20 = MEMORY[0x277D84F90];
  v21 = a2;
  v5 = *(v2 + 16);
  if (*(a1 + 16) <= *(v5 + 16) >> 3)
  {
    goto LABEL_5;
  }

  v6 = sub_218EB4048(a1, v5);
  v5 = *(v6 + 16);
  if (v5)
  {
    while (1)
    {
      v7 = sub_21947D1C0(v5, 0);
      v8 = sub_2194ABD64(&v19, v7 + 4, v5, v6);
      sub_21892DE98(v19);
      if (v8 == v5)
      {
        break;
      }

      __break(1u);
LABEL_5:
      v19 = v5;

      sub_218EB3B08(a1);
      v6 = v19;
      v5 = *(v19 + 16);
      if (!v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:

    v7 = MEMORY[0x277D84F90];
  }

  sub_2191ED3E8(v7);
  v9 = *(v3 + 16);
  if (v9[2] <= *(a1 + 16) >> 3)
  {
    goto LABEL_11;
  }

  v10 = sub_218EB4048(v9, a1);

  v11 = *(v10 + 16);
  if (v11)
  {
    while (1)
    {
      v9 = sub_21947D1C0(v11, 0);
      v12 = sub_2194ABD64(&v19, v9 + 4, v11, v10);
      sub_21892DE98(v19);
      if (v12 == v11)
      {
        break;
      }

      __break(1u);
LABEL_11:
      v19 = a1;

      sub_218EB3B08(v9);

      v10 = v19;
      v11 = *(v19 + 16);
      if (!v11)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:

    v9 = MEMORY[0x277D84F90];
  }

  sub_2191ED3E8(v9);
  v13 = v20;
  v14 = sub_2187EDED8();
  v15 = *(v14 + 72);
  v16 = type metadata accessor for MagazineFeedBlueprintModifierFactory();
  v17 = v15(v13, v16, v14);

  v19 = v17;
  sub_218BB78F0(0);
  sub_2186D5500(&qword_280EE5620, sub_218BB78F0, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  *(v3 + 16) = a1;

  return result;
}

void *sub_218EAA6A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  result = sub_219BE1E34();
  if (!v11[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBDDB8, &protocol descriptor for MastheadModelProviderType, 1);
  result = sub_219BE1E34();
  if (v10[3])
  {
    v6 = type metadata accessor for MagazineFeedModule();
    v7 = objc_allocWithZone(v6);
    sub_218718690(v12, &v7[OBJC_IVAR___TSMagazineFeedModule_resolver]);
    *&v7[OBJC_IVAR___TSMagazineFeedModule_tracker] = v5;
    sub_218718690(v11, &v7[OBJC_IVAR___TSMagazineFeedModule_contextBuilder]);
    sub_218718690(v10, &v7[OBJC_IVAR___TSMagazineFeedModule_mastheadModelProvider]);
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v12);
    __swift_destroy_boxed_opaque_existential_1(v10);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    a2[3] = v6;
    a2[4] = &protocol witness table for MagazineFeedModule;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218EAA85C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91010, MEMORY[0x277D32BB8], 1);
  result = sub_219BE1DF4();
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2187EE748(0);
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      type metadata accessor for MagazineFeedSupplementaryDataProvider();
      v4 = swift_allocObject();
      sub_2186CB1F0(&v5, v4 + 16);
      *(v4 + 56) = v3;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218EAA958@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BEFD54();
  swift_allocObject();
  result = sub_219BEFD44();
  v4 = MEMORY[0x277D32A58];
  a1[3] = v2;
  a1[4] = v4;
  *a1 = result;
  return result;
}

uint64_t sub_218EAA9B0(void *a1)
{
  v2 = sub_219BEE714();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EB8AF8(0, &qword_280E91B30, MEMORY[0x277D32150], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v23 = sub_219BEE704();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF0644();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MagazineFeedServiceContext(0);
  MEMORY[0x28223BE20](v24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (result)
  {
    v15 = result;
    (*(v11 + 104))(v13, *MEMORY[0x277D32EF0], v10);
    (*(v7 + 104))(v9, *MEMORY[0x277D32110], v23);
    v16 = *MEMORY[0x277D32140];
    v17 = sub_219BEE734();
    v18 = *(v17 - 8);
    (*(v18 + 104))(v6, v16, v17);
    (*(v18 + 56))(v6, 0, 1, v17);
    (*(v26 + 104))(v25, *MEMORY[0x277D32130], v27);
    sub_219BEE744();
    swift_storeEnumTagMultiPayload();
    v19 = qword_280E8D920;
    v20 = *MEMORY[0x277D30B70];
    if (v19 != -1)
    {
      swift_once();
    }

    v21 = qword_280F617C8;
    v28 = v15;
    sub_2186ED33C(0, &qword_280E91570, type metadata accessor for MagazineFeedServiceConfigFetcher, sub_2186F7934, MEMORY[0x277D325E8]);
    swift_allocObject();
    v22 = v21;
    return sub_219BEF444();
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_218EAAE30(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC7BB0, &protocol descriptor for MagazineFeedStylerType, 1);
  result = sub_219BE1E34();
  if (!v73)
  {
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB3F50, &protocol descriptor for MagazineFeedEventHandlerType, 0);
  result = sub_219BE1E34();
  if (!v70)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF20C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF498(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE748(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDA0, MEMORY[0x277D34548], 1);
  result = sub_219BE1E34();
  if (!v69[3])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v56 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB4590, &protocol descriptor for FeedPaywallConfigFactoryType, 1);
  result = sub_219BE1E34();
  if (!v68)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v55 = v71;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD80, MEMORY[0x277D345A0], 1);
  result = sub_219BE1E34();
  if (!v65)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v54 = v3;
  sub_219BF4FF4();
  swift_allocObject();
  v53 = sub_219BF4FE4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v61)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = result;
  v65 = v6;
  v66 = sub_2186D5500(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  v64[0] = v7;
  sub_219BE6AE4();
  swift_allocObject();
  v8 = sub_219BE6AC4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218716B60(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v50 = result;
  v51 = v8;
  v52 = v5;
  v57 = v70;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5974();
  result = sub_219BE1E24();
  v49 = result;
  if (result)
  {
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
    v48[4] = v48;
    v10 = MEMORY[0x28223BE20](v9);
    v12 = (v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v67, v68);
    v48[3] = v48;
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v12;
    v20 = *v17;
    v21 = type metadata accessor for MagazineFeedStyler();
    v65 = v21;
    v66 = &off_282A604F8;
    v64[0] = v19;
    v22 = sub_2186D5500(&unk_280EE3FB8, sub_2187EF498, MEMORY[0x277D6E7F8]);
    v23 = type metadata accessor for FeedPaywallConfigFactory(0);
    v62 = v23;
    v63 = &off_282A9D640;
    v61 = v20;
    v24 = type metadata accessor for MagazineFeedViewController();
    v25 = objc_allocWithZone(v24);
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
    v48[2] = v48;
    v27 = MEMORY[0x28223BE20](v26);
    v29 = (v48 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29, v27);
    v31 = __swift_mutable_project_boxed_opaque_existential_1(&v61, v62);
    v48[1] = v48;
    v32 = MEMORY[0x28223BE20](v31);
    v34 = (v48 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34, v32);
    v36 = *v29;
    v37 = *v34;
    v60[3] = v21;
    v60[4] = &off_282A604F8;
    v60[0] = v36;
    v59[3] = v23;
    v59[4] = &off_282A9D640;
    v59[0] = v37;
    sub_218718690(v60, &v25[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_styler]);
    v38 = &v25[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_eventHandler];
    v40 = v54;
    v39 = v55;
    *v38 = v57;
    *(v38 + 1) = v39;
    *&v25[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_blueprintViewController] = v40;
    v41 = &v25[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_blueprintSelectionProvider];
    *v41 = v56;
    v41[1] = v22;
    *&v25[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_blueprintLayoutProvider] = v52;
    sub_218718690(v69, &v25[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_offlineAlertControllerFactory]);
    sub_218718690(v59, &v25[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_feedPaywallConfigFactory]);
    *&v25[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_sharingActivityProviderFactory] = v53;
    v42 = v50;
    *&v25[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_commandContainer] = v51;
    *&v25[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_newsActivityManager] = v42;
    *&v25[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_tipManager] = v49;
    v58.receiver = v25;
    v58.super_class = v24;
    swift_unknownObjectRetain();
    v43 = v40;

    v44 = objc_msgSendSuper2(&v58, sel_initWithNibName_bundle_, 0, 0);
    *(*(v44 + OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_eventHandler) + 24) = &off_282A40880;
    swift_unknownObjectWeakAssign();
    v45 = *(v44 + OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_blueprintViewController);
    v46 = v44;
    v47 = v45;
    sub_219BE8744();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v69);
    __swift_destroy_boxed_opaque_existential_1(v59);
    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(&v61);
    __swift_destroy_boxed_opaque_existential_1(v64);
    __swift_destroy_boxed_opaque_existential_1(v67);
    __swift_destroy_boxed_opaque_existential_1(v72);
    return v46;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_218EAB7D8(void **a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E8FF70, MEMORY[0x277D34270], 0);
  result = sub_219BE1E34();
  if (v5)
  {
    swift_getObjectType();
    v4 = v2;
    sub_219BF3EA4();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218EAB8A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21876A328(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineMoreActionsFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for MagazineFeedRouter();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(v12, (v9 + 3));
    v9[8] = v5;
    result = sub_2186CB1F0(&v10, (v9 + 9));
    v9[14] = v6;
    v9[15] = v7;
    a2[3] = v8;
    a2[4] = &off_282A2DF88;
    *a2 = v9;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_218EABA78(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineFeedViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_218EABAF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBB378, &protocol descriptor for MagazineFeedInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v28;
  if (!v28)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC7BB8, &protocol descriptor for MagazineFeedRouterType, 1);
  result = sub_219BE1E34();
  if (!v27)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC4688, &protocol descriptor for MagazineFeedTrackerType, 0);
  result = sub_219BE1E34();
  v7 = v24;
  if (v24)
  {
    v8 = v25;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v10 = MEMORY[0x28223BE20](v9);
    v12 = (v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = *v12;
    v15 = type metadata accessor for MagazineFeedRouter();
    v23[3] = v15;
    v23[4] = &off_282A2DF88;
    v23[0] = v14;
    type metadata accessor for MagazineFeedEventHandler();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v23, v15);
    v18 = MEMORY[0x28223BE20](v17);
    v20 = (v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = sub_218EB8A04(v5, v6, *v20, v7, v8, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v26);
    *a2 = v22;
    a2[1] = &off_282A5F5B8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218EABDF8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EB84B0, &protocol descriptor for MagazineFeedDataManagerType, 0);
  result = sub_219BE1E34();
  v39 = v49;
  if (!v49)
  {
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21876A328(0, &qword_280E90690, sub_2186F1660, &type metadata for MagazineFeedOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE404(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v28 = result;
  v30 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF1EC(0);
  result = sub_219BE1E24();
  v42 = result;
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  v41 = result;
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedSupplementaryDataProvider();
  result = sub_219BE1E24();
  v40 = result;
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v37 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = result;
  v26 = v50;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DDE0, &protocolRef_FCIssueReadingHistoryType);
  result = sub_219BE1E24();
  v36 = result;
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0, &protocol descriptor for OfflineIssueManagerType, 0);
  result = sub_219BE1E34();
  v25 = v47;
  if (!v47)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE89B0, MEMORY[0x277D302D8], 1);
  result = sub_219BE1DF4();
  if (!v46[3])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF554(0, &unk_280EE89D8, MEMORY[0x277D302B0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ECA980, &protocol descriptor for IssueRouteFactoryType, 1);
  result = sub_219BE1E34();
  if (!v45[3])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF6B8(0, &qword_280EE8CB0, &qword_280EC4878, &unk_219C4FCA8, MEMORY[0x277D2FF78]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v9 = result;
  v24 = v48;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF554(0, &qword_280EE8A10, MEMORY[0x277D30288]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  v35 = result;
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v33 = v9;
  v31 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  v32 = result;
  if (result)
  {
    sub_2186ED33C(0, &unk_280EC7BD0, type metadata accessor for MagazineFeedBlueprintModifierFactory, sub_2187EDED8, type metadata accessor for MagazineFeedInteractor);
    v23 = v11;
    v12 = objc_allocWithZone(v11);
    v13 = MEMORY[0x277D85000];
    *(v12 + *((*MEMORY[0x277D85000] & *v12) + 0x60) + 8) = 0;
    swift_unknownObjectWeakInit();
    v14 = (v12 + *((*v13 & *v12) + 0x78));
    *v14 = v39;
    v14[1] = v26;
    *(v12 + *((*v13 & *v12) + 0x80)) = v37;
    *(v12 + *((*v13 & *v12) + 0x68)) = v6;
    *(v12 + *((*v13 & *v12) + 0x70)) = v28;
    *(v12 + *((*v13 & *v12) + 0xE8)) = v42;
    *(v12 + *((*v13 & *v12) + 0x88)) = v41;
    *(v12 + *((*v13 & *v12) + 0x98)) = v40;
    *(v12 + *((*v13 & *v12) + 0xA0)) = v7;
    *(v12 + *((*v13 & *v12) + 0xA8)) = v36;
    v15 = (v12 + *((*v13 & *v12) + 0xB0));
    *v15 = v25;
    v15[1] = v24;
    sub_218718690(v46, v12 + *((*v13 & *v12) + 0xC0));
    *(v12 + *((*v13 & *v12) + 0x90)) = v31;
    sub_218718690(v45, v12 + *((*v13 & *v12) + 0xC8));
    *(v12 + *((*v13 & *v12) + 0xD0)) = v33;
    *(v12 + *((*v13 & *v12) + 0xD8)) = v10;
    *(v12 + *((*v13 & *v12) + 0xE0)) = v35;
    *(v12 + *((*v13 & *v12) + 0xF0)) = v32;
    ObjectType = swift_getObjectType();
    v27 = *(v24 + 56);
    swift_unknownObjectRetain();
    v38 = v37;

    v34 = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v27(ObjectType, v24);
    sub_219BE2184();

    sub_2186ED33C(0, qword_280E959A0, type metadata accessor for MagazineFeedBlueprintModifierFactory, sub_2187EDED8, type metadata accessor for MagazineFeedOfflineIssueIndicationUpdater);
    v16 = swift_allocObject();
    *(v16 + 16) = v43[0];
    *(v12 + *((*v13 & *v12) + 0xB8)) = v16;
    v44.receiver = v12;
    v44.super_class = v23;
    v17 = objc_msgSendSuper2(&v44, sel_init);
    *(v39 + OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_delegate + 8) = &off_282A45CC8;
    swift_unknownObjectWeakAssign();
    v18 = *(v17 + *((*v13 & *v17) + 0xB0) + 8);
    v19 = swift_getObjectType();
    v20 = *(v18 + 56);
    v21 = v17;
    swift_unknownObjectRetain();
    v20(v19, v18);
    swift_unknownObjectRelease();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v22 = sub_219BE2E54();
    sub_219BE21A4();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v45);
    result = __swift_destroy_boxed_opaque_existential_1(v46);
    *v30 = v21;
    v30[1] = &off_282A45D00;
    return result;
  }

LABEL_35:
  __break(1u);
  return result;
}

void *sub_218EAC968(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE73A0, MEMORY[0x277D6CD90], 1);
  result = sub_219BE1E34();
  if (!v6)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_2186CB1F0(&v5, v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_218EB88C4();
  sub_219BE29A4();
  __swift_destroy_boxed_opaque_existential_1(&v5);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  [result addObserver_];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &unk_280E8DDE0, &protocolRef_FCIssueReadingHistoryType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  [result addObserver_];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE6480, MEMORY[0x277D34EA8], 0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  swift_getObjectType();
  sub_218EB8960();
  sub_219BE3F54();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (result)
  {
    [result addAppConfigObserver_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v7);
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_218EACBE8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BED184();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v76 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v11 = result;
  v74 = v8;
  v75 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedServiceConfigFetcher();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = result;
  v73 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186F7814(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF2E8(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v14 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0, &protocol descriptor for SubscriptionServiceType, 0);
  result = sub_219BE1E34();
  v77 = v96;
  if (!v96)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v72 = v97;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED3940, &protocol descriptor for HistoryServiceType, 1);
  result = sub_219BE1E34();
  if (!v95)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E901D0, MEMORY[0x277D33CB0], 1);
  result = sub_219BE1E34();
  if (!v93[3])
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100, MEMORY[0x277D33F00], 1);
  result = sub_219BE1E34();
  if (!v92[3])
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v71 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21876A328(0, &qword_280E90690, sub_2186F1660, &type metadata for MagazineFeedOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECA4B0, &protocol descriptor for OfflineFeedPrimerType, 1);
  result = sub_219BE1E34();
  if (!v91[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v66 = v15;
  v67 = v13;
  v68 = v12;
  v69 = v11;
  v70 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED0D40, &protocol descriptor for OfflineFeaturesType, 1);
  result = sub_219BE1E34();
  if (!v90)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v16 = __swift_mutable_project_boxed_opaque_existential_1(v94, v95);
  v65 = &v60;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
  v64 = &v60;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = (&v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24, v22);
  v26 = *v19;
  v27 = *v24;
  v28 = type metadata accessor for HistoryService();
  v87 = v28;
  v88 = &off_282A6F3B0;
  v86[0] = v26;
  v29 = type metadata accessor for OfflineFeatures();
  v84 = v29;
  v85 = &off_282A442B0;
  v83[0] = v27;
  v61 = type metadata accessor for MagazineFeedDataManager();
  v30 = objc_allocWithZone(v61);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v86, v87);
  v63 = &v60;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = (&v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34, v32);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
  v62 = &v60;
  v37 = MEMORY[0x28223BE20](v36);
  v39 = (&v60 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39, v37);
  v41 = *v34;
  v42 = *v39;
  v82[3] = v28;
  v82[4] = &off_282A6F3B0;
  v81[4] = &off_282A442B0;
  v82[0] = v41;
  v81[3] = v29;
  v81[0] = v42;
  *&v30[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v43 = OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_accessQueue;
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v45 = v74;
  v44 = v75;
  v46 = v76;
  (*(v74 + 104))(v76, *MEMORY[0x277D851B8], v75);
  v47 = sub_219BF66E4();
  (*(v45 + 8))(v46, v44);
  *&v30[v43] = v47;
  v48 = OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_lastRefreshDate;
  v49 = sub_219BDBD34();
  (*(*(v49 - 8) + 56))(v73, 1, 1, v49);
  sub_218EB8AF8(0, &qword_280EE66B8, sub_2186DCF58, MEMORY[0x277D6CFA0]);
  swift_allocObject();
  *&v30[v48] = sub_219BE3484();
  v50 = OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager__persistedConfigurationDate;
  if (qword_280EE97B0 != -1)
  {
    swift_once();
  }

  sub_2186ED33C(0, &qword_280EE90F0, MEMORY[0x277CC9578], sub_21871DBD4, MEMORY[0x277D6D070]);
  swift_allocObject();

  *&v30[v50] = sub_219BDC914();
  v51 = v68;
  *&v30[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_feedServiceContextFactory] = v69;
  *&v30[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_feedServiceConfigFetcher] = v51;
  *&v30[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_feedManager] = v67;
  v52 = v72;
  *&v30[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_feedPluginManager] = v71;
  v53 = &v30[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_subscriptionService];
  *v53 = v77;
  *(v53 + 1) = v52;
  sub_218718690(v82, &v30[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_historyService]);
  sub_218718690(v93, &v30[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_puzzleStatsService]);
  sub_218718690(v92, &v30[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_puzzleHistoryService]);
  v54 = v66;
  *&v30[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_offlineManager] = v66;
  sub_218718690(v91, &v30[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_offlineFeedPrimer]);
  sub_218718690(v81, &v30[OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_offlineFeatures]);
  v80.receiver = v30;
  v80.super_class = v61;

  swift_unknownObjectRetain();
  v76 = v54;
  v55 = objc_msgSendSuper2(&v80, sel_init);
  sub_2186D5500(qword_280EC4980, type metadata accessor for MagazineFeedDataManager, &unk_219CCF138);
  v56 = v55;

  sub_219BEE504();

  v57 = *__swift_project_boxed_opaque_existential_1((v56 + OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_historyService), *(v56 + OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_historyService + 24));
  v58 = v56;
  sub_2187EA26C(v58, v57, &off_282A9F8F8);

  sub_218718690(v58 + OBJC_IVAR____TtC7NewsUI223MagazineFeedDataManager_puzzleHistoryService, v79);
  __swift_project_boxed_opaque_existential_1(v79, v79[3]);
  sub_2186D5500(&qword_280EC4978, type metadata accessor for MagazineFeedDataManager, &unk_219CCF068);
  sub_219BF3784();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v91);
  __swift_destroy_boxed_opaque_existential_1(v92);
  __swift_destroy_boxed_opaque_existential_1(v93);
  __swift_destroy_boxed_opaque_existential_1(v81);
  __swift_destroy_boxed_opaque_existential_1(v82);
  __swift_destroy_boxed_opaque_existential_1(v79);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v89);
  result = __swift_destroy_boxed_opaque_existential_1(v94);
  v59 = v70;
  *v70 = v58;
  v59[1] = &off_282A9F928;
  return result;
}

void *sub_218EAD800@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedModelFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_2186ED33C(0, &unk_280E90480, type metadata accessor for MagazineFeedModelFactory, sub_218EB87F4, MEMORY[0x277D33858]);
  swift_allocObject();
  sub_219BF2444();
  sub_218EB8828();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC4688, &protocol descriptor for MagazineFeedTrackerType, 0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BF1D64();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BF26E4();
    swift_allocObject();
    result = sub_219BF26D4();
    v5 = MEMORY[0x277D339B8];
    *a2 = result;
    a2[1] = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218EAD9E0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEE244();
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for MagazineFeedModelFactory();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218EADA7C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAC5E0, &protocol descriptor for MagazineFeedSectionFactoryType, 1);
  result = sub_219BE1E34();
  if (!v29)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedModelFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0, &protocol descriptor for SubscriptionServiceType, 0);
  result = sub_219BE1E34();
  v4 = v26;
  if (v26)
  {
    v5 = v27;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v25[3] = &type metadata for MagazineFeedSectionFactory;
    v25[4] = &off_282A93E68;
    v11 = swift_allocObject();
    v25[0] = v11;
    v12 = v9[3];
    v11[3] = v9[2];
    v11[4] = v12;
    v13 = v9[5];
    v11[5] = v9[4];
    v11[6] = v13;
    v14 = v9[1];
    v11[1] = *v9;
    v11[2] = v14;
    type metadata accessor for MagazineFeedBlueprintModifierFactory();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v25, &type metadata for MagazineFeedSectionFactory);
    v17 = MEMORY[0x28223BE20](v16);
    v19 = (v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v15[5] = &type metadata for MagazineFeedSectionFactory;
    v15[6] = &off_282A93E68;
    v21 = swift_allocObject();
    v15[2] = v21;
    v22 = v19[3];
    v21[3] = v19[2];
    v21[4] = v22;
    v23 = v19[5];
    v21[5] = v19[4];
    v21[6] = v23;
    v24 = v19[1];
    v21[1] = *v19;
    v21[2] = v24;
    v15[7] = v3;
    v15[8] = v4;
    v15[9] = v5;
    __swift_destroy_boxed_opaque_existential_1(v25);
    __swift_destroy_boxed_opaque_existential_1(v28);
    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218EADD84@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECA990, &protocol descriptor for IssueModelFactoryType, 1);
  result = sub_219BE1E34();
  if (!v11)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedModelFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECE3A0, &protocol descriptor for MyMagazinesStoreType, 1);
  result = sub_219BE1E34();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E350, 0x277D31340);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = &type metadata for MagazineFeedSectionFactory;
    a2[4] = &off_282A93E68;
    v7 = swift_allocObject();
    *a2 = v7;
    sub_2186CB1F0(&v10, v7 + 16);
    *(v7 + 56) = v5;
    result = sub_2186CB1F0(&v8, v7 + 64);
    *(v7 + 104) = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218EADF2C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE318(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2187EE4C0(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2187EE404(0);
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218EAE010(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2187EEE20(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6[0] = result;
  sub_2187EF0F8(0, &unk_280EE4550, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_2186D5500(&unk_280EE3BF8, sub_2187EEE20, MEMORY[0x277D6EAC8]);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186EFEF0(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6[0] = result;
  swift_allocObject();
  sub_2186D5500(&qword_280E94A68, sub_2186EFEF0, &unk_219C82C38);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E91280, MEMORY[0x277D32868], 1);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_2186CB1F0(&v4, v6);
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_2187EE404(0);
    sub_219BEFA74();
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218EAE2A4(void *a1)
{
  sub_218EB8AF8(0, &qword_280EE3A90, MEMORY[0x277D6EB30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EEF64(0, &qword_280EE4238, sub_2187EF004, sub_2187EEB7C, MEMORY[0x277D6E7B0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186ED33C(0, &unk_280EE4158, sub_2187EE748, sub_2187EEB48, MEMORY[0x277D6E7C8]);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2187EEE20(0);
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_218EAE4C0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_219BE9534();
  v4 = sub_219BE1DE4();
  if (v4)
  {
    v11 = v3;
    v12 = MEMORY[0x277D6E678];
    *&v10 = v4;
    sub_219BEA494();
    __swift_destroy_boxed_opaque_existential_1(&v10);
    v5 = sub_219BE99D4();
    swift_allocObject();
    v6 = sub_219BE99C4();
    v11 = v5;
    v12 = MEMORY[0x277D6E7D8];
    *&v10 = v6;
    sub_219BEA494();
    __swift_destroy_boxed_opaque_existential_1(&v10);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v7 = sub_219BF0214();
    sub_218718690(a2, &v10);
    v8 = swift_allocObject();
    sub_2186CB1F0(&v10, v8 + 16);
    v9 = sub_219BE1E04();

    if (v9)
    {
      v11 = v7;
      v12 = sub_2186D5500(&unk_280E90FE0, MEMORY[0x277D32C00], MEMORY[0x277D32BF8]);
      *&v10 = v9;
      sub_219BEA494();
      __swift_destroy_boxed_opaque_existential_1(&v10);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_218EAE69C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE748(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (v3)
  {
    sub_2186ED33C(0, &unk_280EE4158, sub_2187EE748, sub_2187EEB48, MEMORY[0x277D6E7C8]);
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218EAE888(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186ED33C(0, &qword_280EE4610, sub_2187EE318, sub_2187EEB14, MEMORY[0x277D6E388]);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218EB8758();
      sub_219BEA1E4();
      swift_allocObject();
      return sub_219BEA1D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218EAE9E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE5CC(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
  result = sub_219BE1E34();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186ED33C(0, &unk_280EE4830, sub_2187EE5CC, sub_2187EEDEC, MEMORY[0x277D6E068]);
  result = sub_219BE1E24();
  if (result)
  {
    sub_218EB86B0();
    sub_2187EE4C0(0);
    swift_allocObject();
    return sub_219BE72C4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218EAEB68(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEA1E4();
  sub_219BE1DE4();
  sub_2187EEF64(0, &qword_280EE4238, sub_2187EF004, sub_2187EEB7C, MEMORY[0x277D6E7B0]);
  swift_allocObject();
  return sub_219BE9954();
}

uint64_t sub_218EAEC64(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

void sub_218EAECA8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  sub_218718690(a1, &v26);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_2186CB1F0(&v26, v4 + 24);

  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BF44C4();
  v6 = sub_219BE1E24();
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  sub_219BE1E34();
  if (!v27)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedEmbeddedSupplementaryBuilder();
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    v10 = __swift_mutable_project_boxed_opaque_existential_1(&v26, v27);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v16 = type metadata accessor for BaseStyler(0);
    v25[3] = v16;
    v17 = sub_2186D5500(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v25[4] = v17;
    v25[0] = v15;
    type metadata accessor for MagazineFeedBlueprintLayoutBuilder();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v25, v16);
    v20 = MEMORY[0x28223BE20](v19);
    v22 = (v25 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = *v22;
    v18[7] = v16;
    v18[8] = v17;
    v18[3] = v7;
    v18[4] = v24;
    v18[2] = v5;
    v18[9] = v9;
    __swift_destroy_boxed_opaque_existential_1(v25);

    __swift_destroy_boxed_opaque_existential_1(&v26);
    return;
  }

LABEL_11:
  __break(1u);
}

void *sub_218EAF090(void *a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_219BDFF94();
  swift_allocObject();

  v6 = sub_219BDFF84();
  v9 = v5;
  v10 = sub_2186D5500(&qword_280EE8500, MEMORY[0x277D2E280], MEMORY[0x277D2E278]);
  v8[0] = v6;
  sub_2186C709C(0, &unk_280E91780, MEMORY[0x277D32450], 1);
  sub_219BE1BA4();
  __swift_destroy_boxed_opaque_existential_1(v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_2186C709C(0, &unk_280E91280, MEMORY[0x277D32868], 1);
  result = sub_219BE1E34();
  if (v9)
  {
    sub_219BE1BA4();
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}