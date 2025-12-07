uint64_t sub_20B8E4870(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763848, &unk_20C161540);

  return sub_20C137C94();
}

uint64_t sub_20B8E48DC(uint64_t *a1, double a2)
{
  v2 = *a1;
  v3 = sub_20BDC8FD4(a2);
  sub_20B8E51DC(v2, v3);
  LOBYTE(v2) = v4;

  if (v2)
  {
    v5 = sub_20C134894();
    sub_20B8E91C8(&qword_27C767820, 255, MEMORY[0x277D50B70], MEMORY[0x277D50B78]);
    v6 = swift_allocError();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D50B68], v5);
    *(swift_allocObject() + 16) = v6;

    return sub_20C137CA4();
  }

  else
  {

    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }
}

uint64_t sub_20B8E4A3C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NavigationRequest(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_20B8E8910(a2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_20B8E8978(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for NavigationRequest);
  return sub_20C137CA4();
}

uint64_t sub_20B8E4B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for NavigationRequest(0);
  v21 = *(v4 - 8);
  v5 = *(v21 + 64);
  MEMORY[0x28223BE20](v4);
  v6 = type metadata accessor for NavigationWithURLInfoCompleted(0);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NavigationSource(0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NavigationSharingURLInfo(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B8E8910(a1 + *(v4 + 24), v11, type metadata accessor for NavigationSource);
  if (swift_getEnumCaseMultiPayload())
  {
    v15 = type metadata accessor for NavigationSource;
    v16 = v11;
  }

  else
  {
    sub_20B8E8978(v11, v14, type metadata accessor for NavigationSharingURLInfo);
    v20[1] = *(v2 + 80);
    swift_getObjectType();
    sub_20B8E8910(v14, v8, type metadata accessor for NavigationSharingURLInfo);
    sub_20B8E91C8(qword_2811009E0, 255, type metadata accessor for NavigationWithURLInfoCompleted, &unk_20C18DB20);
    sub_20C13A764();
    sub_20B8E88B0(v8, type metadata accessor for NavigationWithURLInfoCompleted);
    v15 = type metadata accessor for NavigationSharingURLInfo;
    v16 = v14;
  }

  sub_20B8E88B0(v16, v15);
  sub_20B8E8910(a1, v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v17 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v18 = swift_allocObject();
  sub_20B8E8978(v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for NavigationRequest);
  return sub_20C137CA4();
}

uint64_t sub_20B8E4ED0()
{
  v0 = sub_20C132E94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C132E84();
  v4 = sub_20C135704();
  (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  v5 = sub_20C134894();
  sub_20B8E91C8(&qword_27C767820, 255, MEMORY[0x277D50B70], MEMORY[0x277D50B78]);
  v6 = swift_allocError();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D50B50], v5);
  *(swift_allocObject() + 16) = v6;
  return sub_20C137CA4();
}

uint64_t sub_20B8E5098(uint64_t a1)
{
  sub_20B75B4F8();
  if (sub_20C135D14())
  {
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  v2 = sub_20C134894();
  sub_20B8E91C8(&qword_27C767820, 255, MEMORY[0x277D50B70], MEMORY[0x277D50B78]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D50B60], v2);
  *(swift_allocObject() + 16) = v3;
  return sub_20C137CA4();
}

void sub_20B8E51DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      v11 = v6 + 56;

      v12 = 0;
      v24 = v4;
      while (v9)
      {
        v13 = v9;
LABEL_19:
        v9 = (v13 - 1) & v13;
        if (*(v6 + 16))
        {
          v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
          v17 = *v15;
          v16 = v15[1];
          sub_20C13E164();

          sub_20C13CA64();
          v18 = sub_20C13E1B4();
          v19 = -1 << *(v6 + 32);
          v20 = v18 & ~v19;
          if ((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            v21 = ~v19;
            while (1)
            {
              v22 = (*(v6 + 48) + 16 * v20);
              v23 = *v22 == v17 && v22[1] == v16;
              if (v23 || (sub_20C13DFF4() & 1) != 0)
              {
                break;
              }

              v20 = (v20 + 1) & v21;
              if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            return;
          }

LABEL_28:

          v4 = v24;
        }
      }

      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v10)
        {

          return;
        }

        v13 = *(v5 + 8 * v14);
        ++v12;
        if (v13)
        {
          v12 = v14;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

void sub_20B8E53C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(a3 + 16);

  sub_20C13B5F4();
  v8 = sub_20C13C914();

  v9 = [v7 arrayForKey_];

  v10 = swift_allocObject();
  *(v10 + 16) = sub_20B7E9034;
  *(v10 + 24) = v6;
  v12[4] = sub_20B8E91B4;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_20B8E5B70;
  v12[3] = &block_descriptor_43;
  v11 = _Block_copy(v12);

  [v9 valueWithCompletion_];
  _Block_release(v11);
}

uint64_t sub_20B8E5514(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_20C13C4B4();
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20C13C4F4();
  v12 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5E2E18();
  v15 = sub_20C13D374();
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  aBlock[4] = sub_20B8E91BC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_78_2;
  v17 = _Block_copy(aBlock);
  v18 = a1;
  v19 = a3;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B8E91C8(&qword_281103AB0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v14, v11, v17);
  _Block_release(v17);

  (*(v22 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v21);
}

double sub_20B8E57F0(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_5;
  }

  v32 = 0;
  sub_20C13CC64();
  if (!v32)
  {
    goto LABEL_5;
  }

  if (a2)
  {

LABEL_5:
    sub_20C13B424();
    v12 = a2;
    v13 = sub_20C13BB74();
    v14 = sub_20C13D1D4();

    if (os_log_type_enabled(v13, v14))
    {
      v28[1] = a4;
      v29 = a3;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v34 = v16;
      *v15 = 136446210;
      if (a2)
      {
        swift_getErrorValue();
        v17 = MEMORY[0x20F2F5850](v30, v31);
        a2 = v18;
      }

      else
      {
        v17 = 0;
      }

      v32 = v17;
      v33 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767830, &qword_20C15CA20);
      v19 = sub_20C13D8F4();
      v21 = v20;

      v22 = sub_20B51E694(v19, v21, &v34);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_20B517000, v13, v14, "EngagementRedirectURLInterceptor failed to fetch parameters %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x20F2F6A40](v16, -1, -1);
      MEMORY[0x20F2F6A40](v15, -1, -1);

      (*(v9 + 8))(v11, v8);
      a3 = v29;
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v23 = sub_20C134894();
    sub_20B8E91C8(&qword_27C767820, 255, MEMORY[0x277D50B70], MEMORY[0x277D50B78]);
    v24 = swift_allocError();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D50B68], v23);
    a3(v24, 1);

    return result;
  }

  v27 = sub_20B527580(v32);

  a3(v27, 0);

  return result;
}

void sub_20B8E5B70(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_20B8E5C04@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v275 = a3;
  v265 = a4;
  v266 = a2;
  v280 = a1;
  v256 = type metadata accessor for NavigationIntent(0);
  v270 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v255 = &v225 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767800, &unk_20C15EC70);
  MEMORY[0x28223BE20](v5 - 8);
  v229 = &v225 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v241 = &v225 - v8;
  MEMORY[0x28223BE20](v9);
  v254 = &v225 - v10;
  MEMORY[0x28223BE20](v11);
  v269 = &v225 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E40, &unk_20C157A60);
  MEMORY[0x28223BE20](v13 - 8);
  v252 = &v225 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v251 = &v225 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767810, &unk_20C169F00);
  MEMORY[0x28223BE20](v17 - 8);
  v250 = &v225 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v249 = &v225 - v20;
  v272 = type metadata accessor for NavigationRequest(0);
  v257 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v232 = &v225 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v231 = &v225 - v23;
  MEMORY[0x28223BE20](v24);
  v237 = &v225 - v25;
  MEMORY[0x28223BE20](v26);
  v258 = &v225 - v27;
  v259 = v28;
  MEMORY[0x28223BE20](v29);
  v253 = &v225 - v30;
  v264 = sub_20C13BB84();
  v263 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v233 = &v225 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v239 = &v225 - v33;
  MEMORY[0x28223BE20](v34);
  v262 = &v225 - v35;
  v276 = type metadata accessor for NavigationResource(0);
  v248 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  v228 = &v225 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v225 = &v225 - v38;
  MEMORY[0x28223BE20](v39);
  v243 = &v225 - v40;
  MEMORY[0x28223BE20](v41);
  v268 = &v225 - v42;
  MEMORY[0x28223BE20](v43);
  v271 = &v225 - v44;
  v45 = sub_20C1388F4();
  v273 = *(v45 - 8);
  v274 = v45;
  MEMORY[0x28223BE20](v45);
  v267 = &v225 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20C132C14();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v230 = &v225 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v235 = &v225 - v51;
  MEMORY[0x28223BE20](v52);
  v234 = &v225 - v53;
  MEMORY[0x28223BE20](v54);
  v240 = &v225 - v55;
  MEMORY[0x28223BE20](v56);
  v242 = &v225 - v57;
  MEMORY[0x28223BE20](v58);
  v246 = &v225 - v59;
  MEMORY[0x28223BE20](v60);
  v62 = &v225 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v63 - 8);
  v260 = &v225 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v65);
  v261 = &v225 - v66;
  MEMORY[0x28223BE20](v67);
  v69 = &v225 - v68;
  MEMORY[0x28223BE20](v70);
  v72 = &v225 - v71;
  MEMORY[0x28223BE20](v73);
  v75 = &v225 - v74;
  v282 = type metadata accessor for NavigationSource(0);
  v277 = *(v282 - 8);
  MEMORY[0x28223BE20](v282);
  v226 = &v225 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v227 = &v225 - v78;
  MEMORY[0x28223BE20](v79);
  v238 = &v225 - v80;
  MEMORY[0x28223BE20](v81);
  v236 = &v225 - v82;
  MEMORY[0x28223BE20](v83);
  v247 = &v225 - v84;
  v86 = MEMORY[0x28223BE20](v85);
  v283 = &v225 - v87;
  v88 = *(v48 + 16);
  v88(v75, v280, v47, v86);
  v89 = *(v48 + 56);
  v89(v75, 0, 1, v47);
  v245 = v48 + 56;
  v244 = v89;
  v89(v72, 1, 1, v47);
  sub_20B5DF134(v75, v69, &unk_27C7617F0, &unk_20C151A10);
  v90 = *(v48 + 48);
  v91 = v90(v69, 1, v47);
  v281 = v48;
  v278 = v88;
  v279 = v48 + 16;
  if (v91 == 1)
  {
    v92 = v266;
    (v88)(v62, v266, v47);
    if (v90(v69, 1, v47) != 1)
    {
      sub_20B520158(v69, &unk_27C7617F0, &unk_20C151A10);
    }
  }

  else
  {
    (*(v48 + 32))(v62, v69, v47);
    v92 = v266;
  }

  v93 = v72;
  v94 = v260;
  sub_20B5DF134(v93, v260, &unk_27C7617F0, &unk_20C151A10);
  v95 = v90(v94, 1, v47);
  v96 = v275;
  v97 = v261;
  if (v95 == 1)
  {
    v98 = type metadata accessor for NavigationSharingURLInfo(0);
    sub_20B52F9E8(v92 + *(v98 + 20), v97, &unk_27C7617F0, &unk_20C151A10);
    v99 = v90(v94, 1, v47);
    v100 = v281;
    v101 = v47;
    if (v99 != 1)
    {
      sub_20B520158(v94, &unk_27C7617F0, &unk_20C151A10);
    }
  }

  else
  {
    v100 = v281;
    (*(v281 + 32))(v261, v94, v47);
    v244(v97, 0, 1, v47);
    v101 = v47;
  }

  v102 = type metadata accessor for NavigationSharingURLInfo(0);
  v103 = (v92 + *(v102 + 24));
  v105 = *v103;
  v104 = v103[1];
  v106 = *(v100 + 32);
  v107 = v283;
  v266 = v101;
  v261 = v106;
  (v106)(v283, v62, v101);
  sub_20B5DF134(v97, v107 + *(v102 + 20), &unk_27C7617F0, &unk_20C151A10);
  v108 = (v107 + *(v102 + 24));
  *v108 = v105;
  v108[1] = v104;
  v109 = v282;
  swift_storeEnumTagMultiPayload();
  v110 = v271;
  sub_20B8E8910(v96, v271, type metadata accessor for NavigationResource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0, &unk_20C155B00);
    v113 = v266;
    v114 = *(v273 + 32);
    v114(v267, v110 + *(v117 + 48), v274);
    v118 = *(v281 + 8);

    v118(v110, v113);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v164 = v242;
    v165 = v266;
    v166 = v278;
    v278(v242, v280, v266);
    v167 = v241;
    sub_20B8E8910(v283, v241, type metadata accessor for NavigationSource);
    (*(v277 + 56))(v167, 0, 1, v109);
    v168 = *(v272 + 36);
    LODWORD(v270) = *(v96 + *(v272 + 32));
    v275 = *(v96 + v168);
    v169 = v240;
    v166(v240, v164, v165);

    v170 = v169;
    v171 = v109;
    sub_20BBD6CD8(v170, v243);
    v172 = v234;
    v166(v234, v164, v165);
    v173 = v236;
    v244(v236 + *(v102 + 20), 1, 1, v165);
    (v261)(v173, v172, v165);
    v174 = (v173 + *(v102 + 24));
    *v174 = 0;
    v174[1] = 0;
    swift_storeEnumTagMultiPayload();
    v175 = v229;
    sub_20B52F9E8(v167, v229, &unk_27C767800, &unk_20C15EC70);
    v176 = *(v277 + 48);
    v177 = v167;
    if (v176(v175, 1, v171) == 1)
    {
      v178 = v238;
      sub_20B8E8910(v173, v238, type metadata accessor for NavigationSource);
      v179 = v176(v175, 1, v171);
      v180 = v272;
      v181 = v232;
      v182 = v227;
      if (v179 != 1)
      {
        sub_20B520158(v175, &unk_27C767800, &unk_20C15EC70);
      }
    }

    else
    {
      v178 = v238;
      sub_20B8E8978(v175, v238, type metadata accessor for NavigationSource);
      v180 = v272;
      v181 = v232;
      v182 = v227;
    }

    sub_20B8E8910(v178, v182, type metadata accessor for NavigationSource);
    v183 = swift_getEnumCaseMultiPayload();
    v184 = v242;
    if (v183)
    {
      sub_20B8E88B0(v182, type metadata accessor for NavigationSource);
      v185 = v228;
    }

    else
    {
      sub_20B8E88B0(v182, type metadata accessor for NavigationSharingURLInfo);
      v186 = v243;
      v187 = v225;
      sub_20B8E8910(v243, v225, type metadata accessor for NavigationResource);
      v188 = swift_getEnumCaseMultiPayload();
      v185 = v228;
      if (v188 == 10)
      {
        sub_20B8E88B0(v236, type metadata accessor for NavigationSource);
        sub_20B520158(v177, &unk_27C767800, &unk_20C15EC70);
        v189 = v184;
        v190 = v266;
        v191 = *(v281 + 8);
        v191(v189, v266);
        sub_20B8E8978(v186, v181, type metadata accessor for NavigationResource);
        *(v181 + v180[5]) = 0;
        v192 = 2;
        swift_storeEnumTagMultiPayload();
        goto LABEL_42;
      }

      sub_20B8E88B0(v187, type metadata accessor for NavigationResource);
      v178 = v238;
    }

    v193 = v226;
    sub_20B8E8910(v178, v226, type metadata accessor for NavigationSource);
    if (swift_getEnumCaseMultiPayload())
    {
      v194 = type metadata accessor for NavigationSource;
      v195 = v193;
LABEL_44:
      sub_20B8E88B0(v195, v194);
      v200 = v275;
      v201 = v243;
      sub_20B8E8910(v243, v181, type metadata accessor for NavigationResource);
      v202 = v234;
      v203 = v266;
      v199 = v278;
      v278(v234, v184, v266);
      sub_20BB7F2E8(v202, 1, v181 + v180[5]);
      sub_20B8E88B0(v236, type metadata accessor for NavigationSource);
      sub_20B8E88B0(v201, type metadata accessor for NavigationResource);
      sub_20B520158(v177, &unk_27C767800, &unk_20C15EC70);
      v204 = v184;
      v190 = v203;
      v191 = *(v281 + 8);
      v191(v204, v190);
      v192 = v270;
      goto LABEL_45;
    }

    sub_20B8E88B0(v193, type metadata accessor for NavigationSharingURLInfo);
    v196 = v243;
    sub_20B8E8910(v243, v185, type metadata accessor for NavigationResource);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v194 = type metadata accessor for NavigationResource;
      v195 = v185;
      goto LABEL_44;
    }

    sub_20B8E88B0(v236, type metadata accessor for NavigationSource);
    sub_20B520158(v177, &unk_27C767800, &unk_20C15EC70);
    v197 = v184;
    v190 = v266;
    v191 = *(v281 + 8);
    v191(v197, v266);
    v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0, &unk_20C155B00);
    (*(v273 + 8))(v185 + *(v198 + 48), v274);
    v191(v185, v190);
    sub_20B8E8978(v196, v181, type metadata accessor for NavigationResource);
    *(v181 + v180[5]) = 1;
    swift_storeEnumTagMultiPayload();
    v192 = 2;
LABEL_42:
    v199 = v278;
    v200 = v275;
LABEL_45:
    sub_20B8E8978(v238, v181 + v180[6], type metadata accessor for NavigationSource);
    *(v181 + v180[7]) = 0;
    *(v181 + v180[8]) = v192;
    *(v181 + v180[9]) = v200;
    v205 = v181;
    v206 = v231;
    sub_20B8E8978(v205, v231, type metadata accessor for NavigationRequest);
    sub_20B8E8978(v206, v237, type metadata accessor for NavigationRequest);
    v207 = v233;
    sub_20C13B424();
    v208 = v230;
    v199(v230, v280, v190);
    v209 = sub_20C13BB74();
    v210 = sub_20C13D1F4();
    if (os_log_type_enabled(v209, v210))
    {
      v211 = swift_slowAlloc();
      v212 = swift_slowAlloc();
      v284 = v212;
      *v211 = 136315138;
      sub_20B8E91C8(&qword_27C768AB0, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v213 = sub_20C13DFA4();
      v214 = v208;
      v216 = v215;
      v191(v214, v190);
      v217 = sub_20B51E694(v213, v216, &v284);

      *(v211 + 4) = v217;
      _os_log_impl(&dword_20B517000, v209, v210, "Redirected sharing URL to %s", v211, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v212);
      MEMORY[0x20F2F6A40](v212, -1, -1);
      MEMORY[0x20F2F6A40](v211, -1, -1);
    }

    else
    {

      v191(v208, v190);
    }

    (*(v263 + 8))(v207, v264);
    v218 = v257;
    v219 = v271;
    v220 = v237;
    v221 = v258;
    sub_20B8E8910(v237, v258, type metadata accessor for NavigationRequest);
    v222 = (*(v218 + 80) + 16) & ~*(v218 + 80);
    v223 = swift_allocObject();
    sub_20B8E8978(v221, v223 + v222, type metadata accessor for NavigationRequest);
    sub_20C137CA4();
    sub_20B8E88B0(v220, type metadata accessor for NavigationRequest);
    sub_20B8E88B0(v283, type metadata accessor for NavigationSource);
    v162 = type metadata accessor for NavigationResource;
    v163 = v219;
    return sub_20B8E88B0(v163, v162);
  }

  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7710E0, &unk_20C15F290);
  v113 = v266;
  v114 = *(v273 + 32);
  v114(v267, v110 + *(v112 + 48), v274);
  v115 = sub_20C1387E4();
  v116 = *(*(v115 - 8) + 8);

  v116(v110, v115);
LABEL_13:
  v119 = v262;
  sub_20C13B424();
  v120 = v246;
  v121 = v280;
  v278(v246, v280, v113);
  v122 = sub_20C13BB74();
  v123 = sub_20C13D1F4();
  v124 = os_log_type_enabled(v122, v123);
  v125 = v272;
  if (v124)
  {
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v284 = v127;
    *v126 = 136315138;
    sub_20B8E91C8(&qword_27C768AB0, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v128 = sub_20C13DFA4();
    v129 = v120;
    v131 = v130;
    (*(v281 + 8))(v129, v113);
    v132 = sub_20B51E694(v128, v131, &v284);

    *(v126 + 4) = v132;
    _os_log_impl(&dword_20B517000, v122, v123, "Redirected marketing URL to %s", v126, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v127);
    MEMORY[0x20F2F6A40](v127, -1, -1);
    MEMORY[0x20F2F6A40](v126, -1, -1);

    (*(v263 + 8))(v262, v264);
  }

  else
  {

    (*(v281 + 8))(v120, v113);
    (*(v263 + 8))(v119, v264);
  }

  v133 = v256;
  v134 = v276;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0, &unk_20C155B00);
  v136 = *(v135 + 48);
  v137 = *(v135 + 64);
  v138 = v249;
  v278(v249, v121, v113);
  v114((v138 + v136), v267, v274);
  *(v138 + v137) = 0;
  swift_storeEnumTagMultiPayload();
  v139 = v248;
  (*(v248 + 56))(v138, 0, 1, v134);
  v140 = v251;
  (*(v270 + 56))(v251, 1, 1, v133);
  v141 = v269;
  sub_20B8E8910(v283, v269, type metadata accessor for NavigationSource);
  (*(v277 + 56))(v141, 0, 1, v282);
  v142 = v250;
  sub_20B5DF134(v138, v250, &unk_27C767810, &unk_20C169F00);
  v143 = *(v139 + 48);
  if (v143(v142, 1, v134) == 1)
  {
    v144 = v275;
    sub_20B8E8910(v275, v268, type metadata accessor for NavigationResource);
    v145 = v143(v142, 1, v134) == 1;
    v146 = v142;
    v147 = v258;
    v148 = v255;
    v149 = v254;
    v150 = v247;
    if (!v145)
    {
      sub_20B520158(v146, &unk_27C767810, &unk_20C169F00);
    }
  }

  else
  {
    sub_20B8E8978(v142, v268, type metadata accessor for NavigationResource);
    v147 = v258;
    v144 = v275;
    v148 = v255;
    v149 = v254;
    v150 = v247;
  }

  v151 = v140;
  v152 = v252;
  sub_20B5DF134(v151, v252, &qword_27C764E40, &unk_20C157A60);
  v153 = *(v270 + 48);
  if (v153(v152, 1, v133) == 1)
  {
    sub_20B8E8910(v144 + v125[5], v148, type metadata accessor for NavigationIntent);
    v154 = v153(v152, 1, v133);
    v155 = v253;
    if (v154 != 1)
    {
      sub_20B520158(v152, &qword_27C764E40, &unk_20C157A60);
    }
  }

  else
  {
    sub_20B8E8978(v152, v148, type metadata accessor for NavigationIntent);
    v155 = v253;
  }

  sub_20B5DF134(v269, v149, &unk_27C767800, &unk_20C15EC70);
  v156 = *(v277 + 48);
  v157 = v282;
  if (v156(v149, 1, v282) == 1)
  {
    sub_20B8E8910(v144 + v125[6], v150, type metadata accessor for NavigationSource);
    if (v156(v149, 1, v157) != 1)
    {
      sub_20B520158(v149, &unk_27C767800, &unk_20C15EC70);
    }
  }

  else
  {
    sub_20B8E8978(v149, v150, type metadata accessor for NavigationSource);
  }

  v158 = *(v144 + v125[8]);
  v159 = *(v144 + v125[9]);
  sub_20B8E8978(v268, v155, type metadata accessor for NavigationResource);
  sub_20B8E8978(v148, v155 + v125[5], type metadata accessor for NavigationIntent);
  sub_20B8E8978(v150, v155 + v125[6], type metadata accessor for NavigationSource);
  *(v155 + v125[7]) = 0;
  *(v155 + v125[8]) = v158;
  *(v155 + v125[9]) = v159;
  sub_20B8E8910(v155, v147, type metadata accessor for NavigationRequest);
  v160 = (*(v257 + 80) + 16) & ~*(v257 + 80);
  v161 = swift_allocObject();
  sub_20B8E8978(v147, v161 + v160, type metadata accessor for NavigationRequest);
  sub_20C137CA4();
  sub_20B8E88B0(v155, type metadata accessor for NavigationRequest);
  v162 = type metadata accessor for NavigationSource;
  v163 = v283;
  return sub_20B8E88B0(v163, v162);
}

void *EngagementRedirectURLInterceptor.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  return v0;
}

