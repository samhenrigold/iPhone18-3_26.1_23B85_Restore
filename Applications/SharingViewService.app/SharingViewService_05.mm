id sub_10007689C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for D2DSetupDoneSuccessViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1000768F4(double a1, double a2, double a3, double a4)
{
  v72.receiver = v4;
  v72.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v72, "initWithFrame:", a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 configurationWithPointSize:50.0];
  v13 = String._bridgeToObjectiveC()();
  v14 = objc_opt_self();
  v15 = [v14 systemImageNamed:v13 withConfiguration:v12];

  v16 = [objc_allocWithZone(UIImageView) initWithImage:v15];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v14 systemImageNamed:v17 withConfiguration:v12];

  v19 = [objc_allocWithZone(UIImageView) initWithImage:v18];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v14 systemImageNamed:v20 withConfiguration:v12];

  v70 = v12;
  v22 = [objc_allocWithZone(UIImageView) initWithImage:v21];

  sub_100005DCC(&qword_1001BBB00, &unk_10016CF10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016D310;
  *(inited + 32) = v16;
  *(inited + 40) = v19;
  *(inited + 48) = v22;
  v24 = inited & 0xC000000000000001;
  v71 = v16;
  v68 = v19;
  v69 = v22;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_12;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  for (i = v71; ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
  {
    v26 = i;
    [i setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [objc_opt_self() systemBlueColor];
    [v26 setTintColor:v27];

    [v11 addSubview:v26];
    if (v24)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_11;
      }

      v28 = *(inited + 40);
    }

    v29 = v28;
    [v28 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [objc_opt_self() systemBlueColor];
    [v29 setTintColor:v30];

    [v11 addSubview:v29];
    if (v24)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v31 = *(inited + 48);
      goto LABEL_10;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    ;
  }

  v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_10:
  v32 = v31;
  [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
  v33 = [objc_opt_self() systemBlueColor];
  [v32 setTintColor:v33];

  [v11 addSubview:v32];
  swift_setDeallocating();
  swift_arrayDestroy();
  v67 = objc_opt_self();
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10016CF20;
  v35 = v71;
  v36 = [v35 topAnchor];
  v37 = [v11 topAnchor];
  v38 = [v36 constraintEqualToAnchor:v37];

  *(v34 + 32) = v38;
  v39 = v68;
  v40 = [v39 topAnchor];
  v41 = [v35 bottomAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];

  *(v34 + 40) = v42;
  v43 = [v39 leftAnchor];
  v44 = [v11 leftAnchor];
  v45 = [v43 constraintEqualToAnchor:v44];

  *(v34 + 48) = v45;
  v46 = [v39 centerXAnchor];
  v47 = [v35 leftAnchor];
  v48 = [v46 constraintEqualToAnchor:v47];

  *(v34 + 56) = v48;
  v49 = [v39 bottomAnchor];
  v50 = [v11 bottomAnchor];
  v51 = [v49 constraintLessThanOrEqualToAnchor:v50];

  *(v34 + 64) = v51;
  v52 = v69;
  v53 = [v52 rightAnchor];
  v54 = [v11 rightAnchor];
  v55 = [v53 constraintEqualToAnchor:v54];

  *(v34 + 72) = v55;
  v56 = [v52 centerXAnchor];
  v57 = [v35 rightAnchor];

  v58 = [v56 constraintEqualToAnchor:v57];
  *(v34 + 80) = v58;
  v59 = [v52 firstBaselineAnchor];
  v60 = [v39 firstBaselineAnchor];

  v61 = [v59 constraintEqualToAnchor:v60];
  *(v34 + 88) = v61;
  v62 = [v52 bottomAnchor];

  v63 = [v11 bottomAnchor];
  v64 = [v62 constraintLessThanOrEqualToAnchor:v63];

  *(v34 + 96) = v64;
  sub_10000D1F4();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v67 activateConstraints:isa];

  return v11;
}

uint64_t sub_1000771B8()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100077220(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100077270()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BC2C8);
  v1 = sub_10000D298(v0, qword_1001BC2C8);
  if (qword_1001B92C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100077338()
{
  v172.receiver = v0;
  v172.super_class = type metadata accessor for D2DSetupBackupSyncViewController();
  objc_msgSendSuper2(&v172, "viewDidLoad");
  type metadata accessor for ProgressView();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC18SharingViewService32D2DSetupBackupSyncViewController_progressView;
  v3 = *&v0[OBJC_IVAR____TtC18SharingViewService32D2DSetupBackupSyncViewController_progressView];
  *&v0[OBJC_IVAR____TtC18SharingViewService32D2DSetupBackupSyncViewController_progressView] = v1;

  sub_100078054();
  v4 = &v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v5 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144];
  v6 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112];
  v181 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 128];
  v182 = v5;
  v7 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144];
  v8 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176];
  v183 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 160];
  v184 = v8;
  v9 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v10 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48];
  v177 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64];
  v178 = v9;
  v11 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v12 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112];
  v179 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 96];
  v180 = v12;
  v13 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16];
  v173 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v174 = v13;
  v14 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48];
  v175 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32];
  v176 = v14;
  v170 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v15 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144];
  v166 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 128];
  v167 = v15;
  v16 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176];
  v168 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 160];
  v169 = v16;
  v17 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v162 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64];
  v163 = v17;
  v18 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112];
  v164 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 96];
  v165 = v18;
  v19 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48];
  v160 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32];
  v161 = v19;
  v185 = v173;
  v194 = v181;
  v195 = v7;
  v20 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176];
  v196 = v183;
  v197 = v20;
  v190 = v177;
  v191 = v11;
  v192 = v179;
  v193 = v6;
  v171 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16];
  v21 = *(&v174 + 1);
  v22 = *&v0[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16];
  v188 = v175;
  v189 = v10;
  v186 = v22;
  v187 = *(&v174 + 1);
  if (sub_100013CE0(&v185) == 1)
  {
    v147 = v170;
    v148 = v171;
    v149 = v21;
    v156 = v166;
    v157 = v167;
    v158 = v168;
    v159 = v169;
    v152 = v162;
    v153 = v163;
    v154 = v164;
    v155 = v165;
    v150 = v160;
    v151 = v161;
    sub_100019558(&v173, v135);
    v23 = &v147;
LABEL_6:
    sub_1000195C8(v23);
LABEL_7:
    v42 = *&v0[v2];
    if (!v42)
    {
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  v147 = v170;
  v148 = v171;
  v149 = v21;
  v156 = v166;
  v157 = v167;
  v158 = v168;
  v159 = v169;
  v152 = v162;
  v153 = v163;
  v154 = v164;
  v155 = v165;
  v150 = v160;
  v151 = v161;
  sub_100019558(&v173, v135);
  v24 = v21;
  sub_1000195C8(&v147);
  if (!v21)
  {
    goto LABEL_7;
  }

  v25 = [objc_allocWithZone(UIImageView) initWithImage:v24];
  v26 = OBJC_IVAR____TtC18SharingViewService32D2DSetupBackupSyncViewController_backupSymbolView;
  v27 = *&v0[OBJC_IVAR____TtC18SharingViewService32D2DSetupBackupSyncViewController_backupSymbolView];
  *&v0[OBJC_IVAR____TtC18SharingViewService32D2DSetupBackupSyncViewController_backupSymbolView] = v25;

  v28 = *(v4 + 9);
  v131 = *(v4 + 8);
  v132 = v28;
  v29 = *(v4 + 11);
  v133 = *(v4 + 10);
  v134 = v29;
  v30 = *(v4 + 5);
  v127 = *(v4 + 4);
  v128 = v30;
  v31 = *(v4 + 7);
  v129 = *(v4 + 6);
  v130 = v31;
  v32 = *(v4 + 1);
  v33 = v32;
  v124[0] = *v4;
  v124[1] = v32;
  v34 = *(v4 + 3);
  v125 = *(v4 + 2);
  v126 = v34;
  v35 = *(v4 + 1);
  v122 = *v4;
  v123 = v35;
  v36 = *(v4 + 152);
  v118 = *(v4 + 136);
  v119 = v36;
  v120 = *(v4 + 168);
  v37 = *(v4 + 88);
  v114 = *(v4 + 72);
  v115 = v37;
  v38 = *(v4 + 120);
  v116 = *(v4 + 104);
  v117 = v38;
  v39 = *(v4 + 56);
  v112 = *(v4 + 40);
  v113 = v39;
  v40 = v125;
  v121 = *(v4 + 23);
  v135[0] = v124[0];
  v135[1] = v33;
  v143 = *(v4 + 136);
  v144 = *(v4 + 152);
  v145 = *(v4 + 168);
  v41 = *(v4 + 23);
  v139 = *(v4 + 72);
  v140 = *(v4 + 88);
  v141 = *(v4 + 104);
  v142 = *(v4 + 120);
  v137 = *(v4 + 40);
  v138 = *(v4 + 56);
  v146 = v41;
  v136 = v125;
  if (sub_100013CE0(v135) == 1)
  {
    sub_100019558(v124, &v99);

    v99 = v122;
    v100 = v123;
    v108 = v118;
    v109 = v119;
    v110 = v120;
    v104 = v114;
    v105 = v115;
    v106 = v116;
    v107 = v117;
    v102 = v112;
    v101 = v40;
    v111 = v121;
    v103 = v113;
    v23 = &v99;
    goto LABEL_6;
  }

  v99 = v122;
  v100 = v123;
  v108 = v118;
  v109 = v119;
  v110 = v120;
  v104 = v114;
  v105 = v115;
  v106 = v116;
  v107 = v117;
  v102 = v112;
  v101 = v125;
  v111 = v121;
  v103 = v113;
  sub_100019558(v124, v98);
  v91 = v40;
  sub_1000195C8(&v99);
  if (v40)
  {
    v92 = *&v0[v26];
    if (v92)
    {
      v91 = v91;
      v93 = v92;
      [v93 setTintColor:v91];
    }
  }

  v42 = *&v0[v2];
  if (!v42)
  {
    goto LABEL_15;
  }

LABEL_8:
  v43 = *&v0[OBJC_IVAR____TtC18SharingViewService32D2DSetupBackupSyncViewController_backupSymbolView];
  if (v43)
  {
    v44 = v43;
    v45 = v42;
    [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
    v46 = v45;
    [v46 setTranslatesAutoresizingMaskIntoConstraints:0];
    v47 = [v0 contentView];
    [v47 addSubview:v44];

    v48 = [v0 bottomTray];
    [v48 addSubview:v46];

    v49 = [v0 contentView];
    v50 = [v49 mainContentGuide];

    v97 = objc_opt_self();
    sub_100005DCC(&qword_1001BBB00, &unk_10016CF10);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_10016ED00;
    v52 = [v44 topAnchor];
    v53 = [v50 topAnchor];
    v54 = [v52 constraintGreaterThanOrEqualToAnchor:v53];

    *(v51 + 32) = v54;
    v55 = [v44 bottomAnchor];
    v56 = [v50 bottomAnchor];
    v57 = [v55 constraintLessThanOrEqualToAnchor:v56];

    *(v51 + 40) = v57;
    v58 = [v44 leadingAnchor];
    v59 = [v50 leadingAnchor];
    v60 = [v58 constraintGreaterThanOrEqualToAnchor:v59];

    *(v51 + 48) = v60;
    v61 = [v44 trailingAnchor];
    v62 = [v50 trailingAnchor];
    v63 = [v61 constraintLessThanOrEqualToAnchor:v62];

    *(v51 + 56) = v63;
    v64 = [v44 centerXAnchor];
    v65 = [v50 centerXAnchor];
    v66 = [v64 constraintEqualToAnchor:v65];

    *(v51 + 64) = v66;
    v67 = [v44 centerYAnchor];

    v68 = [v50 centerYAnchor];
    v69 = [v67 constraintEqualToAnchor:v68];

    *(v51 + 72) = v69;
    v70 = [v46 topAnchor];
    v71 = [v0 bottomTray];
    v72 = [v71 layoutMarginsGuide];

    v73 = [v72 topAnchor];
    v74 = [v70 constraintEqualToAnchor:v73];

    *(v51 + 80) = v74;
    v75 = [v46 leadingAnchor];
    v76 = [v0 bottomTray];
    v77 = [v76 layoutMarginsGuide];

    v78 = [v77 leadingAnchor];
    v79 = [v75 constraintEqualToAnchor:v78];

    *(v51 + 88) = v79;
    v80 = [v46 trailingAnchor];
    v81 = [v0 bottomTray];
    v82 = [v81 layoutMarginsGuide];

    v83 = [v82 trailingAnchor];
    v84 = [v80 constraintEqualToAnchor:v83];

    *(v51 + 96) = v84;
    v85 = [v46 bottomAnchor];

    v86 = [v0 bottomTray];
    v87 = [v86 layoutMarginsGuide];

    v88 = [v87 bottomAnchor];
    v89 = [v85 constraintLessThanOrEqualToAnchor:v88];

    *(v51 + 104) = v89;
    sub_10000D1F4();
    v90.super.isa = Array._bridgeToObjectiveC()().super.isa;

    [v97 activateConstraints:v90.super.isa];

    goto LABEL_19;
  }

LABEL_15:
  if (qword_1001B9398 != -1)
  {
    swift_once();
  }

  v94 = type metadata accessor for Logger();
  sub_10000D298(v94, qword_1001BC2C8);
  v90.super.isa = Logger.logObject.getter();
  v95 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v90.super.isa, v95))
  {
    v96 = swift_slowAlloc();
    *v96 = 0;
    _os_log_impl(&_mh_execute_header, v90.super.isa, v95, "### Unable to create views for Backup Sync card", v96, 2u);
  }

LABEL_19:
}

void sub_100077F2C(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = a3[9];
  v34 = a3[8];
  v35 = v5;
  v6 = a3[11];
  v36 = a3[10];
  v37 = v6;
  v7 = a3[5];
  v30 = a3[4];
  v31 = v7;
  v8 = a3[7];
  v32 = a3[6];
  v33 = v8;
  v9 = a3[1];
  v26 = *a3;
  v27 = v9;
  v10 = a3[3];
  v28 = a3[2];
  v29 = v10;
  nullsub_4();
  v11 = &v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v12 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144];
  v38[8] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 128];
  v38[9] = v12;
  v13 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176];
  v38[10] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 160];
  v38[11] = v13;
  v14 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80];
  v38[4] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64];
  v38[5] = v14;
  v15 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112];
  v38[6] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 96];
  v38[7] = v15;
  v16 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16];
  v38[0] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel];
  v38[1] = v16;
  v17 = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48];
  v38[2] = *&v3[OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32];
  v38[3] = v17;
  v18 = v35;
  *(v11 + 8) = v34;
  *(v11 + 9) = v18;
  v19 = v37;
  *(v11 + 10) = v36;
  *(v11 + 11) = v19;
  v20 = v31;
  *(v11 + 4) = v30;
  *(v11 + 5) = v20;
  v21 = v33;
  *(v11 + 6) = v32;
  *(v11 + 7) = v21;
  v22 = v27;
  *v11 = v26;
  *(v11 + 1) = v22;
  v23 = v29;
  *(v11 + 2) = v28;
  *(v11 + 3) = v23;
  sub_100013C0C(a3, &v25);
  sub_1000195C8(v38);
  v24 = String._bridgeToObjectiveC()();
  [v3 setTitle:v24];

  [v3 setAttributedSubtitle:*(a3 + 5)];
  sub_100078054();
}

void sub_100078054()
{
  v1 = (v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel);
  v2 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 144);
  v94 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 128);
  v95 = v2;
  v3 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176);
  v96 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 160);
  v97 = v3;
  v4 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64);
  v5 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48);
  v91 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 80);
  v6 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 112);
  v92 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 96);
  v93 = v6;
  v7 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16);
  v87[0] = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel);
  v87[1] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48);
  v88 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32);
  v89 = v8;
  v90 = v4;
  v9 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 16);
  v10 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 48);
  v46 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 32);
  v47 = v10;
  v48 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 64);
  v44 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel);
  v45 = v9;
  v11 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 133);
  v12 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 165);
  v53 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 149);
  *v54 = v12;
  *&v54[11] = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176);
  v13 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 101);
  v49 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 85);
  v50 = v13;
  v51 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 117);
  v52 = v11;
  v98[3] = v5;
  v98[4] = v4;
  v98[1] = v7;
  v98[2] = v88;
  v14 = *&v91;
  v15 = BYTE4(v91);
  v98[0] = v87[0];
  v103 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 117);
  v102 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 101);
  v101 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 85);
  *&v106[11] = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 176);
  *v106 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 165);
  v105 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 149);
  v104 = *(v0 + OBJC_IVAR____TtC18SharingViewService26D2DSetupBaseViewController_viewModel + 133);
  v99 = v91;
  v100 = BYTE4(v91);
  if (sub_100013CE0(v98) == 1)
  {
    v83 = v46;
    v84 = v47;
    v85 = v48;
    v81 = v44;
    v82 = v45;
    *&v86[53] = v52;
    *&v86[69] = v53;
    *&v86[85] = *v54;
    *&v86[96] = *&v54[11];
    *&v86[5] = v49;
    *&v86[21] = v50;
    *v86 = v91;
    v86[4] = BYTE4(v91);
    *&v86[37] = v51;
    sub_100019558(v87, v72);
    sub_1000195C8(&v81);
    v16 = 0.0;
  }

  else
  {
    v83 = v46;
    v84 = v47;
    v85 = v48;
    v81 = v44;
    v82 = v45;
    *&v86[53] = v52;
    *&v86[69] = v53;
    *&v86[85] = *v54;
    *&v86[96] = *&v54[11];
    *&v86[5] = v49;
    *&v86[21] = v50;
    *v86 = v91;
    v86[4] = BYTE4(v91);
    *&v86[37] = v51;
    sub_100019558(v87, v72);
    sub_1000195C8(&v81);
    if (v15)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v14;
    }
  }

  v17 = OBJC_IVAR____TtC18SharingViewService32D2DSetupBackupSyncViewController_progressView;
  v18 = *(v0 + OBJC_IVAR____TtC18SharingViewService32D2DSetupBackupSyncViewController_progressView);
  if (v18)
  {
    *(v18 + OBJC_IVAR____TtC18SharingViewService12ProgressView_progress) = v16;
    [*(v18 + OBJC_IVAR____TtC18SharingViewService12ProgressView_progressView) setProgress:v16 != 0.0 animated:?];
    v19 = *(v0 + v17);
    if (v19)
    {
      v20 = v1[9];
      v77 = v1[8];
      v78 = v20;
      v21 = v1[11];
      v79 = v1[10];
      v80 = v21;
      v22 = v1[3];
      v23 = v1[5];
      v73 = v1[4];
      v74 = v23;
      v24 = v1[7];
      v75 = v1[6];
      v76 = v24;
      v25 = v1[1];
      v72[0] = *v1;
      v72[1] = v25;
      v26 = v1[3];
      v28 = *v1;
      v27 = v1[1];
      v72[2] = v1[2];
      v72[3] = v26;
      v29 = v1[3];
      v68 = v1[2];
      v69 = v29;
      v70 = v1[4];
      v30 = v1[1];
      v66 = *v1;
      v67 = v30;
      v31 = *(v1 + 120);
      v60 = *(v1 + 104);
      v61 = v31;
      v32 = *(v1 + 136);
      v33 = *(v1 + 168);
      v63 = *(v1 + 152);
      v64 = v33;
      v62 = v32;
      v81 = v28;
      v82 = v27;
      v71 = *(v1 + 10);
      v34 = *(&v74 + 1);
      v35 = v75;
      v65 = *(v1 + 23);
      v36 = *(v1 + 10);
      v84 = v22;
      v85 = v73;
      v83 = v68;
      v37 = *(v1 + 104);
      *&v86[40] = *(v1 + 120);
      *&v86[24] = v37;
      v38 = *(v1 + 136);
      v39 = *(v1 + 152);
      v40 = *(v1 + 23);
      *&v86[88] = *(v1 + 168);
      *&v86[72] = v39;
      *&v86[56] = v38;
      *v86 = v36;
      *&v86[8] = *(&v74 + 1);
      *&v86[104] = v40;
      *&v86[16] = v75;
      if (sub_100013CE0(&v81) == 1)
      {
        v41 = 0;
        v42 = 0;
      }

      else
      {

        v41 = v34;
        v42 = v35;
      }

      v51 = v68;
      v52 = v69;
      v53 = v70;
      v49 = v66;
      v50 = v67;
      *v54 = v71;
      *&v54[8] = v34;
      v55 = v61;
      *&v54[24] = v60;
      *&v54[16] = v35;
      v59 = v65;
      v58 = v64;
      v57 = v63;
      v56 = v62;
      v43 = v19;
      sub_100019558(v72, &v44);
      sub_1000195C8(&v49);
      sub_10000D3DC(v41, v42);
    }
  }
}

void sub_1000784A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18SharingViewService32D2DSetupBackupSyncViewController_progressView);
}

