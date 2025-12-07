uint64_t sub_1DAA72D08(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    v3 = a2[12];
    v4 = a2[13];
    __swift_project_boxed_opaque_existential_1(a2 + 9, v3);
    return (*(v4 + 136))(v3, v4);
  }

  else
  {
    sub_1DAA5A8BC(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    swift_allocObject();
    return sub_1DACB8AE4();
  }
}

void sub_1DAA72DB0(uint64_t a1)
{
  if (!qword_1EE11FA90)
  {
    v1 = MEMORY[0x1E69E62F8];
    sub_1DAA5A8BC(255, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
    sub_1DAA5A8BC(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], v1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FA90);
    }
  }
}

uint64_t sub_1DAA72E64(uint64_t a1, void *a2)
{
  v3 = a2[12];
  v4 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v3);
  (*(v4 + 120))(v3, v4);
  v5 = a2[12];
  v6 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v5);
  (*(v6 + 176))(v5, v6);
  v7 = sub_1DACB8B94();

  return v7;
}

uint64_t sub_1DAA72F6C()
{
  v0 = MEMORY[0x1E69E62F8];
  sub_1DAA59E24(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
  sub_1DACB8BB4();
  v1 = sub_1DACB89D4();
  sub_1DAA59F54();
  sub_1DACB8B54();

  v2 = sub_1DACB89D4();
  sub_1DAA59E24(0, &qword_1EE11FA98, &type metadata for Watchlist, v0);
  v3 = sub_1DACB8A64();

  return v3;
}

uint64_t sub_1DAA73094(uint64_t a1)
{
  sub_1DAA726DC(0, &unk_1EE11FE48, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAA73144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1DACB8FB4();
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DACB9004();
  v11 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = swift_allocObject();
  v15[2] = sub_1DAA7394C;
  v15[3] = v14;
  v15[4] = a5;
  aBlock[4] = sub_1DAA73880;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_18;
  v16 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB8FD4();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v17 = MEMORY[0x1E69E7F60];
  sub_1DAA57198(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60]);
  sub_1DAA573D4(&qword_1EE123EB0, &qword_1EE123EC0, v17);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v13, v10, v16);
  _Block_release(v16);
  (*(v21 + 8))(v10, v8);
  (*(v11 + 8))(v13, v20);
}

void sub_1DAA73450()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAA726DC(0, &qword_1ECBE7110, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1DAA734B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA738A0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 16));
  v5 = *(a3 + 24);
  sub_1DACB71E4();
  os_unfair_lock_unlock((a3 + 16));
  a1(v5);
}

uint64_t sub_1DAA73914(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1DAA73988@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1DAA59E24(0, &qword_1EE11F4E0, &type metadata for Watchlist, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC1D20;
  v5 = sub_1DACB9324();
  *(v4 + 32) = 0x6F626D795320794DLL;
  *(v4 + 40) = 0xEA0000000000736CLL;
  *(v4 + 48) = v3;
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 72) = 160;
  *a2 = v4;
  return sub_1DACB71E4();
}

void sub_1DAA73A4C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  os_unfair_lock_lock((a2 + 48));
  sub_1DAA73EA4((a2 + 56), v4, v5);
  if (!v2)
  {
    os_unfair_lock_unlock((a2 + 48));
    v6 = *(a2 + 32);
    v7 = sub_1DACB92F4();
    v8 = [v6 stringForKey_];

    if (!v8)
    {
      if (qword_1EE121840 != -1)
      {
        swift_once();
      }

      v25 = qword_1EE13E318;
      v26 = sub_1DACB9914();
      sub_1DACB8C64("WatchlistManager activeWatchlistID: %{public}@ not found in userdefaults. Set default watchlist as active watchlist", 115, 2, &dword_1DAA3F000, v25, v26, MEMORY[0x1E69E7CC0]);
      goto LABEL_17;
    }

    v9 = sub_1DACB9324();
    v11 = v10;

    os_unfair_lock_lock((a2 + 48));
    v12 = *(a2 + 64);
    if (*(v12 + 16))
    {
      v13 = sub_1DAA4BF3C(v9, v11);
      v15 = v14;

      if (v15)
      {
        v16 = (*(v12 + 56) + 48 * v13);
        v18 = *v16;
        v17 = v16[1];
        v20 = v16[2];
        v19 = v16[3];
        v21 = v16[4];
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        os_unfair_lock_unlock((a2 + 48));
        if (v17)
        {
          v31 = v19;
          sub_1DACB8F24();
          v22 = v18;
          if (qword_1EE121840 != -1)
          {
            swift_once();
          }

          v30 = qword_1EE13E318;
          sub_1DAA41D64(0);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_1DACC1D20;
          sub_1DACB9DD4();
          sub_1DAA75E60(v22, v17, v20, v31, v21);
          *(v23 + 56) = MEMORY[0x1E69E6158];
          *(v23 + 64) = sub_1DAA443C8();
          *(v23 + 32) = 0;
          *(v23 + 40) = 0xE000000000000000;
          v24 = sub_1DACB9914();
          sub_1DACB8C64("WatchlistManager active watchlist: %{public}@", 45, 2, &dword_1DAA3F000, v30, v24, v23);

          goto LABEL_18;
        }

        goto LABEL_14;
      }
    }

    else
    {
    }

    os_unfair_lock_unlock((a2 + 48));
LABEL_14:
    if (qword_1EE121840 != -1)
    {
      swift_once();
    }

    v27 = qword_1EE13E318;
    v28 = sub_1DACB9914();
    sub_1DACB8C64("WatchlistManager active watchlist identifier not found in all watchlists. Set default watchlist as active watchlist", 115, 2, &dword_1DAA3F000, v27, v28, MEMORY[0x1E69E7CC0]);
LABEL_17:
    sub_1DAC9DC6C(a2);
LABEL_18:
    sub_1DAA75EB0();
    os_unfair_lock_lock((a2 + 48));
    v29 = sub_1DACB71E4();
    sub_1DAA6BD48(v29, a2 + 56);

    os_unfair_lock_unlock((a2 + 48));
    sub_1DAA763B0(0, &unk_1EE11FE30, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
    swift_allocObject();
    sub_1DACB8AE4();
    return;
  }

  os_unfair_lock_unlock((a2 + 48));
  __break(1u);
}

uint64_t sub_1DAA73EA4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v130 = a3;
  v131 = a1;
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v136 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB92E4();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v129 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v13 = &v129 - v12;
  v14 = *(a2 + 16);
  if (v14)
  {
    v133 = (v11 + 8);
    v134 = (v11 + 16);
    v15 = (a2 + 73);
    v16 = MEMORY[0x1E69E7CC8];
    v137 = &v129 - v12;
    v138 = @"watchlist";
    v135 = v10;
    v132 = v9;
    while (1)
    {
      v139 = *(v15 - 41);
      v140 = v14;
      v19 = *(v15 - 33);
      v20 = *(v15 - 25);
      v21 = *(v15 - 17);
      v22 = *(v15 - 9);
      LODWORD(v141) = *(v15 - 1);
      LODWORD(v142) = *v15;
      v24 = v21 == sub_1DACB9324() && v22 == v23;
      v143 = v19;
      v144 = v20;
      v145 = v21;
      if (v24)
      {
        swift_bridgeObjectRetain_n();
        sub_1DACB71E4();
        sub_1DACB71E4();

LABEL_16:
        sub_1DACB9284();
        v37 = v135;
        (*v134)(v9, v13, v135);
        if (qword_1EE123DD8 != -1)
        {
          swift_once();
        }

        v38 = qword_1EE13E470;
        sub_1DACB7DF4();
        v39 = sub_1DACB9384();
        v41 = v40;
        (*v133)(v13, v37);
        sub_1DACB71E4();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v146 = v16;
        v44 = sub_1DAA4BF3C(v145, v22);
        v45 = *(v16 + 2);
        v46 = (v43 & 1) == 0;
        v47 = v45 + v46;
        if (__OFADD__(v45, v46))
        {
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
          goto LABEL_76;
        }

        v48 = v43;
        if (*(v16 + 3) >= v47)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v43 & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          else
          {
            sub_1DAB658E0();
            if ((v48 & 1) == 0)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          sub_1DAA74978(v47, isUniquelyReferenced_nonNull_native);
          v49 = sub_1DAA4BF3C(v145, v22);
          if ((v48 & 1) != (v50 & 1))
          {
LABEL_77:
            result = sub_1DACBA1F4();
            __break(1u);
            return result;
          }

          v44 = v49;
          if ((v48 & 1) == 0)
          {
LABEL_25:
            v16 = v146;
            *&v146[8 * (v44 >> 6) + 64] |= 1 << v44;
            v51 = (*(v16 + 6) + 16 * v44);
            v53 = v144;
            v52 = v145;
            *v51 = v145;
            v51[1] = v22;
            v54 = *(v16 + 7) + 48 * v44;
            *v54 = v39;
            *(v54 + 8) = v41;
            *(v54 + 16) = v53;
            *(v54 + 24) = v52;
            *(v54 + 32) = v22;
            *(v54 + 40) = v141;
            *(v54 + 41) = v142;

            v55 = *(v16 + 2);
            v33 = __OFADD__(v55, 1);
            v56 = v55 + 1;
            if (v33)
            {
              goto LABEL_71;
            }

            *(v16 + 2) = v56;
            goto LABEL_4;
          }
        }

        v16 = v146;
        v17 = *(v146 + 7) + 48 * v44;
        *v17 = v39;
        *(v17 + 8) = v41;
        v18 = v145;
        *(v17 + 16) = v144;
        *(v17 + 24) = v18;
        *(v17 + 32) = v22;
        *(v17 + 40) = v141;
        *(v17 + 41) = v142;

LABEL_4:
        v9 = v132;
        goto LABEL_5;
      }

      v25 = sub_1DACBA174();
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DACB71E4();

      if (v25)
      {
        goto LABEL_16;
      }

      sub_1DACB71E4();
      v26 = v144;
      sub_1DACB71E4();
      sub_1DACB71E4();
      v27 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v16;
      v28 = v145;
      v29 = sub_1DAA4BF3C(v145, v22);
      v31 = *(v16 + 2);
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_73;
      }

      v35 = v30;
      if (*(v16 + 3) >= v34)
      {
        if ((v27 & 1) == 0)
        {
          v62 = v29;
          sub_1DAB658E0();
          v29 = v62;
          if (v35)
          {
LABEL_29:
            v57 = v29;

            v16 = v146;
            v58 = *(v146 + 7) + 48 * v57;
            v59 = v28;
            v60 = v26;
            v61 = v143;
            *v58 = v139;
            *(v58 + 8) = v61;
            *(v58 + 16) = v60;
            *(v58 + 24) = v59;
            *(v58 + 32) = v22;
            *(v58 + 40) = v141;
            *(v58 + 41) = v142;

            goto LABEL_5;
          }

          goto LABEL_33;
        }
      }

      else
      {
        sub_1DAA74978(v34, v27);
        v29 = sub_1DAA4BF3C(v28, v22);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_77;
        }
      }

      if (v35)
      {
        goto LABEL_29;
      }

LABEL_33:
      v16 = v146;
      *&v146[8 * (v29 >> 6) + 64] |= 1 << v29;
      v63 = (*(v16 + 6) + 16 * v29);
      *v63 = v28;
      v63[1] = v22;
      v64 = *(v16 + 7) + 48 * v29;
      v65 = v143;
      *v64 = v139;
      *(v64 + 8) = v65;
      *(v64 + 16) = v26;
      *(v64 + 24) = v28;
      *(v64 + 32) = v22;
      *(v64 + 40) = v141;
      *(v64 + 41) = v142;

      v66 = *(v16 + 2);
      v33 = __OFADD__(v66, 1);
      v67 = v66 + 1;
      if (v33)
      {
        goto LABEL_75;
      }

      *(v16 + 2) = v67;
LABEL_5:
      v13 = v137;
      v15 += 48;
      v14 = v140 - 1;
      if (v140 == 1)
      {
        goto LABEL_36;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC8];
LABEL_36:
  v68 = v130;
  v69 = *(v130 + 16);
  if (v69)
  {
    v70 = (v130 + 40);
    v71 = *(v130 + 16);
    v139 = v71;
    do
    {
      if (*(v16 + 2))
      {
        v73 = *(v70 - 1);
        v72 = *v70;
        sub_1DACB71E4();
        v74 = sub_1DAA4BF3C(v73, v72);
        if (v75)
        {
          v76 = *(v16 + 7) + 48 * v74;
          v77 = *(v76 + 8);
          v140 = *v76;
          v78 = *(v76 + 16);
          v142 = *(v76 + 24);
          v79 = *(v76 + 32);
          LODWORD(v144) = *(v76 + 40);
          LODWORD(v145) = *(v76 + 41);
          sub_1DACB71E4();
          v141 = v78;
          sub_1DACB71E4();
          v143 = v79;
          sub_1DACB71E4();
          v80 = v131;
          v81 = swift_isUniquelyReferenced_nonNull_native();
          v82 = v80[1];
          v146 = v82;
          v83 = sub_1DAA4BF3C(v73, v72);
          v85 = *(v82 + 16);
          v86 = (v84 & 1) == 0;
          v33 = __OFADD__(v85, v86);
          v87 = v85 + v86;
          if (v33)
          {
            goto LABEL_72;
          }

          v88 = v84;
          if (*(v82 + 24) >= v87)
          {
            if (v81)
            {
              goto LABEL_47;
            }

            v96 = v83;
            sub_1DAB658E0();
            v83 = v96;
            if ((v88 & 1) == 0)
            {
              goto LABEL_50;
            }

LABEL_48:
            v90 = v83;

            v91 = v146;
            v92 = *(v146 + 7) + 48 * v90;
            v93 = v141;
            *v92 = v140;
            *(v92 + 8) = v77;
            v95 = v142;
            v94 = v143;
            *(v92 + 16) = v93;
            *(v92 + 24) = v95;
            *(v92 + 32) = v94;
            *(v92 + 40) = v144;
            *(v92 + 41) = v145;
          }

          else
          {
            sub_1DAA74978(v87, v81);
            v83 = sub_1DAA4BF3C(v73, v72);
            if ((v88 & 1) != (v89 & 1))
            {
              goto LABEL_77;
            }

LABEL_47:
            if (v88)
            {
              goto LABEL_48;
            }

LABEL_50:
            v91 = v146;
            *&v146[8 * (v83 >> 6) + 64] |= 1 << v83;
            v97 = (*(v91 + 6) + 16 * v83);
            *v97 = v73;
            v97[1] = v72;
            v98 = *(v91 + 7) + 48 * v83;
            v99 = v141;
            *v98 = v140;
            *(v98 + 8) = v77;
            v101 = v142;
            v100 = v143;
            *(v98 + 16) = v99;
            *(v98 + 24) = v101;
            *(v98 + 32) = v100;
            *(v98 + 40) = v144;
            *(v98 + 41) = v145;
            v102 = *(v91 + 2);
            v33 = __OFADD__(v102, 1);
            v103 = v102 + 1;
            if (v33)
            {
              goto LABEL_74;
            }

            *(v91 + 2) = v103;
          }

          v68 = v130;
          v131[1] = v91;
          v69 = v139;
          goto LABEL_39;
        }
      }

LABEL_39:
      v70 += 2;
      --v71;
    }

    while (v71);
  }

  v146 = v68;
  v104 = sub_1DACB9324();
  v106 = v105;
  if (v69)
  {
    v107 = v104;
    v108 = 0;
    v109 = (v68 + 40);
    while (1)
    {
      v110 = *(v109 - 1) == v107 && *v109 == v106;
      if (v110 || (sub_1DACBA174() & 1) != 0)
      {
        break;
      }

      ++v108;
      v109 += 2;
      if (v69 == v108)
      {
        goto LABEL_61;
      }
    }

    sub_1DACB71E4();

    v111 = v68;
    v112 = v131;
    if (!v108)
    {
      goto LABEL_68;
    }

    sub_1DAC962D4(v108);

    v113 = sub_1DACB9324();
    v115 = v114;
    v111 = v146;
    v116 = *(v146 + 2);
    v117 = swift_isUniquelyReferenced_nonNull_native();
    if (!v117 || v116 >= *(v111 + 3) >> 1)
    {
      v111 = sub_1DAA9A3B0(v117, v116 + 1, 1, v111);
      v146 = v111;
    }

    sub_1DACA69B8(0, 0, 1, v113, v115);
  }

  else
  {
LABEL_61:
    sub_1DACB71E4();
    v111 = v68;
    v112 = v131;
  }

LABEL_68:

  *v112 = v111;
  if (qword_1EE121840 != -1)
  {
LABEL_76:
    swift_once();
  }

  v118 = qword_1EE13E318;
  sub_1DAA41D64(0);
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_1DACC1D40;
  v120 = MEMORY[0x1E69E6158];
  v121 = sub_1DACB9134();
  v123 = v122;
  *(v119 + 56) = v120;
  v124 = sub_1DAA443C8();
  *(v119 + 64) = v124;
  *(v119 + 32) = v121;
  *(v119 + 40) = v123;
  v125 = MEMORY[0x1E1277130](v130, v120);
  *(v119 + 96) = v120;
  *(v119 + 104) = v124;
  *(v119 + 72) = v125;
  *(v119 + 80) = v126;
  v127 = sub_1DACB9914();
  sub_1DACB8C64("WatchlistManager prewarm resulted with\n watchlists: %{public}@ \n watchlistOrder: %{public}@", 91, 2, &dword_1DAA3F000, v118, v127, v119);
}

uint64_t sub_1DAA74978(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1DAA74DF8();
  v38 = v4;
  result = sub_1DACB9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v41 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = v22[1];
      v24 = *(v5 + 56) + 48 * v21;
      v25 = *(v24 + 8);
      v43 = *v24;
      v44 = *v22;
      v26 = *(v24 + 16);
      v42 = *(v24 + 24);
      v27 = *(v24 + 32);
      v39 = *(v24 + 41);
      v40 = *(v24 + 40);
      if ((v38 & 1) == 0)
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v44;
      v16[1] = v23;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v43;
      *(v17 + 8) = v25;
      *(v17 + 16) = v26;
      *(v17 + 24) = v42;
      *(v17 + 32) = v27;
      *(v17 + 40) = v40;
      *(v17 + 41) = v39;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v41;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1DAA74DC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DAA74DF8()
{
  if (!qword_1EE11F6D0)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F6D0);
    }
  }
}

