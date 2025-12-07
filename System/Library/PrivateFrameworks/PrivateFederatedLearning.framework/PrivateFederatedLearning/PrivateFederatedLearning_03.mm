uint64_t sub_21A40D020(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + *(*a4 + 168));
  if (*(v5 + 16))
  {
    v8 = result;

    v9 = sub_21A3DCA2C(v8, a2);
    if (v10)
    {
      v11 = *(*(v5 + 56) + 8 * v9);

      v12 = sub_21A40FEB8(a3, v8, a2, v11);

      if (v4)
      {
        return result;
      }

      if (v12[2])
      {
        sub_21A404DB4(v12);
      }
    }
  }

  return result;
}

uint64_t sub_21A40D12C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + *(*v2 + 144));
  v6 = *(v2 + *(*v2 + 184));
  v7 = *(*v2 + 80);

  v8 = sub_21A412368(a1, a2, v5, v6, v7);

  return v8;
}

unint64_t sub_21A40D208(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + *(*v2 + 160)) + 16))
  {

    sub_21A3DCA2C(a1, a2);
    if (v5)
    {

      if (*(*(v2 + *(*v2 + 136)) + 16))
      {

        sub_21A3DCA2C(a1, a2);
        if (v6)
        {

          v7 = sub_21A4513B4();
          v8 = MEMORY[0x277D837D0];
          swift_getTupleTypeMetadata2();
          v9 = sub_21A451334();
          sub_21A411744(v9, v8, v7, MEMORY[0x277D837E0]);

          MEMORY[0x28223BE20](v10);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284A0, &qword_21A4560F0);
          sub_21A450F94();
          sub_21A412968();
          sub_21A4512B4();

          return v16;
        }
      }
    }

    else
    {
    }
  }

  v12 = sub_21A4513B4();
  v13 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v14 = sub_21A451334();
  v15 = sub_21A411744(v14, v13, v12, MEMORY[0x277D837E0]);

  return v15;
}

