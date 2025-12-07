id AMLRawSignalsConfiguration.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___AMLRawSignalsConfiguration_modelName];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = sub_21AEEF370();
  v5 = sub_21AF058B0();
  v7 = [v5 v6];

  if (v7)
  {
    sub_21AF09B9C();
    v8 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  *&v23 = sub_21AEEF340(v8, v9, v10, v11, v12, v13, v14, v15, v122, v132, v142, v147, v153.receiver, v153.super_class, v154, v155, v156, v157, v158).n128_u64[0];
  if (!v24)
  {

LABEL_39:
    sub_21AEA7990(v159, &qword_27CD3D330, &unk_21AF0C420);
    goto LABEL_44;
  }

  if ((sub_21AF057B8(v16, v17, v18, MEMORY[0x277D837D0], v19, v20, v21, v22, v123, v133, v23) & 1) == 0)
  {

LABEL_44:

    type metadata accessor for AMLRawSignalsConfiguration(v120);
    sub_21AEEF478();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v26 = v154;
  v25 = v155;
  v27 = sub_21AEEF3FC();
  v28 = sub_21AF058B0();
  v30 = [v28 v29];

  if (v30)
  {
    sub_21AF09B9C();
    v31 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  *&v46 = sub_21AEEF340(v31, v32, v33, v34, v35, v36, v37, v38, v124, v134, v143, v148, v153.receiver, v153.super_class, v154, v155, v156, v157, v158).n128_u64[0];
  if (!v47)
  {

LABEL_38:

    goto LABEL_39;
  }

  if ((sub_21AF057B8(v39, v40, v41, MEMORY[0x277D837D0], v42, v43, v44, v45, v125, v135, v46) & 1) == 0)
  {

LABEL_43:

    goto LABEL_44;
  }

  v48 = v155;
  v149 = v26;
  v49 = sub_21AF05888();
  v50 = sub_21AF058B0();
  v52 = [v50 v51];

  if (v52)
  {
    sub_21AF09B9C();
    v53 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  *&v68 = sub_21AEEF340(v53, v54, v55, v56, v57, v58, v59, v60, v126, v136, v154, v149, v153.receiver, v153.super_class, v154, v155, v156, v157, v158).n128_u64[0];
  if (!v69)
  {

LABEL_37:

    goto LABEL_38;
  }

  if ((sub_21AF057B8(v61, v62, v63, MEMORY[0x277D837D0], v64, v65, v66, v67, v127, v137, v68) & 1) == 0)
  {

LABEL_42:

    goto LABEL_43;
  }

  v70 = v155;
  v71 = sub_21AF097BC();
  v72 = sub_21AF058B0();
  v74 = [v72 v73];

  if (v74)
  {
    sub_21AF09B9C();
    v75 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  sub_21AEEF340(v75, v76, v77, v78, v79, v80, v81, v82, v128, v154, v144, v150, v153.receiver, v153.super_class, v154, v155, v156, v157, v158);
  if (!v83)
  {

LABEL_36:

    goto LABEL_37;
  }

  v84 = type metadata accessor for AMLFeaturesSpecification(0);
  if ((sub_21AF057B8(v84, v85, v86, v84, v87, v88, v89, v90, v129, v138) & 1) == 0)
  {

LABEL_41:

    goto LABEL_42;
  }

  v91 = sub_21AEEF3A4();
  v92 = sub_21AF058B0();
  v94 = [v92 v93];

  if (v94)
  {
    sub_21AF09B9C();
    v95 = swift_unknownObjectRelease();
  }

  else
  {
    sub_21AEEF3D4();
  }

  *&v110 = sub_21AEEF340(v95, v96, v97, v98, v99, v100, v101, v102, v154, v139, v145, v151, v153.receiver, v153.super_class, v154, v155, v156, v157, v158).n128_u64[0];
  if (!v111)
  {

    goto LABEL_36;
  }

  if ((sub_21AF057B8(v103, v104, v105, MEMORY[0x277D837D0], v106, v107, v108, v109, v130, v140, v110) & 1) == 0)
  {

    goto LABEL_41;
  }

  v112 = v154;
  v113 = v155;
  v114 = sub_21AEEF370();
  v115 = [a1 decodeInt32ForKey_];

  v116 = &v1[OBJC_IVAR___AMLRawSignalsConfiguration_bundleIdentifier];
  *v116 = v152;
  *(v116 + 1) = v25;
  *v3 = v146;
  *(v3 + 1) = v48;

  v117 = &v1[OBJC_IVAR___AMLRawSignalsConfiguration_versionId];
  *v117 = v141;
  *(v117 + 1) = v70;
  *&v1[OBJC_IVAR___AMLRawSignalsConfiguration_expirationPolicy] = v115;
  *&v1[OBJC_IVAR___AMLRawSignalsConfiguration_rawSignalsDescription] = v131;
  v118 = &v1[OBJC_IVAR___AMLRawSignalsConfiguration_configurationId];
  *v118 = v112;
  v118[1] = v113;
  v153.receiver = v1;
  v153.super_class = AMLRawSignalsConfiguration;
  v119 = objc_msgSendSuper2(&v153, sel_init);

  return v119;
}

id AMLRawSignalsDonation.init(rawSignalsConfiguration:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRawSignalsConfiguration_];

  return v2;
}

id AMLRawSignalsDonation.init(rawSignalsConfiguration:)(uint64_t a1)
{
  v2 = (v1 + OBJC_IVAR___AMLRawSignalsDonation____lazy_storage___indexSignalsConfiguration);
  v2[1] = 0;
  v2[2] = 0;
  *v2 = 0;
  *(v1 + OBJC_IVAR___AMLRawSignalsDonation_rawSignalsConfiguration) = a1;
  v4.super_class = AMLRawSignalsDonation;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t AMLRawSignalsDonation.copy(with:)@<X0>(void *a1@<X8>)
{
  v3 = [v1 rawSignalsConfiguration];
  v4 = [objc_allocWithZone(AMLRawSignalsDonation) initWithRawSignalsConfiguration_];

  result = type metadata accessor for AMLRawSignalsDonation(v5);
  a1[3] = result;
  *a1 = v4;
  return result;
}

uint64_t sub_21AF02440(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr))
{
  v5 = a1;
  a4(v8);

  sub_21AEAF9B0(v8, v8[3]);
  v6 = sub_21AF09E3C();
  sub_21AEA79F0(v8);
  return v6;
}

Swift::Void __swiftcall AMLRawSignalsDonation.encode(with:)(NSCoder with)
{
  v3 = [v1 rawSignalsConfiguration];
  sub_21AF058C8();
  v4 = sub_21AF097BC();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

id AMLRawSignalsDonation.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR___AMLRawSignalsDonation____lazy_storage___indexSignalsConfiguration];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  sub_21AF058C8();
  v4 = sub_21AF097BC();
  v5 = [a1 decodeObjectForKey_];

  if (v5)
  {
    sub_21AF09B9C();
    v6 = swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {

    sub_21AEA7990(v14, &qword_27CD3D330, &unk_21AF0C420);
LABEL_9:
    sub_21AEB371C(*v3, *(v3 + 1), *(v3 + 2));
    type metadata accessor for AMLRawSignalsDonation(v8);
    sub_21AEEF478();
    swift_deallocPartialClassInstance();
    return 0;
  }

  type metadata accessor for AMLRawSignalsConfiguration(v6);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  *&v1[OBJC_IVAR___AMLRawSignalsDonation_rawSignalsConfiguration] = v11;
  v10.receiver = v1;
  v10.super_class = AMLRawSignalsDonation;
  v7 = objc_msgSendSuper2(&v10, sel_init);

  return v7;
}

uint64_t sub_21AF02730()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___AMLRawSignalsDonation____lazy_storage___indexSignalsConfiguration];
  v3 = *&v0[OBJC_IVAR___AMLRawSignalsDonation____lazy_storage___indexSignalsConfiguration];
  v4 = *&v0[OBJC_IVAR___AMLRawSignalsDonation____lazy_storage___indexSignalsConfiguration + 8];
  v5 = v2[2];
  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = sub_21AF027F4(v1);
    v8 = v7;
    v9 = *v2;
    v10 = v2[1];
    v11 = v2[2];
    *v2 = v6;
    v2[1] = v12;
    v2[2] = v7;

    v8;
    sub_21AEB371C(v9, v10, v11);
  }

  sub_21AEB383C(v3, v4, v5);
  return v6;
}