void sub_1DAA74E58(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  sub_1DACB71F4();
  v4 = a2;
  v3();
}

uint64_t sub_1DAA74EC8(void *a1, uint64_t a2)
{
  v4 = [a1 encryptedValues];
  v5 = sub_1DACB92F4();
  v6 = [v4 objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if (sub_1DAA74FF8(a2, v6))
  {
    v7 = [a1 encryptedValues];
    v8 = sub_1DACB7C04();
    v9 = sub_1DACB92F4();
    [v7 setObject:v8 forKeyedSubscript:v9];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1DAA74FF8(uint64_t a1, uint64_t a2)
{
  sub_1DAA492B4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB7CC4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + OBJC_IVAR___SCUpdateUserStartDateCommand_mergePolicy))
  {
    v12 = a2 == 0;
    return v12 & 1;
  }

  if (*(a1 + OBJC_IVAR___SCUpdateUserStartDateCommand_mergePolicy) == 1)
  {
LABEL_9:
    v12 = 1;
    return v12 & 1;
  }

  if (!a2)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_8;
  }

  v14[1] = a2;
  sub_1DABBCEBC();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCast();
  (*(v8 + 56))(v6, v11 ^ 1u, 1, v7);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_8:
    sub_1DAA89D90(v6, sub_1DAA492B4);
    goto LABEL_9;
  }

  (*(v8 + 32))(v10, v6, v7);
  v12 = sub_1DACB7C24();
  (*(v8 + 8))(v10, v7);
  return v12 & 1;
}

void sub_1DAA752CC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v66 = *v3;
  v7 = sub_1DACB92F4();
  v63 = a2;
  v8 = [a2 recordWithName_];

  if (v8 && (v9 = [v8 encryptedValues], v8, v10 = sub_1DACB92F4(), v8 = objc_msgSend(v9, sel_objectForKeyedSubscript_, v10), swift_unknownObjectRelease(), v10, v8))
  {
    v71 = v8;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    v11 = swift_dynamicCast();
    if (v11)
    {
      v8 = v67;
    }

    else
    {
      v8 = 0;
    }

    if (v11)
    {
      v12 = v68;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1DACB92F4();
  v14 = [a3 recordWithName_];

  if (v14 && (v15 = [v14 encryptedValues], v14, v16 = sub_1DACB92F4(), v17 = objc_msgSend(v15, sel_objectForKeyedSubscript_, v16), swift_unknownObjectRelease(), v16, v17) && (v71 = v17, sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue), (swift_dynamicCast() & 1) != 0))
  {
    v18 = v68;
    if (v12)
    {
      if (v67 == v8 && v12 == v68)
      {

LABEL_18:

        goto LABEL_19;
      }

      v47 = sub_1DACBA174();

      if (v47)
      {
        goto LABEL_18;
      }
    }

    swift_beginAccess();
    v48 = *(v4 + 24);
    if (v48 >> 62)
    {
      v49 = sub_1DACB9E14();
      if (!v49)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v49)
      {
        goto LABEL_18;
      }
    }

    v62 = v67;
    v61 = a1;
    if (v49 < 1)
    {
      __break(1u);
      return;
    }

    v64 = v48 & 0xC000000000000001;
    sub_1DACB71E4();
    for (i = 0; i != v49; ++i)
    {
      if (v64)
      {
        v55 = MEMORY[0x1E12777A0](i, v48);
      }

      else
      {
        v55 = *(v48 + 8 * i + 32);
        sub_1DACB71F4();
      }

      v69 = v66;
      v70 = &off_1F5685960;
      v67 = v4;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v51 = *(v55 + 24);
        ObjectType = swift_getObjectType();
        v53 = v48;
        v54 = *(v51 + 8);
        sub_1DACB71F4();
        v54(&v67, v62, v18, ObjectType, v51);
        v48 = v53;
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1DACB71F4();
      }

      __swift_destroy_boxed_opaque_existential_1(&v67);
    }

    a1 = v61;
  }

  else if (v12)
  {
    goto LABEL_18;
  }

LABEL_19:
  v19 = sub_1DACB92F4();
  v20 = [v63 recordWithName_];

  if (v20 && (v21 = MEMORY[0x1E1277550](0xD00000000000001DLL, 0x80000001DACE85A0), v20, v21))
  {
    v72 = v21;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    v22 = swift_dynamicCast();
    if (v22)
    {
      v23 = v67;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v68;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = sub_1DACB92F4();
  v26 = [a3 recordWithName_];

  if (v26 && (v27 = MEMORY[0x1E1277550](0xD00000000000001DLL, 0x80000001DACE85A0), v26, v27))
  {
    v72 = v27;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    v28 = swift_dynamicCast();
    if (v28)
    {
      v29 = v67;
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v30 = v68;
    }

    else
    {
      v30 = 0;
    }

    if (!v24)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
    if (!v24)
    {
LABEL_51:

      return;
    }
  }

  if (!v30)
  {
    goto LABEL_51;
  }

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {

    goto LABEL_51;
  }

  sub_1DACB71E4();
  sub_1DAB502FC(v23, v24);
  v33 = v32;
  v35 = v34;

  if (v35)
  {
    v36 = 0x8000000000000000;
  }

  else
  {
    v36 = v33;
  }

  sub_1DACB71E4();
  sub_1DAB502FC(v29, v30);
  v38 = v37;
  v40 = v39;

  if (v40)
  {
    if (v36 == 0x8000000000000000)
    {
LABEL_48:

      goto LABEL_51;
    }
  }

  else if (v38 >= v36)
  {
    goto LABEL_48;
  }

  if (qword_1ECBE59C8 != -1)
  {
    swift_once();
  }

  v41 = sub_1DACB8C94();
  __swift_project_value_buffer(v41, qword_1ECBE6A58);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v42 = sub_1DACB8C74();
  v43 = sub_1DACB9914();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v67 = v45;
    *v44 = 136315394;
    v46 = sub_1DAA7ABE4(v29, v30, &v67);

    *(v44 + 4) = v46;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_1DAA7ABE4(v23, v24, &v67);
    _os_log_impl(&dword_1DAA3F000, v42, v43, "Received an invalid lastAppLaunchUpsellInstanceID [%s], restoring record back to [%s]", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v45, -1, -1);
    MEMORY[0x1E1278C00](v44, -1, -1);
  }

  else
  {
  }

  v56 = sub_1DACB92F4();
  updated = type metadata accessor for UpdateLastAppLaunchUpsellInstanceIDCommand();
  v58 = objc_allocWithZone(updated);
  v59 = &v58[OBJC_IVAR___SCUpdateLastAppLaunchUpsellInstanceIDCommand_lastAppLaunchUpsellInstanceID];
  *v59 = v23;
  v59[1] = v24;
  v73.receiver = v58;
  v73.super_class = updated;
  v60 = objc_msgSendSuper2(&v73, sel_init);
  [a1 modifyContentsOfZone:v56 withCommand:v60];
}

uint64_t sub_1DAA75AA8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 & 1) + 5;
  }
}

uint64_t sub_1DAA75D68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_1DACBA174();
  }
}

uint64_t sub_1DAA75DC8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_startDate;
  swift_beginAccess();
  v4 = sub_1DACB7CC4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

void sub_1DAA75E60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_1DAA75EB0()
{
  v1 = sub_1DACB8FB4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB9004();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
  v9 = sub_1DACB9954();
  aBlock[4] = sub_1DAA934FC;
  v13 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_40;
  v10 = _Block_copy(aBlock);
  sub_1DACB71F4();

  sub_1DACB8FD4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA59D78(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1DAA59DC0(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA6F790();
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v8, v4, v10);
  _Block_release(v10);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_1DAA763B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1DAA5A8BC(255, a3, a4, a5);
    v6 = sub_1DACB8B74();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1DAA7640C()
{
  sub_1DAA726DC(0, &unk_1EE11FE48, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

void *sub_1DAA76560()
{
  v1 = *v0;
  os_unfair_lock_lock((v1 + 64));
  v2 = *(v1 + 72);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v1 + 64));

  return sub_1DAA765B0(v2);
}

void *sub_1DAA765B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1DAA7D2EC(*(a1 + 16), 0);
  v4 = sub_1DAB05C50(&v6, v3 + 4, v2, a1);
  sub_1DAA54B38(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1DAA76870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v21 = a4;
  v22 = a1;
  v23 = a2;
  v19 = sub_1DACB8204();
  v4 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DACB7CC4();
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB8344();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DAA4CCDC(&qword_1EE1255B0, MEMORY[0x1E69D6528], MEMORY[0x1E69D6530]);
  v13 = MEMORY[0x1E69D6528];
  sub_1DAA58BFC(0, &unk_1EE125520, MEMORY[0x1E69D6528], MEMORY[0x1E69E62F8]);
  sub_1DAA4F5E8(&qword_1EE125518, &unk_1EE125520, v13);
  sub_1DACB9BB4();
  sub_1DACB7CB4();
  v14 = v19;
  (*(v4 + 104))(v6, *MEMORY[0x1E69D6490], v19);
  v15 = (*(v21 + 8))(v22, v23, v12, v8, v6, v24);
  (*(v4 + 8))(v6, v14);
  (*(v18 + 8))(v8, v20);
  (*(v10 + 8))(v12, v9);
  return v15;
}

uint64_t sub_1DAA76BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = 0x73752D6E65;
  v6 = [objc_opt_self() sharedPreferences];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 stocksLanguageCode];
    if (v8)
    {
      v9 = v8;
      v28 = sub_1DACB9324();
      v11 = v10;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    v12 = [v7 stocksCountryCode];
    if (v12)
    {
      v13 = v12;
      v27 = sub_1DACB9324();
      v15 = v14;

      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  v15 = 0xE200000000000000;
  v27 = 21333;
LABEL_9:
  v17 = *(a1 + 16);
  if (v17)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v17, 0);
    v18 = (a1 + 40);
    do
    {
      v29 = *(v18 - 1);
      v30 = *v18;
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DACB71E4();
      MEMORY[0x1E1276F20](59, 0xE100000000000000);
      MEMORY[0x1E1276F20](v28, v11);
      MEMORY[0x1E1276F20](59, 0xE100000000000000);
      MEMORY[0x1E1276F20](v27, v15);

      v16 = swift_bridgeObjectRelease_n();
      v20 = *(v31 + 16);
      v19 = *(v31 + 24);
      if (v20 >= v19 >> 1)
      {
        v16 = sub_1DAA5859C((v19 > 1), v20 + 1, 1);
      }

      *(v31 + 16) = v20 + 1;
      v21 = v31 + 16 * v20;
      *(v21 + 32) = v29;
      *(v21 + 40) = v30;
      v18 += 2;
      --v17;
    }

    while (v17);
  }

  MEMORY[0x1EEE9AC00](v16);
  v22 = MEMORY[0x1E69E5E28];
  sub_1DAA58D6C(0, &qword_1EE11FCB0, &type metadata for StockMetadataManager.CacheEntry, MEMORY[0x1E69E5E28]);
  sub_1DACB8BB4();

  sub_1DACB71F4();
  v23 = sub_1DACB89D4();
  sub_1DACB8A64();

  v24 = sub_1DACB89D4();
  sub_1DAA58D6C(0, &qword_1EE11FC80, &type metadata for Stock, v22);
  sub_1DAA80584();
  v25 = sub_1DACB8B64();

  return v25;
}

uint64_t sub_1DAA76FC8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1DACB71F4();
  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_1DAA771E4(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(id))
{
  if (a2)
  {
    a3(a2);
  }

  else
  {
    if (a1)
    {
      v7 = sub_1DACB92F4();
      v8 = [a1 recordWithName_];

      a5(v8);
    }

    else
    {
      v8 = 0;
      a5(0);
    }
  }
}

