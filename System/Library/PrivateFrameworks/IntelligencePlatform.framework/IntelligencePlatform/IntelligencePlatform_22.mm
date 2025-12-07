uint64_t sub_1ABC1677C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 192) = a3;
  *(v4 + 200) = v3;
  *(v4 + 184) = a1;
  *(v4 + 208) = *a2;
  return sub_1ABA8F224(sub_1ABC167A4, v3);
}

void sub_1ABC167A4()
{
  v139 = v1;
  v2 = *(v1 + 216);
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 64);
  v6 = (63 - v4) >> 6;
  isUniquelyReferenced_nonNull_native = 0x80000001ABF81E70;

  v8 = 0;
  while (2)
  {
    if (v5)
    {
LABEL_9:
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      switch(*(*(v2 + 56) + (v10 | (v8 << 6))))
      {
        case 0x12:
          goto LABEL_130;
        default:
          v0 = sub_1ABF25054();

          if ((v0 & 1) == 0)
          {
            continue;
          }

          v11 = *(v1 + 216);
          break;
      }
    }

    else
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v6)
        {
          v12 = 0;
          v11 = *(v1 + 216);
          goto LABEL_14;
        }

        v5 = *(v2 + 64 + 8 * v9);
        ++v8;
        if (v5)
        {
          v8 = v9;
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      v11 = *(v1 + 216);
    }

    break;
  }

  v12 = 1;
LABEL_14:

  *(v1 + 290) = v12;
  v13 = sub_1ABC13030(*(v1 + 208));
  v14 = 0;
  v123 = 0x80000001ABF86420;
  while (2)
  {
    *(v1 + 232) = v14;
    *(v1 + 240) = v13;
    *(v1 + 224) = v13;
    v15 = *(&unk_1F20918F0 + v14 + 32);
    if (v13[2])
    {

      sub_1ABAAFEB4();
      v11 = v16;

      if (v11)
      {
        goto LABEL_91;
      }
    }

    v17 = 0.0;
    switch(v15)
    {
      case 3:
        v0 = sub_1ABA8C064();
        v18 = [v11 featureValueForName_];

        if (v18)
        {
          [v18 doubleValue];
          v20 = v19;

          v21 = v20 <= 0.0;
          v17 = 0.96;
          if (!v21)
          {
            goto LABEL_82;
          }
        }

        sub_1ABC1289C(*(v1 + 208), (v1 + 288));
        PersonEntityTagType.rawValue.getter();
        sub_1ABA840F4();
        v23 = v23 && v22 == 0xE600000000000000;
        if (v23)
        {
          goto LABEL_101;
        }

        sub_1ABA907BC();
        isUniquelyReferenced_nonNull_native = v24;
        sub_1ABF25054();
        sub_1ABAA4578();
        v17 = 1.0;
        if ((v0 & 1) == 0)
        {
          sub_1ABC12A7C((v1 + 289));
          if (PersonEntityTagType.rawValue.getter() == isUniquelyReferenced_nonNull_native && v25 == 0xE600000000000000)
          {
          }

          else
          {
            sub_1ABA907BC();
            sub_1ABF25054();
            sub_1ABAA4578();
            if (v0)
            {
              v17 = 1.0;
            }

            else
            {
              v17 = 0.0;
            }
          }
        }

        goto LABEL_82;
      case 4:
        sub_1ABAA179C();
        *(v1 + 16) = v113 + 20;
        *(v1 + 24) = v114;
        *(v1 + 32) = v113;
        *(v1 + 40) = v123;
        sub_1ABA7D708();
        *(v1 + 48) = v115;
        *(v1 + 56) = v116;
        sub_1ABA96C98(&dword_1ABF4B378);

        swift_unknownObjectRetain();
        swift_task_alloc();
        sub_1ABA8E8BC();
        *(v1 + 264) = v117;
        *v117 = v118;
        sub_1ABA7C164(v117);
        goto LABEL_125;
      case 5:
        v55 = sub_1ABA838AC();
        sub_1ABC10A90(v55, v56);
        if (v0)
        {
          goto LABEL_119;
        }

        goto LABEL_81;
      case 6:
        v59 = sub_1ABA838AC();
        sub_1ABC10EDC(v59, v60);
        if (v0)
        {
          goto LABEL_119;
        }

        goto LABEL_81;
      case 7:
        v45 = sub_1ABA838AC();
        sub_1ABC10EFC(v45, v46);
        if (v0)
        {
          goto LABEL_119;
        }

        goto LABEL_81;
      case 8:
        v79 = sub_1ABA838AC();
        sub_1ABC10F1C(v79, v80, v81, v82, v83, v84, v85, v86, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
        if (v0)
        {
          goto LABEL_119;
        }

        goto LABEL_81;
      case 9:
        sub_1ABC1289C(*(v1 + 208), &v124 + 6);
        v0 = BYTE6(v124);
        *(v1 + 284) = BYTE6(v124);
        *(v1 + 285) = 9;
        PersonEntityTagType.rawValue.getter();
        sub_1ABA8BC34();
        PersonEntityTagType.rawValue.getter();
        sub_1ABAA22B0();
        if (v23 && isUniquelyReferenced_nonNull_native == v51)
        {
          goto LABEL_65;
        }

        sub_1ABAA4554(v50);
        sub_1ABA9607C();

        v17 = 1.0;
        if (v5)
        {
          goto LABEL_82;
        }

        v53 = sub_1ABE8B4D4(&unk_1F2091928);
        isUniquelyReferenced_nonNull_native = sub_1ABAB10D8(v53);

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_64;
        }

        v54 = sub_1ABE8B4D4(&unk_1F2091DB8);
        sub_1ABAB10D8(v54);
        sub_1ABAA4578();
        if (v0)
        {
          goto LABEL_64;
        }

        sub_1ABC12A7C(&v124 + 7);
        v0 = HIBYTE(v124);
        *(v1 + 286) = HIBYTE(v124);
        *(v1 + 287) = 9;
        PersonEntityTagType.rawValue.getter();
        sub_1ABA8BC34();
        goto LABEL_107;
      case 10:
        sub_1ABC1289C(*(v1 + 208), &v124 + 4);
        v0 = BYTE4(v124);
        *(v1 + 280) = BYTE4(v124);
        *(v1 + 281) = 10;
        PersonEntityTagType.rawValue.getter();
        sub_1ABA8BC34();
        PersonEntityTagType.rawValue.getter();
        sub_1ABAA22B0();
        if (v23 && isUniquelyReferenced_nonNull_native == v28)
        {
LABEL_65:

LABEL_101:

          v17 = 1.0;
        }

        else
        {
          sub_1ABAA4554(v27);
          sub_1ABA9607C();

          v17 = 1.0;
          if ((v5 & 1) == 0)
          {
            v30 = sub_1ABE8B4D4(&unk_1F2091928);
            isUniquelyReferenced_nonNull_native = sub_1ABAB10D8(v30);

            if (isUniquelyReferenced_nonNull_native & 1) != 0 || (v31 = sub_1ABE8B4D4(&unk_1F2091DE0), sub_1ABAB10D8(v31), sub_1ABAA4578(), (v0))
            {
LABEL_64:
              v17 = 0.0;
            }

            else
            {
              sub_1ABC12A7C(&v124 + 5);
              v0 = BYTE5(v124);
              *(v1 + 282) = BYTE5(v124);
              *(v1 + 283) = 10;
              PersonEntityTagType.rawValue.getter();
              sub_1ABA8BC34();
LABEL_107:
              PersonEntityTagType.rawValue.getter();
              sub_1ABAA22B0();
              if (v23 && isUniquelyReferenced_nonNull_native == v97)
              {

                v17 = 0.96;
              }

              else
              {
                sub_1ABAA4554(v96);
                sub_1ABA9607C();

                v17 = 0.96;
                if ((v5 & 1) == 0)
                {
                  v17 = 0.0;
                  if (sub_1ABAB0550(v0, 1))
                  {
                    v99 = COERCE_DOUBLE(sub_1ABAD58F0(8, v13));
                    if (v100)
                    {
                      goto LABEL_132;
                    }

                    v17 = v99 * 0.5;
                  }
                }
              }
            }
          }
        }

LABEL_82:
        LOBYTE(v5) = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 144) = v13;
        sub_1ABAAFEB4();
        sub_1ABA7AD10();
        if (__OFADD__(v89, v90))
        {
          goto LABEL_129;
        }

        sub_1ABAB54C4();
        sub_1ABAD219C(&qword_1EB4D52E0, qword_1ABF49790);
        v11 = v1 + 144;
        if (sub_1ABF24C64())
        {
          v11 = *(v1 + 144);
          sub_1ABAAFEB4();
          sub_1ABAA3404();
          if (!v23)
          {
            goto LABEL_116;
          }

          v0 = v91;
        }

        v13 = *(v1 + 144);
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_88;
        }

        sub_1ABA7E6B4(&v13[v0 >> 6]);
        *(v13[6] + v0) = v15;
        sub_1ABA90CE0();
        if (!v44)
        {
          goto LABEL_90;
        }

        __break(1u);
LABEL_132:
        v121 = sub_1ABC136C0();
        sub_1ABA7BD00(&type metadata for EntityTaggingHeuristicModel.ETHeuristicError, v121);
        swift_willThrow();
LABEL_119:

        sub_1ABA7BBE0();
        goto LABEL_120;
      case 15:
        v61 = sub_1ABA838AC();
        sub_1ABC11240(v61, v62, v63, v64, v65, v66, v67, v68, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
        if (v0)
        {
          goto LABEL_119;
        }

        goto LABEL_81;
      case 16:
        v87 = sub_1ABA838AC();
        sub_1ABC1172C(v87, v88);
        if (!v0)
        {
          goto LABEL_81;
        }

        goto LABEL_119;
      case 17:
        v48 = sub_1ABA838AC();
        sub_1ABC118B8(v48, v49);
        if (v0)
        {
          goto LABEL_119;
        }

        goto LABEL_81;
      case 18:
        if (*(v1 + 290) == 1)
        {
          if (!v13[2] || (sub_1ABAAFEB4(), (v32 & 1) == 0))
          {
            swift_isUniquelyReferenced_nonNull_native();
            *(v1 + 160) = v13;
            sub_1ABAAFEB4();
            sub_1ABA7AD10();
            if (__OFADD__(v92, v93))
            {
              goto LABEL_134;
            }

            sub_1ABAB54C4();
            sub_1ABAD219C(&qword_1EB4D52E0, qword_1ABF49790);
            v11 = v1 + 160;
            if (sub_1ABF24C64())
            {
              v11 = *(v1 + 160);
              sub_1ABAAFEB4();
              sub_1ABAA3404();
              if (!v23)
              {
LABEL_116:
                sub_1ABAA25DC();

                sub_1ABF25104();
                return;
              }

              v0 = v94;
            }

            v13 = *(v1 + 160);
            if (isUniquelyReferenced_nonNull_native)
            {
              *(v13[7] + 8 * v0) = 0;
              goto LABEL_91;
            }

            sub_1ABA7E6B4(&v13[v0 >> 6]);
            *(v13[6] + v0) = 18;
            *(v13[7] + 8 * v0) = 0;
            v95 = v13[2];
            v44 = __OFADD__(v95, 1);
            v43 = v95 + 1;
            if (v44)
            {
              goto LABEL_136;
            }

            goto LABEL_90;
          }
        }

        v33 = sub_1ABA838AC();
        sub_1ABC119E8(v33, v34);
        if (v0)
        {
          goto LABEL_119;
        }

        v17 = v35;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v1 + 152) = v13;
        sub_1ABAAFEB4();
        sub_1ABA7AD10();
        if (!__OFADD__(v38, v39))
        {
          v0 = v36;
          v40 = v37;
          sub_1ABAD219C(&qword_1EB4D52E0, qword_1ABF49790);
          v11 = v1 + 152;
          if (sub_1ABF24C64())
          {
            v11 = *(v1 + 152);
            v41 = sub_1ABAAFEB4();
            if ((v40 & 1) != (v42 & 1))
            {
              goto LABEL_116;
            }

            v0 = v41;
          }

          v13 = *(v1 + 152);
          if ((v40 & 1) == 0)
          {
            sub_1ABA7E6B4(&v13[v0 >> 6]);
            *(v13[6] + v0) = 18;
            sub_1ABA90CE0();
            if (v44)
            {
              goto LABEL_135;
            }

LABEL_90:
            v13[2] = v43;
            goto LABEL_91;
          }

LABEL_88:
          *(v13[7] + 8 * v0) = v17;
LABEL_91:
          sub_1ABAA1F3C();
          if (v23)
          {
            v101 = *(v1 + 184);
            sub_1ABAB1A04(v13);
            v102 = sub_1ABBFA50C();
            v103 = static EntityTaggingModelUtility.normalizeEntityTagsDictionary(input:)(v102);

            *v101 = v103;
            *(v101 + 8) = v103;

            *(v101 + 16) = 0;
            *(v101 + 24) = 1;
            sub_1ABA80A84();
LABEL_120:
            sub_1ABAA25DC();

            __asm { BRAA            X1, X16 }
          }

          continue;
        }

        __break(1u);
LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
        return;
      case 21:
        v57 = sub_1ABA838AC();
        sub_1ABC11E20(v57, v58);
        if (v0)
        {
          goto LABEL_119;
        }

        goto LABEL_81;
      case 22:
        sub_1ABAA179C();
        *(v1 + 64) = v107 + 30;
        *(v1 + 72) = v108;
        *(v1 + 80) = v107;
        *(v1 + 88) = v123;
        sub_1ABA7D708();
        *(v1 + 96) = v109;
        *(v1 + 104) = v110;
        sub_1ABA96C98(&dword_1ABF4B378);

        swift_unknownObjectRetain();
        swift_task_alloc();
        sub_1ABA8E8BC();
        *(v1 + 248) = v111;
        *v111 = v112;
        sub_1ABA934D0(v111);
LABEL_125:
        sub_1ABAA25DC();

        __asm { BR              X6 }

        return;
      case 23:
        v69 = sub_1ABA838AC();
        sub_1ABC12400(v69, v70, v71, v72, v73, v74, v75, v76, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
        if (v0)
        {
          goto LABEL_119;
        }

        goto LABEL_81;
      case 26:
        v77 = sub_1ABA838AC();
        sub_1ABC12778(v77, v78);
        if (v0)
        {
          goto LABEL_119;
        }

LABEL_81:
        v17 = v47;
        goto LABEL_82;
      default:
        goto LABEL_82;
    }
  }
}

uint64_t sub_1ABC173B0()
{
  sub_1ABA8C008();
  v2 = *v1;
  sub_1ABA7BBC0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 256) = v0;

  sub_1ABC1AFCC(v2 + 64);
  swift_unknownObjectRelease();

  sub_1ABAB5CD8();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC17E20()
{
  sub_1ABA8C008();
  v2 = *v1;
  sub_1ABA7BBC0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 272) = v0;

  sub_1ABC1AFCC(v2 + 16);
  swift_unknownObjectRelease();

  sub_1ABAB5CD8();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC1888C()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABC188E8()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABC18944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 57) = a6;
  *(v7 + 112) = a5;
  *(v7 + 120) = v6;
  *(v7 + 96) = a3;
  *(v7 + 104) = a4;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1ABC18970, 0, 0);
}

uint64_t sub_1ABC18970()
{
  sub_1ABA906D0();
  v1 = *(v0 + 57);
  sub_1ABD3F148();
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = (v2 + 24);
  }

  else
  {
    v3 = (v0 + 112);
    v2 = *(v0 + 120);
  }

  v4 = *v3;
  v6 = *(v0 + 88);
  v5 = *(v0 + 96);
  v7 = *(v2 + 16);
  *(v0 + 128) = *(v7 + 16);
  swift_unownedRetainStrong();
  *(v0 + 160) = 0;
  v8 = *(v7 + 24);
  *(v0 + 16) = v6;
  *(v0 + 136) = v8;
  *(v0 + 24) = v5;
  *(v0 + 32) = 0xD00000000000001DLL;
  *(v0 + 40) = 0x80000001ABF8C140;
  *(v0 + 48) = v4;
  *(v0 + 56) = 0;
  sub_1ABA96C98(&dword_1ABF4B380);
  swift_unknownObjectRetain();

  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 144) = v9;
  *v9 = v10;
  v9[1] = sub_1ABC18ABC;
  v11 = *(v0 + 104);

  return v13(v0 + 64, v11, v0 + 16, v8);
}

uint64_t sub_1ABC18ABC()
{
  sub_1ABA8C008();
  sub_1ABA7BC10();
  v2 = *v1;
  sub_1ABA7BBC0();
  *v3 = v2;
  *(v4 + 152) = v0;

  swift_unknownObjectRelease();

  if (v0)
  {
    v5 = sub_1ABC18C68;
  }

  else
  {
    v5 = sub_1ABC18C54;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1ABC18C54()
{
  v2 = v0[9];
  v1 = v0[10];
  *v1 = v0[8];
  v1[1] = v2;
  return sub_1ABAA57F0();
}

uint64_t sub_1ABC18C8C()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1ABC18CBC(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1ABA7FDA0;

  return sub_1ABC1677C(a1, a2, a3);
}

uint64_t sub_1ABC18D70()
{
  sub_1ABA7BC04();
  v2 = v1;
  type metadata accessor for EntityTaggingHeuristicsInferenceServiceDefinition.Runner();
  swift_allocObject();

  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1ABB9916C;

  return sub_1ABC16688(v2);
}

uint64_t sub_1ABC18E4C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1ABB273DC;

  return sub_1ABC18D70();
}

uint64_t sub_1ABC18F08(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001ABF8C0B0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABC18FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC18F08(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABC18FD4(uint64_t a1)
{
  v2 = sub_1ABC191E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC19010(uint64_t a1)
{
  v2 = sub_1ABC191E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityTaggingHeuristicsInferenceServiceRunEvent.encode(to:)(void *a1)
{
  v3 = sub_1ABAD219C(&qword_1EB4D5748, &unk_1ABF4B030);
  sub_1ABA7BB64();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *v1;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC191E0();

  sub_1ABF252E4();
  v11[1] = v9;
  sub_1ABAD219C(&qword_1EB4D3E68, &qword_1ABF40BF8);
  sub_1ABB99B30(&qword_1EB4D3E70, MEMORY[0x1E69E6160], MEMORY[0x1E69E63C0], MEMORY[0x1E69E5E38]);
  sub_1ABF24F84();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1ABC191E0()
{
  result = qword_1EB4D5750;
  if (!qword_1EB4D5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5750);
  }

  return result;
}

uint64_t EntityTaggingHeuristicsInferenceServiceRunEvent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D5758, &qword_1ABF4B040);
  sub_1ABA7BB64();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v12 - v9;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC191E0();
  sub_1ABF252C4();
  if (!v2)
  {
    sub_1ABAD219C(&qword_1EB4D3E68, &qword_1ABF40BF8);
    sub_1ABB99B30(&qword_1EB4D3E80, MEMORY[0x1E69E6190], MEMORY[0x1E69E63E8], MEMORY[0x1E69E5E58]);
    sub_1ABF24E64();
    (*(v7 + 8))(v10, v5);
    *a2 = v12[1];
  }

  return sub_1ABA84B54(a1);
}

unint64_t sub_1ABC19420()
{
  result = qword_1EB4CE9A8;
  if (!qword_1EB4CE9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9A8);
  }

  return result;
}

unint64_t sub_1ABC19474()
{
  result = qword_1EB4CE9B0;
  if (!qword_1EB4CE9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingHeuristicsInferenceServiceRunEvent.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABC195E4()
{
  result = qword_1EB4D5760;
  if (!qword_1EB4D5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5760);
  }

  return result;
}

unint64_t sub_1ABC1963C()
{
  result = qword_1EB4CE940;
  if (!qword_1EB4CE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE940);
  }

  return result;
}

unint64_t sub_1ABC19694()
{
  result = qword_1EB4CEBD8;
  if (!qword_1EB4CEBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEBD8);
  }

  return result;
}

unint64_t sub_1ABC196EC()
{
  result = qword_1EB4CE938;
  if (!qword_1EB4CE938)
  {
    type metadata accessor for EntityTaggingHeuristicsInferenceServiceDefinition.Runner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE938);
  }

  return result;
}

uint64_t sub_1ABC1976C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC197A8()
{
  result = qword_1EB4CE948;
  if (!qword_1EB4CE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE948);
  }

  return result;
}

unint64_t sub_1ABC197FC()
{
  result = qword_1EB4CE950;
  if (!qword_1EB4CE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE950);
  }

  return result;
}

unint64_t sub_1ABC19894(uint64_t a1)
{
  result = sub_1ABC196EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC198C0()
{
  result = qword_1EB4D5770;
  if (!qword_1EB4D5770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5770);
  }

  return result;
}

unint64_t sub_1ABC19918()
{
  result = qword_1EB4D5778;
  if (!qword_1EB4D5778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5778);
  }

  return result;
}

uint64_t sub_1ABC1996C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19[0] = a1;
  v4 = a1;
  sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  result = swift_dynamicCast();
  if (result)
  {
    v6 = v15 & 1;
LABEL_5:
    *a2 = v6;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    return result;
  }

  v19[0] = a1;
  v7 = a1;
  result = swift_dynamicCast();
  if (result)
  {
    v6 = 256;
    goto LABEL_5;
  }

  v18 = a1;
  v8 = a1;
  sub_1ABAD219C(&qword_1EB4D5790, &unk_1ABF4B3A0);
  if (swift_dynamicCast())
  {
    sub_1ABA946C0(&v15, v19);
    v9 = v20;
    v10 = v21;
    sub_1ABA93E20(v19, v20);
    (*(v10 + 32))(&v15, v9, v10);
    v11 = v17;
    v12 = v16;
    *a2 = v15;
    *(a2 + 16) = v12;
    *(a2 + 32) = v11;
    *(a2 + 33) = 1;
    return sub_1ABA84B54(v19);
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    sub_1ABC1B020(&v15);
    v19[0] = a1;
    v13 = a1;
    result = sub_1ABF23C94();
    *a2 = result;
    *(a2 + 8) = v14;
    *(a2 + 33) = 2;
  }

  return result;
}

uint64_t sub_1ABC19B04(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v8 = v4;
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  *(v8 + 16) = qword_1EB4CF2B8;
  v10 = swift_task_alloc();
  *(v8 + 24) = v10;
  *v10 = v8;
  v10[1] = sub_1ABC19C04;

  return sub_1ABC19DF8(a1, a2, a3, a4);
}

uint64_t sub_1ABC19C04()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 32) = v0;

  if (!v0)
  {
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v7 = *(v3 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1ABC19D1C, v7, 0);
}

uint64_t sub_1ABC19D1C()
{
  sub_1ABA8C008();
  v1 = *(v0 + 32);
  v2 = sub_1ABAD219C(&qword_1EB4D5780, &unk_1ABF4B390);
  v3 = sub_1ABAB47C4(&qword_1EB4D5788, &qword_1EB4D5780, &unk_1ABF4B390, &protocol conformance descriptor for InferenceMessageResponseError<A>);
  sub_1ABA7BD00(v2, v3);
  sub_1ABC1996C(v1, v4);
  swift_willThrow();

  sub_1ABA7BBE0();

  return v5();
}

uint64_t sub_1ABC19DF8(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = v4;
  *(v5 + 112) = a1;
  *(v5 + 120) = a2;
  v6 = a3[1];
  *(v5 + 64) = *a3;
  *(v5 + 80) = v6;
  *(v5 + 89) = *(a3 + 25);
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  *(v5 + 144) = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABC19EA8);
}

