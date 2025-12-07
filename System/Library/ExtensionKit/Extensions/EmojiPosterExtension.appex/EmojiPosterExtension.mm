uint64_t sub_100001958@<X0>(uint64_t *a1@<X8>)
{
  sub_100014118();
  swift_allocObject();
  sub_100014128();
  sub_1000140E8();
  swift_allocObject();

  sub_1000140F8();
  sub_100001F74(&qword_100021580, &qword_100015030);
  sub_100014078();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100014F00;
  sub_100001FBC(&qword_100021588, &type metadata accessor for PRRenderingConfiguration, &protocol conformance descriptor for PRRenderingConfiguration);

  sub_100014068();
  sub_100001FBC(&qword_100021590, &type metadata accessor for PREditingConfiguration, &protocol conformance descriptor for PREditingConfiguration);

  sub_100014068();

  *a1 = v2;
  return result;
}

id sub_100001BB4(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t sub_100001BF8()
{
  [objc_allocWithZone(type metadata accessor for EmojiAssetUpdater(0)) init];
  sub_100001F74(&qword_100021560, &qword_100014F10);
  swift_allocObject();
  sub_100014108();
  sub_1000020FC(&qword_100021578, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_1000140A8();
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001D5C();
  sub_1000020FC(&qword_100021558, &protocol conformance descriptor for PRProviderConfiguration<A>);
  sub_100014088();
  return 0;
}

unint64_t sub_100001D5C()
{
  result = qword_100021550;
  if (!qword_100021550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021550);
  }

  return result;
}

uint64_t sub_100001DB0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001E98(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  swift_allocObject();
  return a2();
}

void *sub_100001F18@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100001F74(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100001FBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_100002010(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002020(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002040(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_10000207C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1000020FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_100001DB0(&qword_100021560, &qword_100014F10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id EmojiAssetUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id EmojiAssetUpdater.init()()
{
  sub_1000140C8();
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_maxDescriptorCount] = 20;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_currentVersion] = 6;
  v1 = OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_configurationProvider;
  sub_100014008();
  swift_allocObject();
  *&v0[v1] = sub_100013FF8();
  v2 = OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_serializer;
  sub_100013D08();
  swift_allocObject();
  *&v0[v2] = sub_100013CF8();

  sub_100013CD8();

  v4.receiver = v0;
  v4.super_class = type metadata accessor for EmojiAssetUpdater(0);
  return objc_msgSendSuper2(&v4, "init");
}

uint64_t type metadata accessor for EmojiAssetUpdater(uint64_t a1)
{
  result = qword_100021640;
  if (!qword_100021640)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void EmojiAssetUpdater.updateDescriptors(_:completion:)(uint64_t a1, void (*a2)(void *, void), uint64_t a3)
{
  v4 = v3;
  v8 = sub_100001F74(&qword_1000215B0, qword_100015070);
  v178 = *(v8 - 8);
  v179 = v8;
  v9 = __chkstk_darwin(v8);
  v177 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v182 = &v157 - v12;
  __chkstk_darwin(v11);
  v176 = &v157 - v13;
  v184 = sub_100013F18();
  v14 = *(v184 - 8);
  v15 = __chkstk_darwin(v184);
  v167 = &v157 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v157 - v18;
  v20 = __chkstk_darwin(v17);
  *&v166 = &v157 - v21;
  v22 = __chkstk_darwin(v20);
  v183 = &v157 - v23;
  v24 = __chkstk_darwin(v22);
  v173 = &v157 - v25;
  __chkstk_darwin(v24);
  v27 = &v157 - v26;
  v168 = OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_logger;
  v28 = sub_1000140B8();
  v29 = sub_100014288();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v28, v29, "Updating descriptors...", v30, 2u);
  }

  v187 = &_swiftEmptyArrayStorage;
  v188 = &_swiftEmptySetSingleton;
  v161 = *(v4 + OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_configurationProvider);
  v174 = sub_100013FD8();
  LODWORD(v175) = _UISolariumEnabled();
  v31 = *(a1 + 16);
  v180 = a1;
  v181 = v4;
  v165 = v19;
  v158 = a2;
  v157 = a3;
  if (v31)
  {
    v32 = sub_100005208(1869768040, 0xE400000000000000);
    if (v33)
    {
      v160 = *(*(a1 + 56) + 8 * v32);
      v34 = v160;
      v35 = sub_100003A64(v34);
      if (v35)
      {
        v36 = v35;
        if (!*(v35 + 16) || (v37 = sub_100005208(0x6E6F6973726576, 0xE700000000000000), (v38 & 1) == 0) || (v186 = *(*(v36 + 56) + 8 * v37), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0) || v185 != 6)
        {

LABEL_23:
          v50 = v160;
          goto LABEL_24;
        }

        if (*(v36 + 16) && (v39 = sub_100005208(0x6F7265486163696DLL, 0xE800000000000000), (v40 & 1) != 0))
        {
          v41 = *(*(v36 + 56) + 8 * v39);
          swift_unknownObjectRetain();

          v186 = v41;
          if ((swift_dynamicCast() & 1) != 0 && v175 == v185)
          {
            v42 = sub_1000140B8();
            v43 = sub_1000142A8();
            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              *v44 = 0;
              _os_log_impl(&_mh_execute_header, v42, v43, "Hero descriptor unchanged", v44, 2u);
            }

            v4 = v34;
            sub_1000141E8();
            if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_100014208();
            }

            sub_100014218();
            v170 = v187;
            v45 = [v4 identifier];
            v46 = sub_100014188();
            v48 = v47;

            sub_1000052C4(&v186, v46, v48);

            goto LABEL_42;
          }
        }

        else
        {
        }
      }

      goto LABEL_23;
    }
  }

  v50 = 0;
LABEL_24:
  v51 = v50;
  v52 = sub_1000140B8();
  v53 = sub_1000142A8();

  v54 = os_log_type_enabled(v52, v53);
  v160 = v50;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v186 = v56;
    *v55 = 136315138;
    if (v50)
    {
      v57 = 0x4E4943414C504552;
    }

    else
    {
      v57 = 0x676E69646C697542;
    }

    if (v50)
    {
      v58 = 0xE900000000000047;
    }

    else
    {
      v58 = 0xE800000000000000;
    }

    v59 = sub_100004C50(v57, v58, &v186);
    a1 = v180;

    *(v55 + 4) = v59;
    v4 = v181;
    _os_log_impl(&_mh_execute_header, v52, v53, "%s hero descriptor", v55, 0xCu);
    sub_100006320(v56);
  }

  v60 = v27;
  sub_100013FC8();
  v61 = sub_100005D08(1869768040, 0xE400000000000000, 0, 1);
  v62 = sub_100004200(1869768040, 0xE400000000000000, v60, v61);
  if (v62)
  {
    v63 = v62;
    v64 = objc_allocWithZone(PRPosterDescriptorGalleryAssetLookupInfo);
    if (v175)
    {
      v65 = sub_100014178();
      v66 = &selRef_initWithMicaAssetIdentifier_;
    }

    else
    {
      v65 = sub_100014178();
      v66 = &selRef_initWithAssetCatalogIdentifier_;
    }

    v4 = [v64 *v66];

    v77 = [objc_opt_self() galleryOptionsWithAssetLookupInfo:v4];
    [v63 setPreferredGalleryOptions:v77];

    isa = sub_100014228().super.super.isa;
    v79 = sub_100014178();
    [v63 setObject:isa forUserInfoKey:v79];

    v48 = v63;
    sub_1000141E8();
    if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_120;
    }

    goto LABEL_39;
  }

  v175 = v61;
  v67 = v173;
  v68 = v184;
  (*(v14 + 16))(v173, v60, v184);
  v48 = sub_1000140B8();
  v69 = sub_100014298();
  if (os_log_type_enabled(v48, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v186 = v71;
    *v70 = 136315138;
    v72 = sub_100013EB8();
    v4 = v73;
    v172 = v60;
    v74 = v67;
    v75 = *(v14 + 8);
    v75(v74, v68);
    v76 = sub_100004C50(v72, v4, &v186);

    *(v70 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v48, v69, "Couldn't create hero descriptor, configuration %s, skipping it", v70, 0xCu);
    sub_100006320(v71);

    v75(v172, v68);
  }

  else
  {

    v84 = *(v14 + 8);
    v84(v67, v68);
    v84(v60, v68);
  }

  v170 = &_swiftEmptyArrayStorage;
  a1 = v180;
LABEL_42:
  v60 = v183;
  v85 = v174;
  v173 = *(v174 + 16);
  if (v173)
  {
    v61 = 0;
    v171 = (v174 + ((*(v14 + 80) + 32) & ~*(v14 + 80)));
    v175 = (v14 + 16);
    v172 = (v14 + 8);
    *&v49 = 136315138;
    v159 = v49;
    v169 = v14;
    do
    {
      if (v61 >= *(v85 + 16))
      {
        goto LABEL_119;
      }

      v86 = *(v14 + 16);
      v86(v60, v171 + *(v14 + 72) * v61, v184);
      v48 = sub_100013EB8();
      v88 = v87;
      v89 = v188;
      if (v188[2])
      {
        sub_100014418();
        sub_1000141B8();
        v90 = sub_100014428();
        v91 = -1 << *(v89 + 32);
        v4 = v90 & ~v91;
        if ((*(v89 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v4))
        {
          v92 = ~v91;
          while (1)
          {
            v93 = (v89[6] + 16 * v4);
            v94 = *v93 == v48 && v93[1] == v88;
            if (v94 || (sub_1000143D8() & 1) != 0)
            {
              break;
            }

            v4 = (v4 + 1) & v92;
            if (((*(v89 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v4) & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          v60 = v183;
          (*v172)(v183, v184);

          goto LABEL_45;
        }
      }

LABEL_57:
      if (*(a1 + 16))
      {
        v95 = sub_100005208(v48, v88);
        if (v96)
        {
          v97 = *(*(a1 + 56) + 8 * v95);
          v98 = sub_100003A64(v97);
          if (v98)
          {
            v99 = v98;
            if (*(v98 + 16) && (v100 = sub_100005208(0x6E6F6973726576, 0xE700000000000000), (v101 & 1) != 0))
            {
              v102 = *(*(v99 + 56) + 8 * v100);
              swift_unknownObjectRetain();

              v186 = v102;
              if ((swift_dynamicCast() & 1) != 0 && v185 == 6)
              {
                v4 = v97;
                sub_1000141E8();
                if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100014208();
                }

                sub_100014218();
                v103 = v187;
                sub_1000052C4(&v186, v48, v88);

                goto LABEL_73;
              }
            }

            else
            {
            }
          }
        }
      }

      v4 = sub_100005D08(v48, v88, 0, 1);

      v60 = v183;
      v104 = sub_100004200(v48, v88, v183, v4);

      if (!v104)
      {

        v107 = v166;
        v108 = v184;
        v86(v166, v60, v184);
        v48 = sub_1000140B8();
        v109 = sub_100014298();
        if (os_log_type_enabled(v48, v109))
        {
          v110 = v107;
          v111 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v186 = v163;
          *v111 = v159;
          v162 = sub_100013EB8();
          v113 = v112;
          v164 = *v172;
          v164(v110, v108);
          v114 = sub_100004C50(v162, v113, &v186);

          *(v111 + 4) = v114;
          _os_log_impl(&_mh_execute_header, v48, v109, "Couldn't create descriptor for configuration %s, skipping it", v111, 0xCu);
          sub_100006320(v163);
          v115 = v180;

          v164(v60, v184);
          a1 = v115;
        }

        else
        {

          v4 = v172;
          v116 = *v172;
          (*v172)(v107, v108);
          v116(v60, v108);
        }

LABEL_45:
        v14 = v169;
        v85 = v174;
        goto LABEL_46;
      }

      v105 = v104;
      sub_1000141E8();
      if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100014208();
      }

      sub_100014218();
      v103 = v187;
      sub_1000052C4(&v186, v48, v88);

      a1 = v180;
LABEL_73:
      v14 = v169;
      v60 = v183;
      v85 = v174;
      v170 = v103;
      if (v103 >> 62)
      {
        v106 = sub_100014388();
      }

      else
      {
        v106 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      (*v172)(v60, v184);
      if (v106 == 20)
      {
        break;
      }

LABEL_46:
      ++v61;
    }

    while (v61 != v173);
  }

  v117 = sub_100013FE8();
  a1 = v184;
  v175 = *(v117 + 16);
  if (v175)
  {
    v61 = 0;
    v173 = *(v179 + 48);
    v172 = (v117 + ((*(v178 + 80) + 32) & ~*(v178 + 80)));
    v171 = (v14 + 32);
    v183 = (v14 + 8);
    v169 = (v14 + 16);
    *&v118 = 136315138;
    v166 = v118;
    v14 = v165;
    v174 = v117;
    while (1)
    {
      if (v61 >= *(v117 + 16))
      {
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        sub_100014208();
LABEL_39:
        sub_100014218();
        v170 = v187;
        v80 = [v48 identifier];
        v81 = sub_100014188();
        v83 = v82;

        sub_1000052C4(&v186, v81, v83);

        (*(v14 + 8))(v60, v184);
        goto LABEL_42;
      }

      v119 = v176;
      sub_1000062B0(&v172[*(v178 + 72) * v61], v176);
      v120 = *(v119 + v173);
      v121 = v179;
      v122 = *(v179 + 48);
      v123 = *v171;
      v124 = v182;
      (*v171)(v182, v119, a1);
      *(v124 + v122) = v120;
      v125 = v177;
      sub_1000062B0(v124, v177);
      v123(v14, v125, a1);
      sub_1000062B0(v124, v125);
      v4 = *(v125 + *(v121 + 48));
      v60 = *v183;
      (*v183)(v125, a1);
      v48 = sub_100013EB8();
      v127 = v126;
      v128 = v188;
      if (v188[2])
      {
        sub_100014418();
        sub_1000141B8();
        v129 = sub_100014428();
        v130 = -1 << *(v128 + 32);
        v131 = v129 & ~v130;
        if ((*(v128 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v131))
        {
          v132 = ~v130;
          do
          {
            v133 = (v128[6] + 16 * v131);
            v134 = *v133 == v48 && v133[1] == v127;
            if (v134 || (sub_1000143D8() & 1) != 0)
            {
              goto LABEL_113;
            }

            v131 = (v131 + 1) & v132;
          }

          while (((*(v128 + ((v131 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v131) & 1) != 0);
        }
      }

      v135 = v180;
      if (*(v180 + 16))
      {
        v136 = sub_100005208(v48, v127);
        if (v137)
        {
          v138 = *(*(v135 + 56) + 8 * v136);
          v139 = sub_100003A64(v138);
          if (v139)
          {
            v140 = v139;
            if (*(v139 + 16) && (v141 = sub_100005208(0x6E6F6973726576, 0xE700000000000000), (v142 & 1) != 0))
            {
              v143 = *(*(v140 + 56) + 8 * v141);
              swift_unknownObjectRetain();

              v186 = v143;
              if ((swift_dynamicCast() & 1) != 0 && v185 == 6)
              {
                v4 = v138;
                sub_1000141E8();
                if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100014208();
                }

                sub_100014218();
                v170 = v187;
                sub_1000052C4(&v186, v48, v127);
                goto LABEL_112;
              }
            }

            else
            {
            }
          }
        }
      }

      v4 = sub_100005D08(v48, v127, v4, 0);

      v144 = sub_100004200(v48, v127, v14, v4);

      if (v144)
      {
        break;
      }

      v147 = v167;
      a1 = v184;
      (*v169)(v167, v14, v184);
      v48 = sub_1000140B8();
      v148 = sub_100014298();
      if (os_log_type_enabled(v48, v148))
      {
        v149 = v147;
        v150 = swift_slowAlloc();
        v151 = swift_slowAlloc();
        v186 = v151;
        *v150 = v166;
        v152 = sub_100013EB8();
        v154 = v153;
        (v60)(v149, v184);
        v155 = v152;
        v14 = v165;
        v156 = sub_100004C50(v155, v154, &v186);

        *(v150 + 4) = v156;
        _os_log_impl(&_mh_execute_header, v48, v148, "Couldn't create descriptor for configuration %s, skipping it", v150, 0xCu);
        sub_100006320(v151);
        a1 = v184;

        v146 = v14;
        goto LABEL_114;
      }

      (v60)(v147, a1);
      (v60)(v14, a1);
LABEL_84:
      sub_100007CF4(v182, &qword_1000215B0, qword_100015070);
      v117 = v174;
      if (++v61 == v175)
      {
        goto LABEL_117;
      }
    }

    v145 = v144;
    sub_1000141E8();
    if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100014208();
    }

    sub_100014218();
    v170 = v187;
    sub_1000052C4(&v186, v48, v127);

LABEL_112:
LABEL_113:

    v146 = v14;
    a1 = v184;
LABEL_114:
    (v60)(v146, a1);
    goto LABEL_84;
  }

LABEL_117:

  v158(v170, 0);
}

unint64_t sub_100003A64(void *a1)
{
  v20 = 0;
  v2 = [a1 loadUserInfoWithError:&v20];
  v3 = v20;
  if (v2)
  {
    v4 = v2;
    v5 = sub_100014148();
    v6 = v3;

    v7 = sub_100003C70(v5);
  }

  else
  {
    v8 = v20;
    sub_100013D18();

    swift_willThrow();
    v9 = a1;
    v10 = sub_1000140B8();
    v11 = sub_100014298();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      v14 = [v9 identifier];
      v15 = sub_100014188();
      v17 = v16;

      v18 = sub_100004C50(v15, v17, &v20);

      *(v12 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v10, v11, "Unable to fetch user info for descriptor %s", v12, 0xCu);
      sub_100006320(v13);
    }

    return 0;
  }

  return v7;
}

unint64_t sub_100003C70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100001F74(&qword_100021688, &qword_1000150D0);
    v2 = sub_1000143B8();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_100006424(*(a1 + 48) + 40 * v12, v24);
        sub_100007C98(*(a1 + 56) + 32 * v12, v25 + 8);
        v22[0] = v25[0];
        v22[1] = v25[1];
        v23 = v26;
        v21[0] = v24[0];
        v21[1] = v24[1];
        sub_100006424(v21, v20);
        if (!swift_dynamicCast())
        {
          sub_100007CF4(v21, &qword_100021690, &qword_1000150D8);

          goto LABEL_23;
        }

        sub_100007C98(v22 + 8, v20);
        sub_100007CF4(v21, &qword_100021690, &qword_1000150D8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        result = sub_100005208(v18, v19);
        if (v13)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v18;
          v9[1] = v19;
          v10 = result;

          *(v2[7] + 8 * v10) = v18;
          result = swift_unknownObjectRelease();
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v14 = (v2[6] + 16 * result);
          *v14 = v18;
          v14[1] = v19;
          *(v2[7] + 8 * result) = v18;
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_27;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id sub_100003F40(void *a1, uint64_t a2)
{
  v17 = 0;
  v3 = [a1 storeGalleryOptions:a2 error:&v17];
  if (v3)
  {
    v4 = v17;
  }

  else
  {
    v5 = v17;
    sub_100013D18();

    swift_willThrow();
    v6 = a1;
    v7 = sub_1000140B8();
    v8 = sub_100014298();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      v11 = [v6 identifier];
      v12 = sub_100014188();
      v14 = v13;

      v15 = sub_100004C50(v12, v14, &v17);

      *(v9 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error storing poster gallery options to descriptor %s", v9, 0xCu);
      sub_100006320(v10);
    }
  }

  return v3;
}

uint64_t sub_100004110(uint64_t a1)
{
  sub_100013F18();
  sub_100006528();
  return sub_100013CE8();
}

id sub_100004200(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = a4;
  v39 = a1;
  v40 = a2;
  v41 = sub_100013F18();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100013F38();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100013FB8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100004110(a3);
  if (v17 >> 60 == 15)
  {
    v18 = v41;
    (*(v5 + 16))(v7, a3, v41);
    v19 = sub_1000140B8();
    v20 = sub_100014298();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43 = v22;
      *v21 = 136315138;
      v23 = sub_100013EB8();
      v25 = v24;
      (*(v5 + 8))(v7, v18);
      v26 = sub_100004C50(v23, v25, &v43);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Couldn't encode configuration %s", v21, 0xCu);
      sub_100006320(v22);
    }

    else
    {

      (*(v5 + 8))(v7, v18);
    }

    return 0;
  }

  else
  {
    v41 = v17;
    v27 = v16;
    sub_100013EA8();
    sub_100013F68();
    (*(v13 + 8))(v15, v12);
    isa = sub_100013F28().super.isa;
    (*(v9 + 8))(v11, v8);
    sub_1000142D8();
    v30 = v29;

    if (v40)
    {
      v31 = v40;
      v32 = v39;
    }

    else
    {
      v32 = sub_100013EB8();
      v31 = v34;
    }

    v35 = v32;
    v36 = v41;
    v37 = sub_1000045E8(v35, v31, v27, v41, v42, v30);

    sub_100007D58(v27, v36);
    return v37;
  }
}

id sub_1000045E8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, double a6)
{
  v10 = sub_100014178();
  v11 = [objc_opt_self() mutableDescriptorWithIdentifier:v10];

  v12 = [objc_allocWithZone(PRTimeFontConfiguration) initWithTimeFontIdentifier:PRTimeFontIdentifierRounded];
  sub_100001F74(&unk_100021650, &qword_1000150B8);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100015060;
  *(v13 + 32) = [objc_opt_self() vibrantMonochromeColor];
  sub_100006580(0, &qword_100021870, PRPosterColor_ptr);
  isa = sub_1000141F8().super.isa;

  [v11 setPreferredTitleColors:isa];

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100015060;
  *(v15 + 32) = v12;
  sub_100006580(0, &qword_100021660, PRTimeFontConfiguration_ptr);
  v16 = v12;
  v17 = sub_1000141F8().super.isa;

  [v11 setPreferredTimeFontConfigurations:v17];

  [v11 setLuminance:a6];
  sub_100001F74(&qword_100021668, &unk_1000150C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100014F00;
  sub_100014328();
  *(inited + 96) = &type metadata for Data;
  *(inited + 72) = a3;
  *(inited + 80) = a4;
  v27[1] = 0xE700000000000000;
  sub_1000064D4(a3, a4);
  sub_100014328();
  *(inited + 168) = &type metadata for Int;
  *(inited + 144) = 6;
  sub_100011040(inited);
  swift_setDeallocating();
  sub_100001F74(&unk_100021670, &qword_100015240);
  swift_arrayDestroy();
  v19 = sub_100014138().super.isa;

  v27[0] = 0;
  LODWORD(inited) = [v11 storeUserInfo:v19 error:v27];

  if (inited)
  {
    v20 = v27[0];
    if (a5)
    {
      v21 = a5;
      sub_100003F40(v11, v21);
    }
  }

  else
  {
    v22 = v27[0];
    sub_100013D18();

    swift_willThrow();
    v23 = sub_1000140B8();
    v24 = sub_100014298();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Error storing user info", v25, 2u);
    }

    return 0;
  }

  return v11;
}

id EmojiAssetUpdater.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmojiAssetUpdater(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100004B80(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_100004BF4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_100004C50(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_100004C50(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100004D1C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_100007C98(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100006320(v11);
  return v7;
}

unint64_t sub_100004D1C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100004E28(a5, a6);
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
    result = sub_100014378();
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

char *sub_100004E28(uint64_t a1, unint64_t a2)
{
  v3 = sub_100004E74(a1, a2);
  sub_100004FA4(&off_10001CAB0);
  return v3;
}

char *sub_100004E74(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100005090(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_100014378();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1000141D8();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100005090(v10, 0);
        result = sub_100014358();
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

uint64_t sub_100004FA4(uint64_t result)
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

  result = sub_100005104(result, v11, 1, v3);
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

void *sub_100005090(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100001F74(&unk_1000216A0, &unk_1000150E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100005104(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F74(&unk_1000216A0, &unk_1000150E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_1000051F8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_100005208(uint64_t a1, uint64_t a2)
{
  sub_100014418();
  sub_1000141B8();
  v4 = sub_100014428();

  return sub_100005B88(a1, a2, v4);
}

unint64_t sub_100005280(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100014308(*(v2 + 40));

  return sub_100005C40(a1, v4);
}

uint64_t sub_1000052C4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100014418();
  sub_1000141B8();
  v8 = sub_100014428();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1000143D8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_100005674(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100005414(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001F74(&qword_100021698, &qword_1000150E0);
  result = sub_100014348();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_100014418();
      sub_1000141B8();
      result = sub_100014428();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_100005674(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100005414(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000057F4();
      goto LABEL_16;
    }

    sub_100005950(v8 + 1);
  }

  v10 = *v4;
  sub_100014418();
  sub_1000141B8();
  result = sub_100014428();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1000143D8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1000143E8();
  __break(1u);
  return result;
}

void *sub_1000057F4()
{
  v1 = v0;
  sub_100001F74(&qword_100021698, &qword_1000150E0);
  v2 = *v0;
  v3 = sub_100014338();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_100005950(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100001F74(&qword_100021698, &qword_1000150E0);
  result = sub_100014348();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_100014418();

      sub_1000141B8();
      result = sub_100014428();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_100005B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1000143D8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100005C40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100006424(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100014318();
      sub_100006480(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

id sub_100005D08(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = a1 == 1869768040 && a2 == 0xE400000000000000;
  if (v6 || (sub_1000143D8() & 1) != 0)
  {
    v9 = [objc_allocWithZone(ATXPosterDescriptorGalleryOptions) init];
    [v9 setHero:1];
    if (a4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ((a1 != 0x6F6C436568546E69 || a2 != 0xEB00000000736475) && (sub_1000143D8() & 1) == 0 && (a1 != 0x7963697073 || a2 != 0xE500000000000000) && (sub_1000143D8() & 1) == 0 && (a1 != 0x65727574616ELL || a2 != 0xE600000000000000) && (sub_1000143D8() & 1) == 0 && (a1 != 0x73696E6E6574 || a2 != 0xE600000000000000) && (sub_1000143D8() & 1) == 0 && (a1 != 0x77696B7265746177 || a2 != 0xEB000000006F6769) && (sub_1000143D8() & 1) == 0 && (a1 != 0x7361666B61657262 || a2 != 0xE900000000000074) && (sub_1000143D8() & 1) == 0)
  {
    v9 = [objc_allocWithZone(ATXPosterDescriptorGalleryOptions) init];
    if (a4)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = [objc_allocWithZone(ATXPosterDescriptorGalleryOptions) init];
  v10 = objc_allocWithZone(ATXComplication);
  v11 = sub_100014178();
  v12 = sub_100014178();
  v13 = sub_100014178();
  v14 = [v10 initWithExtensionBundleIdentifier:v11 kind:v12 containerBundleIdentifier:v13 widgetFamily:12 intent:0 source:5];

  [v9 setInlineComplication:v14];
  if ((a4 & 1) == 0)
  {
LABEL_12:
    [v9 setFocus:a3];
    [v9 setOnlyEligibleForMadeForFocusSection:1];
  }

LABEL_13:
  [v9 setAllowsSystemSuggestedComplications:0];
  return v9;
}

uint64_t sub_1000062B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F74(&qword_1000215B0, qword_100015070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100006320(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100006374(uint64_t a1, uint64_t a2)
{
  result = sub_1000140D8();
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

uint64_t sub_1000064D4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_100006528()
{
  result = qword_100021890;
  if (!qword_100021890)
  {
    sub_100013F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100021890);
  }

  return result;
}

uint64_t sub_100006580(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1000065C8(uint64_t a1, char *a2, uint64_t a3)
{
  v162 = a3;
  v5 = sub_100001F74(&qword_1000215B0, qword_100015070);
  v179 = *(v5 - 8);
  v180 = v5;
  v6 = __chkstk_darwin(v5);
  v178 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v185 = &v162 - v9;
  __chkstk_darwin(v8);
  v177 = &v162 - v10;
  v11 = sub_100013F18();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = (&v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __chkstk_darwin(v13);
  v167 = &v162 - v17;
  v18 = __chkstk_darwin(v16);
  v169 = &v162 - v19;
  v20 = __chkstk_darwin(v18);
  v182 = &v162 - v21;
  v22 = __chkstk_darwin(v20);
  v174 = &v162 - v23;
  __chkstk_darwin(v22);
  v184 = &v162 - v24;
  v170 = OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_logger;
  v181 = a2;
  v25 = sub_1000140B8();
  v26 = sub_100014288();
  v27 = os_log_type_enabled(v25, v26);
  v183 = a1;
  if (v27)
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Updating descriptors...", v28, 2u);
    a1 = v183;
  }

  v189 = &_swiftEmptyArrayStorage;
  v190 = &_swiftEmptySetSingleton;
  v29 = *&v181[OBJC_IVAR____TtC20EmojiPosterExtension17EmojiAssetUpdater_configurationProvider];
  v175 = sub_100013FD8();
  v30 = _UISolariumEnabled();
  v31 = *(a1 + 16);
  v186 = v11;
  v176 = v12;
  v168 = v15;
  v163 = v29;
  if (v31)
  {
    v32 = sub_100005208(1869768040, 0xE400000000000000);
    if (v33)
    {
      v165 = *(*(a1 + 56) + 8 * v32);
      v34 = v165;
      v35 = sub_100003A64(v34);
      if (v35)
      {
        v36 = v35;
        if (!*(v35 + 16) || (v37 = sub_100005208(0x6E6F6973726576, 0xE700000000000000), (v38 & 1) == 0) || (v188 = *(*(v36 + 56) + 8 * v37), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0) || v187 != 6)
        {

LABEL_23:
          v51 = v165;
          goto LABEL_24;
        }

        if (*(v36 + 16) && (v39 = sub_100005208(0x6F7265486163696DLL, 0xE800000000000000), (v40 & 1) != 0))
        {
          v41 = *(*(v36 + 56) + 8 * v39);
          swift_unknownObjectRetain();

          v188 = v41;
          if ((swift_dynamicCast() & 1) != 0 && v30 == v187)
          {
            v42 = sub_1000140B8();
            v43 = sub_1000142A8();
            if (os_log_type_enabled(v42, v43))
            {
              v44 = swift_slowAlloc();
              *v44 = 0;
              _os_log_impl(&_mh_execute_header, v42, v43, "Hero descriptor unchanged", v44, 2u);
            }

            v45 = v34;
            sub_1000141E8();
            if (*((v189 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v189 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_100014208();
            }

            sub_100014218();
            v171 = v189;
            v46 = [v45 identifier];
            v47 = sub_100014188();
            v49 = v48;

            sub_1000052C4(&v188, v47, v49);

            goto LABEL_42;
          }
        }

        else
        {
        }
      }

      goto LABEL_23;
    }
  }

  v51 = 0;
LABEL_24:
  v52 = v51;
  v53 = sub_1000140B8();
  v54 = sub_1000142A8();

  v55 = os_log_type_enabled(v53, v54);
  v165 = v51;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v188 = v57;
    *v56 = 136315138;
    if (v51)
    {
      v58 = 0x4E4943414C504552;
    }

    else
    {
      v58 = 0x676E69646C697542;
    }

    if (v51)
    {
      v59 = 0xE900000000000047;
    }

    else
    {
      v59 = 0xE800000000000000;
    }

    v60 = sub_100004C50(v58, v59, &v188);
    v11 = v186;

    *(v56 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v53, v54, "%s hero descriptor", v56, 0xCu);
    sub_100006320(v57);

    v12 = v176;
  }

  v45 = v184;
  sub_100013FC8();
  v61 = sub_100005D08(1869768040, 0xE400000000000000, 0, 1);
  v62 = sub_100004200(1869768040, 0xE400000000000000, v45, v61);
  if (v62)
  {
    v63 = v62;
    v64 = objc_allocWithZone(PRPosterDescriptorGalleryAssetLookupInfo);
    v65 = sub_100014178();
    if (v30)
    {
      v66 = &selRef_initWithMicaAssetIdentifier_;
    }

    else
    {
      v66 = &selRef_initWithAssetCatalogIdentifier_;
    }

    v45 = [v64 *v66];

    v77 = [objc_opt_self() galleryOptionsWithAssetLookupInfo:v45];
    [v63 setPreferredGalleryOptions:v77];

    isa = sub_100014228().super.super.isa;
    v79 = sub_100014178();
    [v63 setObject:isa forUserInfoKey:v79];

    v47 = v63;
    sub_1000141E8();
    if (*((v189 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v189 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_118;
    }

    goto LABEL_39;
  }

  v67 = v174;
  (*(v12 + 16))(v174, v45, v11);
  v47 = sub_1000140B8();
  v68 = v11;
  v69 = sub_100014298();
  if (os_log_type_enabled(v47, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v188 = v71;
    *v70 = 136315138;
    v72 = sub_100013EB8();
    v45 = v73;
    v74 = v67;
    v75 = *(v176 + 8);
    v75(v74, v68);
    v76 = sub_100004C50(v72, v45, &v188);

    *(v70 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v47, v69, "Couldn't create hero descriptor, configuration %s, skipping it", v70, 0xCu);
    sub_100006320(v71);

    v12 = v176;

    v75(v184, v68);
  }

  else
  {

    v84 = *(v12 + 8);
    v84(v67, v68);
    v84(v45, v68);
  }

  v171 = &_swiftEmptyArrayStorage;
  v11 = v68;
LABEL_42:
  v85 = v167;
  v86 = v175;
  v61 = v181;
  v174 = *(v175 + 16);
  if (v174)
  {
    v87 = 0;
    v172 = (v175 + ((*(v12 + 80) + 32) & ~*(v12 + 80)));
    v184 = (v12 + 16);
    v173 = (v12 + 8);
    *&v50 = 136315138;
    v164 = v50;
    do
    {
      if (v87 >= *(v86 + 16))
      {
        goto LABEL_117;
      }

      v88 = *(v12 + 16);
      v88(v85, v172 + *(v12 + 72) * v87, v11);
      v47 = sub_100013EB8();
      v90 = v89;
      v91 = v190;
      if (v190[2])
      {
        sub_100014418();
        sub_1000141B8();
        v92 = sub_100014428();
        v93 = -1 << *(v91 + 32);
        v45 = v92 & ~v93;
        if ((*(v91 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v45))
        {
          v94 = ~v93;
          while (1)
          {
            v95 = (v91[6] + 16 * v45);
            v96 = *v95 == v47 && v95[1] == v90;
            if (v96 || (sub_1000143D8() & 1) != 0)
            {
              break;
            }

            v45 = (v45 + 1) & v94;
            if (((*(v91 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v45) & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          v11 = v186;
          (*v173)(v85, v186);

          v12 = v176;
          goto LABEL_45;
        }
      }

LABEL_57:
      if (*(v183 + 16))
      {
        v97 = sub_100005208(v47, v90);
        if (v98)
        {
          v99 = *(*(v183 + 56) + 8 * v97);
          v100 = sub_100003A64(v99);
          if (v100)
          {
            v101 = v100;
            if (*(v100 + 16) && (v102 = sub_100005208(0x6E6F6973726576, 0xE700000000000000), (v103 & 1) != 0))
            {
              v104 = *(*(v101 + 56) + 8 * v102);
              swift_unknownObjectRetain();

              v188 = v104;
              if ((swift_dynamicCast() & 1) != 0 && v187 == 6)
              {
                v45 = v99;
                sub_1000141E8();
                if (*((v189 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v189 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_100014208();
                }

                sub_100014218();
                v105 = v189;
                sub_1000052C4(&v188, v47, v90);
                goto LABEL_73;
              }
            }

            else
            {
            }
          }
        }
      }

      v45 = sub_100005D08(v47, v90, 0, 1);

      v106 = sub_100004200(v47, v90, v85, v45);

      if (!v106)
      {

        v109 = v61;
        v110 = v168;
        v11 = v186;
        v88(v168, v85, v186);
        v111 = v109;
        v47 = sub_1000140B8();
        v112 = sub_100014298();
        if (os_log_type_enabled(v47, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v188 = v114;
          *v113 = v164;
          *&v166 = sub_100013EB8();
          v116 = v115;
          v117 = *v173;
          (*v173)(v110, v186);
          v118 = sub_100004C50(v166, v116, &v188);
          v11 = v186;

          *(v113 + 4) = v118;
          _os_log_impl(&_mh_execute_header, v47, v112, "Couldn't create descriptor for configuration %s, skipping it", v113, 0xCu);
          sub_100006320(v114);

          v119 = v167;
          v117(v167, v11);
          v61 = v181;
          v12 = v176;
          v85 = v119;
        }

        else
        {

          v120 = *v173;
          (*v173)(v110, v11);
          v120(v85, v11);
          v12 = v176;
          v61 = v111;
        }

LABEL_45:
        v86 = v175;
        goto LABEL_46;
      }

      v107 = v106;
      sub_1000141E8();
      if (*((v189 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v189 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100014208();
      }

      sub_100014218();
      v105 = v189;
      sub_1000052C4(&v188, v47, v90);

LABEL_73:

      v11 = v186;
      v86 = v175;
      v12 = v176;
      v171 = v105;
      if (v105 >> 62)
      {
        v108 = sub_100014388();
      }

      else
      {
        v108 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      (*v173)(v85, v11);
      if (v108 == 20)
      {
        break;
      }

LABEL_46:
      ++v87;
    }

    while (v87 != v174);
  }

  v121 = sub_100013FE8();
  v176 = *(v121 + 16);
  if (v176)
  {
    v123 = 0;
    v174 = *(v180 + 48);
    v173 = (v121 + ((*(v179 + 80) + 32) & ~*(v179 + 80)));
    v172 = (v12 + 32);
    v184 = (v12 + 8);
    v168 = (v12 + 16);
    *&v122 = 136315138;
    v166 = v122;
    v61 = v182;
    v175 = v121;
    while (1)
    {
      if (v123 >= *(v121 + 16))
      {
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        sub_100014208();
LABEL_39:
        sub_100014218();
        v171 = v189;
        v80 = [v47 identifier];
        v81 = sub_100014188();
        v83 = v82;

        sub_1000052C4(&v188, v81, v83);

        v12 = v176;
        (*(v176 + 8))(v184, v11);
        goto LABEL_42;
      }

      v124 = v177;
      sub_1000062B0(v173 + *(v179 + 72) * v123, v177);
      v125 = *&v174[v124];
      v126 = v180;
      v127 = *(v180 + 48);
      v128 = *v172;
      v129 = v185;
      (*v172)(v185, v124, v11);
      *(v129 + v127) = v125;
      v130 = v178;
      sub_1000062B0(v129, v178);
      v128(v61, v130, v11);
      sub_1000062B0(v129, v130);
      v45 = *(v130 + *(v126 + 48));
      v131 = *v184;
      (*v184)(v130, v11);
      v47 = sub_100013EB8();
      v133 = v132;
      v134 = v190;
      if (v190[2])
      {
        sub_100014418();
        sub_1000141B8();
        v135 = sub_100014428();
        v136 = -1 << *(v134 + 32);
        v137 = v135 & ~v136;
        if ((*(v134 + ((v137 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v137))
        {
          v138 = ~v136;
          do
          {
            v139 = (v134[6] + 16 * v137);
            v140 = *v139 == v47 && v139[1] == v133;
            if (v140 || (sub_1000143D8() & 1) != 0)
            {
              goto LABEL_83;
            }

            v137 = (v137 + 1) & v138;
          }

          while (((*(v134 + ((v137 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v137) & 1) != 0);
        }
      }

      v141 = v183;
      if (!*(v183 + 16))
      {
        goto LABEL_107;
      }

      v142 = sub_100005208(v47, v133);
      if ((v143 & 1) == 0)
      {
        goto LABEL_107;
      }

      v144 = *(*(v141 + 56) + 8 * v142);
      v145 = sub_100003A64(v144);
      if (!v145)
      {
        goto LABEL_106;
      }

      v146 = v145;
      if (!*(v145 + 16))
      {
        break;
      }

      v147 = sub_100005208(0x6E6F6973726576, 0xE700000000000000);
      if ((v148 & 1) == 0)
      {
        break;
      }

      v149 = *(*(v146 + 56) + 8 * v147);
      swift_unknownObjectRetain();

      v188 = v149;
      if ((swift_dynamicCast() & 1) == 0 || v187 != 6)
      {
        goto LABEL_106;
      }

      v45 = v144;
      sub_1000141E8();
      if (*((v189 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v189 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100014208();
      }

      sub_100014218();
      v171 = v189;
      sub_1000052C4(&v188, v47, v133);
LABEL_111:

LABEL_83:

      v61 = v182;
      v11 = v186;
      v131(v182, v186);
LABEL_84:
      sub_100007CF4(v185, &qword_1000215B0, qword_100015070);
      v121 = v175;
      if (++v123 == v176)
      {
        goto LABEL_115;
      }
    }

LABEL_106:

LABEL_107:
    v45 = sub_100005D08(v47, v133, v45, 0);

    v61 = v182;
    v150 = sub_100004200(v47, v133, v182, v45);

    if (!v150)
    {

      v152 = v169;
      v11 = v186;
      (*v168)(v169, v61, v186);
      v47 = sub_1000140B8();
      v153 = sub_100014298();
      if (os_log_type_enabled(v47, v153))
      {
        v154 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v188 = v155;
        *v154 = v166;
        v156 = sub_100013EB8();
        v157 = v152;
        v159 = v158;
        v167 = v131;
        v131(v157, v186);
        v160 = sub_100004C50(v156, v159, &v188);

        *(v154 + 4) = v160;
        _os_log_impl(&_mh_execute_header, v47, v153, "Couldn't create descriptor for configuration %s, skipping it", v154, 0xCu);
        sub_100006320(v155);
        v11 = v186;

        (v167)(v61, v11);
      }

      else
      {

        v131(v152, v11);
        v131(v61, v11);
      }

      goto LABEL_84;
    }

    v151 = v150;
    sub_1000141E8();
    if (*((v189 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v189 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_100014208();
    }

    sub_100014218();
    v171 = v189;
    sub_1000052C4(&v188, v47, v133);

    goto LABEL_111;
  }

LABEL_115:

  sub_100006580(0, &qword_100021680, PRPosterDescriptor_ptr);
  v161 = sub_1000141F8().super.isa;
  (*(v162 + 16))(v162, v161, 0);
}

uint64_t sub_100007C98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007CF4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001F74(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007D58(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100007D6C(a1, a2);
  }

  return a1;
}

uint64_t sub_100007D6C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_100007DC0()
{
  v1 = v0;
  v2 = sub_100013FB8();
  __chkstk_darwin(v2 - 8);
  v3 = sub_100001F74(&qword_100021850, &unk_100015220);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController);
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_configuration;
  swift_beginAccess();
  sub_1000139C0(v1 + v10, v8, &qword_100021850, &unk_100015220);
  v11 = v9;
  sub_100013DF8();

  v12 = *(v1 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController);
  if (!v12)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1000139C0(v1 + v10, v6, &qword_100021850, &unk_100015220);
  v13 = sub_100013F18();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13) != 1)
  {
    v15 = v12;
    sub_100013EA8();
    (*(v14 + 8))(v6, v13);
    sub_100014038();

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_100007FDC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100001F74(&qword_100021850, &unk_100015220);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  v12 = *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_renderer);
  *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_renderer) = a1;
  v13 = a1;

  sub_100013E68();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emojiRenderer) = sub_100013E58();

  v14 = objc_allocWithZone(sub_100013E38());
  v15 = sub_100013E08();
  v16 = *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController);
  *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController) = v15;

  sub_100014048();
  v17 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v18 = *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController);
  *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController) = v17;

  swift_getObjectType();
  *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_currentDeviceInterfaceOrientation) = sub_100010FE8(a2);
  sub_1000082AC(a2, v11);
  v19 = sub_100013F18();
  v20 = *(v19 - 8);
  (*(v20 + 56))(v11, 0, 1, v19);
  v21 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_configuration;
  swift_beginAccess();
  sub_100013BD0(v11, v3 + v21);
  swift_endAccess();
  sub_100007DC0();
  sub_100007CF4(v11, &qword_100021850, &unk_100015220);
  sub_1000139C0(v3 + v21, v9, &qword_100021850, &unk_100015220);
  result = (*(v20 + 48))(v9, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1000087A0(v9, v13, a2);
    return (*(v20 + 8))(v9, v19);
  }

  return result;
}

uint64_t sub_1000082AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100013F18();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 contents];
  v27[0] = 0;
  v9 = [v8 loadUserInfoWithError:v27];
  v10 = v27[0];
  if (v9)
  {
    v11 = v9;
    v12 = sub_100014148();
    *&v26[0] = 0xD000000000000012;
    *(&v26[0] + 1) = 0x8000000100015650;
    v13 = v10;
    sub_100014328();
    if (!*(v12 + 16) || (v14 = sub_100005280(v27), (v15 & 1) == 0))
    {

      __break(1u);
    }

    v16 = v14;
    swift_unknownObjectRelease();

    sub_100007C98(*(v12 + 56) + 32 * v16, v26);

    sub_100006480(v27);
    sub_10001117C(v26, &v28);
    swift_dynamicCast();
    v17 = v25[2];
    v18 = v25[3];
    sub_100013CC8();
    swift_allocObject();
    sub_100013CB8();
    sub_1000109B0(&qword_1000218A0, &type metadata accessor for EmojiPosterConfiguration, &protocol conformance descriptor for EmojiPosterConfiguration);
    sub_100013CA8();

    sub_100007D6C(v17, v18);
    return (*(v5 + 32))(a2, v7, v4);
  }

  else
  {
    v19 = v27[0];
    swift_unknownObjectRelease();
    sub_100013D18();

    swift_willThrow();
    v20 = sub_1000140B8();
    v21 = sub_100014298();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Error loading user info contents", v22, 2u);
    }

    sub_100014008();
    swift_allocObject();
    sub_100013FF8();
    v23 = sub_100013FD8();

    if (*(v23 + 16))
    {
      (*(v5 + 16))(a2, v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v4);
    }

    else
    {

      __break(1u);
    }
  }

  return result;
}

void sub_1000087A0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v63 = a3;
  v7 = sub_100001F74(&qword_100021850, &unk_100015220);
  __chkstk_darwin(v7 - 8);
  v9 = &v63 - v8;
  v10 = sub_100013F18();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_configuration;
  swift_beginAccess();
  sub_100013BD0(v9, v4 + v12);
  swift_endAccess();
  sub_100007DC0();
  sub_100007CF4(v9, &qword_100021850, &unk_100015220);
  v13 = [a2 backgroundView];
  v14 = [v13 window];

  v15 = &EmojiAssetUpdater;
  if (v14 && (v16 = [v14 rootViewController], v14, v16))
  {
    v17 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController;
    if (!*(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    [v16 addChildViewController:?];
    v18 = [a2 backgroundView];
    v19 = *(v4 + v17);
    if (!v19)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v20 = [v19 view];
    if (!v20)
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v21 = v20;
    [v18 addSubview:v20];

    v22 = *(v4 + v17);
    if (!v22)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    [v22 didMoveToParentViewController:v16];
    v15 = &EmojiAssetUpdater;
  }

  else
  {
    v23 = [a2 backgroundView];
    v24 = *(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController);
    if (!v24)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v25 = [v24 view];
    if (!v25)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v16 = v25;
    [v23 addSubview:v25];
  }

  v26 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController;
  v27 = *(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController);
  if (!v27)
  {
    __break(1u);
    goto LABEL_32;
  }

  v28 = [v27 view];
  if (!v28)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v29 = v28;
  v30 = [a2 backgroundView];
  sub_100012B34(v29, v30);

  v31 = [a2 foregroundView];
  v32 = [v31 window];

  if (!v32 || (v33 = [v32 v15[418].count], v32, !v33))
  {
    v40 = [a2 foregroundView];
    v41 = *(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController);
    if (!v41)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v42 = [v41 view];
    if (!v42)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v33 = v42;
    [v40 addSubview:v42];

LABEL_23:
    v43 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController;
    v44 = *(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController);
    if (v44)
    {
      v45 = [v44 view];
      if (v45)
      {
        v46 = v45;
        v47 = [a2 foregroundView];
        sub_100012B34(v46, v47);

        v48 = v63;
        [v63 backlightProgress];
        v50 = *(v4 + v43);
        if (v50)
        {
          v51 = v49;
          v52 = v50;
          sub_100013DD8();

          v53 = *(v4 + v26);
          if (v53)
          {
            v54 = v53;
            sub_100014018();

            *(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_wakeProgress) = v51;
            [v48 unlockProgress];
            v56 = *(v4 + v43);
            if (v56)
            {
              v57 = v55;
              v58 = v56;
              sub_100013E18();

              v59 = *(v4 + v26);
              if (v59)
              {
                v60 = v59;
                sub_100014028();

                *(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_unlockProgress) = v57;
                v61 = *(v4 + v43);
                if (v61)
                {
                  v62 = v61;
                  sub_100013E28();

                  return;
                }

                goto LABEL_39;
              }

LABEL_38:
              __break(1u);
LABEL_39:
              __break(1u);
              goto LABEL_40;
            }

LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v34 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController;
  if (!*(v4 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController))
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  [v33 addChildViewController:?];
  v35 = [a2 foregroundView];
  v36 = *(v4 + v34);
  if (!v36)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v37 = [v36 view];
  if (!v37)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v38 = v37;
  [v35 addSubview:v37];

  v39 = *(v4 + v34);
  if (v39)
  {
    [v39 didMoveToParentViewController:v33];
    goto LABEL_23;
  }

LABEL_51:
  __break(1u);
}

id sub_100008E7C()
{
  sub_1000140C8();
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController] = 0;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController] = 0;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_currentDeviceInterfaceOrientation] = 1;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emojiRenderer] = 0;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_wakeProgress] = 0x3FF0000000000000;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_unlockProgress] = 0;
  v1 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_configuration;
  v2 = sub_100013F18();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_renderer] = 0;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for EmojiPosterExtensionRenderingController(0);
  return objc_msgSendSuper2(&v4, "init");
}

void sub_1000090D0(uint64_t a1, uint64_t a2)
{
  sub_1000140D8();
  if (v2 <= 0x3F)
  {
    sub_1000091BC(319);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1000091BC(uint64_t a1)
{
  if (!qword_1000217A8)
  {
    sub_100013F18();
    v1 = sub_1000142F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1000217A8);
    }
  }
}

uint64_t sub_100009214(void *a1, void *a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor);
  *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor) = a1;
  v6 = a1;

  sub_100013E68();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_emojiRenderer) = sub_100013E58();

  swift_getObjectType();
  *(v3 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_currentDeviceInterfaceOrientation) = sub_100010FE8(a2);

  return sub_1000094E0(a2);
}

void sub_1000092D8(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  a5(v8, a4);

  swift_unknownObjectRelease();
}

void sub_100009360(void *a1)
{
  v2 = [objc_msgSend(a1 "environment")];
  swift_unknownObjectRelease();
  v3 = [v2 descriptorIdentifier];
  swift_unknownObjectRelease();
  if (v3)
  {
    v4 = sub_100014188();
    v6 = v5;

    if (v4 == 1869768040 && v6 == 0xE400000000000000)
    {
    }

    else
    {
      v8 = sub_1000143D8();

      if ((v8 & 1) == 0)
      {
        return;
      }
    }

    sub_10000BA70(a1);
  }
}

uint64_t sub_1000094E0(void *a1)
{
  v2 = v1;
  v4 = sub_100013F38();
  v46 = *(v4 - 8);
  __chkstk_darwin(v4);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100013FB8();
  v43 = *(v44 - 8);
  __chkstk_darwin(v44);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001F74(&qword_100021850, &unk_100015220);
  __chkstk_darwin(v8 - 8);
  v10 = &v40 - v9;
  v11 = sub_100013F18();
  v42 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = [a1 sourceContents];
  v51[0] = 0;
  v18 = [v17 loadUserInfoWithError:v51];
  v19 = v51[0];
  if (v18)
  {
    v20 = v18;
    v41 = v4;
    v47 = v2;
    v21 = sub_100014148();
    *&v50[0] = 0xD000000000000012;
    *(&v50[0] + 1) = 0x8000000100015650;
    v22 = v19;
    sub_100014328();
    if (!*(v21 + 16) || (v23 = sub_100005280(v51), (v24 & 1) == 0))
    {

      __break(1u);
    }

    v25 = v23;
    swift_unknownObjectRelease();

    sub_100007C98(*(v21 + 56) + 32 * v25, v50);

    sub_100006480(v51);
    sub_10001117C(v50, &v52);
    swift_dynamicCast();
    v26 = v48;
    v27 = v49;
    sub_100013CC8();
    swift_allocObject();
    sub_100013CB8();
    sub_1000109B0(&qword_1000218A0, &type metadata accessor for EmojiPosterConfiguration, &protocol conformance descriptor for EmojiPosterConfiguration);
    sub_100013CA8();
    v40 = v26;
    v32 = v42;
    (*(v42 + 32))(v16, v14, v11);
    (*(v32 + 16))(v10, v16, v11);
    (*(v32 + 56))(v10, 0, 1, v11);
    v33 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
    v34 = v47;
    swift_beginAccess();
    sub_10001004C(v10, v34 + v33);
    swift_endAccess();
    sub_100013EA8();
    v35 = v45;
    sub_100013F68();
    (*(v43 + 8))(v7, v44);
    isa = sub_100013F28().super.isa;
    (*(v46 + 8))(v35, v41);
    sub_1000142D8();
    v38 = v37;

    sub_100007D6C(v40, v27);
    result = (*(v32 + 8))(v16, v11);
    *(v34 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_luminance) = v38;
  }

  else
  {
    v28 = v51[0];
    swift_unknownObjectRelease();
    sub_100013D18();

    swift_willThrow();
    v29 = sub_1000140B8();
    v30 = sub_100014298();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Error loading user info contents", v31, 2u);
    }

    sub_100009C20();
  }

  return result;
}

uint64_t sub_100009C20()
{
  v1 = v0;
  v2 = sub_100013F18();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001F74(&qword_100021850, &unk_100015220);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  sub_100014008();
  swift_allocObject();
  sub_100013FF8();
  v9 = sub_100013FD8();

  if (*(v9 + 16))
  {
    (*(v3 + 16))(v5, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

    (*(v3 + 32))(v8, v5, v2);
    (*(v3 + 56))(v8, 0, 1, v2);
    v10 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
    swift_beginAccess();
    sub_10001004C(v8, v1 + v10);
    return swift_endAccess();
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100009EA0(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  sub_100001F74(&qword_100021850, &unk_100015220);
  v2[31] = swift_task_alloc();
  v3 = sub_100013F18();
  v2[32] = v3;
  v2[33] = *(v3 - 8);
  v2[34] = swift_task_alloc();

  return _swift_task_switch(sub_100009FC4, 0, 0);
}

uint64_t sub_100009FC4(uint64_t a1)
{
  v41 = v1;
  v1[35] = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_logger;
  v2 = sub_1000140B8();
  v3 = sub_100014288();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finalizing editor state, saving...", v4, 2u);
  }

  v5 = v1[29];
  v6 = v1[30];

  v7 = [v5 currentLook];
  v8 = [v7 identifier];

  v9 = sub_100014188();
  v11 = v10;

  v12 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_viewControllers;
  swift_beginAccess();
  v13 = *(v6 + v12);
  if (*(v13 + 16) && (, v14 = sub_100005208(v9, v11), v16 = v15, , (v16 & 1) != 0))
  {
    v17 = *(v13 + 56) + 16 * v14;
    v18 = *v17;
    v1[36] = *v17;
    v19 = *(v17 + 8);
    v1[37] = v19;
    v20 = v18;
    v21 = v19;

    sub_100014258();
    v22 = v20;
    v1[38] = sub_100014248();
    v24 = sub_100014238();

    return _swift_task_switch(sub_10000A384, v24, v23);
  }

  else
  {

    v25 = v1[29];
    v26 = sub_100014298();
    v27 = v25;
    v28 = sub_1000140B8();

    if (os_log_type_enabled(v28, v26))
    {
      v29 = v1[29];
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40 = v31;
      *v30 = 136315138;
      v32 = [v29 currentLook];
      v33 = [v32 identifier];

      v34 = sub_100014188();
      v36 = v35;

      v37 = sub_100004C50(v34, v36, &v40);

      *(v30 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v28, v26, "Error finding view controller for current look %s", v30, 0xCu);
      sub_100006320(v31);
    }

    v38 = v1[1];

    return v38();
  }
}

uint64_t sub_10000A384()
{
  v1 = *(v0 + 288);

  sub_100013DE8();

  return _swift_task_switch(sub_10000A434, 0, 0);
}

uint64_t sub_10000A434()
{
  v52 = v0;
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 248);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 296);

    sub_100007CF4(v3, &qword_100021850, &unk_100015220);
    v5 = *(v0 + 232);
    v6 = sub_100014298();
    v7 = v5;
    v8 = sub_1000140B8();

    if (os_log_type_enabled(v8, v6))
    {
      v9 = *(v0 + 232);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v51 = v11;
      *v10 = 136315138;
      v12 = [v9 currentLook];
      v13 = [v12 identifier];

      v14 = sub_100014188();
      v16 = v15;

      v17 = sub_100004C50(v14, v16, &v51);

      *(v10 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v8, v6, "Error finding view controller for current look %s", v10, 0xCu);
      sub_100006320(v11);
    }
  }

  else
  {
    (*(v1 + 32))(*(v0 + 272), v3, v2);
    sub_100013D08();
    swift_allocObject();
    sub_100013CF8();
    sub_100013CD8();
    sub_1000109B0(&qword_100021890, &type metadata accessor for EmojiPosterConfiguration, &protocol conformance descriptor for EmojiPosterConfiguration);
    v18 = sub_100013CE8();
    v20 = v19;
    v21 = [objc_msgSend(*(v0 + 232) "environment")];
    swift_unknownObjectRelease();
    sub_100001F74(&qword_100021668, &unk_1000150C0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100015110;
    *(v0 + 192) = 0xD000000000000012;
    *(v0 + 200) = 0x8000000100015650;
    sub_100014328();
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v18;
    *(inited + 80) = v20;
    sub_1000064D4(v18, v20);
    sub_100011040(inited);
    swift_setDeallocating();
    sub_100007CF4(inited + 32, &unk_100021670, &qword_100015240);
    isa = sub_100014138().super.isa;

    *(v0 + 216) = 0;
    v24 = [v21 storeUserInfo:isa error:v0 + 216];

    v25 = *(v0 + 216);
    if (v24)
    {
      v26 = *(v0 + 288);
      loga = *(v0 + 296);
      v27 = *(v0 + 272);
      v28 = *(v0 + 256);
      v29 = *(*(v0 + 264) + 8);
      v30 = v25;
      v29(v27, v28);

      sub_100007D6C(v18, v20);
    }

    else
    {
      v31 = v25;
      sub_100013D18();

      swift_willThrow();
      swift_errorRetain();
      v32 = sub_1000140B8();
      v33 = sub_100014298();

      log = v32;
      v34 = os_log_type_enabled(v32, v33);
      v48 = *(v0 + 296);
      v35 = *(v0 + 264);
      v36 = *(v0 + 272);
      v37 = *(v0 + 256);
      if (v34)
      {
        v46 = *(v0 + 288);
        v38 = swift_slowAlloc();
        v47 = v37;
        v39 = swift_slowAlloc();
        v51 = v39;
        *v38 = 136315138;
        swift_getErrorValue();
        v40 = sub_100014408();
        v45 = v21;
        v42 = sub_100004C50(v40, v41, &v51);

        *(v38 + 4) = v42;
        _os_log_impl(&_mh_execute_header, log, v33, "Error storing user info: %s", v38, 0xCu);
        sub_100006320(v39);

        sub_100007D6C(v18, v20);

        (*(v35 + 8))(v36, v47);
      }

      else
      {

        sub_100007D6C(v18, v20);

        (*(v35 + 8))(v36, v37);
      }
    }
  }

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_10000AD68(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_10000AE2C;

  return sub_100009EA0(v6);
}

uint64_t sub_10000AE2C()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_10000B110@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = sub_100013FB8();
  __chkstk_darwin(v4 - 8);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100001F74(&qword_100021850, &unk_100015220);
  v8 = __chkstk_darwin(v7 - 8);
  v41 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v44 = v36 - v11;
  __chkstk_darwin(v10);
  v13 = v36 - v12;
  v14 = sub_100013E88();
  v47 = *(v14 - 8);
  v48 = v14;
  v15 = __chkstk_darwin(v14);
  v43 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = v36 - v17;
  v19 = sub_100013E78();
  v45 = *(v19 - 8);
  v46 = v19;
  v20 = __chkstk_darwin(v19);
  v22 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v36 - v23;
  sub_10000B5A0(a1, v36 - v23);
  sub_10000B7B4(a1, v18);
  v25 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
  swift_beginAccess();
  v49 = v2;
  sub_1000139C0(v2 + v25, v13, &qword_100021850, &unk_100015220);
  v26 = sub_100013F18();
  v27 = *(v26 - 8);
  v42 = *(v27 + 48);
  result = v42(v13, 1, v26);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_6;
  }

  v39 = v6;
  sub_100013EA8();
  v29 = *(v27 + 8);
  v29(v13, v26);
  v30 = *(v45 + 16);
  v36[1] = v22;
  v37 = v24;
  v30(v22, v24, v46);
  v31 = *(v47 + 16);
  v38 = v18;
  v31(v43, v18, v48);
  v32 = v44;
  sub_1000139C0(v49 + v25, v44, &qword_100021850, &unk_100015220);
  v33 = v42;
  result = v42(v32, 1, v26);
  if (result == 1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_100013F08();
  v29(v32, v26);
  v34 = v49 + v25;
  v35 = v41;
  sub_1000139C0(v34, v41, &qword_100021850, &unk_100015220);
  result = v33(v35, 1, v26);
  if (result != 1)
  {
    sub_100013EE8();
    v29(v35, v26);
    sub_100013E98();
    (*(v47 + 8))(v38, v48);
    return (*(v45 + 8))(v37, v46);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10000B5A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 identifier];
  v4 = sub_100014188();
  v6 = v5;

  v7 = v4 == 0x6C61726970734DLL && v6 == 0xE700000000000000;
  if (v7 || (sub_1000143D8() & 1) != 0)
  {

    v8 = &enum case for EmojiPosterLayoutStyle.spiral(_:);
  }

  else
  {
    v9 = v4 == 0x6469726753 && v6 == 0xE500000000000000;
    if (v9 || (sub_1000143D8() & 1) != 0 || (v4 == 0x646972674DLL ? (v10 = v6 == 0xE500000000000000) : (v10 = 0), v10 || (sub_1000143D8() & 1) != 0 || v4 == 0x646972674CLL && v6 == 0xE500000000000000 || (sub_1000143D8() & 1) != 0))
    {

      v8 = &enum case for EmojiPosterLayoutStyle.offsetGrid(_:);
    }

    else if (v4 == 0x616C756372696353 && v6 == 0xE900000000000072)
    {

      v8 = &enum case for EmojiPosterLayoutStyle.circular(_:);
    }

    else
    {
      v15 = sub_1000143D8();

      v8 = &enum case for EmojiPosterLayoutStyle.spiral(_:);
      if (v15)
      {
        v8 = &enum case for EmojiPosterLayoutStyle.circular(_:);
      }
    }
  }

  v11 = *v8;
  v12 = sub_100013E78();
  v13 = *(*(v12 - 8) + 104);

  return v13(a2, v11, v12);
}

uint64_t sub_10000B7B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 identifier];
  v4 = sub_100014188();
  v6 = v5;

  v7 = v4 == 0x6469726753 && v6 == 0xE500000000000000;
  if (v7 || (sub_1000143D8() & 1) != 0 || (v4 == 0x616C756372696353 ? (v8 = v6 == 0xE900000000000072) : (v8 = 0), v8 || (sub_1000143D8() & 1) != 0))
  {

    v9 = &enum case for EmojiPosterSizeVariant.small(_:);
  }

  else
  {
    v14 = v4 == 0x646972674DLL && v6 == 0xE500000000000000;
    if (v14 || (sub_1000143D8() & 1) != 0 || v4 == 0x6C61726970734DLL && v6 == 0xE700000000000000 || (sub_1000143D8() & 1) != 0)
    {

      v9 = &enum case for EmojiPosterSizeVariant.medium(_:);
    }

    else if (v4 == 0x646972674CLL && v6 == 0xE500000000000000)
    {

      v9 = &enum case for EmojiPosterSizeVariant.large(_:);
    }

    else
    {
      v15 = sub_1000143D8();

      v9 = &enum case for EmojiPosterSizeVariant.medium(_:);
      if (v15)
      {
        v9 = &enum case for EmojiPosterSizeVariant.large(_:);
      }
    }
  }

  v10 = *v9;
  v11 = sub_100013E88();
  v12 = *(*(v11 - 8) + 104);

  return v12(a2, v10, v11);
}

uint64_t sub_10000B9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0x4075E00000000000;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *&Strong[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC];
    if (v6)
    {
      v7 = v6;
      sub_100013DA8();
      v9 = v8;

      return v9;
    }

    else
    {
    }
  }

  return v3;
}

void sub_10000BA70(void *a1)
{
  v2 = v1;
  v4 = sub_100001F74(&qword_100021850, &unk_100015220);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v42 - v8;
  v10 = sub_1000140B8();
  v11 = sub_100014288();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Emoji picker presented", v12, 2u);
  }

  v13 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC;
  v14 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC);
  v15 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
  if (v14)
  {
    swift_beginAccess();
    sub_1000139C0(v2 + v15, v7, &qword_100021850, &unk_100015220);
    v16 = sub_100013F18();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v7, 1, v16) != 1)
    {
      v18 = v14;
      sub_100013F08();
      (*(v17 + 8))(v7, v16);
      sub_100013D78();

      goto LABEL_8;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  swift_beginAccess();
  sub_1000139C0(v2 + v15, v9, &qword_100021850, &unk_100015220);
  v19 = sub_100013F18();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v9, 1, v19) == 1)
  {
    goto LABEL_20;
  }

  sub_100013F08();
  (*(v20 + 8))(v9, v19);
  v21 = objc_allocWithZone(sub_100013DC8());
  v22 = sub_100013D98();
  sub_1000109B0(&qword_100021880, type metadata accessor for EmojiPosterExtensionEditorController, &unk_1000151E0);
  swift_unknownObjectRetain();
  sub_100013DB8();
  v18 = *(v2 + v13);
  *(v2 + v13) = v22;
LABEL_8:

  v23 = [objc_opt_self() currentDevice];
  v24 = [v23 userInterfaceIdiom];

  v25 = *(v2 + v13);
  if (v25)
  {
    v26 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_currentDeviceInterfaceOrientation);
    v27 = v25;
    if (v24 == 1 && (sub_100014058() & 1) == 0)
    {
      v38 = v27;
      [v38 setModalPresentationStyle:7];
      v39 = [v38 popoverPresentationController];

      v40 = sub_100014178();
      v41 = [a1 viewForMenuElementIdentifier:v40];

      [v39 setSourceView:v41];
      [a1 presentViewController:v38 animated:1 completion:0];
    }

    else
    {
      v28 = [v27 sheetPresentationController];
      if (v28)
      {
        v29 = v28;
        v30 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v31 = sub_100014178();
        sub_100006580(0, &qword_100021888, UISheetPresentationControllerDetent_ptr);
        v32 = swift_allocObject();
        *(v32 + 16) = v30;
        *(v32 + 24) = v26;

        v33 = sub_1000142B8();

        sub_100001F74(&unk_100021650, &qword_1000150B8);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_100015060;
        *(v34 + 32) = v33;
        v35 = v33;
        isa = sub_1000141F8().super.isa;

        [v29 setDetents:isa];

        v37 = sub_100014178();
        [v29 setLargestUndimmedDetentIdentifier:v37];

        [v29 setPrefersScrollingExpandsWhenScrolledToEdge:0];
        [v29 setPrefersGrabberVisible:0];
        if ((sub_100014058() & 1) == 0)
        {
          [v29 _setShouldAdjustDetentsToAvoidKeyboard:0];
        }
      }

      [a1 presentViewController:v27 animated:1 completion:0];
    }
  }
}

id sub_10000C0A8(uint64_t a1)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_100013D38();
  __chkstk_darwin(v3 - 8);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100014168();
  __chkstk_darwin(v5 - 8);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100013F38();
  v7 = *(v42 - 1);
  __chkstk_darwin(v42);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100013FB8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001F74(&qword_100021850, &unk_100015220);
  __chkstk_darwin(v14 - 8);
  v16 = &v37 - v15;
  v17 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
  swift_beginAccess();
  v38 = v2;
  sub_1000139C0(v2 + v17, v16, &qword_100021850, &unk_100015220);
  v18 = sub_100013F18();
  v19 = *(v18 - 8);
  result = (*(v19 + 48))(v16, 1, v18);
  if (result != 1)
  {
    sub_100013EA8();
    (*(v19 + 8))(v16, v18);
    sub_100013F68();
    (*(v11 + 8))(v13, v10);
    isa = sub_100013F28().super.isa;
    (*(v7 + 8))(v9, v42);
    v22 = [objc_allocWithZone(PRPosterColor) initWithColor:isa preferredStyle:1];

    v23 = [v22 color];
    if (!v23)
    {
      v23 = [objc_opt_self() blackColor];
    }

    v24 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{35.0, 35.0}];
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = xmmword_100015120;
    *(v25 + 40) = 0x403D000000000000;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_100010134;
    *(v26 + 24) = v25;
    aBlock[4] = sub_100010144;
    aBlock[5] = v26;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000C97C;
    aBlock[3] = &unk_10001CCF8;
    v27 = _Block_copy(aBlock);
    v28 = v23;

    v29 = [v24 imageWithActions:v27];
    _Block_release(v27);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      sub_100014158();
      v42 = v28;
      sub_100013D28();
      sub_100014198();
      sub_100006580(0, &qword_100021868, UIAction_ptr);
      v37 = v29;
      sub_100014178();
      v31 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v32 = swift_allocObject();
      v38 = v24;
      v33 = v32;
      swift_unknownObjectWeakInit();
      v34 = swift_allocObject();
      *(v34 + 16) = v31;
      *(v34 + 24) = v33;
      v35 = sub_1000142E8();
      sub_100014158();
      sub_100013D28();
      sub_100014198();
      v36 = sub_100014178();

      [v35 setAccessibilityLabel:v36];

      return v35;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10000C790(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = [a1 CGContext];
  v11 = [a2 CGColor];
  CGContextSetFillColorWithColor(v10, v11);

  v12 = [a1 CGContext];
  CGContextSetLineWidth(v12, a3);

  v13 = [a1 CGContext];
  v14 = [objc_opt_self() systemBackgroundColor];
  v15 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1];
  v16 = [v14 resolvedColorWithTraitCollection:v15];

  v17 = [v16 CGColor];
  CGContextSetStrokeColorWithColor(v13, v17);

  v18 = [a1 CGContext];
  v21.origin.x = a3;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  CGContextAddEllipseInRect(v18, v21);

  v19 = [a1 CGContext];
  CGContextDrawPath(v19, kCGPathFillStroke);
}

void sub_10000C97C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_10000C9C8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_100013F18();
  v48 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100013F38();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100013FB8();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100001F74(&qword_100021850, &unk_100015220);
  __chkstk_darwin(v14 - 8);
  v16 = &v43 - v15;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v45 = swift_unknownObjectWeakLoadStrong();
    if (v45)
    {
      v44 = a1;
      v19 = sub_1000140B8();
      v20 = sub_100014288();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v43 = v4;
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Background color picker presented", v21, 2u);
        v4 = v43;
      }

      v22 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
      swift_beginAccess();
      sub_1000139C0(v18 + v22, v16, &qword_100021850, &unk_100015220);
      v23 = v48;
      v24 = (*(v48 + 48))(v16, 1, v4);
      v43 = v18;
      if (v24 == 1)
      {
        __break(1u);
        return;
      }

      sub_100013EA8();
      v25 = *(v23 + 8);
      v25(v16, v4);
      sub_100013F68();
      (*(v11 + 8))(v13, v10);
      isa = sub_100013F28().super.isa;
      (*(v46 + 8))(v9, v47);
      v27 = [objc_allocWithZone(PRPosterColor) initWithColor:isa preferredStyle:1];

      sub_100006580(0, &unk_100021858, UIColor_ptr);
      v28 = v45;
      v29 = [v45 currentLook];
      v30 = v43;
      sub_10000B110(v29, v6);

      sub_100013F08();
      v25(v6, v4);
      v31 = sub_1000142C8();

      v32 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
      [v32 setSelectedColor:v27];
      sub_100013D68();
      v33 = sub_100013D48();
      [v32 setColorPalette:v33];

      v34 = [v44 identifier];
      v35 = [v28 viewForMenuElementIdentifier:v34];

      [v32 setColorPickerSourceItem:v35];
      if (v31)
      {
        v36 = objc_allocWithZone(PRPosterColor);
        v37 = v31;
        v38 = [v36 initWithColor:v37];
        [v32 setSuggestedColor:v38];
      }

      v39 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v40 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v41 = swift_allocObject();
      *(v41 + 16) = v39;
      *(v41 + 24) = v40;
      aBlock[4] = sub_1000101B8;
      aBlock[5] = v41;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10000D308;
      aBlock[3] = &unk_10001CD70;
      v42 = _Block_copy(aBlock);

      [v28 presentColorPickerWithConfiguration:v32 changeHandler:v42];
      _Block_release(v42);
    }

    else
    {
      v32 = v18;
    }
  }
}

uint64_t sub_10000D030(void *a1, uint64_t a2, uint64_t a3)
{
  v22[3] = sub_100006580(0, &unk_100021858, UIColor_ptr);
  v22[0] = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      sub_100007C98(v22, v21);
      sub_100006580(0, &qword_100021870, PRPosterColor_ptr);
      v8 = a1;
      if (swift_dynamicCast())
      {
        v9 = *&v20;
        v10 = sub_1000140B8();
        v11 = sub_100014288();

        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          v13 = swift_slowAlloc();
          *v12 = 138412290;
          *(v12 + 4) = v9;
          *v13 = v9;
          v14 = v9;
          _os_log_impl(&_mh_execute_header, v10, v11, "Background color updated:%@", v12, 0xCu);
          sub_100007CF4(v13, &qword_100021878, &unk_100015230);
        }

        sub_10000E9C0(v9);
        [v7 updateActions];
        v15 = [v9 color];

        if (v15)
        {
          v20 = 0.0;
          v21[0] = 0;
          v19 = 0.0;
          [v15 getHue:v21 saturation:&v20 brightness:&v19 alpha:0];
          *&v5[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_luminance] = v19 + v19 * v20 * -0.5;
          [*&v5[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor] updateLuminanceValuesForLooks];
        }
      }

      else
      {
      }
    }

    else
    {
      v17 = a1;
    }
  }

  else
  {
    v16 = a1;
  }

  return sub_100006320(v22);
}

void sub_10000D308(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_10000D370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      sub_10000BA70(v4);

      v4 = v6;
    }
  }
}

uint64_t sub_10000D3F8(uint64_t a1)
{
  v1 = sub_100013D38();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100014168();
  __chkstk_darwin(v2 - 8);
  sub_100001F74(&unk_100021650, &qword_1000150B8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100015060;
  sub_100006580(0, &qword_100021868, UIAction_ptr);
  sub_100014158();
  sub_100013D28();
  sub_100014198();
  v4 = sub_100014178();
  v5 = [objc_opt_self() _systemImageNamed:v4];

  sub_100014178();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v9 = sub_1000142E8();
  sub_100014158();
  sub_100013D28();
  sub_100014198();
  v10 = sub_100014178();

  [v9 setAccessibilityLabel:v10];

  *(v3 + 32) = v9;
  return v3;
}

uint64_t sub_10000D958(uint64_t a1)
{
  v146 = a1;
  v2 = sub_100013E88();
  v3 = __chkstk_darwin(v2 - 8);
  v119 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v138 = &v116 - v5;
  v6 = sub_100013E78();
  v7 = __chkstk_darwin(v6 - 8);
  v127 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v137 = &v116 - v9;
  v10 = sub_100001F74(&qword_100021848, &qword_100015218);
  __chkstk_darwin(v10 - 8);
  v125 = &v116 - v11;
  v12 = sub_100013F38();
  __chkstk_darwin(v12 - 8);
  v124 = &v116 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100013F58();
  __chkstk_darwin(v14 - 8);
  v123 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100013F18();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v136 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v153 = &v116 - v20;
  v21 = sub_100013FB8();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v128 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v140 = &v116 - v26;
  v27 = __chkstk_darwin(v25);
  v159 = &v116 - v28;
  v29 = __chkstk_darwin(v27);
  v135 = &v116 - v30;
  v31 = __chkstk_darwin(v29);
  v33 = &v116 - v32;
  __chkstk_darwin(v31);
  v35 = &v116 - v34;
  v36 = sub_100001F74(&qword_100021850, &unk_100015220);
  v37 = __chkstk_darwin(v36 - 8);
  v118 = &v116 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v121 = &v116 - v40;
  v41 = __chkstk_darwin(v39);
  v120 = &v116 - v42;
  v43 = __chkstk_darwin(v41);
  v117 = &v116 - v44;
  v45 = __chkstk_darwin(v43);
  v134 = &v116 - v46;
  v47 = __chkstk_darwin(v45);
  v122 = &v116 - v48;
  v49 = __chkstk_darwin(v47);
  v157 = &v116 - v50;
  __chkstk_darwin(v49);
  v52 = &v116 - v51;
  v53 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
  swift_beginAccess();
  v129 = v53;
  v149 = v1;
  sub_1000139C0(v1 + v53, v52, &qword_100021850, &unk_100015220);
  v54 = *(v17 + 48);
  v148 = v17 + 48;
  if (v54(v52, 1, v16) == 1)
  {
    goto LABEL_36;
  }

  sub_100013EA8();
  v55 = *(v17 + 8);
  v145 = v16;
  v144 = v17 + 8;
  v143 = v55;
  v55(v52, v16);
  v56 = sub_100013F98();
  v57 = *(v22 + 8);
  v158 = v35;
  v154 = v57;
  v155 = v22 + 8;
  v57(v35, v21);
  v160 = v21;
  v126 = v33;
  if (v56)
  {
    sub_100006580(0, &unk_100021858, UIColor_ptr);
    v147 = sub_1000142C8();
  }

  else
  {
    v147 = 0;
  }

  v58 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_viewControllers;
  v59 = v149;
  swift_beginAccess();
  v60 = *(v59 + v58);
  v61 = v60 + 64;
  v62 = 1 << *(v60 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v60 + 64);
  v133 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_logger;
  v65 = (v62 + 63) >> 6;
  v132 = (v17 + 32);
  v142 = (v22 + 32);
  v150 = (v22 + 16);
  v131 = (v17 + 16);
  v141 = (v17 + 56);
  v156 = v60;

  v66 = 0;
  v67 = v145;
  v68 = v147;
  v151 = v54;
  v152 = v65;
  v130 = v61;
  v69 = v157;
  if (v64)
  {
    goto LABEL_10;
  }

  while (1)
  {
LABEL_11:
    v70 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v70 >= v65)
    {
      break;
    }

    v64 = *(v61 + 8 * v70);
    ++v66;
    if (v64)
    {
      while (1)
      {
        v71 = __clz(__rbit64(v64));
        v64 &= v64 - 1;
        v72 = *(v156 + 56) + ((v70 << 10) | (16 * v71));
        v73 = *(v72 + 8);
        v74 = *v72;
        v161 = v73;
        sub_100013DE8();
        v162 = v74;

        if (v54(v69, 1, v67) == 1)
        {
          sub_100007CF4(v69, &qword_100021850, &unk_100015220);
          v75 = sub_1000140B8();
          v76 = sub_100014298();
          if (os_log_type_enabled(v75, v76))
          {
            v77 = swift_slowAlloc();
            *v77 = 0;
            _os_log_impl(&_mh_execute_header, v75, v76, "Unable to fetch configuration for an editing look view controller", v77, 2u);
            v54 = v151;
          }

          v66 = v70;
          v65 = v152;
          v69 = v157;
          if (!v64)
          {
            goto LABEL_11;
          }
        }

        else
        {
          (*v132)(v153, v69, v67);
          v78 = v159;
          sub_100013EA8();
          v79 = v142;
          if (v68)
          {
            v80 = v68;
            sub_100013F88();
            v81 = v80;
            sub_100013F48();
            sub_100013FA8();
            v82 = v158;
            v78 = v159;
            sub_100013F78();

            v83 = v160;
            v154(v78, v160);
            v84 = *v79;
            (*v79)(v78, v82, v83);
          }

          else
          {
            v84 = *v142;
            v83 = v160;
          }

          v85 = v135;
          v84(v135, v78, v83);
          v139 = *v150;
          v139(v158, v85, v83);
          v86 = v85;
          v87 = v153;
          sub_100013EC8();
          sub_100013ED8();

          sub_100013EE8();
          v88 = v136;
          sub_100013E98();
          v89 = v134;
          v90 = v145;
          (*v131)(v134, v88, v145);
          (*v141)(v89, 0, 1, v90);
          v91 = v162;
          sub_100013DF8();

          v92 = v86;
          if (sub_100013F98())
          {
            v139(v158, v86, v160);
            v93 = v161;
            sub_100014038();
          }

          else
          {
          }

          v94 = v143;
          v143(v88, v90);
          v154(v92, v160);
          v94(v87, v90);
          v66 = v70;
          v67 = v90;
          v68 = v147;
          v54 = v151;
          v65 = v152;
          v61 = v130;
          v69 = v157;
          if (!v64)
          {
            goto LABEL_11;
          }
        }

LABEL_10:
        v70 = v66;
      }
    }
  }

  v95 = v149;
  v96 = v122;
  sub_1000139C0(v149 + v129, v122, &qword_100021850, &unk_100015220);
  if (v54(v96, 1, v67) == 1)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v97 = v140;
  sub_100013EA8();
  v98 = v160;
  v99 = v158;
  if (v68)
  {
    v100 = v68;
    sub_100013F88();
    v101 = v100;
    sub_100013F48();
    sub_100013FA8();
    v97 = v140;
    sub_100013F78();

    v154(v97, v98);
    v102 = *v142;
    (*v142)(v97, v99, v98);
  }

  else
  {
    v102 = *v142;
  }

  v103 = v121;
  v104 = v126;
  v102(v126, v97, v98);
  v105 = v98;
  v106 = v143;
  v143(v96, v67);
  (*v150)(v128, v104, v105);
  v107 = v129;
  v108 = v120;
  sub_1000139C0(v95 + v129, v120, &qword_100021850, &unk_100015220);
  v109 = v151;
  if (v151(v108, 1, v67) == 1)
  {
    goto LABEL_38;
  }

  sub_100013EC8();
  v106(v108, v67);
  sub_1000139C0(v95 + v107, v103, &qword_100021850, &unk_100015220);
  if (v109(v103, 1, v67) == 1)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  sub_100013ED8();
  v106(v103, v67);
  v110 = v118;
  sub_1000139C0(v95 + v107, v118, &qword_100021850, &unk_100015220);
  if (v109(v110, 1, v67) == 1)
  {
    goto LABEL_40;
  }

  v111 = v107;
  sub_100013EE8();
  v106(v110, v67);

  v112 = v117;
  sub_100013E98();
  (*v141)(v112, 0, 1, v67);
  swift_beginAccess();
  sub_10001004C(v112, v95 + v111);
  swift_endAccess();
  v113 = v147;
  if (v147)
  {
    v164 = 0.0;
    v165 = 0;
    v163 = 0.0;
    [v147 getHue:&v165 saturation:&v164 brightness:&v163 alpha:0];
    *(v95 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_luminance) = v163 + v163 * v164 * -0.5;
    v114 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor;
    [*(v95 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor) updateLuminanceValuesForLooks];
    [*(v95 + v114) updateActions];
  }

  return (v154)(v126, v160);
}

void sub_10000E9C0(void *a1)
{
  v142 = a1;
  v2 = sub_100013E88();
  v3 = __chkstk_darwin(v2 - 8);
  v112 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v125 = &v103 - v5;
  v6 = sub_100013E78();
  v7 = __chkstk_darwin(v6 - 8);
  v113 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v124 = &v103 - v9;
  v10 = sub_100001F74(&qword_100021848, &qword_100015218);
  __chkstk_darwin(v10 - 8);
  v131 = &v103 - v11;
  v12 = sub_100013F38();
  v13 = __chkstk_darwin(v12 - 8);
  v110 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v122 = &v103 - v15;
  v16 = sub_100013F58();
  v17 = __chkstk_darwin(v16 - 8);
  v116 = &v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v137 = &v103 - v19;
  v143 = sub_100013FB8();
  v20 = *(v143 - 8);
  v21 = __chkstk_darwin(v143);
  v115 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v109 = &v103 - v24;
  v25 = __chkstk_darwin(v23);
  v130 = &v103 - v26;
  v27 = __chkstk_darwin(v25);
  v135 = &v103 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v103 - v30;
  __chkstk_darwin(v29);
  v114 = &v103 - v32;
  v33 = sub_100001F74(&qword_100021850, &unk_100015220);
  v34 = __chkstk_darwin(v33 - 8);
  v104 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v106 = &v103 - v37;
  v38 = __chkstk_darwin(v36);
  v105 = &v103 - v39;
  v40 = __chkstk_darwin(v38);
  v107 = &v103 - v41;
  v42 = __chkstk_darwin(v40);
  v103 = &v103 - v43;
  v44 = __chkstk_darwin(v42);
  v108 = &v103 - v45;
  v46 = __chkstk_darwin(v44);
  v121 = &v103 - v47;
  v48 = __chkstk_darwin(v46);
  v111 = &v103 - v49;
  __chkstk_darwin(v48);
  v141 = &v103 - v50;
  v51 = sub_100013F18();
  v52 = *(v51 - 8);
  v53 = __chkstk_darwin(v51);
  v120 = &v103 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v56 = &v103 - v55;
  v57 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_viewControllers;
  swift_beginAccess();
  v133 = v1;
  v58 = *(v1 + v57);
  v59 = v58 + 64;
  v60 = 1 << *(v58 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v58 + 64);
  v127 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_logger;
  v140 = (v60 + 63) >> 6;
  v63 = (v52 + 48);
  v126 = (v52 + 32);
  v129 = (v20 + 16);
  v118 = (v52 + 16);
  v128 = (v52 + 56);
  v134 = (v52 + 8);
  v138 = (v20 + 8);
  v139 = v58;

  v64 = 0;
  v132 = v51;
  v136 = v59;
  v123 = (v52 + 48);
  v119 = v56;
  v117 = v31;
  for (i = v140; v62; i = v140)
  {
    v66 = v64;
    v67 = v141;
LABEL_9:
    v68 = __clz(__rbit64(v62));
    v62 &= v62 - 1;
    v69 = *(v139 + 56) + ((v66 << 10) | (16 * v68));
    v70 = *(v69 + 8);
    v71 = *v69;
    v144 = v70;
    sub_100013DE8();

    if ((*v63)(v67, 1, v51) == 1)
    {
      sub_100007CF4(v67, &qword_100021850, &unk_100015220);
      v72 = sub_1000140B8();
      v73 = sub_100014298();
      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        *v74 = 0;
        _os_log_impl(&_mh_execute_header, v72, v73, "Unable to fetch configuration for an editing look view controller", v74, 2u);
      }

      v64 = v66;
      v51 = v132;
    }

    else
    {
      (*v126)(v56, v67, v51);
      sub_100013EA8();
      sub_100013F88();
      if (![v142 color])
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v75 = v51;
      sub_100013F48();
      sub_100013FA8();
      [v142 isSuggested];
      v76 = v135;
      sub_100013F78();
      (*v129)(v130, v76, v143);
      sub_100013EC8();
      sub_100013ED8();
      sub_100013F08();
      sub_100013EE8();
      v77 = v120;
      sub_100013E98();
      v78 = v121;
      (*v118)(v121, v77, v51);
      (*v128)(v78, 0, 1, v51);
      v79 = v71;
      sub_100013DF8();

      v80 = v144;
      sub_100013EA8();
      sub_100014038();

      v81 = *v134;
      v82 = v77;
      v56 = v119;
      (*v134)(v82, v51);
      v83 = *v138;
      v84 = v143;
      (*v138)(v135, v143);
      v83(v117, v84);
      v81(v56, v75);
      v64 = v66;
      v51 = v75;
      v63 = v123;
    }

    v59 = v136;
  }

  v67 = v141;
  while (1)
  {
    v66 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v66 >= i)
    {
      break;
    }

    v62 = *(v59 + 8 * v66);
    ++v64;
    if (v62)
    {
      goto LABEL_9;
    }
  }

  v85 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
  v86 = v133;
  swift_beginAccess();
  v87 = v111;
  sub_1000139C0(v86 + v85, v111, &qword_100021850, &unk_100015220);
  v88 = *v63;
  if ((*v63)(v87, 1, v51) == 1)
  {
    goto LABEL_27;
  }

  v89 = v109;
  sub_100013EA8();
  v90 = *v134;
  (*v134)(v87, v51);
  sub_100013F88();
  v144 = *v138;
  (v144)(v89, v143);
  if (![v142 color])
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  sub_100013F48();
  v91 = v108;
  sub_1000139C0(v86 + v85, v108, &qword_100021850, &unk_100015220);
  if (v88(v91, 1, v51) == 1)
  {
    goto LABEL_29;
  }

  v92 = v130;
  sub_100013EA8();
  v90(v91, v51);
  sub_100013FA8();
  v93 = v92;
  v94 = v143;
  (v144)(v93, v143);
  [v142 isSuggested];
  v95 = v114;
  v96 = v132;
  sub_100013F78();
  (*v129)(v115, v95, v94);
  v97 = v107;
  sub_1000139C0(v86 + v85, v107, &qword_100021850, &unk_100015220);
  if (v88(v97, 1, v96) == 1)
  {
    goto LABEL_30;
  }

  sub_100013EC8();
  v90(v97, v96);
  v98 = v105;
  sub_1000139C0(v86 + v85, v105, &qword_100021850, &unk_100015220);
  v99 = v88(v98, 1, v96);
  v100 = v106;
  if (v99 == 1)
  {
    goto LABEL_31;
  }

  sub_100013ED8();
  v90(v98, v96);
  sub_1000139C0(v86 + v85, v100, &qword_100021850, &unk_100015220);
  if (v88(v100, 1, v96) != 1)
  {
    sub_100013F08();
    v90(v100, v96);
    v101 = v104;
    sub_1000139C0(v86 + v85, v104, &qword_100021850, &unk_100015220);
    if (v88(v101, 1, v96) == 1)
    {
      goto LABEL_33;
    }

    sub_100013EE8();
    v90(v101, v96);
    v102 = v103;
    sub_100013E98();
    (v144)(v114, v143);
    (*v128)(v102, 0, 1, v96);
    swift_beginAccess();
    sub_10001004C(v102, v86 + v85);
    swift_endAccess();
    return;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

id sub_10000F870(double a1)
{
  v2 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC;
  v3 = *(v1 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC);
  if (!v3)
  {
    v7 = 0;
    v9 = 0;
    return sub_10000FFA4(v9, v7);
  }

  v5 = [v3 sheetPresentationController];
  if (!v5)
  {
    v9 = 0;
    v7 = 0;
    v13 = *(v1 + v2);
    if (v13)
    {
      goto LABEL_8;
    }

    return sub_10000FFA4(v9, v7);
  }

  v6 = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  v9 = sub_10000FFEC;
  *(v8 + 16) = sub_10000FFEC;
  *(v8 + 24) = v7;
  v29[4] = sub_10001000C;
  v29[5] = v8;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 1107296256;
  v29[2] = sub_10000FB44;
  v29[3] = &unk_10001CC08;
  v10 = _Block_copy(v29);
  v11 = v6;

  [v11 animateChanges:v10];

  _Block_release(v10);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v1 + v2);
  if (!v13)
  {
    return sub_10000FFA4(v9, v7);
  }

LABEL_8:
  v14 = [v13 popoverPresentationController];
  if (!v14)
  {
    return sub_10000FFA4(v9, v7);
  }

  v15 = v14;
  v16 = [v14 presentedViewController];
  v17 = [objc_opt_self() currentDevice];
  v18 = [v17 userInterfaceIdiom];

  if (v18 == 1 && (sub_100014058() & 1) == 0)
  {
    Width = 400.0;
    goto LABEL_14;
  }

  result = [v16 view];
  if (result)
  {
    v19 = result;
    [result frame];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v30.origin.x = v21;
    v30.origin.y = v23;
    v30.size.width = v25;
    v30.size.height = v27;
    Width = CGRectGetWidth(v30);
LABEL_14:
    [v16 setPreferredContentSize:{Width, a1}];

    return sub_10000FFA4(v9, v7);
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_10000FB6C()
{
  sub_1000140C8();
  v1 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
  v2 = sub_100013F18();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_viewControllers] = &_swiftEmptyDictionarySingleton;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_emojiRenderer] = 0;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_currentDeviceInterfaceOrientation] = 1;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor] = 0;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC] = 0;
  *&v0[OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_luminance] = 0x3FE0000000000000;
  v3 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_initialTitleColor;
  *&v0[v3] = [objc_opt_self() vibrantMonochromeColor];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for EmojiPosterExtensionEditorController(0);
  return objc_msgSendSuper2(&v5, "init");
}

id sub_10000FCF8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10000FE3C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000FE74(uint64_t a1, uint64_t a2)
{
  sub_1000140D8();
  if (v2 <= 0x3F)
  {
    sub_1000091BC(319);
    if (v3 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

id sub_10000FF7C()
{
  result = *(v0 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor);
  if (result)
  {
    return [result dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

uint64_t sub_10000FFA4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000FFB4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010034(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001004C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F74(&qword_100021850, &unk_100015220);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000100BC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000100FC()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100010178()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000101C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_100013C5C;

  return v6();
}

uint64_t sub_1000102A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_100010390;

  return v7();
}

uint64_t sub_100010390()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100010484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100001F74(&unk_1000218D0, &qword_100015260);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_1000139C0(a3, v23 - v10, &unk_1000218D0, &qword_100015260);
  v12 = sub_100014278();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_100007CF4(v11, &unk_1000218D0, &qword_100015260);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_100014268();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_100014238();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1000141A8() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_100007CF4(a3, &unk_1000218D0, &qword_100015260);

    return v21;
  }

LABEL_8:
  sub_100007CF4(a3, &unk_1000218D0, &qword_100015260);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_100010780(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100010878;

  return v6(a1);
}

uint64_t sub_100010878()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100010970()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000109B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000109F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100001F74(&qword_1000218C0, &qword_100015258);
  v35 = v4;
  result = sub_1000143A8();
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
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v36 = *(*(v5 + 56) + v21);
      if ((v35 & 1) == 0)
      {

        v25 = v36;
        v26 = *(&v36 + 1);
      }

      sub_100014418();
      sub_1000141B8();
      result = sub_100014428();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v36;
      ++*(v7 + 16);
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
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_100010CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_100005208(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000109F8(v18, a5 & 1);
      v13 = sub_100005208(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_1000143F8();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      sub_100010E5C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v13;
    v25 = *(v24 + 8);
    v30 = *v24;
    *v24 = a1;
    *(v24 + 8) = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

id sub_100010E5C()
{
  v1 = v0;
  sub_100001F74(&qword_1000218C0, &qword_100015258);
  v2 = *v0;
  v3 = sub_100014398();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v23 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v23;

        v22 = v23;
        result = *(&v23 + 1);
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

unint64_t sub_100010FE8(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (!v1)
  {
    return 1;
  }

  result = [v1 deviceOrientation];
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

unint64_t sub_100011040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100001F74(&qword_100021898, &qword_100015248);
    v3 = sub_1000143B8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000139C0(v4, v13, &unk_100021670, &qword_100015240);
      result = sub_100005280(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10001117C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_10001117C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_10001118C(void *a1)
{
  v2 = v1;
  v4 = sub_100001F74(&qword_100021850, &unk_100015220);
  __chkstk_darwin(v4 - 8);
  v6 = &v28 - v5;
  sub_1000082AC(a1, &v28 - v5);
  v7 = sub_100013F18();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_configuration;
  swift_beginAccess();
  sub_100013BD0(v6, v2 + v8);
  swift_endAccess();
  sub_100007DC0();
  sub_100007CF4(v6, &qword_100021850, &unk_100015220);
  swift_getObjectType();
  [a1 backlightProgress];
  v10 = v9;
  v11 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_wakeProgress;
  if (v9 != *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_wakeProgress))
  {
    v12 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController);
    if (!v12)
    {
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v13 = v12;
    sub_100013DD8();

    v14 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController);
    if (!v14)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v15 = v14;
    sub_100014018();

    *(v2 + v11) = v10;
  }

  [a1 unlockProgress];
  v16 = OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_unlockProgress;
  v17 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_unlockProgress);
  if (v18 != v17)
  {
    if (v17 == 1.0)
    {
      [a1 unlockProgress];
    }

    [a1 unlockProgress];
    v20 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController);
    if (!v20)
    {
      goto LABEL_17;
    }

    v21 = v19;
    v22 = v20;
    sub_100013E18();

    v23 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_backgroundViewController);
    if (!v23)
    {
LABEL_19:
      __break(1u);
      return;
    }

    v24 = v23;
    sub_100014028();

    *(v2 + v16) = v21;
  }

  v25 = sub_100010FE8(a1);
  if (v25 == *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_currentDeviceInterfaceOrientation))
  {
    return;
  }

  *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_currentDeviceInterfaceOrientation) = v25;
  v26 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension39EmojiPosterExtensionRenderingController_emoijiLayersViewController);
  if (!v26)
  {
    __break(1u);
    goto LABEL_16;
  }

  v27 = v26;
  sub_100013E28();
}

uint64_t sub_100011438()
{
  v1 = sub_100013E88();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100013E78();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(PRTimeFontConfiguration) initWithTimeFontIdentifier:PRTimeFontIdentifierRounded];
  sub_100001F74(&unk_100021650, &qword_1000150B8);
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_100015130;
  v10 = *(v6 + 104);
  LODWORD(v86) = enum case for EmojiPosterLayoutStyle.offsetGrid(_:);
  v92 = v10;
  v93 = v6 + 104;
  v10(v8);
  v11 = *(v2 + 104);
  v85 = enum case for EmojiPosterSizeVariant.small(_:);
  v90 = v11;
  v91 = v2 + 104;
  v11(v4);
  sub_100013EF8();
  v12 = *(v2 + 8);
  v96 = v2 + 8;
  v97 = v1;
  v89 = v12;
  v12(v4, v1);
  v13 = *(v6 + 8);
  v94 = v6 + 8;
  v95 = v5;
  v88 = v13;
  v13(v8, v5);
  v14 = *(v0 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_initialTitleColor);
  v87 = sub_100006580(0, &qword_100021870, PRPosterColor_ptr);
  v100 = v87;
  v99[0] = v14;
  v15 = v9;
  v16 = v14;
  v17 = v15;
  v18 = sub_100014178();
  v19 = sub_100014178();

  v20 = v100;
  if (v100)
  {
    v21 = sub_1000136B0(v99, v100);
    v84 = v83;
    v22 = v16;
    v23 = *(v20 - 8);
    __chkstk_darwin(v21);
    v25 = v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v25);
    v26 = sub_1000143C8();
    (*(v23 + 8))(v25, v20);
    v16 = v22;
    sub_100006320(v99);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_allocWithZone(PREditingLook) initWithIdentifier:v18 displayName:v19 initialTimeFontConfiguration:v17 initialTitleColor:v26];

  swift_unknownObjectRelease();
  *(v98 + 32) = v27;
  v28 = v95;
  v92(v8, v86, v95);
  LODWORD(v84) = enum case for EmojiPosterSizeVariant.medium(_:);
  v29 = v97;
  v90(v4);
  sub_100013EF8();
  v89(v4, v29);
  v88(v8, v28);
  v100 = v87;
  v99[0] = v16;
  v30 = v16;
  v31 = v17;
  v32 = sub_100014178();
  v33 = sub_100014178();

  v34 = v100;
  if (v100)
  {
    v35 = sub_1000136B0(v99, v100);
    v83[1] = v83;
    v36 = v30;
    v37 = *(v34 - 8);
    __chkstk_darwin(v35);
    v39 = v83 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v37 + 16))(v39);
    v40 = sub_1000143C8();
    (*(v37 + 8))(v39, v34);
    v30 = v36;
    sub_100006320(v99);
  }

  else
  {
    v40 = 0;
  }

  v41 = [objc_allocWithZone(PREditingLook) initWithIdentifier:v32 displayName:v33 initialTimeFontConfiguration:v31 initialTitleColor:v40];

  swift_unknownObjectRelease();
  *(v98 + 40) = v41;
  v42 = v95;
  v92(v8, v86, v95);
  v43 = v97;
  (v90)(v4, enum case for EmojiPosterSizeVariant.large(_:), v97);
  sub_100013EF8();
  v89(v4, v43);
  v88(v8, v42);
  v100 = v87;
  v99[0] = v30;
  v44 = v30;
  v45 = v31;
  v46 = sub_100014178();
  v47 = sub_100014178();

  v48 = v100;
  if (v100)
  {
    v49 = sub_1000136B0(v99, v100);
    v86 = v83;
    v50 = v44;
    v51 = *(v48 - 8);
    __chkstk_darwin(v49);
    v53 = v83 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v51 + 16))(v53);
    v54 = sub_1000143C8();
    (*(v51 + 8))(v53, v48);
    v44 = v50;
    sub_100006320(v99);
  }

  else
  {
    v54 = 0;
  }

  v55 = [objc_allocWithZone(PREditingLook) initWithIdentifier:v46 displayName:v47 initialTimeFontConfiguration:v45 initialTitleColor:v54];

  swift_unknownObjectRelease();
  *(v98 + 48) = v55;
  v56 = v95;
  v92(v8, enum case for EmojiPosterLayoutStyle.circular(_:), v95);
  v57 = v97;
  (v90)(v4, v85, v97);
  sub_100013EF8();
  v89(v4, v57);
  v88(v8, v56);
  v100 = v87;
  v99[0] = v44;
  v58 = v44;
  v59 = v45;
  v60 = sub_100014178();
  v61 = sub_100014178();

  v62 = v100;
  if (v100)
  {
    v63 = sub_1000136B0(v99, v100);
    v86 = v83;
    v64 = v58;
    v65 = *(v62 - 8);
    __chkstk_darwin(v63);
    v67 = v83 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v65 + 16))(v67);
    v68 = sub_1000143C8();
    (*(v65 + 8))(v67, v62);
    v58 = v64;
    sub_100006320(v99);
  }

  else
  {
    v68 = 0;
  }

  v69 = [objc_allocWithZone(PREditingLook) initWithIdentifier:v60 displayName:v61 initialTimeFontConfiguration:v59 initialTitleColor:v68];

  swift_unknownObjectRelease();
  *(v98 + 56) = v69;
  v70 = v95;
  v92(v8, enum case for EmojiPosterLayoutStyle.spiral(_:), v95);
  v71 = v97;
  (v90)(v4, v84, v97);
  sub_100013EF8();
  v89(v4, v71);
  v88(v8, v70);
  v100 = v87;
  v99[0] = v58;
  v72 = sub_100014178();
  v73 = sub_100014178();

  v74 = v100;
  if (v100)
  {
    v75 = sub_1000136B0(v99, v100);
    v76 = *(v74 - 8);
    __chkstk_darwin(v75);
    v78 = v83 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v76 + 16))(v78);
    v79 = sub_1000143C8();
    (*(v76 + 8))(v78, v74);
    sub_100006320(v99);
  }

  else
  {
    v79 = 0;
  }

  v80 = [objc_allocWithZone(PREditingLook) initWithIdentifier:v72 displayName:v73 initialTimeFontConfiguration:v59 initialTitleColor:v79];

  swift_unknownObjectRelease();
  v81 = v98;
  *(v98 + 64) = v80;

  return v81;
}

uint64_t sub_100012090()
{
  v1 = sub_100013E78();
  v54 = *(v1 - 8);
  v55 = v1;
  __chkstk_darwin(v1);
  v53 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100013E88();
  v58 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100001F74(&qword_100021850, &unk_100015220);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v52 - v10;
  v12 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
  swift_beginAccess();
  v56 = v0;
  sub_1000139C0(v0 + v12, v11, &qword_100021850, &unk_100015220);
  v13 = sub_100013F18();
  v14 = *(v13 - 8);
  v57 = *(v14 + 48);
  result = (v57)(v11, 1, v13);
  if (result == 1)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  sub_100013ED8();
  v16 = *(v14 + 8);
  v16(v11, v13);
  v17 = v58;
  v18 = (*(v58 + 88))(v5, v3);
  if (v18 == enum case for EmojiPosterSizeVariant.small(_:))
  {
    goto LABEL_3;
  }

  if (v18 == enum case for EmojiPosterSizeVariant.medium(_:))
  {
    v19 = 77;
  }

  else
  {
    if (v18 != enum case for EmojiPosterSizeVariant.large(_:))
    {
      (*(v17 + 8))(v5, v3);
LABEL_3:
      v19 = 83;
      goto LABEL_8;
    }

    v19 = 76;
  }

LABEL_8:
  sub_1000139C0(v56 + v12, v9, &qword_100021850, &unk_100015220);
  result = (v57)(v9, 1, v13);
  if (result == 1)
  {
LABEL_48:
    __break(1u);
    return result;
  }

  v20 = v53;
  sub_100013EC8();
  v16(v9, v13);
  v22 = v54;
  v21 = v55;
  v23 = (*(v54 + 88))(v20, v55);
  if (v23 == enum case for EmojiPosterLayoutStyle.offsetGrid(_:))
  {
    v24 = 0xE400000000000000;
    v25._countAndFlagsBits = 1684632167;
  }

  else if (v23 == enum case for EmojiPosterLayoutStyle.circular(_:))
  {
    v24 = 0xE800000000000000;
    v25._countAndFlagsBits = 0x72616C7563726963;
  }

  else
  {
    v26 = v23;
    v25._countAndFlagsBits = 0x6C6172697073;
    if (v26 != enum case for EmojiPosterLayoutStyle.spiral(_:))
    {
      (*(v22 + 8))(v20, v21);
      v25._countAndFlagsBits = 0x6C6172697073;
    }

    v24 = 0xE600000000000000;
  }

  v59 = v19;
  v60 = 0xE100000000000000;
  v25._object = v24;
  sub_1000141C8(v25);

  v28 = v59;
  v27 = v60;
  v58 = sub_100011438();
  if (v58 >> 62)
  {
LABEL_43:
    v29 = sub_100014388();
    if (v29)
    {
LABEL_18:
      v30 = 0;
      v31 = v58 & 0xC000000000000001;
      v57 = v58 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v31)
        {
          v32 = sub_100014368();
        }

        else
        {
          if (v30 >= *(v57 + 16))
          {
            goto LABEL_42;
          }

          v32 = *(v58 + 8 * v30 + 32);
        }

        v33 = v32;
        v34 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v35 = [v32 identifier];
        v36 = sub_100014188();
        v38 = v37;

        if (v36 == v28 && v38 == v27)
        {

LABEL_32:
          v41 = v33;

          v42 = v41;
          goto LABEL_37;
        }

        v40 = sub_1000143D8();

        if (v40)
        {
          goto LABEL_32;
        }

        ++v30;
      }

      while (v34 != v29);

      if (v31)
      {
        goto LABEL_45;
      }

      if (*(v57 + 16))
      {
        v43 = *(v58 + 32);
        goto LABEL_36;
      }

      __break(1u);
      goto LABEL_47;
    }
  }

  else
  {
    v29 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_45:
  v43 = sub_100014368();
LABEL_36:
  v41 = v43;
  v42 = 0;
LABEL_37:

  v44 = [v41 identifier];

  v45 = sub_100014188();
  v47 = v46;

  v48 = sub_1000140B8();
  v49 = sub_100014288();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v59 = v51;
    *v50 = 136315138;
    *(v50 + 4) = sub_100004C50(v45, v47, &v59);
    _os_log_impl(&_mh_execute_header, v48, v49, "Initial look: %s", v50, 0xCu);
    sub_100006320(v51);
  }

  return v45;
}