id sub_1000784E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for D2DSetupBackupSyncViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100078584()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BC318);
  v1 = sub_10000D298(v0, qword_1001BC318);
  if (qword_1001B92C8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3900);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10007864C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x736150736465654ELL;
  v4 = 0xED000064726F7773;
  v5 = 0x8000000100144A00;
  if (v2 != 1)
  {
    v3 = 0xD000000000000013;
    v4 = 0x8000000100144A00;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x64696C61766E49;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x736150736465654ELL;
  if (*a2 == 1)
  {
    v5 = 0xED000064726F7773;
  }

  else
  {
    v8 = 0xD000000000000013;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64696C61766E49;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100078760()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100078814(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000788B4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100078964@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10007ADA4(*a1);
  *a2 = result;
  return result;
}

void sub_100078994(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xED000064726F7773;
  v5 = 0x736150736465654ELL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x8000000100144A00;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64696C61766E49;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_100078A04(uint64_t a1)
{
  v3 = 0x64696C61766E49;
  v4 = OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_requesterState;
  if (!*(v1 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_requesterState))
  {
    v6 = 0xE700000000000000;
    v5 = 0x64696C61766E49;
    v7 = a1;
    if (!a1)
    {
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  if (*(v1 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_requesterState) != 1)
  {
    v5 = 0xD000000000000013;
    v6 = 0x8000000100144A00;
    v7 = a1;
    if (!a1)
    {
      goto LABEL_15;
    }

LABEL_6:
    if (v7 == 1)
    {
      v8 = 0x736150736465654ELL;
    }

    else
    {
      v8 = 0xD000000000000013;
    }

    if (v7 == 1)
    {
      v9 = 0xED000064726F7773;
    }

    else
    {
      v9 = 0x8000000100144A00;
    }

    if (v5 != v8)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v5 = 0x736150736465654ELL;
  v6 = 0xED000064726F7773;
  v7 = a1;
  if (a1)
  {
    goto LABEL_6;
  }

LABEL_15:
  v9 = 0xE700000000000000;
  if (v5 != 0x64696C61766E49)
  {
    goto LABEL_20;
  }

LABEL_16:
  if (v6 == v9)
  {

    return;
  }

LABEL_20:
  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v10 & 1) == 0)
  {
    if (qword_1001B93A0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000D298(v11, qword_1001BC318);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v14 = 136315394;
      if (a1)
      {
        if (a1 == 1)
        {
          v15 = 0x736150736465654ELL;
        }

        else
        {
          v15 = 0xD000000000000013;
        }

        if (a1 == 1)
        {
          v16 = 0xED000064726F7773;
        }

        else
        {
          v16 = 0x8000000100144A00;
        }
      }

      else
      {
        v16 = 0xE700000000000000;
        v15 = 0x64696C61766E49;
      }

      v17 = sub_10002065C(v15, v16, &v23);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      if (*(v1 + v4))
      {
        if (*(v1 + v4) == 1)
        {
          v3 = 0x736150736465654ELL;
          v18 = 0xED000064726F7773;
        }

        else
        {
          v3 = 0xD000000000000013;
          v18 = 0x8000000100144A00;
        }
      }

      else
      {
        v18 = 0xE700000000000000;
      }

      v19 = sub_10002065C(v3, v18, &v23);

      *(v14 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v12, v13, "Requester state changed %s -> %s", v14, 0x16u);
      swift_arrayDestroy();
    }

    v20 = *(v1 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_stateChangedHandler);
    if (v20)
    {
      v21 = *(v1 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_stateChangedHandler + 8);
      v22 = *(v1 + v4);

      v20(a1, v22);

      sub_100012050(v20, v21);
    }
  }
}

unint64_t sub_100078E10@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(SFDeviceDiscovery) init];
  result = sub_10007B14C();
  a1[3] = result;
  a1[4] = &off_1001939B0;
  *a1 = v2;
  return result;
}

void sub_100078E64()
{
  v1 = v0;
  if (qword_1001B93A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BC318);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PasswordRequesterStateObserver activate", v5, 2u);
  }

  v6 = swift_allocObject();
  v7 = *(v0 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_deviceDiscoveryGenerator);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_deviceDiscoveryGenerator + 8);
    v9 = v6;

    v7(v33, v10);
    sub_100012050(v7, v8);
    sub_10007AE48(v33, v9 + 16);
    v11 = *(v9 + 40);
    v12 = *(v9 + 48);
    sub_10007AF80(v9 + 16, v11);
    (*(v12 + 16))(31, v11, v12);
    v13 = *(v9 + 40);
    v14 = *(v9 + 48);
    sub_10007AF80(v9 + 16, v13);
    (*(v14 + 40))(16, v13, v14);
    v15 = *(v9 + 40);
    v16 = *(v9 + 48);
    sub_10007AF80(v9 + 16, v15);
    (*(v16 + 64))(40, v15, v16);
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = *(v9 + 40);
    v19 = *(v9 + 48);
    sub_10007AF80(v9 + 16, v18);
    (*(v19 + 88))(sub_10007B008, v17, v18, v19);
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = *(v9 + 40);
    v22 = *(v9 + 48);
    sub_10007AF80(v9 + 16, v21);
    (*(v22 + 112))(sub_10007B038, v20, v21, v22);
    v23 = swift_allocObject();
    swift_weakInit();
    v24 = *(v9 + 40);
    v25 = *(v9 + 48);
    sub_10007AF80(v9 + 16, v24);
    (*(v25 + 136))(sub_10007B068, v23, v24, v25);
    sub_10007B070(v9 + 16, v33);
    v26 = v34;
    v27 = v35;
    sub_10000836C(v33, v34);
    v28 = *(v27 + 152);

    v28(sub_10007B0D4, v9, v26, v27);

    sub_1000083B0(v33);
    swift_beginAccess();
    sub_10007B070(v9 + 16, v33);
    v29 = OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_deviceDiscovery;
    swift_beginAccess();
    sub_10007B0DC(v33, v1 + v29);
    swift_endAccess();
  }

  else
  {
    swift_deallocUninitializedObject();
    oslog = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v30, "Failed to generate device discovery object", v31, 2u);
    }
  }
}

double sub_100079304(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3(a1);
  }

  return result;
}

double sub_100079378(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100079B4C(a1);
  }

  return result;
}

void sub_1000793D8(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (qword_1001B93A0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000D298(v2, qword_1001BC318);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v22 = v5;
      *v4 = 136315138;
      swift_errorRetain();
      sub_100005DCC(&qword_1001B9C28, &unk_10016D140);
      v6 = String.init<A>(reflecting:)();
      v8 = sub_10002065C(v6, v7, &v22);

      *(v4 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Could not start device discovery: %s", v4, 0xCu);
      sub_1000083B0(v5);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1001B93A0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000D298(v10, qword_1001BC318);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Device discovery started", v13, 2u);
    }

    v14 = String._bridgeToObjectiveC()();
    sub_100005DCC(&qword_1001BC498, &qword_10016EEB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10016CCD0;
    v22 = 0x657461526E616373;
    v23 = 0xE800000000000000;
    AnyHashable.init<A>(_:)();
    swift_beginAccess();
    v16 = a2[5];
    v17 = a2[6];
    sub_10000836C(a2 + 2, v16);
    v18 = (*(v17 + 56))(v16, v17);
    swift_endAccess();
    v19 = sub_10007AE60(v18);
    *(inited + 96) = sub_100005DCC(&qword_1001BC4A0, &qword_10016EEC0);
    *(inited + 72) = v19;
    v22 = 0x6574617473;
    v23 = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = 0x7472617453;
    *(inited + 152) = 0xE500000000000000;
    sub_100004BE0(inited);
    swift_setDeallocating();
    sub_100005DCC(&qword_1001B95E0, &unk_10016C040);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    SFPowerLogEvent();
  }
}

uint64_t sub_100079804()
{
  v1 = v0;
  if (qword_1001B93A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BC318);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "PasswordRequesterStateObserver invalidate", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_deviceDiscovery;
  swift_beginAccess();
  sub_100005EB8(v1 + v6, &v20, &qword_1001BC490, &qword_10016EEB0);
  if (v21)
  {
    sub_10007AE48(&v20, v22);
    v7 = String._bridgeToObjectiveC()();
    sub_100005DCC(&qword_1001BC498, &qword_10016EEB8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10016CCD0;
    *&v20 = 0x657461526E616373;
    *(&v20 + 1) = 0xE800000000000000;
    AnyHashable.init<A>(_:)();
    v9 = v23;
    v10 = v24;
    sub_10000836C(v22, v23);
    v11 = (*(v10 + 56))(v9, v10);
    v12 = sub_10007AE60(v11);
    *(inited + 96) = sub_100005DCC(&qword_1001BC4A0, &qword_10016EEC0);
    *(inited + 72) = v12;
    *&v20 = 0x6574617473;
    *(&v20 + 1) = 0xE500000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = 0x7472617453;
    *(inited + 152) = 0xE500000000000000;
    sub_100004BE0(inited);
    swift_setDeallocating();
    sub_100005DCC(&qword_1001B95E0, &unk_10016C040);
    swift_arrayDestroy();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    SFPowerLogEvent();

    v14 = v23;
    v15 = v24;
    sub_10000836C(v22, v23);
    (*(v15 + 160))(v14, v15);
    sub_1000083B0(v22);
  }

  else
  {
    sub_10001259C(&v20, &qword_1001BC490, &qword_10016EEB0);
  }

  v16 = (v1 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_stateChangedHandler);
  v17 = *(v1 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_stateChangedHandler);
  v18 = *(v1 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_stateChangedHandler + 8);
  *v16 = 0;
  v16[1] = 0;
  return sub_100012050(v17, v18);
}

void sub_100079B4C(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100005DCC(&unk_1001BBBC0, &unk_10016E7D8);
  __chkstk_darwin(v59);
  v7 = &v55 - v6;
  v8 = sub_100005DCC(&unk_1001BBAA0, &qword_10016CD60);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v55 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v55 - v16;
  __chkstk_darwin(v15);
  v19 = &v55 - v18;
  v20 = [a1 identifier];
  if (!v20)
  {
    (*(v3 + 56))(v19, 1, 1, v2);
    v29 = &unk_1001BBAA0;
    v30 = &qword_10016CD60;
    v31 = v19;
LABEL_12:
    sub_10001259C(v31, v29, v30);
    return;
  }

  v57 = v11;
  v55 = v5;
  v21 = a1;
  v22 = v20;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v58 = v3;
  v23 = *(v3 + 56);
  v24 = 1;
  v23(v19, 0, 1, v2);
  sub_10001259C(v19, &unk_1001BBAA0, &qword_10016CD60);
  v56 = v21;
  v25 = [v21 identifier];
  if (v25)
  {
    v26 = v17;
    v27 = v25;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
    v28 = v60;
  }

  else
  {
    v28 = v60;
    v26 = v17;
  }

  v23(v26, v24, 1, v2);
  v32 = v58;
  (*(v58 + 16))(v14, v28 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_requesterDeviceIdentifier, v2);
  v23(v14, 0, 1, v2);
  v33 = v32;
  v34 = *(v59 + 48);
  sub_100005EB8(v26, v7, &unk_1001BBAA0, &qword_10016CD60);
  sub_100005EB8(v14, &v7[v34], &unk_1001BBAA0, &qword_10016CD60);
  v35 = *(v32 + 48);
  if (v35(v7, 1, v2) != 1)
  {
    v36 = v28;
    v37 = v57;
    sub_100005EB8(v7, v57, &unk_1001BBAA0, &qword_10016CD60);
    if (v35(&v7[v34], 1, v2) != 1)
    {
      v38 = *(v33 + 32);
      v60 = v26;
      v39 = v55;
      v38(v55, &v7[v34], v2);
      sub_10007ADF0();
      LODWORD(v59) = dispatch thunk of static Equatable.== infix(_:_:)();
      v40 = *(v33 + 8);
      v40(v39, v2);
      sub_10001259C(v14, &unk_1001BBAA0, &qword_10016CD60);
      sub_10001259C(v60, &unk_1001BBAA0, &qword_10016CD60);
      v41 = v37;
      v28 = v36;
      v40(v41, v2);
      sub_10001259C(v7, &unk_1001BBAA0, &qword_10016CD60);
      if ((v59 & 1) == 0)
      {
        return;
      }

      goto LABEL_15;
    }

    sub_10001259C(v14, &unk_1001BBAA0, &qword_10016CD60);
    sub_10001259C(v26, &unk_1001BBAA0, &qword_10016CD60);
    (*(v33 + 8))(v37, v2);
    goto LABEL_11;
  }

  sub_10001259C(v14, &unk_1001BBAA0, &qword_10016CD60);
  sub_10001259C(v26, &unk_1001BBAA0, &qword_10016CD60);
  if (v35(&v7[v34], 1, v2) != 1)
  {
LABEL_11:
    v29 = &unk_1001BBBC0;
    v30 = &unk_10016E7D8;
    v31 = v7;
    goto LABEL_12;
  }

  sub_10001259C(v7, &unk_1001BBAA0, &qword_10016CD60);
LABEL_15:
  if (qword_1001B93A0 != -1)
  {
    swift_once();
  }

  v42 = type metadata accessor for Logger();
  sub_10000D298(v42, qword_1001BC318);
  v43 = v56;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 138412290;
    v48 = [v43 bleDevice];
    *(v46 + 4) = v48;
    *v47 = v48;
    _os_log_impl(&_mh_execute_header, v44, v45, "Found %@", v46, 0xCu);
    sub_10001259C(v47, &unk_1001BBA60, &qword_10016D230);
  }

  v49 = v28;
  if ([v43 needsSetup] && objc_msgSend(v43, "deviceActionType") == 8)
  {
    v50 = OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_requesterState;
    if (*(v49 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_requesterState) && *(v49 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_requesterState) == 1)
    {
    }

    else
    {
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v51 & 1) == 0)
      {
        v54 = *(v49 + v50);
        *(v49 + v50) = 1;
        goto LABEL_33;
      }
    }
  }

  if (![v43 needsSetup] || objc_msgSend(v43, "deviceActionType") != 8)
  {
    v52 = OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_requesterState;
    if (*(v49 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_requesterState) && *(v49 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_requesterState) != 1)
    {

      return;
    }

    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v53 & 1) == 0)
    {
      v54 = *(v49 + v52);
      *(v49 + v52) = 2;
LABEL_33:
      sub_100078A04(v54);
    }
  }
}

void sub_10007A37C(void *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_100005DCC(&unk_1001BBBC0, &unk_10016E7D8);
  __chkstk_darwin(v50);
  v7 = &v46 - v6;
  v8 = sub_100005DCC(&unk_1001BBAA0, &qword_10016CD60);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v46 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v46 - v16;
  __chkstk_darwin(v15);
  v19 = &v46 - v18;
  v20 = [a1 identifier];
  if (!v20)
  {
    (*(v3 + 56))(v19, 1, 1, v2);
    sub_10001259C(v19, &unk_1001BBAA0, &qword_10016CD60);
    return;
  }

  v48 = v11;
  v46 = v5;
  v21 = a1;
  v22 = v20;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v49 = v3;
  v23 = *(v3 + 56);
  v24 = 1;
  v23(v19, 0, 1, v2);
  sub_10001259C(v19, &unk_1001BBAA0, &qword_10016CD60);
  v47 = v21;
  v25 = [v21 identifier];
  if (v25)
  {
    v26 = v17;
    v27 = v25;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
    v28 = v51;
  }

  else
  {
    v28 = v51;
    v26 = v17;
  }

  v23(v26, v24, 1, v2);
  v29 = v49;
  (*(v49 + 16))(v14, v28 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_requesterDeviceIdentifier, v2);
  v23(v14, 0, 1, v2);
  v30 = v29;
  v31 = *(v50 + 48);
  sub_100005EB8(v26, v7, &unk_1001BBAA0, &qword_10016CD60);
  sub_100005EB8(v14, &v7[v31], &unk_1001BBAA0, &qword_10016CD60);
  v32 = *(v29 + 48);
  if (v32(v7, 1, v2) != 1)
  {
    v33 = v48;
    sub_100005EB8(v7, v48, &unk_1001BBAA0, &qword_10016CD60);
    if (v32(&v7[v31], 1, v2) != 1)
    {
      v34 = *(v30 + 32);
      v50 = v26;
      v35 = v46;
      v34(v46, &v7[v31], v2);
      sub_10007ADF0();
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      v37 = *(v30 + 8);
      v37(v35, v2);
      sub_10001259C(v14, &unk_1001BBAA0, &qword_10016CD60);
      sub_10001259C(v50, &unk_1001BBAA0, &qword_10016CD60);
      v37(v33, v2);
      sub_10001259C(v7, &unk_1001BBAA0, &qword_10016CD60);
      if ((v36 & 1) == 0)
      {
        return;
      }

      goto LABEL_13;
    }

    sub_10001259C(v14, &unk_1001BBAA0, &qword_10016CD60);
    sub_10001259C(v26, &unk_1001BBAA0, &qword_10016CD60);
    (*(v30 + 8))(v33, v2);
LABEL_11:
    sub_10001259C(v7, &unk_1001BBBC0, &unk_10016E7D8);
    return;
  }

  sub_10001259C(v14, &unk_1001BBAA0, &qword_10016CD60);
  sub_10001259C(v26, &unk_1001BBAA0, &qword_10016CD60);
  if (v32(&v7[v31], 1, v2) != 1)
  {
    goto LABEL_11;
  }

  sub_10001259C(v7, &unk_1001BBAA0, &qword_10016CD60);
LABEL_13:
  if (qword_1001B93A0 != -1)
  {
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_10000D298(v38, qword_1001BC318);
  v39 = v47;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v42 = 138412290;
    v44 = [v39 bleDevice];
    *(v42 + 4) = v44;
    *v43 = v44;
    _os_log_impl(&_mh_execute_header, v40, v41, "Lost %@", v42, 0xCu);
    sub_10001259C(v43, &unk_1001BBA60, &qword_10016D230);
  }

  v45 = *(v51 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_requesterState);
  *(v51 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_requesterState) = 2;
  sub_100078A04(v45);
}

uint64_t sub_10007AA14()
{
  v1 = OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_requesterDeviceIdentifier;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100012050(*(v0 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_stateChangedHandler), *(v0 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_stateChangedHandler + 8));
  sub_100012050(*(v0 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_deviceDiscoveryGenerator), *(v0 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_deviceDiscoveryGenerator + 8));
  sub_10001259C(v0 + OBJC_IVAR____TtC18SharingViewService30PasswordRequesterStateObserver_deviceDiscovery, &qword_1001BC490, &qword_10016EEB0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PasswordRequesterStateObserver(uint64_t a1)
{
  result = qword_1001BC360;
  if (!qword_1001BC360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007AB4C(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t getEnumTagSinglePayload for PasswordSharingViewType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PasswordSharingViewType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10007AD50()
{
  result = qword_1001BC488;
  if (!qword_1001BC488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BC488);
  }

  return result;
}

unint64_t sub_10007ADA4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10018F0C0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10007ADF0()
{
  result = qword_1001BE220;
  if (!qword_1001BE220)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BE220);
  }

  return result;
}

uint64_t sub_10007AE48(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

const char *sub_10007AE60(uint64_t a1)
{
  if (a1 > 9)
  {
    if (a1 <= 29)
    {
      if (a1 == 10)
      {
        return "Background";
      }

      if (a1 == 20)
      {
        return "Normal";
      }
    }

    else
    {
      switch(a1)
      {
        case 30:
          return "HighNormal";
        case 40:
          return "High";
        case 50:
          return "Aggressive";
      }
    }
  }

  else if (a1 <= 1)
  {
    if (!a1)
    {
      return "Invalid";
    }

    if (a1 == 1)
    {
      return "BackgroundOld";
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return "NormalOld";
      case 3:
        return "HighOld";
      case 4:
        return "AggressiveOld";
    }
  }

  return "?";
}

uint64_t sub_10007AF48()
{
  sub_1000083B0((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10007AF80(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_10007AFD0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007B070(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10007B0DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005DCC(&qword_1001BC490, &qword_10016EEB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_10007B14C()
{
  result = qword_1001BC4A8;
  if (!qword_1001BC4A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001BC4A8);
  }

  return result;
}

double sub_10007B198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

uint64_t sub_10007B1F8()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BC4B0);
  v1 = sub_10000D298(v0, qword_1001BC4B0);
  if (qword_1001B92D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3930);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10007B2C0()
{
  v1 = [objc_opt_self() defaultStore];
  if (v1)
  {
    v2 = v1;
    v25 = [v1 aa_primaryAppleAccount];
    v3 = [v2 ams_activeiTunesAccount];
    v4 = [objc_opt_self() _myGameCenterAccount];
    if (v25 && (v5 = [v25 username]) != 0)
    {
      v6 = v5;
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    v10 = v0 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_model;
    v11 = type metadata accessor for AuthenticateAccountsModel(0);
    v12 = (v10 + v11[11]);
    *v12 = v7;
    v12[1] = v9;

    if (v3 && (v13 = [v3 username]) != 0)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v18 = (v10 + v11[12]);
    *v18 = v15;
    v18[1] = v17;

    if (v4 && (v19 = [v4 username]) != 0)
    {
      v20 = v19;
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = (v10 + v11[13]);
    *v24 = v21;
    v24[1] = v23;

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000E83C4(1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_10007B4F8(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_setupSession;
  [*(v3 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_setupSession) invalidate];
  *(v3 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_remoteViewControllerProxy) = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v11 = mach_absolute_time();
  v12 = v3 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_model;
  v13 = type metadata accessor for AuthenticateAccountsModel(0);
  *(v12 + *(v13 + 40)) = v11;
  *(v12 + *(v13 + 36)) = 0;
  v14 = [objc_allocWithZone(SFDevice) init];
  (*(v7 + 16))(v9, v12, v6);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v9, v6);
  [v14 setIdentifier:isa];

  v16 = [objc_allocWithZone(SFAuthenticateAccountsSession) init];
  [v16 setPeerDevice:v14];
  [v16 setPresentingViewController:a1];
  v17 = swift_allocObject();
  swift_weakInit();
  v28 = sub_10007DBE4;
  v29 = v17;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_10007B904;
  v27 = &unk_100192208;
  v18 = _Block_copy(&aBlock);

  [v16 setProgressHandler:v18];
  _Block_release(v18);
  v19 = swift_allocObject();
  swift_weakInit();
  v28 = sub_10007DC04;
  v29 = v19;
  aBlock = _NSConcreteStackBlock;
  v25 = 1107296256;
  v26 = sub_10007B198;
  v27 = &unk_100192230;
  v20 = _Block_copy(&aBlock);

  [v16 setPromptForPINHandler:v20];
  _Block_release(v20);
  [v16 activate];
  v21 = *(v3 + v10);
  *(v3 + v10) = v16;
  v22 = v16;

  sub_10007C9E4(9);
  v23 = String._bridgeToObjectiveC()();
  [a2 setIdleTimerDisabled:1 forReason:v23];
}

double sub_10007B890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10007C3CC(v4, a2);
  }

  return result;
}

uint64_t sub_10007B904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v4(a2, v5);
}

void sub_10007B99C(uint64_t a1, int a2, uint64_t a3)
{
  v4 = a1;
  if (qword_1001B93A8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000D298(v5, qword_1001BC4B0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109376;
    *(v8 + 4) = v4;
    *(v8 + 8) = 1024;
    *(v8 + 10) = a2;
    _os_log_impl(&_mh_execute_header, v6, v7, "Prompt for PIN {flags: %u, throttleSeconds: %d", v8, 0xEu);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      sub_1000E8C90(v4);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_10007BAF4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_setupSession;
  [*(v1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_setupSession) invalidate];
  v3 = *(v1 + v2);
  *(v1 + v2) = 0;

  if (qword_1001B93A8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BC4B0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Enabling idle timer", v7, 2u);
  }

  v8 = OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_remoteViewControllerProxy;
  v9 = *(v1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_remoteViewControllerProxy);
  if (v9)
  {
    swift_unknownObjectRetain();
    v10 = String._bridgeToObjectiveC()();
    [v9 setIdleTimerDisabled:0 forReason:v10];

    swift_unknownObjectRelease();
  }

  *(v1 + v8) = 0;

  return swift_unknownObjectRelease();
}

void sub_10007BC78(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v49 = *(v4 - 8);
  __chkstk_darwin(v4);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 name];
  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9 = [a1 userInfo];
  if (v9)
  {
    v10 = v9;
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = 0;
  }

  if (qword_1001B93A8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  v13 = sub_10000D298(v12, qword_1001BC4B0);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v45 = a1;
    v46 = v13;
    v47 = v4;
    v16 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v16 = 136315394;
    *(v16 + 4) = sub_10002065C(v50, v8, v53);
    *(v16 + 12) = 2080;
    v17 = v2;
    if (v11)
    {
      v18 = Dictionary.description.getter();
      v20 = v19;
    }

    else
    {
      v20 = 0x8000000100148A80;
      v18 = 0xD00000000000002BLL;
    }

    v21 = sub_10002065C(v18, v20, v53);

    *(v16 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "DeviceSetup notification {name: %s, userInfo: %s}", v16, 0x16u);
    swift_arrayDestroy();

    v2 = v17;
    v4 = v47;
    a1 = v45;
  }

  else
  {
  }

  if (*(v2 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_setupSession))
  {

    v50 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v50, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v50, v22, "Session started, ignoring DeviceSetup notification.", v23, 2u);
    }

    v24 = v50;

    return;
  }

  if (v50 == 0xD00000000000001DLL && 0x80000001001481B0 == v8)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {

      return;
    }
  }

  if (!v11)
  {
    goto LABEL_37;
  }

  v51 = 0x746553736465656ELL;
  v52 = 0xEA00000000007075;
  AnyHashable.init<A>(_:)();
  if (!*(v11 + 16))
  {
    goto LABEL_36;
  }

  v26 = sub_100032C7C(v53);
  if ((v27 & 1) == 0)
  {
    goto LABEL_36;
  }

  sub_10000BFEC(*(v11 + 56) + 32 * v26, &v54);
  sub_10000BF98(v53);

  if (!*(&v55 + 1))
  {
LABEL_38:
    sub_10001259C(&v54, &qword_1001BBB40, &qword_10016E740);
    return;
  }

  if (swift_dynamicCast() & 1) == 0 || (v53[0])
  {
    return;
  }

  v28 = [a1 userInfo];
  if (!v28)
  {
LABEL_37:
    v54 = 0u;
    v55 = 0u;
    goto LABEL_38;
  }

  v29 = v28;
  v30 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v51 = 0x4449656369766564;
  v52 = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v30 + 16) || (v31 = sub_100032C7C(v53), (v32 & 1) == 0))
  {
LABEL_36:

    sub_10000BF98(v53);
    goto LABEL_37;
  }

  sub_10000BFEC(*(v30 + 56) + 32 * v31, &v54);
  sub_10000BF98(v53);

  if (!*(&v55 + 1))
  {
    goto LABEL_38;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v34 = v53[0];
  v33 = v53[1];
  v36 = v48;
  v35 = v49;
  (*(v49 + 16))(v48, v2 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_model, v4);
  v37 = UUID.uuidString.getter();
  v39 = v38;
  (*(v35 + 8))(v36, v4);
  if (v34 == v37 && v33 == v39)
  {
  }

  else
  {
    v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v40 & 1) == 0)
    {
      return;
    }
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "Auto-dismissing device was lost", v43, 2u);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000ACD58(7);
    swift_unknownObjectRelease();
  }
}

void sub_10007C3CC(int a1, uint64_t a2)
{
  v3 = v2;
  sub_10007D2CC(a1);
  v6 = String.init(cString:)();
  v8 = v7;
  if (qword_1001B93A8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000D298(v9, qword_1001BC4B0);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  v12 = &qword_1001BC000;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v13 = 136315650;
    v15 = sub_10002065C(v6, v8, v41);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    if (a2)
    {
      v16 = Dictionary.description.getter();
      v18 = v17;
    }

    else
    {
      v18 = 0x8000000100148A80;
      v16 = 0xD00000000000002BLL;
    }

    v19 = sub_10002065C(v16, v18, v41);

    *(v13 + 14) = v19;
    *(v13 + 22) = 2112;
    v20 = *(v3 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_setupSession);
    *(v13 + 24) = v20;
    *v14 = v20;
    v21 = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "Progress {event: %s, info: %s, session: %@}", v13, 0x20u);
    sub_10001259C(v14, &unk_1001BBA60, &qword_10016D230);

    swift_arrayDestroy();

    v12 = &qword_1001BC000;
  }

  else
  {
  }

  if (*(v3 + v12[153]) && swift_unknownObjectWeakLoadStrong())
  {
    if (a1 <= 69)
    {
      if (a1 == 20)
      {
        v26 = Logger.logObject.getter();
        v27 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&_mh_execute_header, v26, v27, "Setup completed", v28, 2u);
        }

        sub_10007CD84(0);
        sub_1000E83C4(5);
        v29 = *(v3 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_remoteViewControllerProxy);
        if (v29)
        {
          swift_unknownObjectRetain();
          v30 = String._bridgeToObjectiveC()();
          [v29 setIdleTimerDisabled:0 forReason:v30];

          swift_unknownObjectRelease();
        }
      }

      else if (a1 == 30)
      {
        if (a2)
        {
          *&v42 = 28517;
          *(&v42 + 1) = 0xE200000000000000;
          AnyHashable.init<A>(_:)();
          if (*(a2 + 16))
          {
            v22 = sub_100032C7C(v41);
            if (v23)
            {
              sub_10000BFEC(*(a2 + 56) + 32 * v22, &v42);
              sub_10000BF98(v41);
              if (*(&v43 + 1))
              {
                sub_10007DB60();
                if (swift_dynamicCast())
                {
                  v24 = v41[0];
                }

                else
                {
                  v24 = 0;
                }

                goto LABEL_36;
              }

LABEL_35:
              sub_10001259C(&v42, &qword_1001BBB40, &qword_10016E740);
              v24 = 0;
LABEL_36:
              v31 = v24;
              v32 = Logger.logObject.getter();
              v33 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v32, v33))
              {
                v34 = swift_slowAlloc();
                v35 = swift_slowAlloc();
                *v34 = 138412290;
                *(v34 + 4) = v31;
                *v35 = v24;
                v36 = v31;
                _os_log_impl(&_mh_execute_header, v32, v33, "Setup failed {error: %@}", v34, 0xCu);
                sub_10001259C(v35, &unk_1001BBA60, &qword_10016D230);
              }

              if (v24)
              {
                v37 = v31;
                v38 = _convertErrorToNSError(_:)();
              }

              else
              {
                v38 = 0;
              }

              v39 = NSErrorToOSStatus();

              sub_10007CD84(v39);
              if (v39 == 301015)
              {
                v40 = 8;
              }

              else if (v39 == 301005)
              {
                v40 = 7;
              }

              else
              {
                v40 = 6;
              }

              sub_1000E83C4(v40);
              swift_unknownObjectRelease();

              return;
            }
          }

          sub_10000BF98(v41);
        }

        v42 = 0u;
        v43 = 0u;
        goto LABEL_35;
      }

      goto LABEL_30;
    }

    if (a1 == 70)
    {
      v25 = 3;
    }

    else
    {
      if (a1 != 234)
      {
LABEL_30:

        swift_unknownObjectRelease();
        return;
      }

      v25 = 4;
    }

    sub_1000E83C4(v25);
    goto LABEL_30;
  }
}