uint64_t sub_1ABC19EA8()
{
  v16 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);
  v3 = v2[1];
  v14[0] = *v2;
  v14[1] = v3;
  v14[2] = v2[2];
  v15 = v1;
  sub_1ABD34F48(v14, &v15);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 120);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  v7[2] = v4;
  v7[3] = v0 + 64;
  v7[4] = v6;
  v7[5] = v5;
  *(v0 + 41) = *(v0 + 89);
  v8 = *(v0 + 80);
  *(v0 + 16) = *(v0 + 64);
  *(v0 + 32) = v8;
  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 160) = v9;
  *v9 = v10;
  v9[1] = sub_1ABC1A004;
  v11 = *(v0 + 112);
  v12 = *(v0 + 120);

  return sub_1ABC1A8F4(v11, v12, (v0 + 16), &unk_1ABF4B3B8, v7);
}

uint64_t sub_1ABC1A004()
{
  sub_1ABA7BC04();
  sub_1ABA7D1C8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 168) = v0;

  sub_1ABAB5CD8();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC1A160(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 232) = a5;
  *(v6 + 240) = a6;
  *(v6 + 216) = a2;
  *(v6 + 224) = a3;
  *(v6 + 208) = a1;
  v7 = a4[1];
  *(v6 + 16) = *a4;
  *(v6 + 32) = v7;
  *(v6 + 41) = *(a4 + 25);
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  *(v6 + 248) = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABC1A214);
}

uint64_t sub_1ABC1A214()
{
  v16 = v0;
  v1 = *(v0 + 232);
  v2 = v1[1];
  v15[0] = *v1;
  v15[1] = v2;
  v15[2] = v1[2];
  sub_1ABD34620(v15, v0 + 64);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  *(v0 + 128) = sub_1ABAD219C(&qword_1EB4D57A0, &qword_1ABF4B3D0);
  *(v0 + 136) = &off_1F2081628;
  v5 = swift_allocObject();
  *(v0 + 104) = v5;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  *(v0 + 256) = v8;
  *(v0 + 264) = v9;
  v10 = *(v0 + 48);
  *(v0 + 272) = v10;
  v11 = *(v0 + 56);
  *(v0 + 57) = v11;
  *(v5 + 16) = v6;
  *(v5 + 24) = v7;
  *(v5 + 32) = v8;
  *(v5 + 40) = v9;
  *(v5 + 48) = v10;
  *(v5 + 56) = v11;
  *(v0 + 176) = v4;
  *(v0 + 184) = v3;

  swift_unknownObjectRetain();

  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 280) = v12;
  *v12 = v13;
  v12[1] = sub_1ABC1A3E0;

  return sub_1ABD34FC0();
}

uint64_t sub_1ABC1A3E0()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  v3[36] = v0;

  if (v0)
  {
    v7 = v3[31];
    v8 = sub_1ABC1A770;
  }

  else
  {
    v9 = v3[31];
    sub_1ABA84B54(v3 + 13);
    v8 = sub_1ABC1A4F0;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

void sub_1ABC1A4F0()
{
  sub_1ABA906D0();
  v1 = v0[30];
  v2 = v0[28];
  v3 = v0[12];
  sub_1ABA93E20(v0 + 8, v0[11]);
  v0[24] = v2;
  v0[25] = v1;
  v6 = *(v3 + 48) + **(v3 + 48);
  v4 = swift_task_alloc();
  v0[37] = v4;
  sub_1ABC1B410();
  *v4 = v0;
  v4[1] = sub_1ABC1A670;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1ABC1A670()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D1C8();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 304) = v0;

  v7 = *(v3 + 248);
  if (v0)
  {
    v8 = sub_1ABC1A884;
  }

  else
  {
    v8 = sub_1ABC1A7E8;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1ABC1A770()
{
  sub_1ABA7BBF8();

  sub_1ABA84B54((v0 + 104));
  sub_1ABA84B54((v0 + 64));
  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABC1A7E8()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 216);
  v2 = *(v0 + 208);

  v3 = *(v0 + 152);
  *v2 = *(v0 + 144);
  v2[1] = v3;
  v4 = *(v0 + 168);
  *v1 = *(v0 + 160);
  *(v1 + 8) = v4;
  sub_1ABA84B54((v0 + 64));
  sub_1ABA80A84();

  return v5();
}

uint64_t sub_1ABC1A884()
{
  sub_1ABA7BBF8();

  sub_1ABA84B54((v0 + 64));
  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABC1A8F4(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 136) = a5;
  *(v6 + 144) = v5;
  *(v6 + 120) = a2;
  *(v6 + 128) = a4;
  *(v6 + 112) = a1;
  v8 = sub_1ABF21F04();
  *(v6 + 152) = v8;
  *(v6 + 160) = *(v8 - 8);
  *(v6 + 168) = swift_task_alloc();
  v9 = a3[1];
  *(v6 + 16) = *a3;
  *(v6 + 32) = v9;
  *(v6 + 41) = *(a3 + 25);
  if (qword_1EB4CFFC0 != -1)
  {
    swift_once();
  }

  *(v6 + 176) = qword_1EB4CF2B8;

  return MEMORY[0x1EEE6DFA0](sub_1ABC1AA08);
}

uint64_t sub_1ABC1AA08()
{
  sub_1ABA906D0();
  v1 = v0[21];
  v2 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  sub_1ABF21EF4();
  v5 = *(v2 + 168);
  v0[23] = v5;
  v6 = swift_task_alloc();
  v6[2] = v1;
  v6[3] = v4;
  v6[4] = v0 + 2;
  sub_1ABEA58D4(sub_1ABC1B35C, v6, v5);

  v10 = (v3 + *v3);
  swift_task_alloc();
  sub_1ABA8E8BC();
  v0[24] = v7;
  *v7 = v8;
  v7[1] = sub_1ABC1AB6C;

  return (v10)(v0 + 10, v0 + 12);
}

uint64_t sub_1ABC1AB6C()
{
  sub_1ABA7BC04();
  v2 = *v1;
  sub_1ABA7D1C8();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 200) = v0;

  v5 = *(v2 + 176);
  if (v0)
  {
    v6 = sub_1ABC1ADB8;
  }

  else
  {
    v6 = sub_1ABC1AC8C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1ABC1AC8C()
{
  v13 = *(v0 + 184);
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v14 = *(v0 + 152);
  v4 = *(v0 + 112);
  v3 = *(v0 + 120);
  v5 = *(v0 + 104);
  v6 = *(v0 + 105);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  *(v0 + 64) = *(v0 + 80);
  *(v0 + 72) = v7;
  v9 = swift_task_alloc();
  *(v9 + 16) = v1;
  *(v9 + 24) = v3;
  *(v9 + 32) = v0 + 16;
  *(v9 + 40) = v0 + 64;
  *(v9 + 48) = v8;
  *(v9 + 56) = v5;
  *(v9 + 57) = v6;
  sub_1ABEA58D4(sub_1ABC1B3D8, v9, v13);

  v10 = *(v0 + 72);
  *v4 = *(v0 + 64);
  v4[1] = v10;
  (*(v2 + 8))(v1, v14);

  sub_1ABA80A84();

  return v11();
}

uint64_t sub_1ABC1ADB8()
{
  sub_1ABA7BBF8();
  (*(v0[20] + 8))(v0[21], v0[19]);

  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABC1AE30(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, __int128 *a5)
{
  v8 = a5[1];
  v15 = *a5;
  v16[0] = v8;
  *(v16 + 9) = *(a5 + 25);
  ObjectType = swift_getObjectType();
  v10 = a4[1];
  v14[0] = *a4;
  v14[1] = v10;
  v14[2] = a4[2];
  v11 = *(a2 + 8);
  v12 = sub_1ABC1B410();
  return v11(a3, v14, &type metadata for EntityTaggingMLModelInferenceInterface, &v15, &type metadata for EntityTaggingMLModelInferenceInterface, v12, ObjectType, a2);
}

uint64_t sub_1ABC1AEEC(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, __int128 *a5, uint64_t a6, uint64_t a7, __int16 a8, double a9)
{
  v14 = a5[1];
  v24 = *a5;
  v25[0] = v14;
  *(v25 + 9) = *(a5 + 25);
  *v23 = a9;
  v23[1] = a6;
  ObjectType = swift_getObjectType();
  v16 = a4[1];
  v22[0] = *a4;
  v22[1] = v16;
  v22[2] = a4[2];
  v20 = a7;
  v21 = a8 & 0x1FF;
  v17 = *(a2 + 24);
  v18 = sub_1ABC1B410();
  return v17(a3, v22, &type metadata for EntityTaggingMLModelInferenceInterface, &v24, v23, &v20, &type metadata for EntityTaggingMLModelInferenceInterface, v18, ObjectType, a2);
}

uint64_t sub_1ABC1B020(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D5798, &unk_1ABF598E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABC1B088(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5, uint64_t a6)
{
  v12 = a4[1];
  *(v6 + 16) = *a4;
  *(v6 + 32) = v12;
  *(v6 + 41) = *(a4 + 25);
  v13 = swift_task_alloc();
  *(v6 + 64) = v13;
  *v13 = v6;
  v13[1] = sub_1ABC1B164;

  return sub_1ABC1A160(a1, a2, a3, (v6 + 16), a5, a6);
}

uint64_t sub_1ABC1B164()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  v1 = *v0;
  sub_1ABA7BBC0();
  *v2 = v1;

  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABC1B244()
{
  sub_1ABA906D0();
  swift_task_alloc();
  sub_1ABA8E8BC();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1ABA7FDA0;
  sub_1ABAA19C4();

  return v3();
}

uint64_t sub_1ABC1B314(uint64_t *a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a4[1];
  v10 = *a4;
  v11[0] = v8;
  *(v11 + 9) = *(a4 + 25);
  return sub_1ABC1AE30(v7, v6, a2, a3, &v10);
}

uint64_t sub_1ABC1B37C(uint64_t *a1, uint64_t a2, _OWORD *a3, __int128 *a4, uint64_t a5, uint64_t a6, __int16 a7)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a4[1];
  v13 = *a4;
  v14[0] = v11;
  *(v14 + 9) = *(a4 + 25);
  return sub_1ABC1AEEC(v10, v9, a2, a3, &v13, *(a5 + 8), a6, a7 & 0x1FF, *a5);
}

unint64_t sub_1ABC1B410()
{
  result = qword_1EB4CEA28;
  if (!qword_1EB4CEA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA28);
  }

  return result;
}

unint64_t sub_1ABC1B464()
{
  result = qword_1EB4D57B0;
  if (!qword_1EB4D57B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D57B0);
  }

  return result;
}

unint64_t sub_1ABC1B4D8()
{
  result = qword_1EB4D57B8;
  if (!qword_1EB4D57B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D57B8);
  }

  return result;
}

unint64_t sub_1ABC1B530()
{
  result = qword_1EB4D57C0;
  if (!qword_1EB4D57C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D57C0);
  }

  return result;
}

uint64_t sub_1ABC1B5AC(uint64_t a1)
{

  return sub_1ABF24C64();
}

uint64_t sub_1ABC1B5CC()
{
  sub_1ABAD219C(&unk_1EB4D5800, &unk_1ABF4B4C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF3EB70;
  *(inited + 32) = 3;
  *(inited + 40) = &unk_1F2091E08;
  *(inited + 48) = 4;
  *(inited + 56) = &unk_1F2091E38;
  *(inited + 64) = 5;
  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1ABF34740;
  *(v1 + 32) = sub_1ABF23C04();
  *(v1 + 40) = v2;
  *(inited + 72) = v1;
  *(inited + 80) = 6;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1ABF34740;
  *(v3 + 32) = sub_1ABF23C04();
  *(v3 + 40) = v4;
  *(inited + 88) = v3;
  *(inited + 96) = 7;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1ABF34740;
  *(v5 + 32) = sub_1ABF23C04();
  *(v5 + 40) = v6;
  *(inited + 104) = v5;
  *(inited + 112) = 8;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1ABF34740;
  *(v7 + 32) = sub_1ABF23C04();
  *(v7 + 40) = v8;
  *(inited + 120) = v7;
  *(inited + 128) = 9;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1ABF34740;
  *(v9 + 32) = sub_1ABF23C04();
  *(v9 + 40) = v10;
  *(inited + 136) = v9;
  *(inited + 144) = 10;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1ABF34740;
  *(v11 + 32) = sub_1ABF23C04();
  *(v11 + 40) = v12;
  *(inited + 152) = v11;
  *(inited + 160) = 11;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1ABF34740;
  *(v13 + 32) = sub_1ABF23C04();
  *(v13 + 40) = v14;
  *(inited + 168) = v13;
  *(inited + 176) = 12;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1ABF34740;
  *(v15 + 32) = sub_1ABF23C04();
  *(v15 + 40) = v16;
  *(inited + 184) = v15;
  *(inited + 192) = 13;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1ABF34740;
  *(v17 + 32) = sub_1ABF23C04();
  *(v17 + 40) = v18;
  *(inited + 200) = v17;
  *(inited + 208) = 15;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1ABF34740;
  *(v19 + 32) = sub_1ABF23C04();
  *(v19 + 40) = v20;
  *(inited + 216) = v19;
  *(inited + 224) = 16;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1ABF34740;
  *(v21 + 32) = sub_1ABF23C04();
  *(v21 + 40) = v22;
  *(inited + 232) = v21;
  *(inited + 240) = 17;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1ABF34740;
  *(v23 + 32) = sub_1ABF23C04();
  *(v23 + 40) = v24;
  *(inited + 248) = v23;
  *(inited + 256) = 18;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1ABF34740;
  *(v25 + 32) = sub_1ABF23C04();
  *(v25 + 40) = v26;
  *(inited + 264) = v25;
  *(inited + 272) = 19;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1ABF34740;
  *(v27 + 32) = sub_1ABF23C04();
  *(v27 + 40) = v28;
  *(inited + 280) = v27;
  *(inited + 288) = 20;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1ABF34740;
  *(v29 + 32) = sub_1ABF23C04();
  *(v29 + 40) = v30;
  *(inited + 296) = v29;
  *(inited + 304) = 21;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1ABF34740;
  *(v31 + 32) = sub_1ABF23C04();
  *(v31 + 40) = v32;
  *(inited + 312) = v31;
  *(inited + 320) = 23;
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1ABF34740;
  *(v33 + 32) = sub_1ABF23C04();
  *(v33 + 40) = v34;
  *(inited + 328) = v33;
  *(inited + 336) = 24;
  *(inited + 344) = &unk_1F2091E68;
  *(inited + 352) = 25;
  *(inited + 360) = &unk_1F2091E98;
  *(inited + 368) = 26;
  *(inited + 376) = &unk_1F2091EC8;
  *(inited + 384) = 27;
  *(inited + 392) = &unk_1F2091EF8;
  *(inited + 400) = 28;
  *(inited + 408) = &unk_1F2091F48;
  *(inited + 416) = 29;
  *(inited + 424) = &unk_1F2091F88;
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  sub_1ABAB20D0();
  result = sub_1ABF239C4();
  qword_1EB4D57D0 = result;
  return result;
}

void *sub_1ABC1BB20()
{
  sub_1ABAD219C(&qword_1EB4D5828, qword_1ABF4B4E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF3EB70;
  *(inited + 32) = 0x213E654D3C21245FLL;
  *(inited + 40) = 0xEA00000000005F24;
  *(inited + 48) = 3;
  strcpy((inited + 56), "_$!<Family>!$_");
  *(inited + 71) = -18;
  *(inited + 72) = 4;
  *(inited + 80) = sub_1ABF23C04();
  *(inited + 88) = v1;
  *(inited + 96) = 5;
  *(inited + 104) = sub_1ABF23C04();
  *(inited + 112) = v2;
  *(inited + 120) = 6;
  *(inited + 128) = sub_1ABF23C04();
  *(inited + 136) = v3;
  *(inited + 144) = 7;
  *(inited + 152) = sub_1ABF23C04();
  *(inited + 160) = v4;
  *(inited + 168) = 8;
  *(inited + 176) = sub_1ABF23C04();
  *(inited + 184) = v5;
  *(inited + 192) = 9;
  *(inited + 200) = sub_1ABF23C04();
  *(inited + 208) = v6;
  *(inited + 216) = 10;
  *(inited + 224) = sub_1ABF23C04();
  *(inited + 232) = v7;
  *(inited + 240) = 11;
  *(inited + 248) = sub_1ABF23C04();
  *(inited + 256) = v8;
  *(inited + 264) = 12;
  *(inited + 272) = sub_1ABF23C04();
  *(inited + 280) = v9;
  *(inited + 288) = 13;
  *(inited + 296) = sub_1ABF23C04();
  *(inited + 304) = v10;
  *(inited + 312) = 15;
  *(inited + 320) = sub_1ABF23C04();
  *(inited + 328) = v11;
  *(inited + 336) = 16;
  *(inited + 344) = sub_1ABF23C04();
  *(inited + 352) = v12;
  *(inited + 360) = 17;
  *(inited + 368) = sub_1ABF23C04();
  *(inited + 376) = v13;
  *(inited + 384) = 18;
  *(inited + 392) = sub_1ABF23C04();
  *(inited + 400) = v14;
  *(inited + 408) = 19;
  *(inited + 416) = sub_1ABF23C04();
  *(inited + 424) = v15;
  *(inited + 432) = 20;
  *(inited + 440) = sub_1ABF23C04();
  *(inited + 448) = v16;
  *(inited + 456) = 21;
  *(inited + 464) = sub_1ABF23C04();
  *(inited + 472) = v17;
  *(inited + 480) = 23;
  *(inited + 488) = 0xD000000000000010;
  *(inited + 496) = 0x80000001ABF82450;
  *(inited + 504) = 24;
  *(inited + 512) = 0xD000000000000011;
  *(inited + 520) = 0x80000001ABF82470;
  *(inited + 528) = 25;
  strcpy((inited + 536), "_$!<Alumni>!$_");
  *(inited + 551) = -18;
  *(inited + 552) = 26;
  *(inited + 560) = 7628144;
  *(inited + 568) = 0xE300000000000000;
  *(inited + 576) = 27;
  *(inited + 584) = 6778724;
  *(inited + 592) = 0xE300000000000000;
  *(inited + 600) = 28;
  *(inited + 608) = 7627107;
  *(inited + 616) = 0xE300000000000000;
  *(inited + 624) = 29;
  result = sub_1ABF239C4();
  off_1EB4D57D8 = result;
  return result;
}

uint64_t sub_1ABC1BE80@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = a2[6];
  v11 = a3;
  result = sub_1ABC1BEC4(a1, v6, v7, v8, v9, &v11);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1ABC1BEC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v112 = a1;
  v110 = sub_1ABF223D4();
  sub_1ABA7BB64();
  v114 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v109 = &v97 - v13;
  sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  sub_1ABA7BB64();
  v115 = v14;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v15);
  v16 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABA7BB64();
  v100 = v17;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v97 - v19;
  v21 = *a6;
  if ((v21 - 27) > 2)
  {
    v106 = a4;
    v111 = a5;
    v23 = v21;
    isUniquelyReferenced_nonNull_native = sub_1ABAD219C(&unk_1EB4D57E0, &unk_1ABF4B4B0);
    v99 = sub_1ABF239C4();

    sub_1ABF22CE4();
    v108 = v23;
    LOBYTE(v122[0]) = v23;
    PersonEntityTagType.rawValue.getter();
    v120 = sub_1ABF22D14();
    v121 = MEMORY[0x1E69A0050];
    sub_1ABA93DC0(&v118);
    sub_1ABF22D24();
    v117[3] = MEMORY[0x1E69E6530];
    v117[4] = MEMORY[0x1E69A0178];
    v117[0] = 0;
    v122[3] = sub_1ABF22424();
    v122[4] = MEMORY[0x1E699FE60];
    sub_1ABA93DC0(v122);
    sub_1ABF228B4();
    sub_1ABA84B54(v117);
    sub_1ABA84B54(&v118);
    sub_1ABF22CA4();
    sub_1ABA84B54(v122);
    sub_1ABA7D098();
    sub_1ABAB47C4(v25, v26, v27, v28);
    v29 = v112;
    v30 = v123;
    v31 = sub_1ABF22294();
    if (v30)
    {
      v32 = sub_1ABA949E8();
      v33(v32);
      (*(v100 + 8))(v20, v16);
      isUniquelyReferenced_nonNull_native = v30;
      v116 = 0;
LABEL_25:
      v39 = v111;
      i = v106;
      if (qword_1ED870750 != -1)
      {
LABEL_37:
        sub_1ABA7D72C(&qword_1ED870750);
      }

      v83 = sub_1ABF237F4();
      sub_1ABA7AA24(v83, qword_1ED870758);
      v84 = isUniquelyReferenced_nonNull_native;
      v85 = sub_1ABF237D4();
      v86 = sub_1ABF24664();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v122[0] = v123;
        *v87 = 136315394;
        v89 = v108;
        LOBYTE(v118) = v108;
        v90 = PersonEntityTagType.rawValue.getter();
        v92 = sub_1ABADD6D8(v90, v91, v122);

        *(v87 + 4) = v92;
        v29 = v112;
        *(v87 + 12) = 2112;
        v93 = isUniquelyReferenced_nonNull_native;
        v94 = _swift_stdlib_bridgeErrorToNSError();
        *(v87 + 14) = v94;
        *v88 = v94;
        _os_log_impl(&dword_1ABA78000, v85, v86, "Failed to query entityTagging view during ET query. This is not fatal, defaulting to graph results. %s Error: %@", v87, 0x16u);
        sub_1ABAB480C(v88, &unk_1EB4D57F0, &qword_1ABF390C0);
        sub_1ABA7BC34();
        sub_1ABA84B54(v123);
        sub_1ABA7BC34();
        v39 = v111;
        sub_1ABA7BC34();

        v37 = v99;
      }

      else
      {

        v37 = v99;
LABEL_29:
        v89 = v108;
      }

      LOBYTE(v122[0]) = v89;
      v95 = v116;
      v96 = sub_1ABC1C950(v29, i, v39, v122);
      if (v95)
      {
      }

      else
      {
        return sub_1ABAB48D8(v37, v96, sub_1ABC1D8D4, sub_1ABC1D580);
      }
    }

    else
    {
      v34 = v31;
      v116 = 0;
      v97 = v20;
      v98 = v16;
      v35 = sub_1ABA949E8();
      v36(v35);
      v37 = sub_1ABF239C4();
      v104 = sub_1ABAAB7C8(v34);
      v38 = 0;
      v103 = v34 & 0xC000000000000001;
      v105 = v34;
      v102 = v34 & 0xFFFFFFFFFFFFFF8;
      v101 = (v114 + 8);
      v39 = v111;
      for (i = v106; ; i = v106)
      {
        v41 = v110;
        v42 = v109;
        if (v104 == v38)
        {
          v75 = sub_1ABA80AB8();
          v76(v75);

          goto LABEL_29;
        }

        if (v103)
        {
          v29 = MEMORY[0x1AC5AA170](v38, v105);
          i = v107;
        }

        else
        {
          i = v107;
          if (v38 >= *(v102 + 16))
          {
            goto LABEL_34;
          }

          v29 = *(v105 + 8 * v38 + 32);
        }

        if (__OFADD__(v38, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v113 = v38;
        v43 = v116;
        sub_1ABB33C40();
        if (v43)
        {
          break;
        }

        v114 = sub_1ABF251F4();
        LODWORD(v115) = v44;
        v45 = *v101;
        (*v101)(v42, v41);
        LOBYTE(v122[0]) = v108;
        PersonEntityTagType.rawValue.getter();
        v123 = v29;
        sub_1ABB33C40();

        v46 = sub_1ABF24334();
        v47 = i;
        i = v46;
        v49 = v48;
        v45(v47, v41);
        if (v49)
        {

          v122[0] = 0;
          v122[1] = 0xE000000000000000;
          sub_1ABF24AB4();

          v118 = 0xD00000000000001FLL;
          v119 = 0x80000001ABF8C190;
          LOBYTE(v117[0]) = v108;
          PersonEntityTagType.rawValue.getter();
          sub_1ABF22BC4();

          sub_1ABAD219C(&qword_1EB4D3050, &qword_1ABF3DF20);
          v77 = sub_1ABF23C74();
          MEMORY[0x1AC5A9410](v77);

          MEMORY[0x1AC5A9410](46, 0xE100000000000000);
          v78 = v118;
          v79 = v119;
          sub_1ABB93C20();
          isUniquelyReferenced_nonNull_native = swift_allocError();
          *v80 = v78;
          *(v80 + 8) = v79;
          *(v80 + 16) = 1;
          swift_willThrow();

          v81 = sub_1ABA80AB8();
          v82(v81);
          v116 = 0;
          v29 = v112;
          goto LABEL_25;
        }

        sub_1ABB32E40();
        v116 = 0;
        v51 = v50;
        v39 = v52;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v122[0] = v37;
        v59 = sub_1ABA94FC8(v51, v39, v53, v54, v55, v56, v57, v58, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
        if (__OFADD__(*(v37 + 16), (v60 & 1) == 0))
        {
          goto LABEL_35;
        }

        v61 = v59;
        v62 = v60;
        sub_1ABAD219C(&qword_1EB4D1FE8, &qword_1ABF351D8);
        if (sub_1ABF24C64())
        {
          v69 = sub_1ABA94FC8(v51, v39, v63, v64, v65, v66, v67, v68, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
          if ((v62 & 1) != (v70 & 1))
          {
            goto LABEL_39;
          }

          v61 = v69;
        }

        v37 = v122[0];
        if (v62)
        {
          sub_1ABA934F8();
        }

        else
        {
          *(v122[0] + 8 * (v61 >> 6) + 64) |= 1 << v61;
          v71 = (*(v37 + 48) + 16 * v61);
          *v71 = v51;
          v71[1] = v39;
          sub_1ABA934F8();
          v72 = *(v37 + 16);
          v73 = __OFADD__(v72, 1);
          v74 = v72 + 1;
          if (v73)
          {
            goto LABEL_36;
          }

          *(v37 + 16) = v74;
        }

        v29 = v112;
        v38 = v113 + 1;
        v39 = v111;
      }

      swift_unexpectedError();
      __break(1u);
LABEL_39:
      result = sub_1ABF25104();
      __break(1u);
    }
  }

  else
  {
    LOBYTE(v122[0]) = *a6;
    return sub_1ABC1C950(v112, a4, a5, v122);
  }

  return result;
}

uint64_t sub_1ABC1C950(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v40 = a1;
  v8 = sub_1ABF22854();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a4;
  if (qword_1EB4D0370 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v13 = sub_1ABAD59D8(v12, qword_1EB4D57D0);
    if (!v13)
    {
      break;
    }

    v14 = v13;
    v37 = v11;
    v38 = v9;
    v39 = v8;
    *&v41[0] = 0;
    *(&v41[0] + 1) = 0xE000000000000000;
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD00000000000004BLL, 0x80000001ABF8C1B0);
    MEMORY[0x1AC5A9410](a2, a3);
    MEMORY[0x1AC5A9410](0xD000000000000013, 0x80000001ABF8C200);
    MEMORY[0x1AC5A9410](a2, a3);
    MEMORY[0x1AC5A9410](0xD00000000000003CLL, 0x80000001ABF8C220);
    MEMORY[0x1AC5A9410](a2, a3);
    MEMORY[0x1AC5A9410](0xD00000000000002ELL, 0x80000001ABF8C260);
    MEMORY[0x1AC5A9410](a2, a3);
    MEMORY[0x1AC5A9410](0xD000000000000092, 0x80000001ABF8C290);
    v15 = *(v14 + 16);
    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v43 = MEMORY[0x1E69E7CC0];
      sub_1ABADDBD4(0, v15, 0);
      v16 = v43;
      v17 = *(v43 + 2);
      v18 = 16 * v17;
      do
      {
        v43 = v16;
        v19 = *(v16 + 3);
        v20 = v17 + 1;
        if (v17 >= v19 >> 1)
        {
          sub_1ABADDBD4(v19 > 1, v17 + 1, 1);
          v16 = v43;
        }

        *(v16 + 2) = v20;
        v21 = &v16[v18];
        *(v21 + 4) = 63;
        *(v21 + 5) = 0xE100000000000000;
        v18 += 16;
        v17 = v20;
        --v15;
      }

      while (v15);
    }

    v43 = v16;
    v12 = &unk_1EB4D33D0;
    v11 = &unk_1ABF3A8C0;
    a2 = sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABAB47C4(&qword_1ED870668, &unk_1EB4D33D0, &unk_1ABF3A8C0, MEMORY[0x1E69E6310]);
    v22 = sub_1ABF23B54();
    v24 = v23;

    MEMORY[0x1AC5A9410](v22, v24);

    MEMORY[0x1AC5A9410](0xD0000000000000A3, 0x80000001ABF8C330);
    sub_1ABF22BB4();
    *&v41[0] = v14;
    sub_1ABAB47C4(&qword_1EB4CE710, &unk_1EB4D33D0, &unk_1ABF3A8C0, MEMORY[0x1E69E6328]);
    v25 = v37;
    sub_1ABF22864();
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    v26 = sub_1ABF22B84();
    if (v4)
    {

      sub_1ABAB480C(v41, &unk_1EB4D38A0, &qword_1ABF3A8B0);
      return (*(v38 + 8))(v25, v39);
    }

    v36 = v26;

    sub_1ABAB480C(v41, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    (*(v38 + 8))(v25, v39);
    sub_1ABAD219C(&unk_1EB4D57E0, &unk_1ABF4B4B0);
    *&v41[0] = sub_1ABF239C4();
    v8 = sub_1ABAAB7C8(v36);
    v9 = 0;
    a3 = v36 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v8 == v9)
      {

        return *&v41[0];
      }

      if ((v36 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1AC5AA170](v9, v36);
      }

      else
      {
        if (v9 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v11 = *(v36 + 8 * v9 + 32);
      }

      if (__OFADD__(v9, 1))
      {
        break;
      }

      v43 = v11;
      sub_1ABC1CFBC(v41);

      ++v9;
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  if (qword_1ED870750 != -1)
  {
    swift_once();
  }

  v28 = sub_1ABF237F4();
  sub_1ABA7AA24(v28, qword_1ED870758);
  v29 = sub_1ABF237D4();
  v30 = sub_1ABF24664();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v41[0] = v32;
    *v31 = 136315138;
    LOBYTE(v43) = v12;
    v33 = PersonEntityTagType.rawValue.getter();
    v35 = sub_1ABADD6D8(v33, v34, v41);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_1ABA78000, v29, v30, "Entity Tagging knosisTagLookup: Tag type not supported by DB query: %s", v31, 0xCu);
    sub_1ABA84B54(v32);
    MEMORY[0x1AC5AB8B0](v32, -1, -1);
    MEMORY[0x1AC5AB8B0](v31, -1, -1);
  }

  sub_1ABAD219C(&unk_1EB4D57E0, &unk_1ABF4B4B0);
  return sub_1ABF239C4();
}

uint64_t sub_1ABC1CFBC(uint64_t *a1)
{
  sub_1ABB33DA0();
  if (v1)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v3 = sub_1ABF23C64();
    EntityIdentifier.init(_:)(v3, v4, &v13);
    if (v14)
    {
      v13 = 0;
      v14 = 0xE000000000000000;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD000000000000038, 0x80000001ABF8C400);
      sub_1ABB33DA0();
      v5 = sub_1ABF23C64();
      MEMORY[0x1AC5A9410](v5);

      v6 = v13;
      v7 = v14;
      sub_1ABB93C20();
      swift_allocError();
      *v8 = v6;
      *(v8 + 8) = v7;
      *(v8 + 16) = 1;
      return swift_willThrow();
    }

    else
    {
      v10 = v13;
      sub_1ABB33DA0();
      v11 = sub_1ABF23C64();
      sub_1ABB24D04(v11, v12);
      v13 = v10;
      sub_1ABF24FF4();
      swift_isUniquelyReferenced_nonNull_native();
      v13 = *a1;
      sub_1ABAFBE2C();

      *a1 = v13;
    }
  }

  return result;
}