uint64_t EngagementRedirectURLInterceptor.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t EngagementRedirectURLInterceptor.interceptRequest(_:display:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v20[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v13 + 8))(v15, v12);
  sub_20B8E37E0(a1, v11);
  (*(v6 + 16))(v8, v11, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v8, v5);
  v18 = (v17 + ((v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B8E83A8;
  v18[1] = v3;
  type metadata accessor for NavigationRequest(0);

  sub_20C137C94();
  return (*(v6 + 8))(v11, v5);
}

uint64_t EngagementRedirectURLInterceptor.cancel()()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20B8E81AC()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v1 + 8))(v3, v0);
  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20B8E82A8(uint64_t a1)
{
  *(v1 + 24) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080, &unk_20C14F930);
  sub_20C133AA4();
  *(v1 + 16) = *&v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763DE0, &unk_20C161550);
  sub_20C133AA4();
  sub_20B51C710(v3, v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v1 + 72) = v3[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(v3, v1 + 88);
  return v1;
}

uint64_t sub_20B8E83D4(uint64_t a1, uint64_t a2)
{
  result = sub_20B8E91C8(&qword_27C7677F8, a2, type metadata accessor for EngagementRedirectURLInterceptor, &protocol conformance descriptor for EngagementRedirectURLInterceptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20B8E84D4(uint64_t *a1)
{
  type metadata accessor for NavigationSharingURLInfo(0);

  return sub_20B8E48DC(a1, v2);
}

uint64_t sub_20B8E8580@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for NavigationSharingURLInfo(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for NavigationRequest(0) - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_20B8E5C04(a1, v2 + v6, v9, a2);
}

uint64_t sub_20B8E868C@<X0>(uint64_t x8_0@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_20BB550E8(v5, x8_0);
}

uint64_t sub_20B8E8740(uint64_t a1)
{
  v3 = *(type metadata accessor for NavigationRequest(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20B8E4A3C(a1, v4);
}

uint64_t sub_20B8E87E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B8E88B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B8E8910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20B8E8978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_7Tm()
{
  v1 = type metadata accessor for NavigationRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v9 = sub_20C132C14();
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      v7 = &unk_27C763FC0;
      v8 = &unk_20C155B00;
      goto LABEL_17;
    case 2u:
      v10 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v17 = sub_20C1387E4();
      (*(*(v17 - 8) + 8))(v0 + v3, v17);
      v7 = &qword_27C7710E0;
      v8 = &unk_20C15F290;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
      v8 = &unk_20C155B10;
LABEL_17:
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v8) + 48);
      v19 = sub_20C1388F4();
      (*(*(v19 - 8) + 8))(v5 + v18, v19);
      break;
    case 9u:
      v10 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v10 = sub_20C138204();
LABEL_11:
      (*(*(v10 - 8) + 8))(v0 + v3, v10);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = sub_20C1344C4();
        (*(*(v11 - 8) + 8))(v0 + v3, v11);
        v12 = type metadata accessor for WorkoutSessionConfiguration(0);
        v13 = v12[5];
        v14 = sub_20C137254();
        (*(*(v14 - 8) + 8))(v5 + v13, v14);
        v15 = v12[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v16 = sub_20C137EA4();
          (*(*(v16 - 8) + 8))(v5 + v15, v16);
        }

        else
        {
        }

        v36 = v12[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v12[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v12[11] + 8) >= 0xC)
        {
        }

        v42 = v12[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v20 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);
      v24 = sub_20C1344C4();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&v20[v23], 1, v24))
      {
        (*(v25 + 8))(&v20[v23], v24);
      }

      break;
    case 4:

      break;
    case 3:
      v22 = sub_20C139144();
      (*(*(v22 - 8) + 8))(v20, v22);
      break;
  }

  v26 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource(0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 == 1)
  {
    v35 = sub_20C135024();
    (*(*(v35 - 8) + 8))(v26, v35);
  }

  else if (!v27)
  {
    v46 = v2;
    v28 = (v2 + 16) & ~v2;
    v29 = v0;
    v30 = v4;
    v31 = sub_20C132C14();
    v32 = *(v31 - 8);
    v33 = *(v32 + 8);
    v33(v26, v31);
    v34 = *(type metadata accessor for NavigationSharingURLInfo(0) + 20);
    if (!(*(v32 + 48))(&v26[v34], 1, v31))
    {
      v33(&v26[v34], v31);
    }

    v4 = v30;
    v0 = v29;
    v3 = v28;
    v2 = v46;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20B8E91C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_20B8E9218(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20C13DAE4();
    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    sub_20B7A7AAC();
    sub_20C13CFF4();
    v1 = v23;
    v2 = v24;
    v3 = v25;
    v4 = v26;
    v5 = v27;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v9 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    v15 = sub_20C13DB64();
    if (!v15 || (*&v19 = v15, sub_20B51C88C(0, &qword_27C762910, 0x277D75D18), swift_dynamicCast(), v14 = *&v22[0], v12 = v4, v13 = v5, !*&v22[0]))
    {
LABEL_27:
      sub_20B583EDC(v1);
      return;
    }

LABEL_19:
    v28 = v14;
    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767850, &qword_20C161660);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
    }

    if (*(&v20 + 1))
    {
      sub_20B51C710(&v19, v22);
      sub_20B51C710(v22, &v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_20BC05B5C(0, v9[2] + 1, 1, v9);
      }

      v18 = v9[2];
      v17 = v9[3];
      if (v18 >= v17 >> 1)
      {
        v9 = sub_20BC05B5C((v17 > 1), v18 + 1, 1, v9);
      }

      v9[2] = v18 + 1;
      sub_20B51C710(&v19, &v9[5 * v18 + 4]);
    }

    else
    {
      sub_20B520158(&v19, &qword_27C767858, &unk_20C161668);
    }

    v4 = v12;
    v5 = v13;
  }

  v10 = v4;
  v11 = v5;
  v12 = v4;
  if (v5)
  {
LABEL_15:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v3 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v11 = *(v2 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

id sub_20B8E9518()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:1.0 alpha:0.2];
  qword_27C79AB18 = result;
  return result;
}

char *sub_20B8E9558(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = _UISolariumEnabled();
  v13 = &v5[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_layout];
  *v13 = xmmword_20C161560;
  v14 = 20.0;
  *(v13 + 2) = 0x4024000000000000;
  if (v12)
  {
    v14 = 30.0;
  }

  *(v13 + 3) = v14;
  *(v13 + 2) = xmmword_20C15FDA0;
  *(v13 + 7) = 0;
  *(v13 + 8) = 0;
  *(v13 + 6) = 0;
  *(v13 + 72) = xmmword_20C161570;
  *(v13 + 88) = xmmword_20C161580;
  *(v13 + 104) = xmmword_20C161590;
  *(v13 + 120) = vdupq_n_s64(0x4046000000000000uLL);
  *(v13 + 136) = xmmword_20C1615A0;
  *(v13 + 152) = xmmword_20C1615A0;
  v15 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v16 setAllowsDefaultTighteningForTruncation_];
  v17 = objc_opt_self();
  v18 = *MEMORY[0x277D76938];
  v19 = [v17 preferredFontForTextStyle_];
  [v16 setFont_];

  v20 = objc_opt_self();
  v21 = [v20 labelColor];
  [v16 setTextColor_];

  v22 = v16;
  LODWORD(v23) = 1148846080;
  [v22 setContentHuggingPriority:1 forAxis:v23];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];

  [v22 setAdjustsFontForContentSizeCategory_];
  *&v5[v15] = v22;
  v24 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_accessoryImageView;
  v25 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v26 = *MEMORY[0x277D76940];
  v27 = objc_opt_self();
  v28 = [v27 configurationWithTextStyle_];
  [v25 setPreferredSymbolConfiguration_];

  v29 = v25;
  v30 = [v20 &off_277D9A0B8 + 6];
  [v29 setTintColor_];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v31) = v98;
  [v29 setContentHuggingPriority:0 forAxis:v31];
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v5[v24] = v29;
  v32 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView;
  v33 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = [v27 configurationWithTextStyle_];
  [v33 setPreferredSymbolConfiguration_];

  v35 = [v20 labelColor];
  [v33 setTintColor_];

  v96 = 1065353216;
  v97 = 1144750080;
  sub_20C13BB94();
  LODWORD(v36) = v98;
  [v33 setContentHuggingPriority:0 forAxis:v36];

  *&v5[v32] = v33;
  v5[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell] = 1;
  v5[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_shouldBreadCrumb] = 0;
  v95.receiver = v5;
  v95.super_class = type metadata accessor for TVFilterOptionsCell(0);
  v37 = objc_msgSendSuper2(&v95, sel_initWithFrame_, a1, a2, a3, a4);
  v38 = OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
  v39 = *&v37[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView];
  v40 = objc_opt_self();
  v41 = v37;
  v42 = v39;
  v43 = [v40 configurationWithStyle_];
  [v42 setFocusAnimationConfiguration_];

  [*&v37[v38] setFocusedSizeIncrease_];
  v44 = *&v37[v38];
  v45 = [v20 clearColor];
  [v44 setBackgroundColor:v45 forState:4];

  result = [*&v37[v38] contentView];
  if (!result)
  {
    __break(1u);
    goto LABEL_14;
  }

  v47 = result;
  v48 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel;
  [result addSubview_];

  v49 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView;
  [*&v41[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView] setContentMode_];
  result = [*&v37[v38] contentView];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v50 = result;
  [result addSubview_];

  v51 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_accessoryImageView;
  [*&v41[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_accessoryImageView] setContentMode_];
  result = [*&v37[v38] contentView];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v52 = result;
  v94 = v51;
  [result addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_20C1615B0;
  v54 = [*&v41[v49] leadingAnchor];
  result = [*&v37[v38] contentView];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v55 = result;
  v56 = [result leadingAnchor];

  v57 = &v41[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_layout];
  v58 = [v54 constraintEqualToAnchor:v56 constant:*&v41[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_layout + 96]];

  *(v53 + 32) = v58;
  v59 = [*&v41[v49] widthAnchor];
  v60 = [v59 constraintEqualToConstant_];

  *(v53 + 40) = v60;
  v61 = [*&v41[v49] heightAnchor];
  v62 = [v61 constraintGreaterThanOrEqualToConstant_];

  *(v53 + 48) = v62;
  v63 = [*&v41[v49] centerYAnchor];
  result = [*&v37[v38] contentView];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v64 = result;
  v65 = [result centerYAnchor];

  v66 = [v63 constraintEqualToAnchor_];
  *(v53 + 56) = v66;
  v67 = [*&v41[v48] leadingAnchor];
  v68 = [*&v41[v49] trailingAnchor];
  v69 = [v67 constraintEqualToAnchor:v68 constant:v57[18]];

  *(v53 + 64) = v69;
  v70 = [*&v41[v48] trailingAnchor];
  v71 = [*&v41[v94] leadingAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:-v57[20]];

  *(v53 + 72) = v72;
  v73 = [*&v41[v48] topAnchor];
  result = [*&v37[v38] contentView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v74 = result;
  v75 = [result topAnchor];

  v76 = [v73 constraintEqualToAnchor:v75 constant:v57[17]];
  *(v53 + 80) = v76;
  v77 = [*&v41[v48] bottomAnchor];
  result = [*&v37[v38] contentView];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v78 = result;
  v79 = [result bottomAnchor];

  v80 = [v77 constraintEqualToAnchor:v79 constant:-v57[19]];
  *(v53 + 88) = v80;
  v81 = [*&v41[v94] leadingAnchor];
  v82 = [*&v41[v48] trailingAnchor];
  v83 = [v81 constraintGreaterThanOrEqualToAnchor:v82 constant:v57[7]];

  *(v53 + 96) = v83;
  v84 = [*&v41[v94] trailingAnchor];
  result = [*&v37[v38] contentView];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v85 = result;
  v86 = [result trailingAnchor];

  v87 = [v84 constraintEqualToAnchor:v86 constant:-v57[9]];
  *(v53 + 104) = v87;
  v88 = [*&v41[v94] centerYAnchor];
  result = [*&v37[v38] contentView];
  if (result)
  {
    v89 = result;

    v90 = objc_opt_self();
    v91 = [v89 centerYAnchor];

    v92 = [v88 constraintEqualToAnchor_];
    *(v53 + 112) = v92;
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v93 = sub_20C13CC54();

    [v90 activateConstraints_];

    return v41;
  }

LABEL_21:
  __break(1u);
  return result;
}

void sub_20B8EA1AC(void *a1, void *a2)
{
  v21.receiver = v2;
  v21.super_class = type metadata accessor for TVFilterOptionsCell(0);
  objc_msgSendSuper2(&v21, sel_didUpdateFocusInContext_withAnimationCoordinator_, a1, a2);
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_shouldBreadCrumb) == 1)
  {
    v5 = [a1 nextFocusedView];
    if (v5)
    {
      v6 = v5;
      v7 = [v2 superview];
      if (!v7)
      {

        return;
      }

      v8 = v7;
      sub_20B51C88C(0, &qword_27C7654B0, 0x277D82BB8);
      if (sub_20C13D5F4())
      {
        if (([v6 isDescendantOfView_] & 1) == 0)
        {
          goto LABEL_13;
        }

LABEL_10:

        return;
      }

      v9 = [v6 isDescendantOfView_];
      v10 = [v6 isDescendantOfView_];
      if (v9)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else if (v10)
      {
        v11 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v19 = sub_20B8EC7BC;
        v20 = v11;
        v15 = MEMORY[0x277D85DD0];
        v16 = 1107296256;
        v12 = &block_descriptor_37;
LABEL_14:
        v17 = sub_20B7B548C;
        v18 = v12;
        v14 = _Block_copy(&v15);

        [a2 addCoordinatedAnimations:v14 completion:{0, v15, v16}];

        _Block_release(v14);
        return;
      }

LABEL_13:
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v19 = sub_20B8EC79C;
      v20 = v13;
      v15 = MEMORY[0x277D85DD0];
      v16 = 1107296256;
      v12 = &block_descriptor_33;
      goto LABEL_14;
    }
  }
}

void sub_20B8EA42C(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_backgroundEffectView);

    [v5 setAlpha_];
  }
}

void sub_20B8EA6DC(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v6 = a1;
  v7 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v8 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
  if (*&v4[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v4[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v9 = [v4 contentView];
    v10 = [v9 subviews];

    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v11 = sub_20C13CC74();

    v24[0] = MEMORY[0x277D84FA0];
    if (v11 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x20F2F5430](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v8 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        sub_20B6FFB30(&v27, v14);

        ++v13;
        if (v8 == i)
        {
          v15 = v24[0];
          v8 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v15 = MEMORY[0x277D84FA0];
LABEL_16:

    v28 = v15;
    sub_20B6FFB30(v24, *&v4[*v8]);

    sub_20B8E9218(v28);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 32;
      do
      {
        sub_20B51CC64(v19, v24);
        v20 = *&v4[v7];
        v21 = v25;
        v22 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        (*(v22 + 16))(v20, a2 & 1, v21, v22);
        __swift_destroy_boxed_opaque_existential_1(v24);
        v19 += 40;
        --v18;
      }

      while (v18);
    }

    v6 = a1;
  }

  [*&v4[*v8] setControlState:v6 animated:a2 & 1];
  sub_20B8EAD08(v6);
}

void sub_20B8EA964(uint64_t a1, void *a2, double a3)
{
  v4 = v3;
  v6 = a1;
  v7 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v8 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v9 = [v3 contentView];
    v10 = [v9 subviews];

    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v11 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v11 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x20F2F5430](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v8 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        sub_20B6FFB30(&v31, v14);

        ++v13;
        if (v8 == i)
        {
          v15 = aBlock[0];
          v8 = &OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v15 = MEMORY[0x277D84FA0];
LABEL_16:

    v32 = v15;
    sub_20B6FFB30(aBlock, *&v4[*v8]);

    sub_20B8E9218(v32);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 32;
      do
      {
        sub_20B51CC64(v19, aBlock);
        v20 = *&v4[v7];
        v21 = v28;
        v22 = v29;
        __swift_project_boxed_opaque_existential_1(aBlock, v28);
        (*(v22 + 3))(v20, a2, v21, v22);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v19 += 40;
        --v18;
      }

      while (v18);
    }

    v6 = a1;
  }

  [*&v4[*v8] setControlState:v6 withAnimationCoordinator:a2];
  if (a2)
  {
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    *(v24 + 24) = v6;
    v29 = sub_20B8EC794;
    v30 = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v28 = &block_descriptor_44;
    v25 = _Block_copy(aBlock);

    [a2 addCoordinatedAnimations:v25 completion:0];
    _Block_release(v25);
  }
}

void sub_20B8EACAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_20B8EAD08(a2);
  }
}

void sub_20B8EAD08(uint64_t a1)
{
  v3 = objc_opt_self();
  if ((a1 & 8) != 0)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = &selRef_whiteColor;
  if ((a1 & 8) != 0)
  {
    v5 = &selRef_blackColor;
  }

  v6 = [v3 *v5];
  v7 = *&v1[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel];
  v8 = v6;
  [v7 setTextColor_];
  v9 = *&v1[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_accessoryImageView];
  [v9 setTintColor_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_backgroundEffectView] setAlpha_];
  v10 = *&v1[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView];
  [v10 setTintColor_];

  [v7 setNumberOfLines_];
  [v7 setLineBreakMode_];
  v11 = [objc_opt_self() configurationWithTextStyle_];
  v23 = v11;
  if (a1)
  {
    if (a1 == 4)
    {
      v16 = v11;
      v17 = sub_20C13C914();
      v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

      [v9 setImage_];
      [v9 &selRef:1.0 traitCollectionWithPreferredContentSizeCategory:?];
      [v10 &selRef:1.0 traitCollectionWithPreferredContentSizeCategory:?];
      [v7 &selRef:1.0 traitCollectionWithPreferredContentSizeCategory:?];
    }

    else if (a1 == 2)
    {
      if (v1[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell] == 1)
      {
        v12 = v11;
        v13 = sub_20C13C914();
        v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

        if (v14)
        {
          v15 = [v14 imageFlippedForRightToLeftLayoutDirection];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      [v9 setImage_];

      [v9 setAlpha_];
      [v7 setAlpha_];
      [v10 setAlpha_];
      [v7 setNumberOfLines_];
      [v7 setLineBreakMode_];
    }
  }

  else
  {
    if (v1[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell] == 1)
    {
      v19 = v11;
      v20 = sub_20C13C914();
      v21 = [objc_opt_self() systemImageNamed:v20 withConfiguration:v19];

      if (v21)
      {
        v22 = [v21 imageFlippedForRightToLeftLayoutDirection];
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }

    [v9 setImage_];

    [v9 setAlpha_];
    [v10 setAlpha_];
    [v7 setAlpha_];
  }

  [v1 layoutIfNeeded];
}

void sub_20B8EB17C()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_itemInfo, &qword_27C762550, &unk_20C1505A0);

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView);
}

id sub_20B8EB1FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVFilterOptionsCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVFilterOptionsCell(uint64_t a1)
{
  result = qword_27C767840;
  if (!qword_27C767840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8EB314(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B8EB3D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 168))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B8EB3F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 168) = v3;
  return result;
}

double sub_20B8EB45C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B8EB4A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B8EB500(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B8EB578(unint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v10 <= 37)
  {
    if (v10 > 16)
    {
      if (v10 != 17)
      {
        if (v10 != 21)
        {
          if (v10 != 26)
          {
            goto LABEL_62;
          }

          goto LABEL_37;
        }

        v45 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v46 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
        v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
        v47 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
        v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_shouldBreadCrumb] = 0;
        if (v46)
        {
          v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell] = 1;
          v15 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
          if (!*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState])
          {

LABEL_117:
            [*&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView] setControlState:0 animated:0];
            sub_20B8EAD08(0);
            v111 = *&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel];
            v112 = sub_20C13C914();
            [v111 setText_];

            v113 = *&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView];
            v114 = [objc_opt_self() configurationWithTextStyle_];
            v115 = sub_20C13C914();
            v116 = [objc_opt_self() smm:v115 systemImageNamed:v114 withConfiguration:?];

            [v113 setImage_];
            sub_20B8EC750(v45, v46, v14, v47);

            return;
          }

          *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = 0;

          v48 = [v2 contentView];
          v49 = [v48 subviews];

          sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
          v18 = sub_20C13CC74();

          v128[0] = MEMORY[0x277D84FA0];
          if (v18 >> 62)
          {
            v50 = sub_20C13DB34();
            v126 = v45;
            i = v14;
            if (v50)
            {
LABEL_53:
              v125 = v47;
              v51 = 0;
              v21 = v18 & 0xC000000000000001;
              v14 = v18 & 0xFFFFFFFFFFFFFF8;
              do
              {
                if (v21)
                {
                  v52 = MEMORY[0x20F2F5430](v51, v18);
                }

                else
                {
                  if (v51 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_84;
                  }

                  v52 = *(v18 + 8 * v51 + 32);
                }

                v53 = v51 + 1;
                if (__OFADD__(v51, 1))
                {
                  goto LABEL_83;
                }

                sub_20B6FFB30(&v131, v52);

                ++v51;
              }

              while (v53 != v50);
              v70 = v128[0];
              v47 = v125;
              v45 = v126;
              goto LABEL_112;
            }
          }

          else
          {
            v50 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v126 = v45;
            i = v14;
            if (v50)
            {
              goto LABEL_53;
            }
          }

          v70 = MEMORY[0x277D84FA0];
LABEL_112:

          v132 = v70;
          sub_20B6FFB30(v128, *&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView]);

          sub_20B8E9218(v132);
          v104 = v103;

          v105 = *(v104 + 16);
          if (v105)
          {
            v106 = v47;
            v107 = v104 + 32;
            do
            {
              sub_20B51CC64(v107, v128);
              v108 = *&v2[v15];
              v109 = v129;
              v110 = v130;
              __swift_project_boxed_opaque_existential_1(v128, v129);
              (*(v110 + 16))(v108, 0, v109, v110);
              __swift_destroy_boxed_opaque_existential_1(v128);
              v107 += 40;
              --v105;
            }

            while (v105);

            v47 = v106;
            v45 = v126;
            v14 = i;
          }

          else
          {

            v14 = i;
          }

          goto LABEL_117;
        }

        v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell] = 0;
        v15 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
        if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] == 2)
        {
LABEL_124:
          [*&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView] setControlState:2 animated:0];
          sub_20B8EAD08(2);
          [*&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel] setText_];
          [*&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView] setImage_];
          sub_20B8EC750(v45, 0, v14, v47);
          return;
        }

        *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = 2;
        v63 = [v2 contentView];
        v64 = [v63 subviews];

        sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
        v18 = sub_20C13CC74();

        v128[0] = MEMORY[0x277D84FA0];
        if (v18 >> 62)
        {
          v65 = sub_20C13DB34();
          i = v14;
          if (v65)
          {
LABEL_68:
            v125 = v47;
            v126 = v45;
            v66 = 0;
            v21 = v18 & 0xFFFFFFFFFFFFFF8;
            do
            {
              if ((v18 & 0xC000000000000001) != 0)
              {
                v67 = MEMORY[0x20F2F5430](v66, v18);
              }

              else
              {
                if (v66 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_86;
                }

                v67 = *(v18 + 8 * v66 + 32);
              }

              v68 = v66 + 1;
              if (__OFADD__(v66, 1))
              {
                goto LABEL_85;
              }

              sub_20B6FFB30(&v131, v67);

              ++v66;
            }

            while (v68 != v65);
            v71 = v128[0];
            v47 = v125;
            v45 = v126;
            goto LABEL_120;
          }
        }

        else
        {
          v65 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          i = v14;
          if (v65)
          {
            goto LABEL_68;
          }
        }

        v71 = MEMORY[0x277D84FA0];
LABEL_120:

        v132 = v71;
        sub_20B6FFB30(v128, *&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView]);

        sub_20B8E9218(v132);
        v118 = v117;

        v119 = *(v118 + 16);
        if (v119)
        {
          v120 = v118 + 32;
          do
          {
            sub_20B51CC64(v120, v128);
            v121 = *&v2[v15];
            v122 = v129;
            v123 = v130;
            __swift_project_boxed_opaque_existential_1(v128, v129);
            (*(v123 + 16))(v121, 0, v122, v123);
            __swift_destroy_boxed_opaque_existential_1(v128);
            v120 += 40;
            --v119;
          }

          while (v119);
        }

        v14 = i;
        goto LABEL_124;
      }

LABEL_37:
      v34 = ((a1 & 0xFFFFFFFFFFFFFF8) + 16);
      v35 = ((a1 & 0xFFFFFFFFFFFFFF8) + 24);
      v36 = ((a1 & 0xFFFFFFFFFFFFFF8) + 32);
