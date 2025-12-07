unint64_t sub_2723180A0()
{
  result = qword_280890DB8[0];
  if (!qword_280890DB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280890DB8);
  }

  return result;
}

unint64_t sub_2723180F8()
{
  result = qword_280890E40;
  if (!qword_280890E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280890E40);
  }

  return result;
}

unint64_t sub_272318150()
{
  result = qword_280890E48[0];
  if (!qword_280890E48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280890E48);
  }

  return result;
}

uint64_t sub_2723181A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64726F7779656BLL && a2 == 0xE700000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696B6F6F4C727361 && a2 == 0xED0000726F46676ELL || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x747365424E727361 && a2 == 0xE800000000000000 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000027238FEF0 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x614D727341736177 && a2 == 0xEB00000000686374)
  {

    return 6;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_272318404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746E657665 && a2 == 0xE600000000000000;
  if (v4 || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000027238FF40 == a2 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5264657472617473 && a2 == 0xEE00676E696E6E75 || (sub_27237865C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616470557473616CLL && a2 == 0xEB00000000646574 || (sub_27237865C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657661537473616CLL && a2 == 0xE900000000000064 || (sub_27237865C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69666E6F43737973 && a2 == 0xEF676E6972745367 || (sub_27237865C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x726556646C697562 && a2 == 0xEC0000006E6F6973)
  {

    return 6;
  }

  else
  {
    v6 = sub_27237865C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_272318670()
{
  result = qword_280882DF0;
  if (!qword_280882DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882DF0);
  }

  return result;
}

uint64_t sub_2723186C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VANRCollectedEnrollment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_272318728(uint64_t a1)
{
  v2 = type metadata accessor for VANRCollectedEnrollment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_272318784(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2723187EC()
{
  result = qword_280882E10;
  if (!qword_280882E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882E10);
  }

  return result;
}

unint64_t sub_272318840()
{
  result = qword_280882E28;
  if (!qword_280882E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882E28);
  }

  return result;
}

uint64_t sub_272318894(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(&qword_280882C98, &qword_272384718);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27231890C()
{
  result = qword_280882E40;
  if (!qword_280882E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882E40);
  }

  return result;
}

uint64_t VAA2AAudioEncoderModel.init(computeUnits:)(char *a1)
{
  v3 = v1;
  v5 = type metadata accessor for VASignpostInterval(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  type metadata accessor for VALog();
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_27237820C();
  MEMORY[0x2743C4AD0](0xD000000000000018, 0x800000027238EEE0);
  LOBYTE(v16) = v8;
  sub_27237836C();
  static VALog.begin(_:_:)("VoiceActions", 12, 2u, v18, v19, v7);

  v9 = [objc_allocWithZone(MEMORY[0x277CBFF30]) init];
  v21 = v8;
  v20 = 0;
  sub_2722595A4();
  sub_272377A8C();
  sub_272377A8C();
  if (v18 == v16 && v19 == v17)
  {

    v10 = 0;
  }

  else
  {
    v11 = sub_27237865C();

    if (v11)
    {
      v10 = 0;
    }

    else
    {
      v21 = v8;
      v20 = 1;
      sub_272377A8C();
      sub_272377A8C();
      if (v18 == v16 && v19 == v17)
      {
      }

      else
      {
        v12 = sub_27237865C();

        if ((v12 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v10 = 3;
    }
  }

  [v9 setComputeUnits_];
LABEL_12:
  type metadata accessor for all_audio2audio_encoder_ig2p();
  v13 = v9;
  v14 = sub_2722B626C(v13);
  if (v2)
  {

    sub_272272F68(v7);
    type metadata accessor for VAA2AAudioEncoderModel();
    return swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 16) = v14;
    VASignpostInterval.end(_:)(0);

    sub_272272F68(v7);
    return sub_2722591B0();
  }
}

id sub_272318CE8(uint64_t a1)
{
  v3 = v1;
  v5 = *(a1 + 16);
  if (v5 == (*(*v1 + 168))())
  {
    result = sub_272319078(a1);
    if (!v2)
    {
      v7 = result;
      type metadata accessor for all_audio2audio_encoder_ig2pInput();
      v8 = sub_272276D68(v7);
      v9 = (*(*v3 + 128))();
      v11 = (*(*v9 + 136))(v8);

      v13 = (*(*v11 + 88))(v12);

      return v13;
    }
  }

  else
  {
    sub_272318EA8();
    swift_allocError();
    *v10 = 0xD000000000000014;
    v10[1] = 0x800000027238FFC0;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_272318EA8()
{
  result = qword_280882E48;
  if (!qword_280882E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882E48);
  }

  return result;
}

uint64_t sub_272318EFC()
{
  type metadata accessor for VAStrideConfiguration();
  v0 = static VAStrideConfiguration.forFlexibleA2A()();
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xB8))();

  return v1;
}

uint64_t VAA2AAudioEncoderModel.deinit()
{
  v0 = VAAudioEncoderModel.deinit();

  return v0;
}

uint64_t VAA2AAudioEncoderModel.__deallocating_deinit()
{
  VAAudioEncoderModel.deinit();

  return swift_deallocClassInstance();
}

id sub_272319078(uint64_t a1)
{
  sub_2721F065C(&qword_280882098, &qword_27237E8B0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_27237E510;
  v4 = *(a1 + 16);
  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = objc_allocWithZone(MEMORY[0x277CBFF40]);
  v6 = sub_272257FA4(v3, 65568);
  if (v1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 == 0;
  }

  if (!v7)
  {
    v8 = 0;
    v9 = a1 + 32;
    do
    {
      v10 = *(v9 + 4 * v8);
      v11 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v12) = v10;
      v13 = [v11 initWithFloat_];
      [v6 setObject:v13 atIndexedSubscript:v8];

      ++v8;
    }

    while (v4 != v8);
  }

  return v6;
}

uint64_t sub_272319254()
{
  sub_27237820C();
  v1 = *v0;

  MEMORY[0x2743C4AD0](0x737475706E49203ALL, 0xEA0000000000203ALL);
  type metadata accessor for VAEspressoV2Port();
  v2 = sub_27237773C();
  MEMORY[0x2743C4AD0](v2);

  MEMORY[0x2743C4AD0](0x74757074754F202CLL, 0xEB00000000203A73);
  v3 = sub_27237773C();
  MEMORY[0x2743C4AD0](v3);

  return v1;
}

uint64_t sub_272319394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(v4 + 16) + 16) && (sub_27220038C(a1, a2), (v10 & 1) != 0) && (type metadata accessor for VAEspressoV2Input(0, a3, a4, v9), (v11 = swift_dynamicCastClass()) != 0))
  {
    v12 = v11;
  }

  else
  {
    sub_27237820C();

    MEMORY[0x2743C4AD0](a1, a2);
    sub_2722032B4();
    v13 = swift_allocError();
    *v14 = 0xD000000000000022;
    v14[1] = 0x8000000272390040;
    v12 = v13;
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_2723194B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(v4 + 24) + 16) && (sub_27220038C(a1, a2), (v10 & 1) != 0) && (type metadata accessor for VAEspressoV2Output(0, a3, a4, v9), (v11 = swift_dynamicCastClass()) != 0))
  {
    v12 = v11;
  }

  else
  {
    sub_27237820C();

    MEMORY[0x2743C4AD0](a1, a2);
    sub_2722032B4();
    v13 = swift_allocError();
    *v14 = 0xD000000000000023;
    v14[1] = 0x8000000272390070;
    v12 = v13;
    swift_willThrow();
  }

  return v12;
}

uint64_t sub_2723195D0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  LODWORD(v218) = a3;
  v211 = a4;
  v7 = sub_27237728C();
  v219 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v193 - v12;
  MEMORY[0x28223BE20](v11);
  v217 = &v193 - v14;
  type metadata accessor for VABundleUtil();
  v222 = a1;
  v223 = a2;

  MEMORY[0x2743C4AD0](0x622E6C65646F6D2FLL, 0xEE002F656C646E75);
  v15 = static VABundleUtil.bundlePathFallback(path:)(v222, v223);
  v220 = v4;
  if (v4)
  {
  }

  v18 = v16;
  v209 = a1;
  v210 = v13;
  v212 = v10;
  v213 = v15;

  v19 = sub_2722C389C();
  v20 = v219;
  v21 = *(v219 + 16);
  v22 = v217;
  v215 = v219 + 16;
  v216 = v19;
  v214 = v21;
  (v21)(v217);

  v23 = sub_27237725C();
  v24 = sub_272377E7C();

  v25 = v7;
  if (os_log_type_enabled(v23, v24))
  {
    v26 = swift_slowAlloc();
    v27 = v18;
    v28 = swift_slowAlloc();
    v222 = v28;
    *v26 = 136315394;
    *(v26 + 4) = sub_2721FFD04(v209, a2, &v222);
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_2721FFD04(v213, v27, &v222);
    _os_log_impl(&dword_2721E4000, v23, v24, "Found model %s at path %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743C69C0](v28, -1, -1);
    v29 = v26;
    v25 = v7;
    MEMORY[0x2743C69C0](v29, -1, -1);

    v30 = *(v20 + 8);
    v30(v22, v25);
  }

  else
  {

    v30 = *(v20 + 8);
    v30(v22, v25);
    v27 = v18;
  }

  v31 = v210;
  v214(v210, v216, v25);

  v32 = sub_27237725C();
  v33 = sub_272377E7C();

  v34 = os_log_type_enabled(v32, v33);
  v217 = v30;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v222 = v36;
    *v35 = 136315138;
    v37 = v213;
    *(v35 + 4) = sub_2721FFD04(v213, v27, &v222);
    _os_log_impl(&dword_2721E4000, v32, v33, "Loading model %s", v35, 0xCu);
    sub_2722039C8(v36);
    MEMORY[0x2743C69C0](v36, -1, -1);
    MEMORY[0x2743C69C0](v35, -1, -1);

    v30(v31, v25);
  }

  else
  {

    v30(v31, v25);
    v37 = v213;
  }

  v38 = sub_27231B53C;
  if (v218)
  {
    v38 = sub_27231B4A4;
  }

  v39 = v220;
  v40 = v38(1852399981, 0xE400000000000000, v37, v27, 1852399981, 0xE400000000000000, 1, 1);
  v41 = v39;
  v42 = v212;
  if (v39)
  {
LABEL_132:
    v214(v42, v216, v25);

    v174 = v41;
    v175 = sub_27237725C();
    v176 = sub_272377E8C();

    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v179 = v27;
      v218 = v25;
      v180 = v178;
      v181 = v41;
      v182 = swift_slowAlloc();
      v224[0] = v182;
      *v177 = 136315394;
      v183 = sub_2721FFD04(v37, v179, v224);

      *(v177 + 4) = v183;
      *(v177 + 12) = 2112;
      v184 = v181;
      v185 = _swift_stdlib_bridgeErrorToNSError();
      *(v177 + 14) = v185;
      *v180 = v185;
      _os_log_impl(&dword_2721E4000, v175, v176, "Error loading model: %s: %@", v177, 0x16u);
      sub_272322408(v180);
      MEMORY[0x2743C69C0](v180, -1, -1);
      sub_2722039C8(v182);
      MEMORY[0x2743C69C0](v182, -1, -1);
      MEMORY[0x2743C69C0](v177, -1, -1);

      v186 = v218;
      v187 = v212;
    }

    else
    {

      v187 = v42;
      v186 = v25;
    }

    (v217)(v187, v186);
    return swift_willThrow();
  }

  v43 = v40;
  v44 = sub_2723228F0(MEMORY[0x277D84F90]);
  v45 = sub_272275720();
  v210 = v44;
  v218 = v25;
  v46 = *(v45 + 2);
  v207 = v43;
  v202 = v46;
  if (!v46)
  {
LABEL_55:

    v90 = sub_2723228F0(MEMORY[0x277D84F90]);
    v91 = sub_2722756CC();
    v208 = v27;
    v209 = v90;
    v201 = *(v91 + 2);
    if (!v201)
    {
LABEL_131:

      type metadata accessor for E5RTExecutionStream();
      v188 = sub_272275A6C();
      result = sub_272275B3C(v43);
      v189 = v210;
      v190 = v208;
      v191 = v211;
      *v211 = v37;
      v191[1] = v190;
      v192 = v209;
      v191[2] = v189;
      v191[3] = v192;
      v191[4] = v43;
      v191[5] = v188;
      return result;
    }

    v92 = 0;
    v198 = 0x80000002723903B0;
    v196 = 0x80000002723903E0;
    v93 = (v91 + 40);
    v197 = 0xD000000000000022;
    v200 = v91;
    while (1)
    {
      if (v92 >= *(v91 + 2))
      {
        goto LABEL_140;
      }

      v95 = *(v93 - 1);
      v94 = *v93;

      v206 = v95;
      v203 = v94;
      v96 = sub_27227581C(v95, v94);
      v97 = sub_27227519C();
      v202 = sub_272275024();
      sub_2722751F0(v202);
      v204 = v96;
      v98 = sub_272274F70();
      v205 = v97;
      v99 = v98;
      v100 = sub_272274F30();
      sub_272274FD0();
      v115 = sub_272274BFC();

      sub_272274FD0();
      v220 = sub_272274B2C();

      v116 = sub_272274FA0();
      if (v115 <= 1u)
      {
        break;
      }

      if (v115 - 2 < 2)
      {

        sub_2722032B4();
        v41 = swift_allocError();
        v117 = v198;
        *v118 = v197;
        v118[1] = v117;
LABEL_99:
        swift_willThrow();
LABEL_100:
        v144 = v203;
        goto LABEL_61;
      }

      if (v220 == 8)
      {
        v133 = v203;

        v134 = v202;

        sub_27231D998(v206, v133, v99, v100, v134, 4, v116);
        goto LABEL_95;
      }

      if (v220 == 4)
      {
        v131 = v203;

        v132 = v202;

        sub_27231D47C(v206, v131, v99, v100, v132, 4, v116);
        goto LABEL_95;
      }

      if (v220 != 2)
      {

        v224[0] = 0;
        v224[1] = 0xE000000000000000;
        sub_27237820C();

        v224[0] = 0xD000000000000010;
        v135 = v196;
        goto LABEL_98;
      }

      type metadata accessor for VAEspressoV2OutputFp32Wrapped(0);
      v123 = swift_allocObject();
      *(v123 + 176) = 0;
      v124 = (v123 + 176);
      *(v123 + 184) = 0;
      v195 = (v123 + 184);
      *(v123 + 192) = 0;
      v194 = (v123 + 192);
      *(v123 + 80) = 0;
      *(v123 + 88) = 1;
      *(v123 + 96) = 0;
      *(v123 + 104) = 1;
      *(v123 + 112) = 0;
      *(v123 + 120) = 1;
      *(v123 + 128) = 0;
      *(v123 + 136) = 1;
      *(v123 + 152) = 0;
      *(v123 + 160) = 0;
      *(v123 + 144) = 0;
      *(v123 + 168) = 2;
      v125 = v203;
      *(v123 + 16) = v99;
      *(v123 + 24) = v100;
      *(v123 + 40) = v206;
      *(v123 + 48) = v125;
      v126 = v202;
      v199 = v123;
      *(v123 + 32) = v202;
      v127 = v126[2];

      v128 = sub_272274C18(v127);
      v220 = 0;
      v150 = v199;
      *(v199 + 56) = v128;
      *(v150 + 64) = 4;
      *(v150 + 72) = v116;
      v151 = v99[2];
      if (v151 > 2)
      {
        if (v151 == 3)
        {
          v161 = v99[6];
          if (v161 < 0)
          {
            goto LABEL_147;
          }

          if (v161)
          {
            v162 = sub_272377B5C();
            *(v162 + 16) = v161;
            bzero((v162 + 32), 4 * v161);
            if (v99[2] < 2uLL)
            {
              goto LABEL_148;
            }
          }

          else
          {
            v162 = MEMORY[0x277D84F90];
          }

          v170 = sub_272258594(v162, v99[5], &qword_280881858, &unk_27237C260);

          if (!v99[2])
          {
            goto LABEL_151;
          }

          v171 = v99[4];

          v172 = sub_272258594(v170, v171, &qword_280881F28, &unk_272381E80);

          v173 = v195;
          swift_beginAccess();
          *v173 = v172;
        }

        else
        {
          if (v151 != 4)
          {
LABEL_114:

            v224[0] = 0;
            v224[1] = 0xE000000000000000;
            sub_27237820C();

            strcpy(v224, "Invalid rank: ");
            HIBYTE(v224[1]) = -18;
            v225 = v151;
            v156 = sub_27237862C();
            MEMORY[0x2743C4AD0](v156);

            v157 = v224[0];
            v158 = v224[1];
            sub_2722032B4();
            v159 = swift_allocError();
            *v160 = v157;
            v160[1] = v158;
            v41 = v159;
            swift_willThrow();

            goto LABEL_100;
          }

          v154 = v99[7];
          if (v154 < 0)
          {
            goto LABEL_145;
          }

          if (v154)
          {
            v155 = sub_272377B5C();
            *(v155 + 16) = v154;
            bzero((v155 + 32), 4 * v154);
            if (v99[2] < 3uLL)
            {
              goto LABEL_146;
            }
          }

          else
          {
            v155 = MEMORY[0x277D84F90];
          }

          v165 = sub_272258594(v155, v99[6], &qword_280881858, &unk_27237C260);

          if (v99[2] < 2uLL)
          {
            goto LABEL_149;
          }

          v166 = sub_272258594(v165, v99[5], &qword_280881F28, &unk_272381E80);

          if (!v99[2])
          {
            goto LABEL_150;
          }

          v167 = v99[4];

          v168 = sub_272258594(v166, v167, &qword_280882E70, &qword_2723855D0);

          v169 = v194;
          swift_beginAccess();
          *v169 = v168;
        }
      }

      else if (v151 != 1)
      {
        if (v151 != 2)
        {
          goto LABEL_114;
        }

        v152 = v99[5];
        if (v152 < 0)
        {
          goto LABEL_143;
        }

        if (v152)
        {
          v153 = sub_272377B5C();
          *(v153 + 16) = v152;
          bzero((v153 + 32), 4 * v152);
          if (!v99[2])
          {
            goto LABEL_144;
          }
        }

        else
        {
          v153 = MEMORY[0x277D84F90];
        }

        v163 = v99[4];

        v164 = sub_272258594(v153, v163, &qword_280881858, &unk_27237C260);

        swift_beginAccess();
        *v124 = v164;
      }

      v41 = v220;
      v144 = v203;
LABEL_61:
      if (v41)
      {

        v25 = v218;
        v42 = v212;
        v37 = v213;
        v27 = v208;
        goto LABEL_132;
      }

LABEL_62:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v224[0] = v209;
      v102 = sub_27220038C(v206, v144);
      v104 = v209;
      v105 = v209[2];
      v106 = (v103 & 1) == 0;
      v79 = __OFADD__(v105, v106);
      v107 = v105 + v106;
      if (v79)
      {
        goto LABEL_141;
      }

      v108 = v103;
      if (v209[3] >= v107)
      {
        v111 = v199;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v122 = v102;
          sub_272322718();
          v111 = v199;
          v102 = v122;
          v104 = v224[0];
        }

        v43 = v207;
      }

      else
      {
        sub_272322470(v107, isUniquelyReferenced_nonNull_native);
        v109 = v224[0];
        v102 = sub_27220038C(v206, v144);
        if ((v108 & 1) != (v110 & 1))
        {
          goto LABEL_152;
        }

        v43 = v207;
        v104 = v109;
        v111 = v199;
      }

      v209 = v104;
      if (v108)
      {
        *(v104[7] + 8 * v102) = v111;
      }

      else
      {
        v104[(v102 >> 6) + 8] |= 1 << v102;
        v112 = (v104[6] + 16 * v102);
        *v112 = v206;
        v112[1] = v144;
        *(v104[7] + 8 * v102) = v111;
        v113 = v104[2];
        v79 = __OFADD__(v113, 1);
        v114 = v113 + 1;
        if (v79)
        {
          goto LABEL_142;
        }

        v104[2] = v114;
      }

      v37 = v213;
      ++v92;

      v93 += 2;
      v91 = v200;
      if (v201 == v92)
      {
        goto LABEL_131;
      }
    }

    if (v115)
    {
      if (v220 == 8)
      {
        v142 = v203;

        v143 = v202;

        sub_27231CF60(v206, v142, v99, v100, v143, 1, v116);
        goto LABEL_95;
      }

      if (v220 == 4)
      {
        v138 = v203;

        v139 = v202;

        sub_27231CA44(v206, v138, v99, v100, v139, 1, v116);
        goto LABEL_95;
      }

      if (v220 == 2)
      {
        v129 = v203;

        v130 = v202;

        sub_27231C528(v206, v129, v99, v100, v130, 1, v116);
        goto LABEL_95;
      }

      v224[0] = 0;
      v224[1] = 0xE000000000000000;
      sub_27237820C();

      v224[0] = 0x6174616420746E49;
      v135 = 0xEE0020657A697320;
    }

    else
    {
      if (v220 == 8)
      {
        v140 = v203;

        v141 = v202;

        sub_27231C00C(v206, v140, v99, v100, v141, 0, v116);
        goto LABEL_95;
      }

      if (v220 == 4)
      {
        v136 = v203;

        v137 = v202;

        sub_27231BAF0(v206, v136, v99, v100, v137, 0, v116);
        goto LABEL_95;
      }

      if (v220 == 2)
      {
        v119 = v203;

        v120 = v202;

        sub_27231B5D4(v206, v119, v99, v100, v120, 0, v116);
LABEL_95:
        v199 = v121;
        v144 = v203;
        goto LABEL_62;
      }

      v224[0] = 0;
      v224[1] = 0xE000000000000000;
      sub_27237820C();

      v224[0] = 0x74616420746E4955;
      v135 = 0xEF20657A69732061;
    }

LABEL_98:
    v224[1] = v135;
    v225 = v220;
    v145 = sub_27237862C();
    MEMORY[0x2743C4AD0](v145);

    MEMORY[0x2743C4AD0](0x6E616820746F6E20, 0xEC00000064656C64);
    v146 = v224[0];
    v147 = v224[1];
    sub_2722032B4();
    v148 = swift_allocError();
    *v149 = v146;
    v149[1] = v147;
    v41 = v148;
    goto LABEL_99;
  }

  v47 = 0;
  v201 = 0x80000002723903B0;
  v199 = 0x80000002723903E0;
  v48 = (v45 + 40);
  v200 = 0xD000000000000022;
  v208 = v27;
  v204 = v45;
  while (v47 < *(v45 + 2))
  {
    v50 = *(v48 - 1);
    v49 = *v48;

    sub_27227585C(v50, v49);
    v206 = v47;
    v51 = sub_27227519C();
    v205 = v48;

    v52 = sub_272275024();
    sub_27227585C(v50, v49);
    sub_2722751F0(v52);
    v220 = v52;

    v53 = sub_272274F70();
    v54 = sub_272274F30();
    sub_272274FD0();
    LODWORD(v209) = sub_272274BFC();

    sub_272274FD0();
    v55 = sub_272274B2C();

    v56 = sub_272274FA0();
    if (v209 <= 1u)
    {
      if (v209)
      {
        if (v55 == 8)
        {
          v59 = v56;
          v60 = &unk_280882F68;
          v61 = &unk_2723856D8;
          goto LABEL_38;
        }

        if (v55 == 4)
        {
          v59 = v56;
          v60 = &unk_280882F70;
          v61 = &unk_2723856E0;
          goto LABEL_38;
        }

        if (v55 == 2)
        {
          v59 = v56;
          v60 = &unk_280882F78;
          v61 = &unk_2723856E8;
          goto LABEL_38;
        }

        v222 = 0;
        v223 = 0xE000000000000000;
        sub_27237820C();

        v222 = 0x6174616420746E49;
        v62 = 0xEE0020657A697320;
      }

      else
      {
        if (v55 == 8)
        {
          v59 = v56;
          v60 = &unk_280882F80;
          v61 = &unk_2723856F0;
          goto LABEL_38;
        }

        if (v55 == 4)
        {
          v59 = v56;
          v60 = &unk_280882F88;
          v61 = &unk_2723856F8;
          goto LABEL_38;
        }

        if (v55 == 2)
        {
          v59 = v56;
          v60 = &unk_280882F90;
          v61 = &unk_272385700;
          goto LABEL_38;
        }

        v222 = 0;
        v223 = 0xE000000000000000;
        sub_27237820C();

        v222 = 0x74616420746E4955;
        v62 = 0xEF20657A69732061;
      }
    }

    else
    {
      if (v209 - 2 < 2)
      {

        sub_2722032B4();
        v41 = swift_allocError();
        v57 = v201;
        *v58 = v200;
        v58[1] = v57;
        goto LABEL_43;
      }

      if (v55 == 8)
      {
        v59 = v56;
        v60 = &unk_280882F60;
        v61 = &unk_2723856C8;
LABEL_38:
        sub_2721F065C(v60, v61);
        goto LABEL_39;
      }

      if (v55 == 4)
      {
        v59 = v56;
        v60 = &qword_2808824C0;
        v61 = &qword_272380780;
        goto LABEL_38;
      }

      if (v55 == 2)
      {
        v59 = v56;
        type metadata accessor for VAEspressoV2InputFp32Wrapped(0);
LABEL_39:
        v63 = swift_allocObject();
        *(v63 + 80) = 0;
        *(v63 + 88) = 1;
        *(v63 + 96) = 0;
        *(v63 + 104) = 1;
        *(v63 + 112) = 0;
        *(v63 + 120) = 1;
        *(v63 + 128) = 0;
        *(v63 + 136) = 1;
        *(v63 + 152) = 0;
        *(v63 + 160) = 0;
        *(v63 + 144) = 0;
        *(v63 + 168) = 2;
        *(v63 + 40) = v50;
        *(v63 + 48) = v49;
        *(v63 + 16) = v53;
        *(v63 + 24) = v54;
        v64 = v220;
        v203 = v63;
        *(v63 + 32) = v220;
        v65 = v64[2];

        v66 = sub_272274C18(v65);
        v67 = v203;
        *(v203 + 56) = v66;
        *(v67 + 64) = v209;
        *(v67 + 72) = v59;
        goto LABEL_44;
      }

      v222 = 0;
      v223 = 0xE000000000000000;
      sub_27237820C();

      v222 = 0xD000000000000010;
      v62 = v199;
    }

    v223 = v62;
    v221 = v55;
    v68 = sub_27237862C();
    MEMORY[0x2743C4AD0](v68);

    MEMORY[0x2743C4AD0](0x6E616820746F6E20, 0xEC00000064656C64);
    v69 = v222;
    v70 = v223;
    sub_2722032B4();
    v71 = swift_allocError();
    *v72 = v69;
    v72[1] = v70;
    v41 = v71;
LABEL_43:
    swift_willThrow();
    v42 = v212;
    v27 = v208;
    if (v41)
    {

      v25 = v218;
      v37 = v213;
      goto LABEL_132;
    }

LABEL_44:
    v220 = v51;
    v73 = v210;
    v74 = swift_isUniquelyReferenced_nonNull_native();
    v222 = v73;
    v75 = sub_27220038C(v50, v49);
    v77 = *(v73 + 16);
    v78 = (v76 & 1) == 0;
    v79 = __OFADD__(v77, v78);
    v80 = v77 + v78;
    if (v79)
    {
      goto LABEL_138;
    }

    v81 = v76;
    v82 = v206;
    if (*(v73 + 24) >= v80)
    {
      v84 = v203;
      if ((v74 & 1) == 0)
      {
        v89 = v75;
        sub_272322718();
        v84 = v203;
        v75 = v89;
        v210 = v222;
      }

      v43 = v207;
      if ((v81 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      sub_272322470(v80, v74);
      v210 = v222;
      v75 = sub_27220038C(v50, v49);
      if ((v81 & 1) != (v83 & 1))
      {
        goto LABEL_152;
      }

      v43 = v207;
      v84 = v203;
      if ((v81 & 1) == 0)
      {
LABEL_48:
        v85 = v210;
        *(v210 + 8 * (v75 >> 6) + 64) |= 1 << v75;
        v86 = (v85[6] + 16 * v75);
        *v86 = v50;
        v86[1] = v49;
        *(v85[7] + 8 * v75) = v84;
        v87 = v85[2];
        v79 = __OFADD__(v87, 1);
        v88 = v87 + 1;
        if (v79)
        {
          goto LABEL_139;
        }

        v85[2] = v88;
        goto LABEL_54;
      }
    }

    *(*(v210 + 56) + 8 * v75) = v84;

LABEL_54:
    v37 = v213;
    v47 = v82 + 1;

    v48 = v205 + 2;
    v45 = v204;
    v27 = v208;
    if (v202 == v47)
    {
      goto LABEL_55;
    }
  }

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
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

void sub_27231B5D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_2721F065C(&qword_280882E78, &qword_2723855D8);
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  *(v12 + 192) = 0;
  v13 = v12 + 192;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v14 = *(a5 + 16);

  v15 = sub_272274C18(v14);
  if (v36)
  {

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v15;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v16 = a3[2];
  if (v16 <= 2)
  {
    if (v16 == 1)
    {

      goto LABEL_18;
    }

    if (v16 != 2)
    {
      goto LABEL_16;
    }

    v13 = a3[5];
    if (v13 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!v13)
    {
      goto LABEL_23;
    }

    v17 = sub_272377B5C();
    *(v17 + 16) = v13;
    bzero((v17 + 32), 2 * v13);
    if (a3[2])
    {
LABEL_24:
      v26 = a3[4];

      v27 = sub_272258594(v17, v26, &qword_280882E90, &qword_2723855F0);

      swift_beginAccess();
      *(v12 + 176) = v27;

      return;
    }

    __break(1u);
  }

  if (v16 != 3)
  {
    if (v16 == 4)
    {
      v18 = v13;
      v19 = a3[7];
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (v19)
        {
          v20 = sub_272377B5C();
          *(v20 + 16) = v19;
          bzero((v20 + 32), 2 * v19);
          if (a3[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
        }

        v28 = sub_272258594(v20, a3[6], &qword_280882E90, &qword_2723855F0);

        if (a3[2] >= 2uLL)
        {
          v29 = sub_272258594(v28, a3[5], &qword_280882E88, &qword_2723855E8);

          if (a3[2])
          {
            v30 = a3[4];

            v31 = sub_272258594(v29, v30, &qword_280882E80, &qword_2723855E0);

            swift_beginAccess();
            *v18 = v31;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v38, "Invalid rank: ");
    HIBYTE(v38[1]) = -18;
    v38[4] = v16;
    v21 = sub_27237862C();
    MEMORY[0x2743C4AD0](v21);

    v22 = v38[1];
    sub_2722032B4();
    swift_allocError();
    *v23 = v38[0];
    v23[1] = v22;
    swift_willThrow();

LABEL_18:

    return;
  }

  v24 = a3[6];
  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24)
    {
      v25 = sub_272377B5C();
      *(v25 + 16) = v24;
      bzero((v25 + 32), 2 * v24);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v17 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v32 = sub_272258594(v25, a3[5], &qword_280882E90, &qword_2723855F0);

    if (a3[2])
    {
      v33 = a3[4];

      v34 = sub_272258594(v32, v33, &qword_280882E88, &qword_2723855E8);

      swift_beginAccess();
      *(v12 + 184) = v34;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_27231BAF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_2721F065C(&qword_280882E98, &qword_2723855F8);
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  *(v12 + 192) = 0;
  v13 = v12 + 192;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v14 = *(a5 + 16);

  v15 = sub_272274C18(v14);
  if (v36)
  {

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v15;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v16 = a3[2];
  if (v16 <= 2)
  {
    if (v16 == 1)
    {

      goto LABEL_18;
    }

    if (v16 != 2)
    {
      goto LABEL_16;
    }

    v13 = a3[5];
    if (v13 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!v13)
    {
      goto LABEL_23;
    }

    v17 = sub_272377B5C();
    *(v17 + 16) = v13;
    bzero((v17 + 32), 4 * v13);
    if (a3[2])
    {
LABEL_24:
      v26 = a3[4];

      v27 = sub_272258594(v17, v26, &qword_280882EB0, &qword_272385610);

      swift_beginAccess();
      *(v12 + 176) = v27;

      return;
    }

    __break(1u);
  }

  if (v16 != 3)
  {
    if (v16 == 4)
    {
      v18 = v13;
      v19 = a3[7];
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (v19)
        {
          v20 = sub_272377B5C();
          *(v20 + 16) = v19;
          bzero((v20 + 32), 4 * v19);
          if (a3[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
        }

        v28 = sub_272258594(v20, a3[6], &qword_280882EB0, &qword_272385610);

        if (a3[2] >= 2uLL)
        {
          v29 = sub_272258594(v28, a3[5], &qword_280882EA8, &qword_272385608);

          if (a3[2])
          {
            v30 = a3[4];

            v31 = sub_272258594(v29, v30, &qword_280882EA0, &qword_272385600);

            swift_beginAccess();
            *v18 = v31;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v38, "Invalid rank: ");
    HIBYTE(v38[1]) = -18;
    v38[4] = v16;
    v21 = sub_27237862C();
    MEMORY[0x2743C4AD0](v21);

    v22 = v38[1];
    sub_2722032B4();
    swift_allocError();
    *v23 = v38[0];
    v23[1] = v22;
    swift_willThrow();

LABEL_18:

    return;
  }

  v24 = a3[6];
  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24)
    {
      v25 = sub_272377B5C();
      *(v25 + 16) = v24;
      bzero((v25 + 32), 4 * v24);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v17 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v32 = sub_272258594(v25, a3[5], &qword_280882EB0, &qword_272385610);

    if (a3[2])
    {
      v33 = a3[4];

      v34 = sub_272258594(v32, v33, &qword_280882EA8, &qword_272385608);

      swift_beginAccess();
      *(v12 + 184) = v34;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_27231C00C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_2721F065C(&qword_280882EB8, &qword_272385618);
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  *(v12 + 192) = 0;
  v13 = v12 + 192;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v14 = *(a5 + 16);

  v15 = sub_272274C18(v14);
  if (v36)
  {

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v15;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v16 = a3[2];
  if (v16 <= 2)
  {
    if (v16 == 1)
    {

      goto LABEL_18;
    }

    if (v16 != 2)
    {
      goto LABEL_16;
    }

    v13 = a3[5];
    if (v13 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!v13)
    {
      goto LABEL_23;
    }

    v17 = sub_272377B5C();
    *(v17 + 16) = v13;
    bzero((v17 + 32), 8 * v13);
    if (a3[2])
    {
LABEL_24:
      v26 = a3[4];

      v27 = sub_272258594(v17, v26, &qword_280882ED0, &qword_272385630);

      swift_beginAccess();
      *(v12 + 176) = v27;

      return;
    }

    __break(1u);
  }

  if (v16 != 3)
  {
    if (v16 == 4)
    {
      v18 = v13;
      v19 = a3[7];
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (v19)
        {
          v20 = sub_272377B5C();
          *(v20 + 16) = v19;
          bzero((v20 + 32), 8 * v19);
          if (a3[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
        }

        v28 = sub_272258594(v20, a3[6], &qword_280882ED0, &qword_272385630);

        if (a3[2] >= 2uLL)
        {
          v29 = sub_272258594(v28, a3[5], &qword_280882EC8, &qword_272385628);

          if (a3[2])
          {
            v30 = a3[4];

            v31 = sub_272258594(v29, v30, &qword_280882EC0, &qword_272385620);

            swift_beginAccess();
            *v18 = v31;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v38, "Invalid rank: ");
    HIBYTE(v38[1]) = -18;
    v38[4] = v16;
    v21 = sub_27237862C();
    MEMORY[0x2743C4AD0](v21);

    v22 = v38[1];
    sub_2722032B4();
    swift_allocError();
    *v23 = v38[0];
    v23[1] = v22;
    swift_willThrow();

LABEL_18:

    return;
  }

  v24 = a3[6];
  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24)
    {
      v25 = sub_272377B5C();
      *(v25 + 16) = v24;
      bzero((v25 + 32), 8 * v24);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v17 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v32 = sub_272258594(v25, a3[5], &qword_280882ED0, &qword_272385630);

    if (a3[2])
    {
      v33 = a3[4];

      v34 = sub_272258594(v32, v33, &qword_280882EC8, &qword_272385628);

      swift_beginAccess();
      *(v12 + 184) = v34;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_27231C528(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_2721F065C(&qword_280882ED8, &qword_272385638);
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  *(v12 + 192) = 0;
  v13 = v12 + 192;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v14 = *(a5 + 16);

  v15 = sub_272274C18(v14);
  if (v36)
  {

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v15;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v16 = a3[2];
  if (v16 <= 2)
  {
    if (v16 == 1)
    {

      goto LABEL_18;
    }

    if (v16 != 2)
    {
      goto LABEL_16;
    }

    v13 = a3[5];
    if (v13 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!v13)
    {
      goto LABEL_23;
    }

    v17 = sub_272377B5C();
    *(v17 + 16) = v13;
    bzero((v17 + 32), 2 * v13);
    if (a3[2])
    {
LABEL_24:
      v26 = a3[4];

      v27 = sub_272258594(v17, v26, &qword_280882EF0, &qword_272385650);

      swift_beginAccess();
      *(v12 + 176) = v27;

      return;
    }

    __break(1u);
  }

  if (v16 != 3)
  {
    if (v16 == 4)
    {
      v18 = v13;
      v19 = a3[7];
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (v19)
        {
          v20 = sub_272377B5C();
          *(v20 + 16) = v19;
          bzero((v20 + 32), 2 * v19);
          if (a3[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
        }

        v28 = sub_272258594(v20, a3[6], &qword_280882EF0, &qword_272385650);

        if (a3[2] >= 2uLL)
        {
          v29 = sub_272258594(v28, a3[5], &qword_280882EE8, &qword_272385648);

          if (a3[2])
          {
            v30 = a3[4];

            v31 = sub_272258594(v29, v30, &qword_280882EE0, &qword_272385640);

            swift_beginAccess();
            *v18 = v31;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v38, "Invalid rank: ");
    HIBYTE(v38[1]) = -18;
    v38[4] = v16;
    v21 = sub_27237862C();
    MEMORY[0x2743C4AD0](v21);

    v22 = v38[1];
    sub_2722032B4();
    swift_allocError();
    *v23 = v38[0];
    v23[1] = v22;
    swift_willThrow();

LABEL_18:

    return;
  }

  v24 = a3[6];
  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24)
    {
      v25 = sub_272377B5C();
      *(v25 + 16) = v24;
      bzero((v25 + 32), 2 * v24);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v17 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v32 = sub_272258594(v25, a3[5], &qword_280882EF0, &qword_272385650);

    if (a3[2])
    {
      v33 = a3[4];

      v34 = sub_272258594(v32, v33, &qword_280882EE8, &qword_272385648);

      swift_beginAccess();
      *(v12 + 184) = v34;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_27231CA44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_2721F065C(&qword_280882EF8, &qword_272385658);
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  *(v12 + 192) = 0;
  v13 = v12 + 192;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v14 = *(a5 + 16);

  v15 = sub_272274C18(v14);
  if (v36)
  {

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v15;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v16 = a3[2];
  if (v16 <= 2)
  {
    if (v16 == 1)
    {

      goto LABEL_18;
    }

    if (v16 != 2)
    {
      goto LABEL_16;
    }

    v13 = a3[5];
    if (v13 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!v13)
    {
      goto LABEL_23;
    }

    v17 = sub_272377B5C();
    *(v17 + 16) = v13;
    bzero((v17 + 32), 4 * v13);
    if (a3[2])
    {
LABEL_24:
      v26 = a3[4];

      v27 = sub_272258594(v17, v26, &qword_280882F10, &qword_272385670);

      swift_beginAccess();
      *(v12 + 176) = v27;

      return;
    }

    __break(1u);
  }

  if (v16 != 3)
  {
    if (v16 == 4)
    {
      v18 = v13;
      v19 = a3[7];
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (v19)
        {
          v20 = sub_272377B5C();
          *(v20 + 16) = v19;
          bzero((v20 + 32), 4 * v19);
          if (a3[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
        }

        v28 = sub_272258594(v20, a3[6], &qword_280882F10, &qword_272385670);

        if (a3[2] >= 2uLL)
        {
          v29 = sub_272258594(v28, a3[5], &qword_280882F08, &qword_272385668);

          if (a3[2])
          {
            v30 = a3[4];

            v31 = sub_272258594(v29, v30, &qword_280882F00, &qword_272385660);

            swift_beginAccess();
            *v18 = v31;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v38, "Invalid rank: ");
    HIBYTE(v38[1]) = -18;
    v38[4] = v16;
    v21 = sub_27237862C();
    MEMORY[0x2743C4AD0](v21);

    v22 = v38[1];
    sub_2722032B4();
    swift_allocError();
    *v23 = v38[0];
    v23[1] = v22;
    swift_willThrow();

LABEL_18:

    return;
  }

  v24 = a3[6];
  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24)
    {
      v25 = sub_272377B5C();
      *(v25 + 16) = v24;
      bzero((v25 + 32), 4 * v24);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v17 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v32 = sub_272258594(v25, a3[5], &qword_280882F10, &qword_272385670);

    if (a3[2])
    {
      v33 = a3[4];

      v34 = sub_272258594(v32, v33, &qword_280882F08, &qword_272385668);

      swift_beginAccess();
      *(v12 + 184) = v34;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_27231CF60(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_2721F065C(&qword_280882F18, &qword_272385678);
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  *(v12 + 192) = 0;
  v13 = v12 + 192;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v14 = *(a5 + 16);

  v15 = sub_272274C18(v14);
  if (v36)
  {

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v15;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v16 = a3[2];
  if (v16 <= 2)
  {
    if (v16 == 1)
    {

      goto LABEL_18;
    }

    if (v16 != 2)
    {
      goto LABEL_16;
    }

    v13 = a3[5];
    if (v13 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!v13)
    {
      goto LABEL_23;
    }

    v17 = sub_272377B5C();
    *(v17 + 16) = v13;
    bzero((v17 + 32), 8 * v13);
    if (a3[2])
    {
LABEL_24:
      v26 = a3[4];

      v27 = sub_272258594(v17, v26, &qword_280882F30, &unk_272385690);

      swift_beginAccess();
      *(v12 + 176) = v27;

      return;
    }

    __break(1u);
  }

  if (v16 != 3)
  {
    if (v16 == 4)
    {
      v18 = v13;
      v19 = a3[7];
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (v19)
        {
          v20 = sub_272377B5C();
          *(v20 + 16) = v19;
          bzero((v20 + 32), 8 * v19);
          if (a3[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
        }

        v28 = sub_272258594(v20, a3[6], &qword_280882F30, &unk_272385690);

        if (a3[2] >= 2uLL)
        {
          v29 = sub_272258594(v28, a3[5], &qword_280882F28, &qword_272385688);

          if (a3[2])
          {
            v30 = a3[4];

            v31 = sub_272258594(v29, v30, &qword_280882F20, &qword_272385680);

            swift_beginAccess();
            *v18 = v31;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v38, "Invalid rank: ");
    HIBYTE(v38[1]) = -18;
    v38[4] = v16;
    v21 = sub_27237862C();
    MEMORY[0x2743C4AD0](v21);

    v22 = v38[1];
    sub_2722032B4();
    swift_allocError();
    *v23 = v38[0];
    v23[1] = v22;
    swift_willThrow();

LABEL_18:

    return;
  }

  v24 = a3[6];
  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24)
    {
      v25 = sub_272377B5C();
      *(v25 + 16) = v24;
      bzero((v25 + 32), 8 * v24);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v17 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v32 = sub_272258594(v25, a3[5], &qword_280882F30, &unk_272385690);

    if (a3[2])
    {
      v33 = a3[4];

      v34 = sub_272258594(v32, v33, &qword_280882F28, &qword_272385688);

      swift_beginAccess();
      *(v12 + 184) = v34;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_27231D47C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_2721F065C(&qword_2808824C8, qword_272380788);
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  *(v12 + 192) = 0;
  v13 = v12 + 192;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v14 = *(a5 + 16);

  v15 = sub_272274C18(v14);
  if (v36)
  {

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v15;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v16 = a3[2];
  if (v16 <= 2)
  {
    if (v16 == 1)
    {

      goto LABEL_18;
    }

    if (v16 != 2)
    {
      goto LABEL_16;
    }

    v13 = a3[5];
    if (v13 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!v13)
    {
      goto LABEL_23;
    }

    v17 = sub_272377B5C();
    *(v17 + 16) = v13;
    bzero((v17 + 32), 4 * v13);
    if (a3[2])
    {
LABEL_24:
      v26 = a3[4];

      v27 = sub_272258594(v17, v26, &qword_280881858, &unk_27237C260);

      swift_beginAccess();
      *(v12 + 176) = v27;

      return;
    }

    __break(1u);
  }

  if (v16 != 3)
  {
    if (v16 == 4)
    {
      v18 = v13;
      v19 = a3[7];
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (v19)
        {
          v20 = sub_272377B5C();
          *(v20 + 16) = v19;
          bzero((v20 + 32), 4 * v19);
          if (a3[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
        }

        v28 = sub_272258594(v20, a3[6], &qword_280881858, &unk_27237C260);

        if (a3[2] >= 2uLL)
        {
          v29 = sub_272258594(v28, a3[5], &qword_280881F28, &unk_272381E80);

          if (a3[2])
          {
            v30 = a3[4];

            v31 = sub_272258594(v29, v30, &qword_280882E70, &qword_2723855D0);

            swift_beginAccess();
            *v18 = v31;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v38, "Invalid rank: ");
    HIBYTE(v38[1]) = -18;
    v38[4] = v16;
    v21 = sub_27237862C();
    MEMORY[0x2743C4AD0](v21);

    v22 = v38[1];
    sub_2722032B4();
    swift_allocError();
    *v23 = v38[0];
    v23[1] = v22;
    swift_willThrow();

LABEL_18:

    return;
  }

  v24 = a3[6];
  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24)
    {
      v25 = sub_272377B5C();
      *(v25 + 16) = v24;
      bzero((v25 + 32), 4 * v24);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v17 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v32 = sub_272258594(v25, a3[5], &qword_280881858, &unk_27237C260);

    if (a3[2])
    {
      v33 = a3[4];

      v34 = sub_272258594(v32, v33, &qword_280881F28, &unk_272381E80);

      swift_beginAccess();
      *(v12 + 184) = v34;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_27231D998(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  sub_2721F065C(&qword_280882F38, &qword_2723856A0);
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  *(v12 + 192) = 0;
  v13 = v12 + 192;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v14 = *(a5 + 16);

  v15 = sub_272274C18(v14);
  if (v36)
  {

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v15;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v16 = a3[2];
  if (v16 <= 2)
  {
    if (v16 == 1)
    {

      goto LABEL_18;
    }

    if (v16 != 2)
    {
      goto LABEL_16;
    }

    v13 = a3[5];
    if (v13 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    if (!v13)
    {
      goto LABEL_23;
    }

    v17 = sub_272377B5C();
    *(v17 + 16) = v13;
    bzero((v17 + 32), 8 * v13);
    if (a3[2])
    {
LABEL_24:
      v26 = a3[4];

      v27 = sub_272258594(v17, v26, &qword_280882F50, &qword_2723856B8);

      swift_beginAccess();
      *(v12 + 176) = v27;

      return;
    }

    __break(1u);
  }

  if (v16 != 3)
  {
    if (v16 == 4)
    {
      v18 = v13;
      v19 = a3[7];
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (v19)
        {
          v20 = sub_272377B5C();
          *(v20 + 16) = v19;
          bzero((v20 + 32), 8 * v19);
          if (a3[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v20 = MEMORY[0x277D84F90];
        }

        v28 = sub_272258594(v20, a3[6], &qword_280882F50, &qword_2723856B8);

        if (a3[2] >= 2uLL)
        {
          v29 = sub_272258594(v28, a3[5], &qword_280882F48, &qword_2723856B0);

          if (a3[2])
          {
            v30 = a3[4];

            v31 = sub_272258594(v29, v30, &qword_280882F40, &qword_2723856A8);

            swift_beginAccess();
            *v18 = v31;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v38, "Invalid rank: ");
    HIBYTE(v38[1]) = -18;
    v38[4] = v16;
    v21 = sub_27237862C();
    MEMORY[0x2743C4AD0](v21);

    v22 = v38[1];
    sub_2722032B4();
    swift_allocError();
    *v23 = v38[0];
    v23[1] = v22;
    swift_willThrow();

LABEL_18:

    return;
  }

  v24 = a3[6];
  if ((v24 & 0x8000000000000000) == 0)
  {
    if (v24)
    {
      v25 = sub_272377B5C();
      *(v25 + 16) = v24;
      bzero((v25 + 32), 8 * v24);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v17 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v25 = MEMORY[0x277D84F90];
    }

    v32 = sub_272258594(v25, a3[5], &qword_280882F50, &qword_2723856B8);

    if (a3[2])
    {
      v33 = a3[4];

      v34 = sub_272258594(v32, v33, &qword_280882F48, &qword_2723856B0);

      swift_beginAccess();
      *(v12 + 184) = v34;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_27231DEB4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v14 = swift_allocObject();
  sub_272320954(a1, a2, a3, a4, a5, v8, a7);
  return v14;
}

void sub_27231DF4C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 176) = 0;
  *(v12 + 184) = 0;
  v13 = (v12 + 184);
  *(v12 + 192) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = 1;
  *(v12 + 96) = 0;
  *(v12 + 104) = 1;
  *(v12 + 112) = 0;
  *(v12 + 120) = 1;
  *(v12 + 128) = 0;
  *(v12 + 136) = 1;
  *(v12 + 152) = 0;
  *(v12 + 160) = 0;
  *(v12 + 144) = 0;
  *(v12 + 168) = 2;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  *(v12 + 32) = a5;
  v14 = *(a5 + 16);

  v15 = sub_272274C18(v14);
  if (v35)
  {

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return;
  }

  *(v12 + 56) = v15;
  *(v12 + 64) = a6;
  *(v12 + 72) = a7;
  v16 = a3[2];
  if (v16 <= 2)
  {
    if (v16 == 1)
    {

      goto LABEL_18;
    }

    if (v16 != 2)
    {
      goto LABEL_16;
    }

    v17 = a3[5];
    if (v17 < 0)
    {
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v13 = (v12 + 176);
    if (!v17)
    {
      goto LABEL_23;
    }

    v16 = sub_272377B5C();
    *(v16 + 16) = v17;
    bzero((v16 + 32), 4 * v17);
    if (a3[2])
    {
LABEL_24:
      v25 = a3[4];

      v26 = sub_272258594(v16, v25, &qword_280881858, &unk_27237C260);

      swift_beginAccess();
      *v13 = v26;

      return;
    }

    __break(1u);
  }

  if (v16 != 3)
  {
    if (v16 == 4)
    {
      v18 = a3;
      v19 = a3[7];
      if ((v19 & 0x8000000000000000) == 0)
      {
        if (v19)
        {
          v16 = sub_272377B5C();
          *(v16 + 16) = v19;
          bzero((v16 + 32), 4 * v19);
          if (v18[2] < 3uLL)
          {
            __break(1u);
            goto LABEL_16;
          }
        }

        else
        {
          v16 = MEMORY[0x277D84F90];
        }

        v27 = sub_272258594(v16, v18[6], &qword_280881858, &unk_27237C260);

        if (v18[2] >= 2uLL)
        {
          v28 = sub_272258594(v27, v18[5], &qword_280881F28, &unk_272381E80);

          if (v18[2])
          {
            v29 = v18[4];

            v30 = sub_272258594(v28, v29, &qword_280882E70, &qword_2723855D0);

            swift_beginAccess();
            *(v12 + 192) = v30;

            return;
          }

          goto LABEL_37;
        }

        goto LABEL_35;
      }

      goto LABEL_33;
    }

LABEL_16:

    sub_27237820C();

    strcpy(v37, "Invalid rank: ");
    HIBYTE(v37[1]) = -18;
    v37[4] = v16;
    v20 = sub_27237862C();
    MEMORY[0x2743C4AD0](v20);

    v21 = v37[1];
    sub_2722032B4();
    swift_allocError();
    *v22 = v37[0];
    v22[1] = v21;
    swift_willThrow();

LABEL_18:

    return;
  }

  v23 = a3[6];
  if ((v23 & 0x8000000000000000) == 0)
  {
    if (v23)
    {
      v24 = sub_272377B5C();
      *(v24 + 16) = v23;
      bzero((v24 + 32), 4 * v23);
      if (a3[2] < 2uLL)
      {
        __break(1u);
LABEL_23:
        v16 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    else
    {
      v24 = MEMORY[0x277D84F90];
    }

    v31 = sub_272258594(v24, a3[5], &qword_280881858, &unk_27237C260);

    if (a3[2])
    {
      v32 = a3[4];

      v33 = sub_272258594(v31, v32, &qword_280881F28, &unk_272381E80);

      swift_beginAccess();
      *v13 = v33;

      return;
    }

    goto LABEL_36;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_27231E45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  v14 = swift_allocObject();
  sub_2723206C4(a1, a2, a3, a4, a5, v8, a7);
  return v14;
}

uint64_t sub_27231E4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  v16 = swift_allocObject();
  *(v16 + 80) = 0;
  *(v16 + 88) = 1;
  *(v16 + 96) = 0;
  *(v16 + 104) = 1;
  *(v16 + 112) = 0;
  *(v16 + 120) = 1;
  *(v16 + 128) = 0;
  *(v16 + 136) = 1;
  *(v16 + 152) = 0;
  *(v16 + 160) = 0;
  *(v16 + 144) = 0;
  *(v16 + 168) = 2;
  *(v16 + 40) = a1;
  *(v16 + 48) = a2;
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  v17 = *(a5 + 16);

  v18 = sub_272274C18(v17);
  if (v8)
  {
    swift_bridgeObjectRelease_n();

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v19 = v18;

    *(v16 + 56) = v19;
    *(v16 + 64) = a6;
    *(v16 + 72) = a7;
  }

  return v16;
}

uint64_t sub_27231E638(uint64_t a1)
{
  v3 = *v1;
  v4 = (*(*v1 + 296))();
  v5 = *(*v1 + 600);
  v6 = *(v3 + 608);
  v7 = *(v3 + 616);

  return v5(a1, v4, v6, v7);
}

uint64_t sub_27231E724(uint64_t a1)
{
  sub_272377BAC();
  sub_272377BAC();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_272377A6C();
  sub_27237835C();
  swift_getWitnessTable();
  v2 = sub_272377BBC();
  (*(*v1 + 624))(v2);
}

uint64_t sub_27231E884(uint64_t a1)
{
  sub_272377BAC();
  sub_272377BAC();
  sub_272377BAC();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_272377A6C();
  sub_27237835C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_272377A6C();
  sub_27237835C();
  swift_getWitnessTable();
  v2 = sub_272377BBC();
  (*(*v1 + 624))(v2);
}

uint64_t sub_27231EA58(uint64_t a1)
{
  sub_272377BAC();
  sub_272377BAC();
  sub_272377BAC();
  sub_272377BAC();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_272377A6C();
  sub_27237835C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_272377A6C();
  sub_27237835C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_272377A6C();
  sub_27237835C();
  swift_getWitnessTable();
  v2 = sub_272377BBC();
  (*(*v1 + 624))(v2);
}

void *sub_27231EC9C()
{

  return v0;
}

uint64_t sub_27231ECEC()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_27231ED38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_27231EE00()
{
  v1 = sub_27237820C();
  v2 = (*(*v0 + 272))(v1);
  MEMORY[0x2743C4AD0](v2);

  v3 = MEMORY[0x2743C4AD0](8250, 0xE200000000000000);
  (*(*v0 + 200))(v3);
  v4 = MEMORY[0x2743C4C60]();
  v6 = v5;

  MEMORY[0x2743C4AD0](v4, v6);

  v7 = MEMORY[0x2743C4AD0](32, 0xE100000000000000);
  (*(*v0 + 224))(v7);
  v8 = sub_27237862C();
  MEMORY[0x2743C4AD0](v8);

  v9 = MEMORY[0x2743C4AD0](0xD000000000000012, 0x80000002723900A0);
  (*(*v0 + 320))(v9);
  sub_27237836C();
  v10 = MEMORY[0x2743C4AD0](0x2065646972747320, 0xE800000000000000);
  (*(*v0 + 344))(v10);
  v11 = MEMORY[0x2743C4C60]();
  v13 = v12;

  MEMORY[0x2743C4AD0](v11, v13);

  return 0;
}

uint64_t sub_27231F090()
{
  if (*(v0 + 88) != 1)
  {
    return *(v0 + 80);
  }

  result = (*(*v0 + 200))();
  v2 = *(result + 16);
  if (!v2)
  {
    v6 = 1;
LABEL_9:

    *(v0 + 80) = v6;
    *(v0 + 88) = 0;
    return v6;
  }

  v3 = (result + 32);
  v4 = 1;
  while (1)
  {
    v5 = *v3++;
    v6 = v4 * v5;
    if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
    {
      break;
    }

    v4 = v6;
    if (!--v2)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27231F130(uint64_t result)
{
  *(v1 + 80) = result;
  *(v1 + 88) = 0;
  return result;
}

uint64_t (*sub_27231F13C(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_27231F090();
  return sub_27231F184;
}

void *sub_27231F184(void *result)
{
  v1 = result[1];
  *(v1 + 80) = *result;
  *(v1 + 88) = 0;
  return result;
}

uint64_t sub_27231F194()
{
  if (*(v0 + 104) != 1)
  {
    return *(v0 + 96);
  }

  v1 = (*(*v0 + 384))();
  v2 = (*(*v0 + 408))();
  result = v1 * v2;
  if ((v1 * v2) >> 64 == (v1 * v2) >> 63)
  {
    *(v0 + 96) = result;
    *(v0 + 104) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27231F240(uint64_t result)
{
  *(v1 + 96) = result;
  *(v1 + 104) = 0;
  return result;
}

uint64_t (*sub_27231F24C(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_27231F194();
  return sub_27231F294;
}

void *sub_27231F294(void *result)
{
  v1 = result[1];
  *(v1 + 96) = *result;
  *(v1 + 104) = 0;
  return result;
}

uint64_t sub_27231F2A4()
{
  if (*(v0 + 120) != 1)
  {
    return *(v0 + 112);
  }

  v1 = (*(*v0 + 384))();
  v2 = (*(*v0 + 416))();
  result = v1 * v2;
  if ((v1 * v2) >> 64 == (v1 * v2) >> 63)
  {
    *(v0 + 112) = result;
    *(v0 + 120) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27231F350(uint64_t result)
{
  *(v1 + 112) = result;
  *(v1 + 120) = 0;
  return result;
}

uint64_t (*sub_27231F35C(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_27231F2A4();
  return sub_27231F3A4;
}

void *sub_27231F3A4(void *result)
{
  v1 = result[1];
  *(v1 + 112) = *result;
  *(v1 + 120) = 0;
  return result;
}

uint64_t sub_27231F3B4()
{
  if (*(v0 + 136) != 1)
  {
    return *(v0 + 128);
  }

  result = (*(*v0 + 344))();
  if (*(result + 16))
  {
    v2 = *(result + 32);

    result = (*(*v0 + 200))(v3);
    if (*(result + 16))
    {
      v4 = *(result + 32);

      result = v2 * v4;
      if ((v2 * v4) >> 64 == (v2 * v4) >> 63)
      {
        *(v0 + 128) = result;
        *(v0 + 136) = 0;
        return result;
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_27231F480(uint64_t result)
{
  *(v1 + 128) = result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t (*sub_27231F48C(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_27231F3B4();
  return sub_27231F4D4;
}

void *sub_27231F4D4(void *result)
{
  v1 = result[1];
  *(v1 + 128) = *result;
  *(v1 + 136) = 0;
  return result;
}

uint64_t sub_27231F4E4()
{
  v1 = v0[18];
  if (v1)
  {

    return v1;
  }

  v2 = (*(*v0 + 200))();
  v3 = v2;
  if (*(v2 + 16) > 3uLL)
  {
    v1 = v2;
LABEL_13:
    v0[18] = v1;

    return v1;
  }

  while (1)
  {
    sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_27237AF80;
    *(v1 + 32) = 1;
    v4 = *(v3 + 16);
    if (!v4)
    {

      v5 = *(v1 + 16);
      goto LABEL_6;
    }

    v6 = sub_27220897C(1, v4 + 1, 1, v1);
    if (!*(v3 + 16))
    {
      goto LABEL_17;
    }

    v1 = v6;
    v7 = *(v6 + 2);
    if ((*(v6 + 3) >> 1) - v7 < v4)
    {
      break;
    }

    memcpy(&v6[8 * v7 + 32], (v3 + 32), 8 * v4);

    v8 = *(v1 + 16);
    v9 = __OFADD__(v8, v4);
    v5 = v8 + v4;
    if (v9)
    {
      goto LABEL_16;
    }

    *(v1 + 16) = v5;
LABEL_6:
    v3 = v1;
    if (v5 >= 4)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:

  __break(1u);
  return result;
}

uint64_t (*sub_27231F67C(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_27231F4E4();
  return sub_27231F6C4;
}

char *sub_27231F6D4()
{
  v1 = v0[19];
  if (v1)
  {

    return v1;
  }

  v2 = (*(*v0 + 344))();
  v3 = v2;
  if (*(v2 + 16) > 3uLL)
  {
    v1 = v2;
LABEL_21:
    v0[19] = v1;

    return v1;
  }

  v4 = *(*v0 + 472);
  while (1)
  {
    sub_2721F065C(&qword_2808818A0, &unk_27237E2A0);
    v1 = swift_allocObject();
    *(v1 + 1) = xmmword_27237AF80;
    result = v4();
    *(v1 + 4) = result;
    v7 = *(v3 + 16);
    v8 = *(v1 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      break;
    }

    if (v9 > *(v1 + 3) >> 1)
    {
      if (v8 <= v9)
      {
        v12 = v8 + v7;
      }

      else
      {
        v12 = *(v1 + 2);
      }

      result = sub_27220897C(1, v12, 1, v1);
      v1 = result;
      v8 = *(result + 2);
      if (!*(v3 + 16))
      {
LABEL_5:

        if (v7)
        {
          goto LABEL_24;
        }

LABEL_6:
        v6 = *(v1 + 2);
        goto LABEL_7;
      }
    }

    else if (!v7)
    {
      goto LABEL_5;
    }

    if (((*(v1 + 3) >> 1) - v8) < v7)
    {
      goto LABEL_25;
    }

    memcpy(&v1[8 * v8 + 32], (v3 + 32), 8 * v7);

    if (!v7)
    {
      goto LABEL_6;
    }

    v10 = *(v1 + 2);
    v11 = __OFADD__(v10, v7);
    v6 = v10 + v7;
    if (v11)
    {
      goto LABEL_26;
    }

    *(v1 + 2) = v6;
LABEL_7:
    v3 = v1;
    if (v6 >= 4)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t (*sub_27231F8C8(char **a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_27231F6D4();
  return sub_27231F910;
}

uint64_t sub_27231F920()
{
  if (v0[20])
  {
    v1 = v0[20];
LABEL_3:

    return v1;
  }

  result = (*(*v0 + 384))();
  if (result < 0)
  {
    goto LABEL_83;
  }

  if (result)
  {
    v3 = result;
    v1 = sub_272377B5C();
    *(v1 + 16) = v3;
    bzero((v1 + 32), 8 * v3);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v4 = (*v0 + 496);
  v5 = *v4;
  result = (*v4)();
  if (*(result + 16) < 4uLL)
  {
    goto LABEL_84;
  }

  v6 = *(result + 56);

  result = (v5)(v7);
  if (*(result + 16) < 3uLL)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v8 = *(result + 48);

  v9 = v6 * v8;
  if ((v6 * v8) >> 64 != (v6 * v8) >> 63)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  result = (v5)(result);
  if (*(result + 16) < 2uLL)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v10 = *(result + 40);

  v47 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  result = (v5)(result);
  if (!*(result + 16))
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v11 = *(result + 32);

  if ((v11 & 0x8000000000000000) == 0)
  {
    if (!v11)
    {
LABEL_58:
      v0[20] = v1;

      goto LABEL_3;
    }

    v46 = 0;
    v12 = 0;
    v13 = *(*v0 + 520);
    v14 = *v0 + 520;
    v45 = v1 + 32;
    v39 = 8 * v9;
    v55 = 8 * v6;
    v56 = v5;
    v58 = v6;
    v40 = v9;
    v38 = v11;
    while (1)
    {
      v15 = v13;
      v16 = v14;
      result = v13(result);
      if (!*(result + 16))
      {
        break;
      }

      v17 = *(result + 32);

      v44 = v12 * v17;
      if ((v12 * v17) >> 64 != (v12 * v17) >> 63)
      {
        goto LABEL_79;
      }

      v43 = v12 * v47;
      if ((v12 * v47) >> 64 != (v12 * v47) >> 63)
      {
        goto LABEL_80;
      }

      result = (v5)(result);
      if (*(result + 16) < 2uLL)
      {
        goto LABEL_81;
      }

      v18 = *(result + 40);

      if (v18 < 0)
      {
        goto LABEL_82;
      }

      v13 = v15;
      v14 = v16;
      if (v18)
      {
        v19 = 0;
        v49 = v45;
        v48 = v46;
        v41 = v18;
        v42 = v12;
        while (1)
        {
          v50 = v19;
          result = v13(result);
          if (*(result + 16) < 2uLL)
          {
            break;
          }

          v20 = *(result + 40);

          v21 = v50 * v20;
          if ((v50 * v20) >> 64 != (v50 * v20) >> 63)
          {
            goto LABEL_74;
          }

          v22 = v50 * v9;
          if ((v50 * v9) >> 64 != (v50 * v9) >> 63)
          {
            goto LABEL_75;
          }

          result = (v5)(result);
          if (*(result + 16) < 3uLL)
          {
            goto LABEL_76;
          }

          v57 = *(result + 48);

          if (v57 < 0)
          {
            goto LABEL_77;
          }

          v13 = v15;
          v14 = v16;
          if (v57)
          {
            v23 = 0;
            v53 = v44 + v21;
            v24 = __OFADD__(v44, v21);
            v54 = v24;
            v51 = v43 + v22;
            v25 = __OFADD__(v43, v22);
            v52 = v25;
            v27 = v48;
            v26 = v49;
            while (1)
            {
              v59 = v23;
              result = v13(result);
              if (*(result + 16) < 3uLL)
              {
                break;
              }

              v28 = *(result + 48);

              v29 = v59 * v28;
              if ((v59 * v28) >> 64 != (v59 * v28) >> 63)
              {
                goto LABEL_65;
              }

              if ((v59 * v58) >> 64 != (v59 * v58) >> 63)
              {
                goto LABEL_66;
              }

              result = (v5)(result);
              if (*(result + 16) < 4uLL)
              {
                goto LABEL_67;
              }

              v30 = *(result + 56);

              if (v30 < 0)
              {
                goto LABEL_68;
              }

              v13 = v15;
              v14 = v16;
              if (v30)
              {
                if (v54)
                {
                  goto LABEL_69;
                }

                v31 = __OFADD__(v53, v29);
                v32 = v53 + v29;
                if (v31)
                {
                  goto LABEL_70;
                }

                if (v52)
                {
                  goto LABEL_71;
                }

                if (__OFADD__(v51, v59 * v58))
                {
                  goto LABEL_72;
                }

                v33 = 0;
                while (1)
                {
                  result = v13(result);
                  if (*(result + 16) < 4uLL)
                  {
                    break;
                  }

                  v34 = v1;
                  v35 = *(result + 56);

                  v36 = v33 * v35;
                  if ((v33 * v35) >> 64 != (v33 * v35) >> 63)
                  {
                    goto LABEL_60;
                  }

                  v31 = __OFADD__(v32, v36);
                  v37 = v32 + v36;
                  if (v31)
                  {
                    goto LABEL_61;
                  }

                  if (v27 < 0)
                  {
                    goto LABEL_62;
                  }

                  if ((v27 + v33) >= *(v34 + 16))
                  {
                    goto LABEL_63;
                  }

                  v1 = v34;
                  *(v26 + 8 * v33++) = v37;
                  v13 = v15;
                  v14 = v16;
                  if (v30 == v33)
                  {
                    goto LABEL_38;
                  }
                }

                __break(1u);
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
LABEL_62:
                __break(1u);
LABEL_63:
                __break(1u);
                break;
              }

LABEL_38:
              v23 = v59 + 1;
              v27 += v58;
              v26 += v55;
              v5 = v56;
              if (v59 + 1 == v57)
              {
                goto LABEL_24;
              }
            }

            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
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
            __break(1u);
            break;
          }

LABEL_24:
          v19 = v50 + 1;
          v9 = v40;
          v48 += v40;
          v49 += v39;
          v12 = v42;
          if (v50 + 1 == v41)
          {
            goto LABEL_57;
          }
        }

        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        break;
      }

LABEL_57:
      ++v12;
      v46 += v47;
      v45 += 8 * v47;
      if (v12 == v38)
      {
        goto LABEL_58;
      }
    }

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
    goto LABEL_85;
  }

LABEL_90:
  __break(1u);
  return result;
}

uint64_t (*sub_27231FE94(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_27231F920();
  return sub_27231FEDC;
}

uint64_t sub_27231FEEC()
{
  v1 = v0[168];
  if (v1 != 2)
  {
    return v1 & 1;
  }

  result = (*(*v0 + 544))();
  v3 = result;
  v4 = 0;
  v5 = 0;
  v6 = *(result + 16);
  while (1)
  {
    LOBYTE(v1) = v6 != v5;
    if (v6 == v5)
    {
      goto LABEL_9;
    }

    if (v5 >= *(v3 + 16))
    {
      break;
    }

    if (*(v3 + 8 * v5 + 32) != v4)
    {
      goto LABEL_9;
    }

    ++v5;
    result = (*(*v0 + 408))();
    v7 = __OFADD__(v4, result);
    v4 += result;
    if (v7)
    {
      __break(1u);
LABEL_9:

      v0[168] = v6 != v5;
      return v1 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_27231FFE8(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = sub_27231FEEC() & 1;
  return sub_272320034;
}

unint64_t sub_272320044(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(*v4 + 568))(v9))
  {
    v12 = (*(*v4 + 544))();
    result = (*(*v4 + 384))();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v14 = result;
      if (!result)
      {
      }

      if (result <= *(v12 + 16))
      {
        v15 = 0;
        do
        {
          sub_27237809C();
          (*(v8 + 40))(a1 + *(v8 + 72) * v15++, v11, a4);
        }

        while (v14 != v15);
      }
    }

    __break(1u);
  }

  else
  {
    v16 = sub_27237802C();
    v17 = (*(*v4 + 424))();

    return memcpy(v16, a3, v17);
  }

  return result;
}

unint64_t sub_2723202C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v9 = (*(*v3 + 568))(v8);
  if (v9)
  {
    v10 = (*(*v3 + 544))();
    result = (*(*v3 + 384))();
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_15;
    }

    v12 = result;
    if (result)
    {
      if (result > *(v10 + 16))
      {
LABEL_16:
        __break(1u);
        return result;
      }

      v13 = 0;
      v14 = (v6 + 8);
      while (1)
      {
        result = sub_272377BCC();
        if ((v7 & 0x8000000000000000) != 0)
        {
          break;
        }

        v15 = *(v10 + 8 * v13++ + 32);
        memcpy((a2 + v15), &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
        (*v14)(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
        if (v12 == v13)
        {
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  else
  {
    MEMORY[0x28223BE20](v9);
    *(&v16 - 2) = a2;
    *(&v16 - 1) = v3;
    sub_2721F065C(&qword_280882E50, qword_272385340);
    return sub_272377B1C();
  }
}

uint64_t sub_272320550(uint64_t a1)
{
  v3 = (*v1 + 384);
  v4 = *v3;
  result = (*v3)();
  if (result < 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;

  if (v6)
  {
    v7 = sub_272377B5C();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = sub_272322B78(v7 + 32, a1);
  result = (v4)(v8);
  if (v6 < result)
  {
    goto LABEL_10;
  }

  *(v7 + 16) = result;

  v10 = (*(*v1 + 296))(v9);
  (*(*v1 + 600))(v7, v10, MEMORY[0x277D84C58], MEMORY[0x277D84C90]);
}

uint64_t sub_2723206C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 80) = 0;
  *(v7 + 88) = 1;
  *(v7 + 96) = 0;
  *(v7 + 104) = 1;
  *(v7 + 112) = 0;
  *(v7 + 120) = 1;
  *(v7 + 128) = 0;
  *(v7 + 136) = 1;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 144) = 0;
  *(v7 + 168) = 2;
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  *(v7 + 32) = a5;
  v11 = *(a5 + 16);

  v12 = sub_272274C18(v11);
  if (v8)
  {

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v12;

    *(v7 + 56) = v13;
    *(v7 + 64) = a6;
    *(v7 + 72) = a7;
  }

  return v7;
}

double sub_2723207D4()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_27232080C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;
}

double sub_272320854()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_27232088C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 184) = a1;
}

double sub_2723208D4()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_27232090C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 192) = a1;
}

uint64_t *sub_272320954(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v9 = v7;
  v59 = a7;
  v58 = a6;
  v57 = *v9;
  v12 = *(v57 + 608);
  v56 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v55 - v14;
  v9[23] = 0;
  v9[22] = 0;
  v9[24] = 0;
  v9[10] = 0;
  *(v9 + 88) = 1;
  v9[12] = 0;
  *(v9 + 104) = 1;
  v9[14] = 0;
  *(v9 + 120) = 1;
  v9[16] = 0;
  *(v9 + 136) = 1;
  v9[19] = 0;
  v9[20] = 0;
  v9[18] = 0;
  *(v9 + 168) = 2;
  v9[5] = v13;
  v9[6] = v16;
  v9[2] = v17;
  v9[3] = v18;
  v9[4] = v19;
  v20 = *(v19 + 16);

  v21 = sub_272274C18(v20);
  if (v8)
  {

    type metadata accessor for VAEspressoV2Port();
    swift_deallocPartialClassInstance();
    return v9;
  }

  v23 = v15;
  v55 = a5;
  v9[7] = v21;
  *(v9 + 64) = v58;
  v9[9] = v59;
  v24 = a3[2];
  if (v24 <= 2)
  {
    v25 = v56;
    if (v24 == 1)
    {

      goto LABEL_19;
    }

    if (v24 == 2)
    {
      v26 = v23;
      result = sub_27237839C();
      if (a3[2] >= 2uLL)
      {
        v27 = sub_272322A74(v26, a3[5], v12);
        result = (*(v25 + 8))(v26, v12);
        v60[0] = v27;
        if (a3[2])
        {
          v28 = a3[4];

          v29 = sub_272377BAC();
          v30 = sub_272322A74(v60, v28, v29);

          swift_beginAccess();
          v9[22] = v30;

          return v9;
        }

        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_17:

    v60[0] = 0;
    v60[1] = 0xE000000000000000;
    sub_27237820C();

    strcpy(v60, "Invalid rank: ");
    HIBYTE(v60[1]) = -18;
    v60[4] = v24;
    v43 = sub_27237862C();
    MEMORY[0x2743C4AD0](v43);

    v44 = v60[0];
    v45 = v60[1];
    sub_2722032B4();
    swift_allocError();
    *v46 = v44;
    v46[1] = v45;
    swift_willThrow();

LABEL_19:

    return v9;
  }

  if (v24 == 3)
  {
    v47 = v23;
    result = sub_27237839C();
    if (a3[2] >= 3uLL)
    {
      v48 = sub_272322A74(v47, a3[6], v12);
      result = (*(v56 + 8))(v47, v12);
      v60[0] = v48;
      if (a3[2] >= 2uLL)
      {
        v49 = a3[5];
        v50 = sub_272377BAC();
        v51 = sub_272322A74(v60, v49, v50);

        v60[0] = v51;
        if (a3[2])
        {
          v52 = a3[4];

          v53 = sub_272377BAC();
          v54 = sub_272322A74(v60, v52, v53);

          swift_beginAccess();
          v9[23] = v54;

          return v9;
        }

        goto LABEL_31;
      }

      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v31 = v56;
  if (v24 != 4)
  {
    goto LABEL_17;
  }

  v32 = v23;
  result = sub_27237839C();
  if (a3[2] < 4uLL)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v59 = 0;
  v33 = sub_272322A74(v32, a3[7], v12);
  result = (*(v31 + 8))(v32, v12);
  v60[0] = v33;
  if (a3[2] < 3uLL)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v34 = a3[6];
  v35 = sub_272377BAC();
  v36 = sub_272322A74(v60, v34, v35);

  v60[0] = v36;
  if (a3[2] < 2uLL)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v37 = a3[5];
  v38 = sub_272377BAC();
  v39 = sub_272322A74(v60, v37, v38);

  v60[0] = v39;
  if (a3[2])
  {
    v40 = a3[4];

    v41 = sub_272377BAC();
    v42 = sub_272322A74(v60, v40, v41);

    swift_beginAccess();
    v9[24] = v42;

    return v9;
  }

LABEL_32:
  __break(1u);
  return result;
}

void *sub_272321088(uint64_t a1)
{
  v2 = *(*v1 + 608);
  v31 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v27 - v4;
  v32 = (*(v6 + 720))(v3);
  v7 = *(*v1 + 200);
  v33 = *v1 + 200;
  v34 = v7;
  result = v7();
  if (!result[2])
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v9 = result[4];

  if (v9 < 0)
  {
    goto LABEL_26;
  }

  if (v9)
  {
    v10 = 0;
    v29 = v1;
    v30 = v31 + 40;
    v28 = v9;
    while (1)
    {
      result = (v34)(result);
      if (result[2] < 2uLL)
      {
        break;
      }

      v11 = result[5];

      if (v11 < 0)
      {
        goto LABEL_24;
      }

      if (v11)
      {
        v12 = 0;
        while (1)
        {
          result = (v34)(result);
          if (result[2] < 2uLL)
          {
            break;
          }

          v13 = result[5];

          v14 = v10 * v13;
          if ((v10 * v13) >> 64 != (v10 * v13) >> 63)
          {
            goto LABEL_21;
          }

          result = (v14 + v12);
          if (__OFADD__(v14, v12))
          {
            goto LABEL_22;
          }

          sub_272377BCC();
          result = (*(*v1 + 664))(v35);
          if (!*v15)
          {
            goto LABEL_27;
          }

          v16 = result;
          v17 = v15;
          v18 = v12 + 1;
          v19 = sub_272377BAC();
          sub_272377BAC();
          sub_272377B3C();
          sub_272322888(v10, *v17, v19);
          v20 = *v17;
          v21 = v5;
          v22 = v20 + 8 * v10;
          sub_272377B3C();
          sub_272322888(v12, *(v22 + 32), v2);
          v23 = *(v22 + 32);
          v5 = v21;
          isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
          v25 = v23 & 0xFFFFFFFFFFFFFF8;
          if ((isClassOrObjCExistentialType & 1) == 0)
          {
            v25 = v23;
          }

          (*(v31 + 40))(v25 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v12, v21, v2);
          result = (v16)(v35, 0);
          ++v12;
          v1 = v29;
          if (v11 == v18)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        break;
      }

LABEL_5:
      if (++v10 == v28)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_18:
  result = (*(*v1 + 648))(result);
  if (result)
  {
    v26 = result;

    return v26;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_272321404(uint64_t a1)
{
  v2 = *(*v1 + 608);
  v44 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v38 - v4;
  v43 = (*(v6 + 720))(v3);
  v7 = *(*v1 + 200);
  v8 = *v1 + 200;
  result = v7();
  if (!result[2])
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v10 = result[4];

  if (v10 < 0)
  {
    goto LABEL_43;
  }

  if (v10)
  {
    v46 = 0;
    v41 = v44 + 40;
    v42 = v1;
    v38 = v10;
    v40 = v7;
    while (1)
    {
      result = (v7)(result);
      if (result[2] < 2uLL)
      {
        break;
      }

      v11 = result[5];

      if (v11 < 0)
      {
        goto LABEL_41;
      }

      if (v11)
      {
        v47 = 0;
        v39 = v11;
        while (1)
        {
          result = (v7)(result);
          if (result[2] < 3uLL)
          {
            break;
          }

          v12 = result[6];

          if (v12 < 0)
          {
            goto LABEL_39;
          }

          if (v12)
          {
            v13 = 0;
            while (1)
            {
              result = (v7)(result);
              if (result[2] < 2uLL)
              {
                break;
              }

              v14 = result[5];

              v15 = v46 * v14;
              if ((v46 * v14) >> 64 != (v46 * v14) >> 63)
              {
                goto LABEL_31;
              }

              result = (v7)(result);
              if (result[2] < 3uLL)
              {
                goto LABEL_32;
              }

              v16 = result[6];

              v17 = v15 * v16;
              if ((v15 * v16) >> 64 != (v15 * v16) >> 63)
              {
                goto LABEL_33;
              }

              result = (v7)(result);
              if (result[2] < 3uLL)
              {
                goto LABEL_34;
              }

              v18 = result[6];

              v19 = v47 * v18;
              if ((v47 * v18) >> 64 != (v47 * v18) >> 63)
              {
                goto LABEL_35;
              }

              v20 = __OFADD__(v17, v19);
              v21 = v17 + v19;
              if (v20)
              {
                goto LABEL_36;
              }

              result = (v21 + v13);
              if (__OFADD__(v21, v13))
              {
                goto LABEL_37;
              }

              v22 = v12;
              v23 = v8;
              sub_272377BCC();
              result = (*(*v1 + 688))(v48);
              if (!*v24)
              {
                goto LABEL_44;
              }

              v25 = result;
              v26 = v24;
              v45 = v13 + 1;
              v27 = sub_272377BAC();
              v28 = v5;
              v29 = sub_272377BAC();
              sub_272377BAC();
              sub_272377B3C();
              v30 = v46;
              sub_272322888(v46, *v26, v29);
              v31 = *v26 + 8 * v30;
              sub_272377B3C();
              v32 = v47;
              sub_272322888(v47, *(v31 + 32), v27);
              v33 = *(v31 + 32) + 8 * v32;
              sub_272377B3C();
              sub_272322888(v13, *(v33 + 32), v2);
              v34 = *(v33 + 32);
              v5 = v28;
              v1 = v42;
              v7 = v40;
              isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
              v36 = v34 & 0xFFFFFFFFFFFFFF8;
              if ((isClassOrObjCExistentialType & 1) == 0)
              {
                v36 = v34;
              }

              (*(v44 + 40))(v36 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v13, v5, v2);
              result = (v25)(v48, 0);
              v13 = v45;
              v12 = v22;
              v8 = v23;
              if (v22 == v45)
              {
                goto LABEL_10;
              }
            }

            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
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
            break;
          }

LABEL_10:
          if (++v47 == v39)
          {
            goto LABEL_5;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
        break;
      }

LABEL_5:
      if (++v46 == v38)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_28:
  result = (*(*v1 + 672))(result);
  if (result)
  {
    v37 = result;

    return v37;
  }

LABEL_45:
  __break(1u);
  return result;
}

void *sub_2723218B4(uint64_t a1)
{
  v2 = *(*v1 + 608);
  v57 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = &v49 - v4;
  v56 = (*(v6 + 720))(v3);
  v7 = *(*v1 + 200);
  v8 = *v1 + 200;
  result = v7();
  if (!result[2])
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v10 = result[4];

  if (v10 < 0)
  {
    goto LABEL_64;
  }

  if (v10)
  {
    v60 = 0;
    v54 = v57 + 40;
    v55 = v2;
    v50 = v10;
    v53 = v8;
    while (1)
    {
      result = (v7)(result);
      if (result[2] < 2uLL)
      {
        break;
      }

      v11 = result[5];

      if (v11 < 0)
      {
        goto LABEL_62;
      }

      if (v11)
      {
        v61 = 0;
        v51 = v11;
        while (1)
        {
          result = (v7)(result);
          if (result[2] < 3uLL)
          {
            break;
          }

          v12 = result[6];

          if (v12 < 0)
          {
            goto LABEL_60;
          }

          if (v12)
          {
            v62 = 0;
            v52 = v12;
            while (1)
            {
              result = (v7)(result);
              if (result[2] < 4uLL)
              {
                break;
              }

              v13 = result[7];

              if (v13 < 0)
              {
                goto LABEL_58;
              }

              if (v13)
              {
                v14 = 0;
                v58 = v13;
                while (1)
                {
                  result = (v7)(result);
                  if (result[2] < 2uLL)
                  {
                    break;
                  }

                  v15 = result[5];

                  v16 = v60 * v15;
                  if ((v60 * v15) >> 64 != (v60 * v15) >> 63)
                  {
                    goto LABEL_43;
                  }

                  result = (v7)(result);
                  if (result[2] < 3uLL)
                  {
                    goto LABEL_44;
                  }

                  v17 = result[6];

                  v18 = v16 * v17;
                  if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
                  {
                    goto LABEL_45;
                  }

                  result = (v7)(result);
                  if (result[2] < 4uLL)
                  {
                    goto LABEL_46;
                  }

                  v19 = result[7];

                  v20 = v18 * v19;
                  if ((v18 * v19) >> 64 != (v18 * v19) >> 63)
                  {
                    goto LABEL_47;
                  }

                  result = (v7)(result);
                  if (result[2] < 3uLL)
                  {
                    goto LABEL_48;
                  }

                  v21 = result[6];

                  v22 = v61 * v21;
                  if ((v61 * v21) >> 64 != (v61 * v21) >> 63)
                  {
                    goto LABEL_49;
                  }

                  result = (v7)(result);
                  if (result[2] < 4uLL)
                  {
                    goto LABEL_50;
                  }

                  v23 = result[7];

                  v24 = v22 * v23;
                  if ((v22 * v23) >> 64 != (v22 * v23) >> 63)
                  {
                    goto LABEL_51;
                  }

                  v25 = __OFADD__(v20, v24);
                  v26 = v20 + v24;
                  if (v25)
                  {
                    goto LABEL_52;
                  }

                  result = (v7)(result);
                  if (result[2] < 4uLL)
                  {
                    goto LABEL_53;
                  }

                  v27 = result[7];

                  v28 = v62 * v27;
                  if ((v62 * v27) >> 64 != (v62 * v27) >> 63)
                  {
                    goto LABEL_54;
                  }

                  v25 = __OFADD__(v26, v28);
                  v29 = v26 + v28;
                  if (v25)
                  {
                    goto LABEL_55;
                  }

                  result = (v29 + v14);
                  if (__OFADD__(v29, v14))
                  {
                    goto LABEL_56;
                  }

                  v30 = v7;
                  sub_272377BCC();
                  v31 = v1;
                  result = (*(*v1 + 712))(v63);
                  if (!*v32)
                  {
                    goto LABEL_65;
                  }

                  v33 = result;
                  v34 = v32;
                  v59 = v14 + 1;
                  v35 = sub_272377BAC();
                  v36 = sub_272377BAC();
                  v37 = sub_272377BAC();
                  sub_272377BAC();
                  sub_272377B3C();
                  v38 = v60;
                  sub_272322888(v60, *v34, v37);
                  v39 = *v34 + 8 * v38;
                  sub_272377B3C();
                  v40 = v61;
                  sub_272322888(v61, *(v39 + 32), v36);
                  v41 = *(v39 + 32) + 8 * v40;
                  sub_272377B3C();
                  v42 = v62;
                  sub_272322888(v62, *(v41 + 32), v35);
                  v43 = *(v41 + 32) + 8 * v42;
                  v44 = v55;
                  sub_272377B3C();
                  sub_272322888(v14, *(v43 + 32), v44);
                  v45 = *(v43 + 32);
                  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
                  v47 = v45 & 0xFFFFFFFFFFFFFF8;
                  if ((isClassOrObjCExistentialType & 1) == 0)
                  {
                    v47 = v45;
                  }

                  (*(v57 + 40))(v47 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v14, v5, v44);
                  result = (v33)(v63, 0);
                  v14 = v59;
                  v1 = v31;
                  v7 = v30;
                  if (v58 == v59)
                  {
                    goto LABEL_13;
                  }
                }

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
                break;
              }

LABEL_13:
              if (++v62 == v52)
              {
                goto LABEL_38;
              }
            }

            __break(1u);
LABEL_58:
            __break(1u);
            break;
          }

LABEL_38:
          if (++v61 == v51)
          {
            goto LABEL_39;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
        break;
      }

LABEL_39:
      if (++v60 == v50)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

LABEL_40:
  result = (*(*v1 + 696))(result);
  if (result)
  {
    v48 = result;

    return v48;
  }

LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_272321EA0()
{
}

uint64_t sub_272321ED8()
{
  sub_272321FD8();

  return swift_deallocClassInstance();
}

uint64_t sub_272321F0C()
{
  v1 = (*v0 + 384);
  v2 = *v1;
  v3 = (*v1)();

  v4 = sub_272322FF4(v3, v0);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_2723228DC(v4);
  }

  v5 = v2();
  v6 = sub_272323118(v4 + 32, v5);

  return v6;
}

void *sub_272321FD8()
{
  sub_27231EC9C();

  return v0;
}

uint64_t sub_27232200C()
{
  sub_27231EC9C();

  return swift_deallocClassInstance();
}

uint64_t sub_272322058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  v15 = swift_allocObject();
  *(v15 + 80) = 0;
  *(v15 + 88) = 1;
  *(v15 + 96) = 0;
  *(v15 + 104) = 1;
  *(v15 + 112) = 0;
  *(v15 + 120) = 1;
  *(v15 + 128) = 0;
  *(v15 + 136) = 1;
  *(v15 + 152) = 0;
  *(v15 + 160) = 0;
  *(v15 + 144) = 0;
  *(v15 + 168) = 2;
  *(v15 + 40) = a1;
  *(v15 + 48) = a2;
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  v16 = *(a5 + 16);

  v17 = sub_272274C18(v16);
  if (v8)
  {
    swift_bridgeObjectRelease_n();

    swift_deallocPartialClassInstance();
  }

  else
  {
    v18 = v17;

    *(v15 + 56) = v18;
    *(v15 + 64) = a6;
    *(v15 + 72) = a7;
  }

  return v15;
}

uint64_t sub_27232225C()
{
  sub_27231EC9C();

  return swift_deallocClassInstance();
}

char *sub_2723222DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_280882E58, "&");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

uint64_t sub_272322408(uint64_t a1)
{
  v2 = sub_2721F065C(&qword_280881A40, &unk_27237D620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_272322470(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_2721F065C(&qword_280882F58, &qword_2723856C0);
  v34 = v4;
  result = sub_2723783DC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_27237874C();
      sub_27237790C();
      result = sub_27237878C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_272322718()
{
  v1 = v0;
  sub_2721F065C(&qword_280882F58, &qword_2723856C0);
  v2 = *v0;
  v3 = sub_2723783CC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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

  return result;
}

uint64_t sub_272322888(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_2723228F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2721F065C(&qword_280882F58, &qword_2723856C0);
    v3 = sub_2723783EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_27220038C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_2723229F4@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = (*(**(v2 + 24) + 424))();
  result = memcpy(v5, a1, v6);
  *a2 = v5;
  return result;
}

uint64_t sub_272322A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_272377B4C();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      v9 = v7;
      v10 = *(a3 - 8);
      v11 = *(v10 + 16);
      v11(v7, a1, a3);
      v12 = a2 - 1;
      if (v12)
      {
        v13 = *(v10 + 72);
        v14 = v9 + v13;
        do
        {
          v11(v14, a1, a3);
          v14 += v13;
          --v12;
        }

        while (v12);
      }
    }

    sub_272377BAC();
    return v8;
  }

  return result;
}

uint64_t sub_272322B78(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v27 = sub_272376A6C();
  v2 = *(v27 - 8);
  v3 = MEMORY[0x28223BE20](v27);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = sub_2721F065C(&qword_280882E68, &qword_2723855C8);
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = sub_2721F065C(&qword_280882E60, &qword_2723855C0);
  v25 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  sub_272376A7C();
  sub_272376A2C();
  sub_272376A8C();
  sub_272376A2C();
  sub_272376A0C();
  sub_272376A0C();
  v14 = sub_272376A5C();
  v15 = *(v2 + 8);
  v16 = v5;
  v17 = v27;
  v15(v16, v27);
  v15(v7, v17);
  if ((v14 & 1) == 0)
  {
    __break(1u);
  }

  src.data = sub_272376A1C();
  src.height = v18;
  src.width = v19;
  src.rowBytes = v20;
  dest.data = sub_272376A1C();
  dest.height = v21;
  dest.width = v22;
  dest.rowBytes = v23;
  vImageConvert_PlanarFtoPlanar16F(&src, &dest, 0);
  (*(v26 + 8))(v10, v8);
  return (*(v25 + 8))(v13, v11);
}

uint64_t sub_272322EDC(uint64_t *a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = (*(*v2 + 296))();
  v8 = (*(*v2 + 592))(v5, v6, v7, *(v4 + 608), *(v4 + 616));
  result = (*(*v2 + 384))(v8);
  *a2 = result;
  return result;
}

uint64_t sub_272322FF4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (result)
    {
      v4 = sub_272377B5C();
      *(v4 + 16) = v3;
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    v5 = (*(*a2 + 296))();
    v6 = (*(*a2 + 592))(v4 + 32, v3, v5, MEMORY[0x277D84C58], MEMORY[0x277D84C90]);
    result = (*(*a2 + 384))(v6);
    if (result <= v3)
    {
      *(v4 + 16) = result;
      return v4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_272323118(uint64_t a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = sub_272376A6C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = sub_2721F065C(&qword_280882E60, &qword_2723855C0);
  v28 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = sub_2721F065C(&qword_280882E68, &qword_2723855C8);
  v27 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  if (!a1)
  {
LABEL_5:
    __break(1u);
  }

  sub_272376A8C();
  sub_272376A2C();
  sub_272376A0C();
  sub_272376A7C();
  sub_272376A3C();
  sub_272376A0C();
  sub_272376A0C();
  v16 = sub_272376A5C();
  v17 = *(v4 + 8);
  v17(v7, v3);
  v17(v9, v3);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  src.data = sub_272376A1C();
  src.height = v18;
  src.width = v19;
  src.rowBytes = v20;
  dest.data = sub_272376A1C();
  dest.height = v21;
  dest.width = v22;
  dest.rowBytes = v23;
  vImageConvert_Planar16FtoPlanarF(&src, &dest, 0);
  v24 = sub_272376A4C();
  (*(v28 + 8))(v12, v10);
  (*(v27 + 8))(v15, v13);
  return v24;
}

uint64_t sub_272323490(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2723234D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2723236B4(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = sub_272323CDC(a1, a4);
  v7 = *(v6 + 16);
  if (v7)
  {
    v22 = *(v6 + 16);
    v23 = MEMORY[0x277D84F90];
    v21 = v6;
    sub_2722005AC(0, v7, 0);
    result = v21;
    v9 = v22;
    v10 = 0;
    v11 = *(v21 + 16);
    v12 = v23;
    v13 = a2 + 32;
    v14 = *(a2 + 16);
    v15 = *(a3 + 16);
    while (v11 != v10)
    {
      if (v10 >= *(result + 16))
      {
        goto LABEL_14;
      }

      if (v14 == v10)
      {
        goto LABEL_15;
      }

      if (v15 == v10)
      {
        goto LABEL_16;
      }

      v16 = *(v21 + 32 + 4 * v10);
      v17 = *(v13 + 4 * v10);
      v18 = *(a3 + 32 + 4 * v10);
      v20 = *(v23 + 16);
      v19 = *(v23 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_2722005AC((v19 > 1), v20 + 1, 1);
        result = v21;
        v9 = v22;
      }

      ++v10;
      *(v23 + 16) = v20 + 1;
      *(v23 + 4 * v20 + 32) = (v16 * v17) + v18;
      if (v9 == v10)
      {

        return v12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_272323828@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a3)
    {
      v8 = sub_272377B5C();
      *(v8 + 16) = a3;
      bzero((v8 + 32), 4 * a3);
      v9 = sub_272377B5C();
      *(v9 + 16) = a3;
      bzero((v9 + 32), 4 * a3);
    }

    else
    {
      v9 = MEMORY[0x277D84F90];
      v8 = MEMORY[0x277D84F90];
    }

    v10 = sub_27220392C(v9, a2);

    *a4 = v6;
    a4[1] = a2;
    a4[2] = a3;
    a4[3] = 0;
    a4[4] = v8;
    a4[5] = v10;
  }

  return result;
}

uint64_t sub_2723238F8(uint64_t a1)
{
  v5 = v2[3];
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    v1 = v2;
    v8 = v2[5];
    v2 += 5;
    v7 = v8;
    if (*(v2 - 4) < v6)
    {
      v6 = *(v2 - 4);
    }

    *(v2 - 2) = v6;
    if (*(v7 + 16))
    {
      v4 = a1;
      v3 = *(v7 + 32);

      sub_2722C2B50(0, 1);
      v2 = *v2;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_11:
  v2 = sub_272241E04(0, v2[2] + 1, 1, v2);
LABEL_6:
  v10 = v2[2];
  v9 = v2[3];
  if (v10 >= v9 >> 1)
  {
    v2 = sub_272241E04((v9 > 1), v10 + 1, 1, v2);
  }

  v2[2] = v10 + 1;
  v2[v10 + 4] = v4;
  v1[5] = v2;

  sub_2722BFE3C(v11, v4);

  swift_bridgeObjectRelease_n();

  v13 = sub_2722C0018(v12, v3);

  result = swift_bridgeObjectRelease_n();
  v1[4] = v13;
  return result;
}

uint64_t sub_272323A58(uint64_t a1)
{
  sub_2723238F8(a1);
  v3 = sub_272323E6C(*(v1 + 24), *(v1 + 32));
  v4 = sub_2722C0018(a1, v3);

  return v4;
}

float sub_272323ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    if (v1 >= 8)
    {
      v3 = v1 & 0x7FFFFFFFFFFFFFF8;
      v16 = a1 + 48;
      v4 = 0.0;
      v17 = v1 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v4 = (((((((v4 + COERCE_FLOAT(*(v16 - 16))) + COERCE_FLOAT(HIDWORD(*(v16 - 16)))) + COERCE_FLOAT(*(v16 - 8))) + COERCE_FLOAT(HIDWORD(*(v16 - 16)))) + COERCE_FLOAT(*v16)) + COERCE_FLOAT(HIDWORD(*v16))) + COERCE_FLOAT(*(v16 + 8))) + COERCE_FLOAT(HIDWORD(*v16));
        v16 += 32;
        v17 -= 8;
      }

      while (v17);
      if (v1 == v3)
      {
LABEL_19:
        v21 = v4 / v1;
        v25 = MEMORY[0x277D84F90];
        sub_2722005AC(0, v1, 0);
        v5 = v25;
        v22 = *(v25 + 16);
        do
        {
          v23 = *v2;
          v26 = v5;
          v24 = *(v5 + 24);
          v6 = v22 + 1;
          if (v22 >= v24 >> 1)
          {
            sub_2722005AC((v24 > 1), v22 + 1, 1);
            v5 = v26;
          }

          *(v5 + 16) = v6;
          *(v5 + 4 * v22 + 32) = (v23 - v21) * (v23 - v21);
          ++v2;
          ++v22;
          --v1;
        }

        while (v1);
        goto LABEL_5;
      }
    }

    else
    {
      v3 = 0;
      v4 = 0.0;
    }

    v18 = v1 - v3;
    v19 = (a1 + 4 * v3 + 32);
    do
    {
      v20 = *v19++;
      v4 = v4 + v20;
      --v18;
    }

    while (v18);
    goto LABEL_19;
  }

  v5 = MEMORY[0x277D84F90];
  v6 = *(MEMORY[0x277D84F90] + 16);
  if (!v6)
  {
    v14 = 0.0;
    v8 = 0.0;
    goto LABEL_13;
  }

LABEL_5:
  if (v6 > 7)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFF8;
    v9 = v5 + 48;
    v8 = 0.0;
    v10 = v6 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v8 = (((((((v8 + COERCE_FLOAT(*(v9 - 16))) + COERCE_FLOAT(HIDWORD(*(v9 - 16)))) + COERCE_FLOAT(*(v9 - 8))) + COERCE_FLOAT(HIDWORD(*(v9 - 16)))) + COERCE_FLOAT(*v9)) + COERCE_FLOAT(HIDWORD(*v9))) + COERCE_FLOAT(*(v9 + 8))) + COERCE_FLOAT(HIDWORD(*v9));
      v9 += 32;
      v10 -= 8;
    }

    while (v10);
    if (v6 == v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    v8 = 0.0;
  }

  v11 = v6 - v7;
  v12 = (v5 + 4 * v7 + 32);
  do
  {
    v13 = *v12++;
    v8 = v8 + v13;
    --v11;
  }

  while (v11);
LABEL_12:
  v14 = v6;
LABEL_13:

  return v8 / v14;
}

uint64_t sub_272323CDC(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    sub_272323ABC(a1);
    return MEMORY[0x277D84F90];
  }

  v4 = (a1 + 32);
  if (v2 <= 7)
  {
    v5 = 0;
    v6 = 0.0;
LABEL_8:
    v10 = v2 - v5;
    v11 = (a1 + 4 * v5 + 32);
    do
    {
      v12 = *v11++;
      v6 = v6 + v12;
      --v10;
    }

    while (v10);
    goto LABEL_10;
  }

  v5 = v2 & 0x7FFFFFFFFFFFFFF8;
  v8 = a1 + 48;
  v6 = 0.0;
  v9 = v2 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v6 = (((((((v6 + COERCE_FLOAT(*(v8 - 16))) + COERCE_FLOAT(HIDWORD(*(v8 - 16)))) + COERCE_FLOAT(*(v8 - 8))) + COERCE_FLOAT(HIDWORD(*(v8 - 16)))) + COERCE_FLOAT(*v8)) + COERCE_FLOAT(HIDWORD(*v8))) + COERCE_FLOAT(*(v8 + 8))) + COERCE_FLOAT(HIDWORD(*v8));
    v8 += 32;
    v9 -= 8;
  }

  while (v9);
  if (v2 != v5)
  {
    goto LABEL_8;
  }

LABEL_10:
  v13 = v6 / v2;
  v14 = sub_272323ABC(a1);
  v19 = MEMORY[0x277D84F90];
  sub_2722005AC(0, v2, 0);
  result = v19;
  v15 = *(v19 + 16);
  v16 = sqrtf(v14 + a2);
  do
  {
    v17 = *v4;
    v20 = result;
    v18 = *(result + 24);
    if (v15 >= v18 >> 1)
    {
      sub_2722005AC((v18 > 1), v15 + 1, 1);
      result = v20;
    }

    *(result + 16) = v15 + 1;
    *(result + 4 * v15 + 32) = (v17 - v13) / v16;
    ++v4;
    ++v15;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t sub_272323E6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = a1;
    v11 = MEMORY[0x277D84F90];
    sub_2722005AC(0, v3, 0);
    result = v11;
    v7 = (a2 + 32);
    v8 = *(v11 + 16);
    do
    {
      v9 = *v7;
      v12 = result;
      v10 = *(result + 24);
      if (v8 >= v10 >> 1)
      {
        sub_2722005AC((v10 > 1), v8 + 1, 1);
        result = v12;
      }

      *(result + 16) = v8 + 1;
      *(result + 4 * v8 + 32) = v9 / v6;
      ++v7;
      ++v8;
      --v3;
    }

    while (v3);
  }

  return result;
}

__n128 sub_272323F44(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_272323F58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 20))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_272323FA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 20) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 20) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_272323FF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_272324038(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27232409C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, double a11@<D1>, double a12@<D2>, uint64_t a13)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  *(a9 + 40) = a3;
  *(a9 + 48) = a4;
  *(a9 + 24) = a11;
  *(a9 + 32) = a12;
  *(a9 + 57) = a6;
  *(a9 + 56) = a5;
  *(a9 + 58) = a7;
  *(a9 + 64) = a8;
  *(a9 + 72) = a13;
  return result;
}

uint64_t sub_2723240D0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC0000006F696475;
  v3 = 0x4164726F7779656BLL;
  v4 = a1;
  v5 = 0xEF747365424E7373;
  v6 = 0xD000000000000012;
  if (a1 == 5)
  {
    v6 = 0x6150646E6F636573;
  }

  else
  {
    v5 = 0x80000002723904B0;
  }

  v7 = 0xD000000000000010;
  v8 = 0x800000027238A3D0;
  if (a1 != 3)
  {
    v7 = 0x686374616D73696DLL;
    v8 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
  }

  else
  {
    v7 = v6;
  }

  v9 = 0x6365746544706F74;
  v10 = 0xEC0000006E6F6974;
  if (a1 != 1)
  {
    v9 = 0x6F69746365746564;
    v10 = 0xEA0000000000736ELL;
  }

  if (!a1)
  {
    v9 = 0x4164726F7779656BLL;
    v10 = 0xEC0000006F696475;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC0000006E6F6974;
        if (v11 != 0x6365746544706F74)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0xEA0000000000736ELL;
        if (v11 != 0x6F69746365746564)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF747365424E7373;
        if (v11 != 0x6150646E6F636573)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v2 = 0x80000002723904B0;
        if (v11 != 0xD000000000000012)
        {
          goto LABEL_38;
        }
      }

      goto LABEL_35;
    }

    if (a2 == 3)
    {
      v2 = 0x800000027238A3D0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_38;
      }

      goto LABEL_35;
    }

    v2 = 0xE800000000000000;
    v3 = 0x686374616D73696DLL;
  }

  if (v11 != v3)
  {
LABEL_38:
    v13 = sub_27237865C();
    goto LABEL_39;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_38;
  }

  v13 = 1;
LABEL_39:

  return v13 & 1;
}

uint64_t sub_272324324(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0xE800000000000000;
    v10 = 0x656D617246646E65;
    if (a1 != 6)
    {
      v10 = 0xD000000000000010;
      v9 = 0x8000000272390450;
    }

    v11 = 0x4165636E656C6973;
    v12 = 0xEC00000072657466;
    if (a1 != 4)
    {
      v11 = 0x6172467472617473;
      v12 = 0xEA0000000000656DLL;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x4265636E656C6973;
    v5 = 0xED000065726F6665;
    if (a1 != 2)
    {
      v4 = 0x7544686365657073;
      v5 = 0xEC000000676E6972;
    }

    v6 = 0x65726F6373;
    if (a1)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v6 = 0x64726F7779656BLL;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v13 = 0xE500000000000000;
        if (v7 != 0x65726F6373)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v7 != 0x64726F7779656BLL)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_45;
    }

    if (a2 == 2)
    {
      v13 = 0xED000065726F6665;
      if (v7 != 0x4265636E656C6973)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v14 = 0x7544686365657073;
    v15 = 1735289202;
LABEL_42:
    v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v7 != v14)
    {
      goto LABEL_47;
    }

    goto LABEL_45;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v13 = 0xEA0000000000656DLL;
      if (v7 != 0x6172467472617473)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    v14 = 0x4165636E656C6973;
    v15 = 1919251558;
    goto LABEL_42;
  }

  if (a2 == 6)
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x656D617246646E65)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0x8000000272390450;
    if (v7 != 0xD000000000000010)
    {
LABEL_47:
      v16 = sub_27237865C();
      goto LABEL_48;
    }
  }

LABEL_45:
  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v16 = 1;
LABEL_48:

  return v16 & 1;
}

uint64_t sub_2723245E4(uint64_t a1, unsigned __int8 a2)
{
  sub_27237790C();
}

uint64_t sub_27232473C(uint64_t a1, unsigned __int8 a2)
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

uint64_t sub_2723248A0(uint64_t a1, unsigned __int8 a2)
{
  sub_27237874C();
  sub_27237790C();

  return sub_27237878C();
}

unint64_t sub_2723249F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_272329050(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_272324A20(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64726F7779656BLL;
  v5 = 0xE800000000000000;
  v6 = 0x656D617246646E65;
  if (v2 != 6)
  {
    v6 = 0xD000000000000010;
    v5 = 0x8000000272390450;
  }

  v7 = 0xEC00000072657466;
  v8 = 0x4165636E656C6973;
  if (v2 != 4)
  {
    v8 = 0x6172467472617473;
    v7 = 0xEA0000000000656DLL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED000065726F6665;
  v10 = 0x4265636E656C6973;
  if (v2 != 2)
  {
    v10 = 0x7544686365657073;
    v9 = 0xEC000000676E6972;
  }

  if (*v1)
  {
    v4 = 0x65726F6373;
    v3 = 0xE500000000000000;
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

unint64_t sub_272324B40()
{
  v1 = *v0;
  v2 = 0x64726F7779656BLL;
  v3 = 0x656D617246646E65;
  if (v1 != 6)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0x4165636E656C6973;
  if (v1 != 4)
  {
    v4 = 0x6172467472617473;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x4265636E656C6973;
  if (v1 != 2)
  {
    v5 = 0x7544686365657073;
  }

  if (*v0)
  {
    v2 = 0x65726F6373;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_272324C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_272329050(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_272324C90(uint64_t a1)
{
  v2 = sub_27232909C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272324CCC(uint64_t a1)
{
  v2 = sub_27232909C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VAKeywordDetection.encode(to:)(void *a1)
{
  v3 = sub_2721F065C(&qword_280882F98, "~");
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 40);
  v16 = *(v1 + 48);
  v17 = v7;
  LODWORD(v7) = *(v1 + 56);
  v14 = *(v1 + 57);
  v15 = v7;
  v13 = *(v1 + 58);
  v8 = *(v1 + 72);
  v11 = *(v1 + 64);
  v12 = v8;
  sub_27220300C(a1, a1[3]);
  sub_27232909C();
  sub_2723787CC();
  v26 = 0;
  v9 = v18;
  sub_27237858C();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v25 = 1;
  sub_2723785BC();
  v24 = 2;
  sub_27237859C();
  v23 = 3;
  sub_27237859C();
  v22 = 4;
  sub_27237859C();
  v21 = 5;
  sub_2723785EC();
  v20 = 6;
  sub_2723785EC();
  if (!v12)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v19 = 7;
  sub_27237858C();
  return (*(v4 + 8))(v6, v3);
}

uint64_t VAKeywordDetection.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 4);
  v5 = v0[8];
  v4 = v0[9];
  if (*(v0 + 56))
  {
    v6 = 0x3E6C69733CLL;
  }

  else
  {
    v6 = 0x3E6863656570733CLL;
  }

  if (*(v0 + 57))
  {
    v7 = 0x3E6C69733CLL;
  }

  else
  {
    v7 = 0x3E6863656570733CLL;
  }

  if (*(v0 + 57))
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (*(v0 + 58))
  {
    sub_27237820C();

    v20 = v6;
    MEMORY[0x2743C4AD0](v1, v2);
    if (v4)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    if (v4)
    {
      v10 = v4;
    }

    else
    {
      v10 = 0xE000000000000000;
    }

    MEMORY[0x2743C4AD0](v9, v10);
  }

  else
  {
    sub_27237820C();

    v20 = v6;
    MEMORY[0x2743C4AD0](2763306, 0xE300000000000000);
    MEMORY[0x2743C4AD0](v1, v2);
    if (v4)
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    if (v4)
    {
      v12 = v4;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    MEMORY[0x2743C4AD0](v11, v12);

    MEMORY[0x2743C4AD0](2763306, 0xE300000000000000);
  }

  MEMORY[0x2743C4AD0](v7, v8);

  MEMORY[0x2743C4AD0](58, 0xE100000000000000);
  sub_2721F065C(&qword_280881CB0, qword_27237D820);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D83A90];
  *(v13 + 16) = xmmword_27237AF80;
  v15 = MEMORY[0x277D83B08];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = v3;
  v16 = sub_27237786C();
  MEMORY[0x2743C4AD0](v16);

  MEMORY[0x2743C4AD0](2637357, 0xE300000000000000);
  v17 = sub_27237862C();
  MEMORY[0x2743C4AD0](v17);

  MEMORY[0x2743C4AD0](8236, 0xE200000000000000);
  v18 = sub_27237862C();
  MEMORY[0x2743C4AD0](v18);

  MEMORY[0x2743C4AD0](41, 0xE100000000000000);
  return v20;
}

void *VAKeywordResult.__allocating_init(detections:)(uint64_t a1)
{
  result = swift_allocObject();
  result[3] = 0;
  result[4] = 0;
  result[2] = a1;
  return result;
}

void *VAKeywordResult.init(detections:)(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = a1;
  return v1;
}

void static VAKeywordResult.buildFromScoresMap(scores:)(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      type metadata accessor for VAKeywordResult();
      v18 = swift_allocObject();
      v18[3] = 0;
      v18[4] = 0;
      v18[2] = v8;
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      do
      {
LABEL_8:
        v10 = __clz(__rbit64(v5)) | (v7 << 6);
        v11 = (*(a1 + 48) + 16 * v10);
        v13 = *v11;
        v12 = v11[1];
        v14 = *(*(a1 + 56) + 4 * v10);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_272205014(0, *(v8 + 2) + 1, 1, v8);
        }

        v16 = *(v8 + 2);
        v15 = *(v8 + 3);
        if (v16 >= v15 >> 1)
        {
          v8 = sub_272205014((v15 > 1), v16 + 1, 1, v8);
        }

        v5 &= v5 - 1;
        *(v8 + 2) = v16 + 1;
        v17 = &v8[80 * v16];
        *(v17 + 4) = v13;
        *(v17 + 5) = v12;
        *(v17 + 12) = v14;
        *(v17 + 56) = 0u;
        *(v17 + 72) = 0u;
        *(v17 + 44) = 0;
        v17[90] = 1;
        *(v17 + 91) = v19;
        v17[95] = v20;
        *(v17 + 12) = 0;
        *(v17 + 13) = 0;
      }

      while (v5);
    }
  }

  __break(1u);
}

char *sub_27232546C()
{
  v2 = (*(*v0 + 104))();

  sub_272328558(&v2);

  return v2;
}

void *sub_2723254F8()
{
  v1 = sub_27229D258(MEMORY[0x277D84F90]);
  v2 = (*(*v0 + 104))();
  v3 = v2;
  v23 = *(v2 + 16);
  if (!v23)
  {
LABEL_16:

    return v1;
  }

  v4 = 0;
  v5 = v2 + 104;
  while (v4 < *(v3 + 16))
  {
    v7 = *(v5 - 72);
    v6 = *(v5 - 64);
    v8 = *(v5 - 56);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v1;
    v10 = sub_27220038C(v7, v6);
    v12 = v1[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      goto LABEL_18;
    }

    v16 = v11;
    if (v1[3] < v15)
    {
      sub_272300664(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_27220038C(v7, v6);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v16)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v21 = v10;
    sub_272301090();
    v10 = v21;
    v1 = v24;
    if (v16)
    {
LABEL_3:
      *(v1[7] + 4 * v10) = v8;

      goto LABEL_4;
    }

LABEL_12:
    v1[(v10 >> 6) + 8] |= 1 << v10;
    v18 = (v1[6] + 16 * v10);
    *v18 = v7;
    v18[1] = v6;
    *(v1[7] + 4 * v10) = v8;

    v19 = v1[2];
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v14)
    {
      goto LABEL_19;
    }

    v1[2] = v20;
LABEL_4:
    ++v4;
    v5 += 80;
    if (v23 == v4)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

void *sub_2723256FC()
{
  v1 = (*(*v0 + 184))();
  v2 = sub_27229D258(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  if (!v3)
  {
LABEL_16:

    return v2;
  }

  v4 = 0;
  v5 = v1 + 104;
  while (v4 < *(v1 + 16))
  {
    v7 = *(v5 - 72);
    v6 = *(v5 - 64);
    v8 = *(v5 - 56);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = sub_27220038C(v7, v6);
    v12 = v2[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      goto LABEL_18;
    }

    v16 = v11;
    if (v2[3] < v15)
    {
      sub_272300664(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_27220038C(v7, v6);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v16)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v21 = v10;
    sub_272301090();
    v10 = v21;
    if (v16)
    {
LABEL_3:
      *(v2[7] + 4 * v10) = v8;

      goto LABEL_4;
    }

LABEL_12:
    v2[(v10 >> 6) + 8] |= 1 << v10;
    v18 = (v2[6] + 16 * v10);
    *v18 = v7;
    v18[1] = v6;
    *(v2[7] + 4 * v10) = v8;

    v19 = v2[2];
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v14)
    {
      goto LABEL_19;
    }

    v2[2] = v20;
LABEL_4:
    ++v4;
    v5 += 80;
    if (v3 == v4)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_2723786BC();
  __break(1u);
  return result;
}

double sub_2723258F4@<D0>(_OWORD *a1@<X8>)
{
  v3 = *((*(*v1 + 104))() + 16);

  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = (*(*v1 + 184))(v4);
  if (!*(v5 + 16))
  {

LABEL_5:
    *&v10 = 0;
    a1[3] = 0u;
    a1[4] = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    return *&v10;
  }

  v6 = *(v5 + 48);
  v7 = *(v5 + 80);
  v8 = *(v5 + 96);
  v15 = *(v5 + 64);
  v16 = v7;
  v17 = v8;
  v13 = *(v5 + 32);
  v14 = v6;
  sub_272329114(&v13, &v12);

  v9 = v16;
  a1[2] = v15;
  a1[3] = v9;
  a1[4] = v17;
  v10 = v14;
  *a1 = v13;
  a1[1] = v10;
  return *&v10;
}

uint64_t sub_2723259E0(uint64_t a1)
{
  v2 = v1;
  v3 = VARuntimeParameters.keywordsToThresholds.getter();
  v4 = v3;
  v5 = v3[2];
  if (v5)
  {
    v43 = sub_2722702A8(v3[2], 0);
    v6 = sub_2722DD9D8(&v38, v43 + 4, v5, v4);
    v7 = sub_272270484(v38);
    if (v6 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v43 = MEMORY[0x277D84F90];
LABEL_5:
  result = (*(*v2 + 104))(v7);
  v9 = *(result + 16);
  if (v9)
  {
    v32 = v2;
    v10 = 0;
    v33 = v9 - 1;
    v11 = MEMORY[0x277D84F90];
    v12 = 32;
    v34 = result;
    while (1)
    {
      v13 = *(result + v12 + 16);
      v14 = *(result + v12 + 32);
      v15 = *(result + v12 + 48);
      v42 = *(result + v12 + 64);
      v16 = *(result + v12);
      v40 = v14;
      v41 = v15;
      v38 = v16;
      v39 = v13;
      if (*(&v42 + 1))
      {
        v17 = *(&v42 + 1);
        v18 = v42;
      }

      else
      {
        v17 = *(&v38 + 1);
        v18 = v38;
      }

      v37[0] = v18;
      v37[1] = v17;
      MEMORY[0x28223BE20](result);
      v31[2] = v37;
      sub_272329114(&v38, &v35);

      if ((sub_2722160A8(sub_272204258, v31, v43) & 1) == 0)
      {
        sub_27226AC58(&v38);

        v35 = 0;
        v36 = 0xE000000000000000;
        sub_27237820C();

        v35 = 0xD000000000000011;
        v36 = 0x80000002723904D0;
        MEMORY[0x2743C4AD0](v18, v17);

        MEMORY[0x2743C4AD0](0x206E6920746F6E20, 0xE800000000000000);
        v25 = MEMORY[0x2743C4C60](v43, MEMORY[0x277D837D0]);
        v27 = v26;

        MEMORY[0x2743C4AD0](v25, v27);

        v28 = v35;
        v29 = v36;
        sub_2722032B4();
        swift_allocError();
        *v30 = v28;
        v30[1] = v29;
        return swift_willThrow();
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_272205014(0, *(v11 + 2) + 1, 1, v11);
      }

      v20 = *(v11 + 2);
      v19 = *(v11 + 3);
      if (v20 >= v19 >> 1)
      {
        v11 = sub_272205014((v19 > 1), v20 + 1, 1, v11);
      }

      *(v11 + 2) = v20 + 1;
      v21 = &v11[80 * v20];
      *(v21 + 2) = v38;
      v22 = v39;
      v23 = v40;
      v24 = v42;
      *(v21 + 5) = v41;
      *(v21 + 6) = v24;
      *(v21 + 3) = v22;
      *(v21 + 4) = v23;
      if (v33 == v10)
      {
        break;
      }

      ++v10;
      result = v34;
      v12 += 80;
      if (v10 >= *(v34 + 16))
      {
        __break(1u);
        return result;
      }
    }

    v2 = v32;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  return (*(*v2 + 112))(v11);
}

uint64_t sub_272325DE4()
{
  v1 = (*(*v0 + 184))();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = VAKeywordDetection.description.getter();
      v7 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2721FFBF8(0, *(v4 + 2) + 1, 1, v4);
      }

      v9 = *(v4 + 2);
      v8 = *(v4 + 3);
      if (v9 >= v8 >> 1)
      {
        v4 = sub_2721FFBF8((v8 > 1), v9 + 1, 1, v4);
      }

      *(v4 + 2) = v9 + 1;
      v10 = &v4[16 * v9];
      *(v10 + 4) = v5;
      *(v10 + 5) = v7;
      v3 += 80;
      --v2;
    }

    while (v2);
  }

  sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_272203B18();
  v11 = sub_2723777CC();

  return v11;
}

uint64_t sub_272325F6C()
{
  v1 = 0x7479426F69647561;
  if (*v0 != 1)
  {
    v1 = 0x656D695474736F68;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F69746365746564;
  }
}

uint64_t sub_272325FCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_272329350(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_272325FF4(uint64_t a1)
{
  v2 = sub_27232914C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272326030(uint64_t a1)
{
  v2 = sub_27232914C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VAKeywordResult.deinit()
{

  return v0;
}

uint64_t VAKeywordResult.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2723260D4(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882FA8, &qword_272385788);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  sub_27220300C(a1, a1[3]);
  sub_27232914C();
  v9 = sub_2723787CC();
  v15 = (*(*v3 + 104))(v9);
  v14 = 0;
  sub_2721F065C(&qword_280882FB0, &unk_272385790);
  sub_272329580(&qword_280882FB8, &qword_280882FB0, &unk_272385790, MEMORY[0x277D83948]);
  sub_2723785DC();

  if (!v2)
  {
    v15 = (*(*v3 + 128))(v10);
    v14 = 1;
    sub_2721F065C(&qword_280882EF0, &qword_272385650);
    sub_2723291F4();
    sub_27237857C();

    (*(*v3 + 152))(v11);
    LOBYTE(v15) = 2;
    sub_2723785FC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2723263F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_uuid;
  swift_beginAccess();
  return sub_272329270(v1 + v3, a1);
}

uint64_t sub_272326450(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_uuid;
  swift_beginAccess();
  sub_2723292E0(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_272326510()
{
  v1 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_chunk;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_272326554(int a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_chunk;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272326604()
{
  v1 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_count;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_272326648(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_count;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_2723266F8()
{
  v1 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_intervalFromEndOfSpeech;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_27232673C(double a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_intervalFromEndOfSpeech;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2723267EC()
{
  v1 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_startFrame;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_272326830(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_startFrame;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2723268E0()
{
  v1 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_endFrame;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_272326924(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_endFrame;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272326A4C()
{
  v1 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_mismatch;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_272326A90(char a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_mismatch;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_272326BB8()
{
  v1 = v0 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassDuration;
  swift_beginAccess();
  return *v1;
}

void sub_272326C04(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassDuration;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_272326D54(uint64_t a1)
{
  sub_27237790C();
}

unint64_t sub_272326E98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_272329478(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_272326EC8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000006F696475;
  v4 = 0x4164726F7779656BLL;
  v5 = 0xEF747365424E7373;
  v6 = 0x6150646E6F636573;
  if (v2 != 5)
  {
    v6 = 0xD000000000000012;
    v5 = 0x80000002723904B0;
  }

  v7 = 0xD000000000000010;
  v8 = 0x800000027238A3D0;
  if (v2 != 3)
  {
    v7 = 0x686374616D73696DLL;
    v8 = 0xE800000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xEC0000006E6F6974;
  v10 = 0x6365746544706F74;
  if (v2 != 1)
  {
    v10 = 0x6F69746365746564;
    v9 = 0xEA0000000000736ELL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
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

unint64_t sub_272326FD4()
{
  v1 = *v0;
  v2 = 0x4164726F7779656BLL;
  v3 = 0x6150646E6F636573;
  if (v1 != 5)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x686374616D73696DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6365746544706F74;
  if (v1 != 1)
  {
    v5 = 0x6F69746365746564;
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

unint64_t sub_2723270DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_272329478(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_272327104(uint64_t a1)
{
  v2 = sub_2723294C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_272327140(uint64_t a1)
{
  v2 = sub_2723294C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27232717C(void *a1)
{
  v3 = v1;
  v5 = sub_2721F065C(&qword_280882FD0, &qword_2723857A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19[-v7];
  sub_27220300C(a1, a1[3]);
  sub_2723294C4();
  v9 = sub_2723787CC();
  *&v23[0] = (*(*v3 + 472))(v9);
  *(&v23[0] + 1) = v10;
  LOBYTE(v21[0]) = 3;
  sub_2721F065C(&qword_280881828, &qword_27237BF40);
  sub_272329518(&qword_2808824E8, &qword_280881828, &qword_27237BF40);
  sub_2723785DC();
  if (!v2)
  {

    *&v23[0] = (*(*v3 + 520))(v11);
    *(&v23[0] + 1) = v12;
    LOBYTE(v21[0]) = 5;
    sub_2723785DC();

    *&v23[0] = (*(*v3 + 544))(v14);
    BYTE8(v23[0]) = v15 & 1;
    LOBYTE(v21[0]) = 6;
    sub_2721F065C(&qword_280882508, &qword_272380998);
    sub_272329518(&qword_280882510, &qword_280882508, &qword_272380998);
    v16 = sub_2723785DC();
    v25[0] = (*(*v3 + 496))(v16);
    v24 = 4;
    sub_2721F065C(&qword_2808824F8, &qword_272380990);
    sub_272329518(&qword_280882500, &qword_2808824F8, &qword_272380990);
    v17 = sub_2723785DC();
    (*(*v3 + 208))(v23, v17);
    v22 = 1;
    sub_2721F065C(&qword_2808819E0, &qword_27237D890);
    sub_272329580(&qword_280882FE0, &qword_2808819E0, &qword_27237D890, MEMORY[0x277D84F40]);
    sub_2723785DC();
    v21[2] = v23[2];
    v21[3] = v23[3];
    v21[4] = v23[4];
    v21[1] = v23[1];
    v21[0] = v23[0];
    v18 = sub_2721F40F0(v21, &qword_2808819E0, &qword_27237D890);
    v20 = (*(*v3 + 184))(v18);
    v19[7] = 2;
    sub_2721F065C(&qword_280882FB0, &unk_272385790);
    sub_272329580(&qword_280882FB8, &qword_280882FB0, &unk_272385790, MEMORY[0x277D83948]);
    sub_2723785DC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_272327700()
{
  v1 = v0;
  v2 = sub_2721F065C(&qword_280881D10, &qword_2723857A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v76 - v3;
  v78 = sub_272376E5C();
  v5 = *(v78 - 8);
  v6 = MEMORY[0x28223BE20](v78);
  v76 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v0 + 400);
  if (v8(v6) <= 0.0)
  {
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    *&v80[0] = 0;
    *(&v80[0] + 1) = 0xE000000000000000;
    sub_27237820C();
    v9 = MEMORY[0x2743C4AD0](91, 0xE100000000000000);
    v8(v9);
    sub_272377D2C();
    MEMORY[0x2743C4AD0](0xD000000000000019, 0x8000000272390550);
    v10 = v80[0];
    v11 = sub_2721FFBF8(0, 1, 1, MEMORY[0x277D84F90]);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_2721FFBF8((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    *&v11[16 * v13 + 32] = v10;
  }

  v77 = v5;
  v14 = (*(*v0 + 184))();
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = (v14 + 32);
    do
    {
      v80[1] = v16[1];
      v80[2] = v16[2];
      v80[3] = v16[3];
      v80[4] = v16[4];
      v80[0] = *v16;
      v17 = VAKeywordDetection.description.getter();
      v19 = v18;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_2721FFBF8(0, *(v11 + 2) + 1, 1, v11);
      }

      v21 = *(v11 + 2);
      v20 = *(v11 + 3);
      if (v21 >= v20 >> 1)
      {
        v11 = sub_2721FFBF8((v20 > 1), v21 + 1, 1, v11);
      }

      *(v11 + 2) = v21 + 1;
      v22 = &v11[16 * v21];
      *(v22 + 4) = v17;
      *(v22 + 5) = v19;
      v16 += 5;
      --v15;
    }

    while (v15);
  }

  *&v80[0] = 0x656D695474736F68;
  *(&v80[0] + 1) = 0xEA0000000000203ALL;
  v79 = (*(*v1 + 152))(v23);
  v24 = sub_27237862C();
  MEMORY[0x2743C4AD0](v24);

  v25 = v80[0];
  v26 = sub_2721FFBF8(0, 1, 1, MEMORY[0x277D84F90]);
  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_2721FFBF8((v27 > 1), v28 + 1, 1, v26);
  }

  v29 = v77;
  *(v26 + 2) = v28 + 1;
  *&v26[16 * v28 + 32] = v25;
  (*(*v1 + 328))();
  v30 = v78;
  if ((*(v29 + 48))(v4, 1, v78) == 1)
  {
    sub_2721F40F0(v4, &qword_280881D10, &qword_2723857A0);
  }

  else
  {
    (*(v29 + 32))(v76, v4, v30);
    sub_27222BB18();
    v31 = sub_27237862C();
    *&v80[0] = 3826793;
    *(&v80[0] + 1) = 0xE300000000000000;
    MEMORY[0x2743C4AD0](v31);

    v32 = v80[0];
    v34 = *(v26 + 2);
    v33 = *(v26 + 3);
    if (v34 >= v33 >> 1)
    {
      v26 = sub_2721FFBF8((v33 > 1), v34 + 1, 1, v26);
    }

    (*(v29 + 8))(v76, v30);
    *(v26 + 2) = v34 + 1;
    *&v26[16 * v34 + 32] = v32;
  }

  *&v80[0] = v11;
  v35 = sub_2721F065C(&qword_2808817F8, &unk_27237CA80);
  sub_272203B18();
  v78 = v35;
  v36 = sub_2723777CC();
  v38 = v37;

  *&v80[0] = 91;
  *(&v80[0] + 1) = 0xE100000000000000;
  MEMORY[0x2743C4AD0](v36, v38);

  MEMORY[0x2743C4AD0](93, 0xE100000000000000);

  v39 = v80[0];
  v41 = *(v26 + 2);
  v40 = *(v26 + 3);
  if (v41 >= v40 >> 1)
  {
    v26 = sub_2721FFBF8((v40 > 1), v41 + 1, 1, v26);
  }

  *(v26 + 2) = v41 + 1;
  *&v26[16 * v41 + 32] = v39;
  *&v80[0] = 0;
  *(&v80[0] + 1) = 0xE000000000000000;
  sub_27237820C();

  *&v80[0] = 0xD000000000000012;
  *(&v80[0] + 1) = 0x80000002723904F0;
  v43 = (*(*v1 + 472))(v42);
  if (v44)
  {
    v45 = v44;
  }

  else
  {
    v43 = 0x3E656E6F6E3CLL;
    v45 = 0xE600000000000000;
  }

  MEMORY[0x2743C4AD0](v43, v45);

  v46 = v80[0];
  v48 = *(v26 + 2);
  v47 = *(v26 + 3);
  if (v48 >= v47 >> 1)
  {
    v26 = sub_2721FFBF8((v47 > 1), v48 + 1, 1, v26);
  }

  *(v26 + 2) = v48 + 1;
  *&v26[16 * v48 + 32] = v46;
  *&v80[0] = 0;
  *(&v80[0] + 1) = 0xE000000000000000;
  sub_27237820C();

  *&v80[0] = 0xD000000000000011;
  *(&v80[0] + 1) = 0x8000000272390510;
  v50 = (*(*v1 + 520))(v49);
  if (v51)
  {
    v52 = v51;
  }

  else
  {
    v50 = 0x3E656E6F6E3CLL;
    v52 = 0xE600000000000000;
  }

  MEMORY[0x2743C4AD0](v50, v52);

  v53 = v80[0];
  v55 = *(v26 + 2);
  v54 = *(v26 + 3);
  if (v55 >= v54 >> 1)
  {
    v26 = sub_2721FFBF8((v54 > 1), v55 + 1, 1, v26);
  }

  *(v26 + 2) = v55 + 1;
  *&v26[16 * v55 + 32] = v53;
  *&v80[0] = 0;
  *(&v80[0] + 1) = 0xE000000000000000;
  sub_27237820C();
  v56 = MEMORY[0x2743C4AD0](0xD000000000000014, 0x8000000272390530);
  (*(*v1 + 544))(v56);
  sub_272377D2C();
  v57 = v80[0];
  v59 = *(v26 + 2);
  v58 = *(v26 + 3);
  if (v59 >= v58 >> 1)
  {
    v26 = sub_2721FFBF8((v58 > 1), v59 + 1, 1, v26);
  }

  *(v26 + 2) = v59 + 1;
  *&v26[16 * v59 + 32] = v57;
  *&v80[0] = 0x686374616D73696DLL;
  *(&v80[0] + 1) = 0xEA0000000000203ALL;
  v60 = (*(*v1 + 496))();
  if (v60 == 2 || (v60 & 1) == 0)
  {
    v61 = 0xE500000000000000;
    v62 = 0x65736C6166;
  }

  else
  {
    v61 = 0xE400000000000000;
    v62 = 1702195828;
  }

  MEMORY[0x2743C4AD0](v62, v61);

  v63 = v80[0];
  v65 = *(v26 + 2);
  v64 = *(v26 + 3);
  if (v65 >= v64 >> 1)
  {
    v26 = sub_2721FFBF8((v64 > 1), v65 + 1, 1, v26);
  }

  *(v26 + 2) = v65 + 1;
  *&v26[16 * v65 + 32] = v63;
  strcpy(v80, "startFrame: ");
  BYTE13(v80[0]) = 0;
  HIWORD(v80[0]) = -5120;
  v79 = (*(*v1 + 424))();
  v66 = sub_27237862C();
  MEMORY[0x2743C4AD0](v66);

  v67 = v80[0];
  v69 = *(v26 + 2);
  v68 = *(v26 + 3);
  if (v69 >= v68 >> 1)
  {
    v26 = sub_2721FFBF8((v68 > 1), v69 + 1, 1, v26);
  }

  *(v26 + 2) = v69 + 1;
  *&v26[16 * v69 + 32] = v67;
  *&v80[0] = 0x656D617246646E65;
  *(&v80[0] + 1) = 0xEA0000000000203ALL;
  v79 = (*(*v1 + 448))();
  v70 = sub_27237862C();
  MEMORY[0x2743C4AD0](v70);

  v71 = v80[0];
  v73 = *(v26 + 2);
  v72 = *(v26 + 3);
  if (v73 >= v72 >> 1)
  {
    v26 = sub_2721FFBF8((v72 > 1), v73 + 1, 1, v26);
  }

  *(v26 + 2) = v73 + 1;
  *&v26[16 * v73 + 32] = v71;
  *&v80[0] = v26;
  v74 = sub_2723777CC();

  return v74;
}

uint64_t VAInstrumentedKeywordResult.__allocating_init(detections:)(uint64_t a1)
{
  v2 = swift_allocObject();
  VAInstrumentedKeywordResult.init(detections:)(a1);
  return v2;
}

char *VAInstrumentedKeywordResult.init(detections:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_uuid;
  v4 = sub_272376E5C();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_chunk] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_count] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_intervalFromEndOfSpeech] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_startFrame] = 0;
  *&v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_endFrame] = 0;
  v5 = &v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassResult];
  *v5 = 0;
  *(v5 + 1) = 0;
  v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_mismatch] = 2;
  v6 = &v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassNBest];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassDuration];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v1[OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_secondPassKeywordMatched];
  *v8 = 0;
  *(v8 + 1) = 0;
  *(v1 + 3) = 0;
  *(v1 + 4) = 0;
  *(v1 + 2) = a1;
  return v1;
}

uint64_t sub_27232837C()
{
  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_uuid, &qword_280881D10, &qword_2723857A0);
}

uint64_t VAInstrumentedKeywordResult.deinit()
{

  sub_2721F40F0(v0 + OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_uuid, &qword_280881D10, &qword_2723857A0);

  return v0;
}

uint64_t VAInstrumentedKeywordResult.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12VoiceActions27VAInstrumentedKeywordResult_uuid;

  sub_2721F40F0(v0 + v1, &qword_280881D10, &qword_2723857A0);

  return swift_deallocClassInstance();
}

uint64_t sub_272328558(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_272328F1C(v2);
  }

  v3 = *(v2 + 2);
  v29[0] = (v2 + 32);
  v29[1] = v3;
  result = sub_27237861C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 112;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          if (*(v12 - 16) >= *(v12 + 4))
          {
            break;
          }

          v13 = v12 - 80;
          v24 = *v12;
          v14 = *(v12 + 1);
          v15 = *(v12 + 2);
          v16 = *(v12 + 4);
          v27 = *(v12 + 3);
          v28 = v16;
          v25 = v14;
          v26 = v15;
          v17 = *(v12 - 1);
          *(v12 + 3) = *(v12 - 2);
          *(v12 + 4) = v17;
          v18 = *(v12 - 3);
          *(v12 + 1) = *(v12 - 4);
          *(v12 + 2) = v18;
          *v12 = *(v12 - 5);
          *v13 = v24;
          v19 = v28;
          v20 = v25;
          v21 = v26;
          *(v13 + 3) = v27;
          *(v13 + 4) = v19;
          *(v13 + 1) = v20;
          *(v13 + 2) = v21;
          v12 -= 80;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 80;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_272377B5C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    *&v24 = v7 + 32;
    *(&v24 + 1) = v6;
    sub_2723286D8(&v24, v23, v29, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2723286D8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_272244CC4(v7);
      v7 = result;
    }

    v80 = (v7 + 16);
    v81 = *(v7 + 16);
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = (v7 + 16 * v81);
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_272328CE4((*a3 + 80 * *v82), (*a3 + 80 * *v84), (*a3 + 80 * v85), v89);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_114;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_115;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_116;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 80 * v6 + 16);
      v10 = 80 * v8;
      v11 = *a3 + 80 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 176);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 20;
        v17 = v15 >= v16;
        ++v13;
        v15 = v16;
        if ((((v12 < v9) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 80 * v6 - 80;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v22 + v18);
            v94 = *(v22 + v10 + 32);
            v96 = *(v22 + v10 + 48);
            v98 = *(v22 + v10 + 64);
            v90 = *(v22 + v10);
            v92 = *(v22 + v10 + 16);
            result = memmove((v22 + v10), (v22 + v18), 0x50uLL);
            v21[2] = v94;
            v21[3] = v96;
            v21[4] = v98;
            *v21 = v90;
            v21[1] = v92;
          }

          ++v20;
          v18 -= 80;
          v10 += 80;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_272244480(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v33 = *(v7 + 16);
    v32 = *(v7 + 24);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      result = sub_272244480((v32 > 1), v33 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v34;
    v35 = v7 + 32;
    v36 = (v7 + 32 + 16 * v33);
    *v36 = v8;
    v36[1] = v6;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_127;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v7 + 32);
          v39 = *(v7 + 40);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_104;
          }

          v54 = (v7 + 16 * v34);
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = (v35 + 16 * v37);
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_111;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v64 = (v7 + 16 * v34);
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_72:
        if (v59)
        {
          goto LABEL_108;
        }

        v67 = (v35 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_110;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v37 - 1 >= v34)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v75 = (v35 + 16 * (v37 - 1));
        v76 = *v75;
        v77 = (v35 + 16 * v37);
        v78 = v77[1];
        sub_272328CE4((*a3 + 80 * *v75), (*a3 + 80 * *v77), (*a3 + 80 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_99;
        }

        if (v37 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = *(v7 + 16);
        if (v37 >= v79)
        {
          goto LABEL_101;
        }

        v34 = v79 - 1;
        result = memmove((v35 + 16 * v37), v77 + 2, 16 * (v79 - 1 - v37));
        *(v7 + 16) = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = v35 + 16 * v34;
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_102;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_103;
      }

      v49 = (v7 + 16 * v34);
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_105;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = (v35 + 16 * v37);
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 80 * v6;
  v25 = v8 - v6;
LABEL_30:
  v26 = v25;
  v27 = v24;
  while (1)
  {
    if (*(v27 - 64) >= *(v27 + 16))
    {
LABEL_29:
      ++v6;
      v24 += 80;
      --v25;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    v28 = (v27 - 80);
    v95 = *(v27 + 32);
    v97 = *(v27 + 48);
    v99 = *(v27 + 64);
    v91 = *v27;
    v93 = *(v27 + 16);
    v29 = *(v27 - 32);
    *(v27 + 32) = *(v27 - 48);
    *(v27 + 48) = v29;
    *(v27 + 64) = *(v27 - 16);
    v30 = *(v27 - 64);
    *v27 = *(v27 - 80);
    *(v27 + 16) = v30;
    v28[3] = v97;
    v28[4] = v99;
    v28[1] = v93;
    v28[2] = v95;
    v27 -= 80;
    *v28 = v91;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_272328CE4(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 80;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 80;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[20 * v9] <= a4)
    {
      memmove(a4, __dst, 80 * v9);
    }

    v12 = &v4[20 * v9];
    if (v8 < 80)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v4[4] < v6[4])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 20;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 20;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 20;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x50uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[20 * v11] <= a4)
  {
    memmove(a4, __src, 80 * v11);
  }

  v12 = &v4[20 * v11];
  if (v10 >= 80 && v6 > v7)
  {
LABEL_20:
    v5 -= 20;
    do
    {
      v15 = v5 + 20;
      if (*(v6 - 16) < *(v12 - 16))
      {
        v17 = v6 - 20;
        if (v15 != v6)
        {
          memmove(v5, v6 - 20, 0x50uLL);
        }

        if (v12 <= v4 || (v6 -= 20, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v16 = (v12 - 20);
      if (v15 != v12)
      {
        memmove(v5, v12 - 20, 0x50uLL);
      }

      v5 -= 20;
      v12 -= 20;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_31:
  v18 = (v12 - v4) / 80;
  if (v6 != v4 || v6 >= &v4[20 * v18])
  {
    memmove(v6, v4, 80 * v18);
  }

  return 1;
}

char *sub_272328F30(char *result, int64_t a2, char a3, char *a4)
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
    sub_2721F065C(&qword_2808818B8, &qword_27237CAD0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_272329050(uint64_t a1, uint64_t a2)
{
  v2 = sub_27237840C();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_27232909C()
{
  result = qword_280882FA0;
  if (!qword_280882FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882FA0);
  }

  return result;
}

unint64_t sub_27232914C()
{
  result = qword_2808910F0[0];
  if (!qword_2808910F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808910F0);
  }

  return result;
}

unint64_t sub_2723291A0()
{
  result = qword_280882FC0;
  if (!qword_280882FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882FC0);
  }

  return result;
}

unint64_t sub_2723291F4()
{
  result = qword_280882FC8;
  if (!qword_280882FC8)
  {
    sub_2721F214C(&qword_280882EF0, &qword_272385650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882FC8);
  }

  return result;
}

uint64_t sub_272329270(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881D10, &qword_2723857A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2723292E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2721F065C(&qword_280881D10, &qword_2723857A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_272329350(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F69746365746564 && a2 == 0xEA0000000000736ELL || (sub_27237865C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7479426F69647561 && a2 == 0xEA00000000007365 || (sub_27237865C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D695474736F68 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_27237865C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_272329478(uint64_t a1, uint64_t a2)
{
  v2 = sub_27237840C();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2723294C4()
{
  result = qword_280882FD8;
  if (!qword_280882FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882FD8);
  }

  return result;
}

uint64_t sub_272329518(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_272329580(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2721F214C(a2, a3);
    sub_2723291A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2723295EC()
{
  result = qword_280882FE8;
  if (!qword_280882FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882FE8);
  }

  return result;
}

unint64_t sub_272329644()
{
  result = qword_280882FF0;
  if (!qword_280882FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882FF0);
  }

  return result;
}

unint64_t sub_27232969C()
{
  result = qword_280882FF8;
  if (!qword_280882FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280882FF8);
  }

  return result;
}