void sub_1ABC1D1DC(uint64_t *a1)
{
  sub_1ABB32E40();
  if (v1)
  {
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v11 = v3;
    v12 = v4;
    if (qword_1EB4D0378 != -1)
    {
      swift_once();
    }

    v13 = off_1EB4D57D8;
    if (*(off_1EB4D57D8 + 2) && (v14 = sub_1ABA94FC8(v11, v12, v5, v6, v7, v8, v9, v10, v38, v39, v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v40[6], v40[7]), (v15 & 1) != 0))
    {
      v16 = *(v13[7] + v14);
      sub_1ABB33DA0();
      v17 = sub_1ABF23C64();
      v19 = sub_1ABB24D04(v17, v18);
      if (v20)
      {
        sub_1ABF24AB4();
        MEMORY[0x1AC5A9410](0xD00000000000003CLL, 0x80000001ABF8C620);
        MEMORY[0x1AC5A9410](v11, v12);

        sub_1ABB93C20();
        swift_allocError();
        *v21 = 0;
        *(v21 + 8) = 0xE000000000000000;
        *(v21 + 16) = 1;
        swift_willThrow();
      }

      else
      {
        v28 = *&v19;

        v29 = v28;
        LOBYTE(v40[0]) = v16;
        v30 = PersonEntityTagType.rawValue.getter();
        v31 = COERCE_DOUBLE(sub_1ABAD5984(v30));
        v33 = v32;

        if (v33)
        {
          v34 = 0.0;
        }

        else
        {
          v34 = v31;
        }

        v35 = PersonEntityTagType.rawValue.getter();
        v37 = v36;
        if (v34 > v28)
        {
          v29 = v34;
        }

        swift_isUniquelyReferenced_nonNull_native();
        v40[0] = *a1;
        sub_1ABAFBCFC(v35, v37, v29);

        *a1 = v40[0];
      }
    }

    else
    {
      if (qword_1ED870750 != -1)
      {
        swift_once();
      }

      v22 = sub_1ABF237F4();
      sub_1ABA7AA24(v22, qword_1ED870758);

      v23 = sub_1ABF237D4();
      v24 = sub_1ABF24664();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v40[0] = v26;
        *v25 = 136315138;
        v27 = sub_1ABADD6D8(v11, v12, v40);

        *(v25 + 4) = v27;
        _os_log_impl(&dword_1ABA78000, v23, v24, "Entity Tagging: Unmapped relation lookup: %s", v25, 0xCu);
        sub_1ABA84B54(v26);
        MEMORY[0x1AC5AB8B0](v26, -1, -1);
        MEMORY[0x1AC5AB8B0](v25, -1, -1);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1ABC1D580(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  v106 = a5;
  sub_1ABAB4C04(&v99);
  v8 = v100;
  v9 = v102;
  v10 = v103;
  v80 = v104;
  v82 = v99;
  v84 = v105;
  v70 = v101;
  v11 = (v101 + 64) >> 6;
  v74 = a1;

  v72 = a3;

  v78 = v8;
  if (v10)
  {
    while (1)
    {
      HIDWORD(v86) = a4;
      v12 = v9;
LABEL_8:
      v14 = __clz(__rbit64(v10)) | (v12 << 6);
      v15 = (*(v82 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      v18 = *(v82 + 56) + 24 * v14;
      v19 = *v18;
      v20 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 16);
      v94 = v16;
      v95 = v17;
      v96 = v19;
      v97 = v20;
      LOBYTE(v98) = v18;

      v80(&v89, &v94);

      v21 = v89;
      v22 = v90;
      v23 = v91;
      v24 = v92;
      LODWORD(v86) = v93;
      v25 = *v106;
      v39 = sub_1ABA94FC8(v89, v90, v26, v27, v28, v29, v30, v31, v68, v70, v72, v74, v76, v78, v80, v82, v84, v86);
      v40 = v25[2];
      v41 = (v32 & 1) == 0;
      v42 = v40 + v41;
      if (__OFADD__(v40, v41))
      {
        break;
      }

      v43 = v32;
      if (v25[3] >= v42)
      {
        if ((v87 & 0x100000000) == 0)
        {
          sub_1ABAD219C(&qword_1EB4D1FE8, &qword_1ABF351D8);
          sub_1ABF24C74();
        }
      }

      else
      {
        sub_1ABC04FF0(v42, BYTE4(v87) & 1, v33, v34, v35, v36, v37, v38, v68, v70, v72, v74, v76, v78, v80, v82, v84, v87, v89, v90, *&v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
        v50 = sub_1ABA94FC8(v21, v22, v44, v45, v46, v47, v48, v49, v69, v71, v73, v75, v77, v79, v81, v83, v85, v88);
        if ((v43 & 1) != (v51 & 1))
        {
          goto LABEL_32;
        }

        v39 = v50;
      }

      v10 &= v10 - 1;
      v52 = *v106;
      if (v43)
      {
        v53 = 3 * v39;
        v54 = v52[7] + 24 * v39;
        v55 = *v54;
        v56 = *(v54 + 8);
        v57 = *(v54 + 16);

        if (v23 >= v55)
        {
          v58 = v23;
        }

        else
        {
          v58 = v55;
        }

        if (v23 >= v55)
        {
          v59 = v24;
        }

        else
        {
          v59 = v56;
        }

        v60 = v87;
        if (v23 < v55)
        {
          v60 = v57;
        }

        v61 = v52[7] + 8 * v53;
        *v61 = v58;
        *(v61 + 8) = v59;
        *(v61 + 16) = v60 & 1;
      }

      else
      {
        v52[(v39 >> 6) + 8] |= 1 << v39;
        v62 = (v52[6] + 16 * v39);
        *v62 = v21;
        v62[1] = v22;
        v63 = v52[7] + 24 * v39;
        *v63 = v23;
        *(v63 + 8) = v24;
        *(v63 + 16) = v87;
        v64 = v52[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          goto LABEL_31;
        }

        v52[2] = v66;
      }

      a4 = 1;
      v9 = v12;
      v8 = v78;
      if (!v10)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v13 = v9;
    while (1)
    {
      v12 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v12 >= v11)
      {
        sub_1ABAB4C48(v82);
      }

      v10 = *(v8 + 8 * v12);
      ++v13;
      if (v10)
      {
        HIDWORD(v86) = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

double sub_1ABC1D890@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1ABDBC964(&v6, *a1, *(a1 + 16));
  result = v6;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = result;
  return result;
}

double sub_1ABC1D8D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1ABDBC99C(v8, *a1, *(a1 + 16), *(a1 + 8), *(a1 + 24), *(a1 + 32));
  result = *v8;
  v5 = v8[1];
  v6 = v9;
  *a2 = v3;
  *(a2 + 8) = v7;
  *(a2 + 16) = result;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t EntityTaggingInferenceInterface.Input.init(featureProvider:explicitTags:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_1ABC1D980()
{
  result = qword_1EB4D5830;
  if (!qword_1EB4D5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5830);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingInferenceInterface(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABC1DAC4(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = v2[1];
  v40 = *v2;
  v41 = v6;
  v42 = v2[2];
  v43 = *(v2 + 6);
  ObjectType = swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D5838, &qword_1ABF4B650);
  result = sub_1ABF22464();
  if (!v3)
  {
    v9 = v39[0];
    v10 = OBJC_IVAR___GDPersonEntityTaggingOptionsInner_tagThresholds;
    swift_beginAccess();
    v11 = *(a2 + v10);

    v12 = COERCE_DOUBLE(sub_1ABAD58F0(v5, v11));
    v14 = v13;

    if (v14)
    {
      v15 = 1.0;
    }

    else
    {
      v15 = v12;
    }

    v44 = MEMORY[0x1E69E7CC0];
    v16 = v39[0] + 64;
    sub_1ABA8F320();

    v17 = 0;
    v35 = v39[0];
    while (ObjectType)
    {
LABEL_11:
      sub_1ABA7D74C();
      v20 = (*(v9 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      v23 = *(v9 + 56) + 24 * v19;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);

      EntityIdentifier.init(_:)(v22, v21, &v37);
      if (v38)
      {
        if (qword_1ED870750 != -1)
        {
          swift_once();
        }

        v27 = sub_1ABF237F4();
        sub_1ABA7AA24(v27, qword_1ED870758);

        v28 = sub_1ABF237D4();
        v29 = sub_1ABF24664();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          log = v28;
          v31 = swift_slowAlloc();
          v37 = v31;
          *v30 = 136315138;
          *(v30 + 4) = sub_1ABADD6D8(v22, v21, &v37);
          _os_log_impl(&dword_1ABA78000, log, v29, "Entity Tagging: Entity Identifier :%s is not valid", v30, 0xCu);
          sub_1ABA84B54(v31);
          MEMORY[0x1AC5AB8B0](v31, -1, -1);
          v32 = v30;
          v9 = v35;
          MEMORY[0x1AC5AB8B0](v32, -1, -1);
        }

        else
        {
        }
      }

      else if (v15 <= v24)
      {
        if (v26)
        {
          v25 = 0;
        }

        v33 = objc_allocWithZone(type metadata accessor for PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson());
        PersonEntityTaggingService.ScoreRankedEntityTagPersons.ScoredPerson.init(id:score:inferenceEventId:)(&v37, v25, v24);
        MEMORY[0x1AC5A9710]();
        if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1ABF24134();
        }

        sub_1ABF24184();
      }
    }

    while (1)
    {
      v18 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= *&v12)
      {

        v37 = sub_1ABAB4C50(v34, sub_1ABAE3054, sub_1ABB4E7EC);
        sub_1ABAB34A0(&v37, sub_1ABAB4CF4, sub_1ABAE8C64, &OBJC_IVAR___GDScoredPersonInner_score, sub_1ABAE304C);

        return v37;
      }

      ObjectType = *(v16 + 8 * v18);
      ++v17;
      if (ObjectType)
      {
        v17 = v18;
        goto LABEL_11;
      }
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

void sub_1ABC1DF44(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, void (*a6)(uint64_t *, int64_t, uint64_t *))
{
  v8 = v6;
  v85 = MEMORY[0x1E69E7CC0];
  v9 = a3[1];
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v78 = a4;
    while (1)
    {
      v12 = v10 + 1;
      if (v10 + 1 < v9)
      {
        v13 = *(*(*a3 + 8 * v12) + *a5);
        v14 = *(*(*a3 + 8 * v10) + *a5);
        v15 = v10 + 2;
        v16 = v13;
        while (1)
        {
          v17 = v15;
          if (v15 >= v9)
          {
            break;
          }

          v18 = (v14 < v13) ^ (v16 >= *(*(*a3 + 8 * v15++) + *a5));
          v16 = *(*(*a3 + 8 * v17) + *a5);
          if ((v18 & 1) == 0)
          {
            v12 = v17;
            goto LABEL_9;
          }
        }

        v12 = v9;
LABEL_9:
        if (v14 < v13)
        {
          if (v12 < v10)
          {
            goto LABEL_110;
          }

          if (v10 < v12)
          {
            if (v9 >= v17)
            {
              v9 = v17;
            }

            v19 = 8 * v9 - 8;
            v20 = 8 * v10;
            v21 = v12;
            v22 = v10;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                v24 = *(v23 + v20);
                *(v23 + v20) = *(v23 + v19);
                *(v23 + v19) = v24;
              }

              ++v22;
              v19 -= 8;
              v20 += 8;
            }

            while (v22 < v21);
            v9 = a3[1];
          }
        }
      }

      if (v12 < v9)
      {
        if (__OFSUB__(v12, v10))
        {
          goto LABEL_109;
        }

        if (v12 - v10 < a4)
        {
          if (__OFADD__(v10, a4))
          {
            goto LABEL_111;
          }

          if (v10 + a4 < v9)
          {
            v9 = v10 + a4;
          }

          if (v9 < v10)
          {
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
            return;
          }

          if (v12 != v9)
          {
            v25 = *a3;
            v26 = *a3 + 8 * v12 - 8;
            v27 = v10 - v12;
            do
            {
              v28 = *(v25 + 8 * v12);
              v29 = v27;
              v30 = v26;
              do
              {
                v31 = *v30;
                if (*(*v30 + *a5) >= *(v28 + *a5))
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_113;
                }

                *v30 = v28;
                v30[1] = v31;
                --v30;
              }

              while (!__CFADD__(v29++, 1));
              ++v12;
              v26 += 8;
              --v27;
            }

            while (v12 != v9);
            v12 = v9;
          }
        }
      }

      if (v12 < v10)
      {
        goto LABEL_108;
      }

      v80 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD8820();
        v11 = v76;
      }

      v33 = v11[2];
      v34 = v33 + 1;
      if (v33 >= v11[3] >> 1)
      {
        sub_1ABAD8820();
        v11 = v77;
      }

      v11[2] = v34;
      v35 = v11 + 4;
      v36 = &v11[2 * v33 + 4];
      *v36 = v10;
      v36[1] = v12;
      v82 = *a1;
      if (!*a1)
      {
        goto LABEL_116;
      }

      if (v33)
      {
        v84 = v11;
        while (1)
        {
          v37 = v34 - 1;
          v38 = &v35[2 * v34 - 2];
          v39 = &v11[2 * v34];
          if (v34 >= 4)
          {
            break;
          }

          if (v34 == 3)
          {
            v40 = v11[4];
            v41 = v11[5];
            v50 = __OFSUB__(v41, v40);
            v42 = v41 - v40;
            v43 = v50;
LABEL_57:
            if (v43)
            {
              goto LABEL_98;
            }

            v55 = *v39;
            v54 = v39[1];
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_101;
            }

            v59 = v38[1];
            v60 = v59 - *v38;
            if (__OFSUB__(v59, *v38))
            {
              goto LABEL_104;
            }

            if (__OFADD__(v57, v60))
            {
              goto LABEL_106;
            }

            if (v57 + v60 >= v42)
            {
              if (v42 < v60)
              {
                v37 = v34 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v34 < 2)
          {
            goto LABEL_100;
          }

          v62 = *v39;
          v61 = v39[1];
          v50 = __OFSUB__(v61, v62);
          v57 = v61 - v62;
          v58 = v50;
LABEL_72:
          if (v58)
          {
            goto LABEL_103;
          }

          v64 = *v38;
          v63 = v38[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_105;
          }

          if (v65 < v57)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v37 - 1 >= v34)
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
            goto LABEL_112;
          }

          if (!*a3)
          {
            goto LABEL_114;
          }

          v69 = &v35[2 * v37 - 2];
          v70 = *v69;
          v71 = v37;
          v72 = &v35[2 * v37];
          v73 = *(v72 + 1);
          sub_1ABC1E56C((*a3 + 8 * *v69), (*a3 + 8 * *v72), (*a3 + 8 * v73), v82, a6, a5);
          if (v8)
          {
            goto LABEL_91;
          }

          if (v73 < v70)
          {
            goto LABEL_93;
          }

          v74 = v84[2];
          if (v71 > v74)
          {
            goto LABEL_94;
          }

          *v69 = v70;
          v69[1] = v73;
          if (v71 >= v74)
          {
            goto LABEL_95;
          }

          v34 = v74 - 1;
          sub_1ABE7A0CC(v72 + 16, v74 - 1 - v71, v72);
          v11 = v84;
          v84[2] = v74 - 1;
          v75 = v74 > 2;
          v8 = 0;
          if (!v75)
          {
            goto LABEL_86;
          }
        }

        v44 = &v35[2 * v34];
        v45 = *(v44 - 8);
        v46 = *(v44 - 7);
        v50 = __OFSUB__(v46, v45);
        v47 = v46 - v45;
        if (v50)
        {
          goto LABEL_96;
        }

        v49 = *(v44 - 6);
        v48 = *(v44 - 5);
        v50 = __OFSUB__(v48, v49);
        v42 = v48 - v49;
        v43 = v50;
        if (v50)
        {
          goto LABEL_97;
        }

        v51 = v39[1];
        v52 = v51 - *v39;
        if (__OFSUB__(v51, *v39))
        {
          goto LABEL_99;
        }

        v50 = __OFADD__(v42, v52);
        v53 = v42 + v52;
        if (v50)
        {
          goto LABEL_102;
        }

        if (v53 >= v47)
        {
          v67 = *v38;
          v66 = v38[1];
          v50 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v50)
          {
            goto LABEL_107;
          }

          if (v42 < v68)
          {
            v37 = v34 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v9 = a3[1];
      v10 = v80;
      a4 = v78;
      if (v80 >= v9)
      {
        v85 = v11;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_117;
  }

  sub_1ABC1E438(&v85, *a1, a3, a6, a5);
LABEL_91:
}

uint64_t sub_1ABC1E438(uint64_t *a1, uint64_t *a2, void *a3, void (*a4)(uint64_t *, int64_t, uint64_t *), void *a5)
{
  i = a1;
  v7 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4();
    v7 = result;
  }

  v15 = i;
  *i = v7;
  v9 = (v7 + 16);
  for (i = *(v7 + 16); ; *v9 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v15 = v7;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v10 = (v7 + 16 * i);
    v11 = *v10;
    v12 = &v9[2 * i];
    v13 = v12[1];
    sub_1ABC1E56C((*a3 + 8 * *v10), (*a3 + 8 * *v12), (*a3 + 8 * v13), a2, a4, a5);
    if (v5)
    {
      goto LABEL_10;
    }

    if (v13 < v11)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v9)
    {
      goto LABEL_12;
    }

    *v10 = v11;
    v10[1] = v13;
    v14 = *v9 - i;
    if (*v9 < i)
    {
      goto LABEL_13;
    }

    i = *v9 - 1;
    result = memmove(v12, v12 + 2, 16 * v14);
  }

  *v15 = v7;
  __break(1u);
  return result;
}

uint64_t sub_1ABC1E56C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *, int64_t, uint64_t *), void *a6)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v11 = a2 - a1;
  v12 = a3 - a2;
  if (v11 < v12)
  {
    a5(a1, a2 - a1, a4);
    v13 = &v7[v11];
    while (1)
    {
      if (v7 >= v13 || v9 >= v8)
      {
        v9 = v10;
        goto LABEL_28;
      }

      v15 = *v9;
      if (*(*v7 + *a6) >= *(*v9 + *a6))
      {
        break;
      }

      v16 = v10 == v9++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v10;
    }

    v15 = *v7;
    v16 = v10 == v7++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v10 = v15;
    goto LABEL_13;
  }

  a5(a2, a3 - a2, a4);
  v13 = &v7[v12];
LABEL_15:
  v17 = v9 - 1;
  for (--v8; v13 > v7 && v9 > v10; --v8)
  {
    v19 = *(v13 - 1);
    if (*(*v17 + *a6) < *(v19 + *a6))
    {
      v16 = v8 + 1 == v9--;
      if (!v16)
      {
        *v8 = *v17;
        v9 = v17;
      }

      goto LABEL_15;
    }

    if (v13 != v8 + 1)
    {
      *v8 = v19;
    }

    --v13;
  }

LABEL_28:
  v20 = v13 - v7;
  if (v9 != v7 || v9 >= &v7[v20])
  {
    memmove(v9, v7, 8 * v20);
  }

  return 1;
}

uint64_t EntityTaggingMLModelInferenceInterface.Input.init(featureProvider:confidenceHistory:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1ABC1E7A0(uint64_t a1)
{
  v2 = sub_1ABC1EA38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC1E7DC(uint64_t a1)
{
  v2 = sub_1ABC1EA38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC1E818(uint64_t a1)
{
  v2 = sub_1ABC1EA8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC1E854(uint64_t a1)
{
  v2 = sub_1ABC1EA8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityTaggingMLModelInferenceInterface.Errors.InitError.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  a10 = v20;
  v24 = v23;
  v25 = sub_1ABAD219C(&qword_1EB4D5848, &qword_1ABF4B660);
  sub_1ABA7BB64();
  v27 = v26;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &a9 - v29;
  v31 = sub_1ABAD219C(&qword_1EB4D5850, &qword_1ABF4B668);
  sub_1ABA7BB64();
  v33 = v32;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &a9 - v35;
  sub_1ABA93E20(v24, v24[3]);
  sub_1ABC1EA38();
  sub_1ABF252E4();
  sub_1ABC1EA8C();
  sub_1ABF24EC4();
  (*(v27 + 8))(v30, v25);
  (*(v33 + 8))(v36, v31);
  sub_1ABA7BC90();
}

unint64_t sub_1ABC1EA38()
{
  result = qword_1EB4D5858;
  if (!qword_1EB4D5858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5858);
  }

  return result;
}

unint64_t sub_1ABC1EA8C()
{
  result = qword_1EB4D5860;
  if (!qword_1EB4D5860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5860);
  }

  return result;
}

uint64_t EntityTaggingMLModelInferenceInterface.Errors.InitError.hashValue.getter()
{
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](0);
  return sub_1ABF25294();
}

void EntityTaggingMLModelInferenceInterface.Errors.InitError.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D5868, &qword_1ABF4B670);
  sub_1ABA7BB64();
  v35 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = sub_1ABAD219C(&qword_1EB4D5870, &unk_1ABF4B678);
  sub_1ABA7BB64();
  v36 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  sub_1ABA93E20(v2, v2[3]);
  sub_1ABC1EA38();
  sub_1ABF252C4();
  if (v0)
  {
    goto LABEL_9;
  }

  v33 = v7;
  v34 = v2;
  sub_1ABF24EA4();
  v13 = sub_1ABAD4EA4();
  v16 = v12;
  if (v14 == v15 >> 1)
  {
    v35 = v13;
LABEL_8:
    v26 = v8;
    v27 = sub_1ABF24B44();
    swift_allocError();
    v29 = v28;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v29 = &type metadata for EntityTaggingMLModelInferenceInterface.Errors.InitError;
    v30 = sub_1ABF24DA4();
    sub_1ABA835CC(v30);
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v36 + 8))(v16, v26);
    v2 = v34;
LABEL_9:
    v31 = v2;
    goto LABEL_10;
  }

  if (v14 < (v15 >> 1))
  {
    v17 = sub_1ABAD4E90();
    v19 = v18;
    v21 = v20;
    swift_unknownObjectRelease();
    v22 = v19 == v21 >> 1;
    v23 = v34;
    v24 = v35;
    if (v22)
    {
      sub_1ABC1EA8C();
      v25 = v33;
      sub_1ABF24D94();
      swift_unknownObjectRelease();
      (*(v24 + 8))(v25, v3);
      (*(v36 + 8))(v16, v8);
      v31 = v23;
LABEL_10:
      sub_1ABA84B54(v31);
      sub_1ABA7BC90();
      return;
    }

    v35 = v17;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1ABC1EF30(uint64_t a1)
{
  v2 = sub_1ABC1F828();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC1EF6C(uint64_t a1)
{
  v2 = sub_1ABC1F828();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC1EFA8(uint64_t a1)
{
  v2 = sub_1ABC1F87C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC1EFE4(uint64_t a1)
{
  v2 = sub_1ABC1F87C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABC1F020(uint64_t a1)
{
  v2 = sub_1ABC1F8D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC1F05C(uint64_t a1)
{
  v2 = sub_1ABC1F8D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EntityTaggingMLModelInferenceInterface.Errors.RunError.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v25 = v24;
  sub_1ABAD219C(&qword_1EB4D5878, &qword_1ABF4B688);
  sub_1ABA7BB64();
  v47 = v27;
  v48 = v26;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  v46 = &v44 - v29;
  sub_1ABAD219C(&qword_1EB4D5880, &qword_1ABF4B690);
  sub_1ABA7BB64();
  v44 = v31;
  v45 = v30;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v44 - v33;
  v35 = sub_1ABAD219C(&qword_1EB4D5888, &qword_1ABF4B698);
  sub_1ABA7BB64();
  v37 = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v44 - v39;
  v41 = *v23;
  sub_1ABA93E20(v25, v25[3]);
  sub_1ABC1F828();
  sub_1ABF252E4();
  v42 = (v37 + 8);
  if (v41)
  {
    sub_1ABC1F87C();
    v43 = v46;
    sub_1ABF24EC4();
    (*(v47 + 8))(v43, v48);
  }

  else
  {
    sub_1ABC1F8D0();
    sub_1ABF24EC4();
    (*(v44 + 8))(v34, v45);
  }

  (*v42)(v40, v35);
  sub_1ABA7BC90();
}

uint64_t EntityTaggingMLModelInferenceInterface.Errors.RunError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void EntityTaggingMLModelInferenceInterface.Errors.RunError.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v24;
  a23 = v25;
  v71 = v23;
  v27 = v26;
  v68 = v28;
  v70 = sub_1ABAD219C(&qword_1EB4D58A8, &qword_1ABF4B6A0);
  sub_1ABA7BB64();
  v67 = v29;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v63 - v31;
  v33 = sub_1ABAD219C(&qword_1EB4D58B0, &qword_1ABF4B6A8);
  sub_1ABA7BB64();
  v66 = v34;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v63 - v36;
  v38 = sub_1ABAD219C(&qword_1EB4D58B8, &qword_1ABF4B6B0);
  sub_1ABA7BB64();
  v69 = v39;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v63 - v41;
  sub_1ABA93E20(v27, v27[3]);
  sub_1ABC1F828();
  v43 = v71;
  sub_1ABF252C4();
  if (v43)
  {
    goto LABEL_10;
  }

  v64 = v33;
  v65 = v37;
  v71 = v27;
  v44 = v70;
  sub_1ABF24EA4();
  v45 = sub_1ABAD4EA4();
  if (v47 == v48 >> 1)
  {
    v70 = v45;
LABEL_9:
    v58 = sub_1ABF24B44();
    swift_allocError();
    v60 = v59;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v60 = &type metadata for EntityTaggingMLModelInferenceInterface.Errors.RunError;
    v61 = sub_1ABF24DA4();
    sub_1ABA835CC(v61);
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69E6AF8], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v69 + 8))(v42, v38);
    v27 = v71;
LABEL_10:
    sub_1ABA84B54(v27);
LABEL_11:
    sub_1ABA7BC90();
    return;
  }

  v63[1] = 0;
  if (v47 < (v48 >> 1))
  {
    v49 = *(v46 + v47);
    v50 = sub_1ABAD4E90();
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    if (v52 == v54 >> 1)
    {
      if (v49)
      {
        a13 = 1;
        sub_1ABC1F87C();
        v55 = v32;
        sub_1ABA7E518(&type metadata for EntityTaggingMLModelInferenceInterface.Errors.RunError.MissingClassProbabilityFeatureCodingKeys, &a13);
        v56 = v68;
        v57 = v69;
        swift_unknownObjectRelease();
        (*(v67 + 8))(v55, v44);
      }

      else
      {
        a12 = 0;
        sub_1ABC1F8D0();
        v62 = v65;
        sub_1ABA7E518(&type metadata for EntityTaggingMLModelInferenceInterface.Errors.RunError.UnableToGeneratePredictionCodingKeys, &a12);
        v56 = v68;
        v57 = v69;
        swift_unknownObjectRelease();
        (*(v66 + 8))(v62, v64);
      }

      (*(v57 + 8))(v42, v52);
      *v56 = v49;
      sub_1ABA84B54(v71);
      goto LABEL_11;
    }

    v70 = v50;
    goto LABEL_9;
  }

  __break(1u);
}

unint64_t sub_1ABC1F828()
{
  result = qword_1EB4D5890;
  if (!qword_1EB4D5890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5890);
  }

  return result;
}

unint64_t sub_1ABC1F87C()
{
  result = qword_1EB4D5898;
  if (!qword_1EB4D5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5898);
  }

  return result;
}

unint64_t sub_1ABC1F8D0()
{
  result = qword_1EB4D58A0;
  if (!qword_1EB4D58A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58A0);
  }

  return result;
}

unint64_t sub_1ABC1F928()
{
  result = qword_1EB4D58C0;
  if (!qword_1EB4D58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58C0);
  }

  return result;
}