double sub_10007C9E4(int a1)
{
  if ((*(v1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_loggedUsageStart) & 1) == 0)
  {
    v3 = v1;
    *(v1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_loggedUsageStart) = 1;
    v5 = mach_absolute_time();
    v6 = v3 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_model;
    v7 = type metadata accessor for AuthenticateAccountsModel(0);
    if (v5 < *(v6 + v7[10]))
    {
      __break(1u);
    }

    else
    {
      v2 = UpTicksToMilliseconds();
      sub_100005DCC(&unk_1001BBCD0, &unk_10016E860);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10016EED0;
      *(inited + 32) = 1952539487;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = 0xD000000000000014;
      *(inited + 56) = 0x8000000100148A60;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 7368543;
      *(inited + 88) = 0xE300000000000000;
      *(inited + 96) = 0x7472617453;
      *(inited + 104) = 0xE500000000000000;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 6580595;
      *(inited + 136) = 0xE300000000000000;
      v9 = (v6 + v7[6]);
      v10 = v9[1];
      *(inited + 144) = *v9;
      *(inited + 152) = v10;
      *(inited + 168) = &type metadata for String;
      *(inited + 176) = 1769173874;
      *(inited + 184) = 0xE400000000000000;
      *(inited + 192) = *(v6 + v7[7]);
      *(inited + 216) = &type metadata for Int;
      *(inited + 224) = 0x6E6F69746361;
      *(inited + 232) = 0xE600000000000000;
      *(inited + 240) = a1;
      *(inited + 264) = &type metadata for Int32;
      *(inited + 272) = 29549;
      *(inited + 312) = &type metadata for UInt64;
      *(inited + 280) = 0xE200000000000000;
      *(inited + 288) = v2;

      sub_100004F48(inited);
      swift_setDeallocating();
      sub_100005DCC(&qword_1001B95D0, &qword_10016C030);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      SFDashboardLogJSON();

      if (qword_1001B93A8 == -1)
      {
        goto LABEL_4;
      }
    }

    swift_once();
LABEL_4:
    v12 = type metadata accessor for Logger();
    sub_10000D298(v12, qword_1001BC4B0);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136316162;
      v17 = (v6 + v7[6]);
      v22 = v2;
      v23 = v16;
      v18 = *v17;
      v19 = v17[1];

      v20 = sub_10002065C(v18, v19, &v23);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2048;
      *(v15 + 14) = *(v6 + v7[7]);
      *(v15 + 22) = 1024;
      *(v15 + 24) = a1;
      *(v15 + 28) = 2048;
      *(v15 + 30) = v22;
      *(v15 + 38) = 1024;
      *(v15 + 40) = *(v6 + v7[9]);

      _os_log_impl(&_mh_execute_header, v13, v14, "AuthenticateAccounts -- start {ID: %s, RSSI: %ld, action: %d, milliseconds: %llu, badPINCount: %u}", v15, 0x2Cu);
      sub_1000083B0(v16);
    }

    else
    {
    }
  }

  return result;
}

double sub_10007CD84(int a1)
{
  if ((*(v1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_loggedUsageDone) & 1) == 0)
  {
    v3 = v1;
    *(v1 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_loggedUsageDone) = 1;
    v5 = mach_absolute_time();
    v6 = v3 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_model;
    v7 = type metadata accessor for AuthenticateAccountsModel(0);
    if (v5 < *(v6 + v7[10]))
    {
      __break(1u);
    }

    else
    {
      v2 = UpTicksToMilliseconds();
      sub_100005DCC(&unk_1001BBCD0, &unk_10016E860);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10016EED0;
      *(inited + 32) = 1952539487;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = 0xD000000000000014;
      *(inited + 56) = 0x8000000100148A60;
      *(inited + 72) = &type metadata for String;
      *(inited + 80) = 7368543;
      *(inited + 88) = 0xE300000000000000;
      *(inited + 96) = 1701736260;
      *(inited + 104) = 0xE400000000000000;
      *(inited + 120) = &type metadata for String;
      *(inited + 128) = 6580595;
      *(inited + 136) = 0xE300000000000000;
      v9 = (v6 + v7[6]);
      v10 = v9[1];
      *(inited + 144) = *v9;
      *(inited + 152) = v10;
      *(inited + 168) = &type metadata for String;
      *(inited + 176) = 1769173874;
      *(inited + 184) = 0xE400000000000000;
      *(inited + 192) = *(v6 + v7[7]);
      *(inited + 216) = &type metadata for Int;
      *(inited + 224) = 0x726F727265;
      *(inited + 232) = 0xE500000000000000;
      *(inited + 240) = a1;
      *(inited + 264) = &type metadata for Int32;
      *(inited + 272) = 29549;
      *(inited + 312) = &type metadata for UInt64;
      *(inited + 280) = 0xE200000000000000;
      *(inited + 288) = v2;

      sub_100004F48(inited);
      swift_setDeallocating();
      sub_100005DCC(&qword_1001B95D0, &qword_10016C030);
      swift_arrayDestroy();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      SFDashboardLogJSON();

      if (qword_1001B93A8 == -1)
      {
        goto LABEL_4;
      }
    }

    swift_once();
LABEL_4:
    v12 = type metadata accessor for Logger();
    sub_10000D298(v12, qword_1001BC4B0);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136316162;
      v17 = (v6 + v7[6]);
      v22 = v2;
      v23 = v16;
      v18 = *v17;
      v19 = v17[1];

      v20 = sub_10002065C(v18, v19, &v23);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2048;
      *(v15 + 14) = *(v6 + v7[7]);
      *(v15 + 22) = 1024;
      *(v15 + 24) = a1;
      *(v15 + 28) = 2048;
      *(v15 + 30) = v22;
      *(v15 + 38) = 1024;
      *(v15 + 40) = *(v6 + v7[9]);

      _os_log_impl(&_mh_execute_header, v13, v14, "AuthenticateAccounts -- done {ID: %s, RSSI: %ld, status: %d, milliseconds: %llu, badPINCount: %u}", v15, 0x2Cu);
      sub_1000083B0(v16);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_10007D11C(uint64_t a1, uint64_t a2)
{
  sub_100012604(v2 + 16, a2);
  sub_10007DC0C(v2 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_model);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AuthenticateAccounsInteractor(uint64_t a1)
{
  result = qword_1001BC518;
  if (!qword_1001BC518)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10007D210(uint64_t a1)
{
  result = type metadata accessor for AuthenticateAccountsModel(319);
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

const char *sub_10007D2CC(int a1)
{
  if (a1 > 279)
  {
    if (a1 <= 709)
    {
      if (a1 <= 499)
      {
        if (a1 > 400)
        {
          if (a1 > 419)
          {
            switch(a1)
            {
              case 420:
                return "FileTransferReady";
              case 430:
                return "eSimExternal2FAStart";
              case 431:
                return "eSimExternal2FAStop";
            }
          }

          else
          {
            switch(a1)
            {
              case 401:
                return "PINPair";
              case 410:
                return "MigrateStart";
              case 411:
                return "MigrateStop";
            }
          }
        }

        else if (a1 > 299)
        {
          switch(a1)
          {
            case 300:
              return "BackupProgress";
            case 310:
              return "SyncProgress";
            case 400:
              return "StopSetup";
          }
        }

        else
        {
          switch(a1)
          {
            case 280:
              return "TVLCalFailed";
            case 281:
              return "TVLCalTryAgain";
            case 282:
              return "TVLCalFinal";
          }
        }
      }

      else if (a1 <= 554)
      {
        if (a1 > 529)
        {
          switch(a1)
          {
            case 530:
              return "SiriDialogBHome";
            case 540:
              return "SiriDialogBNews";
            case 550:
              return "SiriDialogBWeather";
          }
        }

        else
        {
          switch(a1)
          {
            case 500:
              return "SiriWelcome";
            case 510:
              return "SiriDialogA";
            case 520:
              return "SiriDialogBStart";
          }
        }
      }

      else if (a1 <= 569)
      {
        switch(a1)
        {
          case 555:
            return "SiriDialogBClock";
          case 558:
            return "SiriDialogBMusic";
          case 560:
            return "SiriDialogCMusic";
        }
      }

      else if (a1 > 599)
      {
        if (a1 == 600)
        {
          return "SiriSkipDemo";
        }

        if (a1 == 700)
        {
          return "StopSetupLEDs";
        }
      }

      else
      {
        if (a1 == 570)
        {
          return "SiriDialogCNews";
        }

        if (a1 == 580)
        {
          return "SiriDialogCWeather";
        }
      }

      return "?";
    }

    if (a1 <= 899)
    {
      if (a1 <= 802)
      {
        if (a1 == 710)
        {
          return "AudioPasscodeEnded";
        }

        if (a1 == 800)
        {
          return "AuthAccountsStart";
        }
      }

      else
      {
        switch(a1)
        {
          case 803:
            return "AuthAccountsiCloudProgress";
          case 804:
            return "AuthAccountsStoreProgress";
          case 805:
            return "AuthAccountsGameCenterProgress";
        }
      }

      return "?";
    }

    if (a1 > 999)
    {
      if (a1 <= 1099)
      {
        if (a1 == 1000)
        {
          return "SecureIntentStart";
        }

        if (a1 == 1001)
        {
          return "SecureIntentFinish";
        }
      }

      else
      {
        switch(a1)
        {
          case 1100:
            return "OneTimeCodeDetected";
          case 2000:
            return "DependentStart";
          case 2001:
            return "DependentEnd";
        }
      }

      return "?";
    }

    switch(a1)
    {
      case 900:
        result = "SU-No-SetupScanAttempt";
        break;
      case 901:
        result = "SU-No-SetupStatusUpdate";
        break;
      case 902:
        result = "SU-No-SetupWipeWifi";
        break;
      case 903:
        result = "SU-No-SetupCancelled";
        break;
      case 904:
        result = "SU-No-SetupObliterate";
        break;
      case 905:
        result = "SU-No-SetupCannotCancel";
        break;
      case 906:
        result = "SysDrop AirDrop Event";
        break;
      case 907:
        result = "SysDrop Sysdiagnose Event";
        break;
      case 908:
        result = "SysDrop Cancel Event";
        break;
      case 909:
        result = "File Transfer Progress Event";
        break;
      case 910:
        result = "File Transfer Completed Event";
        break;
      case 911:
        result = "iOSWiFiSetup";
        break;
      case 912:
        result = "HKPrimaryResidentSSIDFetchStart";
        break;
      case 913:
        result = "LoggingProfileTransfer";
        break;
      default:
        return "?";
    }
  }

  else
  {
    if (a1 > 121)
    {
      if (a1 <= 239)
      {
        if (a1 > 209)
        {
          if (a1 > 229)
          {
            switch(a1)
            {
              case 230:
                return "HomeKitStart";
              case 234:
                return "HomeKitSetupStart";
              case 236:
                return "CDPSetupStart";
            }
          }

          else
          {
            switch(a1)
            {
              case 210:
                return "ActivationStart";
              case 220:
                return "iCloudStart";
              case 224:
                return "AppleIDSetupStart";
            }
          }
        }

        else if (a1 > 139)
        {
          switch(a1)
          {
            case 140:
              return "RecognizeVoice";
            case 150:
              return "SiriForEveryone";
            case 200:
              return "WiFiStart";
          }
        }

        else
        {
          switch(a1)
          {
            case 122:
              return "CheckingAppleMusic";
            case 124:
              return "CheckingAccount";
            case 130:
              return "WiFiPoweredOff";
          }
        }
      }

      else if (a1 <= 269)
      {
        if (a1 > 249)
        {
          switch(a1)
          {
            case 250:
              return "ReportSuccess";
            case 260:
              return "TVLSStart";
            case 264:
              return "TVLSFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 240:
              return "BuddyStarting";
            case 241:
              return "BuddyProgress";
            case 242:
              return "BuddyFinished";
          }
        }
      }

      else
      {
        if (a1 > 275)
        {
          if (a1 > 277)
          {
            if (a1 == 278)
            {
              return "TVLCalStart";
            }

            else
            {
              return "TVLCalStep";
            }
          }

          else if (a1 == 276)
          {
            return "TVLSTryAgain";
          }

          else
          {
            return "TVLSToneBegan";
          }
        }

        switch(a1)
        {
          case 270:
            return "TVLSEstimateStart";
          case 272:
            return "TVLSEstimateFinal";
          case 274:
            return "TVLSEstimateFailed";
        }
      }

      return "?";
    }

    if (a1 > 69)
    {
      if (a1 <= 95)
      {
        if (a1 > 91)
        {
          switch(a1)
          {
            case '\\':
              return "StepStart";
            case '^':
              return "StepFinish";
            case '_':
              return "PreFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 'F':
              return "SecurityFinish";
            case 'P':
              return "BasicConfigStart";
            case 'Z':
              return "BasicConfigFinish";
          }
        }

        return "?";
      }

      if (a1 > 98)
      {
        switch(a1)
        {
          case 'c':
            return "SetupPeerSWUpdate";
          case 'd':
            return "Finished";
          case 'x':
            return "CheckingiCloud";
        }

        return "?";
      }

      if (a1 == 96)
      {
        return "SetupFinished";
      }

      else if (a1 == 97)
      {
        return "SetupResumed";
      }

      else
      {
        return "SetupSuspend";
      }
    }

    else
    {
      if (a1 > 32)
      {
        if (a1 > 49)
        {
          switch(a1)
          {
            case '2':
              return "PreAuthFinish";
            case '<':
              return "SecurityStart";
            case 'A':
              return "SecurityAPCLoopStart";
          }
        }

        else
        {
          switch(a1)
          {
            case '!':
              return "SessionSecured";
            case '#':
              return "ConnectStart";
            case '(':
              return "PreAuthStart";
          }
        }

        return "?";
      }

      if (a1 <= 29)
      {
        switch(a1)
        {
          case 0:
            return "Invalid";
          case 10:
            return "Start";
          case 20:
            return "Final";
        }

        return "?";
      }

      if (a1 == 30)
      {
        return "Error";
      }

      else if (a1 == 31)
      {
        return "SessionStarted";
      }

      else
      {
        return "SessionEnded";
      }
    }
  }

  return result;
}

unint64_t sub_10007DB60()
{
  result = qword_1001B9C30;
  if (!qword_1001B9C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001B9C30);
  }

  return result;
}

uint64_t sub_10007DBAC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10007DBEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007DC0C(uint64_t a1)
{
  v2 = type metadata accessor for AuthenticateAccountsModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007DC70()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BC6A8);
  v1 = sub_10000D298(v0, qword_1001BC6A8);
  if (qword_1001B92B0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10007DD38()
{
  if (qword_1001B93B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000D298(v1, qword_1001BC6A8);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v42 = v2;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v5 = 136315650;
    v7 = &v2[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_appleIDInfo];
    v8 = *&v2[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_appleIDInfo + 8];
    if (v8 > 1)
    {
      v9 = *v7;
    }

    else
    {

      v8 = 0x8000000100145470;
      v9 = 0xD000000000000015;
    }

    v10 = sub_10002065C(v9, v8, &v43);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    if (v7[1] == 1)
    {
      *(v5 + 14) = 0;
      *v6 = 0;
      *(v5 + 22) = 2080;
    }

    else
    {
      v11 = v7[2];
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      *(v5 + 14) = v12;
      *v6 = v11;
      *(v5 + 22) = 2080;
      v13 = v7[4];
      if (v13)
      {
        v14 = v7[3];

        v15 = v14;
LABEL_16:
        v16 = sub_10002065C(v15, v13, &v43);

        *(v5 + 24) = v16;
        _os_log_impl(&_mh_execute_header, v3, v4, "Set appleIDInfo. username: %s, profilePic: %@, phoneNumber: %s", v5, 0x20u);
        sub_10001259C(v6, &unk_1001BBA60, &qword_10016D230);

        swift_arrayDestroy();

        v2 = v42;
        goto LABEL_17;
      }
    }

    v13 = 0x8000000100145470;
    v15 = 0xD000000000000015;
    goto LABEL_16;
  }

LABEL_17:
  v17 = *&v2[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_imageView];
  v18 = &v2[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_appleIDInfo];
  if (*&v2[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_appleIDInfo + 8] == 1 || (v19 = *(v18 + 2)) == 0)
  {
    v21 = String._bridgeToObjectiveC()();
    v20 = [objc_opt_self() systemImageNamed:v21];
  }

  else
  {
    v20 = v19;
  }

  [v17 setImage:v20];

  v22 = *(v18 + 1);
  if (v22 == 1)
  {
    v23 = 0;
    v22 = 0;
  }

  else
  {
    v23 = *(v18 + 4);
    if (v22)
    {
    }
  }

  sub_100005DCC(&qword_1001B9F48, &unk_10016D3E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016CCE0;
  *(inited + 32) = NSForegroundColorAttributeName;
  v25 = objc_opt_self();

  v41 = NSForegroundColorAttributeName;
  v26 = [v25 labelColor];
  v27 = sub_1000122EC(0, &qword_1001B9F50, UIColor_ptr);
  *(inited + 64) = v27;
  *(inited + 40) = v26;
  sub_100004E20(inited);
  swift_setDeallocating();
  sub_10001259C(inited + 32, &qword_1001B9618, &qword_10016C078);
  v28 = objc_allocWithZone(NSMutableAttributedString);
  v29 = String._bridgeToObjectiveC()();

  type metadata accessor for Key(0);
  sub_1000169FC();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v31 = [v28 initWithString:v29 attributes:isa];

  if (v22)
  {

    if (v23)
    {
      v32 = objc_allocWithZone(NSAttributedString);
      v33 = String._bridgeToObjectiveC()();
      v34 = [v32 initWithString:v33];

      [v31 appendAttributedString:v34];
    }
  }

  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_10016CCE0;
  *(v35 + 32) = v41;
  v36 = [v25 secondaryLabelColor];
  *(v35 + 64) = v27;
  *(v35 + 40) = v36;
  sub_100004E20(v35);
  swift_setDeallocating();
  sub_10001259C(v35 + 32, &qword_1001B9618, &qword_10016C078);
  v37 = objc_allocWithZone(NSAttributedString);
  v38 = String._bridgeToObjectiveC()();

  v39 = Dictionary._bridgeToObjectiveC()().super.isa;

  v40 = [v37 initWithString:v38 attributes:v39];

  [v31 appendAttributedString:v40];
  [*&v42[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_idLabel] setAttributedText:v31];
}

char *sub_10007E3D0(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_mainController] = 0;
  v3 = &v1[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_appleIDInfo];
  *v3 = xmmword_10016D2F0;
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *(v3 + 2) = 0;
  v4 = OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_imageView;
  *&v1[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_idLabel;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_infoLabel;
  *&v1[v6] = [objc_allocWithZone(UILabel) init];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AirTagLinkingViewController();
  v7 = objc_msgSendSuper2(&v10, "initWithContentView:", 0);
  v8 = *&v7[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_mainController];
  *&v7[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_mainController] = a1;

  return v7;
}

void sub_10007E4C8()
{
  v1 = v0;
  v54.receiver = v0;
  v54.super_class = type metadata accessor for AirTagLinkingViewController();
  objc_msgSendSuper2(&v54, "viewDidLoad");
  sub_1000974B4(115);
  v2 = String._bridgeToObjectiveC()();

  [v1 setTitle:v2];

  [v1 setDismissalType:1];
  sub_1000974B4(117);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v4 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10007EF48;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001BE90;
  aBlock[3] = &unk_100192280;
  v5 = _Block_copy(aBlock);
  v52 = [objc_opt_self() actionWithTitle:v4 style:0 handler:v5];

  _Block_release(v5);

  v6 = *&v1[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_idLabel];
  v7 = objc_opt_self();
  v8 = [v7 preferredFontForTextStyle:UIFontTextStyleBody];
  [v6 setFont:v8];

  [v6 setTextAlignment:1];
  [v6 setNumberOfLines:0];
  v9 = *&v1[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_infoLabel];
  v10 = [v7 preferredFontForTextStyle:UIFontTextStyleBody];
  [v9 setFont:v10];

  [v9 setTextAlignment:1];
  [v9 setNumberOfLines:0];
  sub_1000974B4(116);
  v11 = String._bridgeToObjectiveC()();

  [v9 setText:v11];

  v12 = [v1 contentView];
  v13 = *&v1[OBJC_IVAR____TtC18SharingViewService27AirTagLinkingViewController_imageView];
  [v12 addSubview:v13];

  v14 = [v1 contentView];
  [v14 addSubview:v6];

  v15 = [v1 contentView];
  [v15 addSubview:v9];

  [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  v16 = [v1 contentView];
  v17 = [v16 mainContentGuide];

  v51 = objc_opt_self();
  sub_100005DCC(&qword_1001BBB00, &unk_10016CF10);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_10016D300;
  v19 = [v13 widthAnchor];
  v20 = [v19 constraintEqualToConstant:80.0];

  *(v18 + 32) = v20;
  v21 = [v13 heightAnchor];
  v22 = [v21 constraintEqualToConstant:80.0];

  *(v18 + 40) = v22;
  v23 = [v13 topAnchor];
  v24 = [v17 topAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v18 + 48) = v25;
  v26 = [v13 centerXAnchor];
  v27 = [v17 centerXAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v18 + 56) = v28;
  v29 = [v6 topAnchor];
  v30 = [v13 bottomAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:10.0];

  *(v18 + 64) = v31;
  v32 = [v6 leadingAnchor];
  v33 = [v17 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor:v33];

  *(v18 + 72) = v34;
  v35 = [v6 trailingAnchor];
  v36 = [v17 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v18 + 80) = v37;
  v38 = [v9 topAnchor];
  v39 = [v6 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:20.0];

  *(v18 + 88) = v40;
  v41 = [v9 leadingAnchor];
  v42 = [v17 leadingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];

  *(v18 + 96) = v43;
  v44 = [v9 trailingAnchor];
  v45 = [v17 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor:v45];

  *(v18 + 104) = v46;
  v47 = [v9 bottomAnchor];
  v48 = [v17 bottomAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:-10.0];

  *(v18 + 112) = v49;
  sub_1000122EC(0, &qword_1001B9968, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v51 activateConstraints:isa];
}

void sub_10007ED2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_didAgreeToLinking] = 1;
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_1000BC538();
  }
}

id sub_10007EE30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AirTagLinkingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10007EF10(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v2, 24, 7);
}

uint64_t sub_10007EF50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_10007EF68(char a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for BaseProxFlowViewController();
  objc_msgSendSuper2(&v6, "viewDidAppear:", a1 & 1);
  v3 = sub_100070288();
  if (v3)
  {
    [v3 setStatusBarHidden:1 withDuration:0.3];
    swift_unknownObjectRelease();
  }

  v4 = sub_100070288();
  if (v4)
  {
    [v4 setAllowsBanners:1];
    swift_unknownObjectRelease();
  }

  result = sub_100070288();
  if (result)
  {
    [result setDesiredHardwareButtonEvents:16 * (SFDeviceHomeButtonType() != 3)];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_10007F230(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for BaseProxFlowViewController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_10007F288(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);

  return result;
}

uint64_t sub_10007F2E0()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BC738);
  v1 = sub_10000D298(v0, qword_1001BC738);
  if (qword_1001B92C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C38E8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10007F3A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for D2DSetupModel(0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_10008AA10(v2 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model, v9);
    sub_10008AA10(v9, v7);
    v12 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
    swift_beginAccess();
    sub_10008AA74(v7, v11 + v12);
    swift_endAccess();
    sub_1000AD8C8();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_10008AAD8(v7);
    return sub_10008AAD8(v9);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_10007F50C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for D2DSetupModel(0);
  __chkstk_darwin(v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  v7 = (v2 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v2 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_migrationController);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_localAuthenticationContext;
  *(v2 + v9) = [objc_allocWithZone(LAContext) init];
  sub_100092D68(a1, v6);
  v10 = v2 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
  sub_10008A8E4(v6, v2 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model);
  v11 = [objc_allocWithZone(ACAccountStore) init];
  v12 = [v11 aa_primaryAppleAccount];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 username];
    if (v14)
    {
      v15 = v14;
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        v20 = (v10 + v4[7]);
        *v20 = v16;
        v20[1] = v18;

        goto LABEL_13;
      }
    }
  }

  if (qword_1001B93B8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_10000D298(v21, qword_1001BC738);
  v22 = v13;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = v13;
    v44 = v42;
    *v25 = 136315138;
    v26 = v22;
    sub_100005DCC(&qword_1001BCA30, &unk_10016F250);
    v27 = String.init<A>(reflecting:)();
    v29 = v4;
    v30 = v11;
    v31 = sub_10002065C(v27, v28, &v44);

    *(v25 + 4) = v31;
    v11 = v30;
    v4 = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "No Apple ID found for account: %s", v25, 0xCu);
    sub_1000083B0(v42);
  }

LABEL_13:
  *(v10 + v4[12]) = mach_absolute_time();
  v32 = sub_10006D1F8();

  *(v10 + v4[21]) = v32;
  v33 = *(v2 + 112);
  v34 = *(v2 + 120);
  *(v2 + 112) = sub_10007F8C8;
  *(v2 + 120) = 0;
  sub_100012050(v33, v34);
  v35 = *(v2 + 128);
  v36 = *(v2 + 136);
  *(v2 + 128) = sub_10007F8FC;
  *(v2 + 136) = 0;
  sub_100012050(v35, v36);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = *(v2 + 144);
  v39 = *(v2 + 152);
  *(v2 + 144) = sub_10008A980;
  *(v2 + 152) = v37;

  sub_100012050(v38, v39);

  return v2;
}

uint64_t sub_10007F930(uint64_t a1)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 1;
  }

  result = WiFiManagerClientCreate();
  if (result)
  {
    return WiFiManagerClientGetPower() != 0;
  }

  return result;
}