uint64_t sub_21A40D4CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = a2[1];
  result = swift_beginAccess();
  if (*(*(a3 + 56) + 16))
  {

    sub_21A3DCA2C(v6, v7);
    if (v9)
    {

      sub_21A4397E8(a4, a4);

      sub_21A4513B4();
      sub_21A450F94();
      sub_21A450FB4();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21A40D5F4(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v13 = sub_21A451614();
  if (!v13)
  {
    sub_21A3DCAF8();
    v17 = swift_allocError();
    *v18 = 0;
    result = swift_willThrow();
    *a7 = v17;
    return result;
  }

  v14 = v13;
  v15 = *a3;

  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a2 < 0 || (a2 & 0x4000000000000000) != 0))
  {
    if (sub_21A451374())
    {
      sub_21A4517B4();
      swift_getWitnessTable();
      sub_21A4513C4();
      v20 = swift_unknownObjectRetain();
      v16 = MEMORY[0x21CEDA060](v20, a5);

      goto LABEL_14;
    }

    v16 = 0;
  }

  else
  {

    if (_swift_isClassOrObjCExistentialType())
    {
      v16 = ((*(*(a5 - 8) + 80) + 32) & ~*(*(a5 - 8) + 80)) + (a2 & 0xFFFFFFFFFFFFFF8);
    }

    else
    {
      v16 = a2 + ((*(*(a5 - 8) + 80) + 32) & ~*(*(a5 - 8) + 80));
    }
  }

  if ((_swift_isClassOrObjCExistentialType() & 1) != 0 && (a2 < 0 || (a2 & 0x4000000000000000) != 0))
  {
    swift_unknownObjectRetain();
    if (v16)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  _swift_isClassOrObjCExistentialType();

  if (!v16)
  {
LABEL_13:
    v16 = (~*(*(a5 - 8) + 80) | 0xFFFFFF00);
  }

LABEL_14:
  static PFLUtils.copy<A>(from:to:count:)(v16, v14 + *(*(a5 - 8) + 72) * v15, a4, a5, a6);
  return swift_unknownObjectRelease();
}

uint64_t *sub_21A40D894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, unsigned __int8 *a7, int a8)
{
  v10 = v8;
  v151 = a6;
  v152 = a8;
  v153 = a4;
  v16 = *v10;
  v150 = *(*(*v10 + 80) - 8);
  v17 = *(v150 + 64);
  v18 = MEMORY[0x28223BE20](a1);
  v147 = v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v149 = v125 - v19;
  v154 = *(v16 + 88);
  v148 = *(v154 + 16);
  v155 = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v24 = *a7;
  v25 = *(v10 + *(v16 + 160));
  if (!*(v25 + 16))
  {
    goto LABEL_12;
  }

  v146 = v24;
  v144 = v125 - v23;
  v145 = v22;

  v26 = a1;
  v27 = sub_21A3DCA2C(a1, a2);
  if ((v28 & 1) == 0)
  {

LABEL_12:
    sub_21A3DCAA4();
    swift_allocError();
    *v44 = 18;
    return swift_willThrow();
  }

  v143 = a2;
  v29 = *(*(v25 + 56) + 8 * v27);

  v30 = *(v10 + *(*v10 + 168));
  if (!*(v30 + 16))
  {
LABEL_14:
    sub_21A3DCAA4();
    swift_allocError();
    v47 = 46;
LABEL_20:
    *v46 = v47;
    swift_willThrow();
  }

  v31 = v26;
  v32 = sub_21A3DCA2C(v26, v143);
  if ((v33 & 1) == 0)
  {

    goto LABEL_14;
  }

  v142 = *(*(v30 + 56) + 8 * v32);

  v34 = *(v10 + *(*v10 + 144));
  if (!*(v34 + 16))
  {
LABEL_19:

    sub_21A3DCAA4();
    swift_allocError();
    v47 = 44;
    goto LABEL_20;
  }

  v35 = sub_21A3DCA2C(v26, v143);
  if ((v36 & 1) == 0 || (v141 = a3, v37 = *(*(v34 + 56) + 8 * v35), , , v38 = *(v10 + *(*v10 + 152)), !*(v38 + 16)))
  {
LABEL_18:

    goto LABEL_19;
  }

  v140 = v37;

  v39 = sub_21A3DCA2C(v26, v143);
  if ((v40 & 1) == 0)
  {

    goto LABEL_18;
  }

  v41 = *(*(v38 + 56) + 8 * v39);

  v42 = v142;
  v43 = sub_21A3E70C8(v142);
  if (v9)
  {
  }

  v48 = v43;
  v139 = v41;
  result = sub_21A4129CC(v141, v153, a5, v42, v29, v43, v155);
  if (!v48)
  {
    goto LABEL_108;
  }

  if (a5 == 0x8000000000000000 && v48 == -1)
  {
LABEL_110:
    __break(1u);
  }

  else
  {
    v134 = v48;
    v129 = a5 / v48;
    v162 = sub_21A4113F8(0, a5 / v48, 1);
    v49 = v155;
    v161 = sub_21A451334();
    result = sub_21A451334();
    v160 = result;
    if (v152)
    {

      v50 = *(v10 + *(*v10 + 144));
      v51 = *(v10 + *(*v10 + 184));

      v138 = v51;
      v52 = v49;
      v53 = v154;
      v54 = sub_21A412368(v31, v143, v50, v51, v52);

      v161 = v54;
    }

    else
    {
      v53 = v154;
    }

    v55 = v146;
    if (!v151)
    {
LABEL_92:

LABEL_93:
    }

    if ((v129 & 0x8000000000000000) == 0)
    {
      v126 = (v150 + 8);
      v135 = v141 + 64;
      v125[1] = v53 + 32;
      v56 = 0;
      v136 = v29;
      while (1)
      {
        v130 = v56;
        if (v152)
        {

          swift_getAssociatedConformanceWitness();
          sub_21A451A64();
          v57 = v149;
          v58 = v155;
          sub_21A451994();
          v59 = sub_21A451374();
          v60 = sub_21A3DCD0C(v57, v59, v58);
          v61 = v57;
          v56 = v130;
          (*v126)(v61, v58);
          v55 = v146;
          v160 = v60;
        }

        if (v55)
        {
          v138 = v162;
          v62 = v162[2];
          v63 = v62 - 2;
          if (v62 >= 2)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v138 = sub_21A410FA4(v138);
            }

            v64 = 0;
            v65 = v138 + 4;
            while (1)
            {
              v157 = 0;
              result = MEMORY[0x21CEDB240](&v157, 8);
              v66 = (v157 * v62) >> 64;
              if (v62 > v157 * v62)
              {
                v67 = -v62 % v62;
                if (v67 > v157 * v62)
                {
                  do
                  {
                    v157 = 0;
                    result = MEMORY[0x21CEDB240](&v157, 8);
                  }

                  while (v67 > v157 * v62);
                  v66 = (v157 * v62) >> 64;
                }
              }

              v68 = __OFADD__(v64, v66);
              v69 = v64 + v66;
              if (v68)
              {
                break;
              }

              if (v64 != v69)
              {
                v70 = v138[2];
                if (v64 >= v70)
                {
                  goto LABEL_103;
                }

                if (v69 >= v70)
                {
                  goto LABEL_104;
                }

                v71 = v65[v64];
                v65[v64] = v65[v69];
                v65[v69] = v71;
              }

              --v62;
              v114 = v64++ == v63;
              if (v114)
              {
                v162 = v138;
                goto LABEL_50;
              }
            }

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
            goto LABEL_110;
          }

LABEL_50:
          v56 = v130;
        }

        if (v129)
        {
          v131 = sub_21A4513B4();
          v72 = 0;
          do
          {
            v133 = v72;
            v128 = v72 + 1;
            v73 = 1 << *(v141 + 32);
            if (v73 < 64)
            {
              v74 = ~(-1 << v73);
            }

            else
            {
              v74 = -1;
            }

            v75 = v74 & *(v141 + 64);
            v76 = (v73 + 63) >> 6;

            v77 = 0;
            v132 = v76;
            while (v75)
            {
              v78 = v77;
LABEL_62:
              v79 = (*(v141 + 48) + ((v78 << 10) | (16 * __clz(__rbit64(v75)))));
              v81 = *v79;
              v80 = v79[1];
              v157 = *v79;
              v158 = v80;
              swift_bridgeObjectRetain_n();
              sub_21A450FA4();
              v82 = v80;

              if (!v159)
              {

                sub_21A3DCAA4();
                swift_allocError();
                *v123 = 10;
                swift_willThrow();

LABEL_100:
              }

              v84 = v159;
              v138 = v125;
              MEMORY[0x28223BE20](v83);
              v137 = &v125[-12];
              v85 = v154;
              v125[-10] = v155;
              v125[-9] = v85;
              v125[-8] = v136;
              v125[-7] = v81;
              v86 = v153;
              v125[-6] = v82;
              v125[-5] = v86;
              v125[-4] = v142;
              v125[-3] = &v162;
              v87 = v134;
              v125[-2] = v133;
              v125[-1] = v87;
              v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
              sub_21A3DA2A0(sub_21A412DFC, v137, v84, v155, MEMORY[0x277D84F78] + 8, v88, MEMORY[0x277D84950], &v157);
              v75 &= v75 - 1;

              v77 = v78;
              v76 = v132;
            }

            while (1)
            {
              v78 = v77 + 1;
              if (__OFADD__(v77, 1))
              {
                __break(1u);

                goto LABEL_93;
              }

              if (v78 >= v76)
              {
                break;
              }

              v75 = *(v135 + 8 * v78);
              ++v77;
              if (v75)
              {
                goto LABEL_62;
              }
            }

            v89 = sub_21A3E536C(MEMORY[0x277D84F90]);
            v138 = sub_21A40765C(v89);

            if (v152)
            {
              v90 = *(v10 + *(*v10 + 152));

              v92 = v154;
              v91 = v155;
              v93 = sub_21A412368(v31, v143, v90, v138, v155);

              v157 = v93;
              static PFLUtils.inplaceSub<A>(_:_:)(&v157, v161, v91, v92);
              static PFLUtils.inplaceAdd<A>(_:_:)(&v160, v157, v91, v92);

              v56 = v130;
            }

            else
            {
              v94 = v140;
              v56 = v130;
              v127 = *(v140 + 16);
              if (v127)
              {
                v95 = 0;
                v96 = 0;
                while (1)
                {
                  if (v96 >= *(v94 + 16))
                  {
                    goto LABEL_105;
                  }

                  v97 = *(v139 + 16);
                  if (v96 == v97)
                  {
                    goto LABEL_81;
                  }

                  if (v96 >= v97)
                  {
                    goto LABEL_106;
                  }

                  v137 = v96;
                  v98 = v94 + v95;
                  v99 = *(v94 + v95 + 40);
                  v100 = v138;
                  if (!v138[2])
                  {

                    goto LABEL_97;
                  }

                  v133 = *(v98 + 32);
                  v132 = v95;
                  v101 = *(v139 + v95 + 32);
                  v102 = *(v139 + v95 + 40);
                  v103 = v99;

                  v104 = sub_21A3DCA2C(v101, v102);
                  v106 = v105;

                  if ((v106 & 1) == 0)
                  {
                    break;
                  }

                  v107 = *(v100[7] + 8 * v104);
                  v108 = *(v10 + *(*v10 + 184));
                  if (!*(v108 + 16))
                  {
                    break;
                  }

                  v109 = sub_21A3DCA2C(v133, v103);
                  v111 = v110;

                  if ((v111 & 1) == 0)
                  {

                    goto LABEL_99;
                  }

                  v112 = *(*(v108 + 56) + 8 * v109);

                  if (!v17)
                  {
                    goto LABEL_107;
                  }

                  v113 = *(v107 + 32);
                  v114 = v113 == 0x8000000000000000 && v17 == -1;
                  v94 = v140;
                  v56 = v130;
                  if (v114)
                  {
                    goto LABEL_109;
                  }

                  v96 = (v137 + 1);
                  static PFLUtils.copy<A>(from:to:count:)(*(v107 + 24), *(v112 + 24), v113 / v17, v155, v154);

                  v95 = v132 + 16;
                  if (v127 == v96)
                  {
                    goto LABEL_81;
                  }
                }

LABEL_97:

LABEL_99:

                sub_21A3DCAA4();
                swift_allocError();
                *v124 = 44;
                swift_willThrow();
                goto LABEL_100;
              }

LABEL_81:
            }

            v72 = v128;
          }

          while (v128 != v129);
        }

        if (v152)
        {
          v115 = v154;
          v116 = v155;
          v117 = v147;
          (*(v154 + 32))(v129, v155, v154);
          static PFLUtils.inplaceDiv<A>(_:_:)(&v160, v117, v116, v115);
          v138 = v160;
          static PFLUtils.inplaceAdd<A>(_:_:)(&v161, v160, v116, v115);
          v159 = 0;
          sub_21A4513B4();
          sub_21A451324();
          v118 = v161;
          if (_swift_isClassOrObjCExistentialType())
          {
            v119 = v118 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v119 = v118;
          }

          v120 = *(v119 + 16);
          if (_swift_isClassOrObjCExistentialType())
          {
            v121 = v118 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v121 = v118;
          }

          v157 = v121 + ((*(v150 + 80) + 32) & ~*(v150 + 80));
          v122 = v157;
          v158 = v120;
          sub_21A40ED0C(&v157, v140, v10, &v159, &v156);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
          sub_21A3DC9D4(&v157, v122, v120, &v161, v116);
          (*v126)(v117, v116);
          v56 = v130;
        }

        ++v56;
        v55 = v146;
        if (v56 == v151)
        {
          goto LABEL_92;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A40EA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  v19 = sub_21A451014();
  if (!v19)
  {
    sub_21A3DCAF8();
    v35 = swift_allocError();
    *v36 = 0;
LABEL_17:
    result = swift_willThrow();
    goto LABEL_18;
  }

  v20 = v19;
  swift_beginAccess();
  v21 = *(a3 + 48);
  if (!*(v21 + 16))
  {
LABEL_16:
    sub_21A3DCAA4();
    v35 = swift_allocError();
    *v37 = 10;
    goto LABEL_17;
  }

  v22 = sub_21A3DCA2C(a4, a5);
  if ((v23 & 1) == 0)
  {

    goto LABEL_16;
  }

  v40 = *(*(v21 + 56) + 8 * v22);

  if (*(a6 + 16))
  {
    result = sub_21A3DCA2C(a4, a5);
    if (v25)
    {
      v26 = a12;
      v27 = a9;
      v28 = *(*(a6 + 56) + 8 * result);
      if (*(a7 + 16))
      {
        result = sub_21A3DCA2C(a4, a5);
        v27 = a9;
        v26 = a12;
        if (v29)
        {
          if ((a9 & 0x8000000000000000) == 0)
          {
            if (*(*a8 + 16) > a9)
            {
              v30 = *(*a8 + 8 * a9 + 32);
              v31 = v28 * v30;
              if ((v28 * v30) >> 64 == (v28 * v30) >> 63)
              {
                if ((v31 * a10) >> 64 == (v31 * a10) >> 63)
                {
                  v32 = v28 * a10;
                  if ((v28 * a10) >> 64 == (v28 * a10) >> 63)
                  {
                    v33 = *(*(v40 + 32) + 24);
                    v34 = v20 + *(*(a11 - 8) + 72) * v31 * a10;
LABEL_25:
                    static PFLUtils.copy<A>(from:to:count:)(v34, v33, v32, a11, v26);
                  }

                  goto LABEL_33;
                }

LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
                return result;
              }

LABEL_31:
              __break(1u);
              goto LABEL_32;
            }

LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      if ((v27 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (*(*a8 + 16) > v27)
      {
        v39 = *(*a8 + 8 * v27 + 32);
        if ((v28 * v39) >> 64 == (v28 * v39) >> 63)
        {
          v34 = v20 + *(*(a11 - 8) + 72) * v28 * v39;
          v33 = *(*(v40 + 32) + 24);
          v32 = v28;
          goto LABEL_25;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  sub_21A3DCAA4();
  v35 = swift_allocError();
  *v38 = 10;
  swift_willThrow();

LABEL_18:
  *a13 = v35;
  return result;
}

uint64_t sub_21A40ED0C(void *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v29 = *a3;
  v30 = *(*a3 + 80);
  result = sub_21A451614();
  v28 = result;
  if (result)
  {
    v10 = *(a2 + 16);
    if (v10)
    {
      v27 = a5;
      v11 = v30 - 8;
      for (i = (a2 + 40); ; i += 2)
      {
        v13 = *(a3 + *(*a3 + 184));
        if (!*(v13 + 16))
        {
          goto LABEL_16;
        }

        v15 = *(i - 1);
        v14 = *i;

        v16 = sub_21A3DCA2C(v15, v14);
        v18 = v17;

        if ((v18 & 1) == 0)
        {

LABEL_16:
          sub_21A3DCAA4();
          v25 = swift_allocError();
          v26 = 44;
          a5 = v27;
          goto LABEL_17;
        }

        v19 = *(*(v13 + 56) + 8 * v16);

        v20 = *(v19 + 32);
        v21 = *(*v11 + 64);
        if (!v21)
        {
          break;
        }

        if (v20 == 0x8000000000000000 && v21 == -1)
        {
          goto LABEL_21;
        }

        v23 = v20 / v21;
        static PFLUtils.copy<A>(from:to:count:)(v28 + *(*v11 + 72) * *a4, *(v19 + 24), v20 / v21, v30, *(v29 + 88));

        if (__OFADD__(*a4, v23))
        {
          goto LABEL_20;
        }

        *a4 += v23;
        if (!--v10)
        {
          return result;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
    }
  }

  else
  {
    sub_21A3DCAF8();
    v25 = swift_allocError();
    v26 = 0;
LABEL_17:
    *v24 = v26;
    result = swift_willThrow();
    *a5 = v25;
  }

  return result;
}

void *sub_21A40EF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = v5;
  v8 = *v5;
  v9 = *(v5 + *(*v5 + 160));
  if (!*(v9 + 16))
  {
    goto LABEL_8;
  }

  v15 = sub_21A3DCA2C(a1, a2);
  if ((v16 & 1) == 0)
  {

LABEL_8:
    sub_21A3DCAA4();
    swift_allocError();
    *v25 = 19;
    return swift_willThrow();
  }

  v116 = *(*(v9 + 56) + 8 * v15);

  v17 = *(v7 + *(*v7 + 168));
  if (!*(v17 + 16))
  {
LABEL_10:
    sub_21A3DCAA4();
    swift_allocError();
    *v26 = 46;
    swift_willThrow();
  }

  v18 = sub_21A3DCA2C(a1, a2);
  if ((v19 & 1) == 0)
  {

    goto LABEL_10;
  }

  v110 = a5;
  v115 = a3;
  v113 = a4;
  v20 = *(*(v17 + 56) + 8 * v18);

  v114 = *(v8 + 80);
  v21 = sub_21A4513B4();
  v22 = sub_21A450F94();
  v23 = sub_21A450F44();
  v120 = v23;
  result = sub_21A3E70C8(v20);
  if (v6)
  {
  }

  v112 = v23;
  v108 = v21;
  v103 = v22;
  if (!result)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v27 = v110;
  v28 = v20;
  if (v110 == 0x8000000000000000 && result == -1)
  {
    goto LABEL_66;
  }

  v29 = *(v8 + 88);
  v30 = result;
  result = sub_21A4129CC(v115, v113, v110, v28, v116, result, v114);
  v31 = v115;
  v32 = v110 / v30;
  if (((v110 / v30) & 0x8000000000000000) == 0)
  {
    v105 = v29;
    v106 = v30;
    v109 = v28;
    if (v32)
    {
      v33 = 0;
      v34 = v115 + 64;
      v104 = v115 + 64;
      v99 = a2;
      v100 = v110 / v30;
      v101 = a1;
      while (2)
      {
        v107 = v33;
        v102 = v33 + 1;
        v35 = 1 << *(v31 + 32);
        if (v35 < 64)
        {
          v36 = ~(-1 << v35);
        }

        else
        {
          v36 = -1;
        }

        v37 = v36 & *(v31 + 64);
        v38 = (v35 + 63) >> 6;

        v39 = 0;
        if (v37)
        {
          while (1)
          {
            v40 = v39;
LABEL_26:
            v41 = (*(v31 + 48) + ((v40 << 10) | (16 * __clz(__rbit64(v37)))));
            v43 = *v41;
            v42 = v41[1];
            v117 = *v41;
            v118 = v42;
            swift_bridgeObjectRetain_n();
            sub_21A450FA4();

            v45 = v119;
            if (!v119)
            {
              goto LABEL_58;
            }

            v111 = &v99;
            MEMORY[0x28223BE20](v44);
            v112 = 0;
            v46 = v114;
            v89 = v114;
            v90 = v105;
            v91 = v116;
            v92 = v43;
            v93 = v42;
            v94 = v113;
            v95 = v109;
            v96 = v107;
            v97 = v106;
            v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
            v48 = v112;
            sub_21A3DA2A0(sub_21A412E40, v88, v45, v46, MEMORY[0x277D84F78] + 8, v47, MEMORY[0x277D84950], &v117);
            if (v48)
            {
            }

            v37 &= v37 - 1;

            v39 = v40;
            v31 = v115;
            v34 = v104;
            if (!v37)
            {
              goto LABEL_23;
            }
          }
        }

        while (1)
        {
LABEL_23:
          v40 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            __break(1u);
LABEL_61:

            v86 = v101;
            v87 = v99;
            v117 = sub_21A40D208(v101, v99);
            sub_21A4513B4();
            sub_21A451384();
            sub_21A41099C(v34, v86, v87, v109);
            goto LABEL_46;
          }

          if (v40 >= v38)
          {
            break;
          }

          v37 = *(v34 + 8 * v40);
          ++v39;
          if (v37)
          {
            goto LABEL_26;
          }
        }

        v49 = sub_21A3E536C(MEMORY[0x277D84F90]);
        sub_21A40765C(v49);

        a1 = v101;
        a2 = v99;
        v117 = sub_21A40D208(v101, v99);
        sub_21A4513B4();
        sub_21A451384();
        v33 = v102;
        v32 = v100;
        v27 = v110;
        if (v102 != v100)
        {
          continue;
        }

        break;
      }
    }

    v111 = v27 - v32 * v106;
    if (v111 < 1)
    {
LABEL_46:

      return v120;
    }

    v100 = v32;
    v101 = a1;
    v99 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28540, &unk_21A456250);
    v50 = v109;
    result = sub_21A451854();
    v51 = result;
    v52 = 0;
    v53 = v50 + 8;
    v54 = 1 << *(v50 + 32);
    v55 = -1;
    if (v54 < 64)
    {
      v55 = ~(-1 << v54);
    }

    v56 = v55 & v50[8];
    v57 = (v54 + 63) >> 6;
    for (i = result + 8; v56; result = )
    {
      v59 = __clz(__rbit64(v56));
      v56 &= v56 - 1;
LABEL_41:
      v62 = v59 | (v52 << 6);
      v63 = (v109[6] + 16 * v62);
      v64 = *v63;
      result = v63[1];
      *(i + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v62;
      v65 = (v51[6] + 16 * v62);
      *v65 = v64;
      v65[1] = result;
      *(v51[7] + 8 * v62) = v111;
      v66 = v51[2];
      v67 = __OFADD__(v66, 1);
      v68 = v66 + 1;
      if (v67)
      {
        goto LABEL_67;
      }

      v51[2] = v68;
    }

    v60 = v52;
    while (1)
    {
      v52 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        __break(1u);
        goto LABEL_64;
      }

      if (v52 >= v57)
      {
        break;
      }

      v61 = v53[v52];
      ++v60;
      if (v61)
      {
        v59 = __clz(__rbit64(v61));
        v56 = (v61 - 1) & v61;
        goto LABEL_41;
      }
    }

    sub_21A41099C(v116, v101, v99, v51);

    v69 = v31 + 64;
    v70 = 1 << *(v31 + 32);
    v71 = -1;
    if (v70 < 64)
    {
      v71 = ~(-1 << v70);
    }

    v72 = v71 & *(v31 + 64);
    v73 = (v70 + 63) >> 6;

    v74 = 0;
    v107 = v31 + 64;
    if (v72)
    {
      while (1)
      {
        v75 = v74;
LABEL_54:
        v76 = (*(v31 + 48) + ((v75 << 10) | (16 * __clz(__rbit64(v72)))));
        v78 = *v76;
        v77 = v76[1];
        v117 = *v76;
        v118 = v77;
        swift_bridgeObjectRetain_n();
        sub_21A450FA4();

        v80 = v119;
        if (!v119)
        {
          break;
        }

        v110 = &v99;
        MEMORY[0x28223BE20](v79);
        v112 = 0;
        v81 = v114;
        v89 = v114;
        v90 = v105;
        v91 = v116;
        v92 = v78;
        v93 = v77;
        v94 = v113;
        v95 = v109;
        v96 = v100;
        v97 = v106;
        v98 = v111;
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
        v83 = v112;
        sub_21A3DA2A0(sub_21A412E80, v88, v80, v81, MEMORY[0x277D84F78] + 8, v82, MEMORY[0x277D84950], &v117);
        if (v83)
        {
        }

        v72 &= v72 - 1;

        v74 = v75;
        v31 = v115;
        v69 = v107;
        if (!v72)
        {
          goto LABEL_51;
        }
      }

LABEL_58:

      sub_21A3DCAA4();
      swift_allocError();
      *v84 = 10;
      swift_willThrow();
    }

LABEL_51:
    while (1)
    {
      v75 = v74 + 1;
      if (__OFADD__(v74, 1))
      {
        goto LABEL_65;
      }

      if (v75 >= v73)
      {

        v85 = sub_21A3E536C(MEMORY[0x277D84F90]);
        v34 = v116;
        sub_21A40765C(v85);
        goto LABEL_61;
      }

      v72 = *(v69 + 8 * v75);
      ++v74;
      if (v72)
      {
        goto LABEL_54;
      }
    }
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_21A40F9D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v18 = sub_21A451014();
  if (!v18)
  {
    sub_21A3DCAF8();
    v30 = swift_allocError();
    *v31 = 0;
LABEL_16:
    result = swift_willThrow();
    *a12 = v30;
    return result;
  }

  v19 = v18;
  swift_beginAccess();
  v20 = *(a3 + 48);
  if (!*(v20 + 16))
  {
LABEL_15:
    sub_21A3DCAA4();
    v30 = swift_allocError();
    *v32 = 10;
    goto LABEL_16;
  }

  v21 = sub_21A3DCA2C(a4, a5);
  if ((v22 & 1) == 0)
  {

    goto LABEL_15;
  }

  v23 = *(*(v20 + 56) + 8 * v21);

  if (!*(a6 + 16) || (result = sub_21A3DCA2C(a4, a5), (v25 & 1) == 0))
  {

    goto LABEL_15;
  }

  v26 = a11;
  v27 = *(*(a6 + 56) + 8 * result);
  if (!*(a7 + 16) || (result = sub_21A3DCA2C(a4, a5), v26 = a11, (v28 & 1) == 0))
  {
    if ((v27 * a8) >> 64 == (v27 * a8) >> 63)
    {
      static PFLUtils.copy<A>(from:to:count:)(v19 + *(*(a10 - 8) + 72) * v27 * a8, *(*(v23 + 32) + 24), v27, a10, v26);
    }

    __break(1u);
    goto LABEL_21;
  }

  v29 = v27 * a8;
  if ((v27 * a8) >> 64 != (v27 * a8) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v29 * a9) >> 64 != (v29 * a9) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v27 * a9) >> 64 == (v27 * a9) >> 63)
  {
    static PFLUtils.copy<A>(from:to:count:)(v19 + *(*(a10 - 8) + 72) * v29 * a9, *(*(v23 + 32) + 24), v27 * a9, a10, a11);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_21A40FC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  v19 = sub_21A451014();
  if (!v19)
  {
    sub_21A3DCAF8();
    v31 = swift_allocError();
    *v32 = 0;
LABEL_16:
    result = swift_willThrow();
    *a13 = v31;
    return result;
  }

  v20 = v19;
  swift_beginAccess();
  v21 = *(a3 + 48);
  if (!*(v21 + 16))
  {
LABEL_15:
    sub_21A3DCAA4();
    v31 = swift_allocError();
    *v33 = 10;
    goto LABEL_16;
  }

  v22 = sub_21A3DCA2C(a4, a5);
  if ((v23 & 1) == 0)
  {

    goto LABEL_15;
  }

  v24 = *(*(v21 + 56) + 8 * v22);

  if (!*(a6 + 16) || (result = sub_21A3DCA2C(a4, a5), (v26 & 1) == 0))
  {

    goto LABEL_15;
  }

  v27 = a12;
  v28 = *(*(a6 + 56) + 8 * result);
  if (!*(a7 + 16) || (result = sub_21A3DCA2C(a4, a5), v27 = a12, (v29 & 1) == 0))
  {
    if ((v28 * a8) >> 64 == (v28 * a8) >> 63)
    {
      static PFLUtils.copy<A>(from:to:count:)(v20 + *(*(a11 - 8) + 72) * v28 * a8, *(*(v24 + 32) + 24), v28, a11, v27);
    }

    __break(1u);
    goto LABEL_21;
  }

  v30 = v28 * a8;
  if ((v28 * a8) >> 64 != (v28 * a8) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if ((v30 * a9) >> 64 != (v30 * a9) >> 63)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v28 * a10) >> 64 == (v28 * a10) >> 63)
  {
    static PFLUtils.copy<A>(from:to:count:)(v20 + *(*(a11 - 8) + 72) * v30 * a9, *(*(v24 + 32) + 24), v28 * a10, a11, a12);
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_21A40FEB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(v4 + *(*v4 + 128));
  if (!*(v6 + 16))
  {
    goto LABEL_7;
  }

  v5 = a4;

  v9 = sub_21A3DCA2C(a2, a3);
  if ((v10 & 1) == 0)
  {

LABEL_7:
    sub_21A3DCAA4();
    swift_allocError();
    *v13 = 10;
    swift_willThrow();
    return v5;
  }

  v57 = v5;
  v11 = *(*(v6 + 56) + 8 * v9);

  v12 = sub_21A3E5484(MEMORY[0x277D84F90]);
  if (*(v11 + 16))
  {
    sub_21A4510E4();

    v5 = e5rt_execution_stream_operation_retain_input_port();

    if (!v5)
    {

      sub_21A3DCAF8();
      swift_allocError();
      *v56 = 6;
      swift_willThrow();

LABEL_47:

      return v5;
    }

    EspressoError.init(rawValue:)(v5 + 9150);
    v50 = v61;
    if (v61 != 48)
    {
LABEL_46:
      sub_21A3DCAA4();
      swift_allocError();
      *v55 = v50;
      swift_willThrow();

      goto LABEL_47;
    }

    if (qword_27CD28170 == -1)
    {
LABEL_43:
      v51 = sub_21A450F24();
      __swift_project_value_buffer(v51, qword_27CD28C90);
      v52 = sub_21A450F04();
      v53 = sub_21A451584();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 67109120;
        *(v54 + 4) = v5;
        _os_log_impl(&dword_21A3C2000, v52, v53, "Unknown E5 code: %u", v54, 8u);
        MEMORY[0x21CEDB220](v54, -1, -1);
      }

      v50 = 27;
      goto LABEL_46;
    }

LABEL_50:
    swift_once();
    goto LABEL_43;
  }

  v15 = v12 + 64;
  v16 = 1 << *(v12 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v12;
  v19 = v17 & *(v12 + 64);
  v20 = (v16 + 63) >> 6;
  v60 = v18;

  v21 = 0;
  v5 = MEMORY[0x277D84F98];
  while (2)
  {
    v47 = v57;
LABEL_12:
    while (2)
    {
      if (v19)
      {
        v22 = v19;
        goto LABEL_18;
      }

      do
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if (v23 >= v20)
        {

          return v5;
        }

        v22 = *(v15 + 8 * v23);
        ++v21;
      }

      while (!v22);
      v21 = v23;
LABEL_18:
      v19 = (v22 - 1) & v22;
      if (!v47[2])
      {
        continue;
      }

      break;
    }

    v24 = __clz(__rbit64(v22)) | (v21 << 6);
    v25 = (*(v60 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(*(v60 + 56) + 8 * v24);

    v29 = sub_21A3DCA2C(v26, v27);
    if ((v30 & 1) == 0)
    {
      goto LABEL_38;
    }

    v31 = *(v57[7] + 8 * v29);
    v32 = sub_21A4094A0();
    if (!*(v32 + 16))
    {
      goto LABEL_49;
    }

    v33 = *(v32 + 32);

    if (v33 == v31)
    {
LABEL_38:

      continue;
    }

    break;
  }

  v34 = *(v28 + 64);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (*(v34 + 2))
    {
      goto LABEL_24;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v34 = sub_21A410FA4(v34);
  if (!*(v34 + 2))
  {
    goto LABEL_51;
  }

LABEL_24:
  *(v34 + 4) = v31;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v62 = v5;
  v35 = sub_21A3DCA2C(v26, v27);
  v37 = v5[2];
  v38 = (v36 & 1) == 0;
  v39 = __OFADD__(v37, v38);
  v40 = v37 + v38;
  if (v39)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v5[3] >= v40)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v36)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v59 = v35;
      v48 = v36;
      sub_21A3E43FC();
      v49 = v48;
      v35 = v59;
      v5 = v62;
      if (v49)
      {
        goto LABEL_32;
      }
    }

LABEL_28:
    v5[(v35 >> 6) + 8] |= 1 << v35;
    v44 = (v5[6] + 16 * v35);
    *v44 = v26;
    v44[1] = v27;
    *(v5[7] + 8 * v35) = v34;
    v45 = v5[2];
    v39 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (!v39)
    {
      v5[2] = v46;

      goto LABEL_33;
    }

LABEL_53:
    __break(1u);
  }

  v41 = v36;
  sub_21A3E3574(v40, isUniquelyReferenced_nonNull_native);
  v35 = sub_21A3DCA2C(v26, v27);
  if ((v41 & 1) == (v42 & 1))
  {
    v43 = v41;
    v5 = v62;
    if ((v43 & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_32:
    *(v5[7] + 8 * v35) = v34;

    swift_bridgeObjectRelease_n();
LABEL_33:
    v47 = v57;

    goto LABEL_12;
  }

  result = sub_21A451A94();
  __break(1u);
  return result;
}

void *sub_21A41099C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_21A40FEB8(a1, a2, a3, a4);
  if (!v4)
  {
    sub_21A404DB4(result);

    return sub_21A4109F8();
  }

  return result;
}

uint64_t sub_21A4109F8()
{
  v2 = v0;
  v3 = *(v0 + *(*v0 + 160));
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:

      sub_21A411A30(v11, v2);
      if (v1)
      {
        break;
      }

      v6 &= v6 - 1;

      v9 = v10;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        goto LABEL_12;
      }

      v6 = *(v3 + 64 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

char *E5Trainer.deinit()
{

  v1 = *(*v0 + 120);
  v2 = sub_21A4515F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t E5Trainer.__deallocating_deinit()
{
  E5Trainer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21A410D24(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD285B0, &qword_21A4564C0);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

unint64_t sub_21A410D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21A450FC4();

  return sub_21A410DF4(a1, v6, a2, a3);
}

unint64_t sub_21A410DF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_21A451004();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_21A410FB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21A451844();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return MEMORY[0x2821FD130](0, v2, 0, a1);
}

void *sub_21A41101C(void *result)
{
  v1 = result[2];
  v2 = result[3];
  v3 = MEMORY[0x277D84F90];
  if (v2 < *(v1 + 16))
  {
    v4 = result;
    v5 = 0;
    v6 = MEMORY[0x277D84F90] + 32;
    while ((v2 & 0x8000000000000000) == 0)
    {
      v7 = type metadata accessor for CKRecipeDescriptorRecord(0);
      v22 = v7;
      v23 = &off_282B40378;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
      sub_21A41310C(v1 + ((*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80)) + *(*(v7 - 8) + 72) * v2, boxed_opaque_existential_1);
      *(v4 + 24) = v2 + 1;
      result = sub_21A3C50DC(&v21, v24);
      if (!v5)
      {
        v9 = v3[3];
        if (((v9 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_25;
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

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD289C8, &qword_21A457598);
        v12 = swift_allocObject();
        v13 = (_swift_stdlib_malloc_size(v12) - 32) / 40;
        v12[2] = v11;
        v12[3] = 2 * v13;
        v14 = (v12 + 4);
        v15 = v3[3] >> 1;
        if (v3[2])
        {
          v16 = v3 + 4;
          if (v12 != v3 || v14 >= v16 + 40 * v15)
          {
            memmove(v12 + 4, v16, 40 * v15);
          }

          v3[2] = 0;
        }

        v6 = v14 + 40 * v15;
        v5 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v3 = v12;
      }

      v17 = __OFSUB__(v5--, 1);
      if (v17)
      {
        goto LABEL_24;
      }

      result = sub_21A3C50DC(v24, v6);
      v6 += 40;
      v1 = *(v4 + 16);
      v2 = *(v4 + 24);
      if (v2 >= *(v1 + 16))
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = 0;
LABEL_19:
  v18 = v3[3];
  if (v18 < 2)
  {
    return v3;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v5);
  v20 = v19 - v5;
  if (!v17)
  {
    v3[2] = v20;
    return v3;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_21A41123C(void *result)
{
  v1 = result[3];
  v2 = MEMORY[0x277D84F90];
  if (v1 < result[2])
  {
    v3 = result;
    v4 = type metadata accessor for FileRecipeDescriptor();
    v5 = 0;
    v6 = (v2 + 4);
    while (1)
    {
      *(v3 + 24) = v1 + 1;
      v7 = swift_allocObject();
      v21 = v4;
      v22 = &off_282B41030;
      *&v20 = v7;
      result = sub_21A3C50DC(&v20, v23);
      if (!v5)
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

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD289C8, &qword_21A457598);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 40;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v2[3] >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v13 >= &v2[5 * v14 + 4])
          {
            memmove(v11 + 4, v2 + 4, 40 * v14);
          }

          v2[2] = 0;
        }

        v6 = v13 + 40 * v14;
        v5 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - v14;

        v2 = v11;
      }

      v16 = __OFSUB__(v5--, 1);
      if (v16)
      {
        break;
      }

      result = sub_21A3C50DC(v23, v6);
      v6 += 40;
      v1 = *(v3 + 24);
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v5 = 0;
LABEL_21:
  v17 = v2[3];
  if (v17 < 2)
  {
    return v2;
  }

  v18 = v17 >> 1;
  v16 = __OFSUB__(v18, v5);
  v19 = v18 - v5;
  if (!v16)
  {
    v2[2] = v19;
    return v2;
  }

LABEL_27:
  __break(1u);
  return result;
}

int64_t sub_21A4113F8(int64_t a1, int64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = 0;
  v7 = 32;
  v8 = a1;
  while (1)
  {
    v9 = v8 <= a2;
    if (a3 > 0)
    {
      v9 = v8 >= a2;
    }

    if (v9)
    {
      break;
    }

    v10 = __OFADD__(v8, a3);
    v8 += a3;
    if (v10)
    {
      v8 = (v8 >> 63) ^ 0x8000000000000000;
    }

    v7 += 8;
    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      __break(1u);
      break;
    }
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28678, &qword_21A456A10);
    v11 = swift_allocObject();
    result = _swift_stdlib_malloc_size(v11);
    v13 = result - 32;
    if (result < 32)
    {
      v13 = result - 25;
    }

    v14 = v13 >> 3;
    v11[2] = v6;
    v11[3] = 2 * v14;
    v15 = v11 + 4;
    v16 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v6;
    while (1)
    {
      v17 = v5 <= a2;
      if (a3 > 0)
      {
        v17 = v5 >= a2;
      }

      if (v17)
      {
        break;
      }

      v18 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v18 = ((v5 + a3) >> 63) ^ 0x8000000000000000;
      }

      *v15++ = v5;
      v5 = v18;
      if (!--v6)
      {
        v5 = v18;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v11 = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 24);

  v15 = v11 + 4;
  v16 = v19 >> 1;
LABEL_22:
  v20 = v5 <= a2;
  if (a3 > 0)
  {
    v20 = v5 >= a2;
  }

  if (!v20)
  {
    v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      v22 = v5 + a3;
      if (__OFADD__(v5, a3))
      {
        v22 = v21;
        if (!v16)
        {
          goto LABEL_31;
        }

        v22 = v21;
      }

      else if (!v16)
      {
LABEL_31:
        v23 = v11[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_53;
        }

        v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28678, &qword_21A456A10);
        v26 = swift_allocObject();
        v27 = _swift_stdlib_malloc_size(v26);
        v28 = v27 - 32;
        if (v27 < 32)
        {
          v28 = v27 - 25;
        }

        v29 = v28 >> 3;
        v26[2] = v25;
        v26[3] = 2 * (v28 >> 3);
        v30 = (v26 + 4);
        v31 = v11[3] >> 1;
        if (v11[2])
        {
          v32 = v11 + 4;
          if (v26 != v11 || v30 >= v32 + 8 * v31)
          {
            memmove(v26 + 4, v32, 8 * v31);
          }

          v11[2] = 0;
        }

        v15 = (v30 + 8 * v31);
        v16 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - v31;

        v11 = v26;
        v21 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
      }

      v10 = __OFSUB__(v16--, 1);
      if (v10)
      {
        goto LABEL_52;
      }

      *v15++ = v5;
      v33 = v22 <= a2;
      if (a3 > 0)
      {
        v33 = v22 >= a2;
      }

      v5 = v22;
    }

    while (!v33);
  }

  v34 = v11[3];
  if (v34 < 2)
  {
    return v11;
  }

  v35 = v34 >> 1;
  v10 = __OFSUB__(v35, v16);
  v36 = v35 - v16;
  if (!v10)
  {
    v11[2] = v36;
    return v11;
  }

LABEL_54:
  __break(1u);
  return result;
}

uint64_t sub_21A41168C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21A4519B4() & 1;
  }
}

uint64_t sub_21A4116E4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_21A411734(uint64_t result)
{
  if (result >= 0)
  {
    return result & 0xFFFFFFFFFFFFFF8;
  }

  return result;
}

unint64_t sub_21A411744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_21A451374())
  {
    sub_21A451884();
    v13 = sub_21A451874();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_21A451374();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_21A451354())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_21A451784();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_21A410D98(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_21A411A30(void *a1, void *a2)
{
  v76[3] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v73 = a2;
  v5 = *(v4 + 80);
  v6 = sub_21A4515F4();
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v68 = &v64 - v8;
  v70 = v5;
  v69 = *(v5 - 8);
  MEMORY[0x28223BE20](v7);
  v67 = &v64 - v9;
  v10 = sub_21A404940();
  v11 = v10;
  v74 = v10[2];
  if (v74)
  {
    v12 = 0;
    v13 = v10 + 5;
    while (1)
    {
      if (v12 >= v11[2])
      {
        __break(1u);
LABEL_40:
        __break(1u);
      }

      v15 = *(v13 - 1);
      v14 = *v13;
      v76[0] = 0;
      sub_21A4510E4();

      v16 = e5rt_execution_stream_operation_retain_output_port();

      sub_21A3DCF54(v16);
      if (v2)
      {
      }

      v17 = v76[0];
      if (!v76[0])
      {
        break;
      }

      LOBYTE(v76[0]) = 0;
      type metadata accessor for IOPort();
      swift_allocObject();
      v18 = sub_21A425138(v17, v76);
      ++v12;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = a1[7];
      a1[7] = 0x8000000000000000;
      sub_21A403158(v18, v15, v14, isUniquelyReferenced_nonNull_native);

      a1[7] = v75;
      swift_endAccess();

      v13 += 2;
      if (v74 == v12)
      {
        goto LABEL_7;
      }
    }

    sub_21A3DCAF8();
    swift_allocError();
    *v49 = 6;
    swift_willThrow();
  }

LABEL_7:

  v20 = sub_21A404854();
  v21 = v20;
  v71 = v20[2];
  if (v71)
  {
    v22 = 0;
    v23 = v20 + 5;
    v72 = v20;
    while (1)
    {
      if (v22 >= v21[2])
      {
        goto LABEL_40;
      }

      v24 = *(v23 - 1);
      v25 = *v23;
      v26 = *(v73 + *(*v73 + 176));
      v74 = v24;
      if (!v26)
      {
        break;
      }

      swift_retain_n();

      v27 = sub_21A404940();

      v76[0] = v24;
      v76[1] = v25;
      MEMORY[0x28223BE20](v28);
      *(&v64 - 2) = v76;
      v29 = sub_21A4412B8(sub_21A413170, (&v64 - 4), v27);

      if ((v29 & 1) == 0 || (v30 = *(v73 + *(*v73 + 184)), !*(v30 + 16)))
      {

LABEL_20:
        v76[0] = 0;
        sub_21A4510E4();
        v38 = e5rt_execution_stream_operation_retain_input_port();

        sub_21A3DCF54(v38);
        if (v2)
        {
        }

        v39 = v76[0];
        v21 = v72;
        if (!v76[0])
        {

          sub_21A3DCAF8();
          swift_allocError();
          *v50 = 6;
          swift_willThrow();
        }

        LOBYTE(v76[0]) = 0;
        type metadata accessor for IOPort();
        swift_allocObject();
        v40 = sub_21A425138(v39, v76);
        swift_beginAccess();

        v41 = swift_isUniquelyReferenced_nonNull_native();
        v75 = a1[6];
        a1[6] = 0x8000000000000000;
        sub_21A403158(v40, v74, v25, v41);

        a1[6] = v75;
        swift_endAccess();
        goto LABEL_23;
      }

      v31 = sub_21A3DCA2C(v74, v25);
      if ((v32 & 1) == 0)
      {

        goto LABEL_20;
      }

      v33 = *(*(v30 + 56) + 8 * v31);

      v76[0] = 0;
      sub_21A4510E4();
      v34 = e5rt_execution_stream_operation_retain_input_port();

      sub_21A3DCF54(v34);
      if (v2)
      {
        goto LABEL_36;
      }

      v35 = v76[0];
      if (!v76[0])
      {
        sub_21A3DCAF8();
        swift_allocError();
        *v63 = 6;
        swift_willThrow();
LABEL_36:
      }

      type metadata accessor for IOPort();
      swift_allocObject();

      v36 = sub_21A425434(v35, v33);
      swift_beginAccess();

      v37 = swift_isUniquelyReferenced_nonNull_native();
      v75 = a1[6];
      a1[6] = 0x8000000000000000;
      sub_21A403158(v36, v74, v25, v37);

      a1[6] = v75;
      swift_endAccess();

      v21 = v72;
LABEL_23:
      ++v22;

      v23 += 2;
      if (v71 == v22)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_20;
  }

LABEL_24:

  v42 = v73[2];
  v43 = v73[3];
  result = swift_beginAccess();
  if (!*(a1[6] + 16))
  {
    return result;
  }

  sub_21A3DCA2C(v42, v43);
  if ((v45 & 1) == 0)
  {
  }

  v46 = v68;
  sub_21A40BCD8(v68);
  v48 = v69;
  v47 = v70;
  if ((*(v69 + 48))(v46, 1, v70) != 1)
  {
    v51 = v67;
    (*(v48 + 32))(v67, v46, v47);
    sub_21A410D24(v47, v47);
    swift_allocObject();
    v52 = sub_21A4512F4();
    (*(v48 + 16))(v53, v51, v47);
    sub_21A4513B4();
    v60 = Array.toData()(v52, v47, v54, v55, v56, v57, v58, v59);
    v62 = v61;

    sub_21A439640(v60, v62);
    (*(v48 + 8))(v51, v47);
    sub_21A3E759C(v60, v62);
  }

  return (*(v65 + 8))(v46, v66);
}

uint64_t sub_21A412368(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v51 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v13;
  v14 = *(v13 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v48 = v46 - v15;
  if (!a3[2] || (v16 = sub_21A3DCA2C(a1, a2), (v17 & 1) == 0))
  {
    sub_21A3DCAA4();
    swift_allocError();
    *v30 = 44;
    swift_willThrow();
    return a3;
  }

  v46[1] = v14;
  v47 = v12;
  v52 = v5;
  v18 = *(a3[7] + 8 * v16);
  v19 = sub_21A4513B4();

  v53 = v19;
  result = sub_21A450F34();
  v61 = result;
  v21 = *(v18 + 16);
  v54 = v18;
  v55 = v21;
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    v24 = (v18 + 40);
    while (1)
    {
      if (v22 >= *(v18 + 16))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      if (!a4[2])
      {
        goto LABEL_29;
      }

      v25 = *(v24 - 1);
      v26 = *v24;

      a3 = a4;
      sub_21A3DCA2C(v25, v26);
      if ((v27 & 1) == 0)
      {
        break;
      }

      v28 = sub_21A4397E8(a5, a5);
      result = sub_21A451374();
      v29 = __OFADD__(v23, result);
      v23 += result;
      if (v29)
      {
        goto LABEL_35;
      }

      ++v22;
      v58 = v26;
      v59 = v28;
      v57 = v25;
      sub_21A450F94();
      a3 = &v61;
      sub_21A450FB4();

      v24 += 2;
      v18 = v54;
      if (v55 == v22)
      {
        goto LABEL_13;
      }
    }

LABEL_29:

    sub_21A3DCAA4();
    swift_allocError();
    *v44 = 44;
    swift_willThrow();
LABEL_32:

    return a3;
  }

  v23 = 0;
LABEL_13:
  swift_getAssociatedConformanceWitness();
  sub_21A451A64();
  v31 = v47;
  sub_21A451994();
  a3 = sub_21A3DCD0C(v31, v23, a5);
  result = (*(v51 + 8))(v31, a5);
  v59 = a3;
  v60 = 0;
  if (!v55)
  {
LABEL_27:

    return a3;
  }

  v32 = 0;
  v33 = 0;
  v34 = (v18 + 40);
  while (v33 < *(v18 + 16))
  {
    a3 = *v34;
    v35 = v61;
    v57 = *(v34 - 1);
    v58 = a3;

    sub_21A450FA4();

    v36 = v56;
    if (!v56)
    {

      sub_21A3DCAA4();
      swift_allocError();
      *v45 = 44;
      swift_willThrow();
      goto LABEL_32;
    }

    AssociatedTypeWitness = v35;
    v37 = sub_21A451374();
    sub_21A451324();
    v38 = v59;
    if (_swift_isClassOrObjCExistentialType())
    {
      v39 = v38 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v39 = v38;
    }

    v40 = *(v39 + 16);
    if (_swift_isClassOrObjCExistentialType())
    {
      v41 = v38 & 0xFFFFFFFFFFFFFF8;
    }

    else
    {
      v41 = v38;
    }

    v42 = v41 + ((*(v51 + 80) + 32) & ~*(v51 + 80));
    v57 = v42;
    v58 = v40;
    v43 = v52;
    sub_21A40D5F4(&v57, v36, &v60, v37, a5, v50, &v56);
    v52 = v43;
    if (v43)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
      sub_21A3DC9D4(&v57, v42, v40, &v59, a5);
      a3 = v59;

      goto LABEL_32;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD284B0, qword_21A456110);
    sub_21A3DC9D4(&v57, v42, v40, &v59, a5);

    v29 = __OFADD__(v32, v37);
    v32 += v37;
    if (v29)
    {
      goto LABEL_37;
    }

    ++v33;
    v60 = v32;
    v34 += 2;
    v18 = v54;
    if (v55 == v33)
    {
      a3 = v59;
      goto LABEL_27;
    }
  }

LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

unint64_t sub_21A412968()
{
  result = qword_27CD28940[0];
  if (!qword_27CD28940[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD284A0, &qword_21A4560F0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CD28940);
  }

  return result;
}

uint64_t sub_21A4129CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_21A4513B4();
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v46 = a3;
  v16 = a3 + a6;
  v17 = __OFADD__(a3, a6);
  v18 = v16 - 1;
  v19 = __OFSUB__(v16, 1);
  v50 = v19;
  v51 = v17;
  v21 = v18 == 0x8000000000000000 && a6 == -1;
  v48 = v21;

  v23 = 0;
  v49 = a6;
  v47 = v18 / a6;
  v52 = v15;
  v53 = a2;
  for (i = a1; v14; v15 = v52)
  {
LABEL_20:
    v25 = (*(a1 + 48) + ((v23 << 10) | (16 * __clz(__rbit64(v14)))));
    v26 = *v25;
    v27 = v25[1];
    swift_beginAccess();
    if (!*(*(a5 + 48) + 16))
    {
      goto LABEL_56;
    }

    sub_21A3DCA2C(v26, v27);
    if ((v28 & 1) == 0)
    {

      goto LABEL_56;
    }

    if (!*(a2 + 16) || (v29 = sub_21A3DCA2C(v26, v27), (v30 & 1) == 0) || (v31 = *(*(a2 + 56) + 8 * v29), , sub_21A450FA4(), , !v57))
    {

LABEL_56:
      sub_21A3DCAA4();
      swift_allocError();
      *v44 = 10;
      swift_willThrow();
    }

    result = sub_21A4094A0();
    v32 = *(result + 16);
    if (v32)
    {
      v33 = (result + 32);
      v34 = 1;
      while (1)
      {
        v35 = *v33++;
        v36 = v34 * v35;
        if ((v34 * v35) >> 64 != (v34 * v35) >> 63)
        {
          break;
        }

        v34 = v36;
        if (!--v32)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_61;
    }

    v36 = 1;
LABEL_31:

    if (*(a4 + 16))
    {
      v37 = sub_21A3DCA2C(v26, v27);
      v39 = v38;

      if (v39)
      {
        if (v31 < 1)
        {
          goto LABEL_57;
        }

        if ((v31 * v46) >> 64 != (v31 * v46) >> 63)
        {
          goto LABEL_67;
        }

        v40 = *(*(a4 + 56) + 8 * v37);
        v41 = sub_21A451374();

        a2 = v53;
        if (v41 < v31 * v46)
        {
          goto LABEL_58;
        }

        if ((v40 * v31) >> 64 != (v40 * v31) >> 63)
        {
          goto LABEL_68;
        }

        if (v36 != v40 * v31)
        {
          goto LABEL_58;
        }

        goto LABEL_51;
      }
    }

    else
    {
    }

    if (v51)
    {
      goto LABEL_62;
    }

    if (v50)
    {
      goto LABEL_63;
    }

    if (!v49)
    {
      goto LABEL_64;
    }

    if (v48)
    {
      goto LABEL_66;
    }

    if (v31 < 1)
    {
LABEL_57:

LABEL_58:
      sub_21A3DCAA4();
      swift_allocError();
      *v45 = 11;
      swift_willThrow();
    }

    if ((v31 * v47) >> 64 != (v31 * v47) >> 63)
    {
      goto LABEL_65;
    }

    v42 = sub_21A451374();

    v43 = v42 >= v31 * v47 && v36 == v31;
    a2 = v53;
    if (!v43)
    {
      goto LABEL_58;
    }

LABEL_51:
    v14 &= v14 - 1;

    a1 = i;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v15)
    {
    }

    v14 = *(v11 + 8 * v24);
    ++v23;
    if (v14)
    {
      v23 = v24;
      goto LABEL_20;
    }
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_21A412EC4(uint64_t a1)
{
  result = sub_21A4515F4();
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

uint64_t sub_21A41310C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CKRecipeDescriptorRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A41318C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21A4519B4() & 1;
  }
}

uint64_t sub_21A413204(uint64_t result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v2 = result;
    v4 = sub_21A451344();
    *(v4 + 16) = a2;
    memset((v4 + 32), v2, a2);
    return v4;
  }

  return result;
}

unint64_t sub_21A413278(unint64_t result, int32x2_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  result = sub_21A451344();
  *(result + 16) = v2;
  v3 = (result + 32);
  if (v2 <= 7)
  {
    v4 = 0;
    v5 = a2.i32[0];
LABEL_9:
    v9 = v2 - v4;
    do
    {
      *v3++ = v5;
      --v9;
    }

    while (v9);
    return result;
  }

  v4 = v2 & 0x7FFFFFFFFFFFFFF8;
  v3 += v2 & 0x7FFFFFFFFFFFFFF8;
  v5 = a2.i32[0];
  v6 = vdupq_lane_s32(a2, 0);
  v7 = (result + 48);
  v8 = v2 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v7[-1] = v6;
    *v7 = v6;
    v7 += 2;
    v8 -= 8;
  }

  while (v8);
  if (v4 != v2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t EspressoMILTrainer.__allocating_init(_:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_21A4195BC(a1);

  return v2;
}

uint64_t EspressoMILTrainer.init(_:)(uint64_t a1)
{
  v1 = sub_21A4195BC(a1);

  return v1;
}

void *EspressoMILTrainer.deinit()
{
  v1 = *(v0 + 96);
  if ((v1 & 2) != 0)
  {
    espresso_plan_destroy();
    v1 = *(v0 + 96);
  }

  if (v1)
  {
    espresso_plan_destroy();
  }

  espresso_context_destroy();

  return v0;
}

uint64_t EspressoMILTrainer.__deallocating_deinit()
{
  EspressoMILTrainer.deinit();

  return swift_deallocClassInstance();
}

uint64_t *sub_21A41347C(uint64_t *result)
{
  v2 = *result;
  if (*result & 1) != 0 && (*(v1 + 96))
  {
    result = espresso_plan_destroy();
  }

  if ((v2 & 2) != 0 && (*(v1 + 96) & 2) != 0)
  {
    result = espresso_plan_destroy();
  }

  *(v1 + 96) &= ~v2;
  return result;
}

uint64_t sub_21A4134D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *a3;
  if ((sub_21A451234() & 1) == 0)
  {
    sub_21A3DCAA4();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }

  v67 = a5;
  v68 = a4;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;

  *(v7 + 96) = v13;
  v14 = *(v7 + 16);

  Current = CFAbsoluteTimeGetCurrent();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = *(v14 + 16);
  *(v14 + 16) = 0x8000000000000000;
  sub_21A4033E8(0x6F4C2E6C65646F4DLL, 0xEA00000000006461, isUniquelyReferenced_nonNull_native, Current);
  *(v14 + 16) = v69;
  swift_endAccess();

  if ((v13 & 2) != 0)
  {
    *(v7 + 112) = 1;

    sub_21A451274();
    sub_21A451194();
    swift_beginAccess();
    v19 = sub_21A4510E4();

    v20 = espresso_plan_add_network();

    if (v20)
    {
      v21 = 8;
LABEL_32:
      sub_21A3DCAA4();
      swift_allocError();
      *v51 = v21;
      swift_willThrow();
      return swift_endAccess();
    }

    v66 = v13;
    v25 = v68 + 40;
    v26 = *(v68 + 16) + 1;
    while (--v26)
    {
      v27 = v25 + 16;
      v28 = *(v7 + 40);
      sub_21A4510E4();
      v19 = v19 & 0xFFFFFFFF00000000 | v28;
      v29 = espresso_network_declare_input();

      v25 = v27;
      if (v29)
      {
        v21 = 2;
        goto LABEL_32;
      }
    }

    v35 = v67 + 40;
    v36 = *(v67 + 16) + 1;
    while (--v36)
    {
      v37 = v35 + 16;
      v38 = *(v7 + 40);
      sub_21A4510E4();
      v19 = v19 & 0xFFFFFFFF00000000 | v38;
      v39 = espresso_network_declare_output();

      v35 = v37;
      if (v39)
      {
        v21 = 3;
        goto LABEL_32;
      }
    }

    v45 = v66;
    if (*(v7 + 112))
    {
      v46 = a6 + 40;
      v47 = *(a6 + 16) + 1;
      while (--v47)
      {
        v48 = v46 + 16;
        v49 = *(v7 + 40);
        sub_21A4510E4();
        v19 = v19 & 0xFFFFFFFF00000000 | v49;
        v45 = v66;
        v50 = espresso_network_declare_input();

        v21 = 17;
        v46 = v48;
        if (v50)
        {
          goto LABEL_32;
        }
      }
    }

    swift_endAccess();
    v52 = sub_21A4510E4();
    espresso_network_declare_input();

    v53 = a6 + 40;
    v54 = *(a6 + 16) + 1;
    while (--v54)
    {
      v65 = v53 + 16;
      v55 = a6;
      v56 = *(v7 + 40);
      swift_bridgeObjectRetain_n();
      MEMORY[0x21CED98B0](0x646574616470755FLL, 0xE800000000000000);

      sub_21A4510E4();

      v52 = v52 & 0xFFFFFFFF00000000 | v56;
      a6 = v55;
      v45 = v66;
      v57 = espresso_network_declare_output();

      v53 = v65;
      if (v57)
      {
        sub_21A3DCAA4();
        swift_allocError();
        *v58 = 3;
        return swift_willThrow();
      }
    }

    if ((v45 & 1) == 0)
    {
      goto LABEL_4;
    }

    *(v7 + 112) = 1;
  }

  else
  {
    if ((v13 & 1) == 0)
    {
LABEL_4:
      *(v7 + 344) = v68;

      *(v7 + 352) = v67;

      *(v7 + 360) = a6;

      sub_21A402C48(0x6F4C2E6C65646F4DLL, 0xEA00000000006461);
    }

    *(v7 + 112) = 0;
  }

  sub_21A451274();
  sub_21A451194();
  swift_beginAccess();
  v22 = sub_21A4510E4();
  v23 = espresso_plan_add_network();

  if (!v23)
  {
    v30 = v68 + 40;
    v31 = *(v68 + 16) + 1;
    while (--v31)
    {
      v32 = v30 + 16;
      v33 = *(v7 + 64);
      sub_21A4510E4();
      v22 = v22 & 0xFFFFFFFF00000000 | v33;
      v34 = espresso_network_declare_input();

      v30 = v32;
      if (v34)
      {
        v24 = 2;
        goto LABEL_41;
      }
    }

    v40 = v67 + 40;
    v41 = *(v67 + 16) + 1;
    while (--v41)
    {
      v42 = v40 + 16;
      v43 = *(v7 + 64);
      sub_21A4510E4();
      v22 = v22 & 0xFFFFFFFF00000000 | v43;
      v44 = espresso_network_declare_output();

      v40 = v42;
      if (v44)
      {
        v24 = 3;
        goto LABEL_41;
      }
    }

    if (*(v7 + 112))
    {
      v59 = a6 + 40;
      v60 = *(a6 + 16) + 1;
      while (--v60)
      {
        v61 = v59 + 16;
        v62 = *(v7 + 64);
        sub_21A4510E4();
        v22 = v22 & 0xFFFFFFFF00000000 | v62;
        v63 = espresso_network_declare_input();

        v24 = 17;
        v59 = v61;
        if (v63)
        {
          goto LABEL_41;
        }
      }
    }

    swift_endAccess();

    goto LABEL_4;
  }

  v24 = 8;
LABEL_41:
  sub_21A3DCAA4();
  swift_allocError();
  *v64 = v24;
  swift_willThrow();
  swift_endAccess();
}

void *sub_21A413CE8(void *result, uint64_t a2, unsigned int a3, char **a4)
{
  if (*(*(v4 + 344) + 16) >> 60)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    return result;
  }

  v5 = swift_slowAlloc();
  v6 = v5;
  v7 = *(v4 + 344);
  v8 = *(v7 + 16);
  v9 = MEMORY[0x277D84F90];
  v34 = v4;
  if (v8)
  {
    __dst = v5;
    v38 = MEMORY[0x277D84F90];

    result = sub_21A3E48FC(0, v8, 0);
    v10 = 0;
    v9 = v38;
    v11 = (v7 + 40);
    while (1)
    {
      if (v10 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      v12 = *v11;
      if ((*v11 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v12 & 0x2000000000000000) != 0)
      {
        *__s1 = *(v11 - 1);
        v37 = v12 & 0xFFFFFFFFFFFFFFLL;

        v13 = __s1;
      }

      else
      {
        if ((*(v11 - 1) & 0x1000000000000000) == 0)
        {
          break;
        }

        v13 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      result = strdup(v13);
      v14 = result;
      if (!result)
      {
        goto LABEL_45;
      }

LABEL_11:

      v38 = v9;
      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_21A3E48FC((v15 > 1), v16 + 1, 1);
        v9 = v38;
      }

      ++v10;
      v9[2] = v16 + 1;
      v9[v16 + 4] = v14;
      v11 += 2;
      if (v8 == v10)
      {

        v17 = 8 * *(*(v4 + 344) + 16);
        v6 = __dst;
        goto LABEL_18;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD288C0, &unk_21A4570D0);
    result = sub_21A451724();
    v14 = *__s1;
    if (!*__s1)
    {
      goto LABEL_45;
    }

    goto LABEL_11;
  }

  v17 = 0;
LABEL_18:
  memcpy(v6, v9 + 4, v17);

  if (*(*(v4 + 344) + 16) >> 31)
  {
    goto LABEL_44;
  }

  v18 = *a4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_21A408BB4(0, *(v18 + 2), 0, v18);
  }

  *a4 = v18;
  v19 = a4[1];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v19 = sub_21A408BB4(0, *(v19 + 2), 0, v19);
  }

  a4[1] = v19;
  v20 = a4[2];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_21A408BB4(0, *(v20 + 2), 0, v20);
  }

  a4[2] = v20;
  v21 = a4[3];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_21A408BB4(0, *(v21 + 2), 0, v21);
  }

  a4[3] = v21;
  v22 = a4[4];

  v23 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_21A408BB4(0, *(v22 + 2), 0, v22);
  }

  a4[4] = v22;
  v24 = a4[5];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_21A408BB4(0, *(v24 + 2), 0, v24);
  }

  a4[5] = v24;
  v25 = v23;
  v26 = espresso_network_change_input_blob_shapes_seq_rank();

  if (v26)
  {
    v27 = 1;
LABEL_40:
    sub_21A3DCAA4();
    swift_allocError();
    *v32 = v27;
    return swift_willThrow();
  }

  v28 = *(*(v34 + 344) + 16);
  if (v28)
  {
    v29 = v25;
    do
    {
      v31 = *v29++;
      v30 = v31;
      if (v31)
      {
        MEMORY[0x21CEDB220](v30, -1, -1);
      }

      --v28;
    }

    while (v28);
  }

  MEMORY[0x21CEDB220](v25, -1, -1);
  result = espresso_plan_build();
  if (result)
  {
    v27 = 9;
    goto LABEL_40;
  }

  return result;
}

uint64_t sub_21A41415C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v134 = *MEMORY[0x277D85DE8];
  *(v2 + 104) = a1;
  v6 = *(v2 + 96);
  if (v6)
  {
    swift_beginAccess();
    sub_21A418880(*(v2 + 56), *(v2 + 64), &__dst);
    v113 = __dst;
    v114 = v104;
    v115 = v105;
    sub_21A413CE8(*(v2 + 72), *(v2 + 56), *(v2 + 64), &v113);
    if (v3)
    {
    }

    v6 = *(v2 + 96);
  }

  if ((v6 & 2) == 0)
  {
    if ((v6 & 1) == 0)
    {
LABEL_7:
      v8 = (v4 + 32);
      swift_beginAccess();
      v9 = 40;
      goto LABEL_53;
    }

LABEL_52:
    v8 = (v4 + 56);
    swift_beginAccess();
    v9 = 64;
LABEL_53:
    v78 = *(v4 + v9);
    v79 = *v8;
    v80 = *(v4 + 344);
    swift_beginAccess();
    swift_beginAccess();

    sub_21A4197C8(v79, v78, v80, (v4 + 120), (v4 + 128));
    swift_endAccess();
    swift_endAccess();

    v81 = *(v4 + 352);
    swift_beginAccess();
    swift_beginAccess();

    sub_21A4197C8(v79, v78, v81, (v4 + 136), (v4 + 144));
    swift_endAccess();
    swift_endAccess();

    v82 = *(v4 + 360);
    swift_beginAccess();
    swift_beginAccess();

    sub_21A4197C8(v79, v78, v82, (v4 + 152), (v4 + 160));
    swift_endAccess();
    swift_endAccess();

    if (*(v4 + 112) == 1)
    {
      return sub_21A417C90();
    }

    return result;
  }

  if ((a2 & 0x100000000) != 0)
  {
    sub_21A3DCAA4();
    swift_allocError();
    v11 = 21;
LABEL_12:
    *v10 = v11;
    return swift_willThrow();
  }

  swift_beginAccess();
  sub_21A418880(*(v2 + 32), *(v2 + 40), &v113);
  v90[0] = v113;
  v90[1] = v114;
  v90[2] = v115;
  sub_21A413CE8(*(v2 + 48), *(v2 + 32), *(v2 + 40), v90);
  if (v3)
  {
  }

  v83 = a2;
  sub_21A4510E4();
  swift_beginAccess();
  v12 = espresso_network_bind_buffer();
  swift_endAccess();

  if (v12)
  {

    sub_21A3DCAA4();
    swift_allocError();
    v11 = 16;
    goto LABEL_12;
  }

  v13 = *(*(v4 + 360) + 16);
  if (v13)
  {
    v133 = 0;
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v123 = 0u;
    v124 = 0u;

    v87 = 0;
    v15 = (v14 + 40);
    v84 = v13 - 1;
    v85 = v14;
    while (1)
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v86 = v15;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&__dst = *(v4 + 168);
      v19 = __dst;
      *(v4 + 168) = 0x8000000000000000;
      v20 = sub_21A3DCA2C(v16, v17);
      v22 = *(v19 + 16);
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
      }

      v26 = v21;
      if (*(v19 + 24) < v25)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_22;
      }

      v35 = v20;
      sub_21A3E4570();
      v20 = v35;
      v28 = __dst;
      if (v26)
      {
LABEL_23:
        v29 = v28[7] + 168 * v20;
        v30 = v132;
        *(v29 + 128) = v131;
        *(v29 + 144) = v30;
        *(v29 + 160) = v133;
        v31 = v128;
        *(v29 + 64) = v127;
        *(v29 + 80) = v31;
        v32 = v130;
        *(v29 + 96) = v129;
        *(v29 + 112) = v32;
        v33 = v124;
        *v29 = v123;
        *(v29 + 16) = v33;
        v34 = v126;
        *(v29 + 32) = v125;
        *(v29 + 48) = v34;
        goto LABEL_27;
      }

LABEL_25:
      v28[(v20 >> 6) + 8] |= 1 << v20;
      v36 = (v28[6] + 16 * v20);
      *v36 = v16;
      v36[1] = v17;
      v37 = v28[7] + 168 * v20;
      v38 = v128;
      *(v37 + 64) = v127;
      *(v37 + 80) = v38;
      *(v37 + 160) = v133;
      v39 = v132;
      *(v37 + 128) = v131;
      *(v37 + 144) = v39;
      v40 = v130;
      *(v37 + 96) = v129;
      *(v37 + 112) = v40;
      v41 = v124;
      *v37 = v123;
      *(v37 + 16) = v41;
      v42 = v126;
      *(v37 + 32) = v125;
      *(v37 + 48) = v42;
      v43 = v28[2];
      v24 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v24)
      {
        goto LABEL_59;
      }

      v28[2] = v44;

LABEL_27:
      *(v4 + 168) = v28;
      swift_endAccess();
      v45 = *(v4 + 40);
      *&v113 = v16;
      *(&v113 + 1) = v17;

      MEMORY[0x21CED98B0](0x646574616470755FLL, 0xE800000000000000);
      sub_21A4510E4();
      swift_beginAccess();
      v46 = swift_isUniquelyReferenced_nonNull_native();
      v47 = *(v4 + 168);
      v89 = v47;
      *(v4 + 168) = 0x8000000000000000;
      v49 = sub_21A3DCA2C(v16, v17);
      v50 = v47[2];
      v51 = (v48 & 1) == 0;
      v52 = v50 + v51;
      if (__OFADD__(v50, v51))
      {
        goto LABEL_57;
      }

      v53 = v48;
      if (v47[3] >= v52)
      {
        if ((v46 & 1) == 0)
        {
          sub_21A3E4570();
        }
      }

      else
      {
        sub_21A3E3828(v52, v46);
        v54 = sub_21A3DCA2C(v16, v17);
        if ((v53 & 1) != (v55 & 1))
        {
          goto LABEL_63;
        }

        v49 = v54;
      }

      if (v53)
      {
        memmove(&__dst, (v47[7] + 168 * v49), 0xA8uLL);
        sub_21A419F0C(&__dst);
        v120 = v110;
        v121 = v111;
        v122[0] = v112[0];
        *(v122 + 9) = *(v112 + 9);
        v117 = v107;
        v118 = v108;
        v119 = v109;
      }

      else
      {
        sub_21A419E74(&__dst);
        v121 = v111;
        v122[0] = v112[0];
        *(v122 + 9) = *(v112 + 9);
        v117 = v107;
        v118 = v108;
        v119 = v109;
        v120 = v110;
      }

      v113 = __dst;
      v114 = v104;
      v115 = v105;
      v116 = v106;
      v111 = v121;
      v112[0] = v122[0];
      *(v112 + 9) = *(v122 + 9);
      v107 = v117;
      v108 = v118;
      v109 = v119;
      v110 = v120;
      if (sub_21A419E9C(&__dst) == 1)
      {
        __break(1u);
        goto LABEL_62;
      }

      v56 = espresso_network_bind_buffer();
      v98 = v120;
      v99 = v121;
      *v100 = v122[0];
      *&v100[9] = *(v122 + 9);
      v94 = v116;
      v95 = v117;
      v96 = v118;
      v97 = v119;
      v91 = v113;
      v92 = v114;
      v93 = v115;
      v101[7] = v120;
      v101[8] = v121;
      v102[0] = v122[0];
      *(v102 + 9) = *(v122 + 9);
      v101[4] = v117;
      v101[5] = v118;
      v101[6] = v119;
      v101[0] = v113;
      v101[1] = v114;
      v101[2] = v115;
      v101[3] = v116;
      v88 = v88 & 0xFFFFFFFF00000000 | v45;
      if (sub_21A419E9C(v101) == 1)
      {

        v57 = v89;
        if (v53)
        {
          sub_21A419EB8(v89[6] + 16 * v49);
          sub_21A419290(v49, v89);
        }
      }

      else if (v53)
      {

        v57 = v89;
        v58 = v89[7] + 168 * v49;
        v59 = v98;
        v60 = *v100;
        *(v58 + 128) = v99;
        *(v58 + 144) = v60;
        v61 = v94;
        v62 = v96;
        v63 = v97;
        *(v58 + 64) = v95;
        *(v58 + 80) = v62;
        *(v58 + 160) = *&v100[16];
        *(v58 + 96) = v63;
        *(v58 + 112) = v59;
        v64 = v92;
        *v58 = v91;
        *(v58 + 16) = v64;
        *(v58 + 32) = v93;
        *(v58 + 48) = v61;
      }

      else
      {
        v57 = v89;
        v89[(v49 >> 6) + 8] |= 1 << v49;
        v65 = (v89[6] + 16 * v49);
        *v65 = v16;
        v65[1] = v17;
        v66 = v89[7] + 168 * v49;
        v67 = v92;
        *v66 = v91;
        *(v66 + 16) = v67;
        v68 = v93;
        v70 = v96;
        v69 = v97;
        v71 = v94;
        *(v66 + 64) = v95;
        *(v66 + 80) = v70;
        *(v66 + 32) = v68;
        *(v66 + 48) = v71;
        v72 = *v100;
        v73 = v98;
        *(v66 + 128) = v99;
        *(v66 + 144) = v72;
        *(v66 + 160) = *&v100[16];
        *(v66 + 96) = v69;
        *(v66 + 112) = v73;
        v74 = v89[2];
        v24 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v24)
        {
          goto LABEL_60;
        }

        v89[2] = v75;
      }

      *(v4 + 168) = v57;
      swift_endAccess();

      if (v56)
      {

        sub_21A3DCAA4();
        swift_allocError();
        v11 = 6;
        goto LABEL_12;
      }

      v76 = v87;
      if (v84 == v87)
      {

        goto LABEL_50;
      }

      v15 = v86 + 2;
      ++v87;
      if ((v76 + 1) >= *(v85 + 16))
      {
        goto LABEL_58;
      }
    }

    sub_21A3E3828(v25, isUniquelyReferenced_nonNull_native);
    v20 = sub_21A3DCA2C(v16, v17);
    if ((v26 & 1) != (v27 & 1))
    {
      goto LABEL_63;
    }