unint64_t sub_1ABC1F980()
{
  result = qword_1EB4D58C8;
  if (!qword_1EB4D58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58C8);
  }

  return result;
}

unint64_t sub_1ABC1F9D8()
{
  result = qword_1EB4D58D0;
  if (!qword_1EB4D58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58D0);
  }

  return result;
}

unint64_t sub_1ABC1FA30()
{
  result = qword_1EB4D58D8;
  if (!qword_1EB4D58D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58D8);
  }

  return result;
}

unint64_t sub_1ABC1FA88()
{
  result = qword_1EB4D58E0;
  if (!qword_1EB4D58E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58E0);
  }

  return result;
}

_BYTE *sub_1ABC1FB24(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1ABC1FC20(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABC1FCE0()
{
  result = qword_1EB4D58E8;
  if (!qword_1EB4D58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58E8);
  }

  return result;
}

unint64_t sub_1ABC1FD38()
{
  result = qword_1EB4D58F0;
  if (!qword_1EB4D58F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58F0);
  }

  return result;
}

unint64_t sub_1ABC1FD90()
{
  result = qword_1EB4D58F8;
  if (!qword_1EB4D58F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D58F8);
  }

  return result;
}

unint64_t sub_1ABC1FDE8()
{
  result = qword_1EB4D5900;
  if (!qword_1EB4D5900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5900);
  }

  return result;
}

unint64_t sub_1ABC1FE40()
{
  result = qword_1EB4D5908;
  if (!qword_1EB4D5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5908);
  }

  return result;
}

unint64_t sub_1ABC1FE98()
{
  result = qword_1EB4D5910;
  if (!qword_1EB4D5910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5910);
  }

  return result;
}

unint64_t sub_1ABC1FEF0()
{
  result = qword_1EB4D5918;
  if (!qword_1EB4D5918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5918);
  }

  return result;
}

unint64_t sub_1ABC1FF48()
{
  result = qword_1EB4D5920;
  if (!qword_1EB4D5920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5920);
  }

  return result;
}

unint64_t sub_1ABC1FFA0()
{
  result = qword_1EB4D5928;
  if (!qword_1EB4D5928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5928);
  }

  return result;
}

unint64_t sub_1ABC1FFF8()
{
  result = qword_1EB4D5930;
  if (!qword_1EB4D5930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5930);
  }

  return result;
}

unint64_t sub_1ABC20050()
{
  result = qword_1EB4D5938;
  if (!qword_1EB4D5938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5938);
  }

  return result;
}

unint64_t sub_1ABC200A8()
{
  result = qword_1EB4D5940;
  if (!qword_1EB4D5940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5940);
  }

  return result;
}

uint64_t sub_1ABC20104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_1ABA8F224(sub_1ABC20128, 0);
}

uint64_t sub_1ABC20128()
{
  sub_1ABA8C008();
  v1 = v0[6];
  sub_1ABD3F148();

  v2 = v1;

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1ABC20210;
  v4 = sub_1ABA90084(v0[4]);

  return sub_1ABC229F8(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1ABC20210()
{
  sub_1ABA7BBF8();
  v3 = v2;
  sub_1ABA7BC10();
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;

  sub_1ABA82A20();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1ABC20318(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001ABF89240 == a2;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001ABF89260 == a2;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65707954676174 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

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

uint64_t sub_1ABC20438(char a1)
{
  if (!a1)
  {
    return 0xD000000000000015;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x65707954676174;
}

uint64_t sub_1ABC2049C(void *a1)
{
  v3 = v1;
  v5 = sub_1ABAD219C(&qword_1EB4D5988, &qword_1ABF4C1A8);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC23C40();
  sub_1ABF252E4();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  sub_1ABA9A43C(v11, v12, &v21);
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v20 = 1;
    sub_1ABA9A43C(v13, v14, &v20);
    v15 = v3[4];
    v16 = v3[5];
    v19 = 2;
    sub_1ABA9A43C(v15, v16, &v19);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1ABC205F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D5980, &qword_1ABF4C1A0);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC23C40();
  sub_1ABF252C4();
  if (v2)
  {
    return sub_1ABA84B54(a1);
  }

  v27 = 0;
  v11 = sub_1ABF24E14();
  v24 = v12;
  v26 = 1;
  v22 = sub_1ABF24E14();
  v23 = v13;
  v25 = 2;
  v14 = sub_1ABF24E14();
  v15 = v10;
  v17 = v16;
  (*(v7 + 8))(v15, v5);
  result = sub_1ABA84B54(a1);
  v19 = v24;
  *a2 = v11;
  a2[1] = v19;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v14;
  a2[5] = v17;
  return result;
}

uint64_t sub_1ABC20820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC20318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC20848(uint64_t a1)
{
  v2 = sub_1ABC23C40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC20884(uint64_t a1)
{
  v2 = sub_1ABC23C40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1ABC208C0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1ABC205F4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1ABC2091C()
{
  sub_1ABA8C008();
  v3 = v2;
  v1[11] = v4;
  v1[12] = v0;
  v1[10] = v2;
  v1[13] = *v0;
  swift_defaultActor_initialize();
  v5 = v3[2];
  v6 = v3[3];
  v8 = *v3;
  v7 = v3[1];
  v1[14] = v6;
  v1[15] = v7;
  v9 = sub_1ABAA5808();
  v1[16] = v9;
  *v9 = v1;
  v9[1] = sub_1ABC20A1C;

  return v11(v5, v6, v8, v7, 0);
}

uint64_t sub_1ABC20A1C()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 136) = v4;
  *(v2 + 144) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC20B20()
{
  sub_1ABA8C008();
  v1 = *(v0 + 136);
  if (!v1)
  {
    v4 = *(v0 + 80);

    *(v0 + 32) = *(v4 + 32);
    sub_1ABAFEEA0(v0 + 32);
    sub_1ABC1F9D8();
    swift_allocError();
    swift_willThrow();
    swift_defaultActor_destroy();

    sub_1ABA7D2D8();
    swift_deallocPartialClassInstance();
    sub_1ABA7BBE0();

    __asm { BRAA            X1, X16 }
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 80);
  *(v2 + 128) = v1;
  *(v0 + 48) = *(v3 + 32);
  *(v2 + 136) = *(v3 + 32);

  sub_1ABB3E558(v0 + 48, v0 + 64);

  sub_1ABAFEEA0(v0 + 48);
  *(v2 + 112) = 0;
  *(v2 + 120) = 1;

  return MEMORY[0x1EEE6DFA0](sub_1ABC20C90, v2, 0);
}

uint64_t sub_1ABC20C90()
{
  sub_1ABA7BBF8();

  sub_1ABA82A20();
  v2 = *(v0 + 96);

  return v1(v2);
}

uint64_t sub_1ABC20CFC()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 80);

  *(v0 + 16) = *(v1 + 32);
  sub_1ABAFEEA0(v0 + 16);
  swift_defaultActor_destroy();

  sub_1ABA7D2D8();
  swift_deallocPartialClassInstance();
  sub_1ABA7BBE0();

  return v2();
}

uint64_t sub_1ABC20DA4(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 720) = v3;
  *(v4 + 712) = a3;
  *(v4 + 704) = a1;
  *(v4 + 728) = *a2;
  return sub_1ABA8F224(sub_1ABC20DD4, v3);
}

uint64_t sub_1ABC20DD4()
{
  v1 = COERCE_DOUBLE(sub_1ABAD58F0(3, v0[92]));
  if ((v2 & 1) != 0 || v1 >= 0.95)
  {
    if (qword_1EB4CE7C0 != -1)
    {
      sub_1ABA7BFD0(&qword_1EB4CE7C0);
    }

    v9 = sub_1ABF237F4();
    sub_1ABA7AA24(v9, qword_1EB4CE7C8);
    v10 = sub_1ABF237D4();
    v11 = sub_1ABF24644();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1ABA78000, v10, v11, "[ETInferenceService] Skipping model prediction, probability of self too high.", v12, 2u);
      sub_1ABA7BC34();
    }

    v13 = v0[90];
    v14 = v0[88];

    v16 = *(v13 + 136);
    v15 = *(v13 + 144);
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = v16;
    *(v14 + 24) = v15;
    *(v14 + 32) = 0;
    *(v14 + 40) = 1;
    sub_1ABA82A20();
    v19 = v17;

    return v19();
  }

  else
  {
    v3 = v0[92];
    v4 = v0[91];
    v5 = v0[90];
    v6 = v0[89];
    v7 = swift_allocObject();
    v0[93] = v7;
    v7[2] = v5;
    v7[3] = v4;
    v7[4] = v3;
    v7[5] = v6;

    swift_unknownObjectRetain();

    swift_asyncLet_begin();
    v8 = sub_1ABA80948();

    return MEMORY[0x1EEE6DEC0](v8);
  }
}

uint64_t sub_1ABC20FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 + 752) = v14;
  if (v14)
  {
    return MEMORY[0x1EEE6DEB0](v15 + 16, v15 + 696, sub_1ABC2121C, v15 + 656, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    return sub_1ABA8F224(sub_1ABC21024, *(v15 + 720));
  }
}

uint64_t sub_1ABC21024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v38 = v14;
  v15 = v14[87];
  if (qword_1EB4CE7C0 != -1)
  {
    sub_1ABA7BFD0(&qword_1EB4CE7C0);
  }

  v16 = sub_1ABF237F4();
  sub_1ABA7AA24(v16, qword_1EB4CE7C8);
  v17 = sub_1ABF237D4();
  v18 = sub_1ABF24654();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v37 = v20;
    *v19 = 136315138;
    v21 = sub_1ABF24314();
    v23 = sub_1ABADD6D8(v21, v22, &v37);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_1ABA78000, v17, v18, "ET Model prediction: %s", v19, 0xCu);
    sub_1ABA84B54(v20);
    sub_1ABA7BC34();
    sub_1ABA7BC34();
  }

  v24 = v14[90];
  v25 = v14[88];
  v27 = *(v24 + 136);
  v26 = *(v24 + 144);
  *v25 = v15;
  *(v25 + 8) = v15;
  *(v25 + 16) = v27;
  *(v25 + 24) = v26;
  *(v25 + 32) = 0;
  *(v25 + 40) = 1;

  v28 = sub_1ABA80948();

  return MEMORY[0x1EEE6DEB0](v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1ABC211C0()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABC21234()
{
  sub_1ABA7BBF8();

  sub_1ABA7BBE0();

  return v0();
}

uint64_t sub_1ABC21290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_1ABC21348;

  return sub_1ABC2147C(a2, a3);
}

uint64_t sub_1ABC21348()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    __asm { BRAA            X1, X16 }
  }

  *(v5 + 32) = v3;
  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC2147C(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1ABC2149C, 0, 0);
}

uint64_t sub_1ABC2149C()
{
  sub_1ABA7BBF8();
  v0[10] = *(v0[8] + 128);
  v1 = sub_1ABAA5808();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_1ABC21538;
  v2 = sub_1ABA90084(v0[9]);

  return v4(v2);
}

uint64_t sub_1ABC21538()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC2163C()
{
  sub_1ABA8C008();
  v1 = *(v0 + 96);
  swift_unknownObjectRetain();
  v2 = sub_1ABF23BD4();
  v3 = [v1 featureValueForName_];
  swift_unknownObjectRelease();

  if (v3 && (v4 = [v3 dictionaryValue], v3, sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98), v5 = sub_1ABF23974(), v4, *(v0 + 56) = 1, sub_1ABF249F4(), v6 = sub_1ABAD5744(v0 + 16, v5), , sub_1ABAFDC60(v0 + 16), v6))
  {
    [v6 doubleValue];
    v8 = v7;
    swift_unknownObjectRelease();

    sub_1ABA7BBE0();
    v10.n128_u64[0] = v8;
  }

  else
  {
    sub_1ABC1FA30();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_1ABA7BBE0();
  }

  return v9(v10);
}