uint64_t sub_10007F9A0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v68 = *(v4 - 8);
  __chkstk_darwin(v4);
  v66 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for D2DSetupModel(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v61 - v11;
  __chkstk_darwin(v10);
  v14 = &v61 - v13;
  v15 = [a1 name];
  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  v18 = [a1 userInfo];
  if (v18)
  {
    v19 = v18;
    v20 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v20 = 0;
  }

  if (qword_1001B93B8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_10000D298(v21, qword_1001BC738);

  v67 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v62 = v14;
    v63 = v4;
    v64 = v6;
    v65 = v2;
    v25 = v12;
    v26 = swift_slowAlloc();
    v72[0] = swift_slowAlloc();
    *v26 = 136315394;
    *(v26 + 4) = sub_10002065C(v69, v17, v72);
    *(v26 + 12) = 2080;
    if (v20)
    {

      v28 = sub_10009FFD0(v27);
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0xE000000000000000;
    }

    v31 = sub_10002065C(v28, v30, v72);

    *(v26 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "DeviceSetup notification '%s', %s", v26, 0x16u);
    swift_arrayDestroy();

    v12 = v25;
    v6 = v64;
    v2 = v65;
    v14 = v62;
    v4 = v63;
  }

  else
  {
  }

  v32 = v2 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
  if (*(v2 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + 16) <= 2u || *v32 > 1uLL || *v32 != 0)
  {

    goto LABEL_14;
  }

  if (v69 == 0xD00000000000001DLL && 0x80000001001481B0 == v17)
  {

    goto LABEL_23;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v33 & 1) == 0)
  {
LABEL_14:
  }

LABEL_23:
  if (!v20)
  {
    v73 = 0u;
    v74 = 0u;
    sub_10001259C(&v73, &qword_1001BBB40, &qword_10016E740);
    goto LABEL_42;
  }

  v70 = 0x746553736465656ELL;
  v71 = 0xEA00000000007075;

  AnyHashable.init<A>(_:)();
  if (!*(v20 + 16) || (v34 = sub_100032C7C(v72), (v35 & 1) == 0))
  {

    sub_10000BF98(v72);
    v73 = 0u;
    v74 = 0u;
    goto LABEL_31;
  }

  sub_10000BFEC(*(v20 + 56) + 32 * v34, &v73);
  sub_10000BF98(v72);

  if (!*(&v74 + 1))
  {
LABEL_31:
    sub_10001259C(&v73, &qword_1001BBB40, &qword_10016E740);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) != 0 && v72[0])
  {
  }

LABEL_32:
  v70 = 0x4449656369766564;
  v71 = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v20 + 16) || (v36 = sub_100032C7C(v72), (v37 & 1) == 0))
  {

    sub_10000BF98(v72);
LABEL_42:
    v73 = 0u;
    v74 = 0u;
    goto LABEL_43;
  }

  sub_10000BFEC(*(v20 + 56) + 32 * v36, &v73);
  sub_10000BF98(v72);

  if (!*(&v74 + 1))
  {
LABEL_43:
    sub_10001259C(&v73, &qword_1001BBB40, &qword_10016E740);
    v69 = 0;
    v40 = 0;
    goto LABEL_44;
  }

  v38 = swift_dynamicCast();
  v39 = v72[0];
  if (!v38)
  {
    v39 = 0;
  }

  v69 = v39;
  if (v38)
  {
    v40 = v72[1];
  }

  else
  {
    v40 = 0;
  }

LABEL_44:
  v41 = v68;
  sub_10008AA10(v32, v14);
  v42 = *(v6 + 24);
  if ((*(v41 + 48))(&v14[v42], 1, v4))
  {
    sub_10008AAD8(v14);
    if (v40)
    {
    }
  }

  else
  {
    v43 = &v14[v42];
    v44 = v66;
    (*(v41 + 16))(v66, v43, v4);
    sub_10008AAD8(v14);
    v45 = UUID.uuidString.getter();
    v46 = v4;
    v47 = v45;
    v49 = v48;
    (*(v41 + 8))(v44, v46);
    if (v40)
    {
      if (!v49)
      {
      }

      if (v69 == v47 && v40 == v49)
      {
      }

      else
      {
        v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v51 & 1) == 0)
        {
          return result;
        }
      }
    }

    else if (v49)
    {
    }
  }

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v52, v53, "Auto-dismissing on setup started", v54, 2u);
  }

  v55 = v32 + *(v6 + 72);
  *v55 = 16;
  *(v55 + 4) = 0;
  v56 = *v32;
  v57 = *(v32 + 8);
  *v32 = xmmword_10016F020;
  v58 = *(v32 + 16);
  *(v32 + 16) = 3;
  sub_10008ABCC(v56, v57, v58);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v59 = result;
    sub_10008AA10(v32, v12);
    sub_10008AA10(v12, v9);
    v60 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
    swift_beginAccess();
    sub_10008AA74(v9, v59 + v60);
    swift_endAccess();
    sub_1000AD8C8();
    swift_unknownObjectRelease();
    sub_10008AAD8(v9);
    return sub_10008AAD8(v12);
  }

  return result;
}

void sub_100080268()
{
  v1 = v0;
  v2 = sub_100005DCC(&unk_1001BBB80, &qword_10016E770);
  __chkstk_darwin(v2 - 8);
  v35 = &v33 - v3;
  v4 = type metadata accessor for D2DSetupModel(0);
  v5 = __chkstk_darwin(v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v33 - v8;
  v10 = *(v0 + 144);
  if (v10)
  {
    v11 = *(v0 + 152);

    v13 = v10(v12);
    sub_100012050(v10, v11);
  }

  else
  {
    v13 = 0;
  }

  if (qword_1001B93B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000D298(v14, qword_1001BC738);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36[0] = v18;
    *v17 = 136315138;
    if (v13)
    {
      v19 = 28271;
    }

    else
    {
      v19 = 6710895;
    }

    v34 = v9;
    if (v13)
    {
      v20 = 0xE200000000000000;
    }

    else
    {
      v20 = 0xE300000000000000;
    }

    v21 = v4;
    v22 = v1;
    v23 = v7;
    v24 = sub_10002065C(v19, v20, v36);
    v9 = v34;

    *(v17 + 4) = v24;
    v7 = v23;
    v1 = v22;
    v4 = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "Start: WiFi %s", v17, 0xCu);
    sub_1000083B0(v18);
  }

  v25 = v1 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
  *(v1 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + *(v4 + 88)) = v13 & 1;
  if (v13)
  {
    if (*(v25 + 16) >= 3u && *v25 == 0)
    {
      v26 = type metadata accessor for TaskPriority();
      v27 = v35;
      (*(*(v26 - 8) + 56))(v35, 1, 1, v26);
      type metadata accessor for MainActor();

      v28 = static MainActor.shared.getter();
      v29 = swift_allocObject();
      v29[2] = v28;
      v29[3] = &protocol witness table for MainActor;
      v29[4] = v1;
      sub_1000BB214(0, 0, v27, &unk_10016F280, v29);
    }
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v31 = Strong;
      sub_10008AA10(v25, v9);
      sub_10008AA10(v9, v7);
      v32 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
      swift_beginAccess();
      sub_10008AA74(v7, v31 + v32);
      swift_endAccess();
      sub_1000AD8C8();
      swift_unknownObjectRelease();
      sub_10008AAD8(v7);
      sub_10008AAD8(v9);
    }
  }
}

uint64_t sub_100080640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[53] = a4;
  sub_100005DCC(&unk_1001BBAA0, &qword_10016CD60);
  v4[54] = swift_task_alloc();
  v4[55] = type metadata accessor for D2DSetupModel(0);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[58] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[59] = v5;
  v4[60] = v6;

  return _swift_task_switch(sub_100080780, v5, v6);
}

uint64_t sub_100080780()
{
  v71 = v0;
  v1 = v0[55];
  v2 = v0[53];
  v3 = OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
  v0[61] = OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
  v4 = v2 + v3;
  v5 = *(v2 + v3);
  v6 = *(v2 + v3 + 8);
  *v4 = xmmword_10016F030;
  v7 = *(v2 + v3 + 16);
  *(v4 + 16) = 3;
  sub_10008ABCC(v5, v6, v7);
  if (*(v4 + *(v1 + 84)) == 1)
  {
    if (qword_1001B93B8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    v0[62] = sub_10000D298(v8, qword_1001BC738);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Start button requesting unlock", v11, 2u);
    }

    v12 = swift_task_alloc();
    v0[63] = v12;
    *v12 = v0;
    v12[1] = sub_10008112C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)();
  }

  v0[35] = &type metadata for DTOFeatureFlag;
  v0[36] = sub_10008AD70();
  v13 = isFeatureEnabled(_:)();
  sub_1000083B0(v0 + 32);
  if (v13)
  {
    v68 = OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_localAuthenticationContext;
    v69 = v0[53];
    v14 = *(v69 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_localAuthenticationContext);
    v0[49] = 0;
    v15 = [v14 canEvaluatePolicy:1025 error:v0 + 49];
    v16 = v0[49];
    v0[65] = v16;
    if (v16)
    {
      v17 = qword_1001B93B8;
      v18 = v16;
      if (v17 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_10000D298(v19, qword_1001BC738);
      v20 = v18;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v21, v22))
      {

        if (v15)
        {
          goto LABEL_16;
        }

LABEL_25:

        goto LABEL_26;
      }

      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v70 = v24;
      *v23 = 136315138;
      v0[52] = v20;
      sub_1000122EC(0, &qword_1001B9C30, NSError_ptr);
      v25 = v20;
      v26 = String.init<A>(reflecting:)();
      v28 = sub_10002065C(v26, v27, &v70);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Failed to evaluate policy: %s", v23, 0xCu);
      sub_1000083B0(v24);
    }

    if (v15)
    {
LABEL_16:
      if (qword_1001B93B8 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      v0[66] = sub_10000D298(v29, qword_1001BC738);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Start button requesting bio auth for DTO", v32, 2u);
      }

      v33 = v0[61];
      v34 = v0[55];
      v35 = v0[53];

      v36 = v35 + v33;
      sub_100005DCC(&qword_1001BCA58, &qword_10016F288);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10016CCD0;
      *(inited + 32) = 2;
      v38 = String._bridgeToObjectiveC()();
      v39 = sub_100126C04(v38, *(v36 + *(v34 + 100)));

      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v42 = v41;

      v43 = [objc_opt_self() mainBundle];
      v73._object = 0xE000000000000000;
      v44.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v44.value._object = 0xEB00000000656C62;
      v45._countAndFlagsBits = v40;
      v45._object = v42;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      v73._countAndFlagsBits = 0;
      v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, v44, v43, v46, v73);

      *(inited + 64) = &type metadata for String;
      *(inited + 40) = v47;
      *(inited + 72) = 1061;
      *(inited + 104) = &type metadata for Bool;
      *(inited + 80) = 1;
      v48 = sub_100005C40(inited);
      swift_setDeallocating();
      sub_100005DCC(&qword_1001B9638, &qword_10016F290);
      swift_arrayDestroy();
      v49 = *(v69 + v68);
      v0[67] = v49;
      v50 = v49;
      sub_1000BAE88(v48);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v0[68] = isa;

      v0[2] = v0;
      v0[7] = v0 + 50;
      v0[3] = sub_100081D70;
      v52 = swift_continuation_init();
      v0[31] = sub_100005DCC(&qword_1001BCA60, &unk_10016F298);
      v0[24] = _NSConcreteStackBlock;
      v0[25] = 1107296256;
      v0[26] = sub_1000823F4;
      v0[27] = &unk_1001925D0;
      v0[28] = v52;
      [v50 evaluatePolicy:1025 options:isa reply:v0 + 24];

      return _swift_continuation_await(v0 + 2);
    }

    goto LABEL_25;
  }

LABEL_26:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v54 = Strong;
    v56 = v0[56];
    v55 = v0[57];
    sub_10008AA10(v0[53] + v0[61], v55);
    sub_10008AA10(v55, v56);
    v57 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
    swift_beginAccess();
    sub_10008AA74(v56, v54 + v57);
    swift_endAccess();
    sub_1000AD8C8();
    swift_unknownObjectRelease();
    sub_10008AAD8(v56);
    sub_10008AAD8(v55);
  }

  v58 = v0[54];
  v59 = v0[55];
  v60 = v0[53] + v0[61];
  v61 = [objc_allocWithZone(SFDevice) init];
  [v61 setOsVersion:*(v60 + *(v59 + 32))];
  sub_100005EB8(v60 + *(v59 + 24), v58, &unk_1001BBAA0, &qword_10016CD60);
  v62 = type metadata accessor for UUID();
  v63 = *(v62 - 8);
  v64 = 0;
  if ((*(v63 + 48))(v58, 1, v62) != 1)
  {
    v65 = v0[54];
    v64 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v63 + 8))(v65, v62);
  }

  [v61 setIdentifier:v64];

  sub_1000824F0(v61);

  v66 = v0[1];

  return v66();
}

uint64_t sub_10008112C()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_100081AE4;
  }

  else
  {
    v2 = sub_10008126C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008126C()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);

  return _swift_task_switch(sub_1000812F4, v1, v2);
}

uint64_t sub_1000812F4(uint64_t a1)
{
  v60 = v1;
  *(v1[53] + v1[61] + *(v1[55] + 84)) = 0;
  v1[35] = &type metadata for DTOFeatureFlag;
  v1[36] = sub_10008AD70();
  v2 = isFeatureEnabled(_:)();
  sub_1000083B0(v1 + 32);
  if (v2)
  {
    v57 = OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_localAuthenticationContext;
    v58 = v1[53];
    v3 = *(v58 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_localAuthenticationContext);
    v1[49] = 0;
    v4 = [v3 canEvaluatePolicy:1025 error:v1 + 49];
    v5 = v1[49];
    v1[65] = v5;
    if (v5)
    {
      v6 = qword_1001B93B8;
      v7 = v5;
      if (v6 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_10000D298(v8, qword_1001BC738);
      v9 = v7;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v10, v11))
      {

        if (v4)
        {
          goto LABEL_8;
        }

LABEL_17:

        goto LABEL_18;
      }

      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v59 = v13;
      *v12 = 136315138;
      v1[52] = v9;
      sub_1000122EC(0, &qword_1001B9C30, NSError_ptr);
      v14 = v9;
      v15 = String.init<A>(reflecting:)();
      v17 = sub_10002065C(v15, v16, &v59);

      *(v12 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v10, v11, "Failed to evaluate policy: %s", v12, 0xCu);
      sub_1000083B0(v13);
    }

    if (v4)
    {
LABEL_8:
      if (qword_1001B93B8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      v1[66] = sub_10000D298(v18, qword_1001BC738);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Start button requesting bio auth for DTO", v21, 2u);
      }

      v22 = v1[61];
      v23 = v1[55];
      v24 = v1[53];

      v25 = v24 + v22;
      sub_100005DCC(&qword_1001BCA58, &qword_10016F288);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10016CCD0;
      *(inited + 32) = 2;
      v27 = String._bridgeToObjectiveC()();
      v28 = sub_100126C04(v27, *(v25 + *(v23 + 100)));

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      v32 = [objc_opt_self() mainBundle];
      v62._object = 0xE000000000000000;
      v33.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v33.value._object = 0xEB00000000656C62;
      v34._countAndFlagsBits = v29;
      v34._object = v31;
      v35._countAndFlagsBits = 0;
      v35._object = 0xE000000000000000;
      v62._countAndFlagsBits = 0;
      v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v34, v33, v32, v35, v62);

      *(inited + 64) = &type metadata for String;
      *(inited + 40) = v36;
      *(inited + 72) = 1061;
      *(inited + 104) = &type metadata for Bool;
      *(inited + 80) = 1;
      v37 = sub_100005C40(inited);
      swift_setDeallocating();
      sub_100005DCC(&qword_1001B9638, &qword_10016F290);
      swift_arrayDestroy();
      v38 = *(v58 + v57);
      v1[67] = v38;
      v39 = v38;
      sub_1000BAE88(v37);

      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v1[68] = isa;

      v1[2] = v1;
      v1[7] = v1 + 50;
      v1[3] = sub_100081D70;
      v41 = swift_continuation_init();
      v1[31] = sub_100005DCC(&qword_1001BCA60, &unk_10016F298);
      v1[24] = _NSConcreteStackBlock;
      v1[25] = 1107296256;
      v1[26] = sub_1000823F4;
      v1[27] = &unk_1001925D0;
      v1[28] = v41;
      [v39 evaluatePolicy:1025 options:isa reply:v1 + 24];

      return _swift_continuation_await(v1 + 2);
    }

    goto LABEL_17;
  }