uint64_t sub_1DAA773F8(id *a1)
{
  sub_1DAA492B4(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  if (*a1 && (v8 = [*a1 encryptedValues], v9 = sub_1DACB92F4(), v10 = objc_msgSend(v8, sel_objectForKeyedSubscript_, v9), swift_unknownObjectRelease(), v9, v10))
  {
    v16[1] = v10;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    v11 = sub_1DACB7CC4();
    v12 = swift_dynamicCast();
    (*(*(v11 - 8) + 56))(v7, v12 ^ 1u, 1, v11);
  }

  else
  {
    v13 = sub_1DACB7CC4();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  sub_1DAA77630(v7, v5);
  sub_1DAA68234(0, &unk_1EE11D438, sub_1DAA492B4, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v14 = sub_1DACB8AE4();
  sub_1DAA776C4(v7);
  return v14;
}

uint64_t sub_1DAA77630(uint64_t a1, uint64_t a2)
{
  sub_1DAA499D4(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAA776C4(uint64_t a1)
{
  sub_1DAA499D4(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAA77750(uint64_t a1, char *a2, uint64_t a3)
{
  sub_1DAA499D4(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_1DACB7CC4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  sub_1DAA77630(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1DAA776C4(v8);
    sub_1DAA499D4(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1DACC1D20;
    sub_1DAA5C878(&qword_1EE123A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v17 = sub_1DACBA114();
    v19 = v18;
    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 64) = sub_1DAA443C8();
    *(v16 + 32) = v17;
    *(v16 + 40) = v19;
    sub_1DAA41DCC();
    v20 = sub_1DACB9AD4();
    v21 = sub_1DACB9914();
    sub_1DACB8C64("user info had no start date, so saving the launch date: %{public}@", 66, 2, &dword_1DAA3F000, v20, v21, v16);

    v22 = OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_startDate;
    swift_beginAccess();
    (*(v10 + 24))(&a2[v22], a3, v9);
    swift_endAccess();
    a2[OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_isFirstLaunch] = 1;
    v23 = *(a2 + 5);
    v24 = *(a2 + 6);
    __swift_project_boxed_opaque_existential_1(a2 + 2, v23);
    (*(v24 + 48))(a3, 0, v23, v24);
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    sub_1DAA499D4(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1DACC1D20;
    sub_1DAA5C878(&qword_1EE123A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v26 = sub_1DACBA114();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1DAA443C8();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    sub_1DAA41DCC();
    v29 = sub_1DACB9AD4();
    v30 = sub_1DACB9914();
    sub_1DACB8C64("fetched a start date from user info: %{public}@", 47, 2, &dword_1DAA3F000, v29, v30, v25);

    v31 = OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_startDate;
    swift_beginAccess();
    (*(v10 + 24))(&a2[v31], v15, v9);
    swift_endAccess();
    (*(v10 + 8))(v15, v9);
    a2[OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_isFirstLaunch] = 0;
  }

  v32 = *(a2 + 7);
  v33 = OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_startDate;
  swift_beginAccess();
  (*(v10 + 16))(v13, &a2[v33], v9);
  v34 = sub_1DACB7C04();
  (*(v10 + 8))(v13, v9);
  v35 = sub_1DACB92F4();
  [v32 setObject:v34 forKey:v35];
}

uint64_t sub_1DAA77F1C(id *a1)
{
  sub_1DAA492B4(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v16 - v6;
  if (*a1 && (v8 = [*a1 encryptedValues], v9 = sub_1DACB92F4(), v10 = objc_msgSend(v8, sel_objectForKeyedSubscript_, v9), swift_unknownObjectRelease(), v9, v10))
  {
    v16[1] = v10;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    v11 = sub_1DACB7CC4();
    v12 = swift_dynamicCast();
    (*(*(v11 - 8) + 56))(v7, v12 ^ 1u, 1, v11);
  }

  else
  {
    v13 = sub_1DACB7CC4();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  }

  sub_1DAA77630(v7, v5);
  sub_1DAA68234(0, &unk_1EE11D438, sub_1DAA492B4, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  v14 = sub_1DACB8AE4();
  sub_1DAA776C4(v7);
  return v14;
}

uint64_t sub_1DAA781A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v42 = a5;
  v45 = a8;
  v46 = a3;
  v52 = a6;
  v53 = a7;
  v51 = a4;
  v40 = a1;
  v41 = a2;
  v47 = a9;
  v11 = MEMORY[0x1E69D61A8];
  sub_1DAA58F08(0, &qword_1EE11FD58, MEMORY[0x1E69D61A8]);
  v49 = *(v12 - 8);
  v50 = v12;
  v38[1] = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v39 = v38 - v13;
  sub_1DAA58EA0(0, &qword_1EE11FD50, &qword_1EE11FD58, v11, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v48 = v38 - v15;
  v16 = sub_1DACB8204();
  v43 = v16;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v44 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DACB7CC4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v22, v45, v19);
  (*(v17 + 16))(v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v16);
  v23 = (*(v20 + 80) + 56) & ~*(v20 + 80);
  v24 = (v21 + *(v17 + 80) + v23) & ~*(v17 + 80);
  v25 = swift_allocObject();
  v27 = v51;
  v26 = v52;
  *(v25 + 2) = v46;
  *(v25 + 3) = v27;
  *(v25 + 4) = a5;
  *(v25 + 5) = v26;
  *(v25 + 6) = v53;
  v28 = v22;
  v29 = v49;
  (*(v20 + 32))(&v25[v23], v28, v19);
  v30 = &v25[v24];
  v31 = v50;
  (*(v17 + 32))(v30, v44, v43);
  swift_retain_n();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB88F4();
  v32 = v48;
  sub_1DACB8D84();

  result = (*(v29 + 48))(v32, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v53 = a10;
    sub_1DAA58D6C(0, &qword_1EE11FED0, &type metadata for StockMetadataManager.CacheEntry, MEMORY[0x1E69D6B00]);
    v34 = v39;
    (*(v29 + 16))(v39, v32, v31);
    v35 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v36 = swift_allocObject();
    (*(v29 + 32))(v36 + v35, v34, v31);
    (*(v29 + 8))(v32, v31);
    v37 = sub_1DACB89F4();

    return v37;
  }

  return result;
}

uint64_t sub_1DAA7868C()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DAA787EC()
{
  sub_1DAA58F08(0, &qword_1EE11FD58, MEMORY[0x1E69D61A8]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAA788D0@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAA58F08(0, &qword_1EE11FD30, MEMORY[0x1E69D61B8]);
  swift_allocObject();
  result = sub_1DACB8D74();
  *a1 = result;
  return result;
}

uint64_t sub_1DAA7897C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v51 = a4;
  v49 = a3;
  v52 = a1;
  v8 = type metadata accessor for AppConfiguration(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[0] = sub_1DACB81B4();
  v11 = *(v42[0] - 8);
  MEMORY[0x1EEE9AC00](v42[0]);
  v13 = (v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = v5[5];
  v15 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v14);
  v50 = sub_1DAA78E98(a1, a2, v14, v15);
  v17 = v5[5];
  v16 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v17);
  v18 = v5[15];
  v19 = v5[16];
  __swift_project_boxed_opaque_existential_1(v5 + 12, v18);
  (*(v19 + 8))(v18, v19);
  v20 = *(v10 + 25);
  v47 = type metadata accessor for AppConfiguration;
  sub_1DAA4D03C(v10, type metadata accessor for AppConfiguration);
  *v13 = v20;
  v46 = *MEMORY[0x1E69D63D8];
  v21 = *(v11 + 104);
  v42[1] = v11 + 104;
  v43 = v21;
  v22 = v42[0];
  v21(v13);
  v23 = v52;
  v48 = sub_1DAA78E98(v52, v13, v17, v16);
  v24 = *(v11 + 8);
  v44 = v11 + 8;
  v45 = v24;
  v25 = v22;
  v24(v13, v22);
  v26 = v5[10];
  v27 = v5[11];
  __swift_project_boxed_opaque_existential_1(v5 + 7, v26);
  (*(v27 + 8))(v23, v49, v26, v27);
  v28 = sub_1DACB89D4();
  v49 = sub_1DACB8B14();

  v29 = v5[10];
  v30 = v5[11];
  __swift_project_boxed_opaque_existential_1(v5 + 7, v29);
  v31 = v5[15];
  v32 = v5[16];
  __swift_project_boxed_opaque_existential_1(v5 + 12, v31);
  (*(v32 + 8))(v31, v32);
  v33 = *(v10 + 25);
  sub_1DAA4D03C(v10, v47);
  *v13 = v33;
  v43(v13, v46, v25);
  (*(v30 + 8))(v52, v13, v29, v30);
  v45(v13, v25);
  v34 = sub_1DACB89D4();
  v35 = sub_1DACB8B14();

  v53 = v48;
  v54 = v35;
  sub_1DAA81178(0);
  sub_1DACB8BB4();
  v36 = swift_allocObject();
  v37 = v49;
  *(v36 + 16) = v50;
  *(v36 + 24) = v37;
  *(v36 + 32) = v5;
  *(v36 + 40) = v51;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1DAA828E0;
  *(v38 + 24) = v36;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v39 = sub_1DACB89D4();
  v40 = sub_1DACB8A54();

  return v40;
}

uint64_t sub_1DAA78E24()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA78E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v7 = sub_1DACB8204();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB7CC4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB7CB4();
  (*(v8 + 104))(v10, *MEMORY[0x1E69D6490], v7);
  v15 = (*(a4 + 8))(a1, a2, v14, v10, v18, a4);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  return v15;
}

uint64_t sub_1DAA79070(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DACB8C94();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    sub_1DACB9324();
  }

  return sub_1DACB8C84();
}

uint64_t sub_1DAA791A8(uint64_t a1, uint64_t a2, double a3)
{
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DACC1D20;
  v6 = MEMORY[0x1E69E6158];
  v7 = MEMORY[0x1E1277130](a1, MEMORY[0x1E69E6158]);
  v9 = v8;
  *(v5 + 56) = v6;
  *(v5 + 64) = sub_1DAA443C8();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v10 = sub_1DACB9914();
  sub_1DACB8C64("Will read cached entries from stock metadata store: %@", 54, 2, &dword_1DAA3F000, v4, v10, v5);

  MEMORY[0x1EEE9AC00](v11);
  sub_1DAA58D6C(0, &qword_1EE11FCB0, &type metadata for StockMetadataManager.CacheEntry, MEMORY[0x1E69E5E28]);
  sub_1DACB8BB4();
  v12 = sub_1DACB89D4();
  sub_1DACB8A54();

  v13 = sub_1DACB89D4();
  v14 = sub_1DACB8AA4();

  return v14;
}

uint64_t sub_1DAA793A8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1DACB9324();
  }

  sub_1DAA41DCC();
  result = sub_1DACB9AE4();
  qword_1EE13E310 = result;
  return result;
}

uint64_t sub_1DAA79480(double a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x1E69D61A8];
  sub_1DAA58EA0(0, &qword_1EE11FD50, &qword_1EE11FD58, MEMORY[0x1E69D61A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  sub_1DACB88F4();
  sub_1DACB8D84();

  sub_1DAA58F08(0, &qword_1EE11FD58, v3);
  v8 = v7;
  v9 = *(v7 - 8);
  result = (*(v9 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_1DACB8D34();
    (*(v9 + 8))(v6, v8);
    return v11;
  }

  return result;
}

uint64_t sub_1DAA79628()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8024();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v8[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE120108 = result;
  return result;
}

uint64_t sub_1DAA79808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v86 = a4;
  v74 = a2;
  v80 = *v4;
  v7 = sub_1DACB8344();
  v89 = *(v7 - 8);
  v90 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v87 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DACB8204();
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v10;
  v11 = sub_1DACB81B4();
  v93 = *(v11 - 8);
  v94 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB7CC4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v77 = v16;
  v78 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v73 - v17;
  v19 = sub_1DACB7D04();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB6D04();
  v96 = sub_1DACB7CE4();
  v24 = v23;
  (*(v20 + 8))(v22, v19);
  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v25 = sub_1DACB8C94();
  __swift_project_value_buffer(v25, qword_1EE124090);
  v26 = *(v14 + 16);
  v76 = v14 + 16;
  v75 = v26;
  v26(v18, a3, v13);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v27 = sub_1DACB8C74();
  v28 = v24;
  v29 = sub_1DACB9914();

  v30 = os_log_type_enabled(v27, v29);
  v88 = a1;
  v83 = a3;
  v79 = v14;
  if (v30)
  {
    v31 = v13;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v97 = v33;
    *v32 = 136315650;
    v34 = MEMORY[0x1E1277130](a1, MEMORY[0x1E69E6158]);
    v36 = sub_1DAA7ABE4(v34, v35, v97);

    *(v32 + 4) = v36;
    *(v32 + 12) = 2080;
    v37 = sub_1DACB7C94();
    v39 = v38;
    v40 = v18;
    v41 = v31;
    (*(v14 + 8))(v40, v31);
    v42 = sub_1DAA7ABE4(v37, v39, v97);

    *(v32 + 14) = v42;
    *(v32 + 22) = 2080;
    v43 = v28;
    *(v32 + 24) = sub_1DAA7ABE4(v96, v28, v97);
    _os_log_impl(&dword_1DAA3F000, v27, v29, "Preparing stock quote request for symbols: %s, earliestBeginDate: %s, requestID: %s", v32, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v33, -1, -1);
    MEMORY[0x1E1278C00](v32, -1, -1);
  }

  else
  {
    v43 = v28;

    v45 = v18;
    v41 = v13;
    (*(v14 + 8))(v45, v13);
  }

  v47 = v93;
  v46 = v94;
  v48 = v92;
  if (qword_1EE120100 != -1)
  {
    swift_once();
  }

  sub_1DAA5ED30(&qword_1EE123650, v44, type metadata accessor for QuoteManager, &unk_1DACC48BC);
  sub_1DACB7F84();
  v91 = v43;
  if (v97[0] == 1)
  {
    (*(v47 + 104))(v48, *MEMORY[0x1E69D63D0], v46);
  }

  else
  {
    (*(v47 + 16))(v48, v74, v46);
  }

  sub_1DAA5EC5C(0, &qword_1EE11FEB8, MEMORY[0x1E69D6B00]);
  v80 = v49;
  v50 = v78;
  v51 = v41;
  v75(v78, v83, v41);
  v53 = v84;
  v52 = v85;
  v54 = v81;
  (*(v84 + 16))(v81, v86, v85);
  v55 = v79;
  v56 = (*(v79 + 80) + 40) & ~*(v79 + 80);
  v57 = (v77 + *(v53 + 80) + v56) & ~*(v53 + 80);
  v58 = swift_allocObject();
  v59 = v95;
  v60 = v91;
  *(v58 + 2) = v96;
  *(v58 + 3) = v60;
  *(v58 + 4) = v59;
  (*(v55 + 32))(&v58[v56], v50, v51);
  (*(v53 + 32))(&v58[v57], v54, v52);
  *v97 = MEMORY[0x1E69E7CC0];
  sub_1DAA5ED30(&qword_1EE1255B0, 255, MEMORY[0x1E69D6528], MEMORY[0x1E69D6530]);
  sub_1DAA7A378(0);
  sub_1DAA5ED30(&qword_1EE125518, 255, sub_1DAA7A378, MEMORY[0x1E69E6328]);
  swift_retain_n();
  v61 = v91;
  swift_bridgeObjectRetain_n();
  v62 = v87;
  v63 = v90;
  sub_1DACB9BB4();
  v64 = v96;
  v65 = v92;
  sub_1DACB89F4();

  (*(v89 + 8))(v62, v63);
  (*(v93 + 8))(v65, v94);
  v66 = swift_allocObject();
  *(v66 + 16) = v64;
  *(v66 + 24) = v61;
  v67 = v64;
  sub_1DACB71E4();
  v68 = sub_1DACB89D4();
  sub_1DAA5EC5C(0, &qword_1EE11FC98, MEMORY[0x1E69E5E28]);
  sub_1DACB8A54();

  v69 = swift_allocObject();
  *(v69 + 16) = v67;
  *(v69 + 24) = v61;
  v70 = sub_1DACB89D4();
  v71 = sub_1DACB8AA4();

  return v71;
}

uint64_t sub_1DAA7A1E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA7A218()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DAA7A3B4@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAA5EFF0(0);
  swift_allocObject();
  result = sub_1DACB8D74();
  *a1 = result;
  return result;
}

void sub_1DAA7A458(uint64_t a1)
{
  if (!qword_1EE11FE60)
  {
    sub_1DAA5EC5C(255, &qword_1EE11FC98, MEMORY[0x1E69E5E28]);
    v1 = sub_1DACB8B74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FE60);
    }
  }
}

uint64_t sub_1DAA7A4CC(uint64_t a1, double a2)
{
  sub_1DACB8144();
  sub_1DACB88F4();
  v3 = sub_1DACB8DA4();

  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v4 = sub_1DACB8C94();
  __swift_project_value_buffer(v4, qword_1EE124090);
  sub_1DACB71E4();
  v5 = sub_1DACB8C74();
  v6 = sub_1DACB9914();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = MEMORY[0x1E1277130](a1, MEMORY[0x1E69E6158]);
    v11 = sub_1DAA7ABE4(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DAA3F000, v5, v6, "Reading quotes from cache for symbols: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  sub_1DAA5EC5C(0, &unk_1EE11FEF0, MEMORY[0x1E69D6AA8]);
  sub_1DACB8944();
  v14 = v3;
  sub_1DAA7A458(0);
  swift_allocObject();
  v12 = sub_1DACB8AE4();
  sub_1DACB8154();
  return v12;
}

uint64_t sub_1DAA7A6F8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 120) = a2;
    return result;
  }

  sub_1DAA492B4(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[13];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1DACB7CC4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[22];
    goto LABEL_7;
  }

  v14 = sub_1DACB7F54();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[24];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1DAA7A864(uint64_t a1)
{
  v3 = *(sub_1DACB7CC4() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1DACB8204() - 8);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1DAA7A940(a1, v7, v8, v9, v1 + v4, v10);
}

uint64_t sub_1DAA7A940(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v12 = sub_1DACB8C94();
  __swift_project_value_buffer(v12, qword_1EE124090);
  sub_1DACB71E4();
  v13 = sub_1DACB8C74();
  v14 = sub_1DACB9914();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1DAA7ABE4(a2, a3, &v25);
    _os_log_impl(&dword_1DAA3F000, v13, v14, "Performing quote fetch with requestID: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E1278C00](v16, -1, -1);
    MEMORY[0x1E1278C00](v15, -1, -1);
  }

  v17 = a4[5];
  v18 = a4[6];
  __swift_project_boxed_opaque_existential_1(a4 + 2, v17);
  (*(v18 + 8))(a1, a5, a6, v17, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  sub_1DACB71E4();
  v20 = sub_1DACB89D4();
  sub_1DAA5EC5C(0, &qword_1EE11FC98, MEMORY[0x1E69E5E28]);
  sub_1DACB8A54();

  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  sub_1DACB71E4();
  v22 = sub_1DACB89D4();
  v23 = sub_1DACB8AA4();

  return v23;
}

unint64_t sub_1DAA7ABE4(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_1DACB71E4();
  v6 = sub_1DAA7BF04(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1DAA7C694(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_1DAA7ACB0(uint64_t a1)
{
  sub_1DAA580F4(0, &qword_1EE11FE60, sub_1DAC25714, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAA7AD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1DACB8FB4();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DACB9004();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = sub_1DAA73914;
  v16[4] = v15;
  aBlock[4] = sub_1DAA7B454;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_34;
  v17 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB8FD4();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v18 = MEMORY[0x1E69E7F60];
  sub_1DAA580F4(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA57DD0(&qword_1EE123EB0, &qword_1EE123EC0, v18);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v14, v11, v17);
  _Block_release(v17);
  (*(v22 + 8))(v11, v9);
  (*(v12 + 8))(v14, v21);
}

uint64_t sub_1DAA7B064()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA7B09C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAA7B100(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v6 = sub_1DACB8C94();
  __swift_project_value_buffer(v6, qword_1EE124090);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v7 = sub_1DACB8C74();
  v8 = sub_1DACB9914();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_1DAA7ABE4(a2, a3, &v16);
    *(v9 + 12) = 2048;
    *(v9 + 14) = *(v5 + 16);

    *(v9 + 22) = 2080;
    sub_1DAA7B3CC(0);
    sub_1DAA5ED30(&qword_1EE11F758, 255, sub_1DAA7B3CC, MEMORY[0x1E69E6CC8]);
    sub_1DAA642D8();
    sub_1DACB71E4();
    v11 = sub_1DACB9554();
    v13 = v12;

    MEMORY[0x1E1276F20](v11, v13);

    MEMORY[0x1E1276F20](23818, 0xE200000000000000);
    v14 = sub_1DAA7ABE4(2651, 0xE200000000000000, &v16);

    *(v9 + 24) = v14;
    _os_log_impl(&dword_1DAA3F000, v7, v8, "Quote request with ID: %s completed with %ld results: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v10, -1, -1);
    MEMORY[0x1E1278C00](v9, -1, -1);
  }

  else
  {
  }

  sub_1DAA7A458(0);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

void sub_1DAA7B3CC(uint64_t a1)
{
  if (!qword_1EE11F750)
  {
    sub_1DAA5EC5C(255, &qword_1EE11FC98, MEMORY[0x1E69E5E28]);
    sub_1DAA7B460();
    v1 = sub_1DACB9DC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11F750);
    }
  }
}

unint64_t sub_1DAA7B460()
{
  result = qword_1EE11FC90;
  if (!qword_1EE11FC90)
  {
    sub_1DAA5EC5C(255, &qword_1EE11FC98, MEMORY[0x1E69E5E28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FC90);
  }

  return result;
}

uint64_t sub_1DAA7B4D4(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v56[1] = a3;
  v57 = a2;
  v64 = sub_1DACB7CC4();
  v4 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Quote(0);
  v62 = *(v6 - 1);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (v56 - v10);
  v12 = *(a1 + 16);
  if (!v12)
  {
    v14 = MEMORY[0x1E69E7CC8];
LABEL_39:
    v57(v14);
  }

  v58 = (v4 + 56);
  v60 = (v4 + 8);
  v13 = (a1 + 40);
  v14 = MEMORY[0x1E69E7CC8];
  v59 = xmmword_1DACDA150;
  v61 = v9;
  while (1)
  {
    v65 = v13;
    v66 = v12;
    v15 = *v13;
    v69 = *(v13 - 1);
    v70 = v15;
    sub_1DACB71E4();
    v16 = arc4random_uniform(0x64u);
    if (v16 <= 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = v16;
    }

    v68 = v17;
    v18 = arc4random_uniform(0x64u);
    if (v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    v67 = v19;
    v20 = arc4random_uniform(0x64u);
    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    v22 = v21;
    v23 = arc4random_uniform(0x64u);
    if (v23 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23;
    }

    v25 = v22 / v24;
    if ((arc4random_uniform(2u) & 1) == 0)
    {
      v25 = -v25;
    }

    v26 = arc4random_uniform(0x64u);
    v27 = v26 <= 1 ? 1 : v26;
    v28 = arc4random_uniform(0x64u);
    v29 = v28 <= 1 ? 1 : v28;
    v30 = *v58;
    v31 = v64;
    (*v58)(v11 + v6[13], 1, 1, v64);
    v30(v11 + v6[14], 1, 1, v31);
    v32 = v6[15];
    sub_1DACB7CB4();
    v30(v11 + v32, 0, 1, v31);
    v30(v11 + v6[20], 1, 1, v31);
    v30(v11 + v6[21], 1, 1, v31);
    v33 = v6[23];
    v34 = v63;
    sub_1DACB7CB4();
    sub_1DACB7BF4();
    (*v60)(v34, v31);
    v30(v11 + v33, 0, 1, v31);
    if (qword_1EE123A08 != -1)
    {
      swift_once();
    }

    v35 = v68 / v67;
    v36 = sub_1DACB7F54();
    v37 = __swift_project_value_buffer(v36, qword_1EE13E458);
    (*(*(v36 - 8) + 16))(v11 + v6[24], v37, v36);
    sub_1DACB7CB4();
    *v11 = v35;
    *(v11 + 8) = 0;
    v11[2] = v25;
    *(v11 + 24) = 0;
    v11[4] = v27 / v29;
    *(v11 + 40) = 0;
    v11[6] = 0.0;
    *(v11 + 56) = 1;
    v11[8] = 0.0;
    *(v11 + 72) = 1;
    v11[10] = 0.0;
    *(v11 + 88) = 1;
    v11[12] = 0.0;
    *(v11 + 104) = 1;
    *(v11 + 7) = v59;
    *(v11 + 128) = 2;
    *(v11 + v6[16]) = 7;
    *(v11 + v6[17]) = 7;
    *(v11 + v6[18]) = 7;
    v38 = v11 + v6[19];
    *v38 = 0;
    v38[8] = 1;
    v39 = v61;
    sub_1DAA7BD70(v11, v61);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71 = v14;
    v41 = v69;
    v42 = v70;
    v44 = sub_1DAA4BF3C(v69, v70);
    v45 = v14[2];
    v46 = (v43 & 1) == 0;
    v47 = v45 + v46;
    if (__OFADD__(v45, v46))
    {
      break;
    }

    v48 = v43;
    if (v14[3] >= v47)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v43)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1DAA89048();
        if (v48)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1DAA7C010(v47, isUniquelyReferenced_nonNull_native);
      v49 = sub_1DAA4BF3C(v41, v42);
      if ((v48 & 1) != (v50 & 1))
      {
        goto LABEL_42;
      }

      v44 = v49;
      if (v48)
      {
LABEL_3:

        v14 = v71;
        sub_1DAAFBCE8(v39, v71[7] + *(v62 + 72) * v44);
        goto LABEL_4;
      }
    }

    v14 = v71;
    v71[(v44 >> 6) + 8] |= 1 << v44;
    v51 = (v14[6] + 16 * v44);
    *v51 = v41;
    v51[1] = v42;
    sub_1DAA7BD70(v39, v14[7] + *(v62 + 72) * v44);
    v52 = v14[2];
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (v53)
    {
      goto LABEL_41;
    }

    v14[2] = v54;
LABEL_4:
    v13 = v65 + 2;
    v12 = v66 - 1;
    if (v66 == 1)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DAA7BAAC()
{
  sub_1DAA7BCA8(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1DACB7F54();
  __swift_allocate_value_buffer(v3, qword_1EE13E458);
  v4 = __swift_project_value_buffer(v3, qword_1EE13E458);
  sub_1DACB7F14();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

void *sub_1DAA7BBF4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1DAA7BDD4(a1, a2);
  sub_1DAA7C470(&unk_1F567C288);
  return v3;
}

void *sub_1DAA7BC40(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DAA7C420();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_1DAA7BCA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA7BD0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAA7BD70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Quote(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1DAA7BDD4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DAA7BC40(v5, 0);
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

  result = sub_1DACB9D24();
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
        v10 = sub_1DACB9454();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DAA7BC40(v10, 0);
        result = sub_1DACB9C64();
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

unint64_t sub_1DAA7BF04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DAA7BBF4(a5, a6);
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
    result = sub_1DACB9D24();
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

uint64_t sub_1DAA7C010(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Quote(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1DAA7C3AC(0, &unk_1EE11F6E0, type metadata accessor for Quote, MEMORY[0x1E69E6EC8]);
  v40 = v4;
  result = sub_1DACB9E84();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1DAA7C55C(v28, v41, type metadata accessor for Quote);
      }

      else
      {
        sub_1DAB697A0(v28, v41, type metadata accessor for Quote);
        sub_1DACB71E4();
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1DAA7C55C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Quote);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void sub_1DAA7C3AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA7C420()
{
  if (!qword_1EE11F498)
  {
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F498);
    }
  }
}

uint64_t sub_1DAA7C470(uint64_t result)
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

  result = sub_1DAADCA10(result, v11, 1, v3);
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

uint64_t sub_1DAA7C55C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA7C5C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA7C62C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA7C694(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DAA7C730(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v6 = sub_1DACB8C94();
  __swift_project_value_buffer(v6, qword_1EE124090);
  sub_1DACB71E4();
  v7 = sub_1DACB8C74();
  v8 = sub_1DACB9914();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1DAA7ABE4(a2, a3, &v12);
    _os_log_impl(&dword_1DAA3F000, v7, v8, "Quote fetch with ID: %s returned success", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E1278C00](v10, -1, -1);
    MEMORY[0x1E1278C00](v9, -1, -1);
  }

  v12 = v5;
  sub_1DAA7A458(0);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAA7C8DC(void *a1)
{
  sub_1DACB8144();
  v2 = a1[2];
  if (v2 && (v3 = sub_1DAA7D2EC(v2, 0), v4 = sub_1DAA7D61C(&v17, v3 + 4, v2, a1), v5 = v17, sub_1DACB71E4(), result = sub_1DAA54B38(v5), v4 != v2))
  {
    __break(1u);
  }

  else
  {
    v7 = sub_1DACB8984();

    sub_1DAA5EC5C(0, &unk_1EE11FEF0, MEMORY[0x1E69D6AA8]);
    sub_1DACB8944();
    sub_1DAA5EFF0(0);
    sub_1DACB88F4();
    sub_1DACB8D14();

    if (qword_1EE124088 != -1)
    {
      swift_once();
    }

    v8 = sub_1DACB8C94();
    __swift_project_value_buffer(v8, qword_1EE124090);
    sub_1DACB71E4();
    v9 = sub_1DACB8C74();
    v10 = sub_1DACB9914();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      type metadata accessor for Quote(0);
      v13 = sub_1DACB9134();
      v15 = sub_1DAA7ABE4(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1DAA3F000, v9, v10, "Writing quotes to cache: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x1E1278C00](v12, -1, -1);
      MEMORY[0x1E1278C00](v11, -1, -1);
    }

    sub_1DAA87C58(a1, v7);

    v17 = a1;
    sub_1DAA7A458(0);
    swift_allocObject();
    sub_1DACB71E4();
    v16 = sub_1DACB8AE4();
    sub_1DACB8154();
    return v16;
  }

  return result;
}

uint64_t sub_1DAA7CBC0(uint64_t a1, uint64_t a2)
{
  v47 = a2;
  v44 = a1;
  v3 = sub_1DACB8344();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7C8BC(0);
  v49 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5FEF0(0, &qword_1EE11FD70, sub_1DAA7C8BC, MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v48 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - v12;
  v14 = sub_1DACB81B4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1200F0 != -1)
  {
    swift_once();
  }

  sub_1DAA5CCB8(&qword_1EE1228F8, v16, type metadata accessor for SparklineManager, &unk_1DACD6E84);
  sub_1DACB7F84();
  v42 = v14;
  v39 = v18;
  if (LOBYTE(v50[0]) == 1)
  {
    (*(v15 + 104))(v18, *MEMORY[0x1E69D63D0], v14);
  }

  else
  {
    (*(v15 + 16))(v18, v47, v14);
  }

  v40 = v15;
  sub_1DAA4D678(v2 + 16, v50);
  v38 = swift_allocObject();
  sub_1DAA4D460(v50, v38 + 16);
  v41 = v2;
  v47 = *(v2 + 64);
  sub_1DACB88F4();
  sub_1DACB8D84();

  v19 = *(v6 + 48);
  v20 = v49;
  result = v19(v13, 1, v49);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v36 = *(v6 + 16);
    v36(v8, v13, v20);
    v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v34 = v7;
    v23 = swift_allocObject();
    v24 = *(v6 + 32);
    v37 = v23;
    v35 = v24;
    v24(v23 + v22, v8, v20);
    v33 = *(v6 + 8);
    v33(v13, v20);
    sub_1DACB88F4();
    v25 = v48;
    sub_1DACB8D84();
    v26 = v49;

    result = v19(v25, 1, v26);
    if (result != 1)
    {
      sub_1DAA5FCE0(0, &qword_1EE11FEC0, MEMORY[0x1E69D6B00]);
      v36(v8, v25, v26);
      v27 = swift_allocObject();
      v35(v27 + v22, v8, v26);
      v33(v25, v26);
      *&v50[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5CCB8(&qword_1EE1255B0, 255, MEMORY[0x1E69D6528], MEMORY[0x1E69D6530]);
      sub_1DAA7A378(0);
      sub_1DAA5CCB8(&qword_1EE125518, 255, sub_1DAA7A378, MEMORY[0x1E69E6328]);
      v28 = v43;
      v29 = v46;
      sub_1DACB9BB4();
      v30 = v39;
      v31 = sub_1DACB89F4();

      (*(v45 + 8))(v28, v29);
      (*(v40 + 8))(v30, v42);
      return v31;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA7D2AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void *sub_1DAA7D2EC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DAA6149C(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
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

uint64_t sub_1DAA7D388()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1DACB8024();
  MEMORY[0x1EEE9AC00](v4);
  (*(v6 + 104))(&v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6EA0], v0);
  v8[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE1200F8 = result;
  return result;
}

uint64_t sub_1DAA7D55C@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAA600B8(0);
  swift_allocObject();
  result = sub_1DACB8D74();
  *a1 = result;
  return result;
}

void *sub_1DAA7D61C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
    v14 = 1;
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
        sub_1DACB71E4();
        goto LABEL_24;
      }

      v11 += 2;
      sub_1DACB71E4();
      result = v14;
      if (__OFADD__(v14++, 1))
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

uint64_t sub_1DAA7D774(uint64_t *a1)
{
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACC1D20;
  v3 = MEMORY[0x1E69E6158];
  v4 = sub_1DACB9134();
  v6 = v5;
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_1DAA443C8();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  v7 = sub_1DACB9914();
  sub_1DACB8C64("Read cached entries from stock metadata store: %@", 49, 2, &dword_1DAA3F000, v1, v7, v2);

  sub_1DAA7D8B0(0);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

void sub_1DAA7D8B0(uint64_t a1)
{
  if (!qword_1EE11FE70)
  {
    sub_1DAA58D6C(255, &qword_1EE11FCB0, &type metadata for StockMetadataManager.CacheEntry, MEMORY[0x1E69E5E28]);
    v1 = sub_1DACB8B74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FE70);
    }
  }
}

uint64_t sub_1DAA7D92C(void *a1)
{
  v3 = v1;
  sub_1DAA7E2F0(0, &qword_1EE11F550, sub_1DAA7E358, &type metadata for Quote.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA7E358();
  sub_1DACBA304();
  v14 = 0;
  sub_1DACBA044();
  if (!v2)
  {
    v14 = 1;
    sub_1DACBA044();
    v14 = 2;
    sub_1DACBA044();
    v14 = 3;
    sub_1DACBA044();
    v14 = 4;
    sub_1DACBA044();
    v14 = 5;
    sub_1DACBA044();
    v14 = 6;
    sub_1DACBA044();
    v14 = 7;
    sub_1DACBA024();
    v14 = *(v3 + 128);
    v13 = 8;
    sub_1DAA7F2E0();
    sub_1DACBA0E4();
    v11 = type metadata accessor for Quote(0);
    v14 = 9;
    sub_1DACB7CC4();
    sub_1DAA804F4(&qword_1EE125288, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DACBA074();
    v14 = 10;
    sub_1DACBA074();
    v14 = 11;
    sub_1DACBA074();
    v14 = *(v3 + v11[16]);
    v13 = 12;
    v12[1] = sub_1DAA80600();
    sub_1DACBA074();
    v14 = *(v3 + v11[17]);
    v13 = 13;
    sub_1DACBA074();
    v14 = *(v3 + v11[18]);
    v13 = 14;
    sub_1DACBA074();
    v14 = 15;
    sub_1DACBA044();
    v14 = 16;
    sub_1DACBA074();
    v14 = 17;
    sub_1DACBA074();
    v14 = 18;
    sub_1DACBA0E4();
    v14 = 19;
    sub_1DACBA074();
    v14 = 20;
    sub_1DACB7F54();
    sub_1DAA804F4(&qword_1EE123A00, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BC8]);
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DAA7DF08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

char *sub_1DAA7DF90(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  sub_1DAA49610(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1DACB7F54();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_1DACB7CC4();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1DAA7E128(unint64_t *a1, uint64_t a2, int *a3)
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

  sub_1DAA49610(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1DACB7F54();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_1DACB7CC4();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1DAA7E294(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void sub_1DAA7E2F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DAA7E358()
{
  result = qword_1EE120300[0];
  if (!qword_1EE120300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE120300);
  }

  return result;
}

uint64_t sub_1DAA7E3B0(uint64_t a1)
{
  v3 = *(sub_1DACB7CC4() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1DACB8204() - 8);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1DAA7E4E8(a1, v7, v8, v9, v10, v11, v1 + v4, v12);
}

unint64_t sub_1DAA7E490()
{
  result = qword_1EE1202F0;
  if (!qword_1EE1202F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1202F0);
  }

  return result;
}

uint64_t sub_1DAA7E4E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1EE121838 != -1)
  {
LABEL_26:
    swift_once();
  }

  v10 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DACC1D20;
  v12 = MEMORY[0x1E69E6158];
  v13 = MEMORY[0x1E1277130](a1, MEMORY[0x1E69E6158]);
  v15 = v14;
  *(v11 + 56) = v12;
  *(v11 + 64) = sub_1DAA443C8();
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  v16 = sub_1DACB9914();
  sub_1DACB8C64("Will fetch cached entries from stock metadata service: %@", 57, 2, &dword_1DAA3F000, v10, v16, v11);

  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = 0;
    v19 = a1 + 40;
    v20 = MEMORY[0x1E69E7CC0];
    do
    {
      v21 = (v19 + 16 * v18);
      v22 = v18;
      while (1)
      {
        if (v22 >= v17)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v18 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_25;
        }

        v24 = *(v21 - 1);
        v23 = *v21;
        sub_1DACB71E4();
        sub_1DAA7E934(v24, v23, &v61);
        a1 = v62;
        if (v62)
        {
          break;
        }

        sub_1DAA88788(v61, 0, v63, v64, v65, v66);
        ++v22;
        v21 += 2;
        if (v18 == v17)
        {
          goto LABEL_18;
        }
      }

      v52 = v19;
      v53 = a8;
      v54 = v61;
      v25 = v63;
      v26 = v64;
      v27 = v65;
      v28 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1DAA7EDB4(0, *(v20 + 2) + 1, 1, v20);
      }

      v30 = *(v20 + 2);
      v29 = *(v20 + 3);
      v31 = v54;
      if (v30 >= v29 >> 1)
      {
        v37 = sub_1DAA7EDB4((v29 > 1), v30 + 1, 1, v20);
        v35 = v25;
        v34 = v26;
        v33 = v27;
        v32 = v28;
        v20 = v37;
        v31 = v54;
      }

      else
      {
        v32 = v28;
        v33 = v27;
        v34 = v26;
        v35 = v25;
      }

      v19 = v52;
      a8 = v53;
      *(v20 + 2) = v30 + 1;
      v36 = &v20[48 * v30];
      *(v36 + 4) = v31;
      *(v36 + 5) = a1;
      *(v36 + 6) = v35;
      *(v36 + 7) = v34;
      *(v36 + 8) = v33;
      *(v36 + 9) = v32;
    }

    while (v18 != v17);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:
  v38 = *(v20 + 2);
  v39 = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    v61 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v38, 0);
    v39 = v61;
    v40 = (v20 + 40);
    do
    {
      v42 = *(v40 - 1);
      v41 = *v40;
      v61 = v39;
      v44 = *(v39 + 16);
      v43 = *(v39 + 24);
      sub_1DACB71E4();
      if (v44 >= v43 >> 1)
      {
        sub_1DAA5859C((v43 > 1), v44 + 1, 1);
        v39 = v61;
      }

      *(v39 + 16) = v44 + 1;
      v45 = v39 + 16 * v44;
      *(v45 + 32) = v42;
      *(v45 + 40) = v41;
      v40 += 6;
      --v38;
    }

    while (v38);
  }

  v46 = a2[5];
  v47 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v46);
  v61 = a3;
  v62 = a4;
  v63 = a5;
  v64 = a6;
  (*(v47 + 8))(v39, &v61, a7, a8, v46, v47);

  *(swift_allocObject() + 16) = v20;
  v48 = sub_1DACB89D4();
  sub_1DAA58D6C(0, &qword_1EE11FCB0, &type metadata for StockMetadataManager.CacheEntry, MEMORY[0x1E69E5E28]);
  sub_1DACB8A64();

  v49 = sub_1DACB89D4();
  v50 = sub_1DACB8AA4();

  return v50;
}

uint64_t sub_1DAA7E8FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAA7E934@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34[0] = 59;
  v34[1] = 0xE100000000000000;
  v33[2] = v34;
  sub_1DACB71E4();
  v7 = sub_1DAA87898(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DAA88730, v33, a1, a2, v6);
  if (v7[2] != 3)
  {

    if (qword_1EE121838 == -1)
    {
LABEL_7:
      v30 = qword_1EE13E310;
      sub_1DAA41D64(0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1DACC1D20;
      *(v31 + 56) = MEMORY[0x1E69E6158];
      *(v31 + 64) = sub_1DAA443C8();
      *(v31 + 32) = a1;
      *(v31 + 40) = a2;
      v32 = sub_1DACB9914();

      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    }

LABEL_9:
    swift_once();
    goto LABEL_7;
  }

  if (!v7[2])
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7[4];
  v9 = v7[5];
  v10 = v7[6];
  v11 = v7[7];
  sub_1DACB71E4();
  v12 = MEMORY[0x1E1276EB0](v8, v9, v10, v11);
  v14 = v13;

  if (v7[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v16 = v7[8];
    v17 = v7[9];
    v18 = v7[10];
    v19 = v7[11];
    sub_1DACB71E4();
    v20 = MEMORY[0x1E1276EB0](v16, v17, v18, v19);
    v22 = v21;

    if (v7[2] >= 3uLL)
    {
      v23 = v7[12];
      v24 = v7[13];
      v25 = v7[14];
      v26 = v7[15];
      sub_1DACB71E4();

      v27 = MEMORY[0x1E1276EB0](v23, v24, v25, v26);
      v29 = v28;

      *a3 = v12;
      *(a3 + 8) = v14;
      *(a3 + 16) = v20;
      *(a3 + 24) = v22;
      *(a3 + 32) = v27;
      *(a3 + 40) = v29;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAA7EB84()
{
  result = qword_1EE1202F8;
  if (!qword_1EE1202F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1202F8);
  }

  return result;
}

char *sub_1DAA7EBD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE123B38, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t storeEnumTagSinglePayload for Quote.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_1DAA7EDB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE11CEE8, &type metadata for StockMetadataManager.CacheKey, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DAA7EEEC()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAB885E8(0);
  }
}

unint64_t sub_1DAA7EF28(char a1)
{
  result = 0x6563697270;
  switch(a1)
  {
    case 1:
      result = 0x6168436563697270;
      break;
    case 2:
    case 6:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x756F487265746661;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 14:
      result = 0x656B72614D657270;
      break;
    case 7:
      result = 0x79636E6572727563;
      break;
    case 8:
    case 9:
    case 10:
      result = 0x65676E6168637865;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x756F536563697270;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
    case 18:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x73676E696E726165;
      break;
    case 19:
      result = 0x7243726576726573;
      break;
    case 20:
      result = 0x695474656B72616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAA7F1F4(uint64_t a1)
{
  sub_1DAA57F64(0, &qword_1EE11D3F8, sub_1DAA7F334, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAA7F284(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

unint64_t sub_1DAA7F2E0()
{
  result = qword_1EE123380;
  if (!qword_1EE123380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123380);
  }

  return result;
}

void sub_1DAA7F334()
{
  if (!qword_1EE11FC80)
  {
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FC80);
    }
  }
}

uint64_t sub_1DAA7F39C(uint64_t a1)
{
  sub_1DAA57FC8(0, &qword_1EE11FE68, sub_1DAA7F50C, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t getEnumTagSinglePayload for Quote.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_1DAA7F50C(uint64_t a1)
{
  if (!qword_1EE11FCA0)
  {
    type metadata accessor for Chart(255);
    v1 = sub_1DACB91A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE11FCA0);
    }
  }
}

uint64_t sub_1DAA7F574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1DACB8FB4();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DACB9004();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = sub_1DAA73914;
  v16[4] = v15;
  aBlock[4] = sub_1DAA80498;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_1;
  v17 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB8FD4();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DAA572B4(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v18 = MEMORY[0x1E69E7F60];
  sub_1DAA57F64(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA57CA4(&qword_1EE123EB0, &qword_1EE123EC0, v18);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v14, v11, v17);
  _Block_release(v17);
  (*(v22 + 8))(v11, v9);
  (*(v12 + 8))(v14, v21);
}

uint64_t sub_1DAA7F898()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA7F8D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAA7F910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1DACB8FB4();
  v25 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DACB9004();
  v23 = *(v15 - 8);
  v24 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = swift_allocObject();
  v19[2] = a6;
  v19[3] = a5;
  v19[4] = sub_1DAA73914;
  v19[5] = v18;
  v19[6] = a3;
  v19[7] = a4;
  aBlock[4] = sub_1DAA81168;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_19;
  v20 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB8FD4();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v21 = MEMORY[0x1E69E7F60];
  sub_1DAA57FC8(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA57D08(&qword_1EE123EB0, &qword_1EE123EC0, v21);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v17, v14, v20);
  _Block_release(v20);
  (*(v25 + 8))(v14, v12);
  (*(v23 + 8))(v17, v24);
}

uint64_t sub_1DAA7FC4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA7FC84()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAA7FCD4(uint64_t a1, void (*a2)(void *))
{
  v2 = a2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    sub_1DACB71E4();
    v45 = MEMORY[0x1E69E7CC8];
    goto LABEL_41;
  }

  v5 = 0x51414453414ELL;
  *&v101[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA57914(0, v4, 0);
  v6 = 0;
  v93 = a1 + 32;
  v100 = *&v101[0];
  v94 = v4;
  do
  {
    v7 = v6;
    v8 = (v93 + 16 * v6);
    v99 = v7 + 1;
    v9 = *v8;
    v10 = v8[1];
    swift_bridgeObjectRetain_n();
    v11 = arc4random_uniform(0xFu);
    if (v11 <= 5)
    {
      v12 = 5;
    }

    else
    {
      v12 = v11;
    }

    v112 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v12, 0);
    v13 = v112;
    do
    {
      v14 = sub_1DACB9414();
      if ((v14 & 0x8000000000000000) != 0)
      {
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
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }

      if (HIDWORD(v14))
      {
        goto LABEL_43;
      }

      arc4random_uniform(v14);
      sub_1DACB9434();
      v15 = sub_1DACB94C4();
      v112 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        v97 = v15;
        v20 = v5;
        v21 = v16;
        sub_1DAA5859C((v17 > 1), v18 + 1, 1);
        v16 = v21;
        v5 = v20;
        v15 = v97;
        v13 = v112;
      }

      *(v13 + 16) = v18 + 1;
      v19 = v13 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      --v12;
    }

    while (v12);
    sub_1DAA613E8();
    sub_1DAA572B4(&qword_1EE123E90, sub_1DAA613E8, MEMORY[0x1E69E6310]);
    v22 = sub_1DACB9214();
    v96 = v23;
    v98 = v22;

    v112 = v5;
    v113 = 0xE600000000000000;
    MEMORY[0x1E1276F20](58, 0xE100000000000000);
    MEMORY[0x1E1276F20](v9, v10);
    v95 = v5;
    v24 = qword_1EE122610;
    sub_1DACB71E4();
    if (v24 != -1)
    {
      swift_once();
    }

    v25 = qword_1EE13E388;
    v26 = v10;
    v27 = v9;
    if (*(qword_1EE13E388 + 16))
    {
      v28 = sub_1DAA4BF3C(v9, v10);
      v26 = v10;
      v27 = v9;
      if (v29)
      {
        v30 = (*(v25 + 56) + 16 * v28);
        v27 = *v30;
        v26 = v30[1];
      }
    }

    sub_1DACB71E4();
    v31 = qword_1EE13E390;
    v32 = v9;
    v33 = v10;
    if (*(qword_1EE13E390 + 16))
    {
      v34 = sub_1DAA4BF3C(v9, v10);
      v36 = v35;

      v32 = v9;
      v33 = v10;
      if ((v36 & 1) == 0)
      {
        goto LABEL_21;
      }

      v37 = (*(v31 + 56) + 16 * v34);
      v32 = *v37;
      v33 = v37[1];
      sub_1DACB71E4();
    }

LABEL_21:
    LODWORD(v103) = v112;
    *(&v103 + 3) = *(&v112 + 3);
    v38 = v100;
    *&v101[0] = v100;
    v40 = *(v100 + 16);
    v39 = *(v100 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_1DAA57914((v39 > 1), v40 + 1, 1);
      v38 = *&v101[0];
    }

    *(v38 + 16) = v40 + 1;
    v100 = v38;
    v41 = v38 + 136 * v40;
    *(v41 + 32) = v95;
    *(v41 + 40) = 0xE600000000000000;
    *(v41 + 48) = v9;
    *(v41 + 56) = v10;
    *(v41 + 64) = v98;
    *(v41 + 72) = v96;
    v5 = 0x51414453414ELL;
    *(v41 + 80) = 0x51414453414ELL;
    *(v41 + 88) = 0xE600000000000000;
    *(v41 + 96) = 0;
    v42 = *(&v103 + 3);
    *(v41 + 97) = v103;
    *(v41 + 100) = v42;
    *(v41 + 104) = v27;
    *(v41 + 112) = v26;
    *(v41 + 120) = v32;
    *(v41 + 128) = v33;
    *(v41 + 152) = 0u;
    *(v41 + 136) = 0u;
    v6 = v99;
  }

  while (v99 != v94);
  v43 = 0;
  v44 = (sub_1DACB71E4() + 40);
  v45 = MEMORY[0x1E69E7CC8];
  v46 = 32;
  v47 = v100;
  do
  {
    v62 = *(v47 + 16);
    if (v43 == v62)
    {
      break;
    }

    if (v43 >= v62)
    {
      goto LABEL_44;
    }

    v64 = *(v44 - 1);
    v63 = *v44;
    v103 = *(v47 + v46);
    v65 = *(v47 + v46 + 16);
    v66 = *(v47 + v46 + 32);
    v67 = *(v47 + v46 + 64);
    v106 = *(v47 + v46 + 48);
    v107 = v67;
    v104 = v65;
    v105 = v66;
    v68 = *(v47 + v46 + 80);
    v69 = *(v47 + v46 + 96);
    v70 = *(v47 + v46 + 112);
    v111 = *(v47 + v46 + 128);
    v109 = v69;
    v110 = v70;
    v108 = v68;
    v112 = v64;
    v113 = v63;
    v116 = v105;
    v117 = v106;
    v114 = v103;
    v115 = v104;
    v122 = v111;
    v120 = v69;
    v121 = v70;
    v118 = v67;
    v119 = v68;
    sub_1DACB71E4();
    sub_1DAA806E4(&v103, v101);
    sub_1DAA80740(&v112, v101);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = sub_1DAA4BF3C(v64, v63);
    v74 = v45[2];
    v75 = (v73 & 1) == 0;
    v76 = __OFADD__(v74, v75);
    v77 = v74 + v75;
    if (v76)
    {
      goto LABEL_45;
    }

    v78 = v73;
    if (v45[3] < v77)
    {
      sub_1DAA80804(v77, isUniquelyReferenced_nonNull_native);
      v72 = sub_1DAA4BF3C(v64, v63);
      if ((v78 & 1) != (v79 & 1))
      {
        goto LABEL_47;
      }

LABEL_35:
      if ((v78 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_35;
    }

    v90 = v72;
    sub_1DAB656FC();
    v72 = v90;
    if ((v78 & 1) == 0)
    {
LABEL_36:
      v45[(v72 >> 6) + 8] |= 1 << v72;
      v80 = (v45[6] + 16 * v72);
      *v80 = v64;
      v80[1] = v63;
      v81 = v45[7] + 136 * v72;
      v82 = v111;
      v84 = v109;
      v83 = v110;
      *(v81 + 80) = v108;
      *(v81 + 96) = v84;
      *(v81 + 112) = v83;
      *(v81 + 128) = v82;
      v86 = v106;
      v85 = v107;
      v87 = v105;
      *(v81 + 16) = v104;
      *(v81 + 32) = v87;
      *(v81 + 48) = v86;
      *(v81 + 64) = v85;
      *v81 = v103;
      sub_1DAA80C44(&v112);
      v88 = v45[2];
      v76 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v76)
      {
        goto LABEL_46;
      }

      v45[2] = v89;
      goto LABEL_27;
    }

LABEL_26:
    v48 = v72;

    v49 = v45[7] + 136 * v48;
    v101[0] = *v49;
    v50 = *(v49 + 64);
    v52 = *(v49 + 16);
    v51 = *(v49 + 32);
    v101[3] = *(v49 + 48);
    v101[4] = v50;
    v101[1] = v52;
    v101[2] = v51;
    v54 = *(v49 + 96);
    v53 = *(v49 + 112);
    v55 = *(v49 + 80);
    v102 = *(v49 + 128);
    v101[6] = v54;
    v101[7] = v53;
    v101[5] = v55;
    *v49 = v103;
    v56 = v104;
    v57 = v105;
    v58 = v107;
    *(v49 + 48) = v106;
    *(v49 + 64) = v58;
    *(v49 + 16) = v56;
    *(v49 + 32) = v57;
    v59 = v108;
    v60 = v109;
    v61 = v110;
    *(v49 + 128) = v111;
    *(v49 + 96) = v60;
    *(v49 + 112) = v61;
    *(v49 + 80) = v59;
    sub_1DAA9B1C8(v101);
    sub_1DAA80C44(&v112);
LABEL_27:
    ++v43;
    v44 += 2;
    v46 += 136;
    v47 = v100;
  }

  while (v94 != v43);
  v2 = a2;
LABEL_41:

  v2(v45);
}

unint64_t sub_1DAA803A8()
{
  result = qword_1EE123378;
  if (!qword_1EE123378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123378);
  }

  return result;
}

void sub_1DAA803FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x6465736F6C63;
  v7 = 0xE900000000000074;
  v8 = 0x656B72614D657270;
  if (v2 != 3)
  {
    v8 = 0x756F487265746661;
    v7 = 0xEA00000000007372;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1852141679;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DAA804AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA804F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DAA8053C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DAA80584()
{
  result = qword_1EE11FCA8;
  if (!qword_1EE11FCA8)
  {
    sub_1DAA58D6C(255, &qword_1EE11FCB0, &type metadata for StockMetadataManager.CacheEntry, MEMORY[0x1E69E5E28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FCA8);
  }

  return result;
}

unint64_t sub_1DAA80600()
{
  result = qword_1EE1237D8[0];
  if (!qword_1EE1237D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1237D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuoteSource(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1DAA80740(uint64_t a1, uint64_t a2)
{
  sub_1DAA807A4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAA807A4()
{
  if (!qword_1ECBE6F70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE6F70);
    }
  }
}

uint64_t sub_1DAA80804(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1DAA80BE4();
  v40 = v4;
  result = sub_1DACB9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 136 * v21;
      if (v40)
      {
        v41 = *(v25 + 8);
        v42 = *(v25 + 24);
        v43 = *v25;
        v44 = *(v25 + 40);
        v45 = *(v25 + 16);
        v46 = *(v25 + 56);
        v47 = *(v25 + 32);
        v49 = *(v25 + 64);
        v52 = *(v25 + 72);
        v48 = *(v25 + 80);
        v55 = *(v25 + 88);
        v50 = *(v25 + 48);
        v51 = *(v25 + 96);
        v53 = *(v25 + 104);
        v54 = *(v25 + 120);
      }

      else
      {
        v57[0] = *v25;
        v26 = *(v25 + 64);
        v28 = *(v25 + 16);
        v27 = *(v25 + 32);
        v59 = *(v25 + 48);
        v60 = v26;
        v57[1] = v28;
        v58 = v27;
        v30 = *(v25 + 96);
        v29 = *(v25 + 112);
        v31 = *(v25 + 80);
        *&v62[32] = *(v25 + 128);
        *v62 = v30;
        *&v62[16] = v29;
        v61 = v31;
        v53 = *&v62[8];
        v54 = *&v62[24];
        v55 = *(&v31 + 1);
        v51 = v30;
        v52 = *(&v60 + 1);
        v49 = v60;
        v50 = v59;
        v47 = v58;
        v48 = v31;
        v44 = *(&v58 + 1);
        v45 = v28;
        v46 = *(&v59 + 1);
        v42 = *(&v28 + 1);
        v41 = *(&v57[0] + 1);
        v43 = *&v57[0];
        sub_1DACB71E4();
        sub_1DAA806E4(v57, v56);
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 136 * v15;
      *v17 = v43;
      *(v17 + 8) = v41;
      *(v17 + 16) = v45;
      *(v17 + 24) = v42;
      *(v17 + 32) = v47;
      *(v17 + 40) = v44;
      *(v17 + 48) = v50;
      *(v17 + 56) = v46;
      *(v17 + 64) = v49;
      *(v17 + 72) = v52;
      *(v17 + 80) = v48;
      *(v17 + 88) = v55;
      *(v17 + 96) = v51;
      *(v17 + 120) = v54;
      *(v17 + 104) = v53;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void sub_1DAA80BE4()
{
  if (!qword_1EE11F6D8)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F6D8);
    }
  }
}

uint64_t sub_1DAA80C44(uint64_t a1)
{
  sub_1DAA807A4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAA80CA0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (qword_1EE121838 != -1)
  {
LABEL_25:
    swift_once();
  }

  v5 = qword_1EE13E310;
  sub_1DAA41D64(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DACC1D20;
  v7 = MEMORY[0x1E69E6158];
  v53 = v4;
  v8 = sub_1DACB9134();
  v10 = v9;
  *(v6 + 56) = v7;
  *(v6 + 64) = sub_1DAA443C8();
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  v11 = sub_1DACB9914();
  sub_1DACB8C64("Did fetch cached entries from stock metadata service: %@", 56, 2, &dword_1DAA3F000, v5, v11, v6);

  v13 = *(a2 + 16);
  if (v13)
  {
    v4 = (a2 + 72);
    v14 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v54 = v13;
      v22 = *(v4 - 5);
      v23 = *(v4 - 4);
      v24 = *(v4 - 1);
      v25 = *v4;
      v26 = *(v4 - 3);
      v27 = *(v4 - 2);
      *&v73 = v22;
      *(&v73 + 1) = v23;
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DACB71E4();
      MEMORY[0x1E1276F20](59, 0xE100000000000000);
      MEMORY[0x1E1276F20](v26, v27);
      MEMORY[0x1E1276F20](59, 0xE100000000000000);
      MEMORY[0x1E1276F20](v24, v25);
      v28 = *(&v73 + 1);
      a2 = v73;
      if (v53[2])
      {
        v29 = sub_1DAA4BF3C(v22, v23);
        if (v30)
        {
          v31 = (v53[7] + 136 * v29);
          v55 = *v31;
          v32 = v31[3];
          v33 = v31[4];
          v34 = v31[2];
          v56 = v31[1];
          v57 = v34;
          v58 = v32;
          v59 = v33;
          v35 = v31[5];
          v36 = v31[6];
          v37 = v31[7];
          v63 = *(v31 + 16);
          v61 = v36;
          v62 = v37;
          v60 = v35;
          memmove(&__dst, v31, 0x88uLL);
          nullsub_1();
          sub_1DAA806E4(&v55, &v73);
        }

        else
        {
          sub_1DAAD4FA4(&__dst);
        }

        v79 = v70;
        v80 = v71;
        v81 = v72;
        v75 = v66;
        v76 = v67;
        v77 = v68;
        v78 = v69;
        v73 = __dst;
        v74 = v65;
      }

      else
      {
        sub_1DAAD4FA4(&v73);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v14;
      v40 = sub_1DAA4BF3C(a2, v28);
      v41 = v14[2];
      v42 = (v39 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v44 = v39;
      if (v14[3] >= v43)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DAB65F54();
        }
      }

      else
      {
        sub_1DAA81984(v43, isUniquelyReferenced_nonNull_native);
        v45 = sub_1DAA4BF3C(a2, v28);
        if ((v44 & 1) != (v46 & 1))
        {
          result = sub_1DACBA1F4();
          __break(1u);
          return result;
        }

        v40 = v45;
      }

      v70 = v79;
      v71 = v80;
      v72 = v81;
      v66 = v75;
      v67 = v76;
      v68 = v77;
      v69 = v78;
      __dst = v73;
      v65 = v74;
      if (v44)
      {

        v14 = v82;
        v15 = v82[7] + 136 * v40;
        v55 = *v15;
        v16 = *(v15 + 64);
        v18 = *(v15 + 16);
        v17 = *(v15 + 32);
        v58 = *(v15 + 48);
        v59 = v16;
        v56 = v18;
        v57 = v17;
        v20 = *(v15 + 96);
        v19 = *(v15 + 112);
        v21 = *(v15 + 80);
        v63 = *(v15 + 128);
        v61 = v20;
        v62 = v19;
        v60 = v21;
        *(v15 + 80) = v69;
        *(v15 + 96) = v70;
        *(v15 + 112) = v71;
        *(v15 + 128) = v72;
        *(v15 + 16) = v65;
        *(v15 + 32) = v66;
        *(v15 + 48) = v67;
        *(v15 + 64) = v68;
        *v15 = __dst;
        sub_1DAA88870(&v55);
      }

      else
      {
        v14 = v82;
        v82[(v40 >> 6) + 8] |= 1 << v40;
        v47 = (v14[6] + 16 * v40);
        *v47 = a2;
        v47[1] = v28;
        v48 = v14[7] + 136 * v40;
        *v48 = __dst;
        *(v48 + 64) = v68;
        *(v48 + 48) = v67;
        *(v48 + 32) = v66;
        *(v48 + 16) = v65;
        *(v48 + 128) = v72;
        *(v48 + 112) = v71;
        *(v48 + 96) = v70;
        *(v48 + 80) = v69;

        v49 = v14[2];
        v50 = __OFADD__(v49, 1);
        v51 = v49 + 1;
        if (v50)
        {
          goto LABEL_24;
        }

        v14[2] = v51;
      }

      v4 += 6;
      v13 = v54 - 1;
      if (v54 == 1)
      {
        goto LABEL_22;
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC8];
LABEL_22:
  *a3 = v14;
  return result;
}

void sub_1DAA81178(uint64_t a1)
{
  if (!qword_1EE11FC88)
  {
    sub_1DAA5ECCC(255, &qword_1EE11FC98, type metadata accessor for Quote);
    sub_1DAA5ECCC(255, &qword_1EE11FCA0, type metadata accessor for Chart);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FC88);
    }
  }
}

void sub_1DAA81220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a3;
  v10 = sub_1DACB7CC4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14)
  {
    v23 = a4;
    v24 = a5;
    v25 = a6;
    v27 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    v22 = a1;
    v15 = a1 + 40;
    do
    {
      v15 += 16;
      sub_1DACB71E4();
      sub_1DACB7CB4();
      sub_1DACB8594();
      swift_allocObject();
      sub_1DACB8584();
      sub_1DAA57FC8(0, &qword_1EE11D418, type metadata accessor for Chart, MEMORY[0x1E69D6B18]);
      swift_allocObject();
      sub_1DACB8B44();

      (*(v11 + 8))(v13, v10);
      sub_1DACB9D34();
      sub_1DACB9D74();
      sub_1DACB9D84();
      sub_1DACB9D44();
      --v14;
    }

    while (v14);
    a5 = v24;
    a6 = v25;
    a1 = v22;
    a4 = v23;
  }

  v16 = sub_1DACB89D4();
  type metadata accessor for Chart(0);
  sub_1DACB8934();

  *(swift_allocObject() + 16) = a1;
  sub_1DACB71E4();
  v17 = sub_1DACB89D4();
  sub_1DAA7F50C(0);
  sub_1DACB8A54();

  v18 = swift_allocObject();
  *(v18 + 16) = v26;
  *(v18 + 24) = a4;
  sub_1DACB71F4();
  v19 = sub_1DACB89D4();
  sub_1DACB8A64();

  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  sub_1DACB71F4();
  v21 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAA815BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAA81648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DACB8FB4();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DACB9004();
  v11 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_1DAA82974;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_41;
  v15 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB8FD4();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1DAA5738C(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v16 = MEMORY[0x1E69E7F60];
  sub_1DAA58220(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA57EFC(&qword_1EE123EB0, &qword_1EE123EC0, v16);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v13, v10, v15);
  _Block_release(v15);
  (*(v20 + 8))(v10, v8);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_1DAA81944()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAA81984(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1DAA82848();
  v40 = v4;
  result = sub_1DACB9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 136 * v21;
      if (v40)
      {
        v55 = *(v25 + 80);
        v56 = *(v25 + 96);
        v57 = *(v25 + 112);
        v58 = *(v25 + 128);
        v51 = *(v25 + 16);
        v52 = *(v25 + 32);
        v53 = *(v25 + 48);
        v54 = *(v25 + 64);
        v50 = *v25;
      }

      else
      {
        v41 = *v25;
        v26 = *(v25 + 64);
        v28 = *(v25 + 16);
        v27 = *(v25 + 32);
        v44 = *(v25 + 48);
        v45 = v26;
        v42 = v28;
        v43 = v27;
        v30 = *(v25 + 96);
        v29 = *(v25 + 112);
        v31 = *(v25 + 80);
        v49 = *(v25 + 128);
        v47 = v30;
        v48 = v29;
        v46 = v31;
        sub_1DACB71E4();
        sub_1DAB69984(&v41, &v50);
        v56 = v47;
        v57 = v48;
        v58 = v49;
        v52 = v43;
        v53 = v44;
        v54 = v45;
        v55 = v46;
        v50 = v41;
        v51 = v42;
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v32 = -1 << *(v7 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v14 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v14 + 8 * v34);
          if (v38 != -1)
          {
            v15 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v33) & ~*(v14 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 136 * v15;
      *(v17 + 80) = v55;
      *(v17 + 96) = v56;
      *(v17 + 112) = v57;
      *(v17 + 128) = v58;
      *(v17 + 16) = v51;
      *(v17 + 32) = v52;
      *(v17 + 48) = v53;
      *(v17 + 64) = v54;
      *v17 = v50;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v2;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1DAA81D24(void (*a1)(char *), uint64_t a2, void (*a3)(void), unint64_t a4)
{
  v104 = a4;
  v92 = a3;
  v107 = type metadata accessor for Chart.Entry(0);
  v6 = *(v107 - 8);
  v7 = MEMORY[0x1EEE9AC00](v107);
  v106 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v80 - v9;
  sub_1DAA58220(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v88 = &v80 - v12;
  v101 = sub_1DACB7F54();
  v98 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v97 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA82998(0);
  v99 = v14;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v87 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v80 - v17;
  sub_1DAA49610(0);
  v85 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v100 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Chart(0);
  v20 = MEMORY[0x1EEE9AC00](v96);
  v95 = (&v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v80 - v22;
  v23 = sub_1DACB7CC4();
  v103 = *(v23 - 8);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v94 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v105 = &v80 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v80 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v102 = &v80 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v80 - v33;
  sub_1DAA82C34(1);
  v35 = arc4random_uniform(0x64u);
  if (v35 <= 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = v35;
  }

  v109 = v36;
  v110 = v34;
  v93 = v34;
  v37 = sub_1DAA82DE4(sub_1DAA83570, v108, 0, 10);
  v38 = v37;
  v39 = *(v37 + 16);
  if (!v39)
  {

    sub_1DACAB518();
    v79 = swift_allocError();
    v92();

    v75 = *(v103 + 8);
    return (v75)(v93, v23);
  }

  v83 = v36;
  v80 = a2;
  v81 = a1;
  v40 = v6;
  v104 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v41 = v37 + v104;
  v42 = v23;
  v43 = v103;
  v44 = v103 + 16;
  v45 = *(v103 + 16);
  v45(v30, v37 + v104, v42);
  v46 = *(v43 + 32);
  v92 = (v43 + 32);
  v91 = v46;
  v46(v102, v30, v42);
  v47 = *(v40 + 72);
  v90 = v44;
  v89 = v45;
  v45(v105, v41 + v47 * (v39 - 1), v42);
  sub_1DAA5738C(&qword_1EE123A48, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  result = sub_1DACB9244();
  if (result)
  {
    v49 = v86;
    v50 = v89;
    v89(v86, v102, v42);
    v51 = v99;
    v50(v49 + *(v99 + 48), v105, v42);
    v52 = v87;
    sub_1DAA835FC(v49, v87, sub_1DAA82998);
    v82 = *(v51 + 48);
    v53 = v100;
    v91(v100, v52, v42);
    v54 = *(v103 + 8);
    v103 += 8;
    (v54)(v52 + v82, v42);
    sub_1DAA83734(v49, v52, sub_1DAA82998);
    v91(v53 + *(v85 + 36), v52 + *(v99 + 48), v42);
    v92 = v54;
    (v54)(v52, v42);
    v55 = v103;
    v56 = v88;
    sub_1DACB7F14();
    v57 = v98;
    v58 = v101;
    result = (*(v98 + 48))(v56, 1, v101);
    v99 = v42;
    if (result != 1)
    {
      v91 = (v55 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v59 = v83 + 5.0;
      v60 = v97;
      (*(v57 + 32))(v97, v56, v58);
      v61 = v94;
      sub_1DACB7CB4();
      v62 = v95;
      *v95 = v38;
      v63 = v96;
      sub_1DAA835FC(v100, &v62[*(v96 + 20)], sub_1DAA49610);
      v64 = &v62[v63[6]];
      *v64 = v59;
      *(v64 + 8) = 0;
      (*(v57 + 16))(&v62[v63[7]], v60, v101);
      v89(&v62[v63[8]], v61, v99);
      result = sub_1DACB71E4();
      v65 = 0;
      v66 = MEMORY[0x1E69E7CC0];
      v67 = MEMORY[0x1E69E7CC0];
      v68 = v105;
      do
      {
        if (v65 >= *(v38 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        sub_1DAA835FC(v41, v10, type metadata accessor for Chart.Entry);
        v69 = &v10[*(v107 + 36)];
        if ((v69[8] & 1) != 0 || *v69 <= 0.0)
        {
          result = sub_1DAA853A4(v10, type metadata accessor for Chart.Entry);
        }

        else
        {
          sub_1DAA83734(v10, v106, type metadata accessor for Chart.Entry);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v111 = v67;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DAA83020(0, *(v67 + 16) + 1, 1);
            v67 = v111;
          }

          v72 = *(v67 + 16);
          v71 = *(v67 + 24);
          if (v72 >= v71 >> 1)
          {
            sub_1DAA83020((v71 > 1), v72 + 1, 1);
            v67 = v111;
          }

          *(v67 + 16) = v72 + 1;
          result = sub_1DAA83734(v106, v67 + v104 + v72 * v47, type metadata accessor for Chart.Entry);
          v68 = v105;
        }

        ++v65;
        v41 += v47;
      }

      while (v39 != v65);

      v73 = *(v67 + 16);

      v74 = v66;
      v23 = v99;
      v75 = v92;
      (v92)(v94, v99);
      (*(v98 + 8))(v97, v101);
      sub_1DAA853A4(v100, sub_1DAA49610);
      v76 = &unk_1F5680418;
      if (!v73)
      {
        v76 = v74;
      }

      v77 = v95;
      *(v95 + *(v96 + 36)) = v76;
      v78 = v84;
      sub_1DAA83734(v77, v84, type metadata accessor for Chart);
      v81(v78);
      sub_1DAA853A4(v78, type metadata accessor for Chart);
      (v75)(v68, v23);
      (v75)(v102, v23);
      return (v75)(v93, v23);
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DAA82848()
{
  if (!qword_1EE11D018)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D018);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10StocksCore5StockVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1DAA82998(uint64_t a1)
{
  if (!qword_1EE123A50)
  {
    sub_1DACB7CC4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE123A50);
    }
  }
}

uint64_t sub_1DAA82A00(void *a1)
{
  sub_1DAA83070(0, &qword_1EE11CF38, sub_1DAA830D8, &type metadata for StockMetadataManager.CacheEntry.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v13 - v6;
  v8 = v1[7];
  v30 = v1[6];
  v31 = v8;
  v32 = *(v1 + 16);
  v9 = v1[3];
  v26 = v1[2];
  v27 = v9;
  v10 = v1[5];
  v28 = v1[4];
  v29 = v10;
  v11 = v1[1];
  v24 = *v1;
  v25 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA83848(&v24, &v15);
  sub_1DAA830D8();
  sub_1DACBA304();
  v21 = v30;
  v22 = v31;
  v23 = v32;
  v17 = v26;
  v18 = v27;
  v19 = v28;
  v20 = v29;
  v15 = v24;
  v16 = v25;
  sub_1DAA8534C();
  sub_1DACBA074();
  v13[6] = v21;
  v13[7] = v22;
  v14 = v23;
  v13[2] = v17;
  v13[3] = v18;
  v13[4] = v19;
  v13[5] = v20;
  v13[0] = v15;
  v13[1] = v16;
  sub_1DAA87074(v13, &qword_1EE1201A8, MEMORY[0x1E69E6720], sub_1DAA837F0);
  return (*(v5 + 8))(v7, v4);
}

void sub_1DAA82C34(uint64_t a1)
{
  v2 = sub_1DACB7CC4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  sub_1DACB7CB4();
  if (__OFSUB__(0, a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((-a1 * 86400) >> 64 != (-86400 * a1) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1DACB7BF4();
  sub_1DACB7B84();
  if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v9 <= -1.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v9 < 4294967300.0)
  {
    arc4random_uniform(v9);
    sub_1DACB7BF4();
    v10 = *(v3 + 8);
    v10(v6, v2);
    v10(v8, v2);
    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_1DAA82DE4(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v24 = a2;
  v7 = type metadata accessor for Chart.Entry(0);
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4;
  v10 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = MEMORY[0x1E69E7CC0];
  if (v10 == -1)
  {
    return v12;
  }

  v26 = MEMORY[0x1E69E7CC0];
  result = sub_1DAA83020(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    v15 = 0;
    v12 = v26;
    while (v14 < v11)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_20;
      }

      if (v15)
      {
        goto LABEL_26;
      }

      v17 = a3;
      v25 = a3;
      v23(&v25);
      if (v4)
      {
        goto LABEL_25;
      }

      v26 = v12;
      v18 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v18 >= v19 >> 1)
      {
        sub_1DAA83020((v19 > 1), v18 + 1, 1);
        v12 = v26;
      }

      *(v12 + 16) = v18 + 1;
      result = sub_1DAA7C62C(v9, v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, type metadata accessor for Chart.Entry);
      v15 = a3 == v22;
      if (a3 == v22)
      {
        a3 = 0;
      }

      else
      {
        ++a3;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_21;
        }
      }

      v4 = 0;
      ++v14;
      if (v16 == v11)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_24:
  __break(1u);
LABEL_25:

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void *sub_1DAA83020(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DAA8312C(a1, a2, a3, *v3, &qword_1EE11F4F8, type metadata accessor for Chart.Entry, type metadata accessor for Chart.Entry);
  *v3 = result;
  return result;
}

void sub_1DAA83070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DAA830D8()
{
  result = qword_1EE121730;
  if (!qword_1EE121730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121730);
  }

  return result;
}

void *sub_1DAA8312C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1DAA4932C(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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

int *sub_1DAA83324@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DACB7CC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a2 + v10;
  sub_1DACB7BF4();
  v12 = arc4random_uniform(0xAu);
  if (v12 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  v14 = v13;
  v15 = arc4random_uniform(0xAu);
  if (v15 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  v17 = v16;
  v18 = arc4random_uniform(0xAu);
  if (v18 <= 1)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  v20 = v19;
  v21 = arc4random_uniform(0xAu);
  if (v21 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  v23 = v11 - v14 / v17;
  v24 = v11 + v20 / v22;
  (*(v7 + 32))(a3, v9, v6);
  result = type metadata accessor for Chart.Entry(0);
  v26 = a3 + result[5];
  *v26 = v23;
  *(v26 + 8) = 0;
  v27 = a3 + result[6];
  *v27 = v24;
  *(v27 + 8) = 0;
  v28 = a3 + result[7];
  *v28 = v11 + 2.0;
  *(v28 + 8) = 0;
  v29 = a3 + result[8];
  *v29 = v11 + -2.0;
  *(v29 + 8) = 0;
  v30 = a3 + result[9];
  *v30 = v10 + 10000.0;
  *(v30 + 8) = 0;
  return result;
}

unint64_t sub_1DAA8351C()
{
  result = qword_1EE121720;
  if (!qword_1EE121720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121720);
  }

  return result;
}

uint64_t sub_1DAA83594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA835FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA83664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA836CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA83734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DAA8379C()
{
  result = qword_1EE121728;
  if (!qword_1EE121728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121728);
  }

  return result;
}

void sub_1DAA837F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Stock);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAA83848(uint64_t a1, uint64_t a2)
{
  sub_1DAA837F0(0, &qword_1EE1201A8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAA838C8()
{
  v1 = v0;
  sub_1DAA492B4(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v185 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v170 = &v161 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v169 = &v161 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v167 = &v161 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v184 = &v161 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v186 = &v161 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v181 = &v161 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v180 = &v161 - v17;
  v188 = sub_1DACB7CC4();
  v190 = *(v188 - 8);
  v18 = MEMORY[0x1EEE9AC00](v188);
  v168 = &v161 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v163 = &v161 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v162 = &v161 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v166 = &v161 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v165 = &v161 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v164 = &v161 - v28;
  v29 = sub_1DACB7984();
  v182 = *(v29 - 8);
  v183 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v179 = &v161 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1DACB79A4();
  v32 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v161 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v35 - 8);
  sub_1DAA7E2F0(0, &qword_1EE123A70, sub_1DAA852F8, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E78]);
  v37 = v36;
  v38 = *(v36 - 8);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v175 = &v161 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v176 = &v161 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v161 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v161 - v46;
  sub_1DACB7D84();
  v174 = sub_1DAA852F8();
  sub_1DACB7924();
  v196 = 2;
  sub_1DAA854C4();
  v49 = v48;
  v50 = sub_1DAA804F4(&qword_1EE11F688, sub_1DAA854C4, MEMORY[0x1E69E6ED8]);
  v173 = v49;
  v172 = v50;
  sub_1DACB7994();
  MEMORY[0x1E1275420](v34, v37);
  v51 = *(v32 + 8);
  v178 = v31;
  v177 = v32 + 8;
  v51(v34, v31);
  v52 = v51;
  v53 = *(v38 + 8);
  v189 = v38 + 8;
  v187 = v53;
  v53(v45, v37);
  v196 = 0;
  v197 = 0xE000000000000000;
  v54 = *(v1 + 8);
  v191 = v47;
  v192 = v37;
  if (v54)
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v195 = *v1;
    sub_1DAA85598();
    sub_1DACB74E4();
    MEMORY[0x1E1276F20](v193, v194);
  }

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v55 = v196;
  v56 = v197;
  v196 = 0;
  v197 = 0xE000000000000000;
  if (v1[3])
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v195 = v1[2];
    sub_1DAA85598();
    sub_1DACB74E4();
    MEMORY[0x1E1276F20](v193, v194);
  }

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v58 = v196;
  v57 = v197;
  v196 = v55;
  v197 = v56;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v58, v57);

  v59 = v196;
  v60 = v197;
  v196 = 0;
  v197 = 0xE000000000000000;
  v61 = v1[15];
  if (v61)
  {
    v193 = v1[14];
    v194 = v61;
    sub_1DACB9DD4();
  }

  else
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v62 = v196;
  v63 = v197;
  v196 = v59;
  v197 = v60;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v62, v63);

  v64 = v197;
  v171 = v196;
  v196 = 0;
  v197 = 0xE000000000000000;
  v65 = v1[4];
  LOBYTE(v62) = *(v1 + 40);
  sub_1DACB7D84();
  v66 = v175;
  sub_1DACB7924();
  v193 = 3;
  sub_1DACB7994();
  v67 = v192;
  MEMORY[0x1E1275420](v34, v192);
  v52(v34, v178);
  v68 = v187;
  v187(v66, v67);
  v69 = v179;
  sub_1DACB7974();
  v70 = v176;
  MEMORY[0x1E1275410](v69, v67);
  (*(v182 + 8))(v69, v183);
  v68(v45, v67);
  if (v62)
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
    v68(v70, v67);
  }

  else
  {
    v195 = v65;
    sub_1DAA85598();
    sub_1DACB74E4();
    MEMORY[0x1E1276F20](v193, v194);
    v68(v70, v67);
  }

  v71 = v190;
  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v72 = v196;
  v73 = v197;
  v196 = v171;
  v197 = v64;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v72, v73);

  v75 = v196;
  v74 = v197;
  v196 = 0;
  v197 = 0xE000000000000000;
  v76 = type metadata accessor for Quote(0);
  if (*(v1 + v76[16]) == 7)
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    LOBYTE(v193) = *(v1 + v76[16]);
    sub_1DACB9DD4();
  }

  v77 = v196;
  v78 = v197;
  v196 = v75;
  v197 = v74;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v77, v78);

  v182 = v196;
  v183 = v197;
  if (*(v1 + 56) == 1)
  {
    if (*(v1 + 72) == 1 && *(v1 + v76[17]) == 7)
    {
      v179 = 0xEA00000000006C69;
      v178 = 0x6E203A7265746661;
      goto LABEL_29;
    }

    v196 = 0;
    v197 = 0xE000000000000000;
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v79 = v1[6];
    v196 = 0;
    v197 = 0xE000000000000000;
    v195 = v79;
    sub_1DAA85598();
    sub_1DACB74E4();
    MEMORY[0x1E1276F20](v193, v194);
  }

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v80 = v196;
  v81 = v197;
  v196 = 0x28203A7265746661;
  v197 = 0xE800000000000000;
  MEMORY[0x1E1276F20](v80, v81);

  v83 = v196;
  v82 = v197;
  v196 = 0;
  v197 = 0xE000000000000000;
  if (v1[9])
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v195 = v1[8];
    sub_1DAA85598();
    sub_1DACB74E4();
    MEMORY[0x1E1276F20](v193, v194);
  }

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v84 = v196;
  v85 = v197;
  v196 = v83;
  v197 = v82;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v84, v85);

  v87 = v196;
  v86 = v197;
  v196 = 0;
  v197 = 0xE000000000000000;
  if (*(v1 + v76[17]) == 7)
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    LOBYTE(v193) = *(v1 + v76[17]);
    sub_1DACB9DD4();
  }

  v88 = v196;
  v89 = v197;
  v196 = v87;
  v197 = v86;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v88, v89);

  sub_1DACB71E4();
  MEMORY[0x1E1276F20](41, 0xE100000000000000);

  v178 = v196;
  v179 = v197;
LABEL_29:
  if (*(v1 + 88) == 1)
  {
    if (*(v1 + 104) == 1 && *(v1 + v76[18]) == 7)
    {
      v177 = 0xE800000000000000;
      v90 = 0x6C696E203A657270;
      v91 = &v198;
      goto LABEL_42;
    }

    v196 = 0;
    v197 = 0xE000000000000000;
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v92 = v1[10];
    v196 = 0;
    v197 = 0xE000000000000000;
    v195 = v92;
    sub_1DAA85598();
    sub_1DACB74E4();
    MEMORY[0x1E1276F20](v193, v194);
  }

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v93 = v196;
  v94 = v197;
  v196 = 0x28203A657270;
  v197 = 0xE600000000000000;
  MEMORY[0x1E1276F20](v93, v94);

  v96 = v196;
  v95 = v197;
  v196 = 0;
  v197 = 0xE000000000000000;
  if (v1[13])
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v195 = v1[12];
    sub_1DAA85598();
    sub_1DACB74E4();
    MEMORY[0x1E1276F20](v193, v194);
  }

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v97 = v196;
  v98 = v197;
  v196 = v96;
  v197 = v95;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v97, v98);

  v100 = v196;
  v99 = v197;
  v196 = 0;
  v197 = 0xE000000000000000;
  if (*(v1 + v76[18]) == 7)
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    LOBYTE(v193) = *(v1 + v76[18]);
    sub_1DACB9DD4();
  }

  v101 = v196;
  v102 = v197;
  v196 = v100;
  v197 = v99;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v101, v102);

  sub_1DACB71E4();
  MEMORY[0x1E1276F20](41, 0xE100000000000000);

  v90 = v197;
  v176 = v196;
  v91 = &v199;
LABEL_42:
  *(v91 - 32) = v90;
  v196 = 0;
  v197 = 0xE000000000000000;
  LOBYTE(v193) = *(v1 + 128);
  sub_1DACB9DD4();
  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v103 = v196;
  v104 = v197;
  v196 = 0x203A74656B72616DLL;
  v197 = 0xE900000000000028;
  MEMORY[0x1E1276F20](v103, v104);

  v106 = v196;
  v105 = v197;
  v196 = 0;
  v197 = 0xE000000000000000;
  v107 = v180;
  sub_1DAA89B98(v1 + v76[13], v180, sub_1DAA492B4);
  v108 = *(v71 + 48);
  v109 = v188;
  if (v108(v107, 1, v188) == 1)
  {
    sub_1DAA89DF0(v107, sub_1DAA492B4);
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v110 = v164;
    (*(v71 + 32))(v164, v107, v109);
    sub_1DACB9DD4();
    (*(v71 + 8))(v110, v109);
  }

  MEMORY[0x1E1276F20](3026478, 0xE300000000000000);
  v111 = v181;
  sub_1DAA89B98(v1 + v76[14], v181, sub_1DAA492B4);
  if (v108(v111, 1, v109) == 1)
  {
    sub_1DAA89DF0(v111, sub_1DAA492B4);
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v112 = v165;
    (*(v71 + 32))(v165, v111, v109);
    sub_1DACB9DD4();
    (*(v71 + 8))(v112, v109);
  }

  v113 = v109;
  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v114 = v196;
  v115 = v197;
  v196 = v106;
  v197 = v105;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v114, v115);

  v117 = v196;
  v116 = v197;
  v196 = 0;
  v197 = 0xE000000000000000;
  v118 = v186;
  sub_1DAA89B98(v1 + v76[15], v186, sub_1DAA492B4);
  if (v108(v118, 1, v113) == 1)
  {
    sub_1DAA89DF0(v118, sub_1DAA492B4);
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v119 = v190;
    v120 = v166;
    (*(v190 + 32))(v166, v118, v113);
    sub_1DACB9DD4();
    (*(v119 + 8))(v120, v113);
  }

  v186 = 0x73676E696E726165;
  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v121 = v196;
  v122 = v197;
  v196 = v117;
  v197 = v116;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v121, v122);

  v124 = v196;
  v123 = v197;
  sub_1DACB7F54();
  sub_1DAA804F4(&qword_1EE1239F0, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BE8]);
  v125 = sub_1DACBA114();
  v127 = v126;
  v196 = v124;
  v197 = v123;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v125, v127);

  sub_1DACB71E4();
  MEMORY[0x1E1276F20](41, 0xE100000000000000);

  v180 = v196;
  v181 = v197;
  v128 = v76[20];
  v129 = v184;
  sub_1DAA89B98(v1 + v128, v184, sub_1DAA492B4);
  LODWORD(v123) = v108(v129, 1, v113);
  sub_1DAA89DF0(v129, sub_1DAA492B4);
  if (v123 == 1 && (v130 = v167, sub_1DAA89B98(v1 + v76[21], v167, sub_1DAA492B4), v131 = v108(v130, 1, v113), sub_1DAA89DF0(v130, sub_1DAA492B4), v131 == 1))
  {
    v132 = 0xED00006C696E203ALL;
  }

  else
  {
    v196 = 0;
    v197 = 0xE000000000000000;
    sub_1DACB9C94();
    MEMORY[0x1E1276F20](0x73676E696E726165, 0xEA0000000000203ALL);
    v133 = v169;
    sub_1DAA89B98(v1 + v128, v169, sub_1DAA492B4);
    if (v108(v133, 1, v113) == 1)
    {
      sub_1DAA89DF0(v133, sub_1DAA492B4);
      MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
    }

    else
    {
      v134 = v190;
      v135 = v162;
      (*(v190 + 32))(v162, v133, v113);
      sub_1DACB9DD4();
      (*(v134 + 8))(v135, v113);
    }

    MEMORY[0x1E1276F20](3026478, 0xE300000000000000);
    v136 = v170;
    sub_1DAA89B98(v1 + v76[21], v170, sub_1DAA492B4);
    if (v108(v136, 1, v113) == 1)
    {
      sub_1DAA89DF0(v136, sub_1DAA492B4);
      MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
    }

    else
    {
      v137 = v190;
      v138 = v163;
      (*(v190 + 32))(v163, v136, v113);
      sub_1DACB9DD4();
      (*(v137 + 8))(v138, v113);
    }

    v132 = v197;
    v186 = v196;
  }

  v184 = v132;
  v196 = 0;
  v197 = 0xE000000000000000;
  v139 = (v1 + v76[19]);
  if (v139[1])
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v195 = *v139;
    sub_1DAA85598();
    sub_1DACB74E4();
    MEMORY[0x1E1276F20](v193, v194);
  }

  MEMORY[0x1E1276F20](2108531, 0xE300000000000000);
  v140 = v196;
  v141 = v197;
  v196 = 0x3A68736572666572;
  v197 = 0xEA00000000002820;
  MEMORY[0x1E1276F20](v140, v141);

  v143 = v196;
  v142 = v197;
  v196 = 0x20746E65696C63;
  v197 = 0xE700000000000000;
  sub_1DAA804F4(&qword_1EE123A30, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v144 = v188;
  v145 = sub_1DACBA114();
  MEMORY[0x1E1276F20](v145);

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v146 = v196;
  v147 = v197;
  v196 = v143;
  v197 = v142;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v146, v147);

  v149 = v196;
  v148 = v197;
  v196 = 0;
  v197 = 0xE000000000000000;
  MEMORY[0x1E1276F20](0x20726576726573, 0xE700000000000000);
  v150 = v185;
  sub_1DAA89B98(v1 + v76[23], v185, sub_1DAA492B4);
  if (v108(v150, 1, v144) == 1)
  {
    sub_1DAA89DF0(v150, sub_1DAA492B4);
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v151 = v190;
    v152 = v168;
    (*(v190 + 32))(v168, v150, v144);
    sub_1DACB9DD4();
    (*(v151 + 8))(v152, v144);
  }

  v154 = v191;
  v153 = v192;
  v155 = v196;
  v156 = v197;
  v196 = v149;
  v197 = v148;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v155, v156);

  sub_1DACB71E4();
  MEMORY[0x1E1276F20](41, 0xE100000000000000);

  v158 = v196;
  v157 = v197;
  v196 = 0;
  v197 = 0xE000000000000000;
  sub_1DACB9C94();

  v196 = 0x2865746F7551;
  v197 = 0xE600000000000000;
  MEMORY[0x1E1276F20](v182, v183);

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  MEMORY[0x1E1276F20](v178, v179);

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  MEMORY[0x1E1276F20](v176, v177);

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  MEMORY[0x1E1276F20](v180, v181);

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  MEMORY[0x1E1276F20](v186, v184);

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  MEMORY[0x1E1276F20](v158, v157);

  MEMORY[0x1E1276F20](41, 0xE100000000000000);
  v159 = v196;
  v187(v154, v153);
  return v159;
}

unint64_t sub_1DAA852F8()
{
  result = qword_1EE11FCF0;
  if (!qword_1EE11FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FCF0);
  }

  return result;
}

unint64_t sub_1DAA8534C()
{
  result = qword_1EE11D7A8;
  if (!qword_1EE11D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D7A8);
  }

  return result;
}

uint64_t sub_1DAA853A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA85404(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA85464(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DAA854C4()
{
  if (!qword_1EE11F680)
  {
    v0 = sub_1DACB9EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F680);
    }
  }
}

_WORD *storeEnumTagSinglePayload for YahooChartOperation.OperationError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1DAA85598()
{
  result = qword_1EE123A78;
  if (!qword_1EE123A78)
  {
    sub_1DAA7E2F0(255, &qword_1EE123A70, sub_1DAA852F8, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123A78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for YahooChartOperation.OperationError(unsigned int *a1, int a2)
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

uint64_t sub_1DAA85678(void *a1)
{
  sub_1DAA85948(0, &qword_1EE11CF08, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - v6;
  v8 = *(v1 + 16);
  v24 = *(v1 + 24);
  v25 = v8;
  v9 = *(v1 + 32);
  v22 = *(v1 + 40);
  v23 = v9;
  v10 = *(v1 + 48);
  v20 = *(v1 + 56);
  v21 = v10;
  v19 = *(v1 + 64);
  v11 = *(v1 + 80);
  v18[7] = *(v1 + 72);
  v18[8] = v11;
  v12 = *(v1 + 96);
  v18[5] = *(v1 + 88);
  v18[6] = v12;
  v13 = *(v1 + 112);
  v18[3] = *(v1 + 104);
  v18[4] = v13;
  v14 = *(v1 + 128);
  v18[1] = *(v1 + 120);
  v18[2] = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA85E4C();
  sub_1DACBA304();
  v36 = 0;
  v15 = v26;
  sub_1DACBA094();
  if (!v15)
  {
    v16 = v19;
    v35 = 1;
    sub_1DACBA094();
    v34 = 2;
    sub_1DACBA094();
    v33 = 3;
    sub_1DACBA094();
    v32 = v16;
    v31 = 4;
    sub_1DAA86768();
    sub_1DACBA0E4();
    v30 = 5;
    sub_1DACBA094();
    v29 = 6;
    sub_1DACBA094();
    v28 = 7;
    sub_1DACBA024();
    v27 = 8;
    sub_1DACBA024();
  }

  return (*(v5 + 8))(v7, v4);
}

void sub_1DAA85948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAA85E4C();
    v7 = a3(a1, &type metadata for Stock.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAA859AC(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Chart(0);
  v52 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v56 = v47 - v8;
  sub_1DAA85EA0(0);
  v51 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v50 = (v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v47 - v12);
  v14 = *a1;
  v15 = *(a2 + 16);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v49 = v15;
  v47[1] = a2;
  if (v15)
  {
    v16 = 0;
    v17 = (a2 + 40);
    v18 = MEMORY[0x1E69E7CC8];
    v48 = v14;
    do
    {
      v19 = *(v14 + 16);
      if (v16 == v19)
      {
        break;
      }

      if (v16 >= v19)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }

      v20 = *(v17 - 1);
      v21 = *v17;
      v53 = v16;
      v54 = v17;
      v22 = v51;
      v23 = v14 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      v55 = *(v52 + 72);
      v24 = v23 + v55 * v16;
      v25 = *(v51 + 48);
      *v13 = v20;
      v13[1] = v21;
      sub_1DAA85F08(v24, v13 + v25, type metadata accessor for Chart);
      v26 = v13;
      v27 = v13;
      v28 = v50;
      sub_1DAA85F08(v27, v50, sub_1DAA85EA0);
      v30 = *v28;
      v29 = v28[1];
      v31 = v28 + *(v22 + 48);
      v32 = v56;
      sub_1DAA86044(v31, v56);
      sub_1DAA85F08(v32, v7, type metadata accessor for Chart);
      sub_1DACB71E4();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v18;
      v35 = sub_1DAA4BF3C(v30, v29);
      v36 = v18[2];
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_19;
      }

      v39 = v34;
      if (v18[3] >= v38)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DAB66744();
        }
      }

      else
      {
        sub_1DAA860FC(v38, isUniquelyReferenced_nonNull_native);
        v40 = sub_1DAA4BF3C(v30, v29);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_21;
        }

        v35 = v40;
      }

      v13 = v26;
      if (v39)
      {

        v18 = v57;
        sub_1DABC9810(v7, v57[7] + v35 * v55);
        sub_1DAA864F0(v56, type metadata accessor for Chart);
        sub_1DAA864F0(v26, sub_1DAA85EA0);
      }

      else
      {
        v18 = v57;
        v57[(v35 >> 6) + 8] |= 1 << v35;
        v42 = (v18[6] + 16 * v35);
        *v42 = v30;
        v42[1] = v29;
        sub_1DAA86044(v7, v18[7] + v35 * v55);
        sub_1DAA864F0(v56, type metadata accessor for Chart);
        sub_1DAA864F0(v26, sub_1DAA85EA0);
        v43 = v18[2];
        v44 = __OFADD__(v43, 1);
        v45 = v43 + 1;
        if (v44)
        {
          goto LABEL_20;
        }

        v18[2] = v45;
      }

      v16 = v53 + 1;
      v17 = v54 + 2;
      v14 = v48;
    }

    while (v49 != v53 + 1);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC8];
  }

  v57 = v18;
  sub_1DAA57FC8(0, &qword_1EE11FE68, sub_1DAA7F50C, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8AE4();
}

unint64_t sub_1DAA85E4C()
{
  result = qword_1EE1201E8[0];
  if (!qword_1EE1201E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1201E8);
  }

  return result;
}

void sub_1DAA85EA0(uint64_t a1)
{
  if (!qword_1EE11FBD8)
  {
    type metadata accessor for Chart(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FBD8);
    }
  }
}

uint64_t sub_1DAA85F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA85F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA85FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA86044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Chart(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAA860A8()
{
  result = qword_1EE1201D8;
  if (!qword_1EE1201D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1201D8);
  }

  return result;
}

uint64_t sub_1DAA860FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Chart(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1DAA7C3AC(0, &qword_1EE11F6F0, type metadata accessor for Chart, MEMORY[0x1E69E6EC8]);
  v40 = v4;
  result = sub_1DACB9E84();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_1DAA7C55C(v28, v41, type metadata accessor for Chart);
      }

      else
      {
        sub_1DAB697A0(v28, v41, type metadata accessor for Chart);
        sub_1DACB71E4();
      }

      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_1DAA7C55C(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Chart);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_1DAA8649C()
{
  result = qword_1EE1201E0;
  if (!qword_1EE1201E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1201E0);
  }

  return result;
}

uint64_t sub_1DAA864F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA86550(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA86654(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 1701667182;
    if (a1 != 2)
    {
      v6 = 0x65676E6168637865;
    }

    if (a1)
    {
      v5 = 0x6C6F626D7973;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4E746361706D6F63;
    v2 = 0x726F74636573;
    if (a1 != 7)
    {
      v2 = 0x7972747375646E69;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 1701869940;
    if (a1 != 4)
    {
      v3 = 0x6D614E74726F6873;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1DAA86768()
{
  result = qword_1EE11D6D8[0];
  if (!qword_1EE11D6D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE11D6D8);
  }

  return result;
}

uint64_t sub_1DAA867BC(void *a1)
{
  v3 = v1;
  sub_1DAA86CA8(0, &qword_1EE11F560, sub_1DAA86DB8, &type metadata for Chart.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA86DB8();
  sub_1DACBA304();
  v14 = *v3;
  v13 = 0;
  sub_1DAA4932C(0, &qword_1EE11FAF0, type metadata accessor for Chart.Entry, MEMORY[0x1E69E62F8]);
  sub_1DAA8713C(&qword_1EE11FAE8, &qword_1EE120490, &unk_1DACC66F4, MEMORY[0x1E69E6300]);
  sub_1DACBA0E4();
  if (!v2)
  {
    v10 = type metadata accessor for Chart(0);
    LOBYTE(v14) = 1;
    sub_1DAA49610(0);
    sub_1DAA89828(&qword_1EE11FC40, &qword_1EE125288, MEMORY[0x1E6969538], MEMORY[0x1E69E5F98]);
    sub_1DACBA0E4();
    LOBYTE(v14) = 2;
    sub_1DACBA044();
    LOBYTE(v14) = 3;
    sub_1DACB7F54();
    sub_1DAA804AC(&qword_1EE123A00, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BC8]);
    sub_1DACBA0E4();
    LOBYTE(v14) = 4;
    sub_1DACB7CC4();
    sub_1DAA804AC(&qword_1EE125288, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DACBA0E4();
    v14 = *(v3 + *(v10 + 36));
    v13 = 5;
    sub_1DAA495C0(0, &qword_1EE11FAD8, &type metadata for Chart.Feature, MEMORY[0x1E69E62F8]);
    sub_1DAA898B8(&qword_1EE11FAD0, sub_1DAA89948, MEMORY[0x1E69E6300]);
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t storeEnumTagSinglePayload for Stock.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1DAA86CA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Stock.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1DAA86DB8()
{
  result = qword_1EE1204C0;
  if (!qword_1EE1204C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1204C0);
  }

  return result;
}

unint64_t sub_1DAA86E60()
{
  result = qword_1EE120148;
  if (!qword_1EE120148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120148);
  }

  return result;
}

void sub_1DAA86EB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x7865646E69;
  if (v2 != 6)
  {
    v6 = 0x75466C617574756DLL;
    v5 = 0xEA0000000000646ELL;
  }

  v7 = 0xE300000000000000;
  v8 = 6714469;
  if (v2 != 4)
  {
    v8 = 0x73657275747566;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE0079636E657272;
  v10 = 0x75636F7470797263;
  if (v2 != 2)
  {
    v10 = 0x797469757165;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x79636E6572727563;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1DAA86FB4()
{
  result = qword_1EE1204B0;
  if (!qword_1EE1204B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1204B0);
  }

  return result;
}

unint64_t sub_1DAA87020()
{
  result = qword_1EE1204B8;
  if (!qword_1EE1204B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1204B8);
  }

  return result;
}

uint64_t sub_1DAA87074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1DAA870D4@<X0>(uint64_t *a1@<X0>, os_unfair_lock_s *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  os_unfair_lock_lock(a2 + 16);
  sub_1DAA87224(v5, &a2[18]);
  os_unfair_lock_unlock(a2 + 16);
  *a3 = v5;
  return sub_1DACB71E4();
}

uint64_t sub_1DAA8713C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA4932C(255, &qword_1EE11FAF0, type metadata accessor for Chart.Entry, MEMORY[0x1E69E62F8]);
    sub_1DAA804AC(a2, type metadata accessor for Chart.Entry, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA87224(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  result = sub_1DACB71E4();
  v11 = 0;
  v77 = v9;
  v46 = v5;
  v47 = result;
  if (v8)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v13 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v14 = v13 | (v11 << 6);
        v15 = (*(v4 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = *(v4 + 56) + 136 * v14;
        v58 = *v18;
        v19 = *(v18 + 16);
        v20 = *(v18 + 32);
        v21 = *(v18 + 64);
        v61 = *(v18 + 48);
        v62 = v21;
        v59 = v19;
        v60 = v20;
        v22 = *(v18 + 80);
        v23 = *(v18 + 96);
        v24 = *(v18 + 112);
        v66 = *(v18 + 128);
        v64 = v23;
        v65 = v24;
        v63 = v22;
        v67[0] = v16;
        v67[1] = v17;
        v68 = v58;
        v69 = v59;
        v70 = v60;
        v71 = v61;
        v72 = v21;
        v73 = v22;
        v74 = v23;
        v75 = v24;
        v76 = v66;
        sub_1DACB71E4();
        sub_1DAA87740(v67, &v51);
        sub_1DAA7E934(v16, v17, &v52);
        v25 = v53;
        if (v53)
        {
          break;
        }

        result = sub_1DAA889F4(v67, sub_1DAA877A4);
        v9 = v77;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v26 = v56;
      v27 = v57;
      v29 = v54;
      v28 = v55;
      v30 = v52;
      sub_1DACB71E4();
      sub_1DAA88788(v30, v25, v29, v28, v26, v27);
      sub_1DAA87740(v67, &v51);

      v49[6] = v64;
      v49[7] = v65;
      v50 = v66;
      v49[2] = v60;
      v49[3] = v61;
      v49[4] = v62;
      v49[5] = v63;
      v49[0] = v58;
      v49[1] = v59;
      if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(v49) == 1)
      {
        break;
      }

      sub_1DAA88870(&v58);
      sub_1DAA87740(v67, &v51);

      sub_1DAA88870(&v58);
      v38 = *a2;
      if (!*(*a2 + 16))
      {
        goto LABEL_38;
      }

      sub_1DACBA284();
      sub_1DACB71E4();
      sub_1DACB9404();
      v39 = sub_1DACBA2C4();
      v40 = -1 << *(v38 + 32);
      v41 = v39 & ~v40;
      if ((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
      {
        v42 = ~v40;
        while (1)
        {
          v43 = (*(v38 + 48) + 16 * v41);
          v44 = *v43 == v30 && v25 == v43[1];
          if (v44 || (sub_1DACBA174() & 1) != 0)
          {
            break;
          }

          v41 = (v41 + 1) & v42;
          if (((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        sub_1DAB8B8F0(v30, v25);

        goto LABEL_38;
      }

LABEL_37:

LABEL_38:

      result = sub_1DAA889F4(v67, sub_1DAA877A4);
      v5 = v46;
      v4 = v47;
      v9 = v77;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v31 = *a2;
    if (*(*a2 + 16))
    {
      v45 = v3;
      sub_1DACBA284();
      sub_1DACB71E4();
      sub_1DACB9404();
      v32 = sub_1DACBA2C4();
      v33 = -1 << *(v31 + 32);
      v34 = v32 & ~v33;
      if ((*(v31 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (1)
        {
          v36 = (*(v31 + 48) + 16 * v34);
          v37 = *v36 == v30 && v25 == v36[1];
          if (v37 || (sub_1DACBA174() & 1) != 0)
          {
            break;
          }

          v34 = (v34 + 1) & v35;
          if (((*(v31 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v3 = v45;
        goto LABEL_36;
      }

LABEL_22:

      v3 = v45;
    }

    sub_1DACB71E4();
    sub_1DAA4C8A0(&v51, v30, v25);

LABEL_36:
    sub_1DAA87740(v67, &v51);
    goto LABEL_37;
  }

LABEL_7:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for TopStoriesStyleConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1DAA87740(uint64_t a1, uint64_t a2)
{
  sub_1DAA877A4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAA877A4()
{
  if (!qword_1EE11FC18)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FC18);
    }
  }
}

uint64_t getEnumTagSinglePayload for TopStoriesStyleConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1DAA87898@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1DACB94E4();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1DAA7EBD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1DAA7EBD8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1DACB94C4();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1DACB9424();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1DACB9424();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1DACB94E4();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1DAA7EBD8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1DACB94E4();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1DAA7EBD8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1DAA7EBD8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1DACB9424();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA87C58(uint64_t a1, uint64_t a2)
{
  v105 = a2;
  sub_1DAA886DC(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v92 = &v89[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DAA8880C(0);
  v104 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v115 = &v89[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DAA887D8(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v96 = &v89[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v110 = &v89[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v111 = &v89[-v12];
  v13 = type metadata accessor for Quote(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v91 = &v89[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v15);
  v95 = &v89[-v18];
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v89[-v19];
  sub_1DAA888A0(0);
  v101 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v100 = &v89[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v22);
  v113 = &v89[-v24];
  v25 = a1 + 64;
  v26 = 1 << *(a1 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a1 + 64);
  v29 = (v26 + 63) >> 6;
  v114 = v14 + 56;
  v103 = v14;
  v30 = (v14 + 48);
  v109 = a1;
  sub_1DACB71E4();
  v31 = 0;
  v94 = MEMORY[0x1E69E7CC8];
  v102 = v20;
  v106 = v29;
  v107 = a1 + 64;
  v98 = v13;
  v99 = v30;
  while (v28)
  {
    v32 = v20;
LABEL_10:
    v34 = __clz(__rbit64(v28)) | (v31 << 6);
    v35 = *(v109 + 56);
    v36 = (*(v109 + 48) + 16 * v34);
    v38 = *v36;
    v37 = v36[1];
    v39 = v103;
    v108 = *(v103 + 72);
    v40 = v101;
    v41 = v113;
    sub_1DAA88924(v35 + v108 * v34, &v113[*(v101 + 48)], type metadata accessor for Quote);
    *v41 = v38;
    v41[1] = v37;
    v42 = v100;
    sub_1DAA88924(v41, v100, sub_1DAA888A0);
    v44 = *v42;
    v43 = v42[1];
    sub_1DAA7BD70(v42 + *(v40 + 48), v32);
    v45 = v32;
    v46 = v111;
    sub_1DAA88924(v45, v111, type metadata accessor for Quote);
    v47 = *(v39 + 56);
    v48 = v98;
    v47(v46, 0, 1, v98);
    v49 = v105;
    v50 = *(v105 + 16);
    v112 = v43;
    v97 = v44;
    if (v50)
    {
      sub_1DACB71E4();
      v51 = sub_1DAA4BF3C(v44, v43);
      v53 = v110;
      if (v52)
      {
        sub_1DAA88924(*(v49 + 56) + v51 * v108, v110, type metadata accessor for Quote);
        v54 = v53;
        v55 = 0;
      }

      else
      {
        v54 = v110;
        v55 = 1;
      }

      v47(v54, v55, 1, v48);
    }

    else
    {
      v56 = v110;
      v47(v110, 1, 1, v48);
      v53 = v56;
      sub_1DACB71E4();
    }

    v28 &= v28 - 1;
    v57 = *(v104 + 48);
    v58 = v115;
    sub_1DAA88924(v46, v115, sub_1DAA887D8);
    sub_1DAA88924(v53, &v58[v57], sub_1DAA887D8);
    v59 = *v99;
    if ((*v99)(v58, 1, v48) == 1)
    {
      sub_1DAA88D78(v53, sub_1DAA887D8);
      sub_1DAA88D78(v46, sub_1DAA887D8);
      v60 = v59(&v58[v57], 1, v48);
      v20 = v102;
      if (v60 == 1)
      {
        sub_1DAA88D78(v115, sub_1DAA887D8);
        v29 = v106;
        v25 = v107;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v61 = v96;
      sub_1DAA88924(v58, v96, sub_1DAA887D8);
      if (v59(&v58[v57], 1, v48) != 1)
      {
        v62 = v115;
        v63 = v95;
        sub_1DAA7BD70(&v115[v57], v95);
        v64 = v61;
        v65 = sub_1DAA8EED0(v61, v63);
        sub_1DAA88D78(v63, type metadata accessor for Quote);
        sub_1DAA88D78(v110, sub_1DAA887D8);
        sub_1DAA88D78(v111, sub_1DAA887D8);
        sub_1DAA88D78(v64, type metadata accessor for Quote);
        sub_1DAA88D78(v62, sub_1DAA887D8);
        v20 = v102;
        v29 = v106;
        v25 = v107;
        if (v65)
        {
          goto LABEL_21;
        }

        goto LABEL_25;
      }

      sub_1DAA88D78(v53, sub_1DAA887D8);
      sub_1DAA88D78(v111, sub_1DAA887D8);
      sub_1DAA88D78(v61, type metadata accessor for Quote);
      v20 = v102;
    }

    sub_1DAA88D78(v115, sub_1DAA8880C);
    v29 = v106;
    v25 = v107;
LABEL_25:
    sub_1DAA88924(v20, v91, type metadata accessor for Quote);
    v66 = v94;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = v66;
    v67 = v97;
    v69 = sub_1DAA4BF3C(v97, v112);
    v70 = v66[2];
    v71 = (v68 & 1) == 0;
    v72 = v70 + v71;
    if (__OFADD__(v70, v71))
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      result = sub_1DACBA1F4();
      __break(1u);
      return result;
    }

    if (v66[3] >= v72)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v68 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        LODWORD(v94) = v68;
        sub_1DAA89048();
        if ((v94 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_32:

      v94 = v116;
      sub_1DAAFBCE8(v91, v116[7] + v69 * v108);
LABEL_22:
      sub_1DAA88D78(v20, type metadata accessor for Quote);
      sub_1DAA88D78(v113, sub_1DAA888A0);
    }

    else
    {
      LODWORD(v94) = v68;
      sub_1DAA7C010(v72, isUniquelyReferenced_nonNull_native);
      v73 = sub_1DAA4BF3C(v67, v112);
      if ((v94 & 1) != (v74 & 1))
      {
        goto LABEL_42;
      }

      v69 = v73;
      if (v94)
      {
        goto LABEL_32;
      }

LABEL_34:
      v75 = v116;
      v116[(v69 >> 6) + 8] |= 1 << v69;
      v76 = (v75[6] + 16 * v69);
      v77 = v112;
      *v76 = v67;
      v76[1] = v77;
      sub_1DAA7BD70(v91, v75[7] + v69 * v108);
      sub_1DAA88D78(v20, type metadata accessor for Quote);
      sub_1DAA88D78(v113, sub_1DAA888A0);
      v78 = v75[2];
      v79 = __OFADD__(v78, 1);
      v80 = v78 + 1;
      if (v79)
      {
        goto LABEL_41;
      }

      v94 = v75;
      v75[2] = v80;
    }
  }

  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
      goto LABEL_40;
    }

    if (v33 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v33);
    ++v31;
    if (v28)
    {
      v32 = v20;
      v31 = v33;
      goto LABEL_10;
    }
  }

  v81 = v94;
  if (!v94[2])
  {
  }

  v82 = sub_1DACB97B4();
  v83 = v92;
  (*(*(v82 - 8) + 56))(v92, 1, 1, v82);
  sub_1DACB9794();
  v84 = v93;
  sub_1DACB71F4();
  v85 = sub_1DACB9784();
  v86 = swift_allocObject();
  v87 = MEMORY[0x1E69E85E0];
  v86[2] = v85;
  v86[3] = v87;
  v86[4] = v84;
  v86[5] = v81;
  sub_1DAAFA828(0, 0, v83, &unk_1DACC4938, v86);
}

void sub_1DAA88668()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAA5EDC0(0, &qword_1ECBE6D18, sub_1DAAFB6A0, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1DAA88730(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1DACBA174() & 1;
  }
}

void sub_1DAA88788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_1DAA8880C(uint64_t a1)
{
  if (!qword_1EE120248)
  {
    sub_1DAA887D8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE120248);
    }
  }
}

void sub_1DAA888A0(uint64_t a1)
{
  if (!qword_1EE11FC00)
  {
    type metadata accessor for Quote(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FC00);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DAA88924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA8898C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA889F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA88A54(void *a1, __int128 *a2)
{
  v3 = a2[7];
  v31 = a2[6];
  v32 = v3;
  v33 = a2[8];
  v34 = *(a2 + 18);
  v4 = a2[3];
  v27 = a2[2];
  v28 = v4;
  v5 = a2[5];
  v29 = a2[4];
  v30 = v5;
  v6 = a2[1];
  v25 = *a2;
  v26 = v6;
  v7 = v25;
  sub_1DAA87740(&v25, v22);

  v41 = v32;
  v42 = v33;
  v43 = v34;
  v37 = v28;
  v38 = v29;
  v39 = v30;
  v40 = v31;
  v35 = v26;
  v36 = v27;
  result = get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(&v35);
  if (result != 1)
  {
    v23[6] = v41;
    v23[7] = v42;
    v24 = v43;
    v23[2] = v37;
    v23[3] = v38;
    v23[4] = v39;
    v23[5] = v40;
    v23[0] = v35;
    v23[1] = v36;
    sub_1DAA87740(&v25, v22);
    sub_1DAA88870(&v26);
    sub_1DAA7E934(v7, *(&v7 + 1), &v16);
    v9 = v17;
    if (v17)
    {
      v10 = v20;
      v11 = v21;
      v13 = v18;
      v12 = v19;
      v14 = v16;
      sub_1DACB71E4();
      sub_1DAA88788(v14, v9, v13, v12, v10, v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22[0] = *a1;
      sub_1DAA88E98(v23, v14, v9, isUniquelyReferenced_nonNull_native);

      *a1 = v22[0];
    }

    else
    {
      return sub_1DAA88870(&v26);
    }
  }

  return result;
}

uint64_t sub_1DAA88C00(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 120);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  sub_1DAA492B4(0);
  if (*(*(v9 - 8) + 84) == a2)
  {
    v10 = v9;
    v11 = *(v9 - 8);
    v12 = a3[13];
LABEL_11:
    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }

  v13 = sub_1DACB7CC4();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v10 = v13;
    v11 = *(v13 - 8);
    v12 = a3[22];
    goto LABEL_11;
  }

  v15 = sub_1DACB7F54();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[24];

  return v16(v17, a2, v15);
}