uint64_t sub_1ABC21814()
{
  if (qword_1EB4CE7C0 != -1)
  {
    sub_1ABA7BFD0(&qword_1EB4CE7C0);
  }

  v1 = *(v0 + 104);
  v2 = sub_1ABF237F4();
  sub_1ABA7AA24(v2, qword_1EB4CE7C8);

  v3 = v1;
  v4 = sub_1ABF237D4();
  v5 = sub_1ABF24664();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    v11 = [*(v8 + 16) modelDescription];
    *(v9 + 4) = v11;
    *v10 = v11;
    *(v9 + 12) = 2112;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v13;
    v10[1] = v13;
    _os_log_impl(&dword_1ABA78000, v4, v5, "[ETInferenceService] Failed to generate predictions for %@: %@", v9, 0x16u);
    sub_1ABAD219C(&unk_1EB4D57F0, &qword_1ABF390C0);
    swift_arrayDestroy();
    sub_1ABA7BC34();
    sub_1ABA7BC34();
  }

  sub_1ABC1FA30();
  swift_allocError();
  *v14 = 0;
  swift_willThrow();

  sub_1ABA7BBE0();

  return v15();
}

uint64_t sub_1ABC21A08()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1ABC21A38()
{
  sub_1ABC21A08();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1ABC21A8C(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1ABA7FDA0;

  return sub_1ABC20DA4(a1, a2, a3);
}

uint64_t sub_1ABC21B40()
{
  sub_1ABA7BC04();
  v2 = *(v1 + 40);
  v3 = *(v1 + 56);
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  v4 = *(v1 + 72);
  *(v0 + 80) = v3;
  *(v0 + 96) = v2;
  *(v0 + 48) = v4;
  *(v0 + 64) = v4;
  type metadata accessor for EntityTaggingMLModelInferenceServiceDefinition.Runner();
  swift_allocObject();
  sub_1ABB3E558(v0 + 96, v0 + 112);
  sub_1ABB3E558(v0 + 80, v0 + 128);
  sub_1ABB3E558(v0 + 64, v0 + 144);

  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_1ABC21C40;

  return sub_1ABC2091C();
}

uint64_t sub_1ABC21C40()
{
  sub_1ABA7BBF8();
  v3 = v2;
  sub_1ABA7BC10();
  v4 = *v1;
  sub_1ABA7BBC0();
  *v5 = v4;

  sub_1ABA82A20();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1ABC21D4C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1ABC21DEC;

  return sub_1ABC21B40();
}

uint64_t sub_1ABC21DEC()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t EntityTaggingMLModelInferenceServiceRunEvent.tagType.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1ABC21F3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707954676174 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABC2200C(char a1)
{
  if (a1)
  {
    return 0x65707954676174;
  }

  else
  {
    return 0x6E656469666E6F63;
  }
}

uint64_t sub_1ABC22050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABC21F3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABC22078(uint64_t a1)
{
  v2 = sub_1ABC22260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABC220B4(uint64_t a1)
{
  v2 = sub_1ABC22260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EntityTaggingMLModelInferenceServiceRunEvent.encode(to:)(void *a1)
{
  v4 = sub_1ABAD219C(&qword_1EB4D5948, &qword_1ABF4BE30);
  sub_1ABA7BB64();
  v6 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  v11 = *(v1 + 8);
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC22260();
  sub_1ABF252E4();
  v13 = 0;
  sub_1ABF24F54();
  if (!v2)
  {
    v12 = 1;
    sub_1ABF24F34();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1ABC22260()
{
  result = qword_1EB4D5950;
  if (!qword_1EB4D5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5950);
  }

  return result;
}

uint64_t EntityTaggingMLModelInferenceServiceRunEvent.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  v5 = sub_1ABAD219C(&qword_1EB4D5958, &qword_1ABF4BE38);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-v9];
  sub_1ABA93E20(a1, a1[3]);
  sub_1ABC22260();
  sub_1ABF252C4();
  if (!v2)
  {
    v17[15] = 0;
    sub_1ABF24E34();
    v12 = v11;
    v17[14] = 1;
    v14 = sub_1ABF24E14();
    v16 = v15;
    (*(v7 + 8))(v10, v5);
    *a2 = v12;
    *(a2 + 1) = v14;
    *(a2 + 2) = v16;
  }

  return sub_1ABA84B54(a1);
}

unint64_t sub_1ABC224A4()
{
  result = qword_1EB4CEA18;
  if (!qword_1EB4CEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA18);
  }

  return result;
}

unint64_t sub_1ABC224F8()
{
  result = qword_1EB4CEA20;
  if (!qword_1EB4CEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CEA20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingMLModelInferenceServiceRunEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABC226A0()
{
  result = qword_1EB4D5960;
  if (!qword_1EB4D5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5960);
  }

  return result;
}

unint64_t sub_1ABC226F8()
{
  result = qword_1EB4CE9C0;
  if (!qword_1EB4CE9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9C0);
  }

  return result;
}

unint64_t sub_1ABC22754()
{
  result = qword_1EB4CE9B8;
  if (!qword_1EB4CE9B8)
  {
    type metadata accessor for EntityTaggingMLModelInferenceServiceDefinition.Runner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9B8);
  }

  return result;
}

uint64_t sub_1ABC227D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC22810()
{
  result = qword_1EB4CE9C8;
  if (!qword_1EB4CE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9C8);
  }

  return result;
}

unint64_t sub_1ABC22864()
{
  result = qword_1EB4CE9D0;
  if (!qword_1EB4CE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9D0);
  }

  return result;
}

unint64_t sub_1ABC228BC()
{
  result = qword_1EB4CE990;
  if (!qword_1EB4CE990)
  {
    sub_1ABAE2850(&qword_1EB4D5968, &unk_1ABF4C0B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE990);
  }

  return result;
}

unint64_t sub_1ABC22920(uint64_t a1)
{
  result = sub_1ABC22754();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC2294C()
{
  result = qword_1EB4D5970;
  if (!qword_1EB4D5970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5970);
  }

  return result;
}

unint64_t sub_1ABC229A4()
{
  result = qword_1EB4D5978;
  if (!qword_1EB4D5978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5978);
  }

  return result;
}

uint64_t sub_1ABC229F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1ABC22A20, 0, 0);
}

uint64_t sub_1ABC22A20()
{
  v21 = v0;
  v1 = v0[11];
  v2 = *(*(v0[12] + 16) + 16);
  swift_unownedRetainStrong();
  sub_1ABA93E64(v2 + 32, (v0 + 2));

  v3 = type metadata accessor for AssetRegistry();
  v4 = v0[5];
  v5 = v0[6];
  v6 = sub_1ABA93E20(v0 + 2, v4);
  v19[0] = sub_1ABAF31C0;
  v19[1] = 0;
  v20 = 0;
  v7 = *(v4 - 8);
  v8 = swift_task_alloc();
  (*(v7 + 16))(v8, v6, v4);
  v9 = sub_1ABA94614(v8, v19, v3, v4, *(v5 + 8));
  v0[13] = v9;

  v10 = v1;
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_1ABC22BD8;
  v12 = v0[11];
  v13 = v0[12];
  v14 = v0[9];
  v15 = v0[10];
  v16 = v0[7];
  v17 = v0[8];

  return sub_1ABC22DE4(v9, v16, v17, v14, v15, v12, v13);
}

uint64_t sub_1ABC22BD8()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v5 + 120) = v0;

  if (!v0)
  {
    *(v5 + 128) = v3;
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC22CFC()
{
  sub_1ABA7BBF8();
  v1 = v0[11];

  sub_1ABA84B54(v0 + 2);
  sub_1ABA82A20();
  v3 = v0[16];

  return v2(v3);
}

uint64_t sub_1ABC22D78()
{
  sub_1ABA7BBF8();
  v1 = *(v0 + 88);

  sub_1ABA84B54((v0 + 16));
  sub_1ABA7BBE0();

  return v2();
}

uint64_t sub_1ABC22DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a3;
  v7[4] = a5;
  v7[2] = a1;
  v8 = sub_1ABF21CF4();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  sub_1ABAD219C(&qword_1EB4D5990, &qword_1ABF4C1D8);
  v7[10] = swift_task_alloc();
  v7[11] = type metadata accessor for AssetRegistryAsset(0);
  v7[12] = swift_task_alloc();
  v9 = swift_task_alloc();
  v7[13] = v9;
  *v9 = v7;
  v9[1] = sub_1ABC22F88;

  return AssetRegistry.asset(for:in:)();
}

uint64_t sub_1ABC22F88()
{
  sub_1ABA7BC04();
  sub_1ABA7BC10();
  v3 = v2;
  sub_1ABA7D4E0();
  *v4 = v3;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (v0)
  {
  }

  else
  {
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC230D0()
{
  sub_1ABA8C008();
  v1 = v0[10];
  if (sub_1ABA7E1E0(v1, 1, v0[11]) == 1)
  {
    v2 = v0[5];

    sub_1ABC23C94(v1);

    sub_1ABA82A20();

    return v3(0);
  }

  else
  {
    v5 = v0[5];
    sub_1ABC23CFC(v1, v0[12]);
    v6 = sub_1ABA7D2D8();
    v7(v6);
    type metadata accessor for InferenceMLModel();
    swift_allocObject();
    v8 = v5;
    v9 = swift_task_alloc();
    v0[15] = v9;
    *v9 = v0;
    v9[1] = sub_1ABC232C8;
    v10 = sub_1ABA90084(v0[9]);

    return sub_1ABC234F8(v10, v11, v12);
  }
}

uint64_t sub_1ABC23248()
{
  sub_1ABA7BC04();

  sub_1ABA7BBE0();

  return v1();
}

uint64_t sub_1ABC232C8()
{
  sub_1ABA7BC04();
  v3 = v2;
  sub_1ABA7BC10();
  v5 = v4;
  sub_1ABA7D4E0();
  *v6 = v5;
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v5 + 128) = v0;

  if (!v0)
  {
    *(v5 + 136) = v3;
  }

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC233D8()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);

  sub_1ABC23D60(v2);

  sub_1ABA82A20();

  return v3(v1);
}

uint64_t sub_1ABC2346C()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 96);

  sub_1ABC23D60(v1);

  sub_1ABA7BBE0();

  return v2();
}

uint64_t sub_1ABC234F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a2;
  v4[10] = v3;
  v4[8] = a1;
  v4[11] = *v3;

  return MEMORY[0x1EEE6DFA0](sub_1ABC23590, 0, 0);
}

uint64_t sub_1ABC23590()
{
  sub_1ABA7BBF8();
  v1 = v0[9];
  sub_1ABAFF390(0, &qword_1ED86B928, 0x1E695FE90);
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_1ABC236DC;
    v3 = sub_1ABA90084(v0[8]);
    v4 = v1;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695FEB0]) init];
    v0[14] = v5;
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_1ABC237E0;
    v3 = sub_1ABA90084(v0[8]);
    v4 = v5;
  }

  return MEMORY[0x1EEDBB3B0](v3, v4);
}

uint64_t sub_1ABC236DC()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v2[2] = v1;
  v2[3] = v4;
  v2[4] = v0;
  v5 = *v1;
  sub_1ABA7BBC0();
  *v6 = v5;
  *(v7 + 104) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC237E0()
{
  sub_1ABA7BBF8();
  sub_1ABA7BC10();
  sub_1ABA7D4E0();
  *v3 = v2;
  v2[5] = v1;
  v2[6] = v4;
  v2[7] = v0;
  v6 = *(v5 + 112);
  v7 = *v1;
  sub_1ABA7BBC0();
  *v8 = v7;
  *(v9 + 128) = v0;

  sub_1ABA814B0();

  return MEMORY[0x1EEE6DFA0]();
}

uint64_t sub_1ABC238FC()
{
  sub_1ABA7BC04();

  v1 = *(v0 + 24);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  sub_1ABF21CF4();
  sub_1ABA7D1F8();
  (*(v4 + 8))(v3);
  *(v2 + 16) = v1;
  sub_1ABA82A20();
  v6 = *(v0 + 80);

  return v5(v6);
}

uint64_t sub_1ABC239A0()
{
  sub_1ABA7BC04();

  v1 = *(v0 + 64);
  sub_1ABF21CF4();
  sub_1ABA7D1F8();
  (*(v2 + 8))(v1);
  sub_1ABA7D2D8();
  swift_deallocPartialClassInstance();
  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABC23A48()
{
  sub_1ABA7BC04();
  v1 = v0[6];
  v2 = v0[10];
  v3 = v0[8];
  sub_1ABF21CF4();
  sub_1ABA7D1F8();
  (*(v4 + 8))(v3);
  *(v2 + 16) = v1;
  sub_1ABA82A20();
  v6 = v0[10];

  return v5(v6);
}

uint64_t sub_1ABC23AE4()
{
  sub_1ABA7BC04();
  v1 = *(v0 + 64);
  sub_1ABF21CF4();
  sub_1ABA7D1F8();
  (*(v2 + 8))(v1);
  sub_1ABA7D2D8();
  swift_deallocPartialClassInstance();
  sub_1ABA7BBE0();

  return v3();
}

uint64_t sub_1ABC23B84()
{
  sub_1ABA8C008();
  v3 = v2;
  v4 = v0[2];
  v5 = v0[3];
  v7 = v0[4];
  v6 = v0[5];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1ABA7FDA0;

  return sub_1ABC21290(v3, v4, v5, v7, v6);
}

unint64_t sub_1ABC23C40()
{
  result = qword_1EB4CE9E8;
  if (!qword_1EB4CE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9E8);
  }

  return result;
}

uint64_t sub_1ABC23C94(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D5990, &qword_1ABF4C1D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABC23CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetRegistryAsset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABC23D60(uint64_t a1)
{
  v2 = type metadata accessor for AssetRegistryAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingMLModelInferenceServiceDefinition.ConfigParameters.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABC23EAC()
{
  result = qword_1EB4D5998;
  if (!qword_1EB4D5998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D5998);
  }

  return result;
}

unint64_t sub_1ABC23F04()
{
  result = qword_1EB4CE9D8;
  if (!qword_1EB4CE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9D8);
  }

  return result;
}

unint64_t sub_1ABC23F5C()
{
  result = qword_1EB4CE9E0;
  if (!qword_1EB4CE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE9E0);
  }

  return result;
}

uint64_t static EntityTaggingModelUtility.entityTagTypeFromUnlocalizedLabel(label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_1ABF23C04();
  sub_1ABA7D780();
  v9 = v9 && v8 == a2;
  if (v9)
  {
    v11 = 5;
    goto LABEL_8;
  }

  sub_1ABA8F348(v7);
  result = sub_1ABA7F240();
  if (v3)
  {
    v11 = 5;
    goto LABEL_9;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v13 == a2)
  {
    v11 = 6;
    goto LABEL_8;
  }

  sub_1ABA8F348(v12);
  result = sub_1ABA7F240();
  if (v3)
  {
    v11 = 6;
    goto LABEL_9;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v16 == a2)
  {
    v11 = 7;
    goto LABEL_8;
  }

  sub_1ABA8F348(v15);
  result = sub_1ABA7F240();
  if (v3)
  {
    v11 = 7;
    goto LABEL_9;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v19 == a2)
  {
    goto LABEL_56;
  }

  sub_1ABA8F348(v18);
  result = sub_1ABA7F240();
  if (v3)
  {
LABEL_29:
    v11 = 9;
    goto LABEL_9;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v22 == a2)
  {
    goto LABEL_56;
  }

  sub_1ABA8F348(v21);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_29;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v25 == a2)
  {
    goto LABEL_56;
  }

  sub_1ABA8F348(v24);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_29;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v28 == a2)
  {
    goto LABEL_56;
  }

  sub_1ABA8F348(v27);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_29;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v31 == a2)
  {
LABEL_56:
    v11 = 9;
    goto LABEL_8;
  }

  sub_1ABA8F348(v30);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_29;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v34 == a2)
  {
    goto LABEL_93;
  }

  sub_1ABA8F348(v33);
  result = sub_1ABA7F240();
  if (v3)
  {
LABEL_55:
    v11 = 10;
    goto LABEL_9;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v37 == a2)
  {
    goto LABEL_93;
  }

  sub_1ABA8F348(v36);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_55;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v40 == a2)
  {
    goto LABEL_93;
  }

  sub_1ABA8F348(v39);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_55;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v43 == a2)
  {
    goto LABEL_93;
  }

  sub_1ABA8F348(v42);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_55;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v46 == a2)
  {
LABEL_93:
    v11 = 10;
    goto LABEL_8;
  }

  sub_1ABA8F348(v45);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_55;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v49 == a2)
  {
    goto LABEL_94;
  }

  sub_1ABA8F348(v48);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_92;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v52 == a2)
  {
    goto LABEL_94;
  }

  sub_1ABA8F348(v51);
  result = sub_1ABA7F240();
  if (v3)
  {
LABEL_92:
    v11 = 8;
    goto LABEL_9;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v55 == a2)
  {
LABEL_94:
    v11 = 8;
    goto LABEL_8;
  }

  sub_1ABA8F348(v54);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_92;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v58 == a2)
  {
    goto LABEL_121;
  }

  sub_1ABA8F348(v57);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_120;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v61 == a2)
  {
    goto LABEL_121;
  }

  sub_1ABA8F348(v60);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_120;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v64 == a2)
  {
    goto LABEL_121;
  }

  sub_1ABA8F348(v63);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_120;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v67 == a2)
  {
    goto LABEL_121;
  }

  sub_1ABA8F348(v66);
  result = sub_1ABA7F240();
  if (v3)
  {
LABEL_120:
    v11 = 18;
    goto LABEL_9;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v70 == a2)
  {
LABEL_121:
    v11 = 18;
    goto LABEL_8;
  }

  sub_1ABA8F348(v69);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_120;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v73 == a2)
  {
    v11 = 19;
    goto LABEL_8;
  }

  sub_1ABA8F348(v72);
  result = sub_1ABA7F240();
  if (v3)
  {
    v11 = 19;
    goto LABEL_9;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v76 == a2)
  {
    v11 = 20;
    goto LABEL_8;
  }

  sub_1ABA8F348(v75);
  result = sub_1ABA7F240();
  if (v3)
  {
    v11 = 20;
    goto LABEL_9;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v79 == a2)
  {
    v11 = 15;
    goto LABEL_8;
  }

  sub_1ABA8F348(v78);
  result = sub_1ABA7F240();
  if (v3)
  {
    v11 = 15;
    goto LABEL_9;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v82 == a2)
  {
    v11 = 16;
    goto LABEL_8;
  }

  sub_1ABA8F348(v81);
  result = sub_1ABA7F240();
  if (v3)
  {
    v11 = 16;
    goto LABEL_9;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v85 == a2)
  {
    v11 = 17;
    goto LABEL_8;
  }

  sub_1ABA8F348(v84);
  result = sub_1ABA7F240();
  if (v3)
  {
    v11 = 17;
    goto LABEL_9;
  }

  result = 0x696D61463C21245FLL;
  if (a1 == 0x696D61463C21245FLL && a2 == 0xEE005F24213E796CLL)
  {
    goto LABEL_232;
  }

  result = sub_1ABF25054();
  if (result)
  {
    goto LABEL_232;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v89 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348(v88);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v92 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348(v91);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v95 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348(v94);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v98 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348(v97);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v101 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348(v100);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v104 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348(v103);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v107 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348(v106);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v110 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348(v109);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v113 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348(v112);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v116 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348(v115);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v119 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348(v118);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v122 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348(v121);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v125 == a2)
  {
    goto LABEL_233;
  }

  sub_1ABA8F348(v124);
  result = sub_1ABA7F240();
  if (v3)
  {
LABEL_232:
    v11 = 4;
    goto LABEL_9;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v128 == a2)
  {
LABEL_233:
    v11 = 4;
    goto LABEL_8;
  }

  sub_1ABA8F348(v127);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_232;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v131 == a2)
  {
    goto LABEL_250;
  }

  sub_1ABA8F348(v130);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_249;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v134 == a2)
  {
    goto LABEL_250;
  }

  sub_1ABA8F348(v133);
  result = sub_1ABA7F240();
  if (v3)
  {
LABEL_249:
    v11 = 21;
    goto LABEL_9;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v137 == a2)
  {
LABEL_250:
    v11 = 21;
    goto LABEL_8;
  }

  sub_1ABA8F348(v136);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_249;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v140 == a2)
  {
    goto LABEL_262;
  }

  sub_1ABA8F348(v139);
  result = sub_1ABA7F240();
  if (v3)
  {
LABEL_261:
    v11 = 23;
    goto LABEL_9;
  }

  sub_1ABF23C04();
  sub_1ABA7D780();
  if (v9 && v143 == a2)
  {
LABEL_262:
    v11 = 23;
    goto LABEL_8;
  }

  sub_1ABA8F348(v142);
  result = sub_1ABA7F240();
  if (v3)
  {
    goto LABEL_261;
  }

  v145 = sub_1ABF23C04();
  v11 = 23;
  if (v145 == a1 && v146 == a2)
  {
LABEL_8:

    goto LABEL_9;
  }

  v148 = sub_1ABA8F348(v145);

  if (v148)
  {
    v11 = 23;
  }

  else
  {
    v11 = 0;
  }

LABEL_9:
  *a3 = v11;
  return result;
}