void sub_100012768(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v5 = sub_100010FE8(a2);
  v6 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_currentDeviceInterfaceOrientation;
  if (v5 != *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_currentDeviceInterfaceOrientation))
  {
    v7 = v5;
    v8 = [a1 currentLook];
    v9 = [v8 identifier];

    v10 = sub_100014188();
    v12 = v11;

    *(v2 + v6) = v7;
    v13 = *(v2 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC);
    if (v13)
    {
      v14 = objc_opt_self();
      v15 = v13;
      v16 = [v14 currentDevice];
      v17 = [v16 userInterfaceIdiom];

      if (v17 == 1)
      {
        [v15 dismissViewControllerAnimated:1 completion:0];
      }
    }

    v18 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_viewControllers;
    swift_beginAccess();
    v19 = *(v2 + v18);
    v20 = 1 << *(v19 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v19 + 64);
    v23 = (v20 + 63) >> 6;

    v24 = 0;
    while (v22)
    {
LABEL_15:
      v27 = (v24 << 10) | (16 * __clz(__rbit64(v22)));
      v28 = (*(v19 + 48) + v27);
      v29 = *(*(v19 + 56) + v27);
      if (*v28 != v10 || v28[1] != v12)
      {
        sub_1000143D8();
      }

      v22 &= v22 - 1;
      v25 = v29;
      sub_100013E28();
    }

    while (1)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v26 >= v23)
      {

        return;
      }

      v22 = *(v19 + 64 + 8 * v26);
      ++v24;
      if (v22)
      {
        v24 = v26;
        goto LABEL_15;
      }
    }

    __break(1u);
  }
}