LABEL_18:
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = Strong;
    v45 = v1[56];
    v44 = v1[57];
    sub_10008AA10(v1[53] + v1[61], v44);
    sub_10008AA10(v44, v45);
    v46 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
    swift_beginAccess();
    sub_10008AA74(v45, v43 + v46);
    swift_endAccess();
    sub_1000AD8C8();
    swift_unknownObjectRelease();
    sub_10008AAD8(v45);
    sub_10008AAD8(v44);
  }

  v47 = v1[54];
  v48 = v1[55];
  v49 = v1[53] + v1[61];
  v50 = [objc_allocWithZone(SFDevice) init];
  [v50 setOsVersion:*(v49 + *(v48 + 32))];
  sub_100005EB8(v49 + *(v48 + 24), v47, &unk_1001BBAA0, &qword_10016CD60);
  v51 = type metadata accessor for UUID();
  v52 = *(v51 - 8);
  v53 = 0;
  if ((*(v52 + 48))(v47, 1, v51) != 1)
  {
    v54 = v1[54];
    v53 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v52 + 8))(v54, v51);
  }

  [v50 setIdentifier:v53];

  sub_1000824F0(v50);

  v55 = v1[1];

  return v55();
}

uint64_t sub_100081AE4()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 480);

  return _swift_task_switch(sub_100081B6C, v1, v2);
}

uint64_t sub_100081B6C()
{

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Springboard unlock either failed or got canceled by the user", v3, 2u);
  }

  v4 = v0[61];
  v5 = v0[55];
  v6 = v0[53];

  v7 = v6 + v4;
  v8 = v6 + v4 + *(v5 + 72);
  *v8 = 10;
  *(v8 + 4) = 0;
  v9 = *(v6 + v4);
  v10 = *(v6 + v4 + 8);
  *v7 = xmmword_10016F020;
  v11 = *(v6 + v4 + 16);
  *(v7 + 16) = 3;
  sub_10008ABCC(v9, v10, v11);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v15 = v0[56];
    v14 = v0[57];
    sub_10008AA10(v0[53] + v0[61], v14);
    sub_10008AA10(v14, v15);
    v16 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
    swift_beginAccess();
    sub_10008AA74(v15, v13 + v16);
    swift_endAccess();
    sub_1000AD8C8();

    swift_unknownObjectRelease();
    sub_10008AAD8(v15);
    sub_10008AAD8(v14);
  }

  else
  {
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100081D70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 552) = v2;
  v3 = *(v1 + 480);
  v4 = *(v1 + 472);
  if (v2)
  {
    v5 = sub_100082144;
  }

  else
  {
    v5 = sub_100081ECC;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100081ECC()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[65];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v7 = v0[56];
    v6 = v0[57];
    sub_10008AA10(v0[53] + v0[61], v6);
    sub_10008AA10(v6, v7);
    v8 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
    swift_beginAccess();
    sub_10008AA74(v7, v5 + v8);
    swift_endAccess();
    sub_1000AD8C8();
    swift_unknownObjectRelease();
    sub_10008AAD8(v7);
    sub_10008AAD8(v6);
  }

  v9 = v0[54];
  v10 = v0[55];
  v11 = v0[53] + v0[61];
  v12 = [objc_allocWithZone(SFDevice) init];
  [v12 setOsVersion:*(v11 + *(v10 + 32))];
  sub_100005EB8(v11 + *(v10 + 24), v9, &unk_1001BBAA0, &qword_10016CD60);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  isa = 0;
  if ((*(v14 + 48))(v9, 1, v13) != 1)
  {
    v16 = v0[54];
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v14 + 8))(v16, v13);
  }

  [v12 setIdentifier:isa];

  sub_1000824F0(v12);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100082144()
{
  v24 = v0;
  v1 = v0[68];
  v2 = v0[67];

  swift_willThrow();

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_10002065C(v7, v8, &v23);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "DTO failed to bio authenticate with error: %s", v5, 0xCu);
    sub_1000083B0(v6);
  }

  v10 = v0[53] + v0[61];
  v11 = v10 + *(v0[55] + 72);
  *v11 = 10;
  *(v11 + 4) = 0;
  v12 = *v10;
  v13 = *(v10 + 8);
  *v10 = xmmword_10016F020;
  v14 = *(v10 + 16);
  *(v10 + 16) = 3;
  sub_10008ABCC(v12, v13, v14);
  Strong = swift_unknownObjectWeakLoadStrong();
  v16 = v0[65];
  if (Strong)
  {
    v17 = Strong;
    v19 = v0[56];
    v18 = v0[57];
    sub_10008AA10(v0[53] + v0[61], v18);
    sub_10008AA10(v18, v19);
    v20 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
    swift_beginAccess();
    sub_10008AA74(v19, v17 + v20);
    swift_endAccess();
    sub_1000AD8C8();
    swift_unknownObjectRelease();

    sub_10008AAD8(v19);
    sub_10008AAD8(v18);
  }

  else
  {
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000823F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_10000836C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100005DCC(&qword_1001BBA48, qword_10016FA40);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_1000824F0(void *a1)
{
  v2 = v1;
  v52 = type metadata accessor for D2DSetupModel(0);
  v4 = __chkstk_darwin(v52);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v51 - v7;
  if (qword_1001B93B8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000D298(v9, qword_1001BC738);
  v10 = a1;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v53 = v10;
    v54 = v14;
    *v13 = 136315138;
    sub_1000122EC(0, &qword_1001BBBB0, SFDevice_ptr);
    v15 = v10;
    v16 = String.init<A>(reflecting:)();
    v18 = sub_10002065C(v16, v17, &v54);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "Start setup with %s", v13, 0xCu);
    sub_1000083B0(v14);
  }

  v19 = (v2 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession);
  if (*(v2 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession))
  {
    v20 = v19[1];
    ObjectType = swift_getObjectType();
    v22 = *(v20 + 160);
    swift_unknownObjectRetain();
    v22(ObjectType, v20);
    swift_unknownObjectRelease();
  }

  v23 = v2[14];
  if (v23)
  {
    v24 = v2[15];

    v26 = v23(v25);
    v28 = v27;
    sub_100012050(v23, v24);
  }

  else
  {
    v26 = [objc_allocWithZone(SFDeviceSetupSessioniOS) init];
    v28 = &off_1001922A8;
  }

  *v19 = v26;
  v19[1] = v28;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v29 = swift_getObjectType();
  v30 = v28[2];
  v31 = v10;
  v30(v10, v29, v28);
  swift_unknownObjectRelease();
  if (*v19)
  {
    v32 = v19[1];
    sub_10008AA10(v2 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model, v8);
    v33 = v8[*(v52 + 32)] >= 0xCu && (*&v8[*(v52 + 28) + 8] != 0);
    v34 = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10008AAD8(v8);
    (*(v32 + 64))(v33, v34, v32);
    swift_unknownObjectRelease();
    if (*v19)
    {
      v35 = v19[1];
      v36 = swift_getObjectType();
      v37 = swift_allocObject();
      swift_weakInit();
      v38 = *(v35 + 112);
      swift_unknownObjectRetain();

      v38(sub_10008AF00, v37, v36, v35);
      swift_unknownObjectRelease();

      if (*v19)
      {
        v39 = v19[1];
        v40 = swift_getObjectType();
        v41 = swift_allocObject();
        swift_weakInit();
        v42 = *(v39 + 136);
        swift_unknownObjectRetain();

        v42(sub_10008AF08, v41, v40, v39);
        swift_unknownObjectRelease();
      }
    }
  }

  sub_10008AA10(v2 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model, v6);
  v43 = sub_10009344C();
  sub_10008AAD8(v6);
  if (v43)
  {
    v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v44 & 1) == 0)
    {
      sub_100086C90();
    }
  }

  else
  {
  }

  if (*v19)
  {
    v45 = v19[1];
    v46 = swift_getObjectType();
    v47 = *(v45 + 152);
    swift_unknownObjectRetain();
    v47(v46, v45);
    swift_unknownObjectRelease();
  }

  result = sub_100084520(9);
  v49 = v2[4];
  if (v49)
  {
    v50 = v2[5];

    v49(1);
    return sub_100012050(v49, v50);
  }

  return result;
}

uint64_t sub_100082AB4()
{
  v1 = type metadata accessor for D2DSetupModel(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v16 - v6;
  v8 = v0 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
  *(v8 + *(v5 + 60)) = 0;
  v9 = v8 + *(v5 + 68);
  *v9 = 0;
  *(v9 + 4) = 0;
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession))
  {
    v10 = *(v0 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession + 8);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 40);
    swift_unknownObjectRetain();
    v12(0, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_10008AA10(v8, v7);
    sub_10008AA10(v7, v4);
    v15 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
    swift_beginAccess();
    sub_10008AA74(v4, v14 + v15);
    swift_endAccess();
    sub_1000AD8C8();
    swift_unknownObjectRelease();
    sub_10008AAD8(v4);
    return sub_10008AAD8(v7);
  }

  return result;
}

void sub_100082C4C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1001B93B8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000D298(v6, qword_1001BC738);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v40 = v10;
    *v9 = 136315138;
    if (IsAppleInternalBuild())
    {

      v11 = a1;
      v12 = a2;
    }

    else
    {
      v12 = 0xE100000000000000;
      v11 = 42;
    }

    v13 = sub_10002065C(v11, v12, &v40);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Visual Auth scanned code: %s", v9, 0xCu);
    sub_1000083B0(v10);
  }

  v14 = mach_absolute_time();
  v15 = v2 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
  v16 = type metadata accessor for D2DSetupModel(0);
  v17 = v16;
  if (v14 < *(v15 + *(v16 + 56)))
  {

    oslog = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      if (*(v15 + *(v17 + 56)) < v14)
      {
        __break(1u);
        return;
      }

      UpTicksToSecondsF();
      *(v19 + 4) = v20;
      v21 = "Visual Auth wait for next allowed time (%f seconds)";
      v22 = v18;
      v23 = oslog;
      v24 = v19;
      v25 = 12;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v26 = *(v16 + 52);
  if (*(v15 + v26) == 1)
  {
    oslog = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      v21 = "Visual Auth ignore scanned code while trying previous code";
      v22 = v27;
      v23 = oslog;
      v24 = v28;
      v25 = 2;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v23, v22, v21, v24, v25);
    }

LABEL_16:

    return;
  }

  *(v15 + v26) = 1;

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v40 = v32;
    *v31 = 136315138;
    if (IsAppleInternalBuild())
    {

      v33 = a1;
      v34 = a2;
    }

    else
    {
      v34 = 0xE100000000000000;
      v33 = 42;
    }

    v35 = sub_10002065C(v33, v34, &v40);

    *(v31 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v29, v30, "Try PIN '%s'", v31, 0xCu);
    sub_1000083B0(v32);
  }

  if (*(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession))
  {
    v36 = *(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession + 8);
    ObjectType = swift_getObjectType();
    v38 = *(v36 + 168);
    swift_unknownObjectRetain();
    v38(a1, a2, ObjectType, v36);

    swift_unknownObjectRelease();
  }
}

void sub_1000830B8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for D2DSetupModel(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008AA10(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model, v8);
  v9 = sub_10009344C();
  sub_10008AAD8(v8);
  if (v9)
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      sub_100083388(a1, a2);
      return;
    }
  }

  else
  {
  }

  if (qword_1001B93B8 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000D298(v11, qword_1001BC738);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v15;
    *v14 = 136315138;
    if (IsAppleInternalBuild())
    {

      v16 = a1;
      v17 = a2;
    }

    else
    {
      v17 = 0xE100000000000000;
      v16 = 42;
    }

    v18 = sub_10002065C(v16, v17, &v23);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Try PIN '%s'", v14, 0xCu);
    sub_1000083B0(v15);
  }

  if (*(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession))
  {
    v19 = *(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession + 8);
    ObjectType = swift_getObjectType();
    v21 = *(v19 + 168);
    swift_unknownObjectRetain();
    v21(a1, a2, ObjectType, v19);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_100083388(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  v26 = v6;
  __chkstk_darwin(v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  sub_1000122EC(0, &qword_1001BCE90, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v10 + 8);
  v23(v13, v9);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v19 = v24;
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = a2;
  aBlock[4] = sub_10008AB60;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001C544;
  aBlock[3] = &unk_100192508;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10008AB6C();
  sub_100005DCC(&unk_1001BBA90, &unk_10016D130);
  sub_100012084();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v27 + 8))(v5, v3);
  (*(v25 + 8))(v8, v26);
  return (v23)(v15, v9);
}

void sub_100083738(uint64_t a1)
{
  v2 = sub_100005DCC(&qword_1001BBB68, &unk_10016E760);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - v4;
  (*(v3 + 16))(aBlock - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  aBlock[4] = sub_10008AE84;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10007F288;
  aBlock[3] = &unk_100192620;
  v8 = _Block_copy(aBlock);

  SBSRequestPasscodeUnlockUI();
  _Block_release(v8);
}

uint64_t sub_1000838D0(char a1)
{
  if ((a1 & 1) != 0 || !sub_10006D1F8())
  {
    sub_100005DCC(&qword_1001BBB68, &unk_10016E760);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    [objc_allocWithZone(NSError) initWithDomain:NSOSStatusErrorDomain code:-6723 userInfo:0];
    sub_100005DCC(&qword_1001BBB68, &unk_10016E760);
    return CheckedContinuation.resume(throwing:)();
  }
}

void sub_100083978()
{
  v1 = v0;
  v2 = type metadata accessor for D2DSetupModel(0);
  v3 = __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = aBlock - v6;
  if (qword_1001B93B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000D298(v8, qword_1001BC738);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "WiFi powering on", v11, 2u);
  }

  if (WiFiManagerClientCreate())
  {
    WiFiManagerClientSetPower();
  }

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "WiFi start reachability", v14, 2u);
  }

  v15 = [objc_allocWithZone(CUReachabilityMonitor) init];
  [v15 setTimeout:60.0];
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  aBlock[4] = sub_10005F820;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000E4BD0;
  aBlock[3] = &unk_1001924B8;
  v17 = _Block_copy(aBlock);
  v18 = v15;

  [v18 setCompletionHandler:v17];
  _Block_release(v17);
  [v18 activate];
  v19 = v1 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
  *(v19 + *(v2 + 88)) = 1;
  *(v19 + *(v2 + 80)) = 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    sub_10008AA10(v19, v7);
    sub_10008AA10(v7, v5);
    v22 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
    swift_beginAccess();
    sub_10008AA74(v5, v21 + v22);
    swift_endAccess();
    sub_1000AD8C8();

    swift_unknownObjectRelease();
    sub_10008AAD8(v5);
    sub_10008AAD8(v7);
  }

  else
  {
  }
}

void sub_100083CE8()
{
  v1 = sub_100005DCC(&qword_1001BA7B0, &qword_10016D9A0);
  v2 = __chkstk_darwin(v1 - 8);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v45 = &v43 - v4;
  v48 = type metadata accessor for URLQueryItem();
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v50 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005DCC(&qword_1001BCA38, &qword_10016F260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016F040;
  strcpy((inited + 32), "Classification");
  *(inited + 47) = -18;
  *(inited + 48) = 0x2073756F69726553;
  *(inited + 56) = 0xEB00000000677542;
  *(inited + 64) = 0x6E656E6F706D6F43;
  *(inited + 72) = 0xEB00000000444974;
  *(inited + 80) = 0x343836383637;
  *(inited + 88) = 0xE600000000000000;
  strcpy((inited + 96), "ComponentName");
  *(inited + 110) = -4864;
  *(inited + 112) = 0x74696D69786F7250;
  *(inited + 120) = 0xEF70757465532079;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x8000000100149270;
  *(inited + 144) = 7105633;
  *(inited + 152) = 0xE300000000000000;
  *(inited + 160) = 0xD000000000000014;
  *(inited + 168) = 0x8000000100149290;
  *(inited + 176) = 0xD000000000000028;
  *(inited + 184) = 0x80000001001492B0;
  *(inited + 192) = 0x7364726F7779654BLL;
  *(inited + 200) = 0xE800000000000000;
  *(inited + 208) = 0x323231383537;
  *(inited + 216) = 0xE600000000000000;
  *(inited + 224) = 0x6375646F72706552;
  *(inited + 232) = 0xEF7974696C696269;
  strcpy((inited + 240), "I Didn't Try");
  *(inited + 253) = 0;
  *(inited + 254) = -5120;
  *(inited + 256) = 0x656C746954;
  *(inited + 264) = 0xE500000000000000;
  v52 = 0;
  v53 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v52 = 0xD00000000000001ELL;
  v53 = 0x80000001001492E0;
  v8 = v0 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
  v51 = *(v8 + *(type metadata accessor for D2DSetupModel(0) + 76));
  v9 = v51;
  sub_100005DCC(&qword_1001BCA40, &qword_10016F268);
  v10._countAndFlagsBits = String.init<A>(reflecting:)();
  String.append(_:)(v10);

  v11 = v53;
  *(inited + 272) = v52;
  *(inited + 280) = v11;
  v12 = sub_100005078(inited);
  swift_setDeallocating();
  sub_100005DCC(&qword_1001BCA48, &qword_10016F270);
  swift_arrayDestroy();
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v46 = v5 + 32;
  v47 = v5;
  v49 = v12;

  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  if (v16)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_29:
      swift_once();
      goto LABEL_25;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
      do
      {
LABEL_8:

        URLQueryItem.init(name:value:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_100032864(0, v19[2] + 1, 1, v19);
        }

        v22 = v19[2];
        v21 = v19[3];
        if (v22 >= v21 >> 1)
        {
          v19 = sub_100032864((v21 > 1), v22 + 1, 1, v19);
        }

        v16 &= v16 - 1;
        v19[2] = v22 + 1;
        (*(v47 + 32))(v19 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v22, v50, v48);
      }

      while (v16);
    }
  }

  v23 = objc_allocWithZone(NSURLComponents);
  v24 = String._bridgeToObjectiveC()();
  v18 = [v23 initWithString:v24];

  if (v18)
  {
    v25 = v18;
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v25 setQueryItems:isa];
  }

  if (!UIApp)
  {
    __break(1u);
    return;
  }

  v27 = UIApp;

  if (v18)
  {
    v28 = [v18 URL];
    v29 = v45;
    if (v28)
    {
      v30 = v44;
      v31 = v28;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v32 = 0;
    }

    else
    {
      v32 = 1;
      v30 = v44;
    }

    v35 = type metadata accessor for URL();
    v36 = *(v35 - 8);
    (*(v36 + 56))(v30, v32, 1, v35);
    sub_10008A988(v30, v29);
    v34 = 0;
    if ((*(v36 + 48))(v29, 1, v35) != 1)
    {
      URL._bridgeToObjectiveC()(v37);
      v34 = v38;
      (*(v36 + 8))(v29, v35);
    }
  }

  else
  {
    v33 = type metadata accessor for URL();
    (*(*(v33 - 8) + 56))(v45, 1, 1, v33);
    v34 = 0;
  }

  [v27 openURL:v34 withCompletionHandler:0];

  if (qword_1001B93B8 != -1)
  {
    goto LABEL_29;
  }

LABEL_25:
  v39 = type metadata accessor for Logger();
  sub_10000D298(v39, qword_1001BC738);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "Report Bug complete", v42, 2u);
  }
}

uint64_t sub_100084520(int a1)
{
  v3 = sub_100005DCC(&unk_1001BBAA0, &qword_10016CD60);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v57 = &v47 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v47 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v47 - v13;
  __chkstk_darwin(v12);
  v16 = &v47 - v15;
  v17 = v1 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
  result = type metadata accessor for D2DSetupModel(0);
  v19 = *(result + 92);
  if (*(v17 + v19))
  {
    return result;
  }

  v55 = a1;
  *(v17 + v19) = 1;
  v56 = result;
  sub_100005EB8(v17 + *(result + 36), v14, &unk_1001BBAA0, &qword_10016CD60);
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v14, 1, v20);
  v54 = v22;
  v49 = v21;
  v53 = v21 + 48;
  if (v23 == 1)
  {
    UUID.init(uuidString:)();
    v24 = v20;
    if (v22(v14, 1, v20) != 1)
    {
      sub_10001259C(v14, &unk_1001BBAA0, &qword_10016CD60);
    }
  }

  else
  {
    (*(v21 + 32))(v16, v14, v20);
    (*(v21 + 56))(v16, 0, 1, v20);
    v24 = v20;
  }

  if (mach_absolute_time() < *(v17 + *(v56 + 48)))
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_12;
  }

  v48 = v6;
  v51 = v1;
  v50 = UpTicksToMilliseconds();
  v25 = String._bridgeToObjectiveC()();
  sub_100005DCC(&qword_1001BCA20, &qword_10016F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016F050;
  *(inited + 32) = 6580595;
  *(inited + 40) = 0xE300000000000000;
  v52 = v16;
  sub_100005EB8(v16, v11, &unk_1001BBAA0, &qword_10016CD60);
  if (v54(v11, 1, v24) == 1)
  {
    sub_10001259C(v11, &unk_1001BBAA0, &qword_10016CD60);
  }

  else
  {
    UUID.uuidString.getter();
    (*(v49 + 8))(v11, v24);
  }

  v27 = String._bridgeToObjectiveC()();

  *(inited + 48) = v27;
  strcpy((inited + 56), "smoothedRSSI");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = Int32._bridgeToObjectiveC()();
  *(inited + 80) = 0x6E6F69746361;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = Int32._bridgeToObjectiveC()();
  *(inited + 104) = 0x734D72657375;
  *(inited + 112) = 0xE600000000000000;
  *(inited + 120) = UInt64._bridgeToObjectiveC()();
  sub_100004D1C(inited);
  swift_setDeallocating();
  sub_100005DCC(&qword_1001BCA28, &qword_10016F248);
  swift_arrayDestroy();
  sub_1000122EC(0, &qword_1001BA740, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  SFMetricsLog();

  if (qword_1001B93B8 != -1)
  {
    goto LABEL_20;
  }

LABEL_12:
  v29 = type metadata accessor for Logger();
  sub_10000D298(v29, qword_1001BC738);
  v30 = v52;
  v31 = v57;
  sub_100005EB8(v52, v57, &unk_1001BBAA0, &qword_10016CD60);
  swift_retain_n();
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v59 = v47;
    *v34 = 136316162;
    v35 = v48;
    sub_100005EB8(v31, v48, &unk_1001BBAA0, &qword_10016CD60);
    if (v54(v35, 1, v24) == 1)
    {
      sub_10001259C(v35, &unk_1001BBAA0, &qword_10016CD60);
      v36 = 0x8000000100145470;
      v37 = 0xD000000000000015;
    }

    else
    {
      v37 = UUID.uuidString.getter();
      v36 = v39;
      (*(v49 + 8))(v35, v24);
    }

    sub_10001259C(v31, &unk_1001BBAA0, &qword_10016CD60);
    v40 = sub_10002065C(v37, v36, &v59);

    *(v34 + 4) = v40;
    *(v34 + 12) = 1024;
    v41 = v56;
    v42 = *(v17 + *(v56 + 40));

    *(v34 + 14) = v42;

    *(v34 + 18) = 2080;
    v58 = v55;
    type metadata accessor for SVSUserActionType(0);
    v43 = String.init<A>(reflecting:)();
    v45 = sub_10002065C(v43, v44, &v59);

    *(v34 + 20) = v45;
    *(v34 + 28) = 2048;
    *(v34 + 30) = v50;
    *(v34 + 38) = 1024;
    v46 = *(v17 + *(v41 + 44));

    *(v34 + 40) = v46;

    _os_log_impl(&_mh_execute_header, v32, v33, "iOSSetup: Start, ID %s, RSSI %d, action %s, userMs %llu, badPIN %u", v34, 0x2Cu);
    swift_arrayDestroy();

    v38 = v52;
  }

  else
  {

    sub_10001259C(v31, &unk_1001BBAA0, &qword_10016CD60);
    v38 = v30;
  }

  return sub_10001259C(v38, &unk_1001BBAA0, &qword_10016CD60);
}