void *static EntityTaggingModelUtility.normalizeEntityTagsDictionary(input:)(void *a1)
{

  v5 = 0;
  while (2)
  {
    v6 = byte_1F2091D90[v5++ + 32];
    v7 = sub_1ABA9750C() & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    switch(v6)
    {
      case 1:
        v7 = sub_1ABA80AD8();
        break;
      case 2:
        v7 = sub_1ABA9F8F8();
        break;
      case 3:
        v7 = sub_1ABAA34DC();
        break;
      case 4:
        v1 = 0xE600000000000000;
        v7 = 0x796C696D6166;
        break;
      case 5:
        v1 = 0xE600000000000000;
        v7 = sub_1ABA8AD0C();
        break;
      case 6:
        v7 = sub_1ABA81840();
        v1 = 0xE600000000000000;
        break;
      case 7:
        v17 = sub_1ABAA2910();
        goto LABEL_28;
      case 8:
        v7 = sub_1ABA7C18C();
        break;
      case 9:
        v16 = sub_1ABA8C098();
        goto LABEL_26;
      case 10:
        v17 = sub_1ABAA2604();
LABEL_28:
        v7 = v17 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        break;
      case 11:
        v7 = sub_1ABA7F228();
        break;
      case 12:
        v7 = sub_1ABA8E8D8();
        goto LABEL_23;
      case 13:
        v7 = sub_1ABA838C8();
LABEL_23:
        v1 = 0xEB00000000726568;
        break;
      case 14:
        v15 = sub_1ABA9940C();
        goto LABEL_19;
      case 15:
        v7 = sub_1ABA8A360();
        break;
      case 16:
        v7 = sub_1ABAA5828();
        break;
      case 17:
        v18 = sub_1ABA907CC();
        goto LABEL_33;
      case 18:
        v16 = sub_1ABA949FC();
LABEL_26:
        v7 = v16 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        break;
      case 19:
        v7 = sub_1ABAA38CC();
        break;
      case 20:
        v15 = sub_1ABA90090();
LABEL_19:
        v7 = v15 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
        break;
      case 21:
        v1 = 0xE600000000000000;
        v7 = sub_1ABA9FBC0();
        break;
      case 22:
        v7 = sub_1ABA97980();
        v1 = 0x80000001ABF81E70;
        break;
      case 23:
        v18 = sub_1ABAA607C();
LABEL_33:
        v7 = v18 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        break;
      case 24:
        v7 = sub_1ABA93514();
        break;
      case 25:
        v7 = sub_1ABA7D764();
        break;
      case 26:
        v1 = 0xE600000000000000;
        v7 = sub_1ABA9FCE4();
        break;
      case 27:
        v14 = 1699772781;
        goto LABEL_36;
      case 28:
        v7 = sub_1ABAA0A28();
        break;
      case 29:
        v14 = 1631811949;
LABEL_36:
        v7 = v14 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
        break;
      default:
        break;
    }

    if (a1[2])
    {
      sub_1ABA94FC8(v7, v1, v8, v9, v10, v11, v12, v13, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
      sub_1ABAA22BC();
      if (v3)
      {
        sub_1ABAA1F4C();
        if (!(v26 ^ v27 | v25))
        {
          v28 = 0xE600000000000000;
          v29 = 0x666C6573796DLL;
          switch(v6)
          {
            case 0:
              v30 = sub_1ABA9750C();
              goto LABEL_120;
            case 1:
              v29 = sub_1ABA80AD8();
              goto LABEL_122;
            case 2:
              v28 = 0xE500000000000000;
              v29 = sub_1ABA9F8F8();
              goto LABEL_122;
            case 3:
              goto LABEL_122;
            case 4:
              v29 = 0x796C696D6166;
              goto LABEL_122;
            case 5:
              v29 = sub_1ABA8AD0C();
              goto LABEL_122;
            case 6:
              v29 = sub_1ABA81840();
              goto LABEL_122;
            case 7:
              v49 = 1752457574;
              goto LABEL_112;
            case 8:
              v29 = sub_1ABA7C18C();
              goto LABEL_122;
            case 9:
              v48 = sub_1ABA8C098();
              goto LABEL_110;
            case 10:
              v49 = 1953720691;
LABEL_112:
              v29 = v49 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
              goto LABEL_122;
            case 11:
              v29 = sub_1ABA7F228();
              goto LABEL_122;
            case 12:
              v29 = sub_1ABA8E8D8();
              goto LABEL_107;
            case 13:
              v29 = sub_1ABA838C8();
LABEL_107:
              v28 = 0xEB00000000726568;
              goto LABEL_122;
            case 14:
              v47 = sub_1ABA9940C();
              goto LABEL_103;
            case 15:
              v28 = 0xE500000000000000;
              v29 = sub_1ABA8A360();
              goto LABEL_122;
            case 16:
              v29 = sub_1ABAA5828();
              goto LABEL_122;
            case 17:
              v50 = sub_1ABA907CC();
              goto LABEL_117;
            case 18:
              v48 = sub_1ABA949FC();
LABEL_110:
              v29 = v48 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
              goto LABEL_122;
            case 19:
              v29 = sub_1ABAA38CC();
              goto LABEL_122;
            case 20:
              v47 = sub_1ABA90090();
LABEL_103:
              v29 = v47 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
              goto LABEL_122;
            case 21:
              v29 = sub_1ABA9FBC0();
              goto LABEL_122;
            case 22:
              v29 = sub_1ABA97980();
              v28 = 0x80000001ABF81E70;
              goto LABEL_122;
            case 23:
              v50 = sub_1ABAA607C();
LABEL_117:
              v29 = v50 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
              goto LABEL_122;
            case 24:
              v29 = sub_1ABA93514();
              goto LABEL_122;
            case 25:
              v29 = sub_1ABA7D764();
              goto LABEL_122;
            case 26:
              v29 = sub_1ABA9FCE4();
              goto LABEL_122;
            case 27:
              v30 = sub_1ABAA2CB4() & 0xFFFFFFFF0000FFFFLL | 0x65500000;
              goto LABEL_120;
            case 28:
              v28 = 0xE500000000000000;
              v29 = sub_1ABAA0A28();
              goto LABEL_122;
            case 29:
              v30 = sub_1ABAA2CB4() & 0xFFFFFFFF0000FFFFLL | 0x61430000;
LABEL_120:
              v29 = v30 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_122:
              if (!a1[2])
              {

LABEL_129:
                v67 = sub_1ABA977F0();
                sub_1ABA94FC8(v67, v68, v69, v70, v71, v72, v73, v74, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
                if (v75)
                {
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v146 = a1;
                  v3 = a1[3];
                  sub_1ABAD219C(&qword_1EB4D1FD8, &qword_1ABF4ACE0);
                  sub_1ABA8E24C();
                  sub_1ABA97FE0(v76, v77, v78);
                  sub_1ABA95858();
                  sub_1ABA96CA8(v79);

                  sub_1ABF24C84();
                }

                break;
              }

              sub_1ABA94FC8(v29, v28, v19, v20, v21, v22, v23, v24, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
              sub_1ABAA22BC();
              if ((v3 & 1) == 0)
              {
                goto LABEL_129;
              }

              v51 = *(a1[7] + 8 * isUniquelyReferenced_nonNull_native);
              LOBYTE(v3) = swift_isUniquelyReferenced_nonNull_native();
              v52 = sub_1ABA977F0();
              sub_1ABA94FC8(v52, v53, v54, v55, v56, v57, v58, v59, v145, a1, v147, v148, v149, v150, v151, v152, v153, v154);
              sub_1ABA7AD10();
              if (__OFADD__(v62, v63))
              {
                __break(1u);
LABEL_197:
                __break(1u);
LABEL_198:
                __break(1u);
LABEL_199:
                __break(1u);
LABEL_200:
                sub_1ABF25104();
                __break(1u);
LABEL_201:
                JUMPOUT(0);
              }

              v64 = v60;
              isUniquelyReferenced_nonNull_native = v61;
              sub_1ABAD219C(&qword_1EB4D1FD8, &qword_1ABF4ACE0);
              sub_1ABA8E24C();
              if (sub_1ABF24C64())
              {
                v65 = sub_1ABA94FC8(0x796C696D6166, 0xE600000000000000, v19, v20, v21, v22, v23, v24, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
                if ((isUniquelyReferenced_nonNull_native & 1) != (v66 & 1))
                {
                  goto LABEL_200;
                }

                v64 = v65;
              }

              a1 = v146;
              if (isUniquelyReferenced_nonNull_native)
              {
                *(v146[7] + 8 * v64) = v51;
              }

              else
              {
                sub_1ABA7F258(&v146[v64 >> 6]);
                v81 = (v80 + 16 * v64);
                *v81 = 0x796C696D6166;
                v81[1] = 0xE600000000000000;
                *(v146[7] + 8 * v64) = v51;
                v82 = v146[2];
                v27 = __OFADD__(v82, 1);
                v83 = v82 + 1;
                if (v27)
                {
                  goto LABEL_198;
                }

                v146[2] = v83;
              }

              break;
            default:
              goto LABEL_201;
          }
        }
      }
    }

    else
    {
    }

    v1 = 0xE500000000000000;
    v31 = 0x7465736E75;
    v32 = v6;
    switch(v6)
    {
      case 0:
        goto LABEL_80;
      case 1:
        v31 = sub_1ABA80AD8();
        goto LABEL_80;
      case 2:
        v31 = sub_1ABA9F8F8();
        goto LABEL_80;
      case 3:
        v31 = sub_1ABAA34DC();
        goto LABEL_80;
      case 4:
        v1 = 0xE600000000000000;
        v31 = 0x796C696D6166;
        goto LABEL_80;
      case 5:
        v1 = 0xE600000000000000;
        v31 = sub_1ABA8AD0C();
        goto LABEL_80;
      case 6:
        v31 = sub_1ABA81840();
        v1 = 0xE600000000000000;
        goto LABEL_80;
      case 7:
        v36 = sub_1ABAA2910();
        goto LABEL_70;
      case 8:
        v31 = sub_1ABA7C18C();
        goto LABEL_80;
      case 9:
        v35 = sub_1ABA8C098();
        goto LABEL_68;
      case 10:
        v36 = sub_1ABAA2604();
LABEL_70:
        v31 = v36 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
        goto LABEL_80;
      case 11:
        v31 = sub_1ABA7F228();
        goto LABEL_80;
      case 12:
        v31 = sub_1ABA8E8D8();
        goto LABEL_65;
      case 13:
        v31 = sub_1ABA838C8();
LABEL_65:
        v1 = 0xEB00000000726568;
        goto LABEL_80;
      case 14:
        v34 = sub_1ABA9940C();
        goto LABEL_61;
      case 15:
        v31 = sub_1ABA8A360();
        goto LABEL_80;
      case 16:
        v31 = sub_1ABAA5828();
        goto LABEL_80;
      case 17:
        v37 = sub_1ABA907CC();
        goto LABEL_75;
      case 18:
        v35 = sub_1ABA949FC();
LABEL_68:
        v31 = v35 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
        goto LABEL_80;
      case 19:
        v31 = sub_1ABAA38CC();
        goto LABEL_80;
      case 20:
        v34 = sub_1ABA90090();
LABEL_61:
        v31 = v34 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
        goto LABEL_80;
      case 21:
        v1 = 0xE600000000000000;
        v31 = sub_1ABA9FBC0();
        goto LABEL_80;
      case 22:
        v31 = sub_1ABA97980();
        v1 = 0x80000001ABF81E70;
        goto LABEL_80;
      case 23:
        v37 = sub_1ABAA607C();
LABEL_75:
        v31 = v37 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
        goto LABEL_80;
      case 24:
        v31 = sub_1ABA93514();
        goto LABEL_80;
      case 25:
        v31 = sub_1ABA7D764();
        goto LABEL_80;
      case 26:
        v1 = 0xE600000000000000;
        v31 = sub_1ABA9FCE4();
        goto LABEL_80;
      case 27:
        v33 = 1699772781;
        goto LABEL_78;
      case 28:
        v31 = sub_1ABAA0A28();
        goto LABEL_80;
      case 29:
        v33 = 1631811949;
LABEL_78:
        v31 = v33 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_80:
        if (a1[2])
        {
          v38 = v32;
          sub_1ABA94FC8(v31, v1, v19, v20, v21, v22, v23, v24, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
          sub_1ABAA22BC();
          if (v3)
          {
            sub_1ABAA1F4C();
            if (!(v26 ^ v27 | v25))
            {
              v1 = 0x80000001ABF81E70;
              v39 = sub_1ABA97980();
              switch(v38)
              {
                case 0:
                  v46 = sub_1ABA9750C();
                  goto LABEL_167;
                case 1:
                  v39 = sub_1ABA80AD8();
                  goto LABEL_169;
                case 2:
                  v1 = 0xE500000000000000;
                  v39 = sub_1ABA9F8F8();
                  goto LABEL_169;
                case 3:
                  v39 = sub_1ABAA34DC();
                  goto LABEL_169;
                case 4:
                  v1 = 0xE600000000000000;
                  v39 = 0x796C696D6166;
                  goto LABEL_169;
                case 5:
                  v1 = 0xE600000000000000;
                  v39 = sub_1ABA8AD0C();
                  goto LABEL_169;
                case 6:
                  v39 = sub_1ABA81840();
                  v1 = 0xE600000000000000;
                  goto LABEL_169;
                case 7:
                  v84 = sub_1ABAA2910();
                  goto LABEL_159;
                case 8:
                  v39 = sub_1ABA7C18C();
                  goto LABEL_169;
                case 9:
                  v87 = sub_1ABA8C098();
                  goto LABEL_162;
                case 10:
                  v84 = sub_1ABAA2604();
LABEL_159:
                  v39 = v84 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
                  goto LABEL_169;
                case 11:
                  v39 = sub_1ABA7F228();
                  goto LABEL_169;
                case 12:
                  v39 = sub_1ABA8E8D8();
                  goto LABEL_154;
                case 13:
                  v39 = sub_1ABA838C8();
LABEL_154:
                  v1 = 0xEB00000000726568;
                  goto LABEL_169;
                case 14:
                  v85 = sub_1ABA9940C();
                  goto LABEL_152;
                case 15:
                  v1 = 0xE500000000000000;
                  v39 = sub_1ABA8A360();
                  goto LABEL_169;
                case 16:
                  v39 = sub_1ABAA5828();
                  goto LABEL_169;
                case 17:
                  v86 = sub_1ABA907CC();
                  goto LABEL_164;
                case 18:
                  v87 = sub_1ABA949FC();
LABEL_162:
                  v39 = v87 & 0xFFFFFFFFFFFFLL | 0x72000000000000;
                  goto LABEL_169;
                case 19:
                  v39 = sub_1ABAA38CC();
                  goto LABEL_169;
                case 20:
                  v85 = sub_1ABA90090();
LABEL_152:
                  v39 = v85 & 0xFFFFFFFFFFFFLL | 0x64000000000000;
                  goto LABEL_169;
                case 21:
                  v1 = 0xE600000000000000;
                  v39 = sub_1ABA9FBC0();
                  goto LABEL_169;
                case 22:
                  goto LABEL_169;
                case 23:
                  v86 = sub_1ABAA607C();
LABEL_164:
                  v39 = v86 & 0xFFFFFFFFFFFFLL | 0x7265000000000000;
                  goto LABEL_169;
                case 24:
                  v39 = sub_1ABA93514();
                  goto LABEL_169;
                case 25:
                  v39 = sub_1ABA7D764();
                  goto LABEL_169;
                case 26:
                  v1 = 0xE600000000000000;
                  v39 = sub_1ABA9FCE4();
                  goto LABEL_169;
                case 27:
                  v46 = sub_1ABAA2CB4() & 0xFFFFFFFF0000FFFFLL | 0x65500000;
                  goto LABEL_167;
                case 28:
                  v1 = 0xE500000000000000;
                  v39 = sub_1ABAA0A28();
                  goto LABEL_169;
                case 29:
                  v46 = sub_1ABAA2CB4() & 0xFFFFFFFF0000FFFFLL | 0x61430000;
LABEL_167:
                  v39 = v46 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
LABEL_169:
                  if (!a1[2])
                  {

LABEL_178:
                    v117 = sub_1ABA9A458();
                    sub_1ABA94FC8(v117, v118, v119, v120, v121, v122, v123, v124, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
                    if (v125)
                    {
                      v1 = swift_isUniquelyReferenced_nonNull_native();
                      v146 = a1;
                      isUniquelyReferenced_nonNull_native = a1[3];
                      sub_1ABAD219C(&qword_1EB4D1FD8, &qword_1ABF4ACE0);
                      sub_1ABA8E24C();
                      sub_1ABF24C64();
                      sub_1ABA95858();

                      sub_1ABF24C84();
                    }

                    break;
                  }

                  v88 = sub_1ABA94FC8(v39, v1, v40, v41, v42, v43, v44, v45, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
                  isUniquelyReferenced_nonNull_native = v89;

                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    goto LABEL_178;
                  }

                  v90 = *(a1[7] + 8 * v88);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v91 = sub_1ABA9A458();
                  sub_1ABA94FC8(v91, v92, v93, v94, v95, v96, v97, v98, v145, a1, v147, v148, v149, v150, v151, v152, v153, v154);
                  sub_1ABA7AD10();
                  LOBYTE(v3) = v101 + v102;
                  if (__OFADD__(v101, v102))
                  {
                    goto LABEL_197;
                  }

                  v103 = v99;
                  v1 = v100;
                  sub_1ABAD219C(&qword_1EB4D1FD8, &qword_1ABF4ACE0);
                  sub_1ABA8E24C();
                  if (sub_1ABA97FE0(v104, v105, v106))
                  {
                    v107 = sub_1ABA9A458();
                    v115 = sub_1ABA94FC8(v107, v108, v109, v110, v111, v112, v113, v114, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154);
                    if ((v1 & 1) != (v116 & 1))
                    {
                      goto LABEL_200;
                    }

                    v103 = v115;
                  }

                  a1 = v146;
                  if (v1)
                  {
                    *(v146[7] + 8 * v103) = v90;
                  }

                  else
                  {
                    sub_1ABA7F258(&v146[v103 >> 6]);
                    v127 = (v126 + 16 * v103);
                    *v127 = 0xD000000000000010;
                    v127[1] = 0x80000001ABF81E70;
                    *(v146[7] + 8 * v103) = v90;
                    v128 = v146[2];
                    v27 = __OFADD__(v128, 1);
                    v129 = v128 + 1;
                    if (v27)
                    {
                      goto LABEL_199;
                    }

                    v146[2] = v129;
                  }

                  break;
                default:
                  goto LABEL_201;
              }
            }
          }
        }

        else
        {
        }

        if (v5 != 4)
        {
          continue;
        }

        v130 = sub_1ABA977F0();
        v131 = COERCE_DOUBLE(sub_1ABAD5984(v130));
        v133 = 0.0;
        if (v132)
        {
          v134 = 0.0;
        }

        else
        {
          v134 = v131;
        }

        v135 = sub_1ABA9A458();
        v136 = sub_1ABAD5984(v135);
        if (v137)
        {
          if (v134 >= 1.0 || v134 <= 0.96)
          {
            return a1;
          }

          goto LABEL_191;
        }

        v133 = *&v136;
        if (v134 < 1.0 && v134 > 0.96)
        {
LABEL_191:
          swift_isUniquelyReferenced_nonNull_native();
          v138 = sub_1ABA977F0();
          sub_1ABAFBCFC(v138, v139, v140);
        }

        if (v133 < 1.0 && v133 > 0.96)
        {
          swift_isUniquelyReferenced_nonNull_native();
          v141 = sub_1ABA9A458();
          sub_1ABAFBCFC(v141, v142, v143);
        }

        return a1;
      default:
        goto LABEL_201;
    }
  }
}

uint64_t EntityTaggingModelUtilityError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABF25234();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t static EntityTaggingModelUtility.modelFeatureProvider(featureDictionary:usedFeatures:)(uint64_t a1)
{
  v148 = sub_1ABAFF390(0, &qword_1ED86E428, 0x1E695FE60);
  v2 = sub_1ABF239C4();
  v146 = 0x80000001ABF85990;
  v147 = 0x80000001ABF8C770;
  v142 = "larityGivenWednesday";
  v143 = "larityGivenWeekday";
  v145 = "personLongTermPopularity";
  v3 = &off_1F2091FF0;
  v4 = 306;
  v151 = a1;
  do
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v7 = *(a1 + 16);

    if (v7)
    {
      v8 = sub_1ABA8280C();
      v16 = sub_1ABA94FC8(v8, v9, v10, v11, v12, v13, v14, v15, v142, v143, v144, v145, v146, v147, v148, v149, v151, v152);
      if (v17)
      {
        v18 = *(*(a1 + 56) + 8 * v16);
        v150 = v4;
        if ([v18 isUndefined])
        {
          v19 = [objc_opt_self() featureValueWithDouble_];
          goto LABEL_21;
        }

        if ([v18 type] == 1)
        {
          v63 = [v18 int64Value];
        }

        else
        {
          v95 = v5;
          v153 = 0xD000000000000014;
          v154 = v147;
          sub_1ABAE28EC();
          if ((sub_1ABF248D4() & 1) == 0)
          {
            if (v5 != 0xD00000000000001FLL || v146 != v6)
            {
              sub_1ABA8280C();
              if ((sub_1ABF25054() & 1) == 0)
              {
LABEL_22:
                v65 = v18;
                swift_isUniquelyReferenced_nonNull_native();
                v156 = v2;
                v66 = v5;
                v67 = sub_1ABA8280C();
                sub_1ABA94FC8(v67, v68, v69, v70, v71, v72, v73, v74, v142, v143, v144, v145, v146, v147, v148, v150, v151, v152);
                sub_1ABA7AD10();
                v2 = (v77 + v78);
                if (__OFADD__(v77, v78))
                {
                  goto LABEL_60;
                }

                v79 = v75;
                v80 = v76;
                v81 = sub_1ABAD219C(&qword_1EB4D1FD0, &unk_1ABF351C0);
                v82 = sub_1ABAA1C38(v81);
                if (v82)
                {
                  v82 = sub_1ABA94FC8(v66, v6, v84, v85, v86, v87, v88, v89, v142, v143, v144, v145, v146, v147, v148, v149, v151, v152);
                  if ((v80 & 1) != (v83 & 1))
                  {
                    goto LABEL_63;
                  }

                  v79 = v82;
                  if ((v80 & 1) == 0)
                  {
                    goto LABEL_26;
                  }
                }

                else if ((v80 & 1) == 0)
                {
LABEL_26:
                  sub_1ABA8410C(v82, v83, v84, v85, v86, v87, v88, v89, v142, v143, v144, v145, v146, v147, v148, v149, v151, v152, v153, v154, v156);
                  *v90 = v66;
                  v90[1] = v6;
                  *(v2[7] + 8 * v79) = v65;

                  v91 = v2[2];
                  v48 = __OFADD__(v91, 1);
                  v92 = v91 + 1;
                  if (v48)
                  {
                    goto LABEL_62;
                  }

                  v2[2] = v92;
                  goto LABEL_30;
                }

                v2 = v156;
                v93 = *(v156 + 56);
                v94 = *(v93 + 8 * v79);
                *(v93 + 8 * v79) = v65;

LABEL_30:
                v4 = v149;
                a1 = v151;
                goto LABEL_31;
              }
            }

            if (*(a1 + 16))
            {
              v127 = sub_1ABA94FC8(0xD000000000000022, v143 | 0x8000000000000000, v96, v97, v98, v99, v100, v101, v142, v143, v144, v145, v146, v147, v148, v150, v151, v152);
              if (v128 & 1) != 0 && ([*(*(a1 + 56) + 8 * v127) doubleValue], v135 > 0.0) && *(a1 + 16) && (v136 = sub_1ABA94FC8(0xD000000000000022, v142 | 0x8000000000000000, v129, v130, v131, v132, v133, v134, v142, v143, v144, v145, v146, v147, v148, v150, v151, v152), (v137))
              {
                [*(*(a1 + 56) + 8 * v136) doubleValue];
                v139 = v138 > 0.0;
              }

              else
              {
                v139 = 0;
              }
            }

            else
            {
              v139 = 0;
            }

            v19 = [objc_opt_self() featureValueWithInt64_];
LABEL_21:
            v64 = v19;

            v18 = v64;
            goto LABEL_22;
          }

          v102 = sub_1ABF239C4();
          v103 = [v18 stringValue];
          v104 = sub_1ABF23C04();
          v106 = v105;

          v63 = 0.0;
          v113 = 0.0;
          if (*(v102 + 16))
          {
            v114 = sub_1ABA94FC8(v104, v106, v107, v108, v109, v110, v111, v112, v142, v143, v144, v145, v146, v147, v148, v150, v151, v152);
            if (v115)
            {
              v113 = *(*(v102 + 56) + 8 * v114);
            }
          }

          v122 = v151;
          if (*(v151 + 16))
          {
            v123 = sub_1ABA94FC8(0xD000000000000017, v145 | 0x8000000000000000, v116, v117, v118, v119, v120, v121, v142, v143, v144, v145, v146, v147, v148, v150, v151, v152);
            v5 = v95;
            if (v124)
            {
              [*(*(v122 + 56) + 8 * v123) doubleValue];
              if (v125 > 0.002)
              {
                v63 = v113;
              }
            }
          }

          else
          {
            v5 = v95;
          }
        }

        v19 = [objc_opt_self() featureValueWithDouble_];
        goto LABEL_21;
      }
    }

    v20 = [objc_opt_self() featureValueWithDouble_];
    if (v20)
    {
      v21 = v20;
      v22 = v6;
      v23 = v4;
      swift_isUniquelyReferenced_nonNull_native();
      v155 = v2;
      v24 = v5;
      sub_1ABA94FC8(v5, v22, v25, v26, v27, v28, v29, v30, v142, v143, v144, v145, v146, v147, v148, v149, v151, v3);
      sub_1ABA7AD10();
      v2 = (v33 + v34);
      if (__OFADD__(v33, v34))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        result = sub_1ABF25104();
        __break(1u);
        return result;
      }

      v35 = v31;
      v36 = v32;
      v37 = sub_1ABAD219C(&qword_1EB4D1FD0, &unk_1ABF351C0);
      v38 = sub_1ABAA1C38(v37);
      if (v38)
      {
        v38 = sub_1ABA94FC8(v24, v22, v40, v41, v42, v43, v44, v45, v142, v143, v144, v145, v146, v147, v148, v149, v151, v152);
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_63;
        }

        v35 = v38;
        if ((v36 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if ((v36 & 1) == 0)
      {
LABEL_11:
        sub_1ABA8410C(v38, v39, v40, v41, v42, v43, v44, v45, v142, v143, v144, v145, v146, v147, v148, v149, v151, v152, v153, v154, v155);
        *v46 = v24;
        v46[1] = v22;
        *(v2[7] + 8 * v35) = v21;
        v47 = v2[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_61;
        }

        v2[2] = v49;
        goto LABEL_17;
      }

      v2 = v155;
      v61 = *(v155 + 56);
      v62 = *(v61 + 8 * v35);
      *(v61 + 8 * v35) = v21;

LABEL_17:
      a1 = v151;
      v3 = v152;
      v4 = v23;
      goto LABEL_31;
    }

    v50 = sub_1ABA8280C();
    v58 = sub_1ABA94FC8(v50, v51, v52, v53, v54, v55, v56, v57, v142, v143, v144, v145, v146, v147, v148, v149, v151, v152);
    v60 = v59;

    if (v60)
    {
      swift_isUniquelyReferenced_nonNull_native();
      sub_1ABAD219C(&qword_1EB4D1FD0, &unk_1ABF351C0);
      sub_1ABF24C64();
      sub_1ABA96CA8(v2[6]);

      sub_1ABF24C84();
    }

LABEL_31:
    v3 += 2;
    --v4;
  }

  while (v4);
  sub_1ABAFF390(0, &qword_1EB4CE658, 0x1E695FE48);
  result = sub_1ABC25A90(v2);
  if (!result)
  {
    sub_1ABC26108();
    swift_allocError();
    *v141 = 0;
    return swift_willThrow();
  }

  return result;
}

id sub_1ABC25A90(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1ABAFF390(0, &qword_1ED86E428, 0x1E695FE60);
  v2 = sub_1ABF23954();

  v3 = [v1 initWithFeatureValueDictionary_];

  return v3;
}

uint64_t sub_1ABC25B28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v10 = sub_1ABA94FC8(a1, a2, a3, a4, a5, a6, a7, a8, v15, v16, v18, v19, v20, v21, v22, v23, vars0, vars8);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = v10;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1ABAB10F4();
  sub_1ABAD219C(&qword_1EB4D1E20, &unk_1ABF34900);
  sub_1ABA8E24C();
  sub_1ABF24C64();

  v13 = *(*(v17 + 56) + 8 * v12);
  type metadata accessor for KnosisQueryParam();
  sub_1ABF24C84();
  *v9 = v17;
  return v13;
}

uint64_t sub_1ABC25BFC()
{
  v1 = v0;
  v2 = sub_1ABAFF5BC();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1ABAB10F4();
  sub_1ABAD219C(&qword_1EB4D1FC8, &qword_1ABF4E1A0);
  sub_1ABA8E24C();
  sub_1ABF24C64();

  v5 = *(*(v7 + 56) + 8 * v4);
  sub_1ABAFF390(0, &qword_1ED86E428, 0x1E695FE60);
  sub_1ABBA0480();
  sub_1ABF24C84();
  *v1 = v7;
  return v5;
}

uint64_t sub_1ABC25D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v12 = *v9;
  result = sub_1ABA94FC8(a1, a2, a3, a4, a5, a6, a7, a8, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  v15 = v14;
  if (v14)
  {
    v16 = result;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABA969D4();
    sub_1ABAD219C(&qword_1EB4D2008, &qword_1ABF351F8);
    sub_1ABA8E24C();
    sub_1ABA97FE0(v17, v18, v19);
    sub_1ABA95858();
    sub_1ABA96CA8(v20);

    sub_1ABAFF42C(*(v12 + 56) + 8 * v16, a9);
    result = sub_1ABF24C84();
    *v10 = v12;
  }

  else
  {
    *a9 = 0;
  }

  *(a9 + 8) = (v15 & 1) == 0;
  return result;
}

uint64_t sub_1ABC25DFC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v13 = v8;
  v14 = sub_1ABA94FC8(a1, a2, a3, a4, a5, a6, a7, a8, v19, v20, v22, v23, v24, v25, v26, v27, v28, v29);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  v16 = v14;
  swift_isUniquelyReferenced_nonNull_native();
  sub_1ABAB10F4();
  sub_1ABAD219C(a3, a4);
  sub_1ABA8E24C();
  sub_1ABF24C64();
  sub_1ABA96CA8(*(v21 + 48));

  v17 = *(*(v21 + 56) + 8 * v16);
  sub_1ABAFF390(0, a5, a6);
  sub_1ABF24C84();
  *v13 = v21;
  return v17;
}

double sub_1ABC25F10@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1ABAFF5BC();
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1ABAB10F4();
    sub_1ABAD219C(&qword_1EB4D1F68, &unk_1ABF4C450);
    sub_1ABA8E24C();
    sub_1ABF24C64();
    sub_1ABA95858();

    v8 = (*(v4 + 56) + 48 * v7);
    v9 = v8[1];
    *a1 = *v8;
    *(a1 + 16) = v9;
    *(a1 + 25) = *(v8 + 25);
    sub_1ABA92FFC();
    sub_1ABF24C84();
    *v2 = v4;
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 40) = -1;
  }

  return result;
}

unint64_t sub_1ABC26108()
{
  result = qword_1EB4D59A0;
  if (!qword_1EB4D59A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D59A0);
  }

  return result;
}