uint64_t sub_21AF027F4(void *a1)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21AF093FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = [a1 rawSignalsConfiguration];
  v34[0] = 0;
  v8 = [v6 archivedDataWithRootObject:v7 requiringSecureCoding:1 error:v34];

  v9 = v34[0];
  if (v8)
  {
    v10 = sub_21AF0932C();
    v12 = v11;

    if (MEMORY[0x21CEE45A0](v10, v12) > 0)
    {
      goto LABEL_10;
    }

    sub_21AEA7900(v10, v12);
  }

  else
  {
    v13 = v9;
    v14 = sub_21AF0927C();

    swift_willThrow();
    if (qword_27CD3D290 != -1)
    {
      swift_once();
    }

    v15 = sub_21AF096CC();
    sub_21AEA7958(v15, qword_27CD3EBA0);
    v16 = v14;
    v17 = sub_21AF096AC();
    v18 = sub_21AF09A9C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_21AE94000, v17, v18, "Encountered error while archiving RawSignalsConfig: %@", v19, 0xCu);
      sub_21AEA7990(v20, &qword_27CD3DF30, &qword_21AF0C0F0);
      MEMORY[0x21CEE5A20](v20, -1, -1);
      MEMORY[0x21CEE5A20](v19, -1, -1);
    }

    else
    {
    }
  }

  v10 = 0;
  v12 = 0xF000000000000000;
LABEL_10:
  v23 = dispatch_group_create();
  type metadata accessor for AMLFeaturesStorage();
  swift_initStackObject();
  if (v12 >> 60 == 15)
  {

    return 0xD000000000000018;
  }

  else
  {
    v31 = "Signals Donation";
    v32 = ".rawSignals.spotlightConfig";
    v33 = v2;
    v25 = [a1 rawSignalsConfiguration];
    v26 = [v25 bundleIdentifier];

    v27 = sub_21AF097CC();
    v29 = v28;

    sub_21AF093DC();
    v24 = sub_21AEA9420(v10, v12, 0xD00000000000002BLL, v31 | 0x8000000000000000, 0xD000000000000013, v32 | 0x8000000000000000, v27, v29, v5, 0xD000000000000019, 0x800000021AF10F10, 16718, 0xE200000000000000, v23);

    sub_21AEB37D4(v10, v12);
    (*(v3 + 8))(v5, v33);
  }

  return v24;
}

uint64_t sub_21AF02C44(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v21[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:0 error:v21];
  v2 = v21[0];
  if (v1)
  {
    sub_21AF0932C();

    v3 = sub_21AEB3AB4();
    if (MEMORY[0x21CEE45A0](v3) <= 0)
    {
      v4 = sub_21AEB3AB4();
      sub_21AEA7900(v4, v5);
    }
  }

  else
  {
    v6 = v2;
    v7 = sub_21AF0927C();

    swift_willThrow();
    if (qword_27CD3D290 != -1)
    {
      swift_once();
    }

    v8 = sub_21AF096CC();
    sub_21AEA7958(v8, qword_27CD3EBA0);
    v9 = v7;
    v10 = sub_21AF096AC();
    v11 = sub_21AF09A9C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v7;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_21AE94000, v10, v11, "Encountered error while archiving RawSignals Donation: %@", v12, 0xCu);
      sub_21AEA7990(v13, &qword_27CD3DF30, &qword_21AF0C0F0);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    else
    {
    }
  }

  sub_21AEB3AB4();
  sub_21AF02E8C();
  v17 = v16;
  v18 = sub_21AEB3AB4();
  sub_21AEB37D4(v18, v19);
  return v17;
}