LABEL_38:
      v37 = *v35;
      v38 = *v34;
      v15 = *v36;

      v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_shouldBreadCrumb] = 1;
      v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell] = 0;
      v14 = qword_20C161678[v38];
      v21 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
      if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != v14)
      {
        v126 = v37;
        *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = v14;
        v39 = [v2 contentView];
        v40 = [v39 subviews];

        sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
        v18 = sub_20C13CC74();

        v128[0] = MEMORY[0x277D84FA0];
        if (v18 >> 62)
        {
          goto LABEL_87;
        }

        v41 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        for (i = v15; v41; i = v15)
        {
          v42 = 0;
          while (1)
          {
            if ((v18 & 0xC000000000000001) != 0)
            {
              v43 = MEMORY[0x20F2F5430](v42, v18);
            }

            else
            {
              if (v42 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_78;
              }

              v43 = *(v18 + 8 * v42 + 32);
            }

            v15 = v42 + 1;
            if (__OFADD__(v42, 1))
            {
              break;
            }

            sub_20B6FFB30(&v131, v43);

            ++v42;
            if (v15 == v41)
            {
              v44 = v128[0];
              goto LABEL_89;
            }
          }

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
          v41 = sub_20C13DB34();
        }

        v44 = MEMORY[0x277D84FA0];
LABEL_89:

        v132 = v44;
        sub_20B6FFB30(v128, *&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView]);

        sub_20B8E9218(v132);
        v73 = v72;

        v74 = *(v73 + 16);
        if (v74)
        {
          v75 = v73 + 32;
          do
          {
            sub_20B51CC64(v75, v128);
            v76 = *&v2[v21];
            v77 = v129;
            v78 = v130;
            __swift_project_boxed_opaque_existential_1(v128, v129);
            (*(v78 + 16))(v76, 0, v77, v78);
            __swift_destroy_boxed_opaque_existential_1(v128);
            v75 += 40;
            --v74;
          }

          while (v74);
        }
      }

      [*&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView] setControlState:v14 animated:0];
      sub_20B8EAD08(v14);
      v79 = *&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel];
      v80 = sub_20C13C914();

      [v79 setText_];

      goto LABEL_94;
    }

    if (v10 == 6)
    {
      goto LABEL_37;
    }

    if (v10 == 13)
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v24 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
      v26 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
      v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x30);
      v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_shouldBreadCrumb] = 1;
      v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell] = 0;
      v27 = qword_20C161678[v23];
      v28 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
      if (*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] == v27)
      {
LABEL_109:
        [*&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView] setControlState:v27 animated:0];
        sub_20B8EAD08(v27);
        v101 = *&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel];
        v128[0] = v25;
        v128[1] = v24;

        MEMORY[0x20F2F4230](v26, v14);
        v102 = sub_20C13C914();

        [v101 setText_];

LABEL_94:
        [*&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView] setImage_];
        return;
      }

      v124 = v24;
      v125 = v14;
      *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = v27;
      v29 = [v2 contentView];
      v30 = [v29 subviews];

      sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
      v18 = sub_20C13CC74();

      v128[0] = MEMORY[0x277D84FA0];
      if (v18 >> 62)
      {
        v31 = sub_20C13DB34();
        v126 = v26;
        i = v25;
        if (v31)
        {
LABEL_27:
          v32 = 0;
          v21 = v18 & 0xC000000000000001;
          v15 = v18 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if (v21)
            {
              v33 = MEMORY[0x20F2F5430](v32, v18);
            }

            else
            {
              if (v32 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_82;
              }

              v33 = *(v18 + 8 * v32 + 32);
            }

            v14 = v32 + 1;
            if (__OFADD__(v32, 1))
            {
              goto LABEL_81;
            }

            sub_20B6FFB30(&v131, v33);

            ++v32;
          }

          while (v14 != v31);
          v25 = i;
          v69 = v128[0];
          goto LABEL_104;
        }
      }

      else
      {
        v31 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v126 = v26;
        i = v25;
        if (v31)
        {
          goto LABEL_27;
        }
      }

      v69 = MEMORY[0x277D84FA0];
LABEL_104:

      v132 = v69;
      sub_20B6FFB30(v128, *&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView]);

      sub_20B8E9218(v132);
      v95 = v94;

      v96 = *(v95 + 16);
      if (v96)
      {
        v97 = v95 + 32;
        do
        {
          sub_20B51CC64(v97, v128);
          v98 = *&v2[v28];
          v99 = v129;
          v100 = v130;
          __swift_project_boxed_opaque_existential_1(v128, v129);
          (*(v100 + 16))(v98, 0, v99, v100);
          __swift_destroy_boxed_opaque_existential_1(v128);
          v97 += 40;
          --v96;
        }

        while (v96);

        v14 = v125;
        v26 = v126;
        v24 = v124;
        v25 = i;
      }

      else
      {

        v14 = v125;
        v26 = v126;
        v24 = v124;
      }

      goto LABEL_109;
    }

    goto LABEL_62;
  }

  if (v10 <= 57)
  {
    if (v10 == 38 || v10 == 55)
    {
      goto LABEL_37;
    }

    goto LABEL_62;
  }

  switch(v10)
  {
    case ':':
      goto LABEL_37;
    case '<':
      v34 = swift_projectBox();
      v35 = (v34 + 8);
      v36 = (v34 + 16);
      goto LABEL_38;
    case 'C':
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
      v14 = *(v11 + 40);
      v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_shouldBreadCrumb] = 1;
      v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell] = 0;
      v15 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
      if (!*&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState])
      {
LABEL_101:
        [*&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView] setControlState:0 animated:{0, v7}];
        sub_20B8EAD08(0);
        v88 = *&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel];
        v89 = sub_20C13C914();
        [v88 setText_];

        v90 = *&v2[OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView];
        v91 = [objc_opt_self() configurationWithTextStyle_];
        v92 = sub_20C13C914();
        v93 = [objc_opt_self() smm:v92 systemImageNamed:v91 withConfiguration:?];

        [v90 setImage_];
        return;
      }

      v125 = v12;
      *&v2[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = 0;
      v16 = [v2 contentView];
      v17 = [v16 subviews];

      sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
      v18 = sub_20C13CC74();

      i = v14;
      v128[0] = MEMORY[0x277D84FA0];
      v126 = v13;
      if (v18 >> 62)
      {
        v19 = sub_20C13DB34();
        if (v19)
        {
LABEL_14:
          v20 = 0;
          v21 = v18 & 0xC000000000000001;
          do
          {
            if (v21)
            {
              v22 = MEMORY[0x20F2F5430](v20, v18);
            }

            else
            {
              if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_80;
              }

              v22 = *(v18 + 8 * v20 + 32);
            }

            v14 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_79;
            }

            sub_20B6FFB30(&v131, v22);

            ++v20;
          }

          while (v14 != v19);
          v62 = v128[0];
          goto LABEL_97;
        }
      }

      else
      {
        v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v19)
        {
          goto LABEL_14;
        }
      }

      v62 = MEMORY[0x277D84FA0];
LABEL_97:

      v132 = v62;
      sub_20B6FFB30(v128, *&v2[OBJC_IVAR____TtC9SeymourUI21TVFloatingContentCell_floatingView]);

      sub_20B8E9218(v132);
      v82 = v81;

      v83 = *(v82 + 16);
      if (v83)
      {
        v84 = v82 + 32;
        do
        {
          sub_20B51CC64(v84, v128);
          v85 = *&v2[v15];
          v86 = v129;
          v87 = v130;
          __swift_project_boxed_opaque_existential_1(v128, v129);
          (*(v87 + 16))(v85, 0, v86, v87);
          __swift_destroy_boxed_opaque_existential_1(v128);
          v84 += 40;
          --v83;
        }

        while (v83);
      }

      goto LABEL_101;
  }

LABEL_62:
  v54 = v6;
  sub_20C13B534();

  v55 = sub_20C13BB74();
  v56 = sub_20C13D1D4();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v128[0] = v58;
    *v57 = 141558274;
    *(v57 + 4) = 1752392040;
    *(v57 + 12) = 2080;
    v132 = a1;

    v59 = sub_20C13C9D4();
    v61 = sub_20B51E694(v59, v60, v128);

    *(v57 + 14) = v61;
    _os_log_impl(&dword_20B517000, v55, v56, "Trying to configure filter options cell with: %{mask.hash}s", v57, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x20F2F6A40](v58, -1, -1);
    MEMORY[0x20F2F6A40](v57, -1, -1);
  }

  (*(v5 + 8))(v9, v54);
}

double sub_20B8EC750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

void sub_20B8EC7DC()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = _UISolariumEnabled();
  v5 = v1 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_layout;
  *v5 = xmmword_20C161560;
  v6 = 20.0;
  *(v5 + 16) = 0x4024000000000000;
  if (v4)
  {
    v6 = 30.0;
  }

  *(v5 + 24) = v6;
  *(v5 + 32) = xmmword_20C15FDA0;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 48) = 0;
  *(v5 + 72) = xmmword_20C161570;
  *(v5 + 88) = xmmword_20C161580;
  *(v5 + 104) = xmmword_20C161590;
  *(v5 + 120) = vdupq_n_s64(0x4046000000000000uLL);
  *(v5 + 136) = xmmword_20C1615A0;
  *(v5 + 152) = xmmword_20C1615A0;
  v7 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_titleLabel;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v8 setAllowsDefaultTighteningForTruncation_];
  v9 = objc_opt_self();
  v10 = *MEMORY[0x277D76938];
  v11 = [v9 preferredFontForTextStyle_];
  [v8 setFont_];

  v12 = objc_opt_self();
  v13 = [v12 labelColor];
  [v8 setTextColor_];

  v14 = v8;
  LODWORD(v15) = 1148846080;
  [v14 setContentHuggingPriority:1 forAxis:v15];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];

  [v14 setAdjustsFontForContentSizeCategory_];
  *(v1 + v7) = v14;
  v16 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_accessoryImageView;
  v17 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  v18 = *MEMORY[0x277D76940];
  v19 = objc_opt_self();
  v20 = [v19 configurationWithTextStyle_];
  [v17 setPreferredSymbolConfiguration_];

  v21 = v17;
  v22 = [v12 &off_277D9A0B8 + 6];
  [v21 setTintColor_];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BB94();
  LODWORD(v23) = v29;
  [v21 setContentHuggingPriority:0 forAxis:v23];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v1 + v16) = v21;
  v24 = OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_iconImageView;
  v25 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  v26 = [v19 configurationWithTextStyle_];
  [v25 setPreferredSymbolConfiguration_];

  v27 = [v12 labelColor];
  [v25 setTintColor_];

  sub_20C13BB94();
  LODWORD(v28) = v29;
  [v25 setContentHuggingPriority:0 forAxis:v28];

  *(v1 + v24) = v25;
  *(v1 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_isDisclosureCell) = 1;
  *(v1 + OBJC_IVAR____TtC9SeymourUI19TVFilterOptionsCell_shouldBreadCrumb) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B8ECC8C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a4;
  v55 = sub_20C13C5F4();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v43 - v9;
  v52 = sub_20C13C5A4();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = sub_20C1352E4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 title];
  if (v20)
  {
    v21 = v20;
    v44 = sub_20C13C954();
    v23 = v22;
  }

  else
  {
    v44 = 0;
    v23 = 0xE000000000000000;
  }

  (*(v16 + 104))(v19, *MEMORY[0x277D517A0], v15);
  v24 = sub_20BEF4B50(a2, a3);
  v25 = sub_20C1349B4();
  v46 = v19;
  v27 = v26;
  sub_20C13C594();
  sub_20C13C5C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F10, &qword_20C152E08);
  inited = swift_initStackObject();
  v45 = v14;
  v48 = v15;
  v29 = v10;
  v43 = v10;
  *(inited + 32) = 1701667182;
  *(inited + 16) = xmmword_20C152DF0;
  v47 = v16;
  v30 = MEMORY[0x277D837D0];
  v31 = v44;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v31;
  *(inited + 56) = v23;
  *(inited + 72) = v30;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  *(inited + 96) = sub_20C1352D4();
  *(inited + 104) = v32;
  *(inited + 120) = v30;
  *(inited + 128) = 0x6973736572706D69;
  v33 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = -1;
  *(inited + 168) = v33;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v30;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = v25;
  *(inited + 200) = v27;
  v34 = sub_20B6B1778(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F18, &unk_20C161740);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = v34;
  sub_20BEF5D68(v24, sub_20C0B88D4, 0, isUniquelyReferenced_nonNull_native, &v56);

  v36 = v53;
  v37 = v55;
  (*(v53 + 16))(v51, v29, v55);
  v38 = v50;
  v39 = v45;
  v40 = v52;
  (*(v50 + 16))(v49, v45, v52);
  v41 = MEMORY[0x277D84F90];
  sub_20C0B8920(MEMORY[0x277D84F90]);
  sub_20C0B8920(v41);
  sub_20C13C604();
  (*(v36 + 8))(v43, v37);
  (*(v38 + 8))(v39, v40);
  return (*(v47 + 8))(v46, v48);
}

uint64_t sub_20B8ED200()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9SeymourUI34MarketingOverlayImpressionsTracker_context;
  v2 = sub_20C13C654();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MarketingOverlayImpressionsTracker(uint64_t a1)
{
  result = qword_27C767868;
  if (!qword_27C767868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B8ED2F8(uint64_t a1, __n128 a2)
{
  result = sub_20C13C654();
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_20B8ED39C(uint64_t a1)
{
  result = sub_20B8ED3C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_20B8ED3C4()
{
  result = qword_27C76FD30;
  if (!qword_27C76FD30)
  {
    type metadata accessor for MarketingOverlayImpressionsTracker(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76FD30);
  }

  return result;
}

void *sub_20B8ED41C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_floatingView);
  v2 = v1;
  return v1;
}

char *sub_20B8ED44C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView;
  v12 = [objc_allocWithZone(type metadata accessor for TVArtworkView(0)) initWithFrame_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v13 = *&qword_27C79ACA0;
  v14 = [v12 config];
  [v14 setCornerRadius_];

  *&v4[v11] = v12;
  v15 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_titleLabel;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setAdjustsFontForContentSizeCategory_];
  [v16 setLineBreakMode_];
  [v16 setNumberOfLines_];
  [v16 setAllowsDefaultTighteningForTruncation_];
  *&v4[v15] = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_subtitleLabel;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  [v18 setLineBreakMode_];
  [v18 setNumberOfLines_];
  [v18 setAllowsDefaultTighteningForTruncation_];
  *&v4[v17] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_gradientLayer;
  *&v4[v19] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v20 = &v4[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layout];
  sub_20B8F1610(v70);
  v21 = v70[5];
  *(v20 + 4) = v70[4];
  *(v20 + 5) = v21;
  *(v20 + 12) = v71;
  v22 = v70[1];
  *v20 = v70[0];
  *(v20 + 1) = v22;
  v23 = v70[3];
  *(v20 + 2) = v70[2];
  *(v20 + 3) = v23;
  v24 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layoutGuide;
  *&v4[v24] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v25 = [objc_allocWithZone(MEMORY[0x277D75F68]) initWithFrame_];
  v26 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_floatingView;
  *&v4[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_floatingView] = v25;
  [v25 setCornerRadius_];
  [*&v4[v26] setContinuousCornerEnabled_];
  [*&v4[v26] setRoundContentWhenDeselected_];
  [*&v4[v26] setFocusedSizeIncrease_];
  [*&v4[v26] setContentMotionRotation:0.0 translation:{0.0, *(v20 + 3), *(v20 + 4)}];
  v27 = *&v4[v26];
  v28 = objc_opt_self();
  v29 = v27;
  v30 = [v28 configurationWithStyle_];
  [v29 setFocusAnimationConfiguration_];

  [*&v4[v26] setShadowVerticalOffset_];
  [*&v4[v26] setShadowOpacity:0 forUserInterfaceStyle:*(v20 + 6)];
  [*&v4[v26] setShadowOpacity:2 forUserInterfaceStyle:*(v20 + 6)];
  [*&v4[v26] setShadowOpacity:1 forUserInterfaceStyle:*(v20 + 6)];
  [*&v4[v26] setShadowRadius_];
  v69.receiver = v4;
  v69.super_class = type metadata accessor for TVDynamicBrickItemCell(0);
  v31 = objc_msgSendSuper2(&v69, sel_initWithFrame_, a1, a2, a3, a4);
  v32 = [v31 contentView];
  v33 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_floatingView;
  [v32 addSubview_];

  v34 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView;
  v35 = [*&v31[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView] config];
  v66 = &v31[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layout];
  [v35 setScaleSizeIncrease_];

  v67 = v33;
  result = [*&v31[v33] contentView];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v37 = result;
  [result addSubview_];

  v38 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_gradientLayer;
  v39 = *&v31[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_gradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_20C151490;
  sub_20B51C88C(0, &qword_27C765490, 0x277CCABB0);
  v41 = v39;
  *(v40 + 32) = sub_20C13D5D4();
  *(v40 + 40) = sub_20C13D5D4();
  v42 = sub_20C13CC54();

  [v41 setLocations_];

  [*&v31[v38] setStartPoint_];
  [*&v31[v38] setEndPoint_];
  v43 = *&v31[v38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_20C14F320;
  v45 = objc_opt_self();
  v46 = v43;
  v47 = [v45 blackColor];
  v48 = [v47 colorWithAlphaComponent_];

  v49 = [v48 CGColor];
  type metadata accessor for CGColor(0);
  v51 = v50;
  *(v44 + 56) = v50;
  *(v44 + 32) = v49;
  v52 = [v45 blackColor];
  v53 = [v52 colorWithAlphaComponent_];

  v54 = [v53 CGColor];
  *(v44 + 88) = v51;
  *(v44 + 64) = v54;
  v55 = sub_20C13CC54();

  [v46 setColors_];

  result = [*&v31[v67] contentView];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v56 = result;
  v57 = [result layer];

  [v57 addSublayer_];
  v58 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_subtitleLabel;
  [*&v31[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_subtitleLabel] setFont_];
  v59 = *&v31[v58];
  type metadata accessor for UILayoutPriority(0);
  sub_20B5F7718(&qword_27C768270, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
  v60 = v59;
  sub_20C13BBA4();
  LODWORD(v61) = v68;
  [v60 setContentCompressionResistancePriority:1 forAxis:v61];

  v62 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_titleLabel;
  [*&v31[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_titleLabel] setFont_];
  result = [*&v31[v67] contentView];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v63 = result;
  [result addSubview_];

  result = [*&v31[v67] contentView];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v64 = result;
  [result addSubview_];

  result = [*&v31[v67] contentView];
  if (result)
  {
    v65 = result;
    [result addLayoutGuide_];

    sub_20B8EE6E8();
    return v31;
  }

LABEL_13:
  __break(1u);
  return result;
}

id sub_20B8EDDDC()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for TVDynamicBrickItemCell(0);
  objc_msgSendSuper2(&v22, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_floatingView];
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  [v1 setFrame_];
  v11 = *&v0[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_gradientLayer];
  v12 = [v0 contentView];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;

  return [v11 setFrame_];
}

id sub_20B8EE0AC(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v6 = a1;
  v7 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v8 = &OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_fetchMarketingOfferTask;
  if (*&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v3[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v9 = [v3 contentView];
    v10 = [v9 subviews];

    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v11 = sub_20C13CC74();

    v26[0] = MEMORY[0x277D84FA0];
    if (v11 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v8 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x20F2F5430](v8, v11);
        }

        else
        {
          if (v8 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v13 = *(v11 + 8 * v8 + 32);
        }

        v14 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          break;
        }

        sub_20B6FFB30(&v29, v13);

        ++v8;
        if (v14 == i)
        {
          v15 = v26[0];
          v8 = 0x27C767000;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v15 = MEMORY[0x277D84FA0];
LABEL_16:

    v30 = v15;
    sub_20B6FFB30(v26, *&v4[*(v8 + 2192)]);

    sub_20B8E9218(v30);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v8;
      v20 = v17 + 32;
      do
      {
        sub_20B51CC64(v20, v26);
        v21 = *&v4[v7];
        v22 = v27;
        v23 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        (*(v23 + 16))(v21, a2 & 1, v22, v23);
        __swift_destroy_boxed_opaque_existential_1(v26);
        v20 += 40;
        --v18;
      }

      while (v18);

      v6 = a1;
      v8 = v19;
    }

    else
    {

      v6 = a1;
    }
  }

  return [*&v4[*(v8 + 2192)] setControlState:v6 animated:a2 & 1];
}

void sub_20B8EE334(uint64_t a1, void *a2, double a3)
{
  v4 = v3;
  v6 = a1;
  v7 = OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState;
  v8 = &OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_fetchMarketingOfferTask;
  if (*&v4[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] != a1)
  {
    *&v4[OBJC_IVAR____TtC9SeymourUI29TVFocusableCollectionViewCell_controlState] = a1;
    v9 = [v4 contentView];
    v10 = [v9 subviews];

    sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
    v11 = sub_20C13CC74();

    aBlock[0] = MEMORY[0x277D84FA0];
    if (v11 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_20C13DB34())
    {
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x20F2F5430](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v8 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        sub_20B6FFB30(&v31, v14);

        ++v13;
        if (v8 == i)
        {
          v15 = aBlock[0];
          v8 = &OBJC_IVAR____TtC9SeymourUI19PageActionPresenter_fetchMarketingOfferTask;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

    v15 = MEMORY[0x277D84FA0];
LABEL_16:

    v32 = v15;
    sub_20B6FFB30(aBlock, *&v4[v8[274]]);

    sub_20B8E9218(v32);
    v17 = v16;

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 32;
      do
      {
        sub_20B51CC64(v19, aBlock);
        v20 = *&v4[v7];
        v21 = v28;
        v22 = v29;
        __swift_project_boxed_opaque_existential_1(aBlock, v28);
        (*(v22 + 3))(v20, a2, v21, v22);
        __swift_destroy_boxed_opaque_existential_1(aBlock);
        v19 += 40;
        --v18;
      }

      while (v18);
    }

    v6 = a1;
  }

  [*&v4[v8[274]] setControlState:v6 withAnimationCoordinator:a2];
  if (a2)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v6;
    *(v23 + 24) = v4;
    v29 = sub_20B8F15DC;
    v30 = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20B7B548C;
    v28 = &block_descriptor_45;
    v24 = _Block_copy(aBlock);
    v25 = v4;

    [a2 addCoordinatedAnimations:v24 completion:0];
    _Block_release(v24);
  }
}

void sub_20B8EE6E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C151850;
  v3 = v2;
  v4 = *&v0[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView];
  v5 = [v4 leadingAnchor];
  v6 = [v1 contentView];
  v7 = [v6 leadingAnchor];

  v8 = [v5 constraintEqualToAnchor_];
  v3[4] = v8;
  v9 = [v4 trailingAnchor];
  v10 = [v1 contentView];
  v11 = [v10 trailingAnchor];

  v12 = [v9 &selRef:v11 alertControllerReleasedDictationButton:? + 5];
  type metadata accessor for UILayoutPriority(0);
  sub_20B5F7718(&qword_27C768270, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
  sub_20C13BBA4();
  LODWORD(v13) = v79;
  [v12 setPriority_];
  v3[5] = v12;
  v14 = [v4 topAnchor];
  v15 = [v1 contentView];
  v16 = [v15 &selRef_setLineBreakMode_];

  v17 = [v14 &selRef:v16 alertControllerReleasedDictationButton:? + 5];
  v3[6] = v17;
  v18 = [v4 bottomAnchor];
  v19 = [v1 contentView];
  v20 = [v19 &selRef_secondaryLabel + 5];

  v21 = [v18 &selRef:v20 alertControllerReleasedDictationButton:? + 5];
  v3[7] = v21;
  v22 = [v4 widthAnchor];
  v23 = [v1 contentView];
  v24 = [v23 &selRef_traitCollection + 6];

  v25 = [v22 &selRef:v24 alertControllerReleasedDictationButton:? + 5];
  v3[8] = v25;
  v26 = v3;
  v77 = v4;
  v78 = v3;
  v27 = [v4 heightAnchor];
  v28 = [v4 &selRef_traitCollection + 6];
  v29 = &v1[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layout];
  v30 = [v27 constraintEqualToAnchor:v28 multiplier:*&v1[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layout]];

  sub_20C13BBA4();
  LODWORD(v31) = v79;
  [v30 setPriority_];
  v26[9] = v30;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_20C151490;
  v33 = *&v1[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layoutGuide];
  v34 = [v33 centerXAnchor];
  v35 = [v1 contentView];
  v36 = [v35 centerXAnchor];

  v37 = [v34 constraintEqualToAnchor_];
  *(v32 + 32) = v37;
  v76 = v32;
  v38 = [v33 &selRef_traitCollection + 6];
  v39 = [v1 contentView];
  v40 = [v39 &selRef_traitCollection + 6];

  v41 = [v38 constraintEqualToAnchor:v40 multiplier:v29[12]];
  *(v32 + 40) = v41;
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C150050;
  v43 = *&v1[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_titleLabel];
  v44 = [v43 leadingAnchor];
  v45 = [v33 leadingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v42 + 32) = v46;
  v47 = [v43 trailingAnchor];
  v48 = [v33 trailingAnchor];
  v49 = [v47 constraintEqualToAnchor_];

  *(v42 + 40) = v49;
  v50 = [v43 centerYAnchor];
  v51 = [v1 contentView];
  v52 = [v51 centerYAnchor];

  v53 = [v50 &selRef:v52 alertControllerReleasedDictationButton:? + 5];
  *(v42 + 48) = v53;
  v54 = [v43 topAnchor];
  v55 = [v1 contentView];
  v56 = [v55 topAnchor];

  v57 = v29[11];
  v58 = [v54 constraintGreaterThanOrEqualToAnchor:v56 constant:v57];

  *(v42 + 56) = v58;
  v59 = [v43 bottomAnchor];
  v60 = *&v1[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_subtitleLabel];
  v61 = [v60 topAnchor];
  v62 = [v59 constraintLessThanOrEqualToAnchor_];

  *(v42 + 64) = v62;
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_20C150040;
  v64 = [v60 leadingAnchor];
  v65 = [v33 leadingAnchor];
  v66 = [v64 constraintEqualToAnchor_];

  *(v63 + 32) = v66;
  v67 = [v60 trailingAnchor];
  v68 = [v33 trailingAnchor];
  v69 = [v67 constraintEqualToAnchor_];

  *(v63 + 40) = v69;
  v70 = [v60 bottomAnchor];
  v71 = [v77 bottomAnchor];
  v72 = [v70 constraintEqualToAnchor:v71 constant:-v57];

  *(v63 + 48) = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C152DF0;
  *(inited + 32) = v78;
  *(inited + 40) = v76;
  *(inited + 48) = v42;
  *(inited + 56) = v63;
  v74 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v75 = sub_20C13CC54();

  [v74 activateConstraints_];
}

void sub_20B8EF098()
{
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_delegate);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_itemInfo, &qword_27C762550, &unk_20C1505A0);

  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layout + 72);
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layoutGuide);
}