unint64_t sub_1ABC26160()
{
  result = qword_1EB4D59A8;
  if (!qword_1EB4D59A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D59A8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingModelUtilityError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityTaggingModelUtility(_BYTE *result, int a2, int a3)
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

unint64_t sub_1ABC2633C()
{
  result = qword_1EB4D59B0;
  if (!qword_1EB4D59B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D59B0);
  }

  return result;
}

uint64_t sub_1ABC26390(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1ABC26464(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1ABC27ACC(a1, a2);
  return v4;
}

void sub_1ABC264B4()
{
  sub_1ABA7BCA8();
  v19 = v1;
  v20 = v2;
  v4 = v3;
  v18 = v5;
  sub_1ABAA3CD4();
  v7 = *(v6 + 88);
  sub_1ABA7BD7C();
  v9 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - v11;
  sub_1ABC27A58();
  sub_1ABA7D5F0();
  v14 = *(v13 + 120);
  sub_1ABA7D78C();
  swift_beginAccess();
  (*(v9 + 16))(v12, v0 + v14, v7);
  sub_1ABAA3CD4();
  sub_1ABC2D7B8(v18, v12, v4 & 1, v19, v7, v20, *(v15 + 104));
  v16 = sub_1ABAA49E8();
  v17(v16);

  sub_1ABA7BC90();
}

void sub_1ABC266DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  a23 = v24;
  a24 = v25;
  v47 = v26;
  v45 = v27;
  v46 = v28;
  a10 = v29;
  v44 = v30;
  v32 = v31;
  sub_1ABAA4E18();
  v34 = *(v33 + 88);
  sub_1ABA7BD7C();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v44 - v36;
  v39 = *v38;
  sub_1ABC27A58();
  a14 = v39;
  sub_1ABA7D5F0();
  sub_1ABA7D78C();
  swift_beginAccess();
  sub_1ABA99420();
  v40(v37);
  sub_1ABAA4E18();
  v47(v32, &a14, v44, v37, a10 & 1, v45, v34, v46, *(v41 + 104));
  sub_1ABAA40A4();
  v42 = sub_1ABA894EC();
  v43(v42);

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABC26920()
{
  sub_1ABA7BCA8();
  v18 = v2;
  v17 = v3;
  v15 = v4;
  v16 = v5;
  v14 = v6;
  v8 = v7;
  v9 = *v0;
  v10 = *(*v0 + 88);
  sub_1ABA7BD7C();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7ED98();
  sub_1ABC27A58();
  sub_1ABA7D5F0();
  sub_1ABA7D78C();
  swift_beginAccess();
  sub_1ABA99420();
  v12(v1);
  v18(v8, v15, v1, v14 & 1, v16, v10, v17, *(v9 + 104));
  sub_1ABAA40A4();
  v13(v1, v10);

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABC26A78()
{
  sub_1ABAA4590();
  sub_1ABA9352C();
  swift_getWitnessTable();
  v0 = sub_1ABA81854();

  return sub_1ABC26AC0(v0, v1);
}

uint64_t sub_1ABC26AC0(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v4 = v3;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  v8 = sub_1ABA894EC();
  v9(v8);
  sub_1ABA7D78C();
  swift_beginAccess();
  sub_1ABA99420();
  v10(v7);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v4 + 8))(v7, AssociatedTypeWitness);
}

uint64_t sub_1ABC26C44()
{
  sub_1ABA7C1A4();
  sub_1ABA9352C();
  swift_getWitnessTable();
  v0 = sub_1ABA7F26C();

  return sub_1ABC26C94(v0, v1, v2, v3, v4);
}

uint64_t sub_1ABC26C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v11 = v10;
  sub_1ABA7BB88();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  v16 = (*(a4 + 48))(a2, a4, v13);
  v17 = *(*v16 + 120);
  sub_1ABA7D78C();
  swift_beginAccess();
  (*(v11 + 16))(v15, v16 + v17, AssociatedTypeWitness);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(a1, a3, v20, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v11 + 8))(v15, AssociatedTypeWitness);
}

void sub_1ABC26E40()
{
  sub_1ABA7BCA8();
  v16 = v3;
  v17 = v2;
  v19 = v4;
  v20 = v5;
  v18 = v6;
  v8 = v7;
  v10 = v9;
  v11 = *v0;
  v12 = *(*v0 + 88);
  sub_1ABA7BD7C();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7ED98();
  sub_1ABC27A58();
  sub_1ABA7D5F0();
  sub_1ABA7D78C();
  swift_beginAccess();
  sub_1ABA99420();
  v14(v1);
  sub_1ABC2DC44(v10, v1, v8 & 1, v17, v18, v19, v12, v20, *(v11 + 104), v16);
  sub_1ABAA40A4();
  v15(v1, v12);

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABC270B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void (*a26)(uint64_t, char *, uint64_t, char *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  sub_1ABA7BCA8();
  a23 = v27;
  a24 = v28;
  v56 = v29;
  v51 = v30;
  v52 = v31;
  v54 = v32;
  v55 = v33;
  a10 = v34;
  v36 = v35;
  v37 = a25;
  v53 = a26;
  v38 = *v26;
  v39 = *(*v26 + 88);
  sub_1ABA7BD7C();
  v41 = v40;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v51 - v43;
  v46 = *v45;
  sub_1ABC27A58();
  a14 = v46;
  sub_1ABA7D5F0();
  v48 = *(v47 + 120);
  sub_1ABA7D78C();
  swift_beginAccess();
  (*(v41 + 16))(v44, v26 + v48, v39);
  v53(v36, &a14, v51, v44, a10 & 1, v54, v55, v56, v39, v52, *(v38 + 104), v37);
  sub_1ABAA40A4();
  v49 = sub_1ABA894EC();
  v50(v49);

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABC27338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, uint64_t, char *, void, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  sub_1ABA7BCA8();
  v23 = v22;
  v44 = v25;
  v45 = v24;
  v47 = v26;
  v48 = v27;
  v29 = v28;
  v42 = v30;
  v43 = v31;
  v46 = a21;
  sub_1ABAA4E18();
  v33 = *(v32 + 88);
  sub_1ABA7BD7C();
  v35 = v34;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v42 - v37;
  sub_1ABC27A58();
  sub_1ABA7D5F0();
  v40 = *(v39 + 120);
  sub_1ABA7D78C();
  swift_beginAccess();
  (*(v35 + 16))(v38, v21 + v40, v33);
  sub_1ABAA4E18();
  v46(v42, v43, v38, v29 & 1, v45, v47, v48, v33, v44, *(v41 + 104), v23);
  (*(v35 + 8))(v38, v33);

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABC27508()
{
  sub_1ABA7BCA8();
  v22 = v2;
  v20 = v3;
  v21 = v1;
  v19 = v4;
  v6 = v5;
  sub_1ABAA3CD4();
  v8 = *(v7 + 88);
  sub_1ABA7BD7C();
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  sub_1ABC27A58();
  sub_1ABA7D5F0();
  v15 = *(v14 + 120);
  sub_1ABA7D78C();
  swift_beginAccess();
  (*(v10 + 16))(v13, v0 + v15, v8);
  sub_1ABAA3CD4();
  v22(v6, v13, v19, v8, v20, *(v16 + 104));
  v17 = sub_1ABAA49E8();
  v18(v17);

  sub_1ABA7BC90();
}

uint64_t sub_1ABC27670(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 48))();
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  sub_1ABA894EC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 32);
  v4 = swift_checkMetadataState();
  v3(v4, AssociatedConformanceWitness);
  swift_endAccess();
}

uint64_t sub_1ABC27798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v9 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7ED98();
  (*(*(a3 + 8) + 48))(a2, *(a3 + 8));
  (*(v9 + 16))(v3, a1, AssociatedTypeWitness);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 40);
  v13 = swift_checkMetadataState();
  v12(v3, v13, AssociatedConformanceWitness);
  swift_endAccess();

  return (*(v9 + 8))(a1, AssociatedTypeWitness);
}

uint64_t (*sub_1ABC2796C())()
{
  v1 = sub_1ABA900A4();
  v2 = sub_1ABAFDD10(v1);
  sub_1ABA80AF0(v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA94A10(AssociatedTypeWitness);
  *(v0 + 32) = v4;
  v6 = *(v5 + 64);
  *(v0 + 40) = sub_1ABAFDD10(v6);
  v7 = sub_1ABAFDD10(v6);
  sub_1ABA84138(v7);
  v8 = sub_1ABAA5838();
  sub_1ABA907E0(v8);
  return sub_1ABC284D8;
}

uint64_t sub_1ABC27ACC(uint64_t a1, uint64_t a2)
{
  sub_1ABA7EF70();
  (*(v4 + 32))(v2 + v5);
  sub_1ABA7D5F0();
  sub_1ABA7EF70();
  (*(v6 + 32))(v2 + v7, a2);
  return v2;
}

uint64_t sub_1ABC27BA0()
{
  sub_1ABA7EF70();
  (*(v1 + 8))(v0 + v2);
  sub_1ABA7D5F0();
  sub_1ABA7EF70();
  (*(v3 + 8))(v0 + v4);
  return v0;
}

uint64_t sub_1ABC27C60()
{
  sub_1ABC27BA0();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC27CF4()
{
  v1 = *v0;
  sub_1ABC27A50();
  return v1;
}

uint64_t sub_1ABC27D1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1ABC26AC0(a1, WitnessTable);
}

uint64_t sub_1ABC27D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1ABC26C94(a1, a4, a2, WitnessTable, a3);
}

uint64_t (*sub_1ABC27E34(void *a1, uint64_t a2, uint64_t a3))()
{
  v7 = sub_1ABAFDD10(0x40uLL);
  *a1 = v7;
  v7[1] = v3;
  v7[2] = a2;
  v8 = *(a3 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  v10 = *(AssociatedTypeWitness - 8);
  v7[4] = v10;
  v11 = *(v10 + 64);
  v7[5] = sub_1ABAFDD10(v11);
  v7[6] = sub_1ABAFDD10(v11);
  *v7 = v8;
  WitnessTable = swift_getWitnessTable();
  v7[7] = WitnessTable;
  sub_1ABC27670(a2, WitnessTable);
  return sub_1ABC27F64;
}

uint64_t sub_1ABC27F68(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABC28004()
{
  sub_1ABAA4590();
  sub_1ABA8E8EC();
  swift_getWitnessTable();
  v0 = sub_1ABA81854();

  return sub_1ABC26AC0(v0, v1);
}

uint64_t sub_1ABC2804C()
{
  sub_1ABA7C1A4();
  sub_1ABA8E8EC();
  swift_getWitnessTable();
  v0 = sub_1ABA7F26C();

  return sub_1ABC26C94(v0, v1, v2, v3, v4);
}

uint64_t (*sub_1ABC280CC())()
{
  v1 = sub_1ABA900A4();
  v2 = sub_1ABAFDD10(v1);
  sub_1ABA80AF0(v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA94A10(AssociatedTypeWitness);
  *(v0 + 32) = v4;
  v6 = *(v5 + 64);
  *(v0 + 40) = sub_1ABAFDD10(v6);
  v7 = sub_1ABAFDD10(v6);
  sub_1ABA84138(v7);
  v8 = sub_1ABAA5838();
  sub_1ABA907E0(v8);
  return sub_1ABC284D8;
}

uint64_t sub_1ABC281B0()
{
  sub_1ABAA4590();
  sub_1ABA7E6CC();
  swift_getWitnessTable();
  v0 = sub_1ABA81854();

  return sub_1ABC26AC0(v0, v1);
}

uint64_t sub_1ABC281F8()
{
  sub_1ABA7C1A4();
  sub_1ABA7E6CC();
  swift_getWitnessTable();
  v0 = sub_1ABA7F26C();

  return sub_1ABC26C94(v0, v1, v2, v3, v4);
}

uint64_t sub_1ABC28260()
{
  sub_1ABAA4590();
  swift_getWitnessTable();
  v0 = sub_1ABA81854();
  return sub_1ABC27670(v0, v1);
}

uint64_t (*sub_1ABC28324())()
{
  v1 = sub_1ABA900A4();
  v2 = sub_1ABAFDD10(v1);
  sub_1ABA80AF0(v2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA94A10(AssociatedTypeWitness);
  *(v0 + 32) = v4;
  v6 = *(v5 + 64);
  *(v0 + 40) = sub_1ABAFDD10(v6);
  v7 = sub_1ABAFDD10(v6);
  sub_1ABA84138(v7);
  v8 = sub_1ABAA5838();
  sub_1ABA907E0(v8);
  return sub_1ABC284D8;
}

void sub_1ABC28408(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[5];
  if (a2)
  {
    v6 = v2[3];
    v7 = v2[4];
    v8 = v2[2];
    (*(v7 + 16))((*a1)[5], v3, v6);
    sub_1ABC27798(v5, v8, v4);
    (*(v7 + 8))(v3, v6);
  }

  else
  {
    sub_1ABC27798((*a1)[6], v2[2], v4);
  }

  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_1ABC284DC()
{
  sub_1ABA80B08();
  swift_getWitnessTable();
  return sub_1ABC28558(v0);
}

uint64_t sub_1ABC28558@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1ABA7D79C(a1);
  sub_1ABA7D08C();
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1ABA7C068();
  v27 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  swift_getAssociatedTypeWitness();
  v29 = v1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 16);
  v14 = swift_checkMetadataState();
  v13(v14, AssociatedConformanceWitness);
  if (v15)
  {
    v16 = 1;
  }

  else
  {
    sub_1ABF21E04();
    v16 = 0;
  }

  sub_1ABA7B9B4(v11, v16, 1, v4);
  v17 = swift_getAssociatedConformanceWitness();
  (*(v17 + 48))(&v31, v14, v17);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = swift_getAssociatedConformanceWitness();
  v20 = v30;
  TypedEntityIdentifier.init(untyped:)(&v31, AssociatedTypeWitness, v19, &v32);
  if (v20)
  {
    sub_1ABA7D08C();
    (*(v21 + 8))(v2, v14);
    return sub_1ABC28C50(v11);
  }

  else
  {
    v31 = v32;
    (*(v17 + 56))(v14, v17);
    v23 = v28;
    sub_1ABF21E04();
    sub_1ABA7D08C();
    (*(v24 + 8))(v2, v14);
    v25 = v27;
    sub_1ABAE84E0(v11, v27);
    return (*(v29 + 32))(&v31, v23, v25, v3);
  }
}

uint64_t sub_1ABC288C4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1ABF22D14();
  sub_1ABB9009C(v5, a2);
  sub_1ABA7AA24(v5, a2);
  return sub_1ABF22D24();
}

uint64_t sub_1ABC28924@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1ABA7D79C(a1);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1ABA7C068();
  v21 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v22 = v1;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 48);
  v11 = swift_checkMetadataState();
  v10(&v24, v11, AssociatedConformanceWitness);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = v23;
  TypedEntityIdentifier.init(untyped:)(&v24, AssociatedTypeWitness, v13, &v25);
  if (v14)
  {
    sub_1ABA7D08C();
    return (*(v15 + 8))(v2, v11);
  }

  else
  {
    v24 = v25;
    (*(AssociatedConformanceWitness + 56))(v11, AssociatedConformanceWitness);
    sub_1ABF21E04();
    v17 = v22;
    v18 = swift_getAssociatedConformanceWitness();
    (*(v18 + 16))(v11, v18);
    v19 = v21;
    sub_1ABF21E04();
    sub_1ABA7D08C();
    (*(v20 + 8))(v2, v11);
    return (*(v17 + 32))(&v24, v8, v19, v3, v17);
  }
}

uint64_t sub_1ABC28BF4()
{
  sub_1ABA80B08();
  swift_getWitnessTable();
  return sub_1ABC28924(v0);
}