void sub_21AF02E8C()
{
  sub_21AEC7AE8();
  v1 = v0;
  v208 = v2;
  v206 = v3;
  v184 = v4;
  v215 = *MEMORY[0x277D85DE8];
  v199 = sub_21AF093FC();
  sub_21AEA7C90();
  v198 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v182 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21AF0969C();
  sub_21AEA7C90();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v194 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v182 - v15;
  v205 = objc_opt_self();
  v17 = sub_21AEF750C([v205 mainBundle]);
  v19 = v18;
  LODWORD(v207) = sub_21AF09B0C();
  if (qword_2812288D0 != -1)
  {
    swift_once();
  }

  v209 = v8;
  v20 = qword_281228910;
  if (qword_2812288D8 != -1)
  {
    swift_once();
  }

  v21 = sub_21AEA7958(v9, qword_281228918);
  isa = v11[2].isa;
  v191 = v21;
  v185 = v11 + 2;
  v190 = isa;
  (isa)(v16);
  v189 = sub_21AEA7574(&unk_27CD3D810, &qword_21AF0C598);
  v23 = swift_allocObject();
  v204 = xmmword_21AF0C580;
  *(v23 + 16) = xmmword_21AF0C580;
  v24 = MEMORY[0x277D837D0];
  *(v23 + 56) = MEMORY[0x277D837D0];
  v25 = sub_21AEB37E8();
  *(v23 + 64) = v25;
  if (v19)
  {
    v26 = v17;
  }

  else
  {
    v26 = 0x6E776F6E6B6E55;
  }

  v27 = 0xE700000000000000;
  if (v19)
  {
    v27 = v19;
  }

  v187 = v26;
  *(v23 + 32) = v26;
  *(v23 + 40) = v27;
  v186 = v27;
  v203 = v19;

  v28 = [v1 rawSignalsConfiguration];
  v29 = [v28 configurationId];

  v30 = sub_21AF097CC();
  v210 = v1;
  v32 = v31;

  *(v23 + 96) = v24;
  *(v23 + 104) = v25;
  v192 = v25;
  *(v23 + 72) = v30;
  *(v23 + 80) = v32;
  v33 = v210;
  sub_21AEB3A6C();
  v182 = 53;
  sub_21AF0967C();

  v34 = sub_21AEB3980();
  v188 = v35;
  (v35)(v34);
  v36 = v209;
  sub_21AF093DC();
  v201 = sub_21AF02730();
  v202 = v37;

  v39 = dispatch_group_create();
  type metadata accessor for AMLFeaturesStorage();
  inited = swift_initStackObject();
  v41 = v206;
  v196 = v9;
  v195 = v11 + 1;
  v193 = v20;
  v200 = v39;
  v197 = inited;
  if (v206 >> 60 == 15)
  {
    v42 = 0x800000021AF0F390;
    v207 = 0xD000000000000014;
    v43 = v208;
  }

  else
  {
    v44 = v36;
    v183 = "featuresMetadataKey";
    v207 = "spotlightBundleIdentifier";
    v45 = v184;
    sub_21AEA78A8(v184, v206);
    v46 = [v33 rawSignalsConfiguration];
    v47 = [v46 bundleIdentifier];

    v182 = sub_21AF097CC();
    v49 = v48;

    v43 = v208;
    v50 = [v208 sessionId];
    v51 = sub_21AF097CC();
    v53 = v52;

    v207 = sub_21AEA9420(v45, v41, 0xD000000000000012, v183 | 0x8000000000000000, 0xD00000000000002ALL, v207 | 0x8000000000000000, 0x800000021AF10EA0, v49, v44, 0xD000000000000010, 0x800000021AF10EA0, v51, v53, v39);
    v42 = v54;
    sub_21AEB37D4(v45, v41);
  }

  v55 = sub_21AEF750C([v205 mainBundle]);
  v57 = v56;
  v58 = sub_21AEB3760(v43);
  v206 = v42;
  if (!v58)
  {
    v65 = v42;
    sub_21AEA7574(&unk_27CD3D820, &qword_21AF0C5A0);
    v66 = swift_initStackObject();
    *(v66 + 16) = v204;
    *(v66 + 32) = 0x72756769666E6F63;
    *(v66 + 40) = 0xEF64496E6F697461;
    v67 = sub_21AF05990();
    v68 = [v67 configurationId];

    v69 = sub_21AF097CC();
    v71 = v70;

    *(v66 + 48) = v69;
    *(v66 + 56) = v71;
    *(v66 + 64) = 0xD000000000000012;
    *(v66 + 72) = 0x800000021AF0EB20;
    *(v66 + 80) = v207;
    *(v66 + 88) = v42;

    v72 = sub_21AF0974C();
    if (v57)
    {
      swift_isUniquelyReferenced_nonNull_native();
      *&v213 = v72;
      sub_21AF05204();
      v72 = v213;
    }

    v73 = sub_21AEB3AD8();
    v74 = sub_21AF097CC();
    v76 = v75;

    sub_21AF005F0(v72);
    v78 = v77;

    v79 = objc_allocWithZone(AMLFeaturesDonationMetadata);
    v80 = sub_21AEE0BB4(v74, v76, v78);
    if (v80)
    {
LABEL_34:
      v110 = objc_opt_self();
      *&v213 = 0;
      v111 = [v110 archivedDataWithRootObject:v80 requiringSecureCoding:1 error:&v213];
      v112 = v213;
      if (v111)
      {
        v113 = sub_21AF0932C();
        v115 = v114;

        v116 = sub_21AEB3980();
        if (MEMORY[0x21CEE45A0](v116) > 0)
        {
LABEL_43:
          v137 = dispatch_group_create();
          v205 = v137;
          v203 = v115;
          v185 = v113;
          v184 = v80;
          if (v115 >> 60 != 15)
          {
            v138 = v137;
            v183 = "contentCreationDate";
            v208 = "s for itemId: %{public}s";
            v139 = sub_21AEB3980();
            sub_21AEA78A8(v139, v140);
            v141 = [v210 rawSignalsConfiguration];
            v142 = [v141 bundleIdentifier];

            v182 = sub_21AF097CC();
            v144 = v143;

            v145 = [v80 v65[83]];
            v146 = sub_21AF097CC();
            v148 = v147;

            v184 = v148;
            v185 = v138;
            v182 = 0x800000021AF0F420;
            v183 = v146;
            v181 = v209;
            v149 = sub_21AEB3980();
            sub_21AEA9420(v149, v150, v151, v152, v153, v154, v182, v144, v181, 0xD000000000000011, v182, v183, v184, v185);
            v155 = sub_21AEB3980();
            sub_21AEB37D4(v155, v156);
          }

          v157 = v202;
          v158 = v200;
          v159 = v191;
          v160 = v190;
          v161 = objc_allocWithZone(AMLRawSignalsDonationStatus);
          v162 = v158;
          sub_21AEB398C();
          v208 = sub_21AF04F5C(v163, v164, v165, v166, v167, v157, v162);
          sub_21AF09AFC();
          v168 = v194;
          v169 = v159;
          v170 = v196;
          v160(v194, v169, v196);
          v171 = swift_allocObject();
          *(v171 + 16) = v204;
          v172 = MEMORY[0x277D837D0];
          v173 = v192;
          *(v171 + 56) = MEMORY[0x277D837D0];
          *(v171 + 64) = v173;
          v174 = v186;
          *(v171 + 32) = v187;
          *(v171 + 40) = v174;
          v175 = [v210 rawSignalsConfiguration];
          v176 = [v175 configurationId];

          v177 = sub_21AF097CC();
          v179 = v178;

          *(v171 + 96) = v172;
          *(v171 + 104) = v173;
          *(v171 + 72) = v177;
          *(v171 + 80) = v179;
          sub_21AEB3A6C();
          v186 = 56;
          sub_21AF0967C();

          v180 = v184;

          sub_21AEB37D4(v185, v203);

          v188(v168, v170);
          (*(v198 + 8))(v209, v199);
LABEL_46:
          sub_21AEC79F0();
          return;
        }

        v117 = sub_21AEB3980();
        sub_21AEA7900(v117, v118);
      }

      else
      {
        v119 = v112;
        v120 = sub_21AF0927C();

        swift_willThrow();
        if (qword_2812288C8 != -1)
        {
          sub_21AEAFA7C(&qword_2812288C8);
        }

        v121 = sub_21AF096CC();
        sub_21AEA7958(v121, qword_2812288F8);
        v122 = v210;
        v123 = v120;
        v124 = sub_21AF096AC();
        v125 = sub_21AF09A9C();

        if (os_log_type_enabled(v124, v125))
        {
          swift_slowAlloc();
          v126 = sub_21AEB3A1C();
          v127 = sub_21AEB39C8();
          *&v213 = v127;
          *v120 = 136315394;
          v128 = [v122 (v41 + 3031)];
          v129 = [v128 bundleIdentifier];

          v130 = sub_21AF097CC();
          v132 = v131;

          v133 = sub_21AECFFFC(v130, v132, &v213);

          *(v120 + 1) = v133;
          *(v120 + 6) = 2112;
          v134 = v120;
          v135 = _swift_stdlib_bridgeErrorToNSError();
          *(v120 + 14) = v135;
          *v126 = v135;
          sub_21AF058E4(&dword_21AE94000, v136, v125, "Encountered error from bundle: %s while archiving AMLFeaturesDonationMetadata: %@");
          sub_21AEA7990(v126, &qword_27CD3DF30, &qword_21AF0C0F0);
          v65 = &property descriptor for AMLProportionalAllocationSelector.identifier;
          sub_21AEAFB90();
          sub_21AEA79F0(v127);
          sub_21AEAFB90();
          sub_21AEAFB90();
        }

        else
        {
        }
      }

      v113 = 0;
      v115 = 0xF000000000000000;
      goto LABEL_43;
    }

LABEL_20:

    if (qword_2812288C8 != -1)
    {
      sub_21AEAFA7C(&qword_2812288C8);
    }

    v81 = sub_21AF096CC();
    sub_21AEA7958(v81, qword_2812288F8);
    v82 = v210;
    v83 = sub_21AF096AC();
    v84 = sub_21AF09A9C();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = sub_21AEB39C8();
      *&v213 = v86;
      *v85 = 136315138;
      v87 = [v82 (v41 + 3031)];
      v88 = [v87 bundleIdentifier];

      v89 = sub_21AF097CC();
      v91 = v90;

      v92 = sub_21AECFFFC(v89, v91, &v213);

      *(v85 + 4) = v92;
      _os_log_impl(&dword_21AE94000, v83, v84, "Donation Metadata is nil from bundleId: %s", v85, 0xCu);
      sub_21AEA79F0(v86);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    v93 = v209;
    v94 = v202;
    v95 = v200;
    objc_allocWithZone(AMLRawSignalsDonationStatus);
    sub_21AEB398C();
    v208 = sub_21AF04F5C(v96, v97, v98, v99, v100, v94, v95);
    (*(v198 + 8))(v93, v199);
    goto LABEL_46;
  }

  v59 = sub_21AEB3760(v43);
  v60 = sub_21AF05990();
  v61 = [v60 configurationId];

  v62 = sub_21AF097CC();
  v214 = MEMORY[0x277D837D0];
  *&v213 = v62;
  *(&v213 + 1) = v63;
  if (!v59)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v214)
  {
    sub_21AEAF9F4(&v213, v212);
    swift_isUniquelyReferenced_nonNull_native();
    v64 = sub_21AEB3A94();
    sub_21AF05048(v64, 0x72756769666E6F63, 0xEF64496E6F697461);
    v59 = v211;
    v65 = 0xD000000000000012;
  }

  else
  {
    sub_21AEA7990(&v213, &qword_27CD3D330, &unk_21AF0C420);
    v101 = sub_21AED0594(0x72756769666E6F63, 0xEF64496E6F697461);
    v65 = 0xD000000000000012;
    if (v102)
    {
      v103 = v101;
      swift_isUniquelyReferenced_nonNull_native();
      v211 = v59;
      sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
      sub_21AF09D0C();
      v59 = v211;

      sub_21AEAF9F4((*(v59 + 56) + 32 * v103), v212);
      sub_21AF09D2C();
    }

    else
    {
      memset(v212, 0, sizeof(v212));
    }

    sub_21AEA7990(v212, &qword_27CD3D330, &unk_21AF0C420);
  }

  v214 = MEMORY[0x277D837D0];
  *&v213 = v207;
  *(&v213 + 1) = v42;
  if (!v59)
  {
    goto LABEL_48;
  }

  sub_21AEAF9F4(&v213, v212);

  swift_isUniquelyReferenced_nonNull_native();
  v104 = sub_21AEB3A94();
  sub_21AF05048(v104, 0xD000000000000012, 0x800000021AF0EB20);
  v105 = v211;
  if (!v57)
  {
    goto LABEL_33;
  }

  v214 = MEMORY[0x277D837D0];
  *&v213 = v55;
  *(&v213 + 1) = v57;
  if (v211)
  {
    sub_21AEAF9F4(&v213, v212);
    swift_isUniquelyReferenced_nonNull_native();
    v211 = v105;
    sub_21AF05048(v212, 0xD000000000000019, 0x800000021AF0F440);
    v105 = v211;
LABEL_33:
    v106 = sub_21AEB3AD8();
    v107 = sub_21AF097CC();
    v109 = v108;

    objc_allocWithZone(AMLFeaturesDonationMetadata);

    v80 = sub_21AEE0BB4(v107, v109, v105);

    if (v80)
    {
      goto LABEL_34;
    }

    goto LABEL_20;
  }