id sub_20B8EF168()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVDynamicBrickItemCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for TVDynamicBrickItemCell(uint64_t a1)
{
  result = qword_27C7678B0;
  if (!qword_27C7678B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8EF2C8(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B8EF3B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_20B8EF3F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_20B8EF460(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B8EF4AC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C762550, &unk_20C1505A0);
}

uint64_t sub_20B8EF514(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5DF2D4(a1, v1 + v3, &qword_27C762550, &unk_20C1505A0);
  return swift_endAccess();
}

id sub_20B8EF5B8(uint64_t a1, void *a2)
{
  sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
  sub_20C1341D4();
  v3 = sub_20C13D5A4();
  [a2 setTextColor_];

  v4 = sub_20C1341C4();
  if (v6)
  {
    v7 = qword_20C161888[v4];
  }

  else
  {
    sub_20B583F4C(v4, v5, 0);
    v7 = 4;
  }

  return [a2 setTextAlignment_];
}

uint64_t sub_20B8EF674(uint64_t a1, char *a2, int a3)
{
  v35 = a3;
  v5 = sub_20C137C24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0, &qword_20C161880);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v12 - 8);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  v17 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
  swift_beginAccess();
  (*(v6 + 16))(v16, a1, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v18 = *(v9 + 56);
  v34 = a2;
  sub_20B52F9E8(&a2[v17], v11, &unk_27C766680, &unk_20C14F920);
  sub_20B52F9E8(v16, &v11[v18], &unk_27C766680, &unk_20C14F920);
  v19 = *(v6 + 48);
  if (v19(v11, 1, v5) != 1)
  {
    v21 = v36;
    sub_20B52F9E8(v11, v36, &unk_27C766680, &unk_20C14F920);
    if (v19(&v11[v18], 1, v5) != 1)
    {
      v22 = v33;
      (*(v6 + 32))(v33, &v11[v18], v5);
      sub_20B5F7718(&qword_27C7626D8, MEMORY[0x277D53A78], MEMORY[0x277D53A90]);
      v23 = sub_20C13C894();
      v24 = *(v6 + 8);
      v24(v22, v5);
      sub_20B520158(v16, &unk_27C766680, &unk_20C14F920);
      v24(v21, v5);
      sub_20B520158(v11, &unk_27C766680, &unk_20C14F920);
      v20 = v23 ^ 1;
      if ((v23 ^ 1) & 1) != 0 || (v35)
      {
        return v20 & 1;
      }

      goto LABEL_10;
    }

    sub_20B520158(v16, &unk_27C766680, &unk_20C14F920);
    (*(v6 + 8))(v21, v5);
LABEL_7:
    sub_20B520158(v11, &qword_27C7626D0, &qword_20C161880);
    v20 = 1;
    return v20 & 1;
  }

  sub_20B520158(v16, &unk_27C766680, &unk_20C14F920);
  if (v19(&v11[v18], 1, v5) != 1)
  {
    goto LABEL_7;
  }

  sub_20B520158(v11, &unk_27C766680, &unk_20C14F920);
  if (v35)
  {
    v20 = 0;
    return v20 & 1;
  }

LABEL_10:
  v25 = v34;
  [v34 bounds];
  v26 = [v25 stackImage];
  if (v26)
  {
    v27 = v26;
    [v26 size];
  }

  sub_20C13D504();
  v30 = round(fabs(v29)) > 1.0;
  v20 = round(fabs(v28)) > 1.0 || v30;
  return v20 & 1;
}

uint64_t sub_20B8EFB60(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v227 = *(v2 - 8);
  v228 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v193 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v210 = v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v211 = v193 - v9;
  v209 = v10;
  MEMORY[0x28223BE20](v11);
  v212 = v193 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v13 - 8);
  v217 = v193 - v14;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v218 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v16 = v193 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = v15;
  MEMORY[0x28223BE20](v17);
  v219 = v193 - v18;
  v19 = sub_20C1391C4();
  v216 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_20C138A64();
  v213 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v220 = v193 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v23 - 8);
  v215 = v193 - v24;
  v229 = sub_20C13C554();
  v233 = *(v229 - 1);
  MEMORY[0x28223BE20](v229);
  v232 = (v193 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = sub_20C137C24();
  v238 = *(v26 - 8);
  v239 = v26;
  MEMORY[0x28223BE20](v26);
  v222 = v193 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = v27;
  MEMORY[0x28223BE20](v28);
  v237 = v193 - v29;
  v226 = sub_20C136CD4();
  v225 = *(v226 - 8);
  MEMORY[0x28223BE20](v226);
  v234 = v193 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C134E44();
  MEMORY[0x28223BE20](v31 - 8);
  v235 = v193 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7678C0, &unk_20C171410);
  MEMORY[0x28223BE20](v33 - 8);
  v230 = v193 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = v193 - v36;
  v231 = sub_20C1341E4();
  v236 = *(v231 - 8);
  MEMORY[0x28223BE20](v231);
  v223 = v193 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = v193 - v40;
  v42 = sub_20C134014();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v46 = v193 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = (a1 >> 57) & 0x78 | a1 & 7;
  if (v47 == 33)
  {
    v64 = v240;
    v65 = *&v240[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_titleLabel];
    v66 = sub_20C13C914();
    [v65 setText_];

    v67 = *&v64[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_subtitleLabel];
    v68 = sub_20C13C914();
    [v67 setText_];

    return sub_20BA1DA1C();
  }

  else if (v47 == 32)
  {
    v199 = v19;
    v200 = v21;
    v196 = v16;
    v197 = v6;
    v198 = v5;
    v228 = v46;
    v48 = v44;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
    v50 = swift_projectBox();
    v51 = v50 + *(v49 + 64);
    v52 = *v51;
    v53 = *(v51 + 8);
    v54 = *(v51 + 16);
    v55 = *(v51 + 24);
    v56 = *(v51 + 32);
    v57 = *(v51 + 40);
    v204 = v43;
    v58 = *(v43 + 16);
    v205 = v48;
    v59 = v228;
    v58(v228, v50, v48);
    v60 = v52;
    v227 = v53;
    v201 = v54;
    v207 = v55;

    v203 = v56;

    v202 = v57;

    sub_20C133F44();
    v61 = v236;
    v62 = *(v236 + 48);
    v63 = v231;
    if (v62(v37, 1, v231) == 1)
    {
      sub_20B520158(v37, &qword_27C7678C0, &unk_20C171410);
    }

    else
    {
      (*(v61 + 32))(v41, v37, v63);
      v81 = *&v240[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_titleLabel];
      v82 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
      v83 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
      [v83 setLineBreakMode_];
      v84 = v82;
      v85 = [v84 length];
      [v84 addAttribute:*MEMORY[0x277D74118] value:v83 range:{0, v85}];

      [v81 setAttributedText_];
      sub_20B8EF5B8(v41, v81);
      (*(v61 + 8))(v41, v63);
    }

    v86 = v234;
    v88 = v229;
    v87 = v230;
    sub_20C133F64();
    v89 = v62(v87, 1, v63);
    v206 = v60;
    if (v89 == 1)
    {
      sub_20B520158(v87, &qword_27C7678C0, &unk_20C171410);
      v90 = v240;
    }

    else
    {
      v91 = v236;
      v92 = v223;
      (*(v236 + 32))(v223, v87, v63);
      v90 = v240;
      v93 = *&v240[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_subtitleLabel];
      v94 = objc_allocWithZone(MEMORY[0x277CCAB48]);
      v95 = [v94 initWithAttributedString_];
      v96 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
      [v96 setLineBreakMode_];
      v97 = v95;
      v98 = [v97 length];
      [v97 addAttribute:*MEMORY[0x277D74118] value:v96 range:{0, v98}];

      [v93 setAttributedText_];
      sub_20B8EF5B8(v92, v93);
      (*(v91 + 8))(v92, v63);
    }

    v99 = v235;
    sub_20C133F04();
    v231 = sub_20C138054();
    v101 = v100;
    sub_20C134E34();
    v102 = v237;
    sub_20C136CB4();
    v230 = sub_20C136CC4();
    v236 = v103;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    v104 = sub_20C13D374();
    v106 = v232;
    v105 = v233;
    *v232 = v104;
    (*(v105 + 13))(v106, *MEMORY[0x277D85200], v88);
    v107 = sub_20C13C584();
    result = (*(v105 + 1))(v106, v88);
    if (v107)
    {
      v108 = *&v90[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView];
      [v108 setContentMode_];
      if (sub_20B8EF674(v102, v108, 0))
      {
        v109 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v110 = v238;
        v111 = v239;
        v112 = *(v238 + 16);
        v113 = v222;
        v195 = v238 + 16;
        v194 = v112;
        v112(v222, v102, v239);
        v114 = *(v110 + 80);
        v115 = (v114 + 24) & ~v114;
        v193[0] = v224 + 7;
        v232 = v101;
        v233 = v108;
        v116 = (v224 + 7 + v115) & 0xFFFFFFFFFFFFFFF8;
        v117 = (v116 + 23) & 0xFFFFFFFFFFFFFFF8;
        v118 = (v117 + 23) & 0xFFFFFFFFFFFFFFF8;
        v229 = ((v118 + 15) & 0xFFFFFFFFFFFFFFF8);
        v223 = v114;
        v119 = swift_allocObject();
        *(v119 + 16) = v109;
        v120 = v110;
        v121 = v113;
        v122 = *(v120 + 32);
        v193[1] = v120 + 32;
        v122(v119 + v115, v121, v111);
        v123 = (v119 + v116);
        v124 = v231;
        v125 = v236;
        *v123 = v230;
        v123[1] = v125;
        v126 = (v119 + v117);
        v127 = v232;
        *v126 = v124;
        v126[1] = v127;
        *(v119 + v118) = 2;
        v128 = v229 + v119;
        *v128 = MEMORY[0x277D84F90];
        v128[8] = 0;
        v129 = (v119 + ((v118 + 31) & 0xFFFFFFFFFFFFFFF8));
        *v129 = 0;
        v129[1] = 0;
        v130 = &v233[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        v131 = *&v233[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler];
        v132 = *&v233[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler + 8];
        *v130 = sub_20B8F1394;
        v130[1] = v119;

        v133 = v233;
        sub_20B583ECC(v131, v132);

        [v133 bounds];
        if (v134 <= 0.0 || (v136 = v135, v135 <= 0.0))
        {

          v156 = v239;
          v157 = v226;
          v102 = v237;
        }

        else
        {
          v137 = v134;
          v138 = ~v223;
          [v133 setStackImage_];
          v139 = v215;
          v102 = v237;
          v140 = v239;
          v229 = v122;
          v141 = v194;
          v194(v215, v237, v239);
          (*(v238 + 56))(v139, 0, 1, v140);
          v142 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
          swift_beginAccess();
          sub_20B5DF2D4(v139, &v133[v142], &unk_27C766680, &unk_20C14F920);
          swift_endAccess();
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v143 = sub_20C13D5A4();
          [v133 setBackgroundColor_];

          v144 = &v133[OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize];
          *v144 = v137;
          v144[1] = v136;
          *(v144 + 16) = 0;
          v145 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v141(v121, v102, v140);
          v215 = v138;
          v146 = (v223 + 16) & v138;
          v147 = (v193[0] + v146) & 0xFFFFFFFFFFFFFFF8;
          v148 = (v147 + 15) & 0xFFFFFFFFFFFFFFF8;
          v149 = swift_allocObject();
          (v229)(v149 + v146, v121, v140);
          *(v149 + v147) = v145;
          v150 = (v149 + v148);
          *v150 = v137;
          v150[1] = v136;
          v233 = v149;
          v151 = (v149 + ((v148 + 23) & 0xFFFFFFFFFFFFFFF8));
          *v151 = 0;
          v151[1] = 0;
          v194(v121, v102, v140);
          (*(v216 + 104))(v200, *MEMORY[0x277D542A8], v199);

          v152 = v220;
          sub_20C138A54();
          v153 = v217;
          sub_20B5F1A50(v152, v217);
          v154 = v218;
          v155 = v221;
          if ((*(v218 + 48))(v153, 1) == 1)
          {
            sub_20B520158(v153, &unk_27C766670, &unk_20C151580);
            sub_20BA1DA1C();

            (*(v213 + 8))(v152, v214);
          }

          else
          {
            v159 = v154;
            v236 = *(v154 + 32);
            (v236)(v219, v153, v155);
            v160 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v161 = v102;
            v162 = v239;
            v194(v121, v161, v239);
            v163 = (v223 + 40) & v215;
            v164 = v163 + v224;
            v165 = (v163 + v224) & 0xFFFFFFFFFFFFFFF8;
            v166 = swift_allocObject();
            *(v166 + 2) = v160;
            v166[3] = v137;
            v166[4] = v136;
            (v229)(v166 + v163, v121, v162);
            *(v166 + v164) = 0;
            v167 = v166 + v165;
            *(v167 + 1) = 0;
            *(v167 + 2) = 0;
            v168 = swift_allocObject();
            *(v168 + 16) = sub_20B8F1528;
            *(v168 + 24) = v166;
            v169 = v196;
            v170 = v155;
            (*(v159 + 16))(v196, v219, v155);
            v171 = v159;
            v172 = (*(v159 + 80) + 16) & ~*(v159 + 80);
            v173 = (v208 + v172 + 7) & 0xFFFFFFFFFFFFFFF8;
            v174 = swift_allocObject();
            (v236)(v174 + v172, v169, v170);
            v175 = (v174 + v173);
            *v175 = sub_20B5F67A4;
            v175[1] = v168;
            v176 = v211;
            sub_20C137C94();
            v177 = swift_allocObject();
            v178 = v233;
            *(v177 + 16) = sub_20B8F146C;
            *(v177 + 24) = v178;
            v179 = swift_allocObject();
            *(v179 + 16) = sub_20B5F67D4;
            *(v179 + 24) = v177;
            v180 = v197;
            v181 = v210;
            v182 = v198;
            (*(v197 + 16))(v210, v176, v198);
            v183 = (*(v180 + 80) + 16) & ~*(v180 + 80);
            v184 = (v209 + v183 + 7) & 0xFFFFFFFFFFFFFFF8;
            v185 = swift_allocObject();
            v186 = v181;
            v102 = v237;
            (*(v180 + 32))(v185 + v183, v186, v182);
            v187 = (v185 + v184);
            *v187 = sub_20B5DF204;
            v187[1] = v179;

            v188 = v212;
            sub_20C137C94();
            v189 = *(v180 + 8);
            v189(v176, v182);
            v190 = sub_20C137CB4();
            v191 = swift_allocObject();
            *(v191 + 16) = 0;
            *(v191 + 24) = 0;
            v190(sub_20B52347C, v191);

            v189(v188, v182);
            (*(v171 + 8))(v219, v221);
            (*(v213 + 8))(v220, v214);
          }

          v156 = v239;
          v157 = v226;
        }

        v86 = v234;
        v99 = v235;
        v158 = v225;
        v59 = v228;
      }

      else
      {

        v156 = v239;
        v157 = v226;
        v158 = v225;
      }

      v192 = v206;
      (*(v238 + 8))(v102, v156);
      (*(v158 + 8))(v86, v157);

      sub_20B62A2AC(v99);
      return (*(v204 + 8))(v59, v205);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v70 = v240;
    v71 = sub_20C13BB74();
    v72 = sub_20C13D1D4();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v241[0] = v75;
      *v73 = 138543618;
      *(v73 + 4) = v70;
      *v74 = v70;
      *(v73 + 12) = 2082;
      v241[3] = a1;
      v76 = sub_20B5F66D0();
      v77 = v70;
      v78 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v76);
      v80 = sub_20B51E694(v78, v79, v241);

      *(v73 + 14) = v80;
      _os_log_impl(&dword_20B517000, v71, v72, "Attempted to configure %{public}@ with item: %{public}s", v73, 0x16u);
      sub_20B520158(v74, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v74, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x20F2F6A40](v75, -1, -1);
      MEMORY[0x20F2F6A40](v73, -1, -1);
    }

    return (*(v227 + 1))(v4, v228);
  }

  return result;
}

void sub_20B8F1394()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA41D9C(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20B8F146C(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA630E0(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20B8F1528(uint64_t *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F27E8(*a1, *(v1 + 16), v1 + v4, *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

id sub_20B8F15DC(double a1)
{
  LODWORD(a1) = 1060320051;
  if ((*(v1 + 16) & 8) != 0)
  {
    *&a1 = 1.0;
  }

  return [*(*(v1 + 24) + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_gradientLayer) setOpacity_];
}

double sub_20B8F1610@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 smu:*MEMORY[0x277D76938] preferredFontForTextStyle:256 variant:?];
  v4 = [v2 smu:*MEMORY[0x277D76A28] preferredFontForTextStyle:1280 variant:?];
  *a1 = xmmword_20C161750;
  *(a1 + 16) = xmmword_20C161760;
  *(a1 + 32) = xmmword_20C161770;
  *(a1 + 48) = xmmword_20C161780;
  *(a1 + 64) = 0x4039000000000000;
  *(a1 + 72) = v3;
  *(a1 + 80) = v4;
  result = 35.0;
  *(a1 + 88) = xmmword_20C161790;
  return result;
}

void sub_20B8F16D4()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView;
  v4 = [objc_allocWithZone(type metadata accessor for TVArtworkView(0)) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  v5 = *&qword_27C79ACA0;
  v6 = [v4 config];
  [v6 setCornerRadius_];

  *(v0 + v3) = v4;
  v7 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_titleLabel;
  v8 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v8 setTranslatesAutoresizingMaskIntoConstraints_];
  [v8 setAdjustsFontForContentSizeCategory_];
  [v8 setLineBreakMode_];
  [v8 setNumberOfLines_];
  [v8 setAllowsDefaultTighteningForTruncation_];
  *(v0 + v7) = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_subtitleLabel;
  v10 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  [v10 setAdjustsFontForContentSizeCategory_];
  [v10 setLineBreakMode_];
  [v10 setNumberOfLines_];
  [v10 setAllowsDefaultTighteningForTruncation_];
  *(v0 + v9) = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_gradientLayer;
  *(v0 + v11) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v12 = v0 + OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layout;
  sub_20B8F1610(v17);
  v13 = v17[5];
  *(v12 + 64) = v17[4];
  *(v12 + 80) = v13;
  *(v12 + 96) = v18;
  v14 = v17[1];
  *v12 = v17[0];
  *(v12 + 16) = v14;
  v15 = v17[3];
  *(v12 + 32) = v17[2];
  *(v12 + 48) = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_layoutGuide;
  *(v0 + v16) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B8F1A20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60, &unk_20C1512D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_20B8F1AC4(const char *a1@<X4>, uint64_t *a2@<X0>, unsigned int a3@<W2>, uint64_t (*a4)(double)@<X3>, const char *a5@<X5>, uint64_t a6@<X8>, ...)
{
  v66 = a5;
  v64 = a1;
  v65 = a3;
  v68 = a6;
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  v71 = v8;
  v72 = v9;
  MEMORY[0x28223BE20](v8);
  v70 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v67 = &v64 - v12;
  v13 = sub_20C137254();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v75 = &v64 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A60, &unk_20C1512D0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v69 = &v64 - v21;
  v76 = *a2;
  v22 = a4(v20);
  v23 = v16;
  v24 = v22;
  v25 = v22 + 56;
  v26 = 1 << *(v22 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(v22 + 56);
  v29 = (v26 + 63) >> 6;
  v77 = (v14 + 32);
  v78 = v14;
  v73 = (v14 + 8);
  v74 = v14 + 16;

  v30 = 0;
  v31 = v75;
  if (v28)
  {
    while (1)
    {
      v32 = v30;
LABEL_8:
      v33 = v24;
      v34 = *(v24 + 48);
      v35 = v78;
      (*(v78 + 16))(v31, v34 + *(v78 + 72) * (__clz(__rbit64(v28)) | (v32 << 6)), v13);
      v36 = *(v35 + 32);
      v36(v23, v31, v13);
      if (sub_20C1371C4() == v76)
      {
        break;
      }

      v28 &= v28 - 1;
      (*v73)(v23, v13);
      v30 = v32;
      v24 = v33;
      if (!v28)
      {
        goto LABEL_5;
      }
    }

    v38 = v69;
    v36(v69, v23, v13);
    v37 = 0;
LABEL_12:
    v39 = v78;
    v40 = *(v78 + 56);
    v40(v38, v37, 1, v13);

    v41 = (*(v39 + 48))(v38, 1, v13);
    v43 = v71;
    v42 = v72;
    v44 = v70;
    if (v41 == 1)
    {
      v78 = v13;
      sub_20B8F1A20(v38);
      sub_20C13B534();
      v45 = sub_20C13BB74();
      v46 = sub_20C13D1D4();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 141558274;
        *(v47 + 4) = 1752392040;
        *(v47 + 12) = 2048;
        *(v47 + 14) = v76;
        _os_log_impl(&dword_20B517000, v45, v46, v64, v47, 0x16u);
        MEMORY[0x20F2F6A40](v47, -1, -1);
      }

      v50 = *(v42 + 8);
      v48 = v42 + 8;
      v49 = v50;
      v50(v67, v43);
      sub_20C13B534();
      v51 = sub_20C13BB74();
      v52 = sub_20C13D1D4();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v72 = v48;
        v55 = v54;
        v79 = v54;
        *v53 = 141558274;
        *(v53 + 4) = 1752392040;
        *(v53 + 12) = 2080;
        v56 = sub_20C134B94();
        v58 = v49;
        v59 = v40;
        v60 = sub_20B51E694(v56, v57, &v79);

        *(v53 + 14) = v60;
        v40 = v59;
        _os_log_impl(&dword_20B517000, v51, v52, v66, v53, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v55);
        MEMORY[0x20F2F6A40](v55, -1, -1);
        MEMORY[0x20F2F6A40](v53, -1, -1);

        v58(v70, v71);
      }

      else
      {

        v49(v44, v43);
      }

      v63 = 1;
      v62 = v68;
      v13 = v78;
    }

    else
    {
      v61 = v38;
      v62 = v68;
      (*v77)(v68, v61, v13);
      v63 = 0;
    }

    v40(v62, v63, 1, v13);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= v29)
      {

        v37 = 1;
        v38 = v69;
        goto LABEL_12;
      }

      v28 = *(v25 + 8 * v32);
      ++v30;
      if (v28)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t type metadata accessor for SkillLevelFilterUpdated(uint64_t a1)
{
  result = qword_27C7678C8;
  if (!qword_27C7678C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_20B8F2124(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 176) = 0;
  sub_20C13CEC4();
  *(v1 + 184) = v3;
  sub_20C13CEC4();
  *(v1 + 192) = v4;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 216) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  v5 = *(&v21[0] + 1);
  *(v1 + 32) = *&v21[0];
  *(v1 + 40) = v5;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v1 + 48) = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7689E0, &unk_20C161AA0);
  sub_20C133AA4();
  sub_20B51C710(v21, v1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767920, &unk_20C1765F0);
  sub_20C133AA4();
  sub_20B51C710(v21, v1 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0, &unk_20C14F950);
  sub_20C133AA4();
  sub_20B51C710(v21, v1 + 136);
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass_];
  v9 = sub_20C132964();
  v11 = v10;

  v2[28] = v9;
  v2[29] = v11;
  v12 = [v7 bundleForClass_];
  v13 = sub_20C132964();
  v15 = v14;

  v2[30] = v13;
  v2[31] = v15;
  v16 = [v7 bundleForClass_];
  v17 = sub_20C132964();
  v19 = v18;

  v2[32] = v17;
  v2[33] = v19;
  swift_getObjectType();
  sub_20C13B404();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v21);
  swift_getObjectType();
  sub_20C13B5A4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v21);
  swift_getObjectType();
  sub_20C13B414();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v21);

  return v2;
}