uint64_t *sub_100084D24(uint64_t a1, uint64_t a2)
{
  sub_100012604((v2 + 2), a2);
  sub_100012050(v2[4], v2[5]);
  sub_100012050(v2[6], v2[7]);
  sub_100012050(v2[8], v2[9]);
  sub_100012050(v2[10], v2[11]);
  sub_100012050(v2[12], v2[13]);
  sub_100012050(v2[14], v2[15]);
  sub_100012050(v2[16], v2[17]);
  sub_100012050(v2[18], v2[19]);
  sub_10008AAD8(v2 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_100084DC4(uint64_t a1, uint64_t a2)
{
  sub_100084D24(a1, a2);

  return swift_deallocClassInstance();
}

double sub_100084E1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = sub_100004BE0(_swiftEmptyArrayStorage);
    }

    sub_100084EBC(v4, v6);
  }

  return result;
}

void sub_100084EBC(int a1, uint64_t a2)
{
  v3 = v2;
  LODWORD(v200) = a1;
  v5 = type metadata accessor for D2DSetupModel(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v185 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v185 - v10;
  __chkstk_darwin(v9);
  v196 = &v185 - v12;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v194 = *(v13 - 8);
  v195 = v13;
  __chkstk_darwin(v13);
  v192 = &v185 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for DispatchQoS();
  v191 = *(v193 - 8);
  __chkstk_darwin(v193);
  v190 = &v185 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for DispatchTime();
  v189 = *(v197 - 8);
  v16 = __chkstk_darwin(v197);
  v187 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v188 = &v185 - v18;
  if (qword_1001B93B8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000D298(v19, qword_1001BC738);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v199 = a2;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v186 = v5;
    v198 = v11;
    v24 = v8;
    v25 = v3;
    v26 = v23;
    aBlock = swift_slowAlloc();
    *v26 = 136315394;
    sub_10008AF80(v200);
    v27 = String.init(cString:)();
    v29 = sub_10002065C(v27, v28, &aBlock);

    *(v26 + 4) = v29;
    *(v26 + 12) = 2080;
    *&v208 = a2;

    sub_100005DCC(&qword_1001BCA68, &qword_10016F2A8);
    v30 = String.init<A>(reflecting:)();
    v32 = sub_10002065C(v30, v31, &aBlock);

    *(v26 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v20, v21, "Progress: %s %s", v26, 0x16u);
    swift_arrayDestroy();

    v3 = v25;
    v8 = v24;
    v11 = v198;
    v5 = v186;
  }

  v33 = (v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession);
  if (!*(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession))
  {
    return;
  }

  if (v200 <= 400)
  {
    if (v200 <= 239)
    {
      if (v200 > 96)
      {
        if (v200 == 97)
        {
          v85 = v11;
          v86 = v8;
          v87 = v33[1];
          ObjectType = swift_getObjectType();
          v89 = *(v87 + 80);
          swift_unknownObjectRetain();
          v90 = v89(ObjectType, v87);
          swift_unknownObjectRelease();
          if (v90)
          {
            if (*(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_migrationController))
            {
              v91 = *(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_migrationController + 8);
              v92 = swift_getObjectType();
              v93 = *(v91 + 8);
              swift_unknownObjectRetain();
              v93(v90, v92, v91);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          v153 = v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
          v154 = *(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model);
          v155 = *(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + 8);
          *v153 = xmmword_10016F060;
          v156 = v153[16];
          v153[16] = 3;
          sub_10008ABCC(v154, v155, v156);
          v8 = v86;
          v11 = v85;
          goto LABEL_144;
        }

        if (v200 != 99)
        {
          return;
        }

        v50 = v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
        v51 = *(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model);
        v52 = *(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + 8);
        v53 = xmmword_10016F080;
        goto LABEL_52;
      }

      if (v200 != 20)
      {
        if (v200 != 70)
        {
          return;
        }

        v37 = v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
        if (*(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + 16) < 3u || *v37 ^ 2 | *(v37 + 1))
        {
          goto LABEL_144;
        }

        v38 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
        [v38 notificationOccurred:0];
        v39 = &v37[v5[15]];
        if (v39[4] & 1) == 0 && (v39[1])
        {
          sub_1000122EC(0, &qword_1001BCE90, OS_dispatch_queue_ptr);
          v199 = static OS_dispatch_queue.main.getter();
          v165 = v187;
          static DispatchTime.now()();
          v166 = v188;
          + infix(_:_:)();
          v200 = *(v189 + 8);
          v200(v165, v197);
          v167 = swift_allocObject();
          swift_weakInit();
          v205 = sub_10008AF78;
          v206 = v167;
          aBlock = _NSConcreteStackBlock;
          v202 = 1107296256;
          v203 = sub_10001C544;
          v204 = &unk_100192698;
          v168 = _Block_copy(&aBlock);

          v169 = v190;
          static DispatchQoS.unspecified.getter();
          aBlock = _swiftEmptyArrayStorage;
          sub_10008AB6C();
          sub_100005DCC(&unk_1001BBA90, &unk_10016D130);
          sub_100012084();
          v170 = v192;
          v171 = v195;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v172 = v199;
          OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();

          _Block_release(v168);
          (*(v194 + 8))(v170, v171);
          (*(v191 + 8))(v169, v193);
          v200(v166, v197);
          return;
        }

        v40 = *v37;
        v41 = *(v37 + 1);
        *v37 = xmmword_10016F060;
        goto LABEL_95;
      }

      v80 = v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
      v81 = *(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model);
      v82 = *(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + 8);
      *v80 = xmmword_10016F070;
      v83 = *(v80 + 16);
      *(v80 + 16) = 3;
      sub_10008ABCC(v81, v82, v83);
      if (*(v80 + 17))
      {
        v84 = v199;
        if (*(v80 + 17) == 1)
        {

LABEL_134:
          v133 = Logger.logObject.getter();
          v147 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v133, v147))
          {
LABEL_138:

            goto LABEL_144;
          }

          v148 = swift_slowAlloc();
          *v148 = 0;
          v149 = "Not ending the session because it is dependent setup, so we should wait for eventDependentEnd";
          goto LABEL_136;
        }
      }

      else
      {
        v84 = v199;
      }

      v150 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v150)
      {
        goto LABEL_134;
      }

      v207[0] = 28517;
      v207[1] = 0xE200000000000000;
      AnyHashable.init<A>(_:)();
      if (*(v84 + 16) && (v151 = sub_100032C7C(&aBlock), (v152 & 1) != 0))
      {
        sub_10000BFEC(*(v84 + 56) + 32 * v151, &v208);
      }

      else
      {
        v208 = 0u;
        v209 = 0u;
      }

      sub_10000BF98(&aBlock);
      if (*(&v209 + 1))
      {
        v160 = v8;
        sub_1000122EC(0, &qword_1001B9C30, NSError_ptr);
        if (swift_dynamicCast())
        {
          v161 = v207[0];
          v162 = v196;
          sub_10008AA10(v80, v196);
          v163 = v161;
          v164 = sub_10009344C();
          sub_10008AAD8(v162);
          if (v164)
          {
            v173 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v173 & 1) == 0 && [v163 code] == -71160)
            {

              return;
            }
          }

          else
          {
          }

          v174 = v5[19];
          v175 = *(v80 + v174);
          *(v80 + v174) = v161;

          goto LABEL_162;
        }
      }

      else
      {
        v160 = v8;
        sub_10001259C(&v208, &qword_1001BBB40, &qword_10016E740);
      }

      v161 = 0;
LABEL_162:
      if (*v33)
      {
        v176 = v33[1];
        v177 = swift_getObjectType();
        v178 = v11;
        v179 = *(v176 + 160);
        swift_unknownObjectRetain();
        v179(v177, v176);
        v11 = v178;
        swift_unknownObjectRelease();
      }

      *v33 = 0;
      v33[1] = 0;
      swift_unknownObjectRelease();
      if (v161)
      {
        v180 = v161;
        v181 = _convertErrorToNSError(_:)();
      }

      else
      {
        v181 = 0;
      }

      v182 = NSErrorToOSStatus();

      sub_1000872A4(v182);
      v183 = v3[4];
      if (v183)
      {
        v184 = v3[5];

        v183(0);

        sub_100012050(v183, v184);
      }

      else
      {
      }

      v8 = v160;
      goto LABEL_144;
    }

    if (v200 > 309)
    {
      if (v200 != 310)
      {
        if (v200 != 400)
        {
          return;
        }

        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&_mh_execute_header, v54, v55, "Stop setup from target", v56, 2u);
        }

        v50 = v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
        v57 = v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + v5[18];
        v58 = 17;
        goto LABEL_47;
      }
    }

    else
    {
      if (v200 == 240)
      {
        goto LABEL_50;
      }

      if (v200 != 300)
      {
        return;
      }
    }

    *&v208 = 0x73736572676F7270;
    *(&v208 + 1) = 0xE800000000000000;
    AnyHashable.init<A>(_:)();
    v61 = v199;
    if (*(v199 + 16) && (v62 = sub_100032C7C(&aBlock), (v63 & 1) != 0))
    {
      sub_10000BFEC(*(v61 + 56) + 32 * v62, &v208);
      sub_10000BF98(&aBlock);
      if (swift_dynamicCast())
      {
        v64 = *v207;
        goto LABEL_60;
      }
    }

    else
    {
      sub_10000BF98(&aBlock);
    }

    v64 = 0.0;
LABEL_60:
    v37 = v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
    v65 = v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + v5[16];
    *v65 = v64;
    *(v65 + 4) = 0;
    *&v208 = 0x65536E69616D6572;
    *(&v208 + 1) = 0xEA00000000007363;
    AnyHashable.init<A>(_:)();
    if (*(v61 + 16) && (v66 = sub_100032C7C(&aBlock), (v67 & 1) != 0))
    {
      sub_10000BFEC(*(v61 + 56) + 32 * v66, &v208);
    }

    else
    {
      v208 = 0u;
      v209 = 0u;
    }

    sub_10000BF98(&aBlock);
    if (*(&v209 + 1))
    {
      v68 = swift_dynamicCast();
      v69 = v207[0];
      if (!v68)
      {
        v69 = 0;
      }

      v70 = v68 ^ 1;
    }

    else
    {
      sub_10001259C(&v208, &qword_1001BBB40, &qword_10016E740);
      v69 = 0;
      v70 = 1;
    }

    v98 = &v37[v5[17]];
    *v98 = v69;
    v98[8] = v70;
    v99 = 5;
    if (v200 != 300)
    {
      v99 = 6;
    }

    v40 = *v37;
    v41 = *(v37 + 1);
    *v37 = v99;
    *(v37 + 1) = 0;
LABEL_95:
    v100 = v37[16];
    v37[16] = 3;
    sub_10008ABCC(v40, v41, v100);
    goto LABEL_144;
  }

  if (v200 > 999)
  {
    v34 = v199;
    if (v200 > 1099)
    {
      switch(v200)
      {
        case 0x44C:
          strcpy(v207, "oneTimeCode");
          HIDWORD(v207[1]) = -352321536;
          AnyHashable.init<A>(_:)();
          if (*(v34 + 16) && (v94 = sub_100032C7C(&aBlock), (v95 & 1) != 0))
          {
            sub_10000BFEC(*(v34 + 56) + 32 * v94, &v208);
          }

          else
          {
            v208 = 0u;
            v209 = 0u;
          }

          sub_10000BF98(&aBlock);
          if (*(&v209 + 1))
          {
            sub_1000122EC(0, &qword_1001BCA70, NSString_ptr);
            if (swift_dynamicCast())
            {
              v200 = v8;
              v105 = v207[0];
              v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v108 = v107;

              v109 = Logger.logObject.getter();
              v110 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v109, v110))
              {
                v111 = swift_slowAlloc();
                v112 = swift_slowAlloc();
                v198 = v11;
                v113 = v112;
                *&v208 = v112;
                *v111 = 136315138;
                aBlock = v106;
                v202 = v108;

                v114 = String.init<A>(reflecting:)();
                v116 = sub_10002065C(v114, v115, &v208);

                *(v111 + 4) = v116;
                _os_log_impl(&_mh_execute_header, v109, v110, "Got OTC: %s)", v111, 0xCu);
                sub_1000083B0(v113);
                v11 = v198;
              }

              v8 = v200;
              v50 = v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
              v51 = *(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model);
              v52 = *(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + 8);
              *v50 = v106;
              *(v50 + 1) = v108;
              v59 = v50[16];
              v60 = 1;
              goto LABEL_53;
            }
          }

          else
          {
            sub_10001259C(&v208, &qword_1001BBB40, &qword_10016E740);
          }

          v133 = Logger.logObject.getter();
          v134 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v133, v134))
          {
            goto LABEL_138;
          }

          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          aBlock = v136;
          *v135 = 136315138;
          *&v208 = v34;

          sub_100005DCC(&qword_1001BCA68, &qword_10016F2A8);
          v141 = String.init<A>(reflecting:)();
          v143 = sub_10002065C(v141, v142, &aBlock);

          *(v135 + 4) = v143;
          v140 = "missing OTC: %s";
          break;
        case 0x7D0:
          strcpy(v207, "viewController");
          HIBYTE(v207[1]) = -18;
          AnyHashable.init<A>(_:)();
          if (*(v34 + 16) && (v78 = sub_100032C7C(&aBlock), (v79 & 1) != 0))
          {
            sub_10000BFEC(*(v34 + 56) + 32 * v78, &v208);
          }

          else
          {
            v208 = 0u;
            v209 = 0u;
          }

          sub_10000BF98(&aBlock);
          if (*(&v209 + 1))
          {
            sub_1000122EC(0, &qword_1001BCEA0, UIViewController_ptr);
            if (swift_dynamicCast())
            {
              v101 = v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
              v102 = *(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model);
              v103 = *(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + 8);
              *v101 = v207[0];
              *(v101 + 1) = 0;
              v104 = v101[16];
              v101[16] = 2;
              v101[17] = 1;
              sub_10008ABCC(v102, v103, v104);
              goto LABEL_144;
            }
          }

          else
          {
            sub_10001259C(&v208, &qword_1001BBB40, &qword_10016E740);
          }

          v133 = Logger.logObject.getter();
          v134 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v133, v134))
          {
            goto LABEL_138;
          }

          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          aBlock = v136;
          *v135 = 136315138;
          *&v208 = v34;

          sub_100005DCC(&qword_1001BCA68, &qword_10016F2A8);
          v137 = String.init<A>(reflecting:)();
          v139 = sub_10002065C(v137, v138, &aBlock);

          *(v135 + 4) = v139;
          v140 = "No view controller found for display: %s";
          break;
        case 0x7D1:
          strcpy(v207, "acttype");
          v207[1] = 0xE700000000000000;
          AnyHashable.init<A>(_:)();
          if (*(v34 + 16) && (v35 = sub_100032C7C(&aBlock), (v36 & 1) != 0))
          {
            sub_10000BFEC(*(v34 + 56) + 32 * v35, &v208);
          }

          else
          {
            v208 = 0u;
            v209 = 0u;
          }

          sub_10000BF98(&aBlock);
          if (*(&v209 + 1))
          {
            if (swift_dynamicCast())
            {
              v132 = v207[0];
              if (!LODWORD(v207[0]) || LODWORD(v207[0]) == 2)
              {
                v50 = v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
                v50[17] = 2;
                v57 = &v50[v5[18]];
                v58 = 24;
LABEL_47:
                *v57 = v58;
                *(v57 + 4) = 0;
                v51 = *v50;
                v52 = *(v50 + 1);
                v53 = xmmword_10016F020;
LABEL_52:
                *v50 = v53;
                v59 = v50[16];
                v60 = 3;
LABEL_53:
                v50[16] = v60;
                sub_10008ABCC(v51, v52, v59);
                goto LABEL_144;
              }

              if (LODWORD(v207[0]) != 1)
              {
                type metadata accessor for SFDeviceSetupAccountType(0);
                LODWORD(aBlock) = v132;
                _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
                __break(1u);
                return;
              }

              v50 = v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
              *(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + 17) = 0;
LABEL_51:
              v51 = *v50;
              v52 = *(v50 + 1);
              v53 = xmmword_10016F060;
              goto LABEL_52;
            }
          }

          else
          {
            sub_10001259C(&v208, &qword_1001BBB40, &qword_10016E740);
          }

          v133 = Logger.logObject.getter();
          v147 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v133, v147))
          {
            goto LABEL_138;
          }

          v148 = swift_slowAlloc();
          *v148 = 0;
          v149 = "No account type specified";
LABEL_136:
          _os_log_impl(&_mh_execute_header, v133, v147, v149, v148, 2u);
          goto LABEL_137;
        default:
          return;
      }

LABEL_128:
      _os_log_impl(&_mh_execute_header, v133, v134, v140, v135, 0xCu);
      sub_1000083B0(v136);

LABEL_137:

      goto LABEL_138;
    }

    if (v200 == 1000)
    {
      strcpy(v207, "viewController");
      HIBYTE(v207[1]) = -18;
      AnyHashable.init<A>(_:)();
      if (*(v34 + 16) && (v96 = sub_100032C7C(&aBlock), (v97 & 1) != 0))
      {
        sub_10000BFEC(*(v34 + 56) + 32 * v96, &v208);
      }

      else
      {
        v208 = 0u;
        v209 = 0u;
      }

      sub_10000BF98(&aBlock);
      if (*(&v209 + 1))
      {
        sub_1000122EC(0, &qword_1001BCEA0, UIViewController_ptr);
        if (swift_dynamicCast())
        {
          v117 = v207[0];
          v118 = Logger.logObject.getter();
          v119 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v118, v119))
          {
            v120 = v8;
            v121 = swift_slowAlloc();
            v122 = swift_slowAlloc();
            aBlock = v122;
            *v121 = 136315138;
            *&v208 = v117;
            v123 = v117;
            v124 = String.init<A>(reflecting:)();
            v126 = v11;
            v127 = sub_10002065C(v124, v125, &aBlock);

            *(v121 + 4) = v127;
            v11 = v126;
            _os_log_impl(&_mh_execute_header, v118, v119, "Got view controller: %s", v121, 0xCu);
            sub_1000083B0(v122);

            v8 = v120;
          }

          v128 = v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
          v129 = *(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model);
          v130 = *(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + 8);
          *v128 = v117;
          *(v128 + 1) = 0;
          v131 = v128[16];
          v128[16] = 0;
          sub_10008ABCC(v129, v130, v131);
          goto LABEL_144;
        }
      }

      else
      {
        sub_10001259C(&v208, &qword_1001BBB40, &qword_10016E740);
      }

      v133 = Logger.logObject.getter();
      v134 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v133, v134))
      {
        goto LABEL_138;
      }

      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      aBlock = v136;
      *v135 = 136315138;
      *&v208 = v34;

      sub_100005DCC(&qword_1001BCA68, &qword_10016F2A8);
      v144 = String.init<A>(reflecting:)();
      v146 = sub_10002065C(v144, v145, &aBlock);

      *(v135 + 4) = v146;
      v140 = "No view controller: %s";
      goto LABEL_128;
    }

    if (v200 != 1001)
    {
      return;
    }

LABEL_50:
    v50 = v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
    goto LABEL_51;
  }

  if (v200 > 429)
  {
    if (v200 == 430)
    {
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&_mh_execute_header, v74, v75, "D2D eSim external 2FA: START", v76, 2u);
      }

      v48 = v3[10];
      if (!v48)
      {
        goto LABEL_144;
      }

      v49 = v3[11];
    }

    else
    {
      if (v200 != 431)
      {
        return;
      }

      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "D2D eSim external 2FA: END", v47, 2u);
      }

      v48 = v3[12];
      if (!v48)
      {
        goto LABEL_144;
      }

      v49 = v3[13];
    }

    v48(v77);
    sub_100012050(v48, v49);
LABEL_144:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v158 = Strong;
      sub_10008AA10(v3 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model, v11);
      sub_10008AA10(v11, v8);
      v159 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
      swift_beginAccess();
      sub_10008AA74(v8, v158 + v159);
      swift_endAccess();
      sub_1000AD8C8();
      swift_unknownObjectRelease();
      sub_10008AAD8(v8);
      sub_10008AAD8(v11);
    }

    return;
  }

  if (v200 != 401)
  {
    if (v200 != 410)
    {
      return;
    }

    v42 = String._bridgeToObjectiveC()();
    v43 = String._bridgeToObjectiveC()();
    Int64 = CFPrefs_GetInt64();

    if (Int64)
    {
      sub_100087B08();
    }

    else
    {
      sub_1000884B0();
    }

    goto LABEL_144;
  }

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&_mh_execute_header, v71, v72, "PIN pair from target", v73, 2u);
  }

  sub_100082AB4();
}