LABEL_49:
  __break(1u);
}

void sub_21AF0419C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_21AF05954();
  a23 = v25;
  a24 = v26;
  v27 = v24;
  v29 = v28;
  a12 = *MEMORY[0x277D85DE8];
  v30 = objc_opt_self();
  a11 = 0;
  v31 = [v30 archivedDataWithRootObject:v29 requiringSecureCoding:0 error:&a11];
  v32 = a11;
  if (v31)
  {
    sub_21AF0932C();

    v33 = sub_21AEB3AB4();
    if (MEMORY[0x21CEE45A0](v33) <= 0)
    {
      v34 = sub_21AEB3AB4();
      sub_21AEA7900(v34, v35);
    }
  }

  else
  {
    v36 = v32;
    v37 = sub_21AF0927C();

    swift_willThrow();
    if (qword_2812288C8 != -1)
    {
      sub_21AEAFA7C(&qword_2812288C8);
    }

    v38 = sub_21AF096CC();
    sub_21AEA7958(v38, qword_2812288F8);
    v39 = v27;
    v40 = v37;
    v41 = sub_21AF096AC();
    v42 = sub_21AF09A9C();

    if (os_log_type_enabled(v41, v42))
    {
      swift_slowAlloc();
      v43 = sub_21AEB3A1C();
      v53 = sub_21AEB39C8();
      a11 = v53;
      *v37 = 136315394;
      v44 = [v39 rawSignalsConfiguration];
      v45 = [v44 bundleIdentifier];

      v46 = sub_21AF097CC();
      v48 = v47;

      sub_21AECFFFC(v46, v48, &a11);

      sub_21AF05970();
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 14) = v49;
      *v43 = v49;
      sub_21AF058E4(&dword_21AE94000, v50, v42, "Encountered error from bundle: %s while archiving FeaturesDonation: %@");
      sub_21AEA7990(v43, &qword_27CD3DF30, &qword_21AF0C0F0);
      sub_21AEAFB90();
      sub_21AEA79F0(v53);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    else
    {
    }
  }

  sub_21AEB3AB4();
  sub_21AF02E8C();
  v51 = sub_21AEB3AB4();
  sub_21AEB37D4(v51, v52);
  sub_21AF05938();
}

void sub_21AF04510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_21AF05954();
  a23 = v25;
  a24 = v26;
  v27 = v24;
  a12 = *MEMORY[0x277D85DE8];
  v28 = objc_opt_self();
  sub_21AEA7574(&qword_27CD3D830, &qword_21AF0C488);
  sub_21AEEF478();
  v29 = sub_21AF0987C();
  a11 = 0;
  v30 = [v28 archivedDataWithRootObject:v29 requiringSecureCoding:0 error:&a11];

  v31 = a11;
  if (v30)
  {
    sub_21AF0932C();

    v32 = sub_21AEB3AB4();
    if (MEMORY[0x21CEE45A0](v32) <= 0)
    {
      v33 = sub_21AEB3AB4();
      sub_21AEA7900(v33, v34);
    }
  }

  else
  {
    v35 = v31;
    v36 = sub_21AF0927C();

    swift_willThrow();
    if (qword_2812288C8 != -1)
    {
      sub_21AEAFA7C(&qword_2812288C8);
    }

    v37 = sub_21AF096CC();
    sub_21AEA7958(v37, qword_2812288F8);
    v38 = v27;
    v39 = v36;
    v40 = sub_21AF096AC();
    v41 = sub_21AF09A9C();

    if (os_log_type_enabled(v40, v41))
    {
      swift_slowAlloc();
      v42 = sub_21AEB3A1C();
      v52 = sub_21AEB39C8();
      a11 = v52;
      *v36 = 136315394;
      v43 = [v38 rawSignalsConfiguration];
      v44 = [v43 bundleIdentifier];

      v45 = sub_21AF097CC();
      v47 = v46;

      sub_21AECFFFC(v45, v47, &a11);

      sub_21AF05970();
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v48;
      *v42 = v48;
      sub_21AF058E4(&dword_21AE94000, v49, v41, "Encountered error from bundle: %s while archiving features dictionary donation: %@");
      sub_21AEA7990(v42, &qword_27CD3DF30, &qword_21AF0C0F0);
      sub_21AEAFB90();
      sub_21AEA79F0(v52);
      sub_21AEAFB90();
      sub_21AEAFB90();
    }

    else
    {
    }
  }

  sub_21AEB3AB4();
  sub_21AF02E8C();
  v50 = sub_21AEB3AB4();
  sub_21AEB37D4(v50, v51);
  sub_21AF05938();
}