LABEL_22:
    v28 = __dst;
    if (v26)
    {
      goto LABEL_23;
    }

    goto LABEL_25;
  }

LABEL_50:
  v77 = *(v4 + 176);
  if (v77)
  {

    *v77 = v83;
    if ((*(v4 + 96) & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_52;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  result = sub_21A451A94();
  __break(1u);
  return result;
}

uint64_t sub_21A414C78(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_21A451344();
  *(v4 + 32) = 0u;
  *(v4 + 16) = 10;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  sub_21A4510E4();
  espresso_network_query_blob_shape();

  return v4;
}

uint64_t sub_21A414D84(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    goto LABEL_23;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72 = *a3;
  v11 = v72;
  *a3 = 0x8000000000000000;
  v13 = sub_21A3DCA2C(a4, a5);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v12;
  if (v11[3] >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if (v12)
      {
        goto LABEL_9;
      }

LABEL_12:
      sub_21A419E74(&__dst);
      goto LABEL_13;
    }

LABEL_11:
    sub_21A3E4570();
    if (v5)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  sub_21A3E3828(v16, isUniquelyReferenced_nonNull_native);
  v17 = sub_21A3DCA2C(a4, a5);
  if ((v5 & 1) == (v18 & 1))
  {
    v13 = v17;
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_9:
    memmove(&__dst, (v72[7] + 168 * v13), 0xA8uLL);
    sub_21A419F0C(&__dst);
LABEL_13:
    v69 = v58;
    v70 = v59;
    v71 = v60;
    v65 = v54;
    v66 = v55;
    v67 = v56;
    v68 = v57;
    v61 = v50;
    v62 = v51;
    v63 = v52;
    v64 = v53;
    if (sub_21A419E9C(&__dst) == 1)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v45 = v68;
    v46 = v69;
    v47 = v70;
    v41 = v64;
    v42 = v65;
    v43 = v66;
    v44 = v67;
    v38 = v61;
    v39 = v62;
    v48 = v71;
    v40 = v63;
    v37 = a1;
    result = sub_21A419E9C(&v37);
    v20 = v72;
    if (result == 1)
    {
      if (v5)
      {
        sub_21A419EB8(v72[6] + 16 * v13);
        result = sub_21A419290(v13, v20);
      }

      goto LABEL_21;
    }

    if (v5)
    {
      v21 = v72[7] + 168 * v13;
      v22 = v68;
      *(v21 + 104) = v67;
      *(v21 + 120) = v22;
      v23 = v70;
      *(v21 + 136) = v69;
      *(v21 + 152) = v23;
      v24 = v64;
      *(v21 + 40) = v63;
      *(v21 + 56) = v24;
      v25 = v66;
      *(v21 + 72) = v65;
      *(v21 + 88) = v25;
      v26 = v62;
      *(v21 + 8) = v61;
      *v21 = a1;
      *(v21 + 24) = v26;
LABEL_21:
      *a3 = v20;
      return result;
    }

    v72[(v13 >> 6) + 8] |= 1 << v13;
    v27 = (v20[6] + 16 * v13);
    *v27 = a4;
    v27[1] = a5;
    v28 = v20[7] + 168 * v13;
    v29 = v65;
    *(v28 + 88) = v66;
    *(v28 + 72) = v29;
    v30 = v63;
    *(v28 + 56) = v64;
    *(v28 + 40) = v30;
    v31 = v69;
    *(v28 + 152) = v70;
    *(v28 + 136) = v31;
    v32 = v67;
    *(v28 + 120) = v68;
    *(v28 + 104) = v32;
    v33 = v62;
    *(v28 + 8) = v61;
    *v28 = a1;
    *(v28 + 24) = v33;
    v34 = v20[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (!v35)
    {
      v20[2] = v36;

      goto LABEL_21;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_25:
  result = sub_21A451A94();
  __break(1u);
  return result;
}

uint64_t sub_21A4150E0(uint64_t *a1)
{
  v4 = *a1;
  swift_beginAccess();
  v2 = sub_21A415150(&v4, (v1 + 152));
  swift_endAccess();
  return v2;
}

uint64_t sub_21A415150(void *a1, void *a2)
{
  if (*a1 == 1)
  {
    v4 = v2 + 7;
    swift_beginAccess();
    v5 = 8;
  }

  else
  {
    v4 = v2 + 4;
    swift_beginAccess();
    v5 = 5;
  }

  v41 = v2[v5];
  v40 = *v4;
  v6 = v2[45];
  v7 = *(v6 + 16);
  if (v7)
  {
    v39 = a2;

    v9 = 0;
    for (i = 0; i != v7; ++i)
    {
      if (i >= *(v6 + 16))
      {
        goto LABEL_42;
      }

      v11 = (v6 + 32 + 16 * i);
      v12 = *v11;
      v13 = v11[1];

      sub_21A414C78(v40, v41, v12, v13);
      v15 = v14;
      v17 = v16;

      if (v17 >= 2)
      {
        v19 = v17 >> 1;
        v20 = 1;
        while (1)
        {
          v21 = *v15++;
          v18 = v20 * v21;
          if ((v20 * v21) >> 64 != (v20 * v21) >> 63)
          {
            break;
          }

          v20 = v18;
          if (!--v19)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      v18 = 1;
LABEL_12:
      result = swift_unknownObjectRelease();
      v22 = __OFADD__(v9, v18);
      v9 += v18;
      if (v22)
      {
        goto LABEL_43;
      }
    }

    if (v9 < 0)
    {
      goto LABEL_50;
    }

    if (v9)
    {
      v23 = sub_21A451344();
      *(v23 + 16) = v9;
      memset_pattern16((v23 + 32), &unk_21A456140, 4 * v9);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    a2 = v39;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v24 = v2[45];
  v25 = *(v24 + 16);
  if (!v25)
  {
    return v23;
  }

  v26 = *a2;

  v27 = 0;
  v28 = 0;
  while (v27 < *(v24 + 16))
  {
    v29 = (v24 + 32 + 16 * v27);
    v31 = *v29;
    v30 = v29[1];

    result = sub_21A414C78(v40, v41, v31, v30);
    if (v33 >= 2)
    {
      v35 = v33 >> 1;
      v34 = 1;
      while (1)
      {
        v36 = *v32++;
        v37 = v34 * v36;
        if ((v34 * v36) >> 64 != (v34 * v36) >> 63)
        {
          goto LABEL_41;
        }

        v34 = v37;
        if (!--v35)
        {
          swift_unknownObjectRelease();
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_30;
        }
      }
    }

    swift_unknownObjectRelease();
    result = swift_isUniquelyReferenced_nonNull_native();
    v34 = 1;
    if (result)
    {
      v34 = 1;
    }

    else
    {
LABEL_38:
      result = sub_21A410F90(v23);
      v23 = result;
LABEL_30:
      if (v34 < 0xFFFFFFFF80000000)
      {
        goto LABEL_45;
      }

      if (v34 > 0x7FFFFFFF)
      {
        goto LABEL_46;
      }
    }

    if (!*(v26 + 16))
    {
      goto LABEL_47;
    }

    result = sub_21A3DCA2C(v31, v30);
    if ((v38 & 1) == 0)
    {
      goto LABEL_48;
    }

    if (!*(*(v26 + 56) + 168 * result))
    {
      goto LABEL_51;
    }

    cblas_scopy_NEWLAPACK();

    v22 = __OFADD__(v28, v34);
    v28 += v34;
    if (v22)
    {
      goto LABEL_49;
    }

    if (++v27 == v25)
    {

      return v23;
    }
  }

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
  return result;
}

void *sub_21A415494(_BYTE *a1)
{
  v2 = v1;
  if (*a1)
  {
    v3 = (v1 + 56);
    swift_beginAccess();
    v4 = 64;
  }

  else
  {
    v3 = (v1 + 32);
    swift_beginAccess();
    v4 = 40;
  }

  v5 = *(v2 + 352);
  v39 = *(v5 + 16);
  if (v39)
  {
    v38 = *(v2 + v4);
    v36 = v5 + 32;
    v37 = *v3;

    swift_beginAccess();
    v6 = 0;
    v7 = MEMORY[0x277D84F98];
    v35 = v5;
    while (v6 < *(v5 + 16))
    {
      v8 = (v36 + 16 * v6);
      v10 = *v8;
      v9 = v8[1];

      sub_21A414C78(v37, v38, v10, v9);
      if (v12 >= 2)
      {
        v14 = v12 >> 1;
        v13 = 1;
        do
        {
          v15 = *v11++;
          v16 = v13 * v15;
          if ((v13 * v15) >> 64 != (v13 * v15) >> 63)
          {
            __break(1u);
            goto LABEL_39;
          }

          v13 = v16;
          --v14;
        }

        while (v14);
        swift_unknownObjectRelease();
        if (v13 < 0)
        {
          goto LABEL_40;
        }

        if (!v13)
        {

          v17 = MEMORY[0x277D84F90];
          goto LABEL_17;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        v13 = 1;
      }

      v17 = sub_21A451344();
      *(v17 + 16) = v13;
      bzero((v17 + 32), 4 * v13);
LABEL_17:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v7;
      sub_21A4032A0(v17, v10, v9, isUniquelyReferenced_nonNull_native);

      if (v13 >> 31)
      {
        goto LABEL_41;
      }

      v19 = *(v2 + 136);
      if (!*(v19 + 16))
      {
        goto LABEL_42;
      }

      v20 = v41;

      v21 = sub_21A3DCA2C(v10, v9);
      if ((v22 & 1) == 0)
      {
        goto LABEL_43;
      }

      v40 = v6;
      if (!*(*(v19 + 56) + 168 * v21))
      {
        goto LABEL_45;
      }

      v23 = v2;

      v24 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v20;
      v7 = v20;
      v26 = sub_21A3DCA2C(v10, v9);
      v27 = v20[2];
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_44;
      }

      v30 = v25;
      if (v20[3] >= v29)
      {
        if (v24)
        {
          if ((v25 & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        else
        {
          v7 = &v41;
          sub_21A3E4280();
          if ((v30 & 1) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
        sub_21A3E32BC(v29, v24);
        v7 = v41;
        v31 = sub_21A3DCA2C(v10, v9);
        if ((v30 & 1) != (v32 & 1))
        {
          goto LABEL_46;
        }

        v26 = v31;
        if ((v30 & 1) == 0)
        {
LABEL_34:
          __break(1u);
LABEL_35:

          return v7;
        }
      }

      v33 = *(v41[7] + 8 * v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = sub_21A407D80(0, *(v33 + 2), 0, v33);
      }

      v2 = v23;

      cblas_scopy_NEWLAPACK();
      v5 = v35;
      if (v33)
      {

        v7 = v41;
        *(v41[7] + 8 * v26) = v33;
      }

      else
      {

        v7 = v41;
        sub_21A419EB8(v41[6] + 16 * v26);
        sub_21A4190E0(v26, v7);
      }

      v6 = v40 + 1;

      if (v40 + 1 == v39)
      {
        goto LABEL_35;
      }
    }

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
    __break(1u);
LABEL_46:
    result = sub_21A451A94();
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21A415854(uint64_t a1, uint64_t a2, int64_t a3, int a4, unsigned __int8 *a5, char a6)
{
  v8 = v6;
  v136 = *MEMORY[0x277D85DE8];
  v128 = *a5;
  sub_21A3DCAA4();
  v14 = swift_allocError();
  *v15 = 18;
  if ((*(v6 + 96) & 2) == 0)
  {
    return swift_willThrow();
  }

  v17 = *(v6 + 104);
  swift_beginAccess();
  result = sub_21A416D3C(a1, a2, a3, v17, *(v8 + 32), *(v8 + 40));
  if (!v7)
  {
    v124 = a1;
    v125 = a2;
    sub_21A417004(*(v8 + 32), *(v8 + 40));
    v131 = sub_21A4113F8(0, a3, 1);
    if (a6)
    {
      v135[0] = 2;
      swift_beginAccess();
      v120 = sub_21A415150(v135, (v8 + 152));
      swift_endAccess();
      if (a4)
      {
LABEL_8:
        v18 = 0;
        v19 = a1 + 64;
        v20 = MEMORY[0x277D84F90];
        v132 = v8;
        v122 = a1 + 64;
        v115 = a6;
        v111 = a4;
        v114 = a3;
        while (1)
        {
          v112 = v18;
          if (a6)
          {

            v21 = *(v120 + 16);
            if (v21)
            {
              v22 = sub_21A451344();
              *(v22 + 16) = v21;
              v118 = v22;
              bzero((v22 + 32), 4 * v21);
              if (v128)
              {
                goto LABEL_15;
              }

              goto LABEL_32;
            }

            v20 = MEMORY[0x277D84F90];
          }

          v118 = v20;
          if (v128)
          {
LABEL_15:
            v23 = *(v131 + 16);
            v24 = v23 - 2;
            if (v23 >= 2)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v131 = sub_21A410FA4(v131);
              }

              v25 = 0;
              v26 = v131 + 32;
              do
              {
                v134[0] = 0;
                MEMORY[0x21CEDB240](v134, 8);
                v29 = (v134[0] * v23) >> 64;
                if (v23 > v134[0] * v23)
                {
                  v30 = -v23 % v23;
                  if (v30 > v134[0] * v23)
                  {
                    do
                    {
                      v134[0] = 0;
                      MEMORY[0x21CEDB240](v134, 8);
                    }

                    while (v30 > v134[0] * v23);
                    v29 = (v134[0] * v23) >> 64;
                  }
                }

                v31 = __OFADD__(v25, v29);
                v32 = v25 + v29;
                if (v31)
                {
LABEL_157:
                  __break(1u);
                  goto LABEL_158;
                }

                if (v25 != v32)
                {
                  v33 = *(v131 + 16);
                  if (v25 >= v33)
                  {
                    goto LABEL_165;
                  }

                  if (v32 >= v33)
                  {
LABEL_166:
                    __break(1u);
LABEL_167:
                    __break(1u);
LABEL_168:
                    __break(1u);
LABEL_169:
                    __break(1u);
LABEL_170:
                    __break(1u);
                    goto LABEL_171;
                  }

                  v27 = *(v26 + 8 * v25);
                  *(v26 + 8 * v25) = *(v26 + 8 * v32);
                  *(v26 + 8 * v32) = v27;
                }

                --v23;
              }

              while (v25++ != v24);
              v8 = v132;
            }

            v19 = v122;
          }

LABEL_32:
          v34 = *(v8 + 104);
          if (!v34)
          {
            goto LABEL_175;
          }

          if (a3 == 0x8000000000000000 && v34 == -1)
          {
            goto LABEL_178;
          }

          if (a3 / v34 < 0)
          {
            goto LABEL_176;
          }

          if (!(a3 / v34))
          {
            goto LABEL_100;
          }

          v35 = 0;
          v113 = a3 / v34;
          do
          {
            v116 = v35 + 1;
            v36 = v124;
            v37 = 1 << *(v124 + 32);
            if (v37 < 64)
            {
              v38 = ~(-1 << v37);
            }

            else
            {
              v38 = -1;
            }

            v39 = v38 & *(v124 + 64);

            swift_beginAccess();
            v40 = 0;
            v41 = (v37 + 63) >> 6;
            v123 = v41;
            while (1)
            {
              if (v39)
              {
                if (!*(v36 + 16))
                {
                  goto LABEL_158;
                }

                goto LABEL_45;
              }

LABEL_64:
              v58 = v40 + 1;
              if (__OFADD__(v40, 1))
              {
                goto LABEL_147;
              }

              if (v58 >= v41)
              {
                break;
              }

              v39 = *(v19 + 8 * v58);
              ++v40;
              if (!v39)
              {
                goto LABEL_64;
              }

              v40 = v58;
              if (!*(v36 + 16))
              {
LABEL_158:
                __break(1u);
LABEL_159:
                __break(1u);
LABEL_160:
                __break(1u);
LABEL_161:
                __break(1u);
LABEL_162:
                __break(1u);
LABEL_163:
                __break(1u);
LABEL_164:
                __break(1u);
LABEL_165:
                __break(1u);
                goto LABEL_166;
              }

LABEL_45:
              v42 = (*(v36 + 48) + ((v40 << 10) | (16 * __clz(__rbit64(v39)))));
              v44 = *v42;
              v43 = v42[1];

              sub_21A3DCA2C(v44, v43);
              if ((v45 & 1) == 0)
              {
                goto LABEL_159;
              }

              v46 = *(v8 + 120);
              if (!*(v46 + 16))
              {
                goto LABEL_160;
              }

              v47 = sub_21A3DCA2C(v44, v43);
              if ((v48 & 1) == 0)
              {
                goto LABEL_161;
              }

              v49 = *(*(v46 + 56) + 168 * v47);

              if (!*(v125 + 16))
              {
                goto LABEL_162;
              }

              v50 = sub_21A3DCA2C(v44, v43);
              if ((v51 & 1) == 0)
              {
                goto LABEL_163;
              }

              v52 = *(v132 + 104);
              if (v52 < 0)
              {
                goto LABEL_164;
              }

              if (v52)
              {
                v53 = 0;
                v54 = *(*(v125 + 56) + 8 * v50);
                while (1)
                {
                  v55 = *(v132 + 104);
                  v56 = v35 * v55;
                  if ((v35 * v55) >> 64 != (v35 * v55) >> 63)
                  {
                    break;
                  }

                  v31 = __OFADD__(v56, v53);
                  v57 = v56 + v53;
                  if (v31)
                  {
                    goto LABEL_138;
                  }

                  if (v54 < 0xFFFFFFFF80000000)
                  {
                    goto LABEL_139;
                  }

                  if (v54 > 0x7FFFFFFF)
                  {
                    goto LABEL_140;
                  }

                  if ((v57 & 0x8000000000000000) != 0)
                  {
                    goto LABEL_141;
                  }

                  if (v57 >= *(v131 + 16))
                  {
                    goto LABEL_142;
                  }

                  if ((v54 * *(v131 + 32 + 8 * v57)) >> 64 != (v54 * *(v131 + 32 + 8 * v57)) >> 63)
                  {
                    goto LABEL_143;
                  }

                  if (!v49)
                  {
                    goto LABEL_180;
                  }

                  if ((v54 * v53) >> 64 != (v54 * v53) >> 63)
                  {
                    goto LABEL_144;
                  }

                  ++v53;
                  cblas_scopy_NEWLAPACK();
                  if (v52 == v53)
                  {
                    goto LABEL_42;
                  }
                }

LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
LABEL_139:
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
LABEL_145:

                swift_allocError();
                *v110 = 15;
                swift_willThrow();
              }

LABEL_42:
              v39 &= v39 - 1;

              v8 = v132;
              v41 = v123;
              v36 = v124;
              v19 = v122;
            }

            if (espresso_plan_execute_sync())
            {
              goto LABEL_145;
            }

            a6 = v115;
            if (v115)
            {
              __B = 2;
              swift_beginAccess();
              v59 = sub_21A415150(&__B, (v8 + 168));
              swift_endAccess();
              v60 = *(v59 + 16);
              if (v60 >> 31)
              {
                goto LABEL_177;
              }

              a3 = v114;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v59 = sub_21A407D80(0, v60, 0, v59);
              }

              cblas_saxpy_NEWLAPACK();
              v61 = v118;
              v62 = *(v118 + 16);

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v64 = v118;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v65 = sub_21A407D80(0, v62, 0, v118);
                v64 = v118;
                v61 = v65;
              }

              MEMORY[0x21CEDB360](v59 + 32, 1, v64 + 32, 1, v61 + 32, 1, v62);

              v118 = v61;
              goto LABEL_99;
            }

            v66 = *(v8 + 360);
            v126 = *(v66 + 16);
            if (!v126)
            {
              goto LABEL_98;
            }

            swift_beginAccess();
            swift_beginAccess();
            v67 = 0;
            while (2)
            {
              if (v67 >= *(v66 + 16))
              {
                __break(1u);
LABEL_149:
                __break(1u);
LABEL_150:
                __break(1u);
LABEL_151:
                __break(1u);
                goto LABEL_152;
              }

              v68 = (v66 + 32 + 16 * v67);
              v69 = *v68;
              v70 = v68[1];
              v71 = *(v8 + 40);

              v72 = sub_21A451344();
              *(v72 + 16) = 10;
              *(v72 + 48) = 0u;
              *(v72 + 64) = 0u;
              *(v72 + 80) = 0u;
              *(v72 + 96) = 0u;
              *(v72 + 32) = 0u;
              v134[0] = 0;
              sub_21A4510E4();
              v73 = v129 & 0xFFFFFFFF00000000 | v71;
              espresso_network_query_blob_shape();

              v74 = v134[0];
              if ((v134[0] & 0x8000000000000000) != 0)
              {
                goto LABEL_149;
              }

              if (*(v72 + 16) < v134[0])
              {
                goto LABEL_150;
              }

              v129 = v73;
              if (!v134[0])
              {

                v8 = v132;
                goto LABEL_90;
              }

              v75 = 32;
              v76 = 1;
              v8 = v132;
              do
              {
                v77 = *(v72 + v75);
                v78 = (v76 * v77) >> 64;
                v76 *= v77;
                if (v78 != v76 >> 63)
                {
                  __break(1u);
                  goto LABEL_137;
                }

                v75 += 8;
                --v74;
              }

              while (v74);

              if (v76 < 0xFFFFFFFF80000000)
              {
                goto LABEL_151;
              }

              if (v76 > 0x7FFFFFFF)
              {
LABEL_152:
                __break(1u);
LABEL_153:
                __break(1u);
                goto LABEL_154;
              }

LABEL_90:
              v79 = *(v8 + 168);
              if (!*(v79 + 16))
              {
                goto LABEL_153;
              }

              result = sub_21A3DCA2C(v69, v70);
              if ((v80 & 1) == 0)
              {
LABEL_154:
                __break(1u);
LABEL_155:
                __break(1u);
LABEL_156:
                __break(1u);
                goto LABEL_157;
              }

              if (!*(*(v79 + 56) + 168 * result))
              {
                __break(1u);
LABEL_183:
                __break(1u);
LABEL_184:
                __break(1u);
                return result;
              }

              v81 = *(v8 + 152);
              if (!*(v81 + 16))
              {
                goto LABEL_155;
              }

              result = sub_21A3DCA2C(v69, v70);
              if ((v82 & 1) == 0)
              {
                goto LABEL_156;
              }

              if (!*(*(v81 + 56) + 168 * result))
              {
                goto LABEL_183;
              }

              ++v67;

              cblas_scopy_NEWLAPACK();
              if (v67 != v126)
              {
                continue;
              }

              break;
            }

            a6 = v115;
LABEL_98:
            a3 = v114;
LABEL_99:
            ++v35;
            v19 = v122;
          }

          while (v116 != v113);
LABEL_100:
          if (a6)
          {
            v83 = *(v8 + 104);
            if (!v83)
            {
              goto LABEL_179;
            }

            if (a3 == 0x8000000000000000 && v83 == -1)
            {
LABEL_181:
              __break(1u);
            }

            *&__B = (a3 / v83);
            v84 = v118;
            v85 = *(v118 + 16);

            v86 = v118;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v84 = v118;
              v86 = sub_21A407D80(0, v85, 0, v118);
            }

            vDSP_vsdiv((v84 + 32), 1, &__B, v86 + 8, 1, v85);

            v87 = *(v86 + 2);
            v88 = v120;

            v117 = v86;

            v89 = swift_isUniquelyReferenced_nonNull_native();
            v90 = v120;
            if ((v89 & 1) == 0)
            {
              v91 = sub_21A407D80(0, *(v120 + 16), 0, v120);
              v90 = v120;
              v88 = v91;
            }

            MEMORY[0x21CEDB360](v90 + 32, 1, v86 + 32, 1, v88 + 32, 1, v87);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v88 = sub_21A410F90(v88);
            }

            v92 = v112;
            v93 = *(v8 + 360);
            v130 = *(v93 + 16);
            v120 = v88;
            if (v130)
            {
              v127 = v93 + 32;

              swift_beginAccess();
              v94 = 0;
              v95 = 0;
              v119 = v93;
LABEL_112:
              if (v94 >= *(v93 + 16))
              {
                goto LABEL_167;
              }

              v96 = (v127 + 16 * v94);
              v98 = *v96;
              v97 = v96[1];
              v99 = *(v8 + 40);

              v100 = sub_21A451344();
              *(v100 + 16) = 10;
              *(v100 + 48) = 0u;
              *(v100 + 64) = 0u;
              *(v100 + 80) = 0u;
              *(v100 + 96) = 0u;
              *(v100 + 32) = 0u;
              v134[0] = 0;
              sub_21A4510E4();
              v101 = v121 & 0xFFFFFFFF00000000 | v99;
              espresso_network_query_blob_shape();

              v102 = v134[0];
              if ((v134[0] & 0x8000000000000000) != 0)
              {
                goto LABEL_168;
              }

              v121 = v101;
              if (*(v100 + 16) < v134[0])
              {
                goto LABEL_169;
              }

              v8 = v132;
              if (!v134[0])
              {

                v104 = 1;
                goto LABEL_123;
              }

              v103 = 32;
              v104 = 1;
              while (1)
              {
                v105 = *(v100 + v103);
                v106 = (v104 * v105) >> 64;
                v104 *= v105;
                if (v106 != v104 >> 63)
                {
                  break;
                }

                v103 += 8;
                if (!--v102)
                {

                  if (v104 < 0xFFFFFFFF80000000)
                  {
                    goto LABEL_170;
                  }

                  if (v104 > 0x7FFFFFFF)
                  {
LABEL_171:
                    __break(1u);
LABEL_172:
                    __break(1u);
                    goto LABEL_173;
                  }

LABEL_123:
                  v107 = *(v132 + 152);
                  if (!*(v107 + 16))
                  {
                    goto LABEL_172;
                  }

                  result = sub_21A3DCA2C(v98, v97);
                  if ((v108 & 1) == 0)
                  {
LABEL_173:
                    __break(1u);
LABEL_174:
                    __break(1u);
LABEL_175:
                    __break(1u);
LABEL_176:
                    __break(1u);
LABEL_177:
                    __break(1u);
LABEL_178:
                    __break(1u);
LABEL_179:
                    __break(1u);
LABEL_180:
                    __break(1u);
                    goto LABEL_181;
                  }

                  if (!*(*(v107 + 56) + 168 * result))
                  {
                    goto LABEL_184;
                  }

                  cblas_scopy_NEWLAPACK();
                  v31 = __OFADD__(v95, v104);
                  v95 += v104;
                  if (v31)
                  {
                    goto LABEL_174;
                  }

                  ++v94;
                  v93 = v119;
                  if (v94 == v130)
                  {

                    a6 = v115;
                    a3 = v114;
                    v92 = v112;
                    v19 = v122;
                    goto LABEL_129;
                  }

                  goto LABEL_112;
                }
              }

              __break(1u);
LABEL_147:
              __break(1u);
              swift_endAccess();
            }

LABEL_129:
            v109 = v111;
            v20 = v117;
          }

          else
          {
            v20 = v118;
            v109 = v111;
            v92 = v112;
          }

          v18 = v92 + 1;
          if (v18 == v109)
          {
          }
        }
      }
    }

    else
    {
      v120 = MEMORY[0x277D84F90];
      if (a4)
      {
        goto LABEL_8;
      }
    }
  }

  return result;
}

unint64_t sub_21A4165CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  sub_21A3DCAA4();
  v9 = swift_allocError();
  *v10 = 19;
  if ((*(v5 + 96) & 1) == 0)
  {
LABEL_2:
    swift_willThrow();
    return a3;
  }

  v11 = *(v5 + 104);
  if (!v11)
  {
    goto LABEL_86;
  }

  if (a3 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_88;
  }

  swift_beginAccess();
  sub_21A416D3C(a1, a2, a3, v11, *(v5 + 56), *(v5 + 64));
  if (v4)
  {
    return a3;
  }

  v57 = a2;
  a2 = v5;
  sub_21A417004(*(v5 + 56), *(v5 + 64));
  v50 = v11;
  v11 = a3 / v11;
  if (v11 < 0)
  {
    goto LABEL_89;
  }

  v49 = a3;
  v52 = 0;
  v53 = v11;
  v59 = v5;
  if (v11)
  {
    v13 = 0;
    a3 = MEMORY[0x277D84F90];
    v14 = a1 + 64;
    while (2)
    {
      v58 = v13;
      v54 = v13 + 1;
      v55 = a3;
      a2 = 1 << *(a1 + 32);
      if (a2 < 64)
      {
        v15 = ~(-1 << a2);
      }

      else
      {
        v15 = -1;
      }

      v16 = v15 & *(a1 + 64);

      swift_beginAccess();
      v17 = 0;
      a3 = (a2 + 63) >> 6;
      if (v16)
      {
        while (1)
        {
          v11 = v17;
LABEL_20:
          if (!*(a1 + 16))
          {
            break;
          }

          v18 = (*(a1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v16)))));
          v20 = *v18;
          v19 = v18[1];

          a2 = a1;
          sub_21A3DCA2C(v20, v19);
          if ((v21 & 1) == 0)
          {
            goto LABEL_76;
          }

          a2 = *(v5 + 120);
          if (!*(a2 + 16))
          {
            goto LABEL_77;
          }

          v22 = sub_21A3DCA2C(v20, v19);
          if ((v23 & 1) == 0)
          {
            goto LABEL_78;
          }

          v5 = *(*(a2 + 56) + 168 * v22);

          a2 = v57;
          if (!*(v57 + 16))
          {
            goto LABEL_79;
          }

          v24 = sub_21A3DCA2C(v20, v19);
          if ((v25 & 1) == 0)
          {
            goto LABEL_80;
          }

          v26 = *(*(v57 + 56) + 8 * v24);
          v27 = *(v59 + 104);
          a2 = v26 * v27;
          if ((v26 * v27) >> 64 != (v26 * v27) >> 63)
          {
            goto LABEL_81;
          }

          if (a2 < 0xFFFFFFFF80000000)
          {
            goto LABEL_82;
          }

          if (a2 > 0x7FFFFFFF)
          {
            goto LABEL_83;
          }

          if ((v26 * v58) >> 64 != (v26 * v58) >> 63)
          {
            goto LABEL_84;
          }

          if ((v26 * v58 * v27) >> 64 != (v26 * v58 * v27) >> 63)
          {
            goto LABEL_85;
          }

          if (!v5)
          {
            goto LABEL_101;
          }

          v16 &= v16 - 1;

          cblas_scopy_NEWLAPACK();

          v17 = v11;
          v5 = v59;
          v14 = a1 + 64;
          if (!v16)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
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
        goto LABEL_90;
      }

      while (1)
      {
LABEL_17:
        v11 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_70:
          v61 = 1;
          a2 = sub_21A415494(&v61);
          a3 = v55;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_102;
          }

          goto LABEL_71;
        }

        if (v11 >= a3)
        {
          break;
        }

        v16 = *(v14 + 8 * v11);
        ++v17;
        if (v16)
        {
          goto LABEL_20;
        }
      }

      if (espresso_plan_execute_sync())
      {
LABEL_68:

        swift_allocError();
        *v46 = 20;
        goto LABEL_2;
      }

      v60[0] = 1;
      v28 = sub_21A415494(v60);
      a3 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a3 = sub_21A4082B4(0, v55[2] + 1, 1, v55);
      }

      v11 = v53;
      v30 = *(a3 + 16);
      v29 = *(a3 + 24);
      if (v30 >= v29 >> 1)
      {
        a3 = sub_21A4082B4((v29 > 1), v30 + 1, 1, a3);
      }

      *(a3 + 16) = v30 + 1;
      *(a3 + 8 * v30 + 32) = v28;
      v13 = v54;
      if (v54 != v53)
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

  if (v49 - v11 * v50 < 1)
  {
    return a3;
  }

  v31 = *(v5 + 104);
  v32 = *(v5 + 72);
  a2 = v5;
  sub_21A41868C(v49 - v11 * v50, v32, *(v5 + 56), *(v5 + 64));
  v55 = a3;
  v56 = v49 - v11 * v50;
  v58 = v31;
  v51 = v32;
  v52 = 0;
  v33 = a1 + 64;
  v34 = 1 << *(a1 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v11 = v35 & *(a1 + 64);

  swift_beginAccess();
  v36 = 0;
  v37 = (v34 + 63) >> 6;
  if (!v11)
  {
LABEL_50:
    while (1)
    {
      a3 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        goto LABEL_87;
      }

      if (a3 >= v37)
      {

        v11 = v51;
        if (!espresso_plan_execute_sync())
        {
          goto LABEL_70;
        }

        goto LABEL_68;
      }

      v11 = *(v33 + 8 * a3);
      ++v36;
      if (v11)
      {
        goto LABEL_53;
      }
    }
  }

  while (1)
  {
    a3 = v36;
LABEL_53:
    if (!*(a1 + 16))
    {
      break;
    }

    v38 = (*(a1 + 48) + ((a3 << 10) | (16 * __clz(__rbit64(v11)))));
    v40 = *v38;
    v39 = v38[1];

    a2 = a1;
    sub_21A3DCA2C(v40, v39);
    if ((v41 & 1) == 0)
    {
      goto LABEL_91;
    }

    a2 = *(v5 + 120);
    if (!*(a2 + 16))
    {
      goto LABEL_92;
    }

    v42 = sub_21A3DCA2C(v40, v39);
    if ((v43 & 1) == 0)
    {
      goto LABEL_93;
    }

    v5 = *(*(a2 + 56) + 168 * v42);

    a2 = v57;
    if (!*(v57 + 16))
    {
      goto LABEL_94;
    }

    result = sub_21A3DCA2C(v40, v39);
    if ((v44 & 1) == 0)
    {
      goto LABEL_95;
    }

    v45 = *(*(v57 + 56) + 8 * result);
    a2 = v45 * v56;
    if ((v45 * v56) >> 64 != (v45 * v56) >> 63)
    {
      goto LABEL_96;
    }

    if (a2 < 0xFFFFFFFF80000000)
    {
      goto LABEL_97;
    }

    if (a2 > 0x7FFFFFFF)
    {
      goto LABEL_98;
    }

    if ((v45 * v53) >> 64 != (v45 * v53) >> 63)
    {
      goto LABEL_99;
    }

    if ((v45 * v53 * v58) >> 64 != (v45 * v53 * v58) >> 63)
    {
      goto LABEL_100;
    }

    if (!v5)
    {
      __break(1u);
      return result;
    }

    v11 &= v11 - 1;

    cblas_scopy_NEWLAPACK();

    v36 = a3;
    v5 = v59;
    v33 = a1 + 64;
    if (!v11)
    {
      goto LABEL_50;
    }
  }

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
  a3 = sub_21A4082B4(0, *(a3 + 16) + 1, 1, a3);
LABEL_71:
  v48 = *(a3 + 16);
  v47 = *(a3 + 24);
  if (v48 >= v47 >> 1)
  {
    a3 = sub_21A4082B4((v47 > 1), v48 + 1, 1, a3);
  }

  *(a3 + 16) = v48 + 1;
  *(a3 + 8 * v48 + 32) = a2;
  sub_21A41868C(v58, v11, *(v5 + 56), *(v5 + 64));
  if (v52)
  {
  }

  return a3;
}

uint64_t sub_21A416D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v8 = a1;
  v35 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);

  v40 = v6;
  result = swift_beginAccess();
  v13 = 0;
  v14 = (v9 + 63) >> 6;
  v41 = v8;
  v36 = v14;
  while (v11)
  {
LABEL_9:
    if (!*(*(v40 + 120) + 16))
    {
      v33 = 10;
      goto LABEL_32;
    }

    v16 = (*(v8 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v11)))));
    v18 = *v16;
    v17 = v16[1];

    sub_21A3DCA2C(v18, v17);
    v20 = v19;

    if ((v20 & 1) == 0 || !*(a2 + 16) || (v21 = sub_21A3DCA2C(v18, v17), (v22 & 1) == 0))
    {
      v33 = 10;
LABEL_31:

      goto LABEL_32;
    }

    v23 = *(*(a2 + 56) + 8 * v21);
    result = sub_21A414C78(a5, a6, v18, v17);
    if (v25 >= 2)
    {
      v27 = v25 >> 1;
      v26 = 1;
      do
      {
        v28 = *v24++;
        v29 = v26 * v28;
        if ((v26 * v28) >> 64 != (v26 * v28) >> 63)
        {
          __break(1u);
          goto LABEL_34;
        }

        v26 = v29;
        --v27;
      }

      while (v27);
      result = swift_unknownObjectRelease();
      if (v23 <= 0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      result = swift_unknownObjectRelease();
      if (v23 <= 0)
      {
LABEL_30:
        v33 = 11;
        goto LABEL_31;
      }

      v26 = 1;
    }

    if ((v23 * a3) >> 64 != (v23 * a3) >> 63)
    {
      goto LABEL_35;
    }

    if (!*(v41 + 16))
    {
      goto LABEL_36;
    }

    v30 = v18;
    v8 = v41;
    v31 = sub_21A3DCA2C(v30, v17);
    v43 = v32;

    if ((v43 & 1) == 0)
    {
      goto LABEL_37;
    }

    if (v23 * a3 == *(*(*(v41 + 56) + 8 * v31) + 16))
    {
      if ((a4 * v23) >> 64 != (a4 * v23) >> 63)
      {
        goto LABEL_38;
      }

      v11 &= v11 - 1;
      v14 = v36;
      if (v26 == a4 * v23)
      {
        continue;
      }
    }

    v33 = 11;
LABEL_32:
    sub_21A3DCAA4();
    swift_allocError();
    *v34 = v33;
    swift_willThrow();
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v14)
    {
    }

    v11 = *(v35 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_9;
    }
  }

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
  return result;
}

uint64_t sub_21A417004(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v155 = *MEMORY[0x277D85DE8];
  v4 = *(v2[43] + 16);
  v83 = a2;
  if (v4)
  {
    v87 = a2;

    v6 = 0;
    v7 = (v5 + 40);
    v84 = v5;
    while (1)
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      sub_21A4510E4();
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = v3[15];
      v92 = v11;
      v3[15] = 0x8000000000000000;
      v13 = sub_21A3DCA2C(v8, v9);
      v14 = v11[2];
      v15 = (v12 & 1) == 0;
      v16 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
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
      }

      v17 = v12;
      if (v11[3] >= v16)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v20 = v90;
          if (v12)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_21A3E4570();
          v20 = v90;
          if (v17)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        sub_21A3E3828(v16, isUniquelyReferenced_nonNull_native);
        v18 = sub_21A3DCA2C(v8, v9);
        if ((v17 & 1) != (v19 & 1))
        {
LABEL_91:
          result = sub_21A451A94();
          __break(1u);
          return result;
        }

        v13 = v18;
        v20 = v90;
        if (v17)
        {
LABEL_10:
          memmove(&__dst, (v92[7] + 168 * v13), 0xA8uLL);
          sub_21A419F0C(&__dst);
          v152 = v142;
          v153 = v143;
          v154[0] = v144[0];
          *(v154 + 9) = *(v144 + 9);
          v149 = v139;
          v150 = v140;
          v151 = v141;
          goto LABEL_13;
        }
      }

      sub_21A419E74(&__dst);
      v153 = v143;
      v154[0] = v144[0];
      *(v154 + 9) = *(v144 + 9);
      v149 = v139;
      v150 = v140;
      v151 = v141;
      v152 = v142;
LABEL_13:
      v145 = __dst;
      v146 = v136;
      v147 = v137;
      v148 = v138;
      v143 = v153;
      v144[0] = v154[0];
      *(v144 + 9) = *(v154 + 9);
      v139 = v149;
      v140 = v150;
      v141 = v151;
      v142 = v152;
      if (sub_21A419E9C(&__dst) == 1)
      {
        goto LABEL_88;
      }

      v21 = v20 & 0xFFFFFFFF00000000 | v87;
      v22 = espresso_network_bind_buffer();
      v122 = v152;
      v123 = v153;
      *v124 = v154[0];
      *&v124[9] = *(v154 + 9);
      v119 = v149;
      v120 = v150;
      v121 = v151;
      v115 = v145;
      v116 = v146;
      v117 = v147;
      v118 = v148;
      v132 = v152;
      v133 = v153;
      v134[0] = v154[0];
      *(v134 + 9) = *(v154 + 9);
      v129 = v149;
      v130 = v150;
      v131 = v151;
      v125 = v145;
      v126 = v146;
      v127 = v147;
      v128 = v148;
      v90 = v21;
      if (sub_21A419E9C(&v125) == 1)
      {

        v23 = v92;
        if (v17)
        {
          sub_21A419EB8(v92[6] + 16 * v13);
          sub_21A419290(v13, v92);
        }
      }

      else if (v17)
      {

        v23 = v92;
        v24 = v92[7] + 168 * v13;
        *(v24 + 128) = v123;
        *(v24 + 144) = *v124;
        *(v24 + 160) = *&v124[16];
        *(v24 + 64) = v119;
        *(v24 + 80) = v120;
        *(v24 + 96) = v121;
        *(v24 + 112) = v122;
        *v24 = v115;
        *(v24 + 16) = v116;
        *(v24 + 32) = v117;
        *(v24 + 48) = v118;
      }

      else
      {
        v23 = v92;
        v92[(v13 >> 6) + 8] |= 1 << v13;
        v25 = (v92[6] + 16 * v13);
        *v25 = v8;
        v25[1] = v9;
        v26 = v92[7] + 168 * v13;
        *v26 = v115;
        *(v26 + 16) = v116;
        *(v26 + 64) = v119;
        *(v26 + 80) = v120;
        *(v26 + 32) = v117;
        *(v26 + 48) = v118;
        *(v26 + 160) = *&v124[16];
        *(v26 + 128) = v123;
        *(v26 + 144) = *v124;
        *(v26 + 96) = v121;
        *(v26 + 112) = v122;
        v27 = v92[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_84;
        }

        v92[2] = v29;
      }

      v3 = v91;
      v91[15] = v23;
      swift_endAccess();

      if (v22)
      {
        goto LABEL_25;
      }

      if (v4 - 1 == v6)
      {

        a2 = v83;
        break;
      }

      ++v6;
      v7 += 2;
      if (v6 >= *(v84 + 16))
      {
        __break(1u);
LABEL_25:

        sub_21A3DCAA4();
        swift_allocError();
        v31 = 4;
        goto LABEL_79;
      }
    }
  }

  result = v3[44];
  v33 = *(result + 16);
  if (v33)
  {
    v88 = a2;

    v35 = 0;
    v36 = (v34 + 40);
    v85 = v34;
    while (1)
    {
      v37 = *(v36 - 1);
      v38 = *v36;
      sub_21A4510E4();
      swift_beginAccess();

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v40 = v3[17];
      v93 = v40;
      v3[17] = 0x8000000000000000;
      v42 = sub_21A3DCA2C(v37, v38);
      v43 = v40[2];
      v44 = (v41 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        goto LABEL_83;
      }

      v46 = v41;
      if (v40[3] >= v45)
      {
        if (v39)
        {
          v49 = v90;
          if (v41)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_21A3E4570();
          v49 = v90;
          if (v46)
          {
            goto LABEL_36;
          }
        }
      }

      else
      {
        sub_21A3E3828(v45, v39);
        v47 = sub_21A3DCA2C(v37, v38);
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_91;
        }

        v42 = v47;
        v49 = v90;
        if (v46)
        {
LABEL_36:
          memmove(&__dst, (v93[7] + 168 * v42), 0xA8uLL);
          sub_21A419F0C(&__dst);
          goto LABEL_39;
        }
      }

      sub_21A419E74(&__dst);
LABEL_39:
      v153 = v143;
      v154[0] = v144[0];
      *(v154 + 9) = *(v144 + 9);
      v149 = v139;
      v150 = v140;
      v151 = v141;
      v152 = v142;
      v145 = __dst;
      v146 = v136;
      v147 = v137;
      v148 = v138;
      v144[0] = v154[0];
      *(v144 + 9) = *(v154 + 9);
      if (sub_21A419E9C(&__dst) == 1)
      {
        goto LABEL_89;
      }

      v50 = v49 & 0xFFFFFFFF00000000 | v88;
      v51 = espresso_network_bind_buffer();
      v112 = v152;
      v113 = v153;
      *v114 = v154[0];
      *&v114[9] = *(v154 + 9);
      v109 = v149;
      v110 = v150;
      v111 = v151;
      v105 = v145;
      v106 = v146;
      v107 = v147;
      v108 = v148;
      v133 = v153;
      v134[0] = v154[0];
      *(v134 + 9) = *(v154 + 9);
      v129 = v149;
      v130 = v150;
      v131 = v151;
      v132 = v152;
      v125 = v145;
      v126 = v146;
      v127 = v147;
      v128 = v148;
      v90 = v50;
      if (sub_21A419E9C(&v125) == 1)
      {

        v52 = v93;
        if (v46)
        {
          sub_21A419EB8(v93[6] + 16 * v42);
          sub_21A419290(v42, v93);
        }
      }

      else if (v46)
      {

        v52 = v93;
        v53 = v93[7] + 168 * v42;
        *(v53 + 128) = v113;
        *(v53 + 144) = *v114;
        *(v53 + 160) = *&v114[16];
        *(v53 + 64) = v109;
        *(v53 + 80) = v110;
        *(v53 + 96) = v111;
        *(v53 + 112) = v112;
        *v53 = v105;
        *(v53 + 16) = v106;
        *(v53 + 32) = v107;
        *(v53 + 48) = v108;
      }

      else
      {
        v52 = v93;
        v93[(v42 >> 6) + 8] |= 1 << v42;
        v54 = (v93[6] + 16 * v42);
        *v54 = v37;
        v54[1] = v38;
        v55 = v93[7] + 168 * v42;
        *v55 = v105;
        *(v55 + 16) = v106;
        *(v55 + 64) = v109;
        *(v55 + 80) = v110;
        *(v55 + 32) = v107;
        *(v55 + 48) = v108;
        *(v55 + 160) = *&v114[16];
        *(v55 + 128) = v113;
        *(v55 + 144) = *v114;
        *(v55 + 96) = v111;
        *(v55 + 112) = v112;
        v56 = v93[2];
        v28 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v28)
        {
          goto LABEL_86;
        }

        v93[2] = v57;
      }

      v3 = v91;
      v91[17] = v52;
      swift_endAccess();

      if (v51)
      {
        goto LABEL_51;
      }

      if (v33 - 1 == v35)
      {

        a2 = v83;
        break;
      }

      ++v35;
      v36 += 2;
      if (v35 >= *(v85 + 16))
      {
        __break(1u);
LABEL_51:

        sub_21A3DCAA4();
        swift_allocError();
        v31 = 5;
        goto LABEL_79;
      }
    }
  }

  if (*(v3 + 112) != 1)
  {
    return result;
  }

  result = v3[45];
  v58 = *(result + 16);
  if (!v58)
  {
    return result;
  }

  v89 = a2;

  v60 = 0;
  v61 = (v59 + 40);
  v86 = v59;
  do
  {
    v62 = *(v61 - 1);
    v63 = *v61;
    sub_21A4510E4();
    swift_beginAccess();

    v64 = swift_isUniquelyReferenced_nonNull_native();
    v65 = v3[19];
    v94 = v65;
    v3[19] = 0x8000000000000000;
    v67 = sub_21A3DCA2C(v62, v63);
    v68 = v65[2];
    v69 = (v66 & 1) == 0;
    v70 = v68 + v69;
    if (__OFADD__(v68, v69))
    {
      goto LABEL_85;
    }

    v71 = v66;
    if (v65[3] >= v70)
    {
      if (v64)
      {
        v74 = v90;
        if (v66)
        {
          goto LABEL_63;
        }
      }

      else
      {
        sub_21A3E4570();
        v74 = v90;
        if (v71)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      sub_21A3E3828(v70, v64);
      v72 = sub_21A3DCA2C(v62, v63);
      if ((v71 & 1) != (v73 & 1))
      {
        goto LABEL_91;
      }

      v67 = v72;
      v74 = v90;
      if (v71)
      {
LABEL_63:
        memmove(&__dst, (v94[7] + 168 * v67), 0xA8uLL);
        sub_21A419F0C(&__dst);
        goto LABEL_66;
      }
    }

    sub_21A419E74(&__dst);
LABEL_66:
    v153 = v143;
    v154[0] = v144[0];
    *(v154 + 9) = *(v144 + 9);
    v149 = v139;
    v150 = v140;
    v151 = v141;
    v152 = v142;
    v145 = __dst;
    v146 = v136;
    v147 = v137;
    v148 = v138;
    v144[0] = v154[0];
    *(v144 + 9) = *(v154 + 9);
    if (sub_21A419E9C(&__dst) == 1)
    {
      goto LABEL_90;
    }

    v75 = v74 & 0xFFFFFFFF00000000 | v89;
    v76 = espresso_network_bind_buffer();
    v103 = v153;
    *v104 = v154[0];
    *&v104[9] = *(v154 + 9);
    v99 = v149;
    v100 = v150;
    v101 = v151;
    v102 = v152;
    v95 = v145;
    v96 = v146;
    v97 = v147;
    v98 = v148;
    v133 = v153;
    v134[0] = v154[0];
    *(v134 + 9) = *(v154 + 9);
    v129 = v149;
    v130 = v150;
    v131 = v151;
    v132 = v152;
    v125 = v145;
    v126 = v146;
    v127 = v147;
    v128 = v148;
    v90 = v75;
    if (sub_21A419E9C(&v125) == 1)
    {

      v77 = v94;
      if (v71)
      {
        sub_21A419EB8(v94[6] + 16 * v67);
        sub_21A419290(v67, v94);
      }
    }

    else if (v71)
    {

      v77 = v94;
      v78 = v94[7] + 168 * v67;
      *(v78 + 128) = v103;
      *(v78 + 144) = *v104;
      *(v78 + 160) = *&v104[16];
      *(v78 + 64) = v99;
      *(v78 + 80) = v100;
      *(v78 + 96) = v101;
      *(v78 + 112) = v102;
      *v78 = v95;
      *(v78 + 16) = v96;
      *(v78 + 32) = v97;
      *(v78 + 48) = v98;
    }

    else
    {
      v77 = v94;
      v94[(v67 >> 6) + 8] |= 1 << v67;
      v79 = (v94[6] + 16 * v67);
      *v79 = v62;
      v79[1] = v63;
      v80 = v94[7] + 168 * v67;
      *v80 = v95;
      *(v80 + 16) = v96;
      *(v80 + 64) = v99;
      *(v80 + 80) = v100;
      *(v80 + 32) = v97;
      *(v80 + 48) = v98;
      *(v80 + 160) = *&v104[16];
      *(v80 + 128) = v103;
      *(v80 + 144) = *v104;
      *(v80 + 96) = v101;
      *(v80 + 112) = v102;
      v81 = v94[2];
      v28 = __OFADD__(v81, 1);
      v82 = v81 + 1;
      if (v28)
      {
        goto LABEL_87;
      }

      v94[2] = v82;
    }

    v3 = v91;
    v91[19] = v77;
    swift_endAccess();

    if (v76)
    {
      goto LABEL_78;
    }

    if (v58 - 1 == v60)
    {
    }

    ++v60;
    v61 += 2;
  }

  while (v60 < *(v86 + 16));
  __break(1u);
LABEL_78:

  sub_21A3DCAA4();
  swift_allocError();
  v31 = 6;
LABEL_79:
  *v30 = v31;
  return swift_willThrow();
}