void sub_100086940(int a1, int a2, uint64_t a3)
{
  v5 = type metadata accessor for D2DSetupModel(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (qword_1001B93B8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000D298(v13, qword_1001BC738);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39[0] = v36;
      *v16 = 136315394;
      v38 = a1;
      v17 = String.init<A>(reflecting:)();
      v37 = v12;
      v19 = a1;
      v20 = sub_10002065C(v17, v18, v39);
      v12 = v37;

      *(v16 + 4) = v20;
      a1 = v19;
      *(v16 + 12) = 1024;
      *(v16 + 14) = a2;
      _os_log_impl(&_mh_execute_header, v14, v15, "Prompt for PIN: %s, %d throttle seconds", v16, 0x12u);
      sub_1000083B0(v36);
    }

    if ((a1 & 0x10000) != 0)
    {
      v21 = v5[11];
      v22 = *(v12 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + v21);
      v23 = __CFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_17;
      }

      *(v12 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + v21) = v24;
    }

    v25 = v12 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
    v26 = v12 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + v5[15];
    *v26 = a1;
    *(v26 + 4) = 0;
    *(v25 + v5[13]) = 0;
    if (a2 < 1)
    {
      goto LABEL_12;
    }

    v27 = mach_absolute_time();
    v28 = SecondsToUpTicks();
    if (!__CFADD__(v27, v28))
    {
      *(v25 + v5[14]) = v27 + v28;
LABEL_12:
      v29 = *v25;
      v30 = *(v25 + 8);
      *v25 = xmmword_10016F090;
      v31 = *(v25 + 16);
      *(v25 + 16) = 3;
      sub_10008ABCC(v29, v30, v31);
      v32 = swift_unknownObjectWeakLoadStrong();
      if (v32)
      {
        v33 = v32;
        sub_10008AA10(v25, v10);
        sub_10008AA10(v10, v8);
        v34 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
        swift_beginAccess();
        sub_10008AA74(v8, v33 + v34);
        swift_endAccess();
        sub_1000AD8C8();

        swift_unknownObjectRelease();
        sub_10008AAD8(v8);
        sub_10008AAD8(v10);
      }

      else
      {
      }

      return;
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

uint64_t sub_100086C90()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for DispatchTime();
  v37 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession))
  {
    v36 = v10;
    v12 = *(v0 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession + 8);
    ObjectType = swift_getObjectType();
    v14 = v4;
    v15 = v5;
    v16 = v2;
    v17 = v1;
    v18 = *(v12 + 128);
    swift_unknownObjectRetain();
    v19 = v12;
    v20 = v36;
    v21 = v18(ObjectType, v19);
    v22 = v15;
    v23 = v21;
    v25 = v24;
    result = swift_unknownObjectRelease();
    if (v23)
    {
      sub_1000122EC(0, &qword_1001BCE90, OS_dispatch_queue_ptr);
      v35 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      + infix(_:_:)();
      v37 = *(v37 + 8);
      (v37)(v20, v40);
      v26 = swift_allocObject();
      *(v26 + 16) = v23;
      *(v26 + 24) = v25;
      aBlock[4] = sub_10008AF48;
      aBlock[5] = v26;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10001C544;
      aBlock[3] = &unk_100192670;
      v27 = _Block_copy(aBlock);
      v36 = v22;
      v28 = v27;

      v34 = v23;
      v29 = v38;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10008AB6C();
      v30 = v25;
      sub_100005DCC(&unk_1001BBA90, &unk_10016D130);
      sub_100012084();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v31 = v39;
      v32 = v35;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v28);

      sub_100012050(v34, v30);
      (*(v16 + 8))(v14, v17);
      (*(v6 + 8))(v29, v36);
      return (v37)(v31, v40);
    }
  }

  return result;
}

void sub_1000870B4(uint64_t a1)
{
  v1 = type metadata accessor for D2DSetupModel(0);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v13[-v5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
    if (*(Strong + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + 16) > 2u && (v9 = *v8, *v8 <= 3uLL) && v9 > 1 && v9 ^ 2 | *(v8 + 8) && (*v8 = xmmword_10016F060, *(v8 + 16) = 3, (v10 = swift_unknownObjectWeakLoadStrong()) != 0))
    {
      v11 = v10;
      sub_10008AA10(v8, v6);
      sub_10008AA10(v6, v4);
      v12 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
      swift_beginAccess();
      sub_10008AA74(v4, v11 + v12);
      swift_endAccess();
      sub_1000AD8C8();

      swift_unknownObjectRelease();
      sub_10008AAD8(v4);
      sub_10008AAD8(v6);
    }

    else
    {
    }
  }
}

uint64_t sub_1000872A4(int a1)
{
  v3 = sub_100005DCC(&unk_1001BBAA0, &qword_10016CD60);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v60 = v50 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = v50 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = v50 - v13;
  __chkstk_darwin(v12);
  v16 = v50 - v15;
  v17 = v1 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
  result = type metadata accessor for D2DSetupModel(0);
  v19 = *(result + 96);
  if (*(v17 + v19))
  {
    return result;
  }

  v59 = a1;
  *(v17 + v19) = 1;
  v54 = result;
  sub_100005EB8(v17 + *(result + 36), v14, &unk_1001BBAA0, &qword_10016CD60);
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v14, 1, v20);
  v58 = v22;
  v53 = v21;
  if (v23 == 1)
  {
    UUID.init(uuidString:)();
    v24 = v21 + 48;
    if (v22(v14, 1, v20) != 1)
    {
      sub_10001259C(v14, &unk_1001BBAA0, &qword_10016CD60);
    }
  }

  else
  {
    (*(v21 + 32))(v16, v14, v20);
    (*(v21 + 56))(v16, 0, 1, v20);
    v24 = v21 + 48;
  }

  v25 = mach_absolute_time();
  v26 = v54;
  if (v25 < *(v17 + *(v54 + 48)))
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_12;
  }

  v52 = v6;
  v56 = v1;
  v55 = UpTicksToMilliseconds();
  v27 = String._bridgeToObjectiveC()();
  sub_100005DCC(&qword_1001BCA20, &qword_10016F240);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10016F0A0;
  *(inited + 32) = 6580595;
  *(inited + 40) = 0xE300000000000000;
  v57 = v16;
  sub_100005EB8(v16, v11, &unk_1001BBAA0, &qword_10016CD60);
  v50[1] = v24;
  v29 = v58(v11, 1, v20);
  v51 = v20;
  if (v29 == 1)
  {
    sub_10001259C(v11, &unk_1001BBAA0, &qword_10016CD60);
  }

  else
  {
    UUID.uuidString.getter();
    (*(v53 + 8))(v11, v20);
  }

  v30 = String._bridgeToObjectiveC()();

  *(inited + 48) = v30;
  strcpy((inited + 56), "smoothedRSSI");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = Int32._bridgeToObjectiveC()();
  *(inited + 80) = 0x646F43726F727265;
  *(inited + 88) = 0xE900000000000065;
  *(inited + 96) = Int32._bridgeToObjectiveC()();
  *(inited + 104) = 0x6E6F697461727564;
  *(inited + 112) = 0xEA0000000000734DLL;
  *(inited + 120) = UInt64._bridgeToObjectiveC()();
  *(inited + 128) = 0x6F434E4950646162;
  *(inited + 136) = 0xEB00000000746E75;
  *(inited + 144) = UInt32._bridgeToObjectiveC()();
  sub_100004D1C(inited);
  swift_setDeallocating();
  sub_100005DCC(&qword_1001BCA28, &qword_10016F248);
  swift_arrayDestroy();
  sub_1000122EC(0, &qword_1001BA740, NSObject_ptr);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  SFMetricsLog();

  if (qword_1001B93B8 != -1)
  {
    goto LABEL_20;
  }

LABEL_12:
  v32 = type metadata accessor for Logger();
  sub_10000D298(v32, qword_1001BC738);
  v33 = v57;
  v34 = v60;
  sub_100005EB8(v57, v60, &unk_1001BBAA0, &qword_10016CD60);
  swift_retain_n();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v50[0] = swift_slowAlloc();
    v62 = v50[0];
    *v37 = 136316162;
    v38 = v52;
    sub_100005EB8(v34, v52, &unk_1001BBAA0, &qword_10016CD60);
    v39 = v51;
    if (v58(v38, 1, v51) == 1)
    {
      sub_10001259C(v38, &unk_1001BBAA0, &qword_10016CD60);
      v40 = 0x8000000100145470;
      v41 = 0xD000000000000015;
    }

    else
    {
      v41 = UUID.uuidString.getter();
      v40 = v43;
      (*(v53 + 8))(v38, v39);
    }

    sub_10001259C(v34, &unk_1001BBAA0, &qword_10016CD60);
    v44 = sub_10002065C(v41, v40, &v62);

    *(v37 + 4) = v44;
    *(v37 + 12) = 1024;
    v45 = *(v17 + *(v26 + 40));

    *(v37 + 14) = v45;

    *(v37 + 18) = 2080;
    v61 = v59;
    v46 = String.init<A>(reflecting:)();
    v48 = sub_10002065C(v46, v47, &v62);

    *(v37 + 20) = v48;
    *(v37 + 28) = 2048;
    *(v37 + 30) = v55;
    *(v37 + 38) = 1024;
    v49 = *(v17 + *(v26 + 44));

    *(v37 + 40) = v49;

    _os_log_impl(&_mh_execute_header, v35, v36, "iOSSetup: Done, ID %s, RSSI %d, error %s, totalMs %llu, badPIN %u", v37, 0x2Cu);
    swift_arrayDestroy();

    v42 = v57;
  }

  else
  {

    sub_10001259C(v34, &unk_1001BBAA0, &qword_10016CD60);
    v42 = v33;
  }

  return sub_10001259C(v42, &unk_1001BBAA0, &qword_10016CD60);
}

void sub_100087B08()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v86 - v7;
  if (qword_1001B93B8 != -1)
  {
    swift_once();
  }

  v88 = v6;
  v9 = type metadata accessor for Logger();
  v10 = sub_10000D298(v9, qword_1001BC738);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "FileTransfer start", v13, 2u);
  }

  if (*&v1[OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession])
  {
    v14 = *&v1[OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession + 8];
    ObjectType = swift_getObjectType();
    v89 = v1;
    v16 = v8;
    v17 = v3;
    v18 = v10;
    v19 = v2;
    v20 = *(v14 + 80);
    swift_unknownObjectRetain();
    v21 = v20(ObjectType, v14);
    v22 = v19;
    v23 = v18;
    v24 = v17;
    v25 = v16;
    v26 = v21;
    swift_unknownObjectRelease();
    if (v26)
    {
      v87 = v22;
      v27 = swift_allocObject();
      swift_weakInit();
      v95 = sub_10008B814;
      v96 = v27;
      aBlock = _NSConcreteStackBlock;
      v92 = 1107296256;
      v93 = sub_1000E4BD0;
      v94 = &unk_1001926C0;
      v28 = _Block_copy(&aBlock);

      [v26 setCompletionHandler:v28];
      _Block_release(v28);
      v29 = swift_allocObject();
      *(v29 + 16) = v26;
      v95 = sub_10008B854;
      v96 = v29;
      aBlock = _NSConcreteStackBlock;
      v92 = 1107296256;
      v93 = sub_10001BE90;
      v94 = &unk_100192710;
      v30 = _Block_copy(&aBlock);
      v31 = v26;

      [v31 setProgressHandler:v30];
      _Block_release(v30);
      v95 = sub_100088FBC;
      v96 = 0;
      aBlock = _NSConcreteStackBlock;
      v92 = 1107296256;
      v93 = sub_10008911C;
      v94 = &unk_100192738;
      v32 = _Block_copy(&aBlock);
      [v31 setReceivedItemHandler:v32];
      _Block_release(v32);
      [v31 activate];
      URL.init(fileURLWithPath:)();
      v33 = [objc_allocWithZone(NSData) initWithBytes:"Test1" length:5];
      URL._bridgeToObjectiveC()(v34);
      v36 = v35;
      aBlock = 0;
      v37 = [v33 writeToURL:v35 options:0 error:&aBlock];

      v38 = aBlock;
      if (v37)
      {
        v86[1] = v23;
        v39 = objc_allocWithZone(RPFileTransferItem);
        v40 = v38;
        v41 = [v39 init];
        URL._bridgeToObjectiveC()(v42);
        v44 = v43;
        [v41 setItemURL:v43];

        [v31 addItem:v41];
        v45 = v88;
        URL.init(fileURLWithPath:)();
        v46 = v87;
        v89 = *(v24 + 8);
        v89(v25, v87);
        v86[0] = *(v24 + 32);
        (v86[0])(v25, v45, v46);
        v47 = [objc_allocWithZone(NSData) initWithBytes:"Test2" length:5];
        URL._bridgeToObjectiveC()(v48);
        v50 = v49;
        aBlock = 0;
        v51 = [v47 writeToURL:v49 options:0 error:&aBlock];

        v52 = aBlock;
        if (v51)
        {
          v53 = objc_allocWithZone(RPFileTransferItem);
          v54 = v52;
          v55 = [v53 init];

          v56 = v55;
          URL._bridgeToObjectiveC()(v57);
          v59 = v58;
          [v56 setItemURL:v58];

          [v31 addItem:v56];
          URL.init(fileURLWithPath:)();
          v60 = v89;
          v89(v25, v46);
          (v86[0])(v25, v45, v46);
          v61 = [objc_allocWithZone(NSData) initWithBytes:"Test3" length:5];
          URL._bridgeToObjectiveC()(v62);
          v64 = v63;
          aBlock = 0;
          LODWORD(v53) = [v61 writeToURL:v63 options:0 error:&aBlock];

          v65 = aBlock;
          if (v53)
          {
            v66 = objc_allocWithZone(RPFileTransferItem);
            v67 = v65;
            v68 = [v66 init];

            v69 = v68;
            URL._bridgeToObjectiveC()(v70);
            v72 = v71;
            [v69 setItemURL:v71];

            [v31 addItem:v69];
            v60(v25, v46);
LABEL_17:
            [v31 finish];

            return;
          }

          v78 = aBlock;
          v76 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v60(v25, v46);
        }

        else
        {
          v77 = aBlock;
          v76 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v89(v25, v46);
        }
      }

      else
      {
        v73 = v25;
        v74 = v24;
        v75 = aBlock;
        v76 = _convertNSErrorToError(_:)();

        swift_willThrow();
        (*(v74 + 8))(v73, v87);
      }

      swift_errorRetain();
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        aBlock = v82;
        *v81 = 136315138;
        v90 = v76;
        swift_errorRetain();
        sub_100005DCC(&qword_1001BBA48, qword_10016FA40);
        v83 = String.init<A>(reflecting:)();
        v85 = sub_10002065C(v83, v84, &aBlock);

        *(v81 + 4) = v85;
        _os_log_impl(&_mh_execute_header, v79, v80, "### Migration failed due to error: %s", v81, 0xCu);
        sub_1000083B0(v82);
      }

      else
      {
      }

      goto LABEL_17;
    }
  }
}

void sub_1000884B0()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession) && (v2 = *(v0 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession + 8), v3 = swift_getObjectType(), v4 = *(v2 + 80), swift_unknownObjectRetain(), v29 = v4(v3, v2), swift_unknownObjectRelease(), v29))
  {
    v5 = *(v0 + 128);
    if (v5)
    {
      v6 = *(v0 + 136);

      v8 = v5(v7);
      v10 = v9;
      sub_100012050(v5, v6);
      if (v8)
      {
        v11 = (v1 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_migrationController);
        *v11 = v8;
        v11[1] = v10;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        if (qword_1001B93B8 != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        sub_10000D298(v12, qword_1001BC738);
        v13 = v29;
        v14 = Logger.logObject.getter();
        v15 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = swift_slowAlloc();
          *v16 = 138412290;
          *(v16 + 4) = v13;
          *v17 = v29;
          v18 = v13;
          _os_log_impl(&_mh_execute_header, v14, v15, "Migration start UI: %@", v16, 0xCu);
          sub_10001259C(v17, &unk_1001BBA60, &qword_10016D230);
        }

        if (*v11)
        {
          v19 = v11[1];
          ObjectType = swift_getObjectType();
          v21 = *(v19 + 16);
          swift_unknownObjectRetain();
          v21(v13, ObjectType, v19);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
        return;
      }
    }

    if (qword_1001B93B8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000D298(v25, qword_1001BC738);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "### Migration start UI failed: create controller failed", v28, 2u);
    }
  }

  else
  {
    if (qword_1001B93B8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000D298(v22, qword_1001BC738);
    v29 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v29, v23, "### Migration start UI failed: no file transfer session", v24, 2u);
    }
  }
}

void sub_1000888B4(uint64_t a1, uint64_t a2)
{
  if (qword_1001B93B8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000D298(v2, qword_1001BC738);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16[0] = v6;
    *v5 = 136315138;
    swift_errorRetain();
    sub_100005DCC(&qword_1001B9C28, &unk_10016D140);
    v7 = String.init<A>(reflecting:)();
    v9 = sub_10002065C(v7, v8, v16);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "FileTransfer completed: %s", v5, 0xCu);
    sub_1000083B0(v6);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession);
    v11 = *(Strong + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_setupSession + 8);
    swift_unknownObjectRetain();

    if (v12)
    {
      ObjectType = swift_getObjectType();
      sub_100005DCC(&qword_1001BC498, &qword_10016EEB8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10016CCE0;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for Bool;
      *(inited + 72) = 1;
      v15 = sub_100004BE0(inited);
      swift_setDeallocating();
      sub_10001259C(inited + 32, &qword_1001B95E0, &unk_10016C040);
      (*(v11 + 176))(v15, ObjectType, v11);

      swift_unknownObjectRelease();
    }
  }
}

void sub_100088B64(void *a1, void *a2)
{
  if ([a1 type] == 1)
  {
    if (qword_1001B93B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000D298(v4, qword_1001BC738);
    v5 = a2;
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = 0xD000000000000013;
      v8 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v8 = 136315650;
      v9 = [v5 targetID];
      if (v9)
      {
        v10 = v9;
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;
      }

      else
      {
        v13 = 0x8000000100145470;
        v11 = 0xD000000000000015;
      }

      v23 = sub_10002065C(v11, v13, &v42);

      *(v8 + 4) = v23;
      *(v8 + 12) = 2080;
      v24 = [v5 peerPublicKey];
      if (v24)
      {
        v25 = v24;
        v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        v29 = Data.description.getter();
        v31 = v30;
        sub_1000083FC(v26, v28);
      }

      else
      {
        v31 = 0x8000000100149410;
        v29 = 0xD000000000000013;
      }

      v32 = sub_10002065C(v29, v31, &v42);

      *(v8 + 14) = v32;
      *(v8 + 22) = 2080;
      v33 = [v5 selfPublicKey];
      if (v33)
      {
        v34 = v33;
        v35 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v37 = v36;

        v7 = Data.description.getter();
        v39 = v38;
        sub_1000083FC(v35, v37);
      }

      else
      {
        v39 = 0x8000000100149410;
      }

      v40 = sub_10002065C(v7, v39, &v42);

      *(v8 + 24) = v40;
      _os_log_impl(&_mh_execute_header, oslog, v6, "FileTransfer session start: TargetID %s, PPK <%s>, SPK <%s>", v8, 0x20u);
      swift_arrayDestroy();

      goto LABEL_22;
    }
  }

  else
  {
    if (qword_1001B93B8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000D298(v14, qword_1001BC738);
    v15 = a1;
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v42 = v18;
      *v17 = 136315138;
      sub_1000122EC(0, &qword_1001BCA78, RPFileTransferProgress_ptr);
      v19 = v15;
      v20 = String.init<A>(reflecting:)();
      v22 = sub_10002065C(v20, v21, &v42);

      *(v17 + 4) = v22;
      _os_log_impl(&_mh_execute_header, oslog, v16, "FileTransfer progress: %s", v17, 0xCu);
      sub_1000083B0(v18);

LABEL_22:

      return;
    }
  }
}

uint64_t sub_100088FBC(void *a1, uint64_t (*a2)(void))
{
  if (qword_1001B93B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BC738);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "FileTransfer received item: %@", v8, 0xCu);
    sub_10001259C(v9, &unk_1001BBA60, &qword_10016D230);
  }

  return a2(0);
}

void sub_10008911C(uint64_t a1, void *a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  *(swift_allocObject() + 16) = v5;

  v6 = a2;
  v4();
}

void sub_1000891D4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_100089238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for D2DSetupModel(0);
  v6 = __chkstk_darwin(v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v57 = &v54 - v9;
  v59 = type metadata accessor for DispatchWorkItemFlags();
  v62 = *(v59 - 8);
  __chkstk_darwin(v59);
  v58 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v60 = *(v11 - 8);
  v61 = v11;
  __chkstk_darwin(v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchTime();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v54 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v63 = Strong;
    if (a2 == 0x363534333231 && a3 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v23 = v22 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
      v24 = *(v22 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model);
      v25 = *(v22 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + 8);
      *v23 = xmmword_10016F060;
      v26 = *(v23 + 16);
      *(v23 + 16) = 3;
      sub_10008ABCC(v24, v25, v26);
      sub_1000122EC(0, &qword_1001BCE90, OS_dispatch_queue_ptr);
      v27 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v28 = v20;
      + infix(_:_:)();
      v56 = v8;
      v55 = *(v15 + 8);
      v55(v18, v14);
      v29 = swift_allocObject();
      swift_weakInit();
      v68 = sub_10008BDE4;
      v69 = v29;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10001C544;
      v67 = &unk_100192558;
      v30 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10008AB6C();
      sub_100005DCC(&unk_1001BBA90, &unk_10016D130);
      sub_100012084();
      v32 = v58;
      v31 = v59;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v30);

      (*(v62 + 8))(v32, v31);
      (*(v60 + 8))(v13, v61);
      v33 = v28;
      v22 = v63;
      v55(v33, v14);
      v8 = v56;
    }

    else if (a2 == 0x303130303030 && a3 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v38 = *(v22 + 80);
      if (v38)
      {
        v39 = *(v22 + 88);

        v38(v40);
        sub_100012050(v38, v39);
      }

      sub_1000122EC(0, &qword_1001BCE90, OS_dispatch_queue_ptr);
      v41 = static OS_dispatch_queue.main.getter();
      static DispatchTime.now()();
      v42 = v20;
      + infix(_:_:)();
      v56 = *(v15 + 8);
      v54 = v14;
      (v56)(v18, v14);
      v43 = swift_allocObject();
      swift_weakInit();
      v68 = sub_10008ABC4;
      v69 = v43;
      aBlock = _NSConcreteStackBlock;
      v65 = 1107296256;
      v66 = sub_10001C544;
      v67 = &unk_100192530;
      v44 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock = _swiftEmptyArrayStorage;
      sub_10008AB6C();
      sub_100005DCC(&unk_1001BBA90, &unk_10016D130);
      sub_100012084();
      v46 = v58;
      v45 = v59;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v44);

      (*(v62 + 8))(v46, v45);
      (*(v60 + 8))(v13, v61);
      v47 = v42;
      v22 = v63;
      (v56)(v47, v54);
    }

    else
    {
      v48 = v22 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
      *(v48 + v5[13]) = 0;
      v49 = v48 + v5[15];
      *v49 = 0x10000;
      *(v49 + 4) = 0;
      v50 = v5[11];
      v51 = *(v48 + v50);
      v52 = __CFADD__(v51, 1);
      v53 = v51 + 1;
      if (v52)
      {
        __break(1u);
        return;
      }

      *(v48 + v50) = v53;
    }

    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = v34;
      v36 = v57;
      sub_10008AA10(v22 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model, v57);
      sub_10008AA10(v36, v8);
      v37 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
      swift_beginAccess();
      sub_10008AA74(v8, v35 + v37);
      swift_endAccess();
      sub_1000AD8C8();

      swift_unknownObjectRelease();
      sub_10008AAD8(v8);
      sub_10008AAD8(v36);
    }

    else
    {
    }
  }
}