uint64_t AMLRawSignalsConfiguration.description.getter()
{
  v1 = v0;
  sub_21AF09C5C();
  sub_21AF05918();
  MEMORY[0x21CEE4A70]();
  v2 = [v0 bundleIdentifier];
  sub_21AF097CC();
  sub_21AEB3AC0();

  v3 = sub_21AEB3AA8();
  MEMORY[0x21CEE4A70](v3);

  MEMORY[0x21CEE4A70](0x6C65646F6D09090ALL, 0xEE00203A656D614ELL);
  v4 = sub_21AEEF25C(v1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v4 = 7104878;
    v6 = 0xE300000000000000;
  }

  MEMORY[0x21CEE4A70](v4, v6);

  MEMORY[0x21CEE4A70](0x697372657609090ALL, 0xEE00203A64496E6FLL);
  v7 = [v1 versionId];
  sub_21AF097CC();
  sub_21AEB3AC0();

  v8 = sub_21AEB3AA8();
  MEMORY[0x21CEE4A70](v8);

  sub_21AF05918();
  MEMORY[0x21CEE4A70]();
  [v1 expirationPolicy];
  v9 = sub_21AF09E1C();
  MEMORY[0x21CEE4A70](v9);

  sub_21AF05918();
  MEMORY[0x21CEE4A70]();
  v10 = [v1 rawSignalsDescription];
  v11 = [v10 description];
  v12 = sub_21AF097CC();
  v14 = v13;

  MEMORY[0x21CEE4A70](v12, v14);

  sub_21AF05918();
  MEMORY[0x21CEE4A70](0xD000000000000014);
  v15 = [v1 configurationId];
  sub_21AF097CC();
  sub_21AEB3AC0();

  v16 = sub_21AEB3AA8();
  MEMORY[0x21CEE4A70](v16);

  return 0;
}

id sub_21AF04C34(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_21AF097BC();

  return v5;
}

uint64_t AMLRawSignalsDonation.description.getter()
{
  sub_21AF09C5C();
  MEMORY[0x21CEE4A70](0xD000000000000031, 0x800000021AF10CC0);
  v1 = [v0 rawSignalsConfiguration];
  v2 = [v1 description];
  sub_21AF097CC();
  sub_21AEB3AC0();

  v3 = sub_21AEB3AA8();
  MEMORY[0x21CEE4A70](v3);

  return 0;
}

uint64_t static AMLRawSignalsDonation.decodeModelData(from:)(uint64_t a1, uint64_t a2)
{
  sub_21AEA7B80(0, &unk_27CD3D410, 0x277CCAAC8);
  sub_21AEA7574(&qword_27CD3DE20, qword_21AF0C0F8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21AF0D840;
  *(v3 + 32) = sub_21AEA7B80(0, &unk_27CD3D420, 0x277CCACA8);
  *(v3 + 40) = sub_21AEA7B80(0, &unk_2812287F0, 0x277CCABB0);
  v4 = sub_21AEA7B80(0, &qword_27CD3D430, 0x277CBEA60);
  *(v3 + 48) = v4;
  *(v3 + 56) = type metadata accessor for AMLRawSignalsDonation(v4);
  v5 = type metadata accessor for AMLFeaturesSpecification(0);
  *(v3 + 64) = v5;
  *(v3 + 72) = type metadata accessor for AMLRawSignalsConfiguration(v5);
  *(v3 + 80) = sub_21AEA7B80(0, &qword_281228800, 0x277CBFEE0);
  *(v3 + 88) = sub_21AEA7B80(0, &qword_27CD3DE28, 0x277CBFED0);
  sub_21AF09ABC();

  if (!v2)
  {
    if (v7[3])
    {
      sub_21AEA7574(&unk_27CD3DE90, &unk_21AF0C440);
      if (swift_dynamicCast())
      {
        return v7[5];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_21AEA7990(v7, &qword_27CD3D330, &unk_21AF0C420);
      return 0;
    }
  }

  return result;
}

id sub_21AF04F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v9 = sub_21AF097BC();

  v10 = sub_21AF097BC();

  v11 = sub_21AF097BC();

  v12 = [v7 initWithMetadataDonationId:v9 rawSignalsDonationId:v10 configurationDonationId:v11 group:a7];

  return v12;
}

void sub_21AF05048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21AF05828(a1, a2, a3);
  sub_21AF05774();
  if (v8)
  {
    __break(1u);
LABEL_14:
    sub_21AF09E7C();
    __break(1u);
    return;
  }

  sub_21AF05900();
  v9 = sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
  if (sub_21AF057D8(v9))
  {
    v10 = sub_21AF0590C();
    sub_21AED0594(v10, v4);
    sub_21AF057F8();
    if (!v12)
    {
      goto LABEL_14;
    }

    v7 = v11;
  }

  if (v6)
  {
    sub_21AEA79F0((*(*v5 + 56) + 32 * v7));
    sub_21AEC76A0();
    sub_21AF05924();

    sub_21AEAF9F4(v13, v14);
  }

  else
  {
    v16 = sub_21AEE9FB8();
    sub_21AF05618(v16, v17, v4, v3, v18);
    sub_21AF05924();
  }
}

void sub_21AF05134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21AF05858(a1, a2, a3);
  sub_21AF05774();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_21AF09E7C();
    __break(1u);
    return;
  }

  sub_21AF05900();
  v9 = sub_21AEA7574(&qword_27CD3DF60, &unk_21AF0C9C0);
  if (sub_21AF057D8(v9))
  {
    v10 = sub_21AF0590C();
    sub_21AED0594(v10, v3);
    sub_21AF057F8();
    if (!v12)
    {
      goto LABEL_12;
    }

    v7 = v11;
  }

  if (v6)
  {
    *(*(*v5 + 56) + 8 * v7) = v4;
    sub_21AF05924();
  }

  else
  {
    v13 = sub_21AEE9FB8();
    sub_21AF0565C(v13, v14, v3, v4, v15);
    sub_21AF05924();
  }
}