uint64_t sub_1ABC28C50(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABC28D04()
{
  sub_1ABAA3CE0();
  sub_1ABC2AB40(v1, v5, v0 & 1, v2, v3);
  sub_1ABA96BC4();
  sub_1ABAB08B8(v5, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC28D64()
{
  sub_1ABA8C0AC();
  sub_1ABAA2920();
  v3 = v2;
  sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0);
  sub_1ABAA459C();
  sub_1ABF21E14();
  if (v3 > v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = sub_1ABA826D8();
  v6 = sub_1ABA96910(v5, MEMORY[0x1E69A0050], v18, v19, v20, v21, v22);
  v0 = v6;
  if (v1)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v7 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    sub_1ABA7D7C4();
    v6 = swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    v6 = swift_once();
  }

  v7 = qword_1EB549598;
LABEL_8:
  sub_1ABA7ED20(v6, v7);
  (*(v8 + 16))(v0);
  v9 = sub_1ABF22424();
  sub_1ABAA0E54(v9, MEMORY[0x1E699FE60], v18, v19, v20, v21, v22, v23, v24, v25[0], v25[1], v25[2], v25[3], v25[4]);
  v10 = sub_1ABAD219C(&unk_1EB4D59E0, &qword_1ABF34800);
  sub_1ABAA2CC0(v10, v10, MEMORY[0x1E69A0160], v11, v12, v13, v14, v15, v18);
  sub_1ABF24614();
  v16 = sub_1ABA84B54(&v18);
  sub_1ABA7C1BC(v16, v25);
  sub_1ABA96BC4();
  sub_1ABAB08B8(v25, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC28EF8()
{
  sub_1ABA8C0AC();
  sub_1ABAA2920();
  v3 = v2;
  sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABAA459C();
  sub_1ABF21E14();
  if (v3 > v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = sub_1ABA826D8();
  v6 = sub_1ABA96910(v5, MEMORY[0x1E69A0050], v18, v19, v20, v21, v22);
  v0 = v6;
  if (v1)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v7 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    sub_1ABA7D7C4();
    v6 = swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    v6 = swift_once();
  }

  v7 = qword_1EB549598;
LABEL_8:
  sub_1ABA7ED20(v6, v7);
  (*(v8 + 16))(v0);
  v9 = sub_1ABF22424();
  sub_1ABAA0E54(v9, MEMORY[0x1E699FE60], v18, v19, v20, v21, v22, v23, v24, v25[0], v25[1], v25[2], v25[3], v25[4]);
  v10 = sub_1ABAD219C(&qword_1EB4D1DA0, &unk_1ABF347F0);
  sub_1ABAA2CC0(v10, v10, MEMORY[0x1E69A0160], v11, v12, v13, v14, v15, v18);
  sub_1ABF23BA4();
  v16 = sub_1ABA84B54(&v18);
  sub_1ABA7C1BC(v16, v25);
  sub_1ABA96BC4();
  sub_1ABAB08B8(v25, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC290C4(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void (*a7)(char *))
{
  v12 = *a2;
  sub_1ABF21E14();
  v28 = a1;
  v13 = a4;
  v31[3] = sub_1ABF22D14();
  v31[4] = MEMORY[0x1E69A0050];
  v14 = sub_1ABA93DC0(v31);
  v15 = v14;
  if (v12)
  {
    if (qword_1EB4CED40 != -1)
    {
      sub_1ABA7D7C4();
      v14 = swift_once();
    }

    v16 = qword_1EB549488;
  }

  else
  {
    if (qword_1ED86CF78 != -1)
    {
      sub_1ABA8F370();
      v14 = swift_once();
    }

    v16 = qword_1EB549598;
  }

  sub_1ABA7ED20(v14, v16);
  (*(v17 + 16))(v15);
  v32[3] = sub_1ABA7ABA4();
  v32[4] = MEMORY[0x1E699FE60];
  v18 = sub_1ABA93DC0(v32);
  v26 = sub_1ABA95FD4(v18, v19, v20, v21, v22, v23, v24, v25, v28, v30[0], v30[1], v30[2], v30[3], v30[4], v31[0]);
  a7(v26);
  sub_1ABA84B54(v30);
  sub_1ABA84B54(v31);
  sub_1ABC2AB40(v29, v32, v13 & 1, a5, a6);
  sub_1ABA96BC4();
  sub_1ABAB08B8(v32, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC292F4()
{
  sub_1ABA80B1C();
  sub_1ABAA3114();
  v4 = sub_1ABC2AD3C(v0, v1, v2, v3);
  sub_1ABA7C1BC(v4, v6);
  sub_1ABA96BC4();
  sub_1ABAB08B8(v6, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC29374()
{
  sub_1ABA80B1C();
  sub_1ABAA3114();
  v1 = sub_1ABC2B020(v0);
  sub_1ABA7C1BC(v1, v3);
  sub_1ABA96BC4();
  sub_1ABAB08B8(v3, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC29404()
{
  sub_1ABA80B1C();
  sub_1ABAA3114();
  v2 = sub_1ABC2B220(v0, v1);
  sub_1ABA7C1BC(v2, v4);
  sub_1ABA96BC4();
  sub_1ABAB08B8(v4, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

uint64_t sub_1ABC29498()
{
  sub_1ABAA3CE0();
  sub_1ABC2B604(v1, v7, v0 & 1, v2, v3, v4, v5);
  return sub_1ABAB08B8(v7, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC29500(uint64_t a1, uint64_t a2)
{
  sub_1ABAA34F0(a1, a2);
  v5 = v4;
  sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0);
  sub_1ABAA459C();
  sub_1ABF21E14();
  if (v5 > v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  HIDWORD(v19) = v2;
  v24 = *&v5;
  v25 = *&v6;
  v22 = sub_1ABF22D14();
  v23 = MEMORY[0x1E69A0050];
  v7 = sub_1ABA93DC0(v21);
  v2 = v7;
  if (v3)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v8 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    sub_1ABA7D7C4();
    v7 = swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    v7 = swift_once();
  }

  v8 = qword_1EB549598;
LABEL_8:
  sub_1ABA7ED20(v7, v8);
  (*(v9 + 16))(v2);
  v26[3] = sub_1ABF22424();
  v26[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v26);
  sub_1ABAD219C(&unk_1EB4D59E0, &qword_1ABF34800);
  sub_1ABF24614();
  v10 = sub_1ABA84B54(v21);
  sub_1ABAA38DC(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21[0], v21[1], v21[2], v22, v23, v24, v25);
  return sub_1ABAB08B8(v26, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC296B0(uint64_t a1, uint64_t a2)
{
  sub_1ABAA34F0(a1, a2);
  v5 = v4;
  sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABAA459C();
  sub_1ABF21E14();
  if (v5 > v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  HIDWORD(v19) = v2;
  v24 = *&v5;
  v25 = *&v6;
  v22 = sub_1ABF22D14();
  v23 = MEMORY[0x1E69A0050];
  v7 = sub_1ABA93DC0(v21);
  v2 = v7;
  if (v3)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v8 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    sub_1ABA7D7C4();
    v7 = swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    v7 = swift_once();
  }

  v8 = qword_1EB549598;
LABEL_8:
  sub_1ABA7ED20(v7, v8);
  (*(v9 + 16))(v2);
  v26[3] = sub_1ABF22424();
  v26[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v26);
  sub_1ABAD219C(&qword_1EB4D1DA0, &unk_1ABF347F0);
  sub_1ABF23BA4();
  v10 = sub_1ABA84B54(v21);
  sub_1ABAA38DC(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21[0], v21[1], v21[2], v22, v23, v24, v25);
  return sub_1ABAB08B8(v26, &qword_1EB4D1D88, &unk_1ABF347C0);
}

uint64_t sub_1ABC298C8(uint64_t a1, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t *, void *))
{
  v14 = *a2;
  sub_1ABF21E14();
  v16 = v15;
  v22 = a5;
  v25[3] = sub_1ABF22D14();
  v25[4] = MEMORY[0x1E69A0050];
  v17 = sub_1ABA93DC0(v25);
  v18 = v17;
  if (v14)
  {
    if (qword_1EB4CED40 != -1)
    {
      sub_1ABA7D7C4();
      v17 = swift_once();
    }

    v19 = qword_1EB549488;
  }

  else
  {
    if (qword_1ED86CF78 != -1)
    {
      sub_1ABA8F370();
      v17 = swift_once();
    }

    v19 = qword_1EB549598;
  }

  sub_1ABA7ED20(v17, v19);
  (*(v20 + 16))(v18);
  v24[3] = MEMORY[0x1E69E63B0];
  v24[4] = MEMORY[0x1E69A0160];
  v24[0] = v16;
  v26[3] = sub_1ABF22424();
  v26[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v26);
  a9(v25, v24);
  sub_1ABA84B54(v24);
  sub_1ABA84B54(v25);
  sub_1ABC2B604(a1, v26, a4 & 1, v22, a6, a7, a8);
  return sub_1ABAB08B8(v26, &qword_1EB4D1D88, &unk_1ABF347C0);
}

void sub_1ABC29B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1ABAA1C58();
  a25 = v26;
  a26 = v27;
  sub_1ABA93544();
  sub_1ABAA3114();
  v32 = sub_1ABC2AD3C(v29, v31, v28, v30);
  sub_1ABA81864(v32, v33);
  sub_1ABAB08B8(&a10, &qword_1EB4D1D88, &unk_1ABF347C0);
  sub_1ABA977FC();
}

void sub_1ABC29BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1ABAA1C58();
  a25 = v26;
  a26 = v27;
  sub_1ABA93544();
  sub_1ABAA3114();
  v29 = sub_1ABC2B020(v28);
  sub_1ABA81864(v29, v30);
  sub_1ABAB08B8(&a10, &qword_1EB4D1D88, &unk_1ABF347C0);
  sub_1ABA977FC();
}

void sub_1ABC29C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1ABAA1C58();
  a25 = v26;
  a26 = v27;
  sub_1ABA93544();
  sub_1ABAA3114();
  v30 = sub_1ABC2B220(v28, v29);
  sub_1ABA81864(v30, v31);
  sub_1ABAB08B8(&a10, &qword_1EB4D1D88, &unk_1ABF347C0);
  sub_1ABA977FC();
}

uint64_t sub_1ABC29D28(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = sub_1ABC2C654();
  if (!v4)
  {
    v9 = sub_1ABEB0604(a1, result, a3, a4);

    return v9;
  }

  return result;
}

uint64_t sub_1ABC29DF4()
{
  sub_1ABAA49FC();
  result = v2();
  if (!v1)
  {
    sub_1ABA838DC(result);
    sub_1ABAB1100();
    return v0;
  }

  return result;
}

uint64_t sub_1ABC29E98()
{
  sub_1ABAA49FC();
  result = sub_1ABC2C384(v2, v3, v4, v5);
  if (!v1)
  {
    sub_1ABA838DC(result);
    sub_1ABAB1100();
    return v0;
  }

  return result;
}

uint64_t sub_1ABC29F40(uint64_t a1, uint64_t a2)
{
  sub_1ABA94A24(a1, a2);
  result = sub_1ABC2C50C();
  if (!v3)
  {
    sub_1ABA838DC(result);
    sub_1ABAB1100();
    return v2;
  }

  return result;
}

uint64_t sub_1ABC29F98(uint64_t a1, uint64_t a2)
{
  sub_1ABA94A24(a1, a2);
  result = sub_1ABC2C580();
  if (!v3)
  {
    sub_1ABA838DC(result);
    sub_1ABAB1100();
    return v2;
  }

  return result;
}

uint64_t sub_1ABC2A01C(uint64_t a1, uint64_t a2)
{
  sub_1ABA94A24(a1, a2);
  result = sub_1ABC2C5E8();
  if (!v3)
  {
    sub_1ABA838DC(result);
    sub_1ABAB1100();
    return v2;
  }

  return result;
}

uint64_t sub_1ABC2A6FC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15 = a2;
  v5 = sub_1ABF22924();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  sub_1ABAD219C(&qword_1EB4D12D0, &unk_1ABF347E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1ABF34740;
  v10 = sub_1ABF22174();
  v11 = MEMORY[0x1E699FDA8];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  sub_1ABA93DC0((v9 + 32));
  if (qword_1ED86CF78 != -1)
  {
    swift_once();
  }

  v12 = sub_1ABF22D14();
  sub_1ABA7AA24(v12, qword_1EB549598);
  if (a1)
  {
    sub_1ABF22974();
  }

  else
  {
    sub_1ABF22964();
  }

  sub_1ABF221B4();

  sub_1ABC2D694(v15, &v16, &qword_1EB4D1D88, &unk_1ABF347C0);
  if (!v17)
  {
    return sub_1ABAB08B8(&v16, &qword_1EB4D1D88, &unk_1ABF347C0);
  }

  sub_1ABA946C0(&v16, v18);
  swift_getWitnessTable();
  sub_1ABF225A4();
  sub_1ABA84B54(v18);
  (*(v6 + 8))(a3, v5);
  return (*(v6 + 32))(a3, v8, v5);
}

uint64_t sub_1ABC2A974(char a1, uint64_t a2)
{
  v4 = sub_1ABF22924();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - v6;
  sub_1ABC2A6FC(a1 & 1, a2, &v14 - v6);
  sub_1ABAD219C(&qword_1EB4DB3F0, &unk_1ABF4C7B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1ABF34740;
  if (qword_1EB4CED30 != -1)
  {
    swift_once();
  }

  v9 = sub_1ABF22D14();
  v10 = sub_1ABA7AA24(v9, qword_1EB549868);
  v11 = MEMORY[0x1E69A0038];
  *(v8 + 56) = v9;
  *(v8 + 64) = v11;
  v12 = sub_1ABA93DC0((v8 + 32));
  (*(*(v9 - 8) + 16))(v12, v10, v9);
  sub_1ABF22904();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1ABC2AB40(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  swift_getObjectType();
  sub_1ABF241F4();
  v8 = sub_1ABF22454();
  if (!v6)
  {
    MEMORY[0x1EEE9AC00](v8);
    swift_getWitnessTable();
    v7 = sub_1ABF23F24();
  }

  return v7;
}

uint64_t sub_1ABC2AD3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(uint64_t *, uint64_t *)@<X2>, uint64_t *a4@<X8>)
{
  sub_1ABF21E14();
  v12 = v11;
  sub_1ABAD219C(a1, a2);
  sub_1ABAA459C();
  sub_1ABF21E14();
  if (v12 > v13)
  {
    __break(1u);
  }

  else
  {
    v5 = MEMORY[0x1E69A0160];
    v31 = MEMORY[0x1E69E63B0];
    v32 = MEMORY[0x1E69A0160];
    *v30 = v13;
    a2 = sub_1ABF22D14();
    v6 = MEMORY[0x1E69A0050];
    v27 = a2;
    v28 = MEMORY[0x1E69A0050];
    v4 = sub_1ABA93DC0(v26);
    if (qword_1ED86CF78 == -1)
    {
      goto LABEL_3;
    }
  }

  sub_1ABA8F370();
  swift_once();
LABEL_3:
  sub_1ABA7AA24(a2, qword_1EB549598);
  sub_1ABA7D08C();
  v15 = *(v14 + 16);
  v15(v4);
  v16 = sub_1ABF22424();
  v17 = MEMORY[0x1E699FE60];
  v29[3] = v16;
  v29[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v29);
  a3(v30, v26);
  sub_1ABA84B54(v26);
  sub_1ABA84B54(v30);
  v27 = a2;
  v28 = v6;
  v18 = sub_1ABA93DC0(v26);
  if (qword_1EB4CED40 != -1)
  {
    sub_1ABA7D7C4();
    swift_once();
  }

  v19 = sub_1ABA7AA24(a2, qword_1EB549488);
  (v15)(v18, v19, a2);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v31 = v16;
  v32 = v17;
  sub_1ABA93DC0(v30);
  sub_1ABF22B04();
  sub_1ABAB08B8(&v23, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v26);
  v27 = MEMORY[0x1E69E63B0];
  v28 = v5;
  *v26 = v12;
  v22[3] = a2;
  v22[4] = v6;
  v20 = sub_1ABA93DC0(v22);
  (v15)(v20, v19, a2);
  *(&v24 + 1) = v16;
  v25 = v17;
  sub_1ABA93DC0(&v23);
  sub_1ABF228A4();
  sub_1ABA84B54(v22);
  sub_1ABA84B54(v26);
  v27 = v16;
  v28 = v17;
  sub_1ABA93DC0(v26);
  sub_1ABF22AC4();
  sub_1ABA84B54(&v23);
  sub_1ABA84B54(v30);
  v31 = v16;
  v32 = v17;
  sub_1ABA93DC0(v30);
  sub_1ABF22B14();
  sub_1ABA84B54(v26);
  sub_1ABA84B54(v29);
  a4[3] = v16;
  a4[4] = v17;
  sub_1ABA93DC0(a4);
  sub_1ABF228D4();
  return sub_1ABA84B54(v30);
}

uint64_t sub_1ABC2B020@<X0>(uint64_t *a3@<X8>)
{
  sub_1ABF21E14();
  sub_1ABAA1F60();
  v5 = sub_1ABF22D14();
  v6 = MEMORY[0x1E69A0050];
  v31 = v5;
  v32 = MEMORY[0x1E69A0050];
  v7 = sub_1ABA93DC0(v30);
  if (qword_1EB4CED40 != -1)
  {
    sub_1ABA7D7C4();
    swift_once();
  }

  v8 = sub_1ABA7AA24(v5, qword_1EB549488);
  sub_1ABA7D08C();
  v10 = *(v9 + 16);
  v10(v7, v8, v5);
  v11 = sub_1ABF22424();
  v27 = 0u;
  v28 = 0u;
  v29 = 0;
  v12 = MEMORY[0x1E699FE60];
  v33[3] = v11;
  v33[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v33);
  sub_1ABF22AD4();
  sub_1ABAB08B8(&v27, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  sub_1ABA84B54(v30);
  *(&v28 + 1) = v5;
  v29 = v6;
  v13 = sub_1ABA93DC0(&v27);
  v10(v13, v8, v5);
  v25 = MEMORY[0x1E69E63B0];
  v26 = MEMORY[0x1E69A0160];
  v31 = v11;
  v32 = v12;
  v14 = sub_1ABA93DC0(v30);
  sub_1ABA95FD4(v14, v15, v16, v17, v18, v19, v20, v21, v23, v3, v24[1], v24[2], v25, v26, v27);
  sub_1ABF22AE4();
  sub_1ABA84B54(v24);
  sub_1ABA84B54(&v27);
  a3[3] = v11;
  a3[4] = v12;
  sub_1ABA93DC0(a3);
  sub_1ABF22B14();
  sub_1ABA84B54(v30);
  return sub_1ABA84B54(v33);
}

uint64_t sub_1ABC2B220@<X0>(void (*a1)(uint64_t *, void *)@<X0>, uint64_t *a3@<X8>)
{
  sub_1ABF21E14();
  sub_1ABAA1F60();
  v6 = sub_1ABF22D14();
  v13[3] = v6;
  v13[4] = MEMORY[0x1E69A0050];
  v7 = sub_1ABA93DC0(v13);
  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    swift_once();
  }

  sub_1ABA7AA24(v6, qword_1EB549598);
  sub_1ABA7D08C();
  (*(v8 + 16))(v7);
  v12[3] = MEMORY[0x1E69E63B0];
  v12[4] = MEMORY[0x1E69A0160];
  v12[0] = v3;
  v9 = sub_1ABF22424();
  v10 = MEMORY[0x1E699FE60];
  a3[3] = v9;
  a3[4] = v10;
  sub_1ABA93DC0(a3);
  a1(v13, v12);
  sub_1ABA84B54(v12);
  return sub_1ABA84B54(v13);
}

uint64_t sub_1ABC2B34C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a7@<X8>)
{
  v17[0] = a7;
  v17[1] = a1;
  v9 = sub_1ABF22924();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  sub_1ABC2A6FC(a2 & 1, a3, v17 - v11);
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  v13 = v17[3];
  v14 = sub_1ABF22234();
  if (v13)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v16 = v14;
  result = (*(v10 + 8))(v12, v9);
  *v17[0] = v16;
  return result;
}

uint64_t sub_1ABC2B4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  (*(a3 + 80))(v10, a2, a3);
  if (v4)
  {

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return sub_1ABA7B9B4(a4, v12, 1, a2);
}

uint64_t sub_1ABC2B700(uint64_t a1, char a2, void (**a3)(char *, uint64_t, uint64_t), void (*a4)(char *, char *), uint64_t a5, void (**a6)(char *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a3;
  v54 = a6;
  v46 = a4;
  v47 = a5;
  v55 = a1;
  v12 = sub_1ABF247E4();
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v40 - v13;
  v44 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v45 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1ABF247E4();
  v17 = *(v16 - 8);
  v41 = v16;
  v42 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v40 - v18;
  v43 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v58 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - v22;
  v24 = sub_1ABF22924();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v40 - v26;
  sub_1ABC2A6FC(a2 & 1, v53, &v40 - v26);
  swift_getWitnessTable();
  v57 = a9;
  swift_getAssociatedConformanceWitness();
  v28 = v59;
  v29 = sub_1ABF22224();
  if (v28)
  {
    return (*(v25 + 8))(v27, v24);
  }

  v31 = v29;
  v59 = v23;
  (*(v25 + 8))(v27, v24);
  v32 = sub_1ABF222C4();
  v52 = (v43 + 2);
  v53 = v43 + 4;
  v33 = v57;
  v51 = v57 + 80;
  v54 = (v43 + 1);
  v55 = v32;
  v34 = v48;
  v49 += 8;
  v43 = (v44 + 4);
  ++v44;
  while (1)
  {
    swift_getWitnessTable();
    v35 = v31;
    sub_1ABF22444();
    v36 = v58;
    if (sub_1ABA7E1E0(v34, 1, a7) == 1)
    {
      break;
    }

    v37 = v59;
    (*v53)(v59, v34, a7);
    (*v52)(v36, v37, a7);
    v38 = v56;
    (*(v33 + 80))(v36, a8, v33);
    sub_1ABA7B9B4(v38, 0, 1, a8);
    v39 = v45;
    (*v43)(v45, v38, a8);
    v60 = 0;
    v46(v39, &v60);
    (*v44)(v39, a8);
    (*v54)(v59, a7);
    if (v60 == 1)
    {
    }

    v33 = v57;
    v34 = v48;
    v31 = v35;
  }

  return (*(v42 + 8))(v34, v41);
}

uint64_t sub_1ABC2BD2C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_1ABA7B9B4(a2, 1, 1, a1);
  result = sub_1ABC29498();
  if (v2)
  {
    sub_1ABF247E4();
    sub_1ABA7D08C();
    return (*(v5 + 8))(a2);
  }

  return result;
}

uint64_t sub_1ABC2BE28(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1ABF247E4();
  (*(*(v9 - 8) + 8))(a3, v9);
  (*(*(a5 - 8) + 16))(a3, a1, a5);
  result = sub_1ABA7B9B4(a3, 0, 1, a5);
  *a2 = 1;
  return result;
}

uint64_t sub_1ABC2BEF8()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1ABC2BF20()
{
  sub_1ABC2BEF8();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC2BF6C()
{
  sub_1ABA8C0AC();
  v2 = *v1;
  sub_1ABF21E14();
  v4 = v3;
  sub_1ABAD219C(&unk_1EB4D59D0, &qword_1ABF6DFE0);
  sub_1ABAA459C();
  sub_1ABF21E14();
  if (v4 > v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = sub_1ABA826D8();
  v7 = sub_1ABA96910(v6, MEMORY[0x1E69A0050], v20, v21, v22, v23, v24);
  v0 = v7;
  if (v2)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v8 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    sub_1ABA7D7C4();
    v7 = swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    v7 = swift_once();
  }

  v8 = qword_1EB549598;
LABEL_8:
  sub_1ABA7ED20(v7, v8);
  (*(v9 + 16))(v0);
  v10 = sub_1ABF22424();
  sub_1ABAA0E54(v10, MEMORY[0x1E699FE60], v20, v21, v22, v23, v24, v25, v26, v27[0], v27[1], v27[2], v27[3], v27[4]);
  v11 = sub_1ABAD219C(&unk_1EB4D59E0, &qword_1ABF34800);
  sub_1ABAA2CC0(v11, v11, MEMORY[0x1E69A0160], v12, v13, v14, v15, v16, v20);
  sub_1ABF24614();
  sub_1ABA84B54(&v20);
  sub_1ABA900B8();
  sub_1ABC2C104(v17, v18);
  sub_1ABA96BC4();
  sub_1ABAB08B8(v27, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}

void *sub_1ABC2C104(uint64_t a1, char a2)
{
  swift_getObjectType();
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  result = sub_1ABF22454();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1ABC2C1EC()
{
  sub_1ABA8C0AC();
  v2 = *v1;
  sub_1ABF21E14();
  v4 = v3;
  sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABAA459C();
  sub_1ABF21E14();
  if (v4 > v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = sub_1ABA826D8();
  v7 = sub_1ABA96910(v6, MEMORY[0x1E69A0050], v20, v21, v22, v23, v24);
  v0 = v7;
  if (v2)
  {
    if (qword_1EB4CED40 == -1)
    {
LABEL_4:
      v8 = qword_1EB549488;
      goto LABEL_8;
    }

LABEL_10:
    sub_1ABA7D7C4();
    v7 = swift_once();
    goto LABEL_4;
  }

  if (qword_1ED86CF78 != -1)
  {
    sub_1ABA8F370();
    v7 = swift_once();
  }

  v8 = qword_1EB549598;
LABEL_8:
  sub_1ABA7ED20(v7, v8);
  (*(v9 + 16))(v0);
  v10 = sub_1ABF22424();
  sub_1ABAA0E54(v10, MEMORY[0x1E699FE60], v20, v21, v22, v23, v24, v25, v26, v27[0], v27[1], v27[2], v27[3], v27[4]);
  v11 = sub_1ABAD219C(&qword_1EB4D1DA0, &unk_1ABF347F0);
  sub_1ABAA2CC0(v11, v11, MEMORY[0x1E69A0160], v12, v13, v14, v15, v16, v20);
  sub_1ABF23BA4();
  sub_1ABA84B54(&v20);
  sub_1ABA900B8();
  sub_1ABC2C104(v17, v18);
  sub_1ABA96BC4();
  sub_1ABAB08B8(v27, &qword_1EB4D1D88, &unk_1ABF347C0);
  return sub_1ABA905A4();
}