uint64_t sub_21A417C90()
{
  v2 = v1;
  v3 = v0;
  v134 = *MEMORY[0x277D85DE8];
  v132 = 0;
  v133 = 0;
  espresso_create_context();
  espresso_create_plan();
  v4 = v0[11];
  *&v111 = v0[10];
  *(&v111 + 1) = v4;
  swift_bridgeObjectRetain_n();
  MEMORY[0x21CED98B0](0x74696E693ALL, 0xE500000000000000);

  sub_21A4510E4();

  LODWORD(v4) = espresso_plan_add_network();

  if (v4)
  {
    sub_21A3DCAA4();
    swift_allocError();
    v6 = 8;
LABEL_10:
    *v5 = v6;
    return swift_willThrow();
  }

  v85 = v0;
  v7 = v0[45];
  v8 = *(v7 + 16);

  v9 = v7 + 40;
  v10 = -1;
  while (v10 - v8 != -1)
  {
    if (++v10 >= *(v7 + 16))
    {
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }

    v11 = v9 + 16;
    sub_21A4510E4();
    v2 = v2 & 0xFFFFFFFF00000000 | v133;
    v12 = espresso_network_declare_output();

    v9 = v11;
    if (v12)
    {

      sub_21A3DCAA4();
      swift_allocError();
      v6 = 3;
      goto LABEL_10;
    }
  }

  if (espresso_plan_build())
  {
    sub_21A3DCAA4();
    swift_allocError();
    v6 = 9;
    goto LABEL_10;
  }

  v14 = sub_21A3E58A4(MEMORY[0x277D84F90]);
  v15 = *(v3[45] + 16);
  if (!v15)
  {
LABEL_47:
    if (espresso_plan_execute_sync())
    {
      sub_21A3DCAA4();
      swift_allocError();
      *v66 = 12;
      swift_willThrow();
    }

    else
    {
      v67 = v85[45];
      v90 = *(v67 + 16);
      if (v90)
      {

        swift_beginAccess();
        v68 = 0;
        do
        {
          if (v68 >= *(v67 + 16))
          {
            goto LABEL_73;
          }

          v69 = (v67 + 32 + 16 * v68);
          v71 = *v69;
          v70 = v69[1];
          v72 = v132;
          v73 = v133;

          sub_21A414C78(v72, v73, v71, v70);
          if (v75 >= 2)
          {
            v76 = v75 >> 1;
            v77 = 1;
            do
            {
              v78 = *v74++;
              v79 = (v77 * v78) >> 64;
              v77 *= v78;
              if (v79 != v77 >> 63)
              {
                goto LABEL_69;
              }

              --v76;
            }

            while (v76);
            swift_unknownObjectRelease();
            if (v77 < 0xFFFFFFFF80000000)
            {
              goto LABEL_74;
            }

            if (v77 > 0x7FFFFFFF)
            {
              goto LABEL_75;
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }

          if (!v14[2])
          {
            goto LABEL_76;
          }

          v80 = sub_21A3DCA2C(v71, v70);
          if ((v81 & 1) == 0)
          {
            goto LABEL_77;
          }

          if (!*(v14[7] + 168 * v80))
          {
            goto LABEL_82;
          }

          v82 = v85[19];
          if (!*(v82 + 16))
          {
            goto LABEL_78;
          }

          v83 = sub_21A3DCA2C(v71, v70);
          if ((v84 & 1) == 0)
          {
            goto LABEL_79;
          }

          if (!*(*(v82 + 56) + 168 * v83))
          {
            goto LABEL_83;
          }

          ++v68;

          cblas_scopy_NEWLAPACK();
        }

        while (v68 != v90);
      }

      espresso_plan_destroy();
      espresso_context_destroy();
    }
  }

  v131 = 0;
  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v121 = 0u;
  v122 = 0u;

  v17 = 0;
  v18 = (v16 + 40);
  v86 = v16;
  do
  {
    v89 = v17;
    v19 = *(v18 - 1);
    v20 = *v18;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v111 = v14;
    v22 = sub_21A3DCA2C(v19, v20);
    v24 = v14[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_70;
    }

    v28 = v23;
    if (v14[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v56 = v18;
        v57 = v22;
        sub_21A3E4570();
        v22 = v57;
        v18 = v56;
      }
    }

    else
    {
      sub_21A3E3828(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_21A3DCA2C(v19, v20);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_84;
      }
    }

    v30 = v111;
    v88 = v18;
    if (v28)
    {
      v31 = *(v111 + 56) + 168 * v22;
      v32 = v130;
      *(v31 + 128) = v129;
      *(v31 + 144) = v32;
      *(v31 + 160) = v131;
      v33 = v126;
      *(v31 + 64) = v125;
      *(v31 + 80) = v33;
      v34 = v128;
      *(v31 + 96) = v127;
      *(v31 + 112) = v34;
      v35 = v122;
      *v31 = v121;
      *(v31 + 16) = v35;
      v36 = v124;
      *(v31 + 32) = v123;
      *(v31 + 48) = v36;
    }

    else
    {
      *(v111 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v37 = (v30[6] + 16 * v22);
      *v37 = v19;
      v37[1] = v20;
      v38 = v30[7] + 168 * v22;
      v39 = v126;
      *(v38 + 64) = v125;
      *(v38 + 80) = v39;
      *(v38 + 160) = v131;
      v40 = v130;
      *(v38 + 128) = v129;
      *(v38 + 144) = v40;
      v41 = v128;
      *(v38 + 96) = v127;
      *(v38 + 112) = v41;
      v42 = v122;
      *v38 = v121;
      *(v38 + 16) = v42;
      v43 = v124;
      *(v38 + 32) = v123;
      *(v38 + 48) = v43;
      v44 = v30[2];
      v26 = __OFADD__(v44, 1);
      v45 = v44 + 1;
      if (v26)
      {
        goto LABEL_72;
      }

      v30[2] = v45;
    }

    v46 = v133;
    sub_21A4510E4();
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v91 = v30;
    v49 = sub_21A3DCA2C(v19, v20);
    v50 = v30[2];
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_71;
    }

    v53 = v48;
    if (v30[3] >= v52)
    {
      if (v47)
      {
        if (v48)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_21A3E4570();
        if (v53)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      sub_21A3E3828(v52, v47);
      v54 = sub_21A3DCA2C(v19, v20);
      if ((v53 & 1) != (v55 & 1))
      {
        goto LABEL_84;
      }

      v49 = v54;
      if (v53)
      {
LABEL_30:
        memmove(__dst, (v30[7] + 168 * v49), 0xA8uLL);
        sub_21A419F0C(__dst);
        v118 = v108;
        v119 = v109;
        v120[0] = v110[0];
        *(v120 + 9) = *(v110 + 9);
        v115 = v105;
        v116 = v106;
        v117 = v107;
        goto LABEL_33;
      }
    }

    sub_21A419E74(__dst);
    v119 = v109;
    v120[0] = v110[0];
    *(v120 + 9) = *(v110 + 9);
    v115 = v105;
    v116 = v106;
    v117 = v107;
    v118 = v108;
LABEL_33:
    v111 = __dst[0];
    v112 = __dst[1];
    v113 = __dst[2];
    v114 = __dst[3];
    v109 = v119;
    v110[0] = v120[0];
    *(v110 + 9) = *(v120 + 9);
    v105 = v115;
    v106 = v116;
    v107 = v117;
    v108 = v118;
    if (sub_21A419E9C(__dst) == 1)
    {
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      result = sub_21A451A94();
      __break(1u);
      return result;
    }

    v58 = v87 & 0xFFFFFFFF00000000 | v46;
    v59 = espresso_network_bind_buffer();
    v100 = v119;
    *v101 = v120[0];
    *&v101[9] = *(v120 + 9);
    v96 = v115;
    v97 = v116;
    v98 = v117;
    v99 = v118;
    v92 = v111;
    v93 = v112;
    v94 = v113;
    v95 = v114;
    v102[7] = v118;
    v102[8] = v119;
    v103[0] = v120[0];
    *(v103 + 9) = *(v120 + 9);
    v102[4] = v115;
    v102[5] = v116;
    v102[6] = v117;
    v102[0] = v111;
    v102[1] = v112;
    v102[2] = v113;
    v102[3] = v114;
    if (sub_21A419E9C(v102) == 1)
    {

      v14 = v91;
      if (v53)
      {
        sub_21A419EB8(v91[6] + 16 * v49);
        sub_21A419290(v49, v91);
      }
    }

    else if (v53)
    {

      v14 = v91;
      v60 = v91[7] + 168 * v49;
      *(v60 + 128) = v100;
      *(v60 + 144) = *v101;
      *(v60 + 160) = *&v101[16];
      *(v60 + 64) = v96;
      *(v60 + 80) = v97;
      *(v60 + 96) = v98;
      *(v60 + 112) = v99;
      *v60 = v92;
      *(v60 + 16) = v93;
      *(v60 + 32) = v94;
      *(v60 + 48) = v95;
    }

    else
    {
      v14 = v91;
      v91[(v49 >> 6) + 8] |= 1 << v49;
      v61 = (v91[6] + 16 * v49);
      *v61 = v19;
      v61[1] = v20;
      v62 = v91[7] + 168 * v49;
      *v62 = v92;
      *(v62 + 16) = v93;
      *(v62 + 64) = v96;
      *(v62 + 80) = v97;
      *(v62 + 32) = v94;
      *(v62 + 48) = v95;
      *(v62 + 160) = *&v101[16];
      *(v62 + 128) = v100;
      *(v62 + 144) = *v101;
      *(v62 + 96) = v98;
      *(v62 + 112) = v99;
      v63 = v91[2];
      v26 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v26)
      {
        goto LABEL_80;
      }

      v91[2] = v64;
    }

    if (v59)
    {
      goto LABEL_45;
    }

    if (v15 - 1 == v89)
    {

      goto LABEL_47;
    }

    v87 = v58;
    v17 = v89 + 1;
    v18 = v88 + 2;
  }

  while ((v89 + 1) < *(v86 + 16));
  __break(1u);
LABEL_45:

  sub_21A3DCAA4();
  swift_allocError();
  *v65 = 5;
  swift_willThrow();
}

uint64_t sub_21A41868C(uint64_t a1, void *a2, uint64_t a3, unsigned int a4)
{
  *(v4 + 104) = a1;
  swift_beginAccess();
  sub_21A418880(*(v4 + 56), *(v4 + 64), v13);
  v14[0] = v13[0];
  v14[1] = v13[1];
  v14[2] = v13[2];
  v14[3] = v13[3];
  v14[4] = v13[4];
  v14[5] = v13[5];
  if (espresso_plan_build_clean())
  {

    sub_21A3DCAA4();
    swift_allocError();
    *v7 = 22;
    return swift_willThrow();
  }

  else
  {
    sub_21A413CE8(a2, a3, a4, v14);

    if (!v11)
    {
      v9 = *(v4 + 344);
      swift_beginAccess();

      sub_21A41A150(a3, a4, v9, (v4 + 120));
      swift_endAccess();

      v10 = *(v4 + 352);
      swift_beginAccess();

      sub_21A41A150(a3, a4, v10, (v4 + 136));
      swift_endAccess();

      return sub_21A417004(a3, a4);
    }
  }

  return result;
}

uint64_t sub_21A418880@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = *(*(v3 + 344) + 16);
  if (!v5)
  {
    v15 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    v7 = MEMORY[0x277D84F90];
LABEL_39:
    v9 = v15;
LABEL_40:
    v13 = v15;
    goto LABEL_41;
  }

  v7 = sub_21A451344();
  *(v7 + 16) = v5;
  bzero((v7 + 32), 4 * v5);
  v8 = *(*(v3 + 344) + 16);
  if (!v8)
  {
    v15 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v9 = sub_21A451344();
  *(v9 + 16) = v8;
  v49 = v9 + 32;
  bzero((v9 + 32), 4 * v8);
  v10 = *(*(v3 + 344) + 16);
  if (!v10)
  {
    v15 = MEMORY[0x277D84F90];
    v11 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v11 = sub_21A451344();
  *(v11 + 16) = v10;
  v48 = v11 + 32;
  bzero((v11 + 32), 4 * v10);
  v12 = *(*(v3 + 344) + 16);
  if (!v12)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_40;
  }

  v13 = sub_21A451344();
  *(v13 + 16) = v12;
  bzero((v13 + 32), 4 * v12);
  v14 = *(*(v3 + 344) + 16);
  if (!v14)
  {
    v15 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  v15 = sub_21A451344();
  *(v15 + 16) = v14;
  v46 = v15 + 32;
  bzero((v15 + 32), 4 * v14);
  v16 = *(*(v3 + 344) + 16);
  if (!v16)
  {
LABEL_41:

    v38 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v47 = sub_21A451344();
  *(v47 + 16) = v16;
  bzero((v47 + 32), 4 * v16);
  v17 = *(v3 + 344);
  v18 = *(v17 + 16);

  v45 = v18;
  if (!v18)
  {
LABEL_36:
    v38 = v47;
LABEL_42:

    *a3 = v7;
    a3[1] = v9;
    a3[2] = v11;
    a3[3] = v13;
    a3[4] = v15;
    a3[5] = v38;
    return result;
  }

  v43 = a2;
  v44 = v3;
  v39 = a3;
  v40 = v15;
  v20 = 0;
  v21 = (v17 + 40);
  v41 = v11;
  v42 = v9;
  while (v20 < *(v17 + 16))
  {
    v23 = *(v21 - 1);
    v22 = *v21;

    sub_21A414C78(a1, v43, v23, v22);
    v25 = v24;
    v27 = v26;

    v28 = *(v44 + 104);
    if (v27 & 1) != 0 && (result = swift_isUniquelyReferenced_nonNull(), (result))
    {
      v29 = 0;
    }

    else
    {
      sub_21A41F9F0(v25, 0, v27);
      v25 = v30;
      v29 = v31;
      v27 = v32;
      result = swift_unknownObjectRelease();
    }

    if (v27 < 2 || v29 > 0)
    {
      goto LABEL_47;
    }

    *v25 = v28;
    result = sub_21A4196D8(v25, v29, v27, v51);
    if (v51[0] < 0xFFFFFFFF80000000)
    {
      goto LABEL_48;
    }

    if (v51[0] > 0x7FFFFFFF)
    {
      goto LABEL_49;
    }

    if (v20 >= *(v7 + 16))
    {
      goto LABEL_50;
    }

    v34 = v51[1];
    v33 = v51[2];
    v36 = v51[3];
    v35 = v51[4];
    v37 = v51[5];
    *(v7 + 32 + 4 * v20) = v51[0];
    if (v34 < 0xFFFFFFFF80000000)
    {
      goto LABEL_51;
    }

    if (v34 > 0x7FFFFFFF)
    {
      goto LABEL_52;
    }

    v9 = v42;
    if (v20 >= *(v42 + 16))
    {
      goto LABEL_53;
    }

    *(v49 + 4 * v20) = v34;
    if (v33 < 0xFFFFFFFF80000000)
    {
      goto LABEL_54;
    }

    if (v33 > 0x7FFFFFFF)
    {
      goto LABEL_55;
    }

    v11 = v41;
    if (v20 >= *(v41 + 16))
    {
      goto LABEL_56;
    }

    *(v48 + 4 * v20) = v33;
    if (v36 < 0xFFFFFFFF80000000)
    {
      goto LABEL_57;
    }

    if (v36 > 0x7FFFFFFF)
    {
      goto LABEL_58;
    }

    if (v20 >= *(v13 + 16))
    {
      goto LABEL_59;
    }

    *(v13 + 32 + 4 * v20) = v36;
    if (v35 < 0xFFFFFFFF80000000)
    {
      goto LABEL_60;
    }

    if (v35 > 0x7FFFFFFF)
    {
      goto LABEL_61;
    }

    v15 = v40;
    if (v20 >= *(v40 + 16))
    {
      goto LABEL_62;
    }

    *(v46 + 4 * v20) = v35;
    if (v37 < 0xFFFFFFFF80000000)
    {
      goto LABEL_63;
    }

    if (v37 > 0x7FFFFFFF)
    {
      goto LABEL_64;
    }

    if (v20 >= *(v47 + 16))
    {
      goto LABEL_65;
    }

    *(v47 + 32 + 4 * v20) = v37;
    result = swift_unknownObjectRelease();
    v21 += 2;
    if (v45 == ++v20)
    {
      a3 = v39;
      goto LABEL_36;
    }
  }

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
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

double ndShapeTo5dShape(shape:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  sub_21A4196D8(a1, a2, a3, v8);
  result = *v8;
  v6 = v8[1];
  v7 = v8[2];
  *a4 = v8[0];
  a4[1] = v6;
  a4[2] = v7;
  return result;
}

uint64_t sub_21A418D40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for EspressoMILTrainer();
  swift_allocObject();
  v4 = sub_21A4195BC(a1);

  *a2 = v4;
  return result;
}

uint64_t sub_21A418E2C(uint64_t *a1)
{
  v2 = *v1;
  v5 = *a1;
  swift_beginAccess();
  v3 = sub_21A415150(&v5, (v2 + 152));
  swift_endAccess();
  return v3;
}

uint64_t sub_21A418F30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21A4516C4() + 1) & ~v5;
    do
    {
      sub_21A451B04();

      sub_21A451144();
      v10 = sub_21A451B24();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21A4190E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21A4516C4() + 1) & ~v5;
    do
    {
      sub_21A451B04();

      sub_21A451144();
      v9 = sub_21A451B24();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_21A419290(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21A4516C4() + 1) & ~v5;
    do
    {
      sub_21A451B04();

      sub_21A451144();
      v9 = sub_21A451B24();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 168 * v3);
        v15 = (v14 + 168 * v6);
        if (v3 != v6 || result >= v15 + 168)
        {
          result = memmove(result, v15, 0xA8uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_21A419444(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_21A3D3B38(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_21A4194B0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_21A4194F8(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_21A419540(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 168 * result;
  v7 = *(a4 + 80);
  *(v6 + 64) = *(a4 + 64);
  *(v6 + 80) = v7;
  *(v6 + 160) = *(a4 + 160);
  v8 = *(a4 + 144);
  *(v6 + 128) = *(a4 + 128);
  *(v6 + 144) = v8;
  v9 = *(a4 + 112);
  *(v6 + 96) = *(a4 + 96);
  *(v6 + 112) = v9;
  v10 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v10;
  v11 = *(a4 + 48);
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = v11;
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t sub_21A4195BC(uint64_t a1)
{
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 1;
  *(v1 + 112) = 1;
  v3 = MEMORY[0x277D84F90];
  *(v1 + 120) = sub_21A3E58A4(MEMORY[0x277D84F90]);
  *(v1 + 128) = sub_21A3E5690(v3);
  *(v1 + 136) = sub_21A3E58A4(v3);
  *(v1 + 144) = sub_21A3E5690(v3);
  *(v1 + 152) = sub_21A3E58A4(v3);
  *(v1 + 160) = sub_21A3E5690(v3);
  *(v1 + 168) = sub_21A3E58A4(v3);
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
  *(v1 + 336) = 0;
  *(v1 + 344) = v3;
  *(v1 + 352) = v3;
  *(v1 + 360) = v3;
  *(v1 + 16) = a1;

  result = espresso_create_context();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v1 + 24) = result;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  result = espresso_create_plan();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v1 + 48) = result;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  result = espresso_create_plan();
  if (result)
  {
    *(v1 + 72) = result;
    *(v1 + 104) = -1;
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_21A4196D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v4 = a3 >> 1;
  v5 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v5 < 1)
  {
    v7 = 1;
    v8 = 1;
    v6 = 1;
    goto LABEL_15;
  }

  if (v5 <= a2 || v5 > v4)
  {
    goto LABEL_24;
  }

  v6 = *(result + 8 * v5 - 8);
  if (v5 == 1)
  {
    v7 = 1;
    v8 = 1;
LABEL_15:
    v11 = 1;
    goto LABEL_16;
  }

  v9 = v5 - 2;
  if (v5 - 2 < a2 || v9 >= v4)
  {
    goto LABEL_25;
  }

  v8 = *(result + 8 * v9);
  v10 = v5 - 3;
  if (v5 < 3)
  {
    v7 = 1;
    goto LABEL_15;
  }

  if (v10 < a2)
  {
    goto LABEL_26;
  }

  v11 = *(result + 8 * v10);
  if (v5 == 3)
  {
    v7 = 1;
LABEL_16:
    v12 = 1;
LABEL_17:
    *a4 = v6;
    a4[1] = v8;
    a4[2] = v11;
    a4[3] = v7;
    a4[4] = v12;
    a4[5] = v5;
    return result;
  }

  v13 = v5 - 4;
  if (v5 - 4 < a2 || v13 >= v4)
  {
    goto LABEL_27;
  }

  v7 = *(result + 8 * v13);
  v14 = v5 - 5;
  if (v5 < 5)
  {
    goto LABEL_16;
  }

  if (v14 >= a2)
  {
    v12 = *(result + 8 * v14);
    goto LABEL_17;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_21A4197C8(uint64_t result, unsigned int a2, uint64_t a3, void *a4, void *a5)
{
  v59 = result;
  v93 = *MEMORY[0x277D85DE8];
  v58 = *(a3 + 16);
  if (!v58)
  {
    return result;
  }

  v5 = a4;
  v6 = 0;
  v7 = 0;
  v92 = 0;
  memset(v91, 0, sizeof(v91));
  v57 = a3 + 32;
  while (1)
  {
    v9 = (v57 + 16 * v6);
    v11 = *v9;
    v10 = v9[1];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v81 = *v5;
    sub_21A4035A8(v91, v11, v10, isUniquelyReferenced_nonNull_native);
    *v5 = v81;
    v13 = sub_21A414C78(v59, a2, v11, v10);
    v16 = v15;
    v65 = v15 >> 1;
    v61 = v14;
    if (v15 < 2)
    {
      v17 = 1;
      goto LABEL_12;
    }

    v18 = v14;
    v19 = v15 >> 1;
    v17 = 1;
    do
    {
      v20 = *v18++;
      v21 = v17 * v20;
      if ((v17 * v20) >> 64 != (v17 * v20) >> 63)
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v17 = v21;
      --v19;
    }

    while (v19);
    if (v21 < 0)
    {
      goto LABEL_53;
    }

    if (v21)
    {
LABEL_12:
      v22 = v13;

      v23 = sub_21A451344();
      *(v23 + 16) = v17;
      bzero((v23 + 32), 4 * v17);
    }

    else
    {
      v22 = v13;

      v23 = MEMORY[0x277D84F90];
    }

    v24 = swift_isUniquelyReferenced_nonNull_native();
    *&v81 = *a5;
    sub_21A4032A0(v23, v11, v10, v24);

    *a5 = v81;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *&v81 = *a5;
    v26 = v81;
    v28 = sub_21A3DCA2C(v11, v10);
    v29 = *(v26 + 16);
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_54;
    }

    v32 = v27;
    if (*(v26 + 24) >= v31)
    {
      if (v25)
      {
        if ((v27 & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_20;
      }

      sub_21A3E4280();
      if (v32)
      {
        goto LABEL_20;
      }

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
    }

    sub_21A3E32BC(v31, v25);
    v33 = sub_21A3DCA2C(v11, v10);
    if ((v32 & 1) != (v34 & 1))
    {
      goto LABEL_60;
    }

    v28 = v33;
    if ((v32 & 1) == 0)
    {
      goto LABEL_55;
    }

LABEL_20:
    v35 = v81;
    v36 = *(*(v81 + 56) + 8 * v28);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v36 = sub_21A410F90(v36);
    }

    v37 = *(v36 + 2);
    if (v37 >> 61)
    {
      goto LABEL_56;
    }

    sub_21A414D84((v36 + 32), &v36[4 * v37 + 32], a4, v11, v10);
    *(*(v35 + 56) + 8 * v28) = v36;
    *a5 = v35;
    v62 = v7;
    if ((v16 & 1) == 0)
    {
      v38 = v22;
      swift_unknownObjectRetain();
      v5 = a4;
      goto LABEL_25;
    }

    sub_21A451A34();
    v38 = v22;
    swift_unknownObjectRetain_n();
    v39 = swift_dynamicCastClass();
    if (!v39)
    {
      swift_unknownObjectRelease();
      v39 = MEMORY[0x277D84F90];
    }

    v40 = *(v39 + 16);

    v5 = a4;
    if (v40 == v65)
    {
      v41 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (!v41)
      {
        goto LABEL_30;
      }
    }

    else
    {
      swift_unknownObjectRelease();
LABEL_25:
      sub_21A41F920(v38, v61, 0, v16);
LABEL_30:
      swift_unknownObjectRelease();
    }

    v42 = swift_isUniquelyReferenced_nonNull_native();
    v43 = *v5;
    v66 = *v5;
    v45 = sub_21A3DCA2C(v11, v10);
    v46 = *(v43 + 16);
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_57;
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

LABEL_37:
    if (v49)
    {
      memmove(__dst, (v66[7] + 168 * v45), 0xA8uLL);
      sub_21A419F0C(__dst);
    }

    else
    {
      sub_21A419E74(__dst);
    }

    v89 = __dst[8];
    v90[0] = v80[0];
    *(v90 + 9) = *(v80 + 9);
    v85 = __dst[4];
    v86 = __dst[5];
    v87 = __dst[6];
    v88 = __dst[7];
    v81 = __dst[0];
    v82 = __dst[1];
    v83 = __dst[2];
    v84 = __dst[3];
    v80[0] = v90[0];
    *(v80 + 9) = *(v90 + 9);
    if (sub_21A419E9C(__dst) == 1)
    {
      goto LABEL_59;
    }

    espresso_buffer_pack_tensor_shape();
    v75 = v89;
    *v76 = v90[0];
    *&v76[9] = *(v90 + 9);
    v71 = v85;
    v72 = v86;
    v73 = v87;
    v74 = v88;
    v67 = v81;
    v68 = v82;
    v69 = v83;
    v70 = v84;
    v77[8] = v89;
    v78[0] = v90[0];
    *(v78 + 9) = *(v90 + 9);
    v77[4] = v85;
    v77[5] = v86;
    v77[6] = v87;
    v77[7] = v88;
    v77[0] = v81;
    v77[1] = v82;
    v77[2] = v83;
    v77[3] = v84;
    if (sub_21A419E9C(v77) == 1)
    {

      if (v49)
      {
        sub_21A419EB8(v66[6] + 16 * v45);
        sub_21A419290(v45, v66);
      }
    }

    else if (v49)
    {

      v8 = v66[7] + 168 * v45;
      *(v8 + 128) = v75;
      *(v8 + 144) = *v76;
      *(v8 + 160) = *&v76[16];
      *(v8 + 64) = v71;
      *(v8 + 80) = v72;
      *(v8 + 96) = v73;
      *(v8 + 112) = v74;
      *v8 = v67;
      *(v8 + 16) = v68;
      *(v8 + 32) = v69;
      *(v8 + 48) = v70;
    }

    else
    {
      v66[(v45 >> 6) + 8] |= 1 << v45;
      v52 = (v66[6] + 16 * v45);
      *v52 = v11;
      v52[1] = v10;
      v53 = v66[7] + 168 * v45;
      *v53 = v67;
      *(v53 + 16) = v68;
      *(v53 + 64) = v71;
      *(v53 + 80) = v72;
      *(v53 + 32) = v69;
      *(v53 + 48) = v70;
      *(v53 + 160) = *&v76[16];
      *(v53 + 128) = v75;
      *(v53 + 144) = *v76;
      *(v53 + 96) = v73;
      *(v53 + 112) = v74;
      v54 = v66[2];
      v55 = __OFADD__(v54, 1);
      v56 = v54 + 1;
      if (v55)
      {
        goto LABEL_58;
      }

      v66[2] = v56;
    }

    ++v6;
    swift_unknownObjectRelease();
    *v5 = v66;

    v7 = v62;
    if (v6 == v58)
    {
      return result;
    }
  }

  sub_21A3E3828(v48, v42);
  v50 = sub_21A3DCA2C(v11, v10);
  if ((v49 & 1) == (v51 & 1))
  {
    v45 = v50;
    goto LABEL_37;
  }

LABEL_60:
  result = sub_21A451A94();
  __break(1u);
  return result;
}

double sub_21A419E74(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 168) = 1;
  return result;
}

uint64_t sub_21A419E9C(uint64_t a1)
{
  if (*(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21A41A150(uint64_t result, unsigned int a2, uint64_t a3, void *a4)
{
  v37 = result;
  v71 = *MEMORY[0x277D85DE8];
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = (a3 + 40);
    do
    {
      v39 = v4;
      v7 = *(v5 - 1);
      v8 = *v5;

      v41 = v7;
      sub_21A414C78(v37, a2, v7, v8);
      v10 = v9;
      v12 = v11;
      v13 = v11 >> 1;
      if (v11)
      {
        sub_21A451A34();
        swift_unknownObjectRetain_n();
        v19 = swift_dynamicCastClass();
        if (!v19)
        {
          swift_unknownObjectRelease();
          v19 = MEMORY[0x277D84F90];
        }

        v20 = *(v19 + 16);

        if (v20 == v13)
        {
          v21 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (v21)
          {
            goto LABEL_16;
          }

          goto LABEL_15;
        }

        swift_unknownObjectRelease();
        if (v12 >= 2)
        {
LABEL_8:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD28678, &qword_21A456A10);
          v14 = 8 * v13;
          v15 = v13;
          v16 = swift_allocObject();
          v17 = _swift_stdlib_malloc_size(v16);
          v18 = v17 - 32;
          if (v17 < 32)
          {
            v18 = v17 - 25;
          }

          v16[2] = v15;
          v16[3] = 2 * (v18 >> 3);
          memcpy(v16 + 4, v10, v14);
        }
      }

      else
      {
        swift_unknownObjectRetain();
        if (v12 >= 2)
        {
          goto LABEL_8;
        }
      }

LABEL_15:
      swift_unknownObjectRelease();
LABEL_16:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *a4;
      v25 = sub_21A3DCA2C(v41, v8);
      v26 = v23[2];
      v27 = (v24 & 1) == 0;
      v28 = v26 + v27;
      if (__OFADD__(v26, v27))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
      }

      v29 = v24;
      if (v23[3] >= v28)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v24 & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          sub_21A3E4570();
          if ((v29 & 1) == 0)
          {
            goto LABEL_20;
          }
        }
      }

      else
      {
        sub_21A3E3828(v28, isUniquelyReferenced_nonNull_native);
        v30 = sub_21A3DCA2C(v41, v8);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21A451A94();
          __break(1u);
          return result;
        }

        v25 = v30;
        if ((v29 & 1) == 0)
        {
LABEL_20:
          sub_21A419E74(__dst);
          v69 = v59;
          v70[0] = v60[0];
          *(v70 + 9) = *(v60 + 9);
          v65 = v55;
          v66 = v56;
          v67 = v57;
          v68 = v58;
          goto LABEL_24;
        }
      }

      memmove(__dst, (v23[7] + 168 * v25), 0xA8uLL);
      sub_21A419F0C(__dst);
      v68 = v58;
      v69 = v59;
      v70[0] = v60[0];
      *(v70 + 9) = *(v60 + 9);
      v65 = v55;
      v66 = v56;
      v67 = v57;
LABEL_24:
      v61 = __dst[0];
      v62 = __dst[1];
      v63 = __dst[2];
      v64 = __dst[3];
      v59 = v69;
      v60[0] = v70[0];
      *(v60 + 9) = *(v70 + 9);
      v55 = v65;
      v56 = v66;
      v57 = v67;
      v58 = v68;
      if (sub_21A419E9C(__dst) == 1)
      {
        goto LABEL_38;
      }

      espresso_buffer_pack_tensor_shape();
      v50 = v69;
      *v51 = v70[0];
      *&v51[9] = *(v70 + 9);
      v46 = v65;
      v47 = v66;
      v48 = v67;
      v49 = v68;
      v42 = v61;
      v43 = v62;
      v44 = v63;
      v45 = v64;
      v52[7] = v68;
      v52[8] = v69;
      v53[0] = v70[0];
      *(v53 + 9) = *(v70 + 9);
      v52[4] = v65;
      v52[5] = v66;
      v52[6] = v67;
      v52[0] = v61;
      v52[1] = v62;
      v52[2] = v63;
      v52[3] = v64;
      if (sub_21A419E9C(v52) == 1)
      {

        if (v29)
        {
          sub_21A419EB8(v23[6] + 16 * v25);
          sub_21A419290(v25, v23);
        }

        goto LABEL_4;
      }

      if (v29)
      {

        v6 = v23[7] + 168 * v25;
        *(v6 + 128) = v50;
        *(v6 + 144) = *v51;
        *(v6 + 160) = *&v51[16];
        *(v6 + 64) = v46;
        *(v6 + 80) = v47;
        *(v6 + 96) = v48;
        *(v6 + 112) = v49;
        *v6 = v42;
        *(v6 + 16) = v43;
        *(v6 + 32) = v44;
        *(v6 + 48) = v45;
LABEL_4:
        swift_unknownObjectRelease();
        goto LABEL_5;
      }

      v23[(v25 >> 6) + 8] |= 1 << v25;
      v32 = (v23[6] + 16 * v25);
      *v32 = v41;
      v32[1] = v8;
      v33 = v23[7] + 168 * v25;
      *v33 = v42;
      *(v33 + 16) = v43;
      *(v33 + 64) = v46;
      *(v33 + 80) = v47;
      *(v33 + 32) = v44;
      *(v33 + 48) = v45;
      *(v33 + 160) = *&v51[16];
      *(v33 + 128) = v50;
      *(v33 + 144) = *v51;
      *(v33 + 96) = v48;
      *(v33 + 112) = v49;
      swift_unknownObjectRelease();
      v34 = v23[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_37;
      }

      v23[2] = v36;
LABEL_5:
      *a4 = v23;

      v5 += 2;
      v4 = v39 - 1;
    }

    while (v39 != 1);
  }

  return result;
}

uint64_t PFLStats.StdMethod.hashValue.getter()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1);
  return sub_21A451B24();
}

uint64_t static PFLStats.l2Norm(_:)(uint64_t a1)
{
  if (*(a1 + 16) >> 31)
  {
    __break(1u);
  }

  return MEMORY[0x282108C30]();
}

float static PFLStats.mean(_:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  __C = NAN;
  vDSP_meanv((a1 + 32), 1, &__C, v1);
  return __C;
}

float static PFLStats.sum(_:)(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  __C = NAN;
  vDSP_sve((a1 + 32), 1, &__C, v1);
  return __C;
}

uint64_t static PFLStats.cumsum(vector:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = sub_21A451344();
  *(v3 + 16) = v1;
  bzero((v3 + 32), 4 * v1);
  v4 = 0.0;
  v5 = 32;
  do
  {
    v4 = v4 + *(a1 + v5);
    *(v3 + v5) = v4;
    v5 += 4;
    --v1;
  }

  while (v1);
  return v3;
}

size_t sub_21A41A914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  v18 = a5;
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21A451374();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    if (result)
    {
      v13 = sub_21A451344();
      *(v13 + 16) = v12;
      bzero((v13 + 32), v12);
      v14 = 0;
      v15 = (v8 + 8);
      while (1)
      {
        sub_21A4513D4();
        v16 = v18(v10, a2, a3, a4);
        (*v15)(v10, a3);
        if (v16)
        {
          if (v14 >= *(v13 + 16))
          {
            __break(1u);
            return MEMORY[0x277D84F90];
          }

          *(v13 + v14 + 32) = 1;
        }

        if (v12 == ++v14)
        {
          return v13;
        }
      }
    }

    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_21A41AAA4(uint64_t a1)
{
  __Mean[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1 <= 1)
  {
    if (v1)
    {
      v2 = 0;
      v3 = *(a1 + 32);
    }

    else
    {
      v3 = 0;
      v2 = 1;
    }
  }

  else
  {
    __Mean[0] = 0;
    vDSP_normalize((a1 + 32), 1, 0, 1, __Mean + 1, __Mean, v1);
    v2 = 0;
    v3 = HIDWORD(__Mean[0]);
  }

  return v3 | (v2 << 32);
}

unint64_t sub_21A41AB90()
{
  result = qword_27CD289D0;
  if (!qword_27CD289D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD289D0);
  }

  return result;
}

PrivateFederatedLearning::PFLTaskDiscoveryError_optional __swiftcall PFLTaskDiscoveryError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0;
  v3 = 37;
  switch(rawValue)
  {
    case 9500:
      goto LABEL_51;
    case 9501:
      v2 = 1;
      goto LABEL_51;
    case 9502:
      v2 = 2;
      goto LABEL_51;
    case 9503:
      v2 = 3;
      goto LABEL_51;
    case 9504:
      v2 = 4;
      goto LABEL_51;
    case 9505:
      v2 = 5;
      goto LABEL_51;
    case 9506:
      v2 = 6;
      goto LABEL_51;
    case 9507:
      v2 = 7;
      goto LABEL_51;
    case 9508:
      v2 = 8;
      goto LABEL_51;
    case 9509:
      v2 = 9;
      goto LABEL_51;
    case 9510:
      v2 = 10;
      goto LABEL_51;
    case 9511:
      v2 = 11;
      goto LABEL_51;
    case 9512:
      v2 = 12;
      goto LABEL_51;
    case 9513:
      v2 = 13;
      goto LABEL_51;
    case 9514:
      v2 = 14;
      goto LABEL_51;
    case 9515:
      v2 = 15;
      goto LABEL_51;
    case 9516:
      v2 = 16;
      goto LABEL_51;
    case 9517:
      v2 = 17;
      goto LABEL_51;
    case 9518:
      v2 = 18;
      goto LABEL_51;
    case 9519:
      v2 = 19;
      goto LABEL_51;
    case 9520:
      v2 = 20;
      goto LABEL_51;
    case 9521:
      v2 = 21;
      goto LABEL_51;
    case 9522:
      v2 = 22;
      goto LABEL_51;
    case 9523:
      v2 = 23;
      goto LABEL_51;
    case 9524:
      v2 = 24;
      goto LABEL_51;
    case 9525:
      v2 = 25;
      goto LABEL_51;
    case 9526:
      v2 = 26;
      goto LABEL_51;
    case 9527:
      v2 = 27;
      goto LABEL_51;
    case 9528:
      v2 = 28;
      goto LABEL_51;
    case 9529:
      v2 = 29;
      goto LABEL_51;
    case 9530:
      v2 = 30;
      goto LABEL_51;
    case 9531:
      v2 = 31;
      goto LABEL_51;
    case 9532:
      v2 = 32;
      goto LABEL_51;
    case 9533:
      v2 = 33;
      goto LABEL_51;
    case 9534:
      v2 = 34;
      goto LABEL_51;
    case 9535:
      v2 = 35;
      goto LABEL_51;
    case 9536:
      v2 = 36;
LABEL_51:
      v3 = v2;
      goto LABEL_52;
    case 9537:
LABEL_52:
      *v1 = v3;
      break;
    case 9538:
      *v1 = 38;
      break;
    case 9539:
      *v1 = 39;
      break;
    case 9540:
      *v1 = 40;
      break;
    case 9541:
      *v1 = 41;
      break;
    case 9542:
      *v1 = 42;
      break;
    case 9543:
      *v1 = 43;
      break;
    case 9544:
      *v1 = 44;
      break;
    case 9545:
      *v1 = 45;
      break;
    case 9546:
      *v1 = 46;
      break;
    case 9547:
      *v1 = 47;
      break;
    case 9548:
      *v1 = 48;
      break;
    case 9549:
      *v1 = 49;
      break;
    case 9550:
      *v1 = 50;
      break;
    case 9551:
      *v1 = 51;
      break;
    case 9552:
      *v1 = 52;
      break;
    case 9553:
      *v1 = 53;
      break;
    case 9554:
      *v1 = 54;
      break;
    default:
      *v1 = 55;
      break;
  }

  return rawValue;
}

unint64_t sub_21A41AE50()
{
  result = qword_27CD289D8;
  if (!qword_27CD289D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD289D8);
  }

  return result;
}