void sub_21AF05204()
{
  sub_21AEC7AE8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_21AED0594(v3, v1);
  sub_21AF05774();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  sub_21AEA7574(&qword_27CD3DF38, &qword_21AF0D850);
  if ((sub_21AF09D0C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_21AED0594(v4, v2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_21AF09E7C();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v0;
  if (v13)
  {
    v17 = (v16[7] + 16 * v12);
    *v17 = v8;
    v17[1] = v6;
    sub_21AEC79F0();
  }

  else
  {
    sub_21AF05688(v12, v4, v2, v8, v6, v16);
    sub_21AEC79F0();
  }
}

void sub_21AF05348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21AF05828(a1, a2, a3);
  sub_21AF05774();
  if (v8)
  {
    __break(1u);
LABEL_12:
    sub_21AF09E7C();
    __break(1u);
    return;
  }

  sub_21AF05900();
  v9 = sub_21AEA7574(&qword_27CD3DF70, &qword_21AF0CE90);
  if (sub_21AF057D8(v9))
  {
    v10 = sub_21AF0590C();
    sub_21AED0594(v10, v4);
    sub_21AF057F8();
    if (!v12)
    {
      goto LABEL_12;
    }

    v7 = v11;
  }

  if (v6)
  {
    v13 = (*(*v5 + 56) + (v7 << 6));
    v14 = v3[1];
    *v13 = *v3;
    v13[1] = v14;
    v15 = v3[3];
    v13[2] = v3[2];
    v13[3] = v15;
    sub_21AF05924();
  }

  else
  {
    v16 = sub_21AEE9FB8();
    sub_21AF056D4(v16, v17, v4, v3, v18);
    sub_21AF05924();
  }
}

void sub_21AF0543C()
{
  sub_21AEC7AE8();
  v6 = v5;
  v8 = v7;
  sub_21AF05858(v9, v10, v11);
  sub_21AF05774();
  if (v12)
  {
    __break(1u);
LABEL_14:
    sub_21AF09E7C();
    __break(1u);
    return;
  }

  sub_21AF05900();
  v13 = sub_21AEA7574(v8, v6);
  if (sub_21AF057D8(v13))
  {
    v14 = sub_21AF0590C();
    sub_21AED0594(v14, v0);
    sub_21AF057F8();
    if (!v16)
    {
      goto LABEL_14;
    }

    v4 = v15;
  }

  if (v3)
  {
    *(*(*v2 + 56) + 8 * v4) = v1;
    sub_21AEC79F0();
  }

  else
  {
    v18 = sub_21AEE9FB8();
    sub_21AF0565C(v18, v19, v0, v1, v20);
    sub_21AEC79F0();
  }
}

void sub_21AF0551C(uint64_t a1, uint64_t a2, char a3)
{
  sub_21AED0608(a2);
  sub_21AF05774();
  if (v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v6;
  v10 = v7;
  sub_21AEA7574(&qword_27CD3DF80, &qword_21AF0CE98);
  if ((sub_21AF09D0C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_21AED0608(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_11:
    sub_21AF09E7C();
    __break(1u);
    return;
  }

  v9 = v11;
LABEL_5:
  if (v10)
  {
    *(*(*v3 + 56) + 8 * v9) = a1;
    sub_21AF05924();
  }

  else
  {
    sub_21AF05924();

    sub_21AF05710(v13, v14, v15, v16);
  }
}

_OWORD *sub_21AF05618(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_21AF05788(a1, a2, a3, a4, a5);
  result = sub_21AEAF9F4(v8, (v7 + 32 * v6));
  v10 = *(a5 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v12;
  }

  return result;
}

void sub_21AF0565C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_21AF05788(a1, a2, a3, a4, a5);
  *(v8 + 8 * v5) = v7;
  v9 = *(v6 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_21AF058DC(v6, v11);
  }
}

unint64_t sub_21AF05688(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void sub_21AF056D4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_21AF05788(a1, a2, a3, a4, a5);
  v8 = (v7 + (v5 << 6));
  v10 = v9[1];
  *v8 = *v9;
  v8[1] = v10;
  v11 = v9[3];
  v8[2] = v9[2];
  v8[3] = v11;
  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    sub_21AF058DC(v6, v14);
  }
}

unint64_t sub_21AF05710(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_21AF05788(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_21AF057B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_21AF057D8(uint64_t a1)
{

  return sub_21AF09D0C();
}

unint64_t sub_21AF05828(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_21AED0594(a2, a3);
}

unint64_t sub_21AF05858(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_21AED0594(a2, a3);
}

uint64_t sub_21AF05888()
{

  return sub_21AF097BC();
}

void sub_21AF058E4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

id sub_21AF05970()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2112;

  return v1;
}

id sub_21AF05990()
{
  v2 = *(v0 - 296);

  return [v2 rawSignalsConfiguration];
}

uint64_t AMLDropDuplicateCandidatesSelector.select(context:candidates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[8] = AssociatedTypeWitness;
  v5[9] = *(AssociatedTypeWitness - 8);
  v5[10] = swift_task_alloc();
  v7 = swift_getAssociatedTypeWitness();
  v5[11] = v7;
  v10 = type metadata accessor for AMLCandidateWithFeatures(255, v7, v8, v9);
  v5[12] = v10;
  v11 = sub_21AF09B7C();
  v5[13] = v11;
  v5[14] = *(v11 - 8);
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v12 = *(v10 - 8);
  v5[22] = v12;
  v5[23] = *(v12 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21AF05C48);
}

uint64_t sub_21AF05C48()
{
  swift_getTupleTypeMetadata2();
  sub_21AF098EC();
  swift_getAssociatedConformanceWitness();
  sub_21AF0974C();
  sub_21AF063E8();
  v1 = sub_21AF0989C();
  v51 = v1;
  sub_21AF063E8();
  if (v1 != sub_21AF0992C())
  {
    v2 = v0[22];
    v37 = v0[23];
    v3 = v0[18];
    v49 = (v2 + 16);
    v4 = (v2 + 32);
    v48 = (v3 + 16);
    v39 = (v0[6] + 40);
    v40 = (v0[9] + 8);
    v46 = (v2 + 8);
    v44 = v2;
    v45 = (v3 + 8);
    v38 = (v0[14] + 8);
    v43 = (v2 + 32);
    do
    {
      v5 = sub_21AF0990C();
      sub_21AF098BC();
      if (v5)
      {
        v47 = *(v44 + 16);
        v47(v0[26], v0[4] + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v1, v0[12]);
      }

      else
      {
        result = sub_21AF09C7C();
        if (v37 != 8)
        {
          __break(1u);
          return result;
        }

        v32 = result;
        v33 = v0[26];
        v34 = v0[12];
        v0[2] = v32;
        v47 = *v49;
        (*v49)(v33, (v0 + 2), v34);
        swift_unknownObjectRelease();
      }

      v7 = v0[25];
      v6 = v0[26];
      v8 = v0[17];
      v9 = v0[12];
      sub_21AF0996C();
      v10 = *v4;
      (*v4)(v7, v6, v9);
      v11 = *v48;
      v12 = sub_21AF063E8();
      v11(v12);
      sub_21AF063E8();
      sub_21AF0978C();
      v13 = sub_21AEA766C(v8, 1, v9);
      v50 = v0[25];
      v15 = v0[11];
      v14 = v0[12];
      if (v13 == 1)
      {
        v16 = v0[21];
        v17 = v0[19];
        v18 = v0[15];
        (*v38)(v0[17], v0[13]);
        (v11)(v17, v16, v15);
        v47(v18, v50, v14);
        sub_21AEA75BC(v18, 0, 1, v14);
        sub_21AF0977C();
        sub_21AF0979C();
        (*v45)(v16, v15);
        (*v46)(v50, v14);
      }

      else
      {
        v20 = v0[20];
        v19 = v0[21];
        v41 = v0[8];
        v42 = v0[24];
        v22 = v0[5];
        v21 = v0[6];
        v10();
        (v11)(v20, v19, v15);
        (*v39)(v22, v21);
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        (*(AssociatedConformanceWitness + 16))(v42, v50, v41, AssociatedConformanceWitness);
        v25 = v0[24];
        v24 = v0[25];
        v26 = v0[21];
        v27 = v0[16];
        v29 = v0[11];
        v28 = v0[12];
        (*v40)(v0[10], v0[8]);
        sub_21AEA75BC(v27, 0, 1, v28);
        sub_21AF0977C();
        sub_21AF0979C();
        v30 = *v46;
        (*v46)(v25, v28);
        (*v45)(v26, v29);
        v30(v24, v28);
      }

      v1 = v51;
      v4 = v43;
    }

    while (v51 != sub_21AF0992C());
  }

  v0[3] = sub_21AF0976C();
  sub_21AF0975C();
  swift_getWitnessTable();
  v35 = sub_21AF0998C();

  v36 = v0[1];

  return v36(v35);
}

uint64_t AMLCandidateSourceIdentifier.__allocating_init(name:)(unint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLCandidateSourceIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLCandidateSourceIdentifier.init(name:)(unint64_t a1, unint64_t a2)
{
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0x74616469646E6143;
    v2[3] = 0xEF656372756F5365;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v5 = 0xD000000000000024;
    *(v5 + 8) = 0x800000021AF10F30;
    *(v5 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t AMLCandidateSourceIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t MLFeatureProvider.merging(other:uniquingKeysWith:)(uint64_t a1)
{
  v2 = sub_21AEAD0E0();
  swift_getObjectType();
  v3 = sub_21AEAD0E0();
  v4 = sub_21AF06F3C(v3, v2);
  v5 = objc_allocWithZone(MEMORY[0x277CBFED0]);
  result = sub_21AF07524(v4);
  if (v1)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_21AF066D4()
{
  v36 = sub_21AF0948C();
  sub_21AEA7C90();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  sub_21AEC7554();
  v5 = v4 - v3;
  v35 = sub_21AF0945C();
  sub_21AEA7C90();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_21AEC7554();
  v11 = v10 - v9;
  v12 = sub_21AF094BC();
  sub_21AEA7C90();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_21AEC7554();
  v18 = v17 - v16;
  sub_21AF094AC();
  sub_21AF0944C();
  sub_21AF0947C();
  if (qword_27CD3D2B8 != -1)
  {
    sub_21AF08564(&qword_27CD3D2B8);
  }

  v19 = qword_27CD3EC18;
  v20 = sub_21AF0946C();
  v21 = sub_21AF08584();
  [v21 v22];

  v23 = sub_21AF0943C();
  v24 = sub_21AF08584();
  [v24 v25];

  v26 = sub_21AF0949C();
  v27 = sub_21AF08584();
  [v27 v28];

  [v19 setDateStyle_];
  [v19 setTimeStyle_];
  v29 = sub_21AF0939C();
  v30 = sub_21AF08584();
  v32 = [v30 v31];

  v33 = sub_21AF097CC();
  (*(v1 + 8))(v5, v36);
  (*(v7 + 8))(v11, v35);
  (*(v14 + 8))(v18, v12);
  return v33;
}

uint64_t sub_21AF069A0()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_27CD3EC00);
  sub_21AEA7958(v0, qword_27CD3EC00);
  return sub_21AF096BC();
}

id sub_21AF06A20()
{
  result = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  qword_27CD3EC18 = result;
  return result;
}

uint64_t Date.localizedDescription(date:time:in:locale:using:)(uint64_t a1, uint64_t a2)
{
  if (qword_27CD3D2B8 != -1)
  {
    sub_21AF08564(&qword_27CD3D2B8);
  }

  v4 = qword_27CD3EC18;
  v5 = sub_21AF0946C();
  [v4 setCalendar_];

  v6 = sub_21AF0943C();
  [v4 setLocale_];

  v7 = sub_21AF0949C();
  [v4 setTimeZone_];

  [v4 setDateStyle_];
  [v4 setTimeStyle_];
  v8 = sub_21AF0939C();
  v9 = [v4 stringFromDate_];

  v10 = sub_21AF097CC();
  return v10;
}

unint64_t MLFeatureProvider.customDescription.getter()
{
  v1 = v0;
  v2 = [v0 featureNames];
  v3 = sub_21AF099DC();

  v4 = sub_21AF06E58(v3);

  v5 = v4[2];
  if (v5)
  {
    v6 = v4 + 5;
    v7 = MEMORY[0x277D84F90];
    do
    {
      v8 = *(v6 - 1);
      v9 = *v6;

      v10 = sub_21AF097BC();
      v11 = [v1 featureValueForName_];

      if (v11)
      {
        v29 = v8;
        v30 = v9;
        MEMORY[0x21CEE4A70](8250, 0xE200000000000000);
        v12 = [v11 description];
        v13 = sub_21AF097CC();
        v15 = v14;

        MEMORY[0x21CEE4A70](v13, v15);

        v16 = v29;
        v17 = v30;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21AF085B4();
          v7 = v21;
        }

        v18 = *(v7 + 16);
        v19 = v18 + 1;
        if (v18 >= *(v7 + 24) >> 1)
        {
          sub_21AF08590();
          v7 = v22;
        }
      }

      else
      {
        v31 = v9;
        MEMORY[0x21CEE4A70](0x6C696E203ALL, 0xE500000000000000);
        v16 = v8;
        v17 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21AF085B4();
          v7 = v23;
        }

        v18 = *(v7 + 16);
        v19 = v18 + 1;
        if (v18 >= *(v7 + 24) >> 1)
        {
          sub_21AF08590();
          v7 = v24;
        }
      }

      *(v7 + 16) = v19;
      v20 = v7 + 16 * v18;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  sub_21AEA7574(&qword_27CD3D880, &qword_21AF0C650);
  sub_21AF0760C();
  v25 = sub_21AF097AC();
  v27 = v26;

  MEMORY[0x21CEE4A70](v25, v27);

  MEMORY[0x21CEE4A70](32010, 0xE200000000000000);

  return 0xD000000000000016;
}

void *sub_21AF06E58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_21AEACC54();
  sub_21AEF79F8(&v8, (v3 + 4), v1, a1);
  v5 = v4;
  v6 = v8;

  sub_21AE96764(v6);
  if (v5 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v8 = v3;
  sub_21AF07980(&v8);
  return v8;
}

uint64_t sub_21AF06F3C(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_21AF07750(a1, sub_21AF07718, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

Swift::Double __swiftcall MLFeatureProvider.doubleFeatureValue(featureName:withDefaultValue:)(Swift::String featureName, Swift::Double withDefaultValue)
{
  v3 = [objc_opt_self() featureValueWithDouble_];
  v4 = sub_21AF097BC();
  v5 = [v2 featureValueForName_];

  if (!v5)
  {
    v5 = v3;
  }

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

Swift::String __swiftcall MLFeatureProvider.stringFeatureValue(featureName:withDefaultValue:)(Swift::String featureName, Swift::String withDefaultValue)
{
  v3 = v2;
  countAndFlagsBits = withDefaultValue._countAndFlagsBits;
  sub_21AF07670();

  v5 = sub_21AF07168(countAndFlagsBits);
  v6 = sub_21AF097BC();
  v7 = [v3 featureValueForName_];

  if (!v7)
  {
    v7 = v5;
  }

  v8 = [v7 stringValue];

  v9 = sub_21AF097CC();
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result._object = v13;
  result._countAndFlagsBits = v12;
  return result;
}

id sub_21AF07168(uint64_t a1)
{
  v1 = sub_21AF097BC();

  v2 = [swift_getObjCClassFromMetadata() featureValueWithString_];

  return v2;
}

uint64_t sub_21AF071CC()
{
  v36 = sub_21AF0948C();
  sub_21AEA7C90();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  sub_21AEC7554();
  v5 = v4 - v3;
  v35 = sub_21AF0945C();
  sub_21AEA7C90();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_21AEC7554();
  v11 = v10 - v9;
  v12 = sub_21AF094BC();
  sub_21AEA7C90();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_21AEC7554();
  v18 = v17 - v16;
  sub_21AF094AC();
  sub_21AF0944C();
  sub_21AF0947C();
  if (qword_27CD3D2B8 != -1)
  {
    sub_21AF08564(&qword_27CD3D2B8);
  }

  v19 = qword_27CD3EC18;
  v20 = sub_21AF0946C();
  v21 = sub_21AF08584();
  [v21 v22];

  v23 = sub_21AF0943C();
  v24 = sub_21AF08584();
  [v24 v25];

  v26 = sub_21AF0949C();
  v27 = sub_21AF08584();
  [v27 v28];

  [v19 setDateStyle_];
  [v19 setTimeStyle_];
  v29 = sub_21AF0939C();
  v30 = sub_21AF08584();
  v32 = [v30 v31];

  v33 = sub_21AF097CC();
  (*(v1 + 8))(v5, v36);
  (*(v7 + 8))(v11, v35);
  (*(v14 + 8))(v18, v12);
  return v33;
}

id sub_21AF07498(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AMLUtilities();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_21AF074F0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AMLUtilities();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21AF07524(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_21AF0971C();

  v7[0] = 0;
  v3 = [v1 initWithDictionary:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_21AF0927C();

    swift_willThrow();
  }

  return v3;
}

unint64_t sub_21AF0760C()
{
  result = qword_27CD3DA20;
  if (!qword_27CD3DA20)
  {
    sub_21AEAF7F0(&qword_27CD3D880, &qword_21AF0C650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD3DA20);
  }

  return result;
}

unint64_t sub_21AF07670()
{
  result = qword_27CD3DF88;
  if (!qword_27CD3DF88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD3DF88);
  }

  return result;
}

uint64_t sub_21AF076D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21AEA784C(a4, a1);

  return a2;
}

uint64_t sub_21AF07718@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21AF076D8((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21AF07750(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_21AF08380(a1, a2, a3, v34);
  v30 = v34[0];
  v31 = v34[1];
  v32 = v34[2];
  v33 = v35;

  while (1)
  {
    sub_21AF083BC(&v28);
    v7 = *(&v28 + 1);
    if (!*(&v28 + 1))
    {
      sub_21AE96764(v30);
    }

    v8 = v28;
    sub_21AEAF9F4(&v29, v27);
    v9 = *a5;
    v11 = sub_21AED0594(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_21AEA7574(&unk_27CD3D7A0, &qword_21AF0C568);
        sub_21AF09D1C();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_21AEE1018(v14, a4 & 1);
      v16 = sub_21AED0594(v8, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

      v11 = v16;
      if (v15)
      {
LABEL_10:
        v18 = *a5;
        sub_21AEA784C(v27, v26);
        sub_21AEA79F0(v27);

        v19 = (v18[7] + 32 * v11);
        sub_21AEA79F0(v19);
        sub_21AEAF9F4(v26, v19);
        goto LABEL_14;
      }
    }

    v20 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    sub_21AEAF9F4(v27, (v20[7] + 32 * v11));
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v20[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_21AF09E7C();
  __break(1u);
  return result;
}

uint64_t sub_21AF07980(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21AEFBDD0(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_21AF079EC(v9);
  *a1 = v2;
  return result;
}

uint64_t sub_21AF079EC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21AF09E0C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_21AF098FC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21AF07BA8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_21AF07AE0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AF07AE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_21AF09E4C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21AF07BA8(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v91 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_21AF09E4C();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_21AF09E4C()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v86 = v5;
            v88 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_21AF09E4C() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v86;
            v9 = v88;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v87 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21AEAC638();
        v8 = v82;
      }

      v39 = v8[2];
      v40 = v39 + 1;
      if (v39 >= v8[3] >> 1)
      {
        sub_21AEAC638();
        v8 = v83;
      }

      v8[2] = v40;
      v41 = v8 + 4;
      v42 = &v8[2 * v39 + 4];
      *v42 = v9;
      v42[1] = v87;
      v89 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v8[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v8[4];
            v47 = v8[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_21AF081DC((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = v8[2];
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v80 - 1 - v43));
          v79[2] = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v87;
      if (v87 >= v6)
      {
        v91 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_21AF080B0(&v91, *result, a3);
LABEL_102:
}

uint64_t sub_21AF080B0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21AEFBBF8(v5, v7, v8, v9);
    v5 = result;
  }

  v17 = v4;
  *v4 = v5;
  v10 = (v5 + 16);
  for (i = *(v5 + 16); ; *v10 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v17 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v12 = (v5 + 16 * i);
    v13 = *v12;
    v14 = &v10[2 * i];
    v15 = v14[1];
    sub_21AF081DC((*a3 + 16 * *v12), (*a3 + 16 * *v14), (*a3 + 16 * v15), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v15 < v13)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v10)
    {
      goto LABEL_12;
    }

    *v12 = v13;
    v12[1] = v15;
    v16 = *v10 - i;
    if (*v10 < i)
    {
      goto LABEL_13;
    }

    i = *v10 - 1;
    result = memmove(v14, v14 + 2, 16 * v16);
  }

  *v17 = v5;
  __break(1u);
  return result;
}

uint64_t sub_21AF081DC(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_21AE9676C(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_21AF09E4C() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_21AE9676C(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_21AF09E4C() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

uint64_t sub_21AF08380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_21AF083BC(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_21AEA784C(*(v3 + 56) + 32 * v10, v17);
    *&v18 = v13;
    *(&v18 + 1) = v12;
    sub_21AEAF9F4(v17, &v19);

    v14 = *(&v18 + 1);
    v15 = v18;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v14)
    {
      v16 = v1[5];
      *&v17[0] = v15;
      *(&v17[0] + 1) = v14;
      v17[1] = v19;
      v17[2] = v20;
      v16(v17);
      sub_21AF084FC(v17);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v14 = 0;
        v15 = 0;
        v9 = 0;
        v19 = 0u;
        v20 = 0u;
        v18 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21AF084FC(uint64_t a1)
{
  v2 = sub_21AEA7574(&qword_27CD3D840, &qword_21AF0C5B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AF08564(uint64_t a1)
{

  return swift_once();
}

void sub_21AF08590()
{

  sub_21AEAC554();
}

void sub_21AF085B4()
{

  sub_21AEAC554();
}

uint64_t sub_21AF085D8()
{
  v0 = sub_21AF096CC();
  sub_21AEA7A3C(v0, qword_27CD3EC20);
  sub_21AEA7958(v0, qword_27CD3EC20);
  return sub_21AF096BC();
}

uint64_t dispatch thunk of AMLCandidateSource.get(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21AEC82B8;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of AMLCandidateSourceWithExtractedFeatures.get(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21AF088B4;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_21AF088B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AMLPipeline.requestID(context:)()
{
  v0 = sub_21AF0942C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21AF0941C();
  v4 = sub_21AF0940C();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t AMLPipeline.description.getter(uint64_t a1, uint64_t a2)
{
  sub_21AF09C5C();
  MEMORY[0x21CEE4A70](0xD000000000000016, 0x800000021AF11010);
  (*(*(*(a2 + 8) + 8) + 16))(a1, *(*(a2 + 8) + 8));
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  sub_21AF09E2C();

  return 0;
}

uint64_t dispatch thunk of AMLPipeline.process(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21AF088B4;

  return v11(a1, a2, a3, a4);
}

uint64_t AMLCandidateSelectorIdentifier.__allocating_init(name:)(unint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  AMLCandidateSelectorIdentifier.init(name:)(a1, a2);
  return v4;
}

uint64_t *AMLCandidateSelectorIdentifier.init(name:)(unint64_t a1, unint64_t a2)
{
  type metadata accessor for AMLComponentIdentifier();
  if (sub_21AEEC318(a1, a2))
  {
    v2[2] = 0xD000000000000011;
    v2[3] = 0x800000021AF11030;
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    sub_21AF09C5C();

    MEMORY[0x21CEE4A70](a1, a2);

    sub_21AEA7E80();
    swift_allocError();
    *v5 = 0xD000000000000027;
    *(v5 + 8) = 0x800000021AF0EC80;
    *(v5 + 16) = 0;
    swift_willThrow();
    swift_deallocPartialClassInstance();
  }

  return v2;
}

uint64_t AMLCandidateSelectorIdentifier.__deallocating_deinit()
{
  v0 = AMLComponentIdentifier.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t dispatch thunk of AMLCandidateSelector.select(context:candidates:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21AEC82B8;

  return v11(a1, a2, a3, a4);
}

void sub_21AF090C8(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = [a1 interactionCount];
  v6 = 2048;
  v7 = [a1 totalInteractionCount];
  _os_log_debug_impl(&dword_21AE94000, a2, OS_LOG_TYPE_DEBUG, "shareInformationForPhotoId is (%lu/%lu)", &v4, 0x16u);
}

void sub_21AF0918C(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [a1 localizedDescription];
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&dword_21AE94000, a2, OS_LOG_TYPE_ERROR, "Encountered error when unarchiving model data: %@ Description: %@", &v5, 0x16u);
}