uint64_t sub_20B8F25F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *))
{
  v7 = a3(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4();
    a5(v10);

    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void *sub_20B8F271C()
{
  if (v0[22])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    swift_unknownObjectRetain();
    sub_20C13AE44();
    swift_unknownObjectRelease();
  }

  sub_20B8F2CBC();
  sub_20B583E6C((v0 + 2));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  swift_unknownObjectRelease();
  sub_20B583ECC(v0[26], v0[27]);

  return v0;
}

uint64_t sub_20B8F27E8()
{
  sub_20B8F271C();

  return swift_deallocClassInstance();
}

uint64_t sub_20B8F2840()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v39 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v36 = &v36 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v11);
  v41 = &v36 - v12;
  MEMORY[0x28223BE20](v13);
  v40 = &v36 - v14;
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v16 + 8))(v18, v15);
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  sub_20C139C54();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = 1;
  v38 = v10;
  sub_20C137C94();
  v21 = *(v3 + 16);
  v22 = v7;
  v23 = v2;
  v21(v22, v10, v2);
  v24 = *(v3 + 80);
  v37 = v3;
  v25 = (v24 + 16) & ~v24;
  v26 = swift_allocObject();
  v27 = *(v3 + 32);
  v27(v26 + v25, v36, v23);
  v28 = v39;
  v21(v39, v41, v23);
  v29 = swift_allocObject();
  v27(v29 + v25, v28, v23);
  v30 = (v29 + ((v25 + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_20B8F5774;
  v30[1] = v26;
  v31 = v40;
  sub_20C137C94();
  v32 = *(v37 + 8);
  v32(v38, v23);
  v32(v41, v23);
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v33(sub_20B5DF6DC, v34);

  return (v32)(v31, v23);
}

uint64_t sub_20B8F2CBC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v13 + 8))(v15, v12);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = 0;
  sub_20C137C94();
  sub_20B51CC64(v1 + 56, v28);
  v18 = swift_allocObject();
  sub_20B51C710(v28, v18 + 16);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_20B8F5700;
  *(v19 + 24) = v18;
  (*(v3 + 16))(v5, v8, v2);
  v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v21 = swift_allocObject();
  (*(v3 + 32))(v21 + v20, v5, v2);
  v22 = (v21 + ((v4 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v22 = sub_20B683080;
  v22[1] = v19;
  sub_20C137C94();
  v23 = *(v3 + 8);
  v23(v8, v2);
  v24 = sub_20C137CB4();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v24(sub_20B5DF6DC, v25);

  return (v23)(v11, v2);
}

void sub_20B8F309C()
{
  v1 = v0;
  v2 = sub_20C13C4A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v0[22])
  {
    __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
    swift_unknownObjectRetain();
    sub_20C13AE44();
    swift_unknownObjectRelease();
  }

  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  *v5 = 10;
  (*(v3 + 104))(v5, *MEMORY[0x277D85178], v2);
  sub_20B5E2E18();
  v6 = sub_20C13D374();
  swift_allocObject();
  swift_weakInit();

  v7 = sub_20C13AE04();

  (*(v3 + 8))(v5, v2);

  v1[22] = v7;
  swift_unknownObjectRelease();
  sub_20B8F32FC();
}

double sub_20B8F329C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a2();
  }

  return result;
}

void sub_20B8F32FC()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v3 = Strong;
  v4 = OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_animationImageView;
  [*(Strong + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_animationImageView) stopAnimating];
  v5 = *(v3 + v4);
  v6 = *(v3 + OBJC_IVAR____TtC9SeymourUI40RemoteBrowsingGuestPairingViewController_frames);
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (!sub_20C13DB34())
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x20F2F5430](0, v6);
    goto LABEL_7;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v6 + 32);
LABEL_7:
    v8 = v7;
LABEL_10:
    [v5 setImage_];
    swift_unknownObjectRelease();

LABEL_11:
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    __swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
    sub_20B5E2E18();
    v10 = sub_20C13D374();
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v9;

    v13 = sub_20C13AE34();

    swift_beginAccess();
    *(v9 + 16) = v13;

    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

uint64_t sub_20B8F3518(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      v4 = sub_20BF10FF8();
      sub_20B71D310(v4, v5);
      swift_unknownObjectRelease();
    }
  }

  result = swift_beginAccess();
  if (*(a2 + 16))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_20B51CC64(result + 136, v7);
      swift_unknownObjectRetain();

      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      sub_20C13AE44();
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  return result;
}

uint64_t sub_20B8F3650()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v39 = *(v2 - 8);
  v40 = v2;
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v37 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  sub_20C13B484();
  sub_20C13BB64();
  v17 = *(v11 + 8);
  result = v17(v16, v10);
  if (*(v1 + 200) == 1)
  {
    v37 = v6;
    v38 = v9;
    sub_20C13B484();
    v19 = sub_20C13BB74();
    v20 = sub_20C13D1F4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_20B517000, v19, v20, "State was waiting, refreshing advertisement", v21, 2u);
      MEMORY[0x20F2F6A40](v21, -1, -1);
    }

    v17(v13, v10);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    v24 = v37;
    sub_20C137C94();
    sub_20B51CC64(v1 + 56, v42);
    v25 = swift_allocObject();
    sub_20B51C710(v42, v25 + 16);
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20B8F56B0;
    *(v26 + 24) = v25;
    v28 = v39;
    v27 = v40;
    v29 = v41;
    (*(v39 + 16))(v41, v24, v40);
    v30 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v31 = swift_allocObject();
    (*(v28 + 32))(v31 + v30, v29, v27);
    v32 = (v31 + ((v3 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v32 = sub_20B64B960;
    v32[1] = v26;
    v33 = v38;
    sub_20C137C94();
    v34 = *(v28 + 8);
    v34(v24, v27);
    v35 = sub_20C137CB4();
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    v35(sub_20B52347C, v36);

    return (v34)(v33, v27);
  }

  return result;
}

double sub_20B8F3AFC()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  if (*(v1 + 200) == 1)
  {
    sub_20C137904();
    type metadata accessor for SeymourLocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    v9 = sub_20C132964();
    v11 = v10;

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_20BF133BC(v9, v11);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20B8F3D2C(uint64_t a1)
{
  v35 = a1;
  v34 = sub_20C137724();
  v1 = *(v34 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v3 = *(v38 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v38);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v9 = *(v8 - 8);
  v39 = v8;
  v40 = v9;
  MEMORY[0x28223BE20](v8);
  v37 = &v33 - v10;
  v11 = sub_20C13BB84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v12 + 8))(v14, v11);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = 2;
  sub_20C137C94();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = v34;
  (*(v1 + 16))(&v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v34);
  v19 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  (*(v1 + 32))(v20 + v19, &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_20B8F4E50;
  *(v21 + 24) = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_20B5D9CB0;
  *(v22 + 24) = v21;
  v23 = v36;
  v24 = v38;
  (*(v3 + 16))(v36, v7, v38);
  v25 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v26 = swift_allocObject();
  (*(v3 + 32))(v26 + v25, v23, v24);
  v27 = (v26 + ((v4 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v27 = sub_20B5D9CCC;
  v27[1] = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  v28 = v37;
  sub_20C137C94();
  (*(v3 + 8))(v7, v24);
  v29 = v39;
  v30 = sub_20C137CB4();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v30(sub_20B52347C, v31);

  return (*(v40 + 8))(v28, v29);
}

uint64_t sub_20B8F429C(uint64_t a1)
{
  v1 = sub_20C136C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C135174();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v10 = *(Strong + 208);
  v11 = *(Strong + 216);
  sub_20B584050(v10, v11);

  if (!v10)
  {
    return 1;
  }

  sub_20C137714();
  sub_20C137704();
  v10(v8, v4);
  sub_20B583ECC(v10, v11);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  return 0;
}

void sub_20B8F4484(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_retain_n();
  sub_20C13B484();
  sub_20C13BB64();
  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v12 = Strong;

      sub_20B8F4ECC(v4, v12, a1, a2);
    }
  }

  else
  {

    v13 = sub_20C133C44();
    sub_20B526794(&qword_27C7662C8, MEMORY[0x277D50320], MEMORY[0x277D50328]);
    v14 = swift_allocError();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D50318], v13);
    v16 = v14;
    v17 = 1;
    a1(&v16);
  }
}

uint64_t sub_20B8F46F8(uint64_t a1)
{
  v45 = a1;
  v1 = sub_20C1391E4();
  v2 = *(v1 - 8);
  v49 = v1;
  v50 = v2;
  MEMORY[0x28223BE20](v1);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C134C44();
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v6 - 8);
  v46 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v11 - 8);
  v43 = &v42 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v42 - v17;
  v19 = sub_20C135D24();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_20C134F74();
  v23 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v25 = &v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v42 - v27;
  v29 = *MEMORY[0x277D52E00];
  v30 = sub_20C136904();
  (*(*(v30 - 8) + 104))(v22, v29, v30);
  (*(v20 + 104))(v22, *MEMORY[0x277D52118], v19);
  v31 = sub_20C1333A4();
  v32 = *(v31 - 8);
  (*(v32 + 16))(v18, v45, v31);
  (*(v32 + 56))(v18, 0, 1, v31);
  v33 = sub_20C135664();
  (*(*(v33 - 8) + 56))(v15, 1, 1, v33);
  v34 = sub_20C135674();
  (*(*(v34 - 8) + 56))(v43, 1, 1, v34);
  sub_20C134F94();
  v35 = sub_20C134FB4();
  (*(*(v35 - 8) + 56))(v10, 0, 1, v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
  (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
  v37 = sub_20C135F14();
  (*(*(v37 - 8) + 56))(v47, 1, 1, v37);
  sub_20C134F54();
  v38 = v44;
  (*(v23 + 16))(v25, v28, v44);
  v39 = v48;
  sub_20C1391F4();
  swift_getObjectType();
  sub_20B526794(&qword_281103B30, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
  v40 = v49;
  sub_20C13A764();
  (*(v50 + 8))(v39, v40);
  return (*(v23 + 8))(v28, v38);
}

unint64_t sub_20B8F4DF0()
{
  result = qword_27C7678E0;
  if (!qword_27C7678E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7678E0);
  }

  return result;
}

uint64_t sub_20B8F4E50()
{
  sub_20C137724();
  v1 = *(v0 + 16);

  return sub_20B8F429C(v1);
}

double sub_20B8F4ECC(int a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v66 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v55 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v16 - 8);
  v62 = &v55 - v17;
  v18 = sub_20C1333A4();
  v63 = *(v18 - 8);
  v64 = v18;
  MEMORY[0x28223BE20](v18);
  v61 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13BB84();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    goto LABEL_6;
  }

  if (a1 != 1)
  {
    if (*(a2 + 200) != 1)
    {
      goto LABEL_4;
    }

LABEL_6:
    v65 = a1;
    v58 = v15;
    v59 = v12;

    sub_20C13B484();

    v27 = sub_20C13BB74();
    v28 = sub_20C13D1F4();

    v29 = os_log_type_enabled(v27, v28);
    v60 = v9;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v57 = a4;
      v31 = v30;
      v55 = swift_slowAlloc();
      v69 = v55;
      *v31 = 136446466;
      LOBYTE(v67) = *(a2 + 200);
      v32 = sub_20B8F565C();
      v56 = a2;
      v33 = v32;
      v34 = MEMORY[0x20F2EFA40](&type metadata for RemoteBrowsingGuestPairingPresenter.State, v32);
      v36 = sub_20B51E694(v34, v35, &v69);

      *(v31 + 4) = v36;
      *(v31 + 12) = 2082;
      v37 = v65;
      LOBYTE(v67) = v65;
      v38 = v33;
      a2 = v56;
      v39 = MEMORY[0x20F2EFA40](&type metadata for RemoteBrowsingGuestPairingPresenter.State, v38);
      v41 = sub_20B51E694(v39, v40, &v69);

      *(v31 + 14) = v41;
      _os_log_impl(&dword_20B517000, v27, v28, "Guest Pairing Presenter State %{public}s -> %{public}s", v31, 0x16u);
      v42 = v55;
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v42, -1, -1);
      MEMORY[0x20F2F6A40](v31, -1, -1);

      (*(v21 + 8))(v23, v20);
    }

    else
    {

      (*(v21 + 8))(v23, v20);
      v37 = v65;
    }

    *(a2 + 200) = v37;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (v37)
    {
      if (v37 != 1)
      {
        if (Strong)
        {
          sub_20BF138C8(*(a2 + 224), *(a2 + 232));
          swift_unknownObjectRelease();
        }

        v44 = *MEMORY[0x277D51818];
        v45 = sub_20C1352F4();
        v46 = *(v45 - 8);
        v47 = v62;
        (*(v46 + 104))(v62, v44, v45);
        (*(v46 + 56))(v47, 0, 1, v45);
        v48 = sub_20C132C14();
        (*(*(v48 - 8) + 56))(v58, 1, 1, v48);
        v49 = sub_20C135ED4();
        (*(*(v49 - 8) + 56))(v59, 1, 1, v49);
        v50 = sub_20C136914();
        (*(*(v50 - 8) + 56))(v60, 1, 1, v50);
        v51 = v61;
        sub_20C133384();
        sub_20B8F46F8(v51);
        (*(v63 + 8))(v51, v64);
        goto LABEL_19;
      }

      if (Strong)
      {
        sub_20BF12D34(*(a2 + 224), *(a2 + 232));
LABEL_15:
        swift_unknownObjectRelease();
      }
    }

    else if (Strong)
    {
      sub_20BF11AA0();
      goto LABEL_15;
    }

LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    sub_20C13E1D4();
    v52 = v69;
    v53 = v70;
    v67 = v69;
    v68 = v70;
    v66(&v67);
    sub_20B583FB8(v52, v53);
    goto LABEL_20;
  }

  if (!*(a2 + 200))
  {
    goto LABEL_6;
  }

LABEL_4:
  v24 = sub_20C136094();
  sub_20B526794(&qword_27C767910, MEMORY[0x277D52688], MEMORY[0x277D52690]);
  v25 = swift_allocError();
  (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D52658], v24);
  v69 = v25;
  v70 = 1;

  v66(&v69);

LABEL_20:

  return result;
}

unint64_t sub_20B8F565C()
{
  result = qword_27C767908;
  if (!qword_27C767908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767908);
  }

  return result;
}

uint64_t sub_20B8F5718(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return a1(v3, v4);
}

uint64_t sub_20B8F5774@<X0>(uint64_t x8_0@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_20BE700C0(v5, x8_0);
}

uint64_t sub_20B8F5800(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a3(a1, a2, v3 + v7, v9, v10);
}

id sub_20B8F59B8(double a1, double a2, double a3, double a4)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75F68]) initWithFrame_];
  if (qword_27C760820 != -1)
  {
    swift_once();
  }

  [v4 setCornerRadius_];
  [v4 setContinuousCornerEnabled_];
  [v4 setRoundContentWhenDeselected_];
  v5 = 0.0;
  [v4 setContentMotionRotation:0.0 translation:{0.0, 0.0, 4.0}];
  v6 = [objc_opt_self() configurationWithStyle_];
  [v4 setFocusAnimationConfiguration_];

  [v4 setFocusedSizeIncrease_];
  [v4 setShadowRadius_];
  [v4 setShadowOpacity_];
  [v4 setShadowVerticalOffset_];
  [v4 setClipsContentToBounds_];
  if (_UISolariumEnabled())
  {
    v7 = objc_opt_self();
    v8 = [v7 configurationWithRotationOnAxis_];
    v9 = 0.0;
    if (v8)
    {
      v10 = v8;
      [v8 rotation];
      v5 = v11;
      v9 = v12;
    }

    v13 = [v7 configurationWithLargeTranslationOnAxis_];
    if (v13)
    {
      v14 = v13;
      [v13 translation];
      v16 = v15;
      v18 = v17;
    }

    else
    {
      v18 = 4.0;
      v16 = 0.0;
    }

    [v4 setContentMotionRotation:v5 translation:{v9, v16, v18}];
  }

  return v4;
}

uint64_t sub_20B8F5C44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_20C136C64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_20C13B174();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20B520158(v3, &qword_27C768690, &unk_20C14FD90);
    v8 = sub_20C1356F4();
    sub_20B8F686C(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D51B88], v8);
    *(swift_allocObject() + 16) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750, &unk_20C15EF50);
    return sub_20C137CA4();
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v12 = sub_20C136A44();
    *(swift_allocObject() + 16) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766750, &unk_20C15EF50);
    sub_20C137CA4();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20B8F5F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v53 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767928, &unk_20C161B30);
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - v4;
  v64 = sub_20C13B0C4();
  v56 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_20C134B14();
  v55 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_20C1351C4();
  v66 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_20C135174();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v48 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v19 = v2[10];
  v65 = v2;
  __swift_project_boxed_opaque_existential_1(v2 + 7, v19);
  sub_20C13B184();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_20B520158(v12, &unk_27C76BC00, &unk_20C1500B0);
    v20 = sub_20C1356F4();
    sub_20B8F686C(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v21 = swift_allocError();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D51B88], v20);
    *(swift_allocObject() + 16) = v21;
    return sub_20C137CA4();
  }

  else
  {
    v46 = v5;
    v47 = v3;
    v44 = v14;
    v24 = *(v14 + 32);
    v43 = v18;
    v45 = v13;
    v24(v18, v12, v13);
    v26 = *(v53 + 16);
    v28 = v49;
    v27 = v50;
    if (v26)
    {
      v29 = v53 + ((v66[80] + 32) & ~v66[80]);
      v30 = *(v66 + 9);
      v60 = (v55 + 32);
      v61 = v30;
      v59 = (v55 + 16);
      v58 = *MEMORY[0x277D4F610];
      v57 = *MEMORY[0x277D4F528];
      v66 = (v56 + 13);
      ++v56;
      v31 = (v55 + 8);
      LODWORD(v55) = *MEMORY[0x277D4F520];
      v54 = *MEMORY[0x277D4F518];
      do
      {
        v32 = v62;
        sub_20B8F66D8(v29, v62, v25);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        (*v60)(v28, v32, v27);
        __swift_project_boxed_opaque_existential_1(v65 + 7, v65[10]);
        (*v59)(v7, v28, v27);
        v34 = sub_20C13B254();
        (*(*(v34 - 8) + 104))(v7, v58, v34);
        v35 = v57;
        if (EnumCaseMultiPayload == 1)
        {
          v35 = v55;
        }

        if (EnumCaseMultiPayload)
        {
          v36 = v35;
        }

        else
        {
          v36 = v54;
        }

        v37 = v64;
        (*v66)(v7, v36, v64);
        sub_20C13B2A4();
        (*v56)(v7, v37);
        (*v31)(v28, v27);
        v29 += v61;
        --v26;
      }

      while (v26);
    }

    v38 = v44;
    v39 = v43;
    v40 = v45;
    (*(v44 + 16))(v48, v43, v45);
    v67 = v53;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767930, &unk_20C161B40);
    sub_20B8F673C();
    sub_20B8F67B8();
    v41 = v46;
    sub_20C137844();
    __swift_project_boxed_opaque_existential_1(v65 + 2, v65[5]);
    sub_20C139A14();
    (*(v51 + 8))(v41, v47);
    return (*(v38 + 8))(v39, v40);
  }
}

uint64_t sub_20B8F66D8(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_20C1351C4();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_20B8F673C()
{
  result = qword_27C767938;
  if (!qword_27C767938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C767930, &unk_20C161B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767938);
  }

  return result;
}

unint64_t sub_20B8F67B8()
{
  result = qword_27C767940;
  if (!qword_27C767940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C767930, &unk_20C161B40);
    sub_20B8F686C(&qword_27C767948, MEMORY[0x277D51638], MEMORY[0x277D51630]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767940);
  }

  return result;
}

uint64_t sub_20B8F686C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_20B8F6998(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_iconView;
  type metadata accessor for RoundedIconView();
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v11] = v12;
  v13 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_titleLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setAdjustsFontForContentSizeCategory_];
  *&v4[v13] = v14;
  if (qword_27C760708 != -1)
  {
    swift_once();
  }

  v15 = qword_27C760710;
  v92 = qword_27C79A1B0;
  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_27C79A1B8;
  v17 = objc_opt_self();
  v90 = v16;
  v88 = [v17 secondaryLabelColor];
  v18 = *MEMORY[0x277D769D0];
  v19 = objc_opt_self();
  v20 = [v19 preferredFontDescriptorWithTextStyle:v18 compatibleWithTraitCollection:0];
  v21 = [v20 fontDescriptorWithSymbolicTraits_];
  if (v21)
  {
    v22 = v21;

    v20 = v22;
  }

  v23 = objc_opt_self();
  v24 = [v23 fontWithDescriptor:v20 size:0.0];

  v25 = [v19 preferredFontDescriptorWithTextStyle:v18 compatibleWithTraitCollection:0];
  v26 = [v25 fontDescriptorWithSymbolicTraits_];
  if (v26)
  {
    v27 = v26;

    v25 = v27;
  }

  v28 = &v4[OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_styleProvider];
  v29 = [v23 fontWithDescriptor:v25 size:0.0];

  v30 = [v17 secondaryLabelColor];
  *v28 = v92;
  *(v28 + 1) = v90;
  *(v28 + 2) = 1937075312;
  *(v28 + 3) = 0xE400000000000000;
  *(v28 + 4) = v88;
  *(v28 + 5) = v24;
  *(v28 + 6) = v29;
  *(v28 + 7) = v30;
  *(v28 + 4) = xmmword_20C15E8F0;
  *(v28 + 5) = xmmword_20C15DC30;
  *(v28 + 12) = 0;
  v95.receiver = v4;
  v95.super_class = type metadata accessor for WeekdayPlannerAddCell(0);
  v31 = objc_msgSendSuper2(&v95, sel_initWithFrame_, a1, a2, a3, a4);
  v32 = &v31[OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_styleProvider];
  v33 = *&v31[OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_styleProvider];
  v34 = v31;
  [v34 setBackgroundColor_];
  v35 = [v34 layer];
  [v35 setCornerRadius_];

  v36 = [objc_opt_self() configurationWithFont_];
  v37 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_iconView;
  v38 = *&v34[OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_iconView];

  v93 = v36;
  v39 = sub_20C13C914();

  v40 = [objc_opt_self() systemImageNamed:v39 withConfiguration:v93];

  [*&v38[OBJC_IVAR____TtC9SeymourUI15RoundedIconView_imageView] setImage_];
  [*&v34[v37] setTintColor_];
  v41 = [v34 contentView];
  [v41 addSubview_];

  v42 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_titleLabel;
  [*&v34[OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_titleLabel] setFont_];
  [*&v34[v42] setTextColor_];
  v43 = v42;
  v89 = v42;
  LODWORD(v44) = 1148846080;
  [*&v34[v42] setContentCompressionResistancePriority:1 forAxis:v44];
  v45 = [v34 &selRef_setMaximumFractionDigits_];
  [v45 addSubview_];

  v91 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20C1615B0;
  v47 = [*&v34[v37] leadingAnchor];
  v48 = [v34 &selRef_setMaximumFractionDigits_];
  v49 = [v48 leadingAnchor];

  v50 = [v47 constraintEqualToAnchor:v49 constant:*(v32 + 8)];
  *(v46 + 32) = v50;
  v51 = [*&v34[v37] widthAnchor];
  v52 = [*&v34[v37] heightAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  *(v46 + 40) = v53;
  v54 = [*&v34[v37] topAnchor];
  v55 = [v34 &selRef_setMaximumFractionDigits_];
  v56 = [v55 &selRef_setLineBreakMode_];

  v57 = [v54 constraintEqualToAnchor:v56 constant:*(v32 + 12)];
  *(v46 + 48) = v57;
  v58 = [*&v34[v37] bottomAnchor];
  v59 = [v34 &selRef_setMaximumFractionDigits_];
  v60 = [v59 &selRef_secondaryLabel + 5];

  v61 = [v58 constraintLessThanOrEqualToAnchor:v60 constant:-*(v32 + 12)];
  *(v46 + 56) = v61;
  v62 = [*&v34[v37] centerYAnchor];
  v63 = [*&v34[v89] &selRef_setNumberOfTapsRequired_];
  v64 = [v62 &selRef:v63 alertControllerReleasedDictationButton:? + 5];

  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  sub_20C13BBA4();
  LODWORD(v65) = v94;
  [v64 setPriority_];
  *(v46 + 64) = v64;
  v66 = [*&v34[v37] heightAnchor];
  v67 = [v66 constraintEqualToConstant_];

  *(v46 + 72) = v67;
  v68 = [*&v34[v89] leadingAnchor];
  v69 = [*&v34[v37] trailingAnchor];
  v70 = [v68 constraintEqualToAnchor:v69 constant:*(v32 + 10)];

  *(v46 + 80) = v70;
  v71 = [*&v34[v89] trailingAnchor];
  v72 = [v34 contentView];
  v73 = [v72 trailingAnchor];

  v74 = [v71 constraintEqualToAnchor:v73 constant:-*(v32 + 8)];
  *(v46 + 88) = v74;
  v75 = [*&v34[v89] topAnchor];
  v76 = [v34 contentView];
  v77 = [v76 topAnchor];

  v78 = [v75 &selRef_passwordEntryCancelledHandler + 6];
  *(v46 + 96) = v78;
  v79 = [*&v34[v89] bottomAnchor];
  v80 = [v34 contentView];

  v81 = [v80 bottomAnchor];
  v82 = [v79 &selRef_passwordEntryCancelledHandler + 6];

  *(v46 + 104) = v82;
  v83 = [*&v34[v89] centerYAnchor];
  v84 = [*&v34[v37] centerYAnchor];
  v85 = [v83 constraintEqualToAnchor_];

  *(v46 + 112) = v85;
  sub_20B5E29D0();
  v86 = sub_20C13CC54();

  [v91 activateConstraints_];

  return v34;
}