uint64_t sub_21A41AEA4()
{
  v1 = *v0;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v1 + 9500);
  return sub_21A451B24();
}

uint64_t sub_21A41AF24(uint64_t a1)
{
  v2 = *v1;
  sub_21A451B04();
  MEMORY[0x21CEDA220](v2 + 9500);
  return sub_21A451B24();
}

unint64_t sub_21A41AF88(uint64_t a1)
{
  result = sub_21A3EC940();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21A41AFB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A41B158();
  v5 = sub_21A41B1AC();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t getEnumTagSinglePayload for PFLTaskDiscoveryError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCA)
  {
    goto LABEL_17;
  }

  if (a2 + 54 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 54) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 54;
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

      return (*a1 | (v4 << 8)) - 54;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 54;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x37;
  v8 = v6 - 55;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PFLTaskDiscoveryError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 54 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 54) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCA)
  {
    v4 = 0;
  }

  if (a2 > 0xC9)
  {
    v5 = ((a2 - 202) >> 8) + 1;
    *result = a2 + 54;
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
    *result = a2 + 54;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21A41B158()
{
  result = qword_27CD289E0;
  if (!qword_27CD289E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD289E0);
  }

  return result;
}

unint64_t sub_21A41B1AC()
{
  result = qword_27CD289E8;
  if (!qword_27CD289E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD289E8);
  }

  return result;
}