void sub_1000129B0()
{
  v1 = v0;
  v2 = sub_100001F74(&qword_100021850, &unk_100015220);
  __chkstk_darwin(v2 - 8);
  v4 = &v12[-v3];
  if (*(v0 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_emojiRenderer))
  {

    sub_100013E48();

    v5 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_viewControllers;
    swift_beginAccess();
    *(v1 + v5) = &_swiftEmptyDictionarySingleton;

    v6 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC;
    v7 = *(v1 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_inputAccessoryVC);
    if (v7)
    {
      v8 = v7;
      sub_100013D88();

      v7 = *(v1 + v6);
    }

    *(v1 + v6) = 0;

    v9 = sub_100013F18();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    v10 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
    swift_beginAccess();
    sub_10001004C(v4, v1 + v10);
    swift_endAccess();
    v11 = *(v1 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor);
    *(v1 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_editor) = 0;
  }

  else
  {
    __break(1u);
  }
}

void sub_100012B34(void *a1, void *a2)
{
  [a1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_opt_self();
  sub_100001F74(&unk_100021650, &qword_1000150B8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100015140;
  v6 = [a2 leadingAnchor];
  v7 = [a1 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [a2 trailingAnchor];
  v10 = [a1 trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [a2 topAnchor];
  v13 = [a1 topAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [a2 bottomAnchor];
  v16 = [a1 bottomAnchor];
  v17 = [v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_100006580(0, &qword_1000218B8, NSLayoutConstraint_ptr);
  isa = sub_1000141F8().super.isa;

  [v4 activateConstraints:isa];
}

void sub_100012D9C(void *a1, void *a2)
{
  v3 = v2;
  v52 = a1;
  v5 = sub_100013FB8();
  __chkstk_darwin(v5 - 8);
  v6 = sub_100001F74(&qword_100021850, &unk_100015220);
  __chkstk_darwin(v6 - 8);
  v8 = &v48 - v7;
  v50 = sub_100013F18();
  v9 = *(v50 - 8);
  __chkstk_darwin(v50);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 identifier];
  v13 = sub_100014188();
  v15 = v14;

  v16 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_viewControllers;
  swift_beginAccess();
  v17 = *(v3 + v16);
  if (*(v17 + 16))
  {
    v49 = v3;
    v18 = a2;

    v19 = sub_100005208(v13, v15);
    v21 = v20;

    if (v21)
    {
      v22 = *(v17 + 56) + 16 * v19;
      v23 = *(v22 + 8);
      v24 = *v22;
      v25 = v23;

      v51 = v24;
      v26 = v25;
      v27 = v52;
      goto LABEL_8;
    }

    a2 = v18;
    v3 = v49;
  }

  else
  {
  }

  v51 = a2;
  sub_10000B110(a2, v11);
  if (*(v3 + OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_emojiRenderer))
  {
    v28 = objc_allocWithZone(sub_100013E38());

    v29 = sub_100013E08();
    v30 = v50;
    (*(v9 + 16))(v8, v11, v50);
    (*(v9 + 56))(v8, 0, 1, v30);
    v31 = v29;
    sub_100013DF8();
    sub_100014048();
    v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    sub_100013EA8();
    sub_100014038();
    v32 = [v51 identifier];
    v33 = sub_100014188();
    v35 = v34;

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = *(v3 + v16);
    *(v3 + v16) = 0x8000000000000000;
    v51 = v31;
    sub_100010CBC(v31, v26, v33, v35, isUniquelyReferenced_nonNull_native);

    *(v3 + v16) = v53;
    swift_endAccess();
    (*(v9 + 8))(v11, v30);
    v27 = v52;
LABEL_8:
    v37 = [v27 backgroundView];
    v38 = [v26 view];
    if (v38)
    {
      v39 = v38;
      [v37 addSubview:v38];

      v40 = [v26 view];
      if (v40)
      {
        v41 = [v27 backgroundView];
        sub_100012B34(v40, v41);

        v42 = [v27 foregroundView];
        v43 = v51;
        v44 = [v43 view];
        if (v44)
        {
          v45 = v44;
          [v42 addSubview:v44];

          v46 = [v43 view];
          if (v46)
          {
            v47 = [v27 foregroundView];
            sub_100012B34(v46, v47);

            sub_100013E28();
            return;
          }

          goto LABEL_16;
        }

LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_17:
  __break(1u);
}

id sub_1000132F8()
{
  v1 = v0;
  v23 = sub_100013F38();
  v2 = *(v23 - 8);
  __chkstk_darwin(v23);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100013FB8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100001F74(&qword_100021850, &unk_100015220);
  __chkstk_darwin(v9 - 8);
  v11 = &v23 - v10;
  v12 = [objc_allocWithZone(PREditorColorPickerConfiguration) init];
  sub_100013D68();
  v13 = sub_100013D48();
  [v12 setColorPalette:v13];

  [v12 setColorWellDisplayMode:2];
  v14 = OBJC_IVAR____TtC20EmojiPosterExtension36EmojiPosterExtensionEditorController_templateConfiguration;
  swift_beginAccess();
  sub_1000139C0(v1 + v14, v11, &qword_100021850, &unk_100015220);
  v15 = sub_100013F18();
  v16 = *(v15 - 8);
  result = (*(v16 + 48))(v11, 1, v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100013EA8();
    (*(v16 + 8))(v11, v15);
    sub_100013F68();
    (*(v6 + 8))(v8, v5);
    isa = sub_100013F28().super.isa;
    (*(v2 + 8))(v4, v23);
    v19 = [objc_allocWithZone(PRPosterColor) initWithColor:isa];

    sub_100001F74(&qword_1000218A8, &qword_100015250);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100015110;
    *(v20 + 56) = sub_100006580(0, &qword_100021870, PRPosterColor_ptr);
    *(v20 + 32) = v19;
    v21 = v19;
    v22 = sub_1000141F8().super.isa;

    [v12 setSuggestedColors:v22];

    [v12 setSelectedColor:v21];
    return v12;
  }

  return result;
}

void *sub_1000136B0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000136F4()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001373C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100010390;

  return sub_10000AD68(v2, v3, v4);
}

uint64_t sub_1000137F4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100013C5C;

  return sub_1000101C0(v2, v3, v4);
}

uint64_t sub_1000138B4()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000138F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100013C5C;

  return sub_1000102A8(a1, v4, v5, v6);
}

uint64_t sub_1000139C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001F74(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100013A28()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100013A60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100013C5C;

  return sub_100010780(a1, v4);
}

uint64_t sub_100013B18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100010390;

  return sub_100010780(a1, v4);
}

uint64_t sub_100013BD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F74(&qword_100021850, &unk_100015220);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}