id sub_20B8F76A4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WeekdayPlannerAddCell(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for WeekdayPlannerAddCell(uint64_t a1)
{
  result = qword_2811027D0;
  if (!qword_2811027D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8F7808(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B8F78BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_20B8F7904(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_20B8F796C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20B8F79B8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B8F7A10(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_20B8F7A74(int a1, id a2)
{
  [objc_msgSend(a2 container)];
  v3 = v2;
  swift_unknownObjectRelease();
  return v3 + -48.0;
}

void sub_20B8F7AD8(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x42)
  {
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18);
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v15 = *(v11 + 40);
    if (v15)
    {
      v48 = v4;
      sub_20C13B534();
      sub_20B7C3220(v13, v12, v14, v15);
      v16 = v1;
      v17 = sub_20C13BB74();
      v18 = sub_20C13D1D4();

      sub_20B7C3288(v13, v12, v14, v15);
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v49 = v3;
        v20 = v19;
        v21 = swift_slowAlloc();
        v46 = v21;
        v47 = swift_slowAlloc();
        v52 = v47;
        *v20 = 138543874;
        *(v20 + 4) = v16;
        *v21 = v16;
        *(v20 + 12) = 2160;
        *(v20 + 14) = 1752392040;
        *(v20 + 22) = 2080;
        v50[0] = v13;
        v50[1] = v12;
        v50[2] = v14;
        v51 = v15;
        v22 = sub_20B879DC0();
        v23 = v16;
        v24 = MEMORY[0x20F2EFA40](&type metadata for WeekdayPlannerItem, v22);
        v26 = sub_20B51E694(v24, v25, &v52);

        *(v20 + 24) = v26;
        _os_log_impl(&dword_20B517000, v17, v18, "Attempted to configure %{public}@ with weekday planner item: %{mask.hash}s", v20, 0x20u);
        v27 = v46;
        sub_20B520158(v46, &unk_27C762E30, &unk_20C150580);
        MEMORY[0x20F2F6A40](v27, -1, -1);
        v28 = v47;
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x20F2F6A40](v28, -1, -1);
        MEMORY[0x20F2F6A40](v20, -1, -1);

        (*(v48 + 8))(v10, v49);
      }

      else
      {

        (*(v48 + 8))(v10, v3);
      }
    }

    else
    {
      v43 = *(v11 + 41);
      [*&v1[OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_titleLabel] setAttributedText_];
      v44 = [v1 layer];
      [v44 setMaskedCorners_];

      sub_20B7C3288(v13, v12, v14, 0);
    }
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_titleLabel] setAttributedText_];
    v29 = [v1 layer];
    [v29 setMaskedCorners_];

    sub_20C13B534();

    v30 = v1;
    v31 = sub_20C13BB74();
    v32 = sub_20C13D1D4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = v4;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v49 = v3;
      v50[0] = v36;
      v37 = v36;
      *v33 = 138543874;
      *(v33 + 4) = v30;
      *v35 = v30;
      *(v33 + 12) = 2160;
      *(v33 + 14) = 1752392040;
      *(v33 + 22) = 2080;
      v52 = a1;
      v38 = sub_20B5F66D0();
      v39 = v30;
      v40 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v38);
      v42 = sub_20B51E694(v40, v41, v50);

      *(v33 + 24) = v42;
      _os_log_impl(&dword_20B517000, v31, v32, "Attempted to configure %{public}@ with item: %{mask.hash}s", v33, 0x20u);
      sub_20B520158(v35, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x20F2F6A40](v37, -1, -1);
      MEMORY[0x20F2F6A40](v33, -1, -1);

      (*(v34 + 8))(v6, v49);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
    }
  }
}

void sub_20B8F8038()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_iconView;
  type metadata accessor for RoundedIconView();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_titleLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  [v6 setAdjustsFontForContentSizeCategory_];
  *(v0 + v5) = v6;
  if (qword_27C760708 != -1)
  {
    swift_once();
  }

  v7 = qword_27C760710;
  v25 = qword_27C79A1B0;
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_27C79A1B8;
  v9 = objc_opt_self();
  v24 = v8;
  v23 = [v9 secondaryLabelColor];
  v10 = *MEMORY[0x277D769D0];
  v11 = objc_opt_self();
  v12 = [v11 preferredFontDescriptorWithTextStyle:v10 compatibleWithTraitCollection:0];
  v13 = [v12 fontDescriptorWithSymbolicTraits_];
  if (v13)
  {
    v14 = v13;

    v12 = v14;
  }

  v15 = objc_opt_self();
  v16 = [v15 fontWithDescriptor:v12 size:0.0];

  v17 = [v11 preferredFontDescriptorWithTextStyle:v10 compatibleWithTraitCollection:0];
  v18 = [v17 fontDescriptorWithSymbolicTraits_];
  if (v18)
  {
    v19 = v18;

    v17 = v19;
  }

  v20 = v0 + OBJC_IVAR____TtC9SeymourUI21WeekdayPlannerAddCell_styleProvider;
  v21 = [v15 fontWithDescriptor:v17 size:0.0];

  v22 = [v9 secondaryLabelColor];
  *v20 = v25;
  *(v20 + 8) = v24;
  *(v20 + 16) = 1937075312;
  *(v20 + 24) = 0xE400000000000000;
  *(v20 + 32) = v23;
  *(v20 + 40) = v16;
  *(v20 + 48) = v21;
  *(v20 + 56) = v22;
  *(v20 + 64) = xmmword_20C15E8F0;
  *(v20 + 80) = xmmword_20C15DC30;
  *(v20 + 96) = 0;
  sub_20C13DE24();
  __break(1u);
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

uint64_t sub_20B8F83B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_20B8F83F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20B8F84BC(uint64_t a1)
{
  v1 = sub_20C132E94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13C554();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_20B5E2E18();
    *v8 = sub_20C13D374();
    (*(v6 + 104))(v8, *MEMORY[0x277D85200], v5);
    v11 = sub_20C13C584();
    (*(v6 + 8))(v8, v5);
    if (v11)
    {
      sub_20C132E84();
      sub_20C132C74();
      v13 = v12;
      (*(v2 + 8))(v4, v1);
      v14 = v10 + OBJC_IVAR____TtC9SeymourUI20RootPageDataProvider_lastBackgroundTimestamp;
      *v14 = v13;
      *(v14 + 8) = 0;
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_20B8F86E0(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a2();
  }

  return result;
}

double sub_20B8F8740(uint64_t a1, uint64_t a2)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1F4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_20B517000, v6, v7, "[RootPageDataProvider] StorefrontLanguageUpdated; refreshing content", v8, 2u);
    MEMORY[0x20F2F6A40](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 432, v11);

    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_20C13B004();
    sub_20C138CF4();

    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B8F956C();
  }

  return result;
}

double sub_20B8F8948(uint64_t a1, uint64_t a2, const char *a3)
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1F4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_20B517000, v8, v9, a3, v10, 2u);
    MEMORY[0x20F2F6A40](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B8F956C();
  }

  return result;
}

double sub_20B8F8AD4(void **a1, uint64_t a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &ObjectType - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v25 = v11;
    v26 = v7;
    v15 = v10;
    sub_20C13B534();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1F4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "[RootPageDataProvider] Avatar settings changed; informing delegate", v18, 2u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v14 + 40);
      ObjectType = swift_getObjectType();
      v32[3] = type metadata accessor for RootPageDataProvider(0);
      v32[4] = &off_2822B4F10;
      v20 = v25;
      v21 = v26;
      v27 = v26;
      v28 = v8;
      v29 = v9;
      v30 = v15;
      v31 = v25;
      v32[0] = v14;
      v22 = *(v19 + 8);

      v23 = sub_20B8FD908(v21, v8, v9, v15, v20);
      v22(v32, &v27, ObjectType, v19, v23);

      swift_unknownObjectRelease();
      sub_20B8FD958(v27, v28, v29, v30, v31);
      __swift_destroy_boxed_opaque_existential_1(v32);
    }

    else
    {
    }
  }

  return result;
}

double sub_20B8F8D20(uint64_t a1, const char *a2)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v7 = sub_20C13BB74();
  v8 = sub_20C13D1F4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_20B517000, v7, v8, a2, v9, 2u);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B8F956C();
  }

  return result;
}

uint64_t sub_20B8F8E94()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BCD0, &qword_20C155FB0);
  v4 = *(v34 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v34);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = sub_20C13C554();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v16 = sub_20C13D374();
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v17 = sub_20C13C584();
  result = (*(v14 + 8))(v16, v13);
  if (v17)
  {
    if (*(v1 + 56) == 1)
    {
      __swift_project_boxed_opaque_existential_1((v1 + 280), *(v1 + 304));
      sub_20C139D54();
      v19 = swift_allocObject();
      v33 = v1;
      swift_weakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = sub_20B8FD7F4;
      *(v20 + 24) = v19;
      v21 = v34;
      (*(v4 + 16))(v6, v9, v34);
      v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
      v23 = swift_allocObject();
      (*(v4 + 32))(v23 + v22, v6, v21);
      v24 = (v23 + ((v5 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v24 = sub_20B8FD810;
      v24[1] = v20;
      sub_20C137C94();
      (*(v4 + 8))(v9, v21);
      v25 = v36;
      v26 = sub_20C137CB4();
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      v26(sub_20B5DF6DC, v27);

      (*(v35 + 8))(v12, v25);
      v28 = v37;
      sub_20C13B534();
      v29 = sub_20C13BB74();
      v30 = sub_20C13D1F4();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_20B517000, v29, v30, "[RootPageDataProvider] Activating, refreshing content", v31, 2u);
        MEMORY[0x20F2F6A40](v31, -1, -1);
      }

      (*(v38 + 8))(v28, v39);
      *(v33 + 56) = 0;
      return sub_20B8F956C();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_20B8F93C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 432, v12);

    __swift_project_boxed_opaque_existential_1(v12, v13);
    v5 = sub_20C138CE4();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (v3 == v5 && v2 == v7)
    {

      return result;
    }

    v9 = sub_20C13DFF4();

    if (v9)
    {
      return result;
    }
  }

  swift_beginAccess();
  v11 = swift_weakLoadStrong();
  if (v11)
  {
    sub_20B51CC64(v11 + 432, v12);

    __swift_project_boxed_opaque_existential_1(v12, v13);
    sub_20C138CF4();
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B8F956C();
  }

  return result;
}