uint64_t sub_1000899E4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v86 = *(v6 - 8);
  __chkstk_darwin(v6);
  v85 = v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchTime();
  v83 = *(v84 - 8);
  v8 = __chkstk_darwin(v84);
  v81 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v82 = v76 - v10;
  v11 = type metadata accessor for D2DSetupModel(0);
  v12 = __chkstk_darwin(v11);
  v14 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v76 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = v76 - v19;
  v21 = v1 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model;
  v22 = *(v18 + 120);
  v23 = *(v1 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model + v22);
  if (v23 <= 0xA)
  {
    v25 = v23 / 10.0;
    v79 = v3;
    if (v23)
    {
      v26 = (500.0 - (v25 * 500.0));
      if (v23 == 10)
      {
        v27 = 5;
        goto LABEL_14;
      }
    }

    else
    {
      v26 = -1.0;
    }

    v27 = 5;
    goto LABEL_14;
  }

  if (v23 - 22 < 0xFFFFFFFFFFFFFFF5)
  {
    sub_10008AA10(v1 + OBJC_IVAR____TtC18SharingViewService18D2DSetupInteractor_model, v76 - v19);
    v24 = sub_10009344C();
    sub_10008AAD8(v20);
    if (v24 > 1u)
    {
    }

    else
    {
      v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v58 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    sub_100005DCC(&unk_1001BBCD0, &unk_10016E860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10016CCE0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v60;
    strcpy((inited + 48), "Fake Timeout");
    *(inited + 61) = 0;
    *(inited + 62) = -5120;
    v61 = NSOSStatusErrorDomain;
    sub_100004F48(inited);
    swift_setDeallocating();
    sub_10001259C(inited + 32, &qword_1001B95D0, &qword_10016C030);
    v62 = objc_allocWithZone(NSError);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v64 = [v62 initWithDomain:v61 code:-6722 userInfo:isa];

    v65 = v11[19];
    v66 = *(v21 + v65);
    *(v21 + v65) = v64;

LABEL_26:
    v67 = *v21;
    v68 = *(v21 + 8);
    *v21 = xmmword_10016F070;
    v69 = *(v21 + 16);
    *(v21 + 16) = 3;
    sub_10008ABCC(v67, v68, v69);
    v70 = *(v21 + v11[19]);
    if (v70)
    {
      v71 = v70;
      v72 = _convertErrorToNSError(_:)();
    }

    else
    {
      v72 = 0;
    }

    v73 = NSErrorToOSStatus();

    sub_1000872A4(v73);
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v74 = result;
      sub_10008AA10(v21, v17);
      sub_10008AA10(v17, v14);
      v75 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
      swift_beginAccess();
      sub_10008AA74(v14, v74 + v75);
      swift_endAccess();
      sub_1000AD8C8();
      swift_unknownObjectRelease();
      sub_10008AAD8(v14);
      return sub_10008AAD8(v17);
    }

    return result;
  }

  v26 = -1.0;
  v25 = (v23 - 11) / 10.0;
  v79 = v3;
  if (v23 == 11 || (v26 = (2000.0 - (v25 * 2000.0)), v23 != 21))
  {
    v27 = 6;
  }

  else
  {
    v27 = 6;
  }

LABEL_14:
  v77 = v5;
  v78 = v6;
  *(v21 + v22) = v23 + 1;
  if (qword_1001B93B8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000D298(v28, qword_1001BC738);
  sub_10008ABF4(v27, 0, 3);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  sub_10008ABCC(v27, 0, 3);
  v31 = os_log_type_enabled(v29, v30);
  v80 = v2;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v76[0] = v17;
    v33 = v32;
    v34 = swift_slowAlloc();
    v76[1] = v1;
    v35 = v34;
    v87 = v34;
    aBlock = v27;
    *v33 = 136315650;
    v89 = 0;
    LOBYTE(v90) = 3;
    sub_10008ABF4(v27, 0, 3);
    v36 = String.init<A>(reflecting:)();
    v38 = sub_10002065C(v36, v37, &v87);

    *(v33 + 4) = v38;
    *(v33 + 12) = 2048;
    *(v33 + 14) = v26;
    *(v33 + 22) = 2048;
    *(v33 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v29, v30, "Progress: %s { 'remainSecs' : %f, 'progress' : %f }", v33, 0x20u);
    sub_1000083B0(v35);

    v17 = v76[0];
  }

  v39 = v77;
  v40 = v21 + v11[16];
  *v40 = v25;
  *(v40 + 4) = 0;
  v41 = v21 + v11[17];
  *v41 = v26;
  *(v41 + 8) = 0;
  v42 = *v21;
  v43 = *(v21 + 8);
  *v21 = v27;
  *(v21 + 8) = 0;
  v44 = *(v21 + 16);
  *(v21 + 16) = 3;
  sub_10008ABCC(v42, v43, v44);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v46 = Strong;
    sub_10008AA10(v21, v17);
    sub_10008AA10(v17, v14);
    v47 = OBJC_IVAR____TtC18SharingViewService17D2DSetupPresenter_model;
    swift_beginAccess();
    sub_10008AA74(v14, v46 + v47);
    swift_endAccess();
    sub_1000AD8C8();
    swift_unknownObjectRelease();
    sub_10008AAD8(v14);
    sub_10008AAD8(v17);
  }

  sub_1000122EC(0, &qword_1001BCE90, OS_dispatch_queue_ptr);
  v48 = static OS_dispatch_queue.main.getter();
  v49 = v81;
  static DispatchTime.now()();
  v50 = v82;
  + infix(_:_:)();
  v83 = *(v83 + 8);
  v51 = v84;
  (v83)(v49, v84);
  v52 = swift_allocObject();
  swift_weakInit();
  v92 = sub_10008AC1C;
  v93 = v52;
  aBlock = _NSConcreteStackBlock;
  v89 = 1107296256;
  v90 = sub_10001C544;
  v91 = &unk_100192580;
  v53 = _Block_copy(&aBlock);

  v54 = v85;
  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10008AB6C();
  sub_100005DCC(&unk_1001BBA90, &unk_10016D130);
  sub_100012084();
  v55 = v39;
  v56 = v80;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v53);

  (*(v79 + 8))(v55, v56);
  (*(v86 + 8))(v54, v78);
  return (v83)(v50, v51);
}

void sub_10008A43C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 96);
    v3 = *(Strong + 104);
    sub_100025EF0(v2, v3);

    if (v2)
    {
      v2(v4);
      sub_100012050(v2, v3);
    }
  }
}

double sub_10008A4C0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000899E4();
  }

  return result;
}

id sub_10008A540()
{
  v1 = [v0 fileTransferSessionTemplate];

  return v1;
}

void sub_10008A578(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10007B904;
    v5[3] = &unk_1001927D8;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setProgressHandler:v4];
  _Block_release(v4);
}

uint64_t (*sub_10008A620())()
{
  result = [v0 promptForPINHandler];
  if (result)
  {
    *(swift_allocObject() + 16) = result;
    return sub_10008BD94;
  }

  return result;
}

void sub_10008A694(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    v5[4] = a1;
    v5[5] = a2;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 1107296256;
    v5[2] = sub_10007B198;
    v5[3] = &unk_100192788;
    v4 = _Block_copy(v5);
  }

  else
  {
    v4 = 0;
  }

  [v3 setPromptForPINHandler:v4];
  _Block_release(v4);
}

void sub_10008A73C()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v0 sendAppEvent:isa];
}

uint64_t type metadata accessor for D2DSetupInteractor(uint64_t a1)
{
  result = qword_1001BC798;
  if (!qword_1001BC798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008A820(uint64_t a1)
{
  result = type metadata accessor for D2DSetupModel(319);
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

uint64_t sub_10008A8E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for D2DSetupModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008A948()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008A988(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005DCC(&qword_1001BA7B0, &qword_10016D9A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008A9F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008AA10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for D2DSetupModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008AA74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for D2DSetupModel(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008AAD8(uint64_t a1)
{
  v2 = type metadata accessor for D2DSetupModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10008AB6C()
{
  result = qword_1001BA7C0;
  if (!qword_1001BA7C0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BA7C0);
  }

  return result;
}

void sub_10008ABCC(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:

    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_4;
  }
}

double sub_10008ABF4(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:
    v3 = a1;
    return result;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    goto LABEL_4;
  }

  return result;
}

uint64_t sub_10008AC64(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return _swift_deallocObject(v2, 40, 7);
}

uint64_t sub_10008ACBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10006242C;

  return sub_100080640(a1, v4, v5, v6);
}

unint64_t sub_10008AD70()
{
  result = qword_1001BCA50;
  if (!qword_1001BCA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001BCA50);
  }

  return result;
}

uint64_t sub_10008ADF0()
{
  v1 = sub_100005DCC(&qword_1001BBB68, &unk_10016E760);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10008AE84(char a1)
{
  sub_100005DCC(&qword_1001BBB68, &unk_10016E760);

  return sub_1000838D0(a1);
}

uint64_t sub_10008AF10()
{

  return _swift_deallocObject(v0, 32, 7);
}

const char *sub_10008AF80(int a1)
{
  if (a1 > 279)
  {
    if (a1 <= 709)
    {
      if (a1 <= 499)
      {
        if (a1 > 400)
        {
          if (a1 > 419)
          {
            switch(a1)
            {
              case 420:
                return "FileTransferReady";
              case 430:
                return "eSimExternal2FAStart";
              case 431:
                return "eSimExternal2FAStop";
            }
          }

          else
          {
            switch(a1)
            {
              case 401:
                return "PINPair";
              case 410:
                return "MigrateStart";
              case 411:
                return "MigrateStop";
            }
          }
        }

        else if (a1 > 299)
        {
          switch(a1)
          {
            case 300:
              return "BackupProgress";
            case 310:
              return "SyncProgress";
            case 400:
              return "StopSetup";
          }
        }

        else
        {
          switch(a1)
          {
            case 280:
              return "TVLCalFailed";
            case 281:
              return "TVLCalTryAgain";
            case 282:
              return "TVLCalFinal";
          }
        }
      }

      else if (a1 <= 554)
      {
        if (a1 > 529)
        {
          switch(a1)
          {
            case 530:
              return "SiriDialogBHome";
            case 540:
              return "SiriDialogBNews";
            case 550:
              return "SiriDialogBWeather";
          }
        }

        else
        {
          switch(a1)
          {
            case 500:
              return "SiriWelcome";
            case 510:
              return "SiriDialogA";
            case 520:
              return "SiriDialogBStart";
          }
        }
      }

      else if (a1 <= 569)
      {
        switch(a1)
        {
          case 555:
            return "SiriDialogBClock";
          case 558:
            return "SiriDialogBMusic";
          case 560:
            return "SiriDialogCMusic";
        }
      }

      else if (a1 > 599)
      {
        if (a1 == 600)
        {
          return "SiriSkipDemo";
        }

        if (a1 == 700)
        {
          return "StopSetupLEDs";
        }
      }

      else
      {
        if (a1 == 570)
        {
          return "SiriDialogCNews";
        }

        if (a1 == 580)
        {
          return "SiriDialogCWeather";
        }
      }

      return "?";
    }

    if (a1 <= 899)
    {
      if (a1 <= 802)
      {
        if (a1 == 710)
        {
          return "AudioPasscodeEnded";
        }

        if (a1 == 800)
        {
          return "AuthAccountsStart";
        }
      }

      else
      {
        switch(a1)
        {
          case 803:
            return "AuthAccountsiCloudProgress";
          case 804:
            return "AuthAccountsStoreProgress";
          case 805:
            return "AuthAccountsGameCenterProgress";
        }
      }

      return "?";
    }

    if (a1 > 999)
    {
      if (a1 <= 1099)
      {
        if (a1 == 1000)
        {
          return "SecureIntentStart";
        }

        if (a1 == 1001)
        {
          return "SecureIntentFinish";
        }
      }

      else
      {
        switch(a1)
        {
          case 1100:
            return "OneTimeCodeDetected";
          case 2000:
            return "DependentStart";
          case 2001:
            return "DependentEnd";
        }
      }

      return "?";
    }

    switch(a1)
    {
      case 900:
        result = "SU-No-SetupScanAttempt";
        break;
      case 901:
        result = "SU-No-SetupStatusUpdate";
        break;
      case 902:
        result = "SU-No-SetupWipeWifi";
        break;
      case 903:
        result = "SU-No-SetupCancelled";
        break;
      case 904:
        result = "SU-No-SetupObliterate";
        break;
      case 905:
        result = "SU-No-SetupCannotCancel";
        break;
      case 906:
        result = "SysDrop AirDrop Event";
        break;
      case 907:
        result = "SysDrop Sysdiagnose Event";
        break;
      case 908:
        result = "SysDrop Cancel Event";
        break;
      case 909:
        result = "File Transfer Progress Event";
        break;
      case 910:
        result = "File Transfer Completed Event";
        break;
      case 911:
        result = "iOSWiFiSetup";
        break;
      case 912:
        result = "HKPrimaryResidentSSIDFetchStart";
        break;
      case 913:
        result = "LoggingProfileTransfer";
        break;
      default:
        return "?";
    }
  }

  else
  {
    if (a1 > 121)
    {
      if (a1 <= 239)
      {
        if (a1 > 209)
        {
          if (a1 > 229)
          {
            switch(a1)
            {
              case 230:
                return "HomeKitStart";
              case 234:
                return "HomeKitSetupStart";
              case 236:
                return "CDPSetupStart";
            }
          }

          else
          {
            switch(a1)
            {
              case 210:
                return "ActivationStart";
              case 220:
                return "iCloudStart";
              case 224:
                return "AppleIDSetupStart";
            }
          }
        }

        else if (a1 > 139)
        {
          switch(a1)
          {
            case 140:
              return "RecognizeVoice";
            case 150:
              return "SiriForEveryone";
            case 200:
              return "WiFiStart";
          }
        }

        else
        {
          switch(a1)
          {
            case 122:
              return "CheckingAppleMusic";
            case 124:
              return "CheckingAccount";
            case 130:
              return "WiFiPoweredOff";
          }
        }
      }

      else if (a1 <= 269)
      {
        if (a1 > 249)
        {
          switch(a1)
          {
            case 250:
              return "ReportSuccess";
            case 260:
              return "TVLSStart";
            case 264:
              return "TVLSFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 240:
              return "BuddyStarting";
            case 241:
              return "BuddyProgress";
            case 242:
              return "BuddyFinished";
          }
        }
      }

      else
      {
        if (a1 > 275)
        {
          if (a1 > 277)
          {
            if (a1 == 278)
            {
              return "TVLCalStart";
            }

            else
            {
              return "TVLCalStep";
            }
          }

          else if (a1 == 276)
          {
            return "TVLSTryAgain";
          }

          else
          {
            return "TVLSToneBegan";
          }
        }

        switch(a1)
        {
          case 270:
            return "TVLSEstimateStart";
          case 272:
            return "TVLSEstimateFinal";
          case 274:
            return "TVLSEstimateFailed";
        }
      }

      return "?";
    }

    if (a1 > 69)
    {
      if (a1 <= 95)
      {
        if (a1 > 91)
        {
          switch(a1)
          {
            case '\\':
              return "StepStart";
            case '^':
              return "StepFinish";
            case '_':
              return "PreFinish";
          }
        }

        else
        {
          switch(a1)
          {
            case 'F':
              return "SecurityFinish";
            case 'P':
              return "BasicConfigStart";
            case 'Z':
              return "BasicConfigFinish";
          }
        }

        return "?";
      }

      if (a1 > 98)
      {
        switch(a1)
        {
          case 'c':
            return "SetupPeerSWUpdate";
          case 'd':
            return "Finished";
          case 'x':
            return "CheckingiCloud";
        }

        return "?";
      }

      if (a1 == 96)
      {
        return "SetupFinished";
      }

      else if (a1 == 97)
      {
        return "SetupResumed";
      }

      else
      {
        return "SetupSuspend";
      }
    }

    else
    {
      if (a1 > 32)
      {
        if (a1 > 49)
        {
          switch(a1)
          {
            case '2':
              return "PreAuthFinish";
            case '<':
              return "SecurityStart";
            case 'A':
              return "SecurityAPCLoopStart";
          }
        }

        else
        {
          switch(a1)
          {
            case '!':
              return "SessionSecured";
            case '#':
              return "ConnectStart";
            case '(':
              return "PreAuthStart";
          }
        }

        return "?";
      }

      if (a1 <= 29)
      {
        switch(a1)
        {
          case 0:
            return "Invalid";
          case 10:
            return "Start";
          case 20:
            return "Final";
        }

        return "?";
      }

      if (a1 == 30)
      {
        return "Error";
      }

      else if (a1 == 31)
      {
        return "SessionStarted";
      }

      else
      {
        return "SessionEnded";
      }
    }
  }

  return result;
}

uint64_t sub_10008B81C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B85C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10008B89C()
{
  v0 = sub_100005DCC(&qword_1001BA7B0, &qword_10016D9A0);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v26 - v4;
  URL.init(string:)();
  v6 = [objc_opt_self() defaultWorkspace];
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v6;
  sub_100005EB8(v5, v3, &qword_1001BA7B0, &qword_10016D9A0);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v11 = 0;
  if ((*(v9 + 48))(v3, 1, v8) != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v11 = v12;
    (*(v9 + 8))(v3, v8);
  }

  v13 = sub_100128254();
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v27 = 0;
  v15 = [v7 openSensitiveURL:v11 withOptions:isa error:&v27];

  if (v15)
  {
    v16 = v27;
LABEL_6:
    sub_10001259C(v5, &qword_1001BA7B0, &qword_10016D9A0);
    return;
  }

  v17 = v27;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_10001259C(v5, &qword_1001BA7B0, &qword_10016D9A0);
  if (qword_1001B93B8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000D298(v18, qword_1001BC738);
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136315138;
    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    v25 = sub_10002065C(v23, v24, &v27);

    *(v21 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v19, v20, "Open Settings failed with error: %s", v21, 0xCu);
    sub_1000083B0(v22);
  }

  else
  {
  }
}

void sub_10008BC94()
{
  if (qword_1001B93B8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000D298(v0, qword_1001BC738);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Start What's Next flow in Settings", v3, 2u);
  }

  [objc_opt_self() postFollowUp];

  sub_10008B89C();
}

uint64_t sub_10008BE18()
{
  v0 = type metadata accessor for Logger();
  sub_10000D378(v0, qword_1001BCA80);
  v1 = sub_10000D298(v0, qword_1001BCA80);
  if (qword_1001B92D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D298(v0, qword_1001C3930);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10008BEE0(uint64_t a1)
{
  v2 = type metadata accessor for AuthenticateAccountsModel(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10008CDAC(a1, v4);
  type metadata accessor for AuthenticateAccounsInteractor(0);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_setupSession) = 0;
  *(v5 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_remoteViewControllerProxy) = 0;
  *(v5 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_loggedUsageStart) = 0;
  *(v5 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_loggedUsageDone) = 0;
  v6 = (v5 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_idleTimerReason);
  *v6 = 0xD000000000000031;
  v6[1] = 0x80000001001496F0;
  sub_10008CE10(v4, v5 + OBJC_IVAR____TtC18SharingViewService29AuthenticateAccounsInteractor_model);
  return v5;
}

id sub_10008C02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for AuthenticateAccountsPresenter();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModelDidUpdate];
  *v10 = nullsub_4;
  v10[1] = 0;
  *&v9[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_remoteViewControllerProxy] = 0;
  v9[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_currentState] = 9;
  v9[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_homeButtonPressedWhileLocked] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v9[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_interactor];
  *v11 = a1;
  v11[1] = a2;
  v12 = &v9[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_router];
  *v12 = a3;
  v12[1] = a4;
  v13 = &v9[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_authViewModel];
  *v13 = 0;
  *(v13 + 1) = 0xE000000000000000;
  *(v13 + 2) = 0;
  *(v13 + 3) = 0xE000000000000000;
  v13[32] = 0;
  *(v13 + 40) = xmmword_10016D2F0;
  v16.receiver = v9;
  v16.super_class = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v14 = objc_msgSendSuper2(&v16, "init");
  *(a1 + 24) = &off_100194800;
  swift_unknownObjectWeakAssign();
  return v14;
}

uint64_t sub_10008C2A4(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for AuthenticateAccountsModel(0);
  result = __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = [a1 userInfo];
    if (v12)
    {
      v13 = v12;
      static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      sub_100004BE0(_swiftEmptyArrayStorage);
    }

    if (qword_1001B93C0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_10000D298(v14, qword_1001BCA80);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v39 = v18;
      *v17 = 136315138;
      v19 = Dictionary.description.getter();
      v21 = sub_10002065C(v19, v20, &v39);

      *(v17 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v15, v16, "AuthenticateAccounts Flow being configured {userInfo: %s}", v17, 0xCu);
      sub_1000083B0(v18);
    }

    sub_1000B5CD4(v22, v11);
    v23 = *(v4 + OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsFlowViewController_interactorGenerator);

    v24 = v23(v11);
    v26 = v25;

    v27 = *(v4 + OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsFlowViewController_routerGenerator);

    v29 = v27(v28);
    v31 = v30;

    v32 = *(v4 + OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsFlowViewController_presenterGenerator);

    v33 = v32(v24, v26, v29, v31);
    v35 = v34;

    v36 = (v4 + OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsFlowViewController_presenter);
    *v36 = v33;
    v36[1] = v35;
    result = swift_unknownObjectRelease();
    if (a2)
    {

      a2(v37);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return sub_10007DC0C(v11);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10008C6A8(char a1)
{
  v2 = v1;
  v11.receiver = v2;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidAppear:", a1 & 1);
  if (qword_1001B93C0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000D298(v4, qword_1001BCA80);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "AuthenticateAccounts Flow viewDidAppear", v7, 2u);
  }

  v8 = *&v2[OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsFlowViewController_presenter];
  if (v8)
  {
    v8[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_currentState] = 0;
    swift_unknownObjectRetain();
    sub_1000E52A0(v12);
    v9 = objc_allocWithZone(type metadata accessor for AuthenticateAccountsStartViewController());
    swift_unknownObjectRetain();
    v10 = sub_1000E87AC(v12, v8, v9);
    sub_10008CC34(v10, v2, v8, *&v8[OBJC_IVAR____TtC18SharingViewService29AuthenticateAccountsPresenter_router]);
    swift_unknownObjectRelease();
  }
}

id sub_10008C880(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (qword_1001B93C0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000D298(v5, qword_1001BCA80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "AuthenticateAccounts Flow viewDidDisappear", v8, 2u);
  }

  if (*&v2[OBJC_IVAR____TtC18SharingViewService38AuthenticateAccountsFlowViewController_presenter])
  {
    swift_unknownObjectRetain();
    sub_1000E7C0C();
    swift_unknownObjectRelease();
  }

  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "viewDidDisappear:", a1 & 1);
}

double sub_10008CB2C()
{
  swift_unknownObjectRelease();

  return result;
}

void sub_10008CC34(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  if ([a2 _remoteViewControllerProxy])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100005E14(&v13, &v14);
    sub_100005DCC(&unk_1001BC0B0, &unk_10016EAD0);
    swift_dynamicCast();
    *(a4 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_remoteViewControllerProxy) = v12;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v8 = *(a4 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_currentCardViewController);
    *(a4 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_currentCardViewController) = a1;
    v9 = a1;

    v10 = [a2 presentProxCardFlowWithDelegate:a3 initialViewController:v9];
    swift_unknownObjectRelease();
    v11 = *(a4 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_navigationController);
    *(a4 + OBJC_IVAR____TtC18SharingViewService26AuthenticateAccountsRouter_navigationController) = v10;
  }

  else
  {
    __break(1u);
  }
}