uint64_t EspressoEIRTrainer.__allocating_init(_:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_21A41FAA8(a1);

  return v2;
}

uint64_t EspressoEIRTrainer.init(_:)(uint64_t a1)
{
  v1 = sub_21A41FAA8(a1);

  return v1;
}

void *EspressoEIRTrainer.deinit()
{
  espresso_plan_destroy();
  espresso_context_destroy();

  return v0;
}

uint64_t EspressoEIRTrainer.__deallocating_deinit()
{
  EspressoEIRTrainer.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_21A41B32C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = *a3;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;

  *(v7 + 72) = v11;
  v12 = *(v7 + 16);

  Current = CFAbsoluteTimeGetCurrent();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = *(v12 + 16);
  *(v12 + 16) = 0x8000000000000000;
  sub_21A4033E8(0x6F4C2E6C65646F4DLL, 0xEA00000000006461, isUniquelyReferenced_nonNull_native, Current);
  *(v12 + 16) = v32;
  swift_endAccess();

  sub_21A4510E4();
  swift_beginAccess();
  v15 = espresso_plan_add_network();
  swift_endAccess();

  if (v15)
  {
    v16 = 8;
LABEL_11:
    sub_21A3DCAA4();
    swift_allocError();
    *v29 = v16;
    return swift_willThrow();
  }

  else
  {
    v31 = a6;
    v17 = a4 + 40;
    v18 = *(a4 + 16) + 1;
    v19 = a4;
    v20 = a4;
    while (--v18)
    {
      v21 = v17 + 16;
      v22 = *(v7 + 32);
      sub_21A4510E4();
      v15 = v15 & 0xFFFFFFFF00000000 | v22;
      v23 = espresso_network_declare_input();

      v19 = v20;
      v17 = v21;
      if (v23)
      {
        v16 = 2;
        goto LABEL_11;
      }
    }

    v24 = a5 + 40;
    v25 = *(a5 + 16) + 1;
    while (--v25)
    {
      v26 = v24 + 16;
      v27 = *(v7 + 32);
      sub_21A4510E4();
      v15 = v15 & 0xFFFFFFFF00000000 | v27;
      v28 = espresso_network_declare_output();

      v19 = v20;
      v24 = v26;
      if (v28)
      {
        v16 = 3;
        goto LABEL_11;
      }
    }

    *(v7 + 480) = v19;

    *(v7 + 488) = a5;

    *(v7 + 496) = v31;

    sub_21A402C48(0x6F4C2E6C65646F4DLL, 0xEA00000000006461);
  }
}

uint64_t sub_21A41B624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 1;
  result = sub_21A41B32C(a1, a2, &v7, a3, a4, MEMORY[0x277D84F90]);
  if (!v5)
  {
    *(v4 + 136) = 0;
  }

  return result;
}