uint64_t sub_20B8F956C()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = sub_20C13C554();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v12 = sub_20C13D374();
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v13 = sub_20C13C584();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    if (*(v1 + 56) == 1)
    {
      sub_20C13B534();
      v15 = sub_20C13BB74();
      v16 = sub_20C13D1F4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_20B517000, v15, v16, "[RootPageDataProvider] Page has not been activated yet, not refreshing content", v17, 2u);
        MEMORY[0x20F2F6A40](v17, -1, -1);
      }

      return (*(v3 + 8))(v5, v2);
    }

    else
    {
      *(v1 + 56) = 8;
      __swift_project_boxed_opaque_existential_1((v1 + 344), *(v1 + 368));
      v18 = sub_20C13A884();
      sub_20C13B534();
      v19 = sub_20C13BB74();
      v20 = sub_20C13D1F4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v27 = v22;
        *v21 = 136446210;
        v23 = sub_20C1350A4();
        v26 = v2;
        v25 = sub_20B51E694(v23, v24, &v27);

        *(v21 + 4) = v25;
        _os_log_impl(&dword_20B517000, v19, v20, "[RootPageDataProvider] Refreshing content with current network conditions: %{public}s", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v22);
        MEMORY[0x20F2F6A40](v22, -1, -1);
        MEMORY[0x20F2F6A40](v21, -1, -1);

        (*(v3 + 8))(v8, v26);
      }

      else
      {

        (*(v3 + 8))(v8, v2);
      }

      if (v18 == 1)
      {
        return sub_20B8F9B60();
      }

      else
      {
        return sub_20B8FACFC();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20B8F9914()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_20B5E2E18();
  *v5 = sub_20C13D374();
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v6 = sub_20C13C584();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (*(v1 + 56) != 3)
    {
      *(v1 + 56) = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00, &qword_20C1538C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20C14F980;
      type metadata accessor for LoadingShelf(0);
      v8 = swift_allocObject();
      *(v8 + 24) = 0;
      swift_unknownObjectWeakInit();
      sub_20C132ED4();
      v9 = v8 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row;
      sub_20B5D8060(v17);
      v10 = v17[7];
      v11 = v17[9];
      *(v9 + 128) = v17[8];
      *(v9 + 144) = v11;
      v12 = v17[5];
      v13 = v17[6];
      *(v9 + 64) = v17[4];
      *(v9 + 80) = v12;
      *(v9 + 160) = v18;
      *(v9 + 96) = v13;
      *(v9 + 112) = v10;
      v14 = v17[1];
      *v9 = v17[0];
      *(v9 + 16) = v14;
      v15 = v17[3];
      *(v9 + 32) = v17[2];
      *(v9 + 48) = v15;
      sub_20C133AA4();
      *(v8 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_platform) = v16[7];
      *(inited + 32) = v8;
      *(inited + 40) = &off_2822D32B0;
      sub_20B8FBD98(inited);
      swift_setDeallocating();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_20B8F9B60()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80, &unk_20C155CB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v41 - v11;
  v42 = v12;
  MEMORY[0x28223BE20](v13);
  v45 = &v41 - v14;
  v15 = sub_20C13C554();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v18 = sub_20C13D374();
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v19 = sub_20C13C584();
  result = (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v21 = *(v1 + 56);
    if (v21 <= 8 && ((1 << v21) & 0x186) != 0)
    {
      *(v1 + 56) = 4;
      __swift_project_boxed_opaque_existential_1((v1 + 120), *(v1 + 144));
      sub_20C139DF4();
      v22 = swift_allocObject();
      *(v22 + 16) = sub_20B8FD7BC;
      *(v22 + 24) = v1;
      v23 = swift_allocObject();
      *(v23 + 16) = sub_20B7F1390;
      *(v23 + 24) = v22;
      (*(v3 + 16))(v5, v8, v2);
      v24 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v25 = swift_allocObject();
      (*(v3 + 32))(v25 + v24, v5, v2);
      v26 = (v25 + ((v4 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v26 = sub_20B8FD7C0;
      v26[1] = v23;

      v27 = v41;
      sub_20C137C94();
      (*(v3 + 8))(v8, v2);
      v28 = swift_allocObject();
      *(v28 + 16) = sub_20B8FD7F0;
      *(v28 + 24) = v1;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_20B5F7790;
      *(v29 + 24) = v28;
      v31 = v43;
      v30 = v44;
      v32 = v46;
      (*(v43 + 16))(v44, v27, v46);
      v33 = (*(v31 + 80) + 16) & ~*(v31 + 80);
      v34 = (v42 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = swift_allocObject();
      (*(v31 + 32))(v35 + v33, v30, v32);
      v36 = (v35 + v34);
      *v36 = sub_20B5F7764;
      v36[1] = v29;

      v37 = v45;
      sub_20C137C94();
      v38 = *(v31 + 8);
      v38(v27, v32);
      v39 = sub_20C137CB4();
      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      *(v40 + 24) = 0;
      v39(sub_20B5DF6DC, v40);

      return (v38)(v37, v32);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20B8FA130(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C554();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v11 = sub_20C13D374();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_20C13C584();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_20C13B534();
    v13 = a1;
    v14 = sub_20C13BB74();
    v15 = sub_20C13D1D4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v24 = v17;
      *v16 = 136446210;
      swift_getErrorValue();
      v18 = MEMORY[0x20F2F5850](v23[2], v23[3]);
      v20 = sub_20B51E694(v18, v19, &v24);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_20B517000, v14, v15, "[RootPageDataProvider] Failed to fetch offline lockups: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x20F2F6A40](v17, -1, -1);
      MEMORY[0x20F2F6A40](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00, &qword_20C1538C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    type metadata accessor for OfflineWorkoutsEmptyShelf(0);
    swift_allocObject();

    v22 = sub_20BB0BED8();

    *(inited + 32) = v22;
    *(inited + 40) = &off_2822CCD00;
    sub_20B8FBD98(inited);
    swift_setDeallocating();
    swift_unknownObjectRelease();
    if (*(v2 + 56) == 4)
    {
      *(v2 + 56) = 2;
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_20B8FA47C(uint64_t a1)
{
  v2 = v1;
  v60 = a1;
  v65 = *MEMORY[0x277D85DE8];
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v58 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C133524();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13C554();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v13 = sub_20C13D374();
  (*(v11 + 104))(v13, *MEMORY[0x277D85200], v10);
  v14 = sub_20C13C584();
  v16 = *(v11 + 8);
  v15 = v11 + 8;
  v16(v13, v10);
  if ((v14 & 1) == 0)
  {
    goto LABEL_28;
  }

  if (*(v2 + 56) == 4)
  {
    *(v2 + 56) = 6;
    v15 = v60;
    v18 = *(v60 + 32);
    v19 = v18 & 0x3F;
    v55 = ((1 << v18) + 63) >> 6;
    v10 = 8 * v55;

    if (v19 > 0xD)
    {
      goto LABEL_29;
    }

    do
    {
      v52 = v4;
      v53 = v3;
      v54 = v2;
      v51 = &v51;
      MEMORY[0x28223BE20](isStackAllocationSafe);
      v56 = &v51 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v56, v10);
      v57 = 0;
      v3 = 0;
      v22 = *(v15 + 56);
      v15 += 56;
      v21 = v22;
      v23 = 1 << *(v15 - 24);
      v24 = -1;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      v2 = v24 & v21;
      v10 = (v23 + 63) >> 6;
      v59 = v7 + 16;
      v4 = v7 + 8;
      while (v2)
      {
        v25 = __clz(__rbit64(v2));
        v2 &= v2 - 1;
LABEL_14:
        v28 = v25 | (v3 << 6);
        (*(v7 + 16))(v9, *(v60 + 48) + *(v7 + 72) * v28, v6);
        *&v63[0] = sub_20C1334E4();
        BYTE8(v63[0]) = v29 & 1;
        LOBYTE(v62) = 5;
        sub_20B68CCB0();
        sub_20B68CD04();
        v30 = sub_20C133C04();
        (*(v7 + 8))(v9, v6);
        if (v30)
        {
          *&v56[(v28 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v28;
          if (__OFADD__(v57++, 1))
          {
            __break(1u);
LABEL_18:
            v32 = sub_20BC0DC84(v56, v55, v57, v60);
            v3 = v53;
            v4 = v52;
            goto LABEL_19;
          }
        }
      }

      v26 = v3;
      while (1)
      {
        v3 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v3 >= v10)
        {
          goto LABEL_18;
        }

        v27 = *(v15 + 8 * v3);
        ++v26;
        if (v27)
        {
          v25 = __clz(__rbit64(v27));
          v2 = (v27 - 1) & v27;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    }

    while ((isStackAllocationSafe & 1) != 0);
    v50 = swift_slowAlloc();
    v32 = sub_20BEE1E6C(v50, v55, v15, sub_20B8FAC88, 0);
    MEMORY[0x20F2F6A40](v50, -1, -1);
LABEL_19:
    v33 = v58;
    sub_20C13B534();

    v34 = sub_20C13BB74();
    v35 = sub_20C13D1D4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 134349056;
      *(v36 + 4) = *(v32 + 16);

      _os_log_impl(&dword_20B517000, v34, v35, "[RootPageDataProvider] Found %{public}ld completed asset bundles", v36, 0xCu);
      MEMORY[0x20F2F6A40](v36, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v33, v3);
    v37 = *(v32 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00, &qword_20C1538C0);
    v38 = swift_allocObject();
    if (v37)
    {
      *(v38 + 16) = xmmword_20C14F320;
      type metadata accessor for OfflineWorkoutsBannerShelf(0);
      v39 = swift_allocObject();
      *(v39 + 24) = 0;
      swift_unknownObjectWeakInit();

      sub_20C132ED4();
      v40 = v39 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_row;
      sub_20B5D8060(v63);
      v41 = v63[7];
      v42 = v63[9];
      *(v40 + 128) = v63[8];
      *(v40 + 144) = v42;
      v43 = v63[5];
      v44 = v63[6];
      *(v40 + 64) = v63[4];
      *(v40 + 80) = v43;
      *(v40 + 160) = v64;
      *(v40 + 96) = v44;
      *(v40 + 112) = v41;
      v45 = v63[1];
      *v40 = v63[0];
      *(v40 + 16) = v45;
      v46 = v63[3];
      *(v40 + 32) = v63[2];
      *(v40 + 48) = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
      sub_20C133AA4();
      sub_20C133AA4();
      LOBYTE(v40) = v61;
      v47 = v39 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_browsingStringBuilder;
      sub_20B52E424(&v62, v39 + OBJC_IVAR____TtC9SeymourUI26OfflineWorkoutsBannerShelf_browsingStringBuilder);
      *(v47 + 40) = v40;
      *(v38 + 32) = v39;
      *(v38 + 40) = &off_2822B22A8;
      type metadata accessor for OfflineWorkoutsGalleryShelf(0);
      swift_allocObject();
      v48 = sub_20BEB80EC();

      *(v38 + 48) = v48;
      *(v38 + 56) = &off_2822F2788;
    }

    else
    {
      *(v38 + 16) = xmmword_20C14F980;
      type metadata accessor for OfflineWorkoutsEmptyShelf(0);
      swift_allocObject();

      v49 = sub_20BB0BED8();

      *(v38 + 32) = v49;
      *(v38 + 40) = &off_2822CCD00;
    }

    sub_20B8FBD98(v38);
  }

  return result;
}

uint64_t sub_20B8FAC88(uint64_t a1)
{
  sub_20C1334E4();
  sub_20B68CCB0();
  sub_20B68CD04();
  return sub_20C133C04() & 1;
}

uint64_t sub_20B8FACFC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764368, &qword_20C172B90);
  v3 = *(v2 - 8);
  v71 = v2;
  v72 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v64 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644E8, &unk_20C161F30);
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v73 = v9;
  v74 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v75 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v81 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v79 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v80 = &v64 - v15;
  v77 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  v20 = sub_20C13C554();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v23 = sub_20C13D374();
  (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
  v24 = sub_20C13C584();
  result = (*(v21 + 8))(v23, v20);
  if (v24)
  {
    v26 = *(v1 + 56);
    if (v26 <= 8 && ((1 << v26) & 0x146) != 0)
    {
      sub_20B8F9914();
      *(v1 + 56) = 5;
      __swift_project_boxed_opaque_existential_1((v1 + 520), *(v1 + 544));
      sub_20C139DB4();
      __swift_project_boxed_opaque_existential_1((v1 + 200), *(v1 + 224));
      v67 = v19;
      sub_20C139FB4();
      v66 = v12;
      v27 = sub_20C137CB4();
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      *(v28 + 24) = 0;
      v27(sub_20B5DF6DC, v28);

      v29 = *(v81 + 8);
      v68 = v81 + 8;
      v69 = v29;
      v29(v19, v12);
      __swift_project_boxed_opaque_existential_1((v1 + 200), *(v1 + 224));
      sub_20C13A094();
      v82[3] = sub_20C13B3A4();
      v82[4] = MEMORY[0x277D4F7C0];
      __swift_allocate_boxed_opaque_existential_1(v82);
      sub_20C13B394();
      v30 = sub_20C13D374();
      v31 = v71;
      sub_20C137C34();

      v32 = v72;
      v65 = *(v72 + 8);
      v65(v5, v31);
      __swift_destroy_boxed_opaque_existential_1(v82);
      v33 = swift_allocObject();
      *(v33 + 16) = sub_20B8FD6F8;
      *(v33 + 24) = v1;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_20B8FD6FC;
      *(v34 + 24) = v33;
      (*(v32 + 16))(v5, v8, v31);
      v35 = (*(v32 + 80) + 16) & ~*(v32 + 80);
      v36 = (v70 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
      v37 = swift_allocObject();
      (*(v32 + 32))(v37 + v35, v5, v31);
      v38 = (v37 + v36);
      *v38 = sub_20B8FD734;
      v38[1] = v34;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644F0, &unk_20C155F80);
      v39 = v75;
      sub_20C137C94();
      v65(v8, v31);
      v40 = swift_allocObject();
      *(v40 + 16) = sub_20B8FD764;
      *(v40 + 24) = v1;
      v41 = swift_allocObject();
      *(v41 + 16) = sub_20B8FD76C;
      *(v41 + 24) = v40;
      v42 = v76;
      v43 = v74;
      v44 = v78;
      (*(v76 + 16))(v74, v39, v78);
      v45 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v46 = (v73 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = swift_allocObject();
      (*(v42 + 32))(v47 + v45, v43, v44);
      v48 = (v47 + v46);
      *v48 = sub_20B8FD788;
      v48[1] = v41;

      v49 = v80;
      sub_20C137C94();
      (*(v42 + 8))(v39, v44);
      v50 = swift_allocObject();
      *(v50 + 16) = sub_20B8FD7B8;
      *(v50 + 24) = v1;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_20B5F67D4;
      *(v51 + 24) = v50;
      v52 = v81;
      v53 = v79;
      v54 = v66;
      (*(v81 + 16))(v79, v49, v66);
      v55 = v52;
      v56 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v57 = (v77 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
      v58 = swift_allocObject();
      (*(v55 + 32))(v58 + v56, v53, v54);
      v59 = (v58 + v57);
      *v59 = sub_20B5DF204;
      v59[1] = v51;

      v60 = v67;
      sub_20C137C94();
      v61 = v69;
      v69(v49, v54);
      v62 = sub_20C137CB4();
      v63 = swift_allocObject();
      *(v63 + 16) = 0;
      *(v63 + 24) = 0;
      v62(sub_20B5DF6DC, v63);

      return v61(v60, v54);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B8FB644(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C13C554();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v7 = sub_20C13D374();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_20C13C584();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    if (*(a2 + 56) == 5)
    {
      *(a2 + 56) = 7;
      return sub_20B8FBD98(a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_20B8FB77C(void *a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C554();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v11 = sub_20C13D374();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_20C13C584();
  (*(v9 + 8))(v11, v8);
  if (v12)
  {
    sub_20C13B534();
    v13 = a1;
    v14 = sub_20C13BB74();
    v15 = sub_20C13D1D4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136446210;
      swift_getErrorValue();
      v18 = MEMORY[0x20F2F5850](v24[2], v24[3]);
      v20 = sub_20B51E694(v18, v19, &v25);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_20B517000, v14, v15, "[RootPageDataProvider] failed to fetch remote content with %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x20F2F6A40](v17, -1, -1);
      MEMORY[0x20F2F6A40](v16, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    if (*(v2 + 56) == 5)
    {
      *(v2 + 56) = 2;
      type metadata accessor for LoadingErrorShelf(0);
      swift_allocObject();

      v22 = sub_20BEFE8F4(v21, 0, 0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00, &qword_20C1538C0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20C14F980;
      *(inited + 32) = v22;
      *(inited + 40) = &off_2822F4EF0;

      sub_20B8FBD98(inited);

      swift_setDeallocating();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_20B8FBAE0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C135E14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C554();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v11 = sub_20C13D374();
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v12 = sub_20C13C584();
  result = (*(v9 + 8))(v11, v8);
  if (v12)
  {
    v14 = *(a1 + 16);
    if (!v14)
    {
      return MEMORY[0x277D84F90];
    }

    v15 = *(v2 + 320);
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v28 = v17;
    v29 = v15;
    v18 = a1 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v27 = *(v16 + 56);
    v30 = v16;
    v19 = (v16 - 8);
    v20 = MEMORY[0x277D84F90];
    v17(v7, v18, v4);
    while (1)
    {
      v22 = sub_20BE533E4(v29);
      v24 = v23;
      (*v19)(v7, v4);
      if (v22)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_20BC0577C(0, v20[2] + 1, 1, v20);
        }

        v26 = v20[2];
        v25 = v20[3];
        if (v26 >= v25 >> 1)
        {
          v20 = sub_20BC0577C((v25 > 1), v26 + 1, 1, v20);
        }

        v20[2] = v26 + 1;
        v21 = &v20[2 * v26];
        v21[4] = v22;
        v21[5] = v24;
      }

      v18 += v27;
      if (!--v14)
      {
        break;
      }

      v28(v7, v18, v4);
    }

    return v20;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B8FBD98(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13C554();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v7 = sub_20C13D374();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_20C13C584();
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v66 = *(v2 + 384);
    v10 = *(v2 + 48);
    v67 = *(v10 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
    sub_20B51CC64(v10 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v79);
    v11 = type metadata accessor for MetricLocationStore();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F98];
    *(v12 + 16) = MEMORY[0x277D84F90];
    *(v12 + 24) = v14;
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
    v65 = &v62;
    v16 = MEMORY[0x28223BE20](v15);
    v18 = (&v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v18;
    v21 = type metadata accessor for CatalogPageImpressionTracker();
    v78[3] = v21;
    v22 = sub_20B63EE48();
    v23 = v22;
    v78[4] = v22;
    v78[0] = v20;
    v77[3] = v11;
    v77[4] = &off_2822B6968;
    v77[0] = v12;
    v24 = *(a1 + 16);
    if (v24)
    {
      v63 = v22;
      v64 = v21;
      v76[0] = v13;
      v25 = v67;
      sub_20BB5D394(0, v24, 0);
      v26 = v76[0];
      v27 = (a1 + 32);
      do
      {
        v28 = *v27;
        v76[0] = v26;
        v29 = *(v26 + 16);
        v30 = *(v26 + 24);
        v68 = v28;
        swift_unknownObjectRetain();
        if (v29 >= v30 >> 1)
        {
          sub_20BB5D394((v30 > 1), v29 + 1, 1);
          v26 = v76[0];
        }

        *(v26 + 16) = v29 + 1;
        v31 = v26 + 24 * v29;
        *(v31 + 32) = v68;
        *(v31 + 48) = 0;
        ++v27;
        --v24;
      }

      while (v24);
      v23 = v63;
      v21 = v64;
    }

    else
    {
      v32 = v67;
      v26 = MEMORY[0x277D84F90];
    }

    sub_20B51CC64(v78, v76);
    sub_20B51CC64(v77, v75);
    v33 = __swift_mutable_project_boxed_opaque_existential_1(v76, v76[3]);
    *&v68 = &v62;
    v34 = MEMORY[0x28223BE20](v33);
    v36 = (&v62 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v37 + 16))(v36, v34);
    v38 = __swift_mutable_project_boxed_opaque_existential_1(v75, v75[3]);
    v39 = MEMORY[0x28223BE20](v38);
    v41 = (&v62 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41, v39);
    v43 = *v36;
    v44 = *v41;
    v73 = v21;
    v74 = v23;
    v72[0] = v43;
    v70 = v11;
    v71 = &off_2822B6968;
    v69[0] = v44;
    v45 = objc_allocWithZone(type metadata accessor for CatalogPage());
    v46 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
    v47 = MEMORY[0x28223BE20](v46);
    v49 = (&v62 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v50 + 16))(v49, v47);
    v51 = __swift_mutable_project_boxed_opaque_existential_1(v69, v70);
    v52 = MEMORY[0x28223BE20](v51);
    v54 = (&v62 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v55 + 16))(v54, v52);
    v56 = sub_20BE3AA74(1701670760, 0xE400000000000000, v26, v66, v67, *v49, *v54, 2, v45);
    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(v78);
    __swift_destroy_boxed_opaque_existential_1(v69);
    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v75);
    __swift_destroy_boxed_opaque_existential_1(v76);
    __swift_destroy_boxed_opaque_existential_1(v79);
    v57 = *(v2 + 48);
    *(v2 + 48) = v56;

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v58 = *(v2 + 40);
      ObjectType = swift_getObjectType();
      v80 = type metadata accessor for RootPageDataProvider(0);
      v81 = &off_2822B4F10;
      v79[0] = v2;
      v60 = *(v2 + 48);

      v61 = v60;
      sub_20B76FFF8(v79, v61, ObjectType, v58);

      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v79);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B8FC47C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - v4;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v10 = sub_20C13BB74();
  v11 = sub_20C13D1D4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_20B517000, v10, v11, "[RootPageDataProvider] sign out button long pressed, reset sync requested", v12, 2u);
    MEMORY[0x20F2F6A40](v12, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1((v1 + 200), *(v1 + 224));
  sub_20C139FB4();
  v13 = sub_20C137CB4();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  v13(sub_20B52347C, v14);

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20B8FC6E4()
{
  v2 = v0;
  v3 = sub_20C13BB84();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = sub_20C132E94();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v15 = sub_20C13C554();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v18 = sub_20C13D374();
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v19 = sub_20C13C584();
  result = (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (*(v2 + OBJC_IVAR____TtC9SeymourUI20RootPageDataProvider_lastBackgroundTimestamp + 8))
  {
    return result;
  }

  v21 = v2;
  sub_20C132C64();
  sub_20C132E84();
  sub_20C132DC4();
  v1 = v22;
  v2 = v8;
  v35 = *(v9 + 1);
  v35(v11, v8);
  if (*(v21 + 56) == 2)
  {
    v23 = [objc_opt_self() standardUserDefaults];
    v24 = sub_20C13C914();
    [v23 doubleForKey_];
    v26 = v25;

    if (v26 <= 0.0)
    {
      if (qword_27C760670 != -1)
      {
        swift_once();
      }

      v26 = *&qword_27C799C08;
    }

    if (v26 <= v1)
    {
      sub_20C13B534();
      v31 = sub_20C13BB74();
      v34 = sub_20C13D1F4();
      if (!os_log_type_enabled(v31, v34))
      {
LABEL_19:

        (*(v36 + 8))(v7, v37);
        sub_20B8F956C();
        return (v35)(v14, v2);
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_20B517000, v31, v34, "[RootPageDataProvider] Currently in a load error state, refreshing content", v33, 2u);
LABEL_17:
      MEMORY[0x20F2F6A40](v33, -1, -1);
      goto LABEL_19;
    }
  }

  v27 = [objc_opt_self() standardUserDefaults];
  v28 = sub_20C13C914();
  [v27 doubleForKey_];
  v30 = v29;

  v9 = v38;
  if (v30 <= 0.0)
  {
    if (qword_27C760678 == -1)
    {
LABEL_11:
      v30 = *&qword_27C799C10;
      goto LABEL_12;
    }

LABEL_23:
    swift_once();
    goto LABEL_11;
  }

LABEL_12:
  if (v30 <= v1)
  {
    sub_20C13B534();
    v31 = sub_20C13BB74();
    v32 = sub_20C13D1F4();
    if (!os_log_type_enabled(v31, v32))
    {
      v7 = v9;
      goto LABEL_19;
    }

    v33 = swift_slowAlloc();
    *v33 = 134349056;
    *(v33 + 4) = v1;
    _os_log_impl(&dword_20B517000, v31, v32, "[RootPageDataProvider] %{public}f seconds have passed since app was last active, refreshing content", v33, 0xCu);
    v7 = v9;
    goto LABEL_17;
  }

  return (v35)(v14, v2);
}

uint64_t sub_20B8FCC34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230, &unk_20C14FD50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  v6 = sub_20C13C554();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v9 = sub_20C13D374();
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v10 = sub_20C13C584();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 472), *(v1 + 496));
    sub_20C1392E4();
    v12 = sub_20C137CB4();
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    v12(sub_20B52F238, v13);

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20B8FCE70()
{

  sub_20B583E6C(v0 + 32);

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  __swift_destroy_boxed_opaque_existential_1((v0 + 200));
  __swift_destroy_boxed_opaque_existential_1((v0 + 240));
  __swift_destroy_boxed_opaque_existential_1((v0 + 280));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 344));
  __swift_destroy_boxed_opaque_existential_1((v0 + 392));
  __swift_destroy_boxed_opaque_existential_1((v0 + 432));
  __swift_destroy_boxed_opaque_existential_1((v0 + 472));

  __swift_destroy_boxed_opaque_existential_1((v0 + 520));
  __swift_destroy_boxed_opaque_existential_1((v0 + 560));

  sub_20B58CFC4(v0 + OBJC_IVAR____TtC9SeymourUI20RootPageDataProvider_configuration);
  return v0;
}

uint64_t sub_20B8FCF58()
{
  sub_20B8FCE70();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RootPageDataProvider(uint64_t a1)
{
  result = qword_27C767960;
  if (!qword_27C767960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B8FD004(uint64_t a1)
{
  sub_20B524ACC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_20B8FD12C()
{
  result = qword_27C767970;
  if (!qword_27C767970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C767970);
  }

  return result;
}

uint64_t sub_20B8FD180()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = *MEMORY[0x277D517F0];
  v11 = sub_20C1352F4();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v9, v10, v11);
  (*(v12 + 56))(v9, 0, 1, v11);

  sub_20C132C04();
  v13 = sub_20C135ED4();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = sub_20C136914();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  return sub_20C133384();
}

double sub_20B8FD570()
{
  swift_beginAccess();

  return result;
}

double sub_20B8FD5A8()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_20B8FD5F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI20RootPageDataProvider_configuration;
  swift_beginAccess();
  return sub_20B58C2DC(v1 + v3, a1);
}

uint64_t sub_20B8FD648(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7644F0, &unk_20C155F80);

  return sub_20C137C94();
}

uint64_t sub_20B8FD6FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_20B8FD840(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

double sub_20B8FD908(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != 1)
  {

    v7 = a1;
  }

  return result;
}

double sub_20B8FD958(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != 1)
  {
  }

  return result;
}

id sub_20B8FD9B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762970, &unk_20C162000);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277CDA130];
  *(v0 + 16) = xmmword_20C161F40;
  v2 = *v1;
  *(v0 + 32) = *v1;
  *(v0 + 40) = 0;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 blackColor];
  v6 = [v5 CGColor];

  *(v0 + 48) = v6;
  *(v0 + 56) = 1;
  v7 = *MEMORY[0x277CDA778];
  *(v0 + 64) = *MEMORY[0x277CDA778];
  *(v0 + 72) = 2;
  v10 = *MEMORY[0x277CDA798];
  *(v0 + 80) = *MEMORY[0x277CDA798];
  *(v0 + 88) = 3;
  *(v0 + 96) = 0;
  *(v0 + 104) = 4;
  *(v0 + 112) = 0;
  *(v0 + 120) = 5;
  *(v0 + 128) = 0x3FF0000000000000;
  *(v0 + 136) = 6;
  *(v0 + 144) = 0;
  *(v0 + 152) = 7;
  *(v0 + 160) = 0;
  *(v0 + 168) = 8;
  qword_27C79AB70 = v0;
  v8 = v7;

  return v10;
}

void sub_20B8FDB80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C151490;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_doneButton);
  *(inited + 32) = v2;
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_cooldownButton);
  *(inited + 40) = v3;
  v10 = MEMORY[0x277D84F90];
  v4 = v2;
  v5 = v3;
  v6 = 0;
LABEL_2:
  v7 = v6;
  while ((inited & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x20F2F5430](v7, inited);
LABEL_6:
    v9 = v8;
    v6 = v7 + 1;
    if (![v8 isHidden])
    {
      MEMORY[0x20F2F43B0]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      if (v7 == 1)
      {
LABEL_13:
        swift_setDeallocating();
        swift_arrayDestroy();
        return;
      }

      goto LABEL_2;
    }

    ++v7;
    if (v6 == 2)
    {
      goto LABEL_13;
    }
  }

  if (v7 < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(inited + 32 + 8 * v7);
    goto LABEL_6;
  }

  __break(1u);
}

char *sub_20B8FDD14(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = &v4[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_onDoneButtonTap];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v4[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_onCooldownButtonTap];
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v11 = 0;
  *(v11 + 1) = 0;
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  v15 = sub_20C132964();
  v17 = v16;

  v18 = type metadata accessor for TVButtonTextContentView();
  v19 = objc_allocWithZone(v18);
  v20 = TVButtonTextContentView.init(title:)(v15, v17);
  v21 = objc_opt_self();
  v22 = [v21 blackColor];
  sub_20BB87C88(v22);

  v23 = [v21 whiteColor];
  sub_20BB87D08(v23);

  v24 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel;
  v25 = *&v20[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel];
  v26 = _UISolariumEnabled();
  v27 = objc_opt_self();
  if (v26)
  {
    v28 = [v27 smu:*MEMORY[0x277D76938] preferredFontForTextStyle:8 variant:?];
  }

  else
  {
    v28 = [v27 preferredFontForTextStyle_];
  }

  v29 = v28;
  [v25 setFont_];

  [*&v20[v24] setAdjustsFontSizeToFitWidth_];
  [*&v20[v24] setBaselineAdjustment_];
  v30 = v20;
  v31 = _UISolariumEnabled();
  v32 = type metadata accessor for TVButton();
  v105 = v30;
  v33 = sub_20BB87F6C(v30, v31, 0, objc_allocWithZone(v32), 0.0, 0.0, 0.0, 0.0);
  v34 = [v21 whiteColor];
  v35 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  [*&v33[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v34 forState:8];

  if (sub_20C1380F4() == 3)
  {
    v36 = 0.415686275;
  }

  else
  {
    v36 = 0.15;
  }

  v37 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v36 alpha:1.0];
  [*&v33[v35] setBackgroundColor:v37 forState:0];

  [*&v33[v35] setFocusedSizeIncrease_];
  v38 = v33;
  v39 = sub_20C13C914();
  [v38 setAccessibilityIdentifier_];

  *&v5[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_doneButton] = v38;
  v40 = [v13 bundleForClass_];
  v41 = sub_20C132964();
  v43 = v42;

  v44 = objc_allocWithZone(v18);
  v45 = TVButtonTextContentView.init(title:)(v41, v43);
  v46 = [v21 blackColor];
  sub_20BB87C88(v46);

  v47 = [v21 whiteColor];
  sub_20BB87D08(v47);

  v48 = OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel;
  v49 = *&v45[OBJC_IVAR____TtC9SeymourUI23TVButtonTextContentView_titleLabel];
  LODWORD(v47) = _UISolariumEnabled();
  v50 = objc_opt_self();
  if (v47)
  {
    v51 = [v50 smu:*MEMORY[0x277D76938] preferredFontForTextStyle:8 variant:?];
  }

  else
  {
    v51 = [v50 preferredFontForTextStyle_];
  }

  v52 = v51;
  [v49 setFont_];

  [*&v45[v48] setAdjustsFontSizeToFitWidth_];
  [*&v45[v48] setBaselineAdjustment_];
  v53 = v45;
  v54 = _UISolariumEnabled();
  v104 = v53;
  v55 = sub_20BB87F6C(v53, v54, 0, objc_allocWithZone(v32), 0.0, 0.0, 0.0, 0.0);
  v56 = [v21 whiteColor];
  v57 = OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView;
  [*&v55[OBJC_IVAR____TtC9SeymourUI8TVButton_floatingView] setBackgroundColor:v56 forState:8];

  if (sub_20C1380F4() == 3)
  {
    v58 = 0.415686275;
  }

  else
  {
    v58 = 0.15;
  }

  v59 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v58 alpha:1.0];
  [*&v55[v57] setBackgroundColor:v59 forState:0];

  [*&v55[v57] setFocusedSizeIncrease_];
  v60 = v55;
  v61 = sub_20C13C914();
  [v60 setAccessibilityIdentifier_];

  *&v5[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_cooldownButton] = v60;
  v106.receiver = v5;
  v106.super_class = type metadata accessor for TVSummaryFooterView();
  v62 = objc_msgSendSuper2(&v106, sel_initWithFrame_, a1, a2, a3, a4);
  v63 = OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_doneButton;
  v64 = *&v62[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_doneButton];
  v65 = v62;
  [v64 addTarget:v65 action:sel_doneButtonTapped forControlEvents:0x2000];
  v66 = OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_cooldownButton;
  [*&v65[OBJC_IVAR____TtC9SeymourUI19TVSummaryFooterView_cooldownButton] addTarget:v65 action:sel_cooldownButtonTapped forControlEvents:0x2000];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_20C151490;
  v68 = *&v62[v63];
  *(v67 + 32) = v68;
  v69 = *&v65[v66];
  *(v67 + 40) = v69;
  v70 = v68;
  v71 = v69;
  if ((v67 & 0xC000000000000001) != 0)
  {
    goto LABEL_21;
  }

  if (!*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_20;
  }

  for (i = v70; ; i = MEMORY[0x20F2F5430](0, v67))
  {
    v73 = i;
    v74 = objc_opt_self();
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_20C151490;
    v76 = [v73 widthAnchor];
    v77 = [v76 constraintEqualToConstant_];

    *(v75 + 32) = v77;
    v78 = [v73 heightAnchor];
    v79 = [v78 constraintEqualToConstant_];

    *(v75 + 40) = v79;
    sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
    v80 = sub_20C13CC54();

    [v74 activateConstraints_];

    if ((v67 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v81 = *(v67 + 40);
      goto LABEL_19;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v81 = MEMORY[0x20F2F5430](1, v67);
LABEL_19:
  v82 = objc_opt_self();
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_20C151490;
  v84 = [v81 widthAnchor];
  v85 = [v84 constraintEqualToConstant_];

  *(v83 + 32) = v85;
  v86 = [v81 heightAnchor];
  v87 = [v86 constraintEqualToConstant_];

  *(v83 + 40) = v87;
  v88 = sub_20C13CC54();

  [v82 activateConstraints_];

  v89 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_20B51C88C(0, &qword_27C762910, 0x277D75D18);
  v90 = sub_20C13CC54();

  v91 = [v89 initWithArrangedSubviews_];

  [v91 setAxis_];
  [v91 setSpacing_];
  v92 = v65;
  v93 = v91;
  [v92 addSubview_];
  [v93 setTranslatesAutoresizingMaskIntoConstraints_];
  v94 = objc_opt_self();
  v95 = swift_allocObject();
  *(v95 + 16) = xmmword_20C151490;
  v96 = [v93 centerXAnchor];
  v97 = [v92 centerXAnchor];
  v98 = [v96 constraintEqualToAnchor_];

  *(v95 + 32) = v98;
  v99 = [v93 centerYAnchor];

  v100 = [v92 centerYAnchor];
  v101 = [v99 constraintEqualToAnchor_];

  *(v95 + 40) = v101;
  v102 = sub_20C13CC54();

  [v94 activateConstraints_];

  return v92;
}

id sub_20B8FE9AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVSummaryFooterView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B8FEA78()
{

  return swift_deallocClassInstance();
}

void sub_20B8FEAD4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 17))
    {
    }

    else
    {
      v4 = sub_20B8FEBAC();
      v5 = *(a2 + OBJC_IVAR____TtC9SeymourUI14DownloadButton_contentLayer);

      v6 = sub_20C13C914();

      [v5 addAnimation:v4 forKey:v6];
    }
  }
}

id sub_20B8FEBAC()
{
  v0 = sub_20C13C914();
  v1 = [objc_opt_self() animationWithKeyPath_];

  v2 = sub_20C13D014();
  [v1 setFromValue_];

  v3 = sub_20C138374();
  [v1 setToValue_];

  v4 = v1;
  [v4 setDuration_];
  [v4 setRemovedOnCompletion_];
  LODWORD(v5) = 2139095040;
  [v4 setRepeatCount_];

  return v4;
}

void (*sub_20B8FECD4(void *a1, uint64_t a2))()
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v6 = a1;
  return sub_20B8FEDD4;
}

void sub_20B8FED64(uint64_t a1)
{
  *(v1 + 17) = 1;
  v2 = *(a1 + OBJC_IVAR____TtC9SeymourUI14DownloadButton_contentLayer);
  v3 = sub_20C13C914();
  [v2 removeAnimationForKey_];
}

uint64_t sub_20B8FEDE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762970, &unk_20C162000);
  v0 = swift_allocObject();
  v1 = MEMORY[0x277CDA130];
  *(v0 + 16) = xmmword_20C150DC0;
  v2 = *v1;
  *(v0 + 32) = *v1;
  *(v0 + 40) = 0;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  v6 = [v5 CGColor];

  *(v0 + 48) = v6;
  *(v0 + 56) = 1;
  v7 = *MEMORY[0x277CDA780];
  *(v0 + 64) = *MEMORY[0x277CDA780];
  *(v0 + 72) = 2;
  v8 = *MEMORY[0x277CDA7A0];
  *(v0 + 80) = *MEMORY[0x277CDA7A0];
  *(v0 + 88) = 3;
  *(v0 + 96) = 0x4000000000000000;
  *(v0 + 104) = 4;
  *(v0 + 112) = 0x3FECCCCCCCCCCCCDLL;
  *(v0 + 120) = 6;
  v9 = objc_allocWithZone(MEMORY[0x277D75348]);
  v10 = v7;
  v11 = v8;
  v12 = [v9 initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v13 = [v12 CGColor];

  *(v0 + 128) = v13;
  *(v0 + 136) = 7;
  *(v0 + 144) = 0x3FB999999999999ALL;
  *(v0 + 152) = 8;
  return v0;
}

uint64_t sub_20B8FEF84(char a1)
{
  sub_20C13E164();
  sub_20C13E194();
  return sub_20C13E1B4();
}

uint64_t sub_20B8FEFDC(unsigned __int8 a1)
{
  sub_20C13E164();
  sub_20C13CA64();

  return sub_20C13E1B4();
}

BOOL sub_20B8FF0F0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0.2;
  if (*a1)
  {
    v3 = 0.2;
  }

  else
  {
    v3 = 1.0;
  }

  if (!*a2)
  {
    v2 = 1.0;
  }

  return v3 == v2;
}

float *sub_20B8FF174@<X0>(float *result@<X0>, char *a2@<X8>)
{
  if (*result == 0.2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1.0)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

void sub_20B8FF1A4(float *a1@<X8>)
{
  v2 = 0.2;
  if (!*v1)
  {
    v2 = 1.0;
  }

  *a1 = v2;
}

double sub_20B8FF1C8()
{
  __asm { FMOV            V0.4S, #1.0 }

  v18 = _Q0;
  if (*(v0 + 32) < 1)
  {
    v11 = *(v0 + 48);
  }

  else
  {
    swift_beginAccess();
    v6 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 64) = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_20BC07AE0(0, *(v6 + 2) + 1, 1, v6);
      *(v0 + 64) = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    v10 = v9 + 1;
    if (v9 >= v8 >> 1)
    {
      v6 = sub_20BC07AE0((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v10;
    *&v6[16 * v9 + 32] = v18;
    *(v0 + 64) = v6;
    swift_endAccess();
    v11 = v18;
    if (v10 >= *(v0 + 32))
    {
      swift_beginAccess();
      sub_20B91F838(0);
      v17 = v12;
      swift_endAccess();
      v11 = v17;
    }
  }

  v13 = vminnmq_f32(vmaxnmq_f32(v11, 0), v18);
  v14.i64[0] = 0xC0000000C0000000;
  v14.i64[1] = 0xC0000000C0000000;
  __asm { FMOV            V3.4S, #3.0 }

  *&result = vmulq_f32(vmulq_f32(v13, v13), vmlaq_f32(_Q3, v14, v13)).u64[0];
  return result;
}

id sub_20B8FF30C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v3 = sub_20B8FF368(v0);
    v4 = *(v0 + 40);
    *(v0 + 40) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_20B8FF368(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x277D27898]) init];
  LODWORD(v2) = 1133903872;
  LODWORD(v3) = 1133903872;
  [v1 addAnalysisBand_];
  LODWORD(v4) = 1142292480;
  LODWORD(v5) = 1142292480;
  [v1 addAnalysisBand_];
  LODWORD(v6) = 1161527296;
  LODWORD(v7) = 1161117696;
  [v1 addAnalysisBand_];
  v8 = swift_allocObject();
  swift_weakInit();
  v11[4] = sub_20B8FF9C8;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_20B762A80;
  v11[3] = &block_descriptor_35;
  v9 = _Block_copy(v11);

  [v1 setOnUpdate_];
  _Block_release(v9);
  return v1;
}

double sub_20B8FF4B8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20B8FF5C8(a1);
  }

  return result;
}

uint64_t sub_20B8FF518()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = v1;
    v3 = sub_20B8FF30C();
    [v2 removeObserver_];

    v1 = *(v0 + 24);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_20B8FF5C8(void *a1)
{
  v2 = v1;
  v4 = sub_20C13C4B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C13C4F4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 averagePowerOfBandAtIndex:0 band:{0, v10}];
  v30 = v13;
  [a1 averagePowerOfBandAtIndex:1 band:0];
  v29 = v14;
  [a1 averagePowerOfBandAtIndex:2 band:0];
  v28 = v15;
  [a1 powerLevel];
  v17.i64[0] = __PAIR64__(v29, v30.u32[0]);
  v17.i64[1] = __PAIR64__(v16, v28);
  v18 = 0.2;
  if (!*(v2 + 16))
  {
    v18 = 1.0;
  }

  __asm { FMOV            V2.4S, #1.0 }

  v30 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v17, 0), _Q2), v18);
  sub_20B5E2E18();
  v24 = sub_20C13D374();
  v25 = swift_allocObject();
  *(v25 + 16) = v2;
  *(v25 + 32) = v30;
  aBlock[4] = sub_20B8FF998;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_46;
  v26 = _Block_copy(aBlock);

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20B7E9080();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v12, v7, v26);
  _Block_release(v26);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_20B8FF918()
{
  result = qword_27C7679A0;
  if (!qword_27C7679A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7679A0);
  }

  return result;
}

double sub_20B8FF96C()
{
  *(v0 + 16) = 1;
  result = 0.0;
  *(v0 + 24) = 0u;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = v2;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  return result;
}

float32x4_t sub_20B8FF998()
{
  v1 = v0[1].i64[0];
  __asm { FMOV            V1.4S, #-10.0 }

  result = vmaxnmq_f32(v0[2], vaddq_f32(v1[5], vdivq_f32(v1[5], _Q1)));
  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v9 = vmlaq_f32(v1[6], v8, vsubq_f32(result, v1[6]));
  v1[5] = result;
  v1[6] = v9;
  return result;
}

char *sub_20B8FF9D8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  v11 = sub_20C1380F4();
  if (v11 > 1)
  {
    if (v11 != 3)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = 15.0;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v12 = 20.0;
LABEL_6:
  sub_20C1380F4();
  v13 = sub_20C138104();
  if (v13 == sub_20C138104())
  {
    v14 = 0.55;
  }

  else
  {
    v14 = 0.5;
  }

  v15 = &v6[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_layout];
  v16 = sub_20B6B1AEC(*MEMORY[0x277D74400], 0, 0x8000, 22.0);
  *v15 = 12.0;
  v15[1] = v12;
  v15[2] = v12;
  v15[3] = v12;
  v15[4] = v12;
  *(v15 + 5) = 4;
  v15[6] = v14;
  v15[7] = 10.0;
  *(v15 + 8) = v16;
  v17 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_bottomStackView;
  v18 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v17] = v18;
  v19 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_containerView;
  v20 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v20 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v19] = v20;
  v21 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_footnoteLabel;
  v22 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  [v22 setAdjustsFontForContentSizeCategory_];
  [v22 setLineBreakMode_];
  *&v6[v21] = v22;
  v23 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_recencyIconView;
  v24 = objc_allocWithZone(type metadata accessor for RecencyIconView());
  v25 = sub_20B7219DC(1, 0, 0, 0.0, 0.0, 0.0, 0.0);
  [v25 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v6[v23] = v25;
  v26 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleLabel;
  v27 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v27 setTranslatesAutoresizingMaskIntoConstraints_];
  [v27 setAdjustsFontForContentSizeCategory_];
  [v27 setLineBreakMode_];
  *&v6[v26] = v27;
  v28 = &v6[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_environmentInsets];
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v28[32] = 1;
  *&v6[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_oldWidth] = 0;
  v29 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleWidthConstraint;
  *&v6[v29] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  v97.receiver = v6;
  v97.super_class = type metadata accessor for EditorialCollectionContainerView();
  v30 = objc_msgSendSuper2(&v97, sel_initWithFrame_, a2, a3, a4, a5);
  v31 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_containerView;
  v32 = *&v30[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_containerView];
  v33 = v30;
  [v33 addSubview_];
  v34 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleLabel;
  v35 = &v33[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_layout];
  [*&v33[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleLabel] setFont_];
  [*&v33[v34] setNumberOfLines_];
  v36 = *&v33[v34];
  v37 = objc_opt_self();
  v38 = v36;
  v39 = [v37 whiteColor];
  [v38 setTextColor_];

  [*&v30[v31] addSubview_];
  v40 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_bottomStackView;
  [*&v33[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_bottomStackView] setAlignment_];
  [*&v33[v40] setAxis_];
  [*&v33[v40] setSemanticContentAttribute_];
  v95 = v35;
  [*&v33[v40] setSpacing_];
  [*&v30[v31] addSubview_];
  [*&v33[v40] addArrangedSubview_];
  v41 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_footnoteLabel;
  v42 = *&v33[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_footnoteLabel];
  v43 = sub_20B900BE0();
  [v42 setFont_];

  [*&v33[v40] addArrangedSubview_];
  v44 = sub_20C1380F4();
  v93 = v34;
  if (v44 <= 1)
  {
    if (!v44)
    {
      v45 = [*&v33[v34] widthAnchor];
      v46 = [v45 constraintEqualToConstant_];

      type metadata accessor for UILayoutPriority(0);
      sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
      sub_20C13BBA4();
      LODWORD(v47) = v96;
      [v46 setPriority_];
      v48 = v35;
LABEL_14:
      v52 = *&v33[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleWidthConstraint];
      *&v33[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleWidthConstraint] = v46;

      v94 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
      v53 = swift_allocObject();
      *(v53 + 16) = xmmword_20C152A00;
      v54 = [*&v30[v31] leftAnchor];
      v55 = [v33 leftAnchor];

      v56 = v48;
      v57 = [v54 constraintEqualToAnchor:v55 constant:v48[2]];

      *(v53 + 32) = v57;
      v58 = [*&v30[v31] rightAnchor];
      v59 = [v33 rightAnchor];

      v60 = [v58 constraintEqualToAnchor:v59 constant:-v56[4]];
      *(v53 + 40) = v60;
      v61 = [*&v30[v31] topAnchor];
      v62 = [v33 &selRef_setLineBreakMode_];

      v63 = [v61 constraintEqualToAnchor:v62 constant:v56[1]];
      *(v53 + 48) = v63;
      v64 = [*&v30[v31] bottomAnchor];
      v65 = [v33 &selRef_secondaryLabel + 5];

      v66 = [v64 constraintEqualToAnchor:v65 constant:-v56[3]];
      *(v53 + 56) = v66;
      v67 = [*&v33[v93] leftAnchor];
      v68 = [*&v30[v31] leftAnchor];
      v69 = [v67 constraintEqualToAnchor_];

      *(v53 + 64) = v69;
      v70 = [*&v33[v93] rightAnchor];
      v71 = [*&v30[v31] rightAnchor];
      v72 = [v70 constraintLessThanOrEqualToAnchor_];

      *(v53 + 72) = v72;
      v73 = [*&v33[v93] topAnchor];
      v74 = [*&v30[v31] topAnchor];
      v75 = [v73 &selRef:v74 alertControllerReleasedDictationButton:? + 5];

      *(v53 + 80) = v75;
      v76 = *&v33[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleWidthConstraint];
      *(v53 + 88) = v76;
      v77 = *&v33[v40];
      v78 = v76;
      v79 = [v77 leftAnchor];
      v80 = [*&v30[v31] leftAnchor];
      v81 = [v79 &selRef:v80 alertControllerReleasedDictationButton:? + 5];

      *(v53 + 96) = v81;
      v82 = [*&v33[v40] rightAnchor];
      v83 = [*&v30[v31] rightAnchor];
      v84 = [v82 constraintLessThanOrEqualToAnchor_];

      *(v53 + 104) = v84;
      v85 = [*&v33[v40] topAnchor];
      v86 = [*&v33[v93] bottomAnchor];
      v87 = [v85 constraintGreaterThanOrEqualToAnchor:v86 constant:v95[7]];

      *(v53 + 112) = v87;
      v88 = [*&v33[v40] bottomAnchor];
      v89 = [*&v30[v31] bottomAnchor];
      v90 = [v88 &selRef:v89 alertControllerReleasedDictationButton:? + 5];

      *(v53 + 120) = v90;
      sub_20B5E29D0();
      v91 = sub_20C13CC54();

      [v94 activateConstraints_];

      return v33;
    }

LABEL_13:
    v49 = [*&v33[v34] widthAnchor];
    v50 = [v33 widthAnchor];
    v48 = v35;
    v46 = [v49 constraintEqualToAnchor:v50 multiplier:*(v35 + 6)];

    type metadata accessor for UILayoutPriority(0);
    sub_20B8318CC(&qword_27C768270, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
    sub_20C13BBA4();
    LODWORD(v51) = v96;
    [v46 setPriority_];
    goto LABEL_14;
  }

  if (v44 == 3)
  {
    goto LABEL_13;
  }

LABEL_15:
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

void sub_20B90062C(uint64_t a1)
{
  sub_20C1380F4();
  v2 = sub_20C138104();
  if (v2 == sub_20C138104())
  {
    [v1 bounds];
    v16.origin.x = 0.0;
    v16.origin.y = 0.0;
    v16.size.width = 0.0;
    v16.size.height = 0.0;
    if (!CGRectEqualToRect(v12, v16))
    {
      [v1 bounds];
      Width = CGRectGetWidth(v13);
      v4 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_oldWidth;
      if (Width != *&v1[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_oldWidth])
      {
        v5 = &v1[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_environmentInsets];
        if ((v1[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_environmentInsets + 32] & 1) == 0)
        {
          v6 = v5[3];
          v7 = v5[1];
          [v1 bounds];
          *&v1[v4] = CGRectGetWidth(v14);
          [v1 bounds];
          v8 = CGRectGetWidth(v15);
          v9 = *&v1[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleWidthConstraint];
          v10 = (v6 + v7 + v8) * 0.5;

          [v9 setConstant_];
        }
      }
    }
  }
}

id sub_20B900748(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EditorialCollectionContainerView();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_20B900840(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_20B900888(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_20B9008E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_recencyIconView);
  if (*&v4[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_layoutView])
  {
    v6 = *(v3 + OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleLabel);
    v7 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v8 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v8 setLineBreakMode_];
    v9 = v7;
    v10 = [v9 length];
    v11 = *MEMORY[0x277D74118];
    [v9 addAttribute:*MEMORY[0x277D74118] value:v8 range:{0, v10}];

    [v6 setAttributedText_];
    v12 = *(v3 + OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_footnoteLabel);
    v13 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
    v14 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v14 setLineBreakMode_];
    v15 = v13;
    [v15 addAttribute:v11 value:v14 range:{0, objc_msgSend(v15, sel_length)}];

    [v12 setAttributedText_];
    v16 = sub_20C133E54();
    if (v17)
    {
      v18 = v16;
      v19 = v17;
      [v4 setHidden_];
      v20 = &v4[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_title];
      *v20 = v18;
      v20[1] = v19;

      v21 = *&v4[OBJC_IVAR____TtC9SeymourUI15RecencyIconView_label];

      v22 = sub_20C13C914();
      [v21 setText_];

      [v4 invalidateIntrinsicContentSize];
    }

    else
    {

      [v4 setHidden_];
    }
  }

  else
  {

    sub_20C1380E4();
  }
}

id sub_20B900BE0()
{
  v0 = *MEMORY[0x277D74420];
  v1 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v3 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v4 = swift_initStackObject();
  v5 = MEMORY[0x277D74430];
  *(v4 + 16) = xmmword_20C14F980;
  v6 = *v5;
  *(v4 + 32) = *v5;
  *(v4 + 40) = v0;
  v7 = v3;
  v8 = v6;
  v9 = sub_20B6B134C(v4);
  swift_setDeallocating();
  sub_20B520158(v4 + 32, &unk_27C773200, qword_20C158A40);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v9;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20B8318CC(&qword_27C7618A0, type metadata accessor for AttributeName, &unk_20C14D960);
  v10 = sub_20C13C744();

  v11 = [v1 fontDescriptorByAddingAttributes_];

  v12 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];
  return v12;
}

void sub_20B900E2C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_20C1380F4();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      goto LABEL_10;
    }
  }

  else if (!v3)
  {
    v4 = 15.0;
LABEL_6:
    sub_20C1380F4();
    v5 = sub_20C138104();
    if (v5 == sub_20C138104())
    {
      v6 = 0.55;
    }

    else
    {
      v6 = 0.5;
    }

    v7 = v2 + OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_layout;
    v8 = sub_20B6B1AEC(*MEMORY[0x277D74400], 0, 0x8000, 22.0);
    *v7 = 0x4028000000000000;
    *(v7 + 8) = v4;
    *(v7 + 16) = v4;
    *(v7 + 24) = v4;
    *(v7 + 32) = v4;
    *(v7 + 40) = 4;
    *(v7 + 48) = v6;
    *(v7 + 56) = 0x4024000000000000;
    *(v7 + 64) = v8;
    v9 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_bottomStackView;
    v10 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    *(v2 + v9) = v10;
    v11 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_containerView;
    v12 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    *(v2 + v11) = v12;
    v13 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_footnoteLabel;
    v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    [v14 setTranslatesAutoresizingMaskIntoConstraints_];
    [v14 setAdjustsFontForContentSizeCategory_];
    [v14 setLineBreakMode_];
    *(v2 + v13) = v14;
    v15 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_recencyIconView;
    v16 = objc_allocWithZone(type metadata accessor for RecencyIconView());
    v17 = sub_20B7219DC(1, 0, 0, 0.0, 0.0, 0.0, 0.0);
    [v17 setTranslatesAutoresizingMaskIntoConstraints_];
    *(v2 + v15) = v17;
    v18 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleLabel;
    v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    [v19 setAdjustsFontForContentSizeCategory_];
    [v19 setLineBreakMode_];
    *(v2 + v18) = v19;
    v20 = v2 + OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_environmentInsets;
    *v20 = 0u;
    *(v20 + 16) = 0u;
    *(v20 + 32) = 1;
    *(v2 + OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_oldWidth) = 0;
    v21 = OBJC_IVAR____TtC9SeymourUI32EditorialCollectionContainerView_titleWidthConstraint;
    *(v2 + v21) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
    while (1)
    {
LABEL_10:
      sub_20C13DE24();
      __break(1u);
    }
  }

  v4 = 20.0;
  goto LABEL_6;
}

uint64_t sub_20B901148(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v10 = a3;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = a1 + 32;
    sub_20B9012A8(*(a1 + 32), a1, a2, a3, a4, a5, a6);
    if (!v6)
    {
      if (v17)
      {
        v20 = v15;
        v21 = a1;
        v22 = v16;
        v23 = v14;
        v24 = v17;
        v25 = v18;
        sub_20BCC823C(v21, v23, 1, (2 * v11) | 1);
        v10 = sub_20B901148(v26, a2, v20, v22, v24, v25);
      }

      else
      {
        return sub_20B901148(a1, a2, v10, a4, a5, a6);
      }
    }
  }

  else
  {
  }

  return v10;
}

void sub_20B9012A8(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, char *a6, uint64_t a7)
{
  v44 = a3;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0, qword_20C1510D0);
  MEMORY[0x28223BE20](v14 - 8);
  v45 = &v37 - v15;
  v16 = sub_20C133244();
  v46 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B901700(a1, a2, a4, a5, a6, a7);
  if (!v7)
  {
    v38 = a6;
    v39 = a7;
    v41 = a5;
    v42 = v18;
    v40 = a4;
    v43 = 0;
    v47 = v19;
    __swift_mutable_project_boxed_opaque_existential_1(v44, *(v44 + 24));
    v44 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7679F0, ":P\t");
    sub_20B901EC8();
    v20 = v45;
    v21 = v44;
    sub_20C13D094();

    if ((*(v46 + 48))(v20, 1, v21) == 1)
    {
      sub_20B520158(v20, &unk_27C7629C0, qword_20C1510D0);
    }

    else
    {
      v22 = v46;
      v23 = v42;
      (*(v46 + 32))(v42, v20, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A00, "<P\t");
      v24 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A18, &qword_20C16F260) - 8);
      v25 = (*(*v24 + 80) + 32) & ~*(*v24 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_20C14F980;
      v27 = v26 + v25;
      v28 = v24[14];
      (*(v22 + 16))(v27, v23, v21);
      *(v27 + v28) = a1;
      v29 = sub_20B6B4474(v26);
      swift_setDeallocating();
      sub_20B520158(v27, &qword_27C763A18, &qword_20C16F260);
      swift_deallocClassInstance();
      v30 = v38;

      v31 = v39;

      v33 = v40;
      v32 = v41;
      v34 = v43;
      v35 = sub_20C00A628(v29, v40, v41, v30, v31);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v31;
      sub_20B904B14(v35, sub_20C009C60, 0, isUniquelyReferenced_nonNull_native, &v47);
      v43 = v34;
      if (v34)
      {

        __break(1u);
      }

      else
      {

        sub_20C008994(v33, v32, v47);

        (*(v46 + 8))(v42, v44);
      }
    }
  }
}

void sub_20B901700(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, char *a5, uint64_t a6)
{
  v7 = v6;
  v12 = a1;
  if (a1 - 2 < 4)
  {
    v13 = a1;

    v14 = sub_20B6D2924(a6, a5);

    v15 = v14;
    v16 = v7;
    v7 = sub_20B90402C(v15, a3, a4, a5, a6, v13);
    v17 = v16;

    a6 = *(v7 + 16);
    if (a6)
    {
      a5 = sub_20BEDEC18(*(v7 + 16), 0);
      v18 = *(sub_20C133244() - 8);
      sub_20BEE29BC(&v45, &a5[(*(v18 + 80) + 32) & ~*(v18 + 80)], a6, v7);
      a4 = v19;
      v20 = v45;
      a3 = v46;

      sub_20B583EDC(v20);
      if (a4 != a6)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else
    {
      a5 = MEMORY[0x277D84F90];
    }

    v45 = a5;
    sub_20B901E20(&v45);
    v27 = v17;
    if (v17)
    {
      goto LABEL_36;
    }

    if (*(v45 + 2))
    {
      return;
    }

    v28 = 2;
    goto LABEL_34;
  }

LABEL_5:
  if (v12)
  {

    v29 = sub_20B6D2924(a6, a5);
    v30 = v29;
    a6 = *(v29 + 16);
    if (!a6)
    {
LABEL_26:
      a5 = MEMORY[0x277D84F90];
LABEL_27:
      v45 = a5;
      sub_20B901E20(&v45);
      v27 = v7;
      if (!v7)
      {

        if (*(v45 + 2))
        {
          return;
        }

        v28 = 0;
        goto LABEL_34;
      }

LABEL_36:

      __break(1u);
      return;
    }

    a5 = sub_20BEDEC18(*(v29 + 16), 0);
    v31 = *(sub_20C133244() - 8);
    sub_20BEE29BC(&v45, &a5[(*(v31 + 80) + 32) & ~*(v31 + 80)], a6, v30);
    a4 = v32;
    v33 = v45;
    a3 = v46;

    sub_20B583EDC(v33);
    if (a4 == a6)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {
    v21 = *(a2 + 16);
    v47 = v7;
    if (v21)
    {
      v22 = (a2 + 32);
      v23 = MEMORY[0x277D84F90];
      do
      {
        if (!*v22++)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_20BB5E264(0, *(v23 + 2) + 1, 1);
            v23 = v45;
          }

          v7 = *(v23 + 2);
          v24 = *(v23 + 3);
          if (v7 >= v24 >> 1)
          {
            sub_20BB5E264((v24 > 1), v7 + 1, 1);
            v23 = v45;
          }

          *(v23 + 2) = v7 + 1;
          v23[v7 + 32] = 0;
        }

        --v21;
      }

      while (v21);
      goto LABEL_23;
    }
  }

  v23 = MEMORY[0x277D84F90];
LABEL_23:
  v34 = *(v23 + 2);

  v35 = sub_20B901B88(v34, a3, a4, a5, a6);
  v36 = v35;
  v37 = *(v35 + 16);
  if (v37)
  {
    v38 = sub_20BEDEC18(*(v35 + 16), 0);
    v39 = *(sub_20C133244() - 8);
    sub_20BEE29BC(&v45, &v38[(*(v39 + 80) + 32) & ~*(v39 + 80)], v37, v36);
    v41 = v40;
    v42 = v45;

    sub_20B583EDC(v42);
    if (v41 != v37)
    {
      __break(1u);
      goto LABEL_26;
    }
  }

  else
  {
    v38 = MEMORY[0x277D84F90];
  }

  v43 = v47;
  v45 = v38;
  sub_20B901E20(&v45);
  v27 = v43;
  if (v43)
  {
    goto LABEL_36;
  }

  if (*(v45 + 2))
  {
    return;
  }

  v28 = 1;
LABEL_34:

  sub_20B904E50();
  swift_allocError();
  *v44 = v28;
  swift_willThrow();
}