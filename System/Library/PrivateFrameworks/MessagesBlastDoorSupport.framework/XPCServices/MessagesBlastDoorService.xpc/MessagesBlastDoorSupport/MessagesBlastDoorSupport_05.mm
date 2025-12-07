void sub_1000937CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v165 = a6;
  v159 = a5;
  v158 = a4;
  v163 = a1;
  v8 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  __chkstk_darwin(v8 - 8);
  v10 = &v134 - v9;
  v11 = sub_1000C14E4();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v134 - v16;
  v18 = sub_1000124CC(&qword_1000FD9F0, &qword_1000CF478);
  __chkstk_darwin(v18 - 8);
  v20 = &v134 - v19;
  if (sub_1000C1324() != a2)
  {
    v162 = a2 + a3;
    if (!__OFADD__(a2, a3))
    {
      v160 = v20;
      v141 = v17;
      v142 = v15;
      v145 = v11;
      v146 = v10;
      v161 = a2;
      v22 = v163 + 64;
      v21 = *(v163 + 64);
      v23 = 1 << *(v163 + 32);
      v164 = MBDIMFileTransferAttributeName;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v157 = MBDIMLivePhotoAttributeName;
      v25 = v24 & v21;
      v26 = (v23 + 63) >> 6;
      v156 = MBDIMBaseWritingDirectionAttributeName;
      v155 = MBDIMMessagePartAttributeName;
      v154 = MBDIMBreadcrumbTextOptionFlags;
      v153 = MBDIMBreadcrumbTextMarkerAttributeName;
      v152 = MBDIMMentionConfirmedMention;
      v151 = MBDIMTextEffectAttributeName;
      v150 = MBDIMTextBoldAttributeName;
      v149 = MBDIMTextItalicAttributeName;
      v148 = MBDIMTextUnderlineAttributeName;
      v147 = MBDIMTextStrikethroughAttributeName;
      v144 = (v12 + 56);
      v143 = MBDIMLinkAttributeName;
      v140 = (v12 + 32);
      v139 = (v12 + 16);
      v138 = (v12 + 8);
      v137 = MBDIMLinkIsRichLinkAttributeName;

      v27 = 0;
      v136 = xmmword_1000CACB0;
      if (!v25)
      {
        goto LABEL_10;
      }

      while (1)
      {
        v28 = v27;
LABEL_18:
        v31 = __clz(__rbit64(v25));
        v25 &= v25 - 1;
        v32 = v31 | (v28 << 6);
        v33 = *(*(v163 + 48) + 8 * v32);
        sub_10001D804(*(v163 + 56) + 32 * v32, &v167);
        *&v171 = v33;
        sub_10001D8C8(&v167, (&v171 + 8));
        v34 = v33;
LABEL_19:
        v174[0] = v171;
        v174[1] = v172;
        v175 = v173;
        v35 = v171;
        if (!v171)
        {

          return;
        }

        sub_10001D8C8((v174 + 8), &v170);
        v173 = 0;
        v171 = 0u;
        v172 = 0u;
        v36 = sub_1000C5224();
        v38 = v37;
        if (v36 == sub_1000C5224() && v38 == v39)
        {
          break;
        }

        v40 = sub_1000C5C04();

        if (v40)
        {
          goto LABEL_24;
        }

        v48 = sub_1000C5224();
        v50 = v49;
        if (v48 == sub_1000C5224() && v50 == v51)
        {
          break;
        }

        v52 = sub_1000C5C04();

        if (v52)
        {
          goto LABEL_24;
        }

        v53 = sub_1000C5224();
        v55 = v54;
        if (v53 == sub_1000C5224() && v55 == v56)
        {

LABEL_47:
          sub_10001D804(&v170, &v167);
          sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_26;
          }

          v61 = v166;
          sub_1000C54B4();
          *(&v168 + 1) = sub_1000C4A14();
          v169 = sub_10009B540(&qword_1000FDB28, &type metadata accessor for BaseWritingDirectionAttribute, &protocol conformance descriptor for BaseWritingDirectionAttribute);
          sub_10002E5DC(&v167);
          sub_1000C4A04();
          sub_100018F90(&v171, &qword_1000FDAC8, &qword_1000CF6C8);

          goto LABEL_45;
        }

        v60 = sub_1000C5C04();

        if (v60)
        {
          goto LABEL_47;
        }

        v62 = sub_1000C5224();
        v64 = v63;
        if (v62 == sub_1000C5224() && v64 == v65)
        {

LABEL_53:
          sub_10001D804(&v170, &v167);
          sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
          if (swift_dynamicCast())
          {
            v67 = v166;
            sub_1000C58A4();
            *(&v168 + 1) = sub_1000C40C4();
            v169 = sub_10009B540(&qword_1000FDB20, &type metadata accessor for MessagePartAttribute, &protocol conformance descriptor for MessagePartAttribute);
            sub_10002E5DC(&v167);
            sub_1000C40B4();
            goto LABEL_55;
          }

          goto LABEL_26;
        }

        v66 = sub_1000C5C04();

        if (v66)
        {
          goto LABEL_53;
        }

        v68 = sub_1000C5224();
        v70 = v69;
        if (v68 == sub_1000C5224() && v70 == v71)
        {

LABEL_61:
          sub_10001D804(&v170, &v167);
          sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_26;
          }

          v67 = v166;
          sub_1000C58A4();
          *(&v168 + 1) = sub_1000C4B84();
          v169 = sub_10009B540(&qword_1000FDB18, &type metadata accessor for BreadcrumbTextOptionFlagsAttribute, &protocol conformance descriptor for BreadcrumbTextOptionFlagsAttribute);
          sub_10002E5DC(&v167);
          sub_1000C4B74();
          goto LABEL_55;
        }

        v72 = sub_1000C5C04();

        if (v72)
        {
          goto LABEL_61;
        }

        v73 = sub_1000C5224();
        v75 = v74;
        if (v73 == sub_1000C5224() && v75 == v76)
        {

LABEL_67:
          sub_10001D804(&v170, &v167);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_26;
          }

          *(&v168 + 1) = sub_1000C4A34();
          v169 = sub_10009B540(&qword_1000FDB10, &type metadata accessor for BreadcrumbTextMarkerAttribute, &protocol conformance descriptor for BreadcrumbTextMarkerAttribute);
          sub_10002E5DC(&v167);
          sub_1000C4A24();
          goto LABEL_56;
        }

        v77 = sub_1000C5C04();

        if (v77)
        {
          goto LABEL_67;
        }

        v79 = sub_1000C5224();
        v81 = v80;
        if (v79 == sub_1000C5224() && v81 == v82)
        {

LABEL_73:
          sub_10001D804(&v170, &v167);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_26;
          }

          *(&v168 + 1) = sub_1000C3B44();
          v169 = sub_10009B540(&qword_1000FDB08, &type metadata accessor for MentionAttribute, &protocol conformance descriptor for MentionAttribute);
          sub_10002E5DC(&v167);
          sub_1000C3B34();
          goto LABEL_56;
        }

        v83 = sub_1000C5C04();

        if (v83)
        {
          goto LABEL_73;
        }

        v84 = sub_1000C5224();
        v86 = v85;
        if (v84 == sub_1000C5224() && v86 == v87)
        {

LABEL_79:
          sub_10001D804(&v170, &v167);
          sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_26;
          }

          v67 = v166;
          sub_1000C58A4();
          *(&v168 + 1) = sub_1000C4014();
          v169 = sub_10009B540(&qword_1000FDB00, &type metadata accessor for TextEffectAttribute, &protocol conformance descriptor for TextEffectAttribute);
          sub_10002E5DC(&v167);
          sub_1000C4004();
LABEL_55:

LABEL_56:
          sub_100018F90(&v171, &qword_1000FDAC8, &qword_1000CF6C8);
          sub_100018E0C(&v167, &v171);
          goto LABEL_26;
        }

        v88 = sub_1000C5C04();

        if (v88)
        {
          goto LABEL_79;
        }

        v89 = sub_1000C5224();
        v91 = v90;
        if (v89 == sub_1000C5224() && v91 == v92)
        {

LABEL_85:
          *(&v168 + 1) = sub_1000C3CF4();
          v169 = sub_10009B540(&qword_1000FDAF8, &type metadata accessor for TextBoldAttribute, &protocol conformance descriptor for TextBoldAttribute);
          sub_10002E5DC(&v167);
          sub_1000C3CE4();
          goto LABEL_44;
        }

        v93 = sub_1000C5C04();

        if (v93)
        {
          goto LABEL_85;
        }

        v94 = sub_1000C5224();
        v96 = v95;
        if (v94 == sub_1000C5224() && v96 == v97)
        {

LABEL_90:
          *(&v168 + 1) = sub_1000C4034();
          v169 = sub_10009B540(&qword_1000FDAF0, &type metadata accessor for TextItalicAttribute, &protocol conformance descriptor for TextItalicAttribute);
          sub_10002E5DC(&v167);
          sub_1000C4024();
          goto LABEL_44;
        }

        v98 = sub_1000C5C04();

        if (v98)
        {
          goto LABEL_90;
        }

        v99 = sub_1000C5224();
        v101 = v100;
        if (v99 == sub_1000C5224() && v101 == v102)
        {

LABEL_95:
          *(&v168 + 1) = sub_1000C4364();
          v169 = sub_10009B540(&qword_1000FDAE8, &type metadata accessor for TextUnderlineAttribute, &protocol conformance descriptor for TextUnderlineAttribute);
          sub_10002E5DC(&v167);
          sub_1000C4354();
          goto LABEL_44;
        }

        v103 = sub_1000C5C04();

        if (v103)
        {
          goto LABEL_95;
        }

        v104 = sub_1000C5224();
        v106 = v105;
        if (v104 == sub_1000C5224() && v106 == v107)
        {

LABEL_100:
          *(&v168 + 1) = sub_1000C4694();
          v169 = sub_10009B540(&qword_1000FDAE0, &type metadata accessor for TextStrikethroughAttribute, &protocol conformance descriptor for TextStrikethroughAttribute);
          sub_10002E5DC(&v167);
          sub_1000C4684();
LABEL_44:
          sub_100018F90(&v171, &qword_1000FDAC8, &qword_1000CF6C8);
LABEL_45:
          v171 = v167;
          v172 = v168;
          v173 = v169;
          goto LABEL_26;
        }

        v108 = sub_1000C5C04();

        if (v108)
        {
          goto LABEL_100;
        }

        v109 = sub_1000C5224();
        v111 = v110;
        if (v109 == sub_1000C5224() && v111 == v112)
        {

LABEL_105:
          sub_10001D804(&v170, &v167);
          v114 = swift_dynamicCast();
          v115 = *v144;
          if ((v114 & 1) == 0)
          {
            v119 = v146;
            v115(v146, 1, 1, v145);
            sub_100018F90(v119, &qword_1000FC3E8, &unk_1000C9E10);
            goto LABEL_26;
          }

          v116 = v146;
          v117 = v145;
          v115(v146, 0, 1, v145);
          v118 = v141;
          (*v140)(v141, v116, v117);
          (*v139)(v142, v118, v117);
          *(&v168 + 1) = sub_1000C2854();
          v169 = sub_10009B540(&qword_1000FDAD8, &type metadata accessor for LinkAttribute, &protocol conformance descriptor for LinkAttribute);
          sub_10002E5DC(&v167);
          sub_1000C2844();
          (*v138)(v118, v117);
          goto LABEL_56;
        }

        v113 = sub_1000C5C04();

        if (v113)
        {
          goto LABEL_105;
        }

        v120 = sub_1000C5224();
        v122 = v121;
        if (v120 == sub_1000C5224() && v122 == v123)
        {
        }

        else
        {
          v124 = sub_1000C5C04();

          if ((v124 & 1) == 0)
          {
            sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
            v135 = sub_1000C5714();
            sub_1000124CC(&qword_1000FC348, qword_1000C9550);
            v125 = swift_allocObject();
            *(v125 + 16) = v136;
            v126 = sub_1000C5224();
            v128 = v127;
            *(v125 + 56) = &type metadata for String;
            v129 = sub_100014FBC();
            *(v125 + 32) = v126;
            *(v125 + 40) = v128;
            *(v125 + 96) = &type metadata for Int;
            v130 = v161;
            *(v125 + 64) = v129;
            *(v125 + 72) = v130;
            *(v125 + 136) = &type metadata for Int;
            *(v125 + 144) = &protocol witness table for Int;
            v131 = v162;
            *(v125 + 104) = &protocol witness table for Int;
            *(v125 + 112) = v131;
            v132 = sub_1000C5554();
            v133 = v135;
            sub_1000C1A44("Unhandled attribute '%{public}@' in NSAttributedString at range=[%ld,%ld)", 73, 2, &_mh_execute_header, v135, v132, v125);

            goto LABEL_26;
          }
        }

        sub_10001D804(&v170, &v167);
        sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
        if (swift_dynamicCast())
        {
          v67 = v166;
          [v166 BOOLValue];
          *(&v168 + 1) = sub_1000C1CB4();
          v169 = sub_10009B540(&qword_1000FDAD0, &type metadata accessor for LinkIsRichLinkAttribute, &protocol conformance descriptor for LinkIsRichLinkAttribute);
          sub_10002E5DC(&v167);
          sub_1000C1CA4();
          goto LABEL_55;
        }

LABEL_26:
        sub_100018F28(&v171, &v167, &qword_1000FDAC8, &qword_1000CF6C8);
        if (*(&v168 + 1))
        {
          sub_100018F90(&v167, &qword_1000FDAC8, &qword_1000CF6C8);
          sub_100018F28(&v171, &v167, &qword_1000FDAC8, &qword_1000CF6C8);
          if (!*(&v168 + 1))
          {
            goto LABEL_119;
          }

          v42 = v165;
          v43 = *v165;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v42 = v43;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v43 = sub_10004576C(0, v43[2] + 1, 1, v43);
            *v165 = v43;
          }

          v46 = v43[2];
          v45 = v43[3];
          if (v46 >= v45 >> 1)
          {
            v78 = sub_10004576C((v45 > 1), v46 + 1, 1, v43);
            *v165 = v78;
          }

          sub_100018F90(&v171, &qword_1000FDAC8, &qword_1000CF6C8);
          sub_100015F68(&v170);
          v47 = *v165;
          *(v47 + 16) = v46 + 1;
          sub_100018E0C(&v167, v47 + 40 * v46 + 32);
          if (!v25)
          {
LABEL_10:
            if (v26 <= v27 + 1)
            {
              v29 = v27 + 1;
            }

            else
            {
              v29 = v26;
            }

            v30 = v29 - 1;
            while (1)
            {
              v28 = v27 + 1;
              if (__OFADD__(v27, 1))
              {
                break;
              }

              if (v28 >= v26)
              {
                v25 = 0;
                v173 = 0;
                v27 = v30;
                v171 = 0u;
                v172 = 0u;
                goto LABEL_19;
              }

              v25 = *(v22 + 8 * v28);
              ++v27;
              if (v25)
              {
                v27 = v28;
                goto LABEL_18;
              }
            }

            __break(1u);
            goto LABEL_118;
          }
        }

        else
        {

          sub_100018F90(&v171, &qword_1000FDAC8, &qword_1000CF6C8);
          sub_100015F68(&v170);
          sub_100018F90(&v167, &qword_1000FDAC8, &qword_1000CF6C8);
          if (!v25)
          {
            goto LABEL_10;
          }
        }
      }

LABEL_24:
      sub_10001D804(&v170, &v167);
      sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
      if (swift_dynamicCast())
      {
        v41 = v160;
        FileTransferAttribute.init(fileTransferDict:range:)(v166, v161, v162, v160);
        v57 = sub_1000C41D4();
        v58 = *(v57 - 8);
        if ((*(*(v57 - 8) + 48))(v41, 1, v57) != 1)
        {
          *(&v168 + 1) = v57;
          v169 = sub_10009B540(&qword_1000FDB30, &type metadata accessor for FileTransferAttribute, &protocol conformance descriptor for FileTransferAttribute);
          v59 = sub_10002E5DC(&v167);
          (*(v58 + 32))(v59, v41, v57);
          goto LABEL_44;
        }

        sub_100018F90(&v171, &qword_1000FDAC8, &qword_1000CF6C8);
        sub_100018F90(v41, &qword_1000FD9F0, &qword_1000CF478);
        v167 = 0u;
        v168 = 0u;
        v169 = 0;
        goto LABEL_45;
      }

      goto LABEL_26;
    }

LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
  }
}

void FileTransferAttribute.init(fileTransferDict:range:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v279 = a3;
  v278 = a2;
  v308 = sub_1000C41D4();
  v304 = *(v308 - 8);
  __chkstk_darwin(v308);
  v280 = &v246 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000124CC(&qword_1000FDA90, &qword_1000CF698);
  v9 = __chkstk_darwin(v8 - 8);
  v277 = &v246 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v270 = &v246 - v12;
  __chkstk_darwin(v11);
  v281 = &v246 - v13;
  v269 = sub_1000C41F4();
  v268 = *(v269 - 8);
  __chkstk_darwin(v269);
  v271 = &v246 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = sub_1000C43B4();
  v293 = *(v295 - 8);
  __chkstk_darwin(v295);
  v275 = &v246 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000C4274();
  v290 = *(v16 - 8);
  v291 = v16;
  __chkstk_darwin(v16);
  v274 = &v246 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = sub_1000C44D4();
  v289 = *(v292 - 8);
  __chkstk_darwin(v292);
  v283 = &v246 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000124CC(&qword_1000FDA98, &qword_1000CF6A0);
  v20 = __chkstk_darwin(v19 - 8);
  v285 = &v246 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v286 = &v246 - v23;
  __chkstk_darwin(v22);
  v287 = &v246 - v24;
  v25 = sub_1000124CC(&qword_1000FDAA0, &qword_1000CF6A8);
  v26 = __chkstk_darwin(v25 - 8);
  v282 = &v246 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v246 - v29;
  __chkstk_darwin(v28);
  v294 = &v246 - v31;
  v32 = sub_1000124CC(&qword_1000FDAA8, &qword_1000CF6B0);
  v33 = __chkstk_darwin(v32 - 8);
  v273 = &v246 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v37 = &v246 - v36;
  __chkstk_darwin(v35);
  v297 = &v246 - v38;
  v39 = sub_1000124CC(&qword_1000FDAB0, &qword_1000CF6B8);
  v40 = __chkstk_darwin(v39 - 8);
  v288 = &v246 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __chkstk_darwin(v40);
  v272 = &v246 - v43;
  v44 = __chkstk_darwin(v42);
  v296 = &v246 - v45;
  __chkstk_darwin(v44);
  v47 = &v246 - v46;
  v48 = sub_1000C4674();
  v300 = *(v48 - 8);
  v301 = v48;
  v49 = __chkstk_darwin(v48);
  v284 = &v246 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v53 = &v246 - v52;
  __chkstk_darwin(v51);
  v55 = &v246 - v54;
  v298 = sub_1000C4184();
  v56 = *(v298 - 8);
  v57 = __chkstk_darwin(v298);
  v276 = &v246 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v57);
  v299 = &v246 - v59;
  v60 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_15;
  }

  v267 = v56;
  v302 = a4;
  v303 = v4;
  v62 = sub_100099FF8(v60, v61);
  v64 = v63;

  if ((v64 & 1) == 0 || (sub_10001D804(*(a1 + 56) + 32 * v62, v307), sub_1000124CC(&qword_1000FDAB8, &qword_1000CF6C0), (swift_dynamicCast() & 1) == 0))
  {

    a4 = v302;
LABEL_15:
    v77 = sub_1000C5534();
    sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
    v78 = sub_1000C5714();
    sub_1000C1A54(v77, &_mh_execute_header, v78, "File transfer attribute is missing attachment info (URL, etc) -- ignoring file transfer, but processing textual content.", 120, 2, _swiftEmptyArrayStorage);

    v79 = 1;
    v80 = v308;
    v81 = v304;
    goto LABEL_16;
  }

  if (!*(v305 + 16))
  {

    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    return;
  }

  v265 = a1;
  v257 = "GeneratePreviewImage";
  v259 = v305;
  v65 = *(v305 + 32);
  v66 = sub_1000C5224();
  v68 = v67;
  if (*(v65 + 16))
  {
    v69 = v66;

    v70 = v65;
    v71 = sub_100099FF8(v69, v68);
    v73 = v72;

    if (v73)
    {
      sub_10001D804(*(v70 + 56) + 32 * v71, v307);
      v74 = swift_dynamicCast();
      v75 = v305;
      if (!v74)
      {
        v75 = 0;
      }

      v255 = v75;
      if (v74)
      {
        v76 = v306;
      }

      else
      {
        v76 = 0;
      }

      v260 = v76;
    }

    else
    {
      v255 = 0;
      v260 = 0;
    }

    v65 = v70;
  }

  else
  {

    v255 = 0;
    v260 = 0;
  }

  v82 = sub_1000C5224();
  if (*(v65 + 16))
  {
    v84 = v65;
    v85 = sub_100099FF8(v82, v83);
    v87 = v86;

    if (v87)
    {
      sub_10001D804(*(v84 + 56) + 32 * v85, v307);
      v88 = swift_dynamicCast();
      v89 = v305;
      if (!v88)
      {
        v89 = 0;
      }

      v252 = v89;
      if (v88)
      {
        v90 = v306;
      }

      else
      {
        v90 = 0;
      }

      v262 = v90;
    }

    else
    {
      v252 = 0;
      v262 = 0;
    }

    v65 = v84;
  }

  else
  {

    v252 = 0;
    v262 = 0;
  }

  v91 = sub_1000C5224();
  if (*(v65 + 16))
  {
    v93 = v65;
    v94 = sub_100099FF8(v91, v92);
    v96 = v95;

    if (v96)
    {
      sub_10001D804(*(v93 + 56) + 32 * v94, v307);
      v97 = swift_dynamicCast();
      v98 = v305;
      if (!v97)
      {
        v98 = 0;
      }

      v251 = v98;
      if (v97)
      {
        v99 = v306;
      }

      else
      {
        v99 = 0;
      }

      v261 = v99;
    }

    else
    {
      v251 = 0;
      v261 = 0;
    }

    v65 = v93;
  }

  else
  {

    v251 = 0;
    v261 = 0;
  }

  v100 = sub_1000C5224();
  if (*(v65 + 16))
  {
    v102 = v65;
    v103 = sub_100099FF8(v100, v101);
    v105 = v104;

    if (v105)
    {
      sub_10001D804(*(v102 + 56) + 32 * v103, v307);
      v106 = swift_dynamicCast();
      v107 = v305;
      if (!v106)
      {
        v107 = 0;
      }

      v256 = v107;
      if (v106)
      {
        v108 = v306;
      }

      else
      {
        v108 = 0;
      }

      v258 = v108;
    }

    else
    {
      v256 = 0;
      v258 = 0;
    }

    v65 = v102;
  }

  else
  {

    v256 = 0;
    v258 = 0;
  }

  v109 = sub_1000C5224();
  v111 = v265;
  v112 = *(v265 + 16);
  v266 = v65;
  if (v112)
  {
    v113 = sub_100099FF8(v109, v110);
    v115 = v114;

    if (v115)
    {
      sub_10001D804(*(v111 + 56) + 32 * v113, v307);
      v116 = swift_dynamicCast();
      v117 = v305;
      if (!v116)
      {
        v117 = 0;
      }

      v254 = v117;
      if (v116)
      {
        v118 = v306;
      }

      else
      {
        v118 = 0;
      }

      v264 = v118;
    }

    else
    {
      v254 = 0;
      v264 = 0;
    }

    v65 = v266;
  }

  else
  {

    v254 = 0;
    v264 = 0;
  }

  v119 = sub_1000C5224();
  if (*(v111 + 16))
  {
    v121 = sub_100099FF8(v119, v120);
    v123 = v122;

    if (v123)
    {
      sub_10001D804(*(v111 + 56) + 32 * v121, v307);
      v124 = swift_dynamicCast();
      v125 = v305;
      if (!v124)
      {
        v125 = 0;
      }

      v253 = v125;
      if (v124)
      {
        v126 = v306;
      }

      else
      {
        v126 = 0;
      }

      v263 = v126;
    }

    else
    {
      v253 = 0;
      v263 = 0;
    }

    v65 = v266;
  }

  else
  {

    v253 = 0;
    v263 = 0;
  }

  v127 = sub_1000C5224();
  if (!*(v65 + 16))
  {

    goto LABEL_85;
  }

  v129 = v65;
  v130 = sub_100099FF8(v127, v128);
  v132 = v131;

  if ((v132 & 1) == 0)
  {
LABEL_85:
    v134 = 0;
    v135 = 0;
    goto LABEL_86;
  }

  sub_10001D804(*(v129 + 56) + 32 * v130, v307);
  v133 = swift_dynamicCast();
  if (v133)
  {
    v134 = v305;
  }

  else
  {
    v134 = 0;
  }

  if (v133)
  {
    v135 = v306;
  }

  else
  {
    v135 = 0;
  }

LABEL_86:

  v137 = v303;
  AudioMessageAttachmentInfo.init(audioMessageDict:)(v136, v47);
  v138 = v137;
  if (v137)
  {

    return;
  }

  v139 = v267;
  v247 = v134;
  v250 = v135;
  v140 = v300;
  v141 = v301;
  v142 = *(v300 + 48);
  v249 = v300 + 48;
  v248 = v142;
  if (v142(v47, 1, v301) != 1)
  {

    (*(v140 + 32))(v55, v47, v141);
    v144 = v299;
    (*(v140 + 16))(v299, v55, v141);
    v145 = v298;
    (*(v139 + 104))(v144, enum case for FileTransferAttribute.AttachmentSubtype.audioMessage(_:), v298);
    (*(v140 + 8))(v55, v141);
    v146 = _swiftEmptyArrayStorage;
    goto LABEL_92;
  }

  sub_100018F90(v47, &qword_1000FDAB0, &qword_1000CF6B8);
  v143 = sub_100097A60(v259);
  v303 = 0;
  v246 = v143;

  v157 = *(v293 + 56);
  v158 = v297;
  v157(v297, 1, 1, v295);
  if (v258)
  {
    v159 = v303;
    sub_1000C43A4();
    v303 = v159;
    if (v159)
    {
      sub_100018F90(v158, &qword_1000FDAA8, &qword_1000CF6B0);

LABEL_90:

      return;
    }

    sub_100018F90(v158, &qword_1000FDAA8, &qword_1000CF6B0);
    v157(v37, 0, 1, v295);
    sub_10001D860(v37, v158, &qword_1000FDAA8, &qword_1000CF6B0);
  }

  v160 = v294;
  (*(v290 + 56))(v294, 1, 1, v291);
  v161 = MBDIMFileTransferStickerInfoKey;
  v162 = sub_1000C5224();
  v164 = v301;
  if (!*(v265 + 16))
  {

    v168 = v300;
LABEL_113:
    v172 = v296;
    v173 = v266;
    goto LABEL_114;
  }

  v165 = sub_100099FF8(v162, v163);
  v167 = v166;

  v168 = v300;
  if ((v167 & 1) == 0)
  {
    goto LABEL_113;
  }

  sub_10001D804(*(v265 + 56) + 32 * v165, v307);
  sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_113;
  }

  v169 = v303;
  StickerAttachmentInfo.init(stickerDict:)(v305, v30);
  v303 = v169;
  v170 = v296;
  if (!v169)
  {
    sub_100018F90(v160, &qword_1000FDAA0, &qword_1000CF6A8);
    v173 = v266;
    v168 = v300;
    sub_10001D860(v30, v160, &qword_1000FDAA0, &qword_1000CF6A8);
    v172 = v170;
LABEL_114:
    v174 = *(v168 + 56);
    v174(v172, 1, 1, v164);
    v175 = sub_1000C5224();
    v177 = *(v173 + 16);
    v259 = v161;
    if (v177)
    {
      v178 = sub_100099FF8(v175, v176);
      v180 = v179;

      if (v180)
      {
        sub_10001D804(*(v173 + 56) + 32 * v178, v307);

        v181 = swift_dynamicCast();
        v182 = v289;
        if (v181)
        {
          v183 = v303;
          sub_1000C4664();
          v303 = v183;
          v184 = v296;
          if (v183)
          {

            sub_100018F90(v184, &qword_1000FDAB0, &qword_1000CF6B8);
            v171 = v294;
            goto LABEL_119;
          }

          sub_100018F90(v296, &qword_1000FDAB0, &qword_1000CF6B8);
          v236 = v272;
          (*(v300 + 32))(v272, v53, v164);
          v174(v236, 0, 1, v164);
          v182 = v289;
          sub_10001D860(v236, v184, &qword_1000FDAB0, &qword_1000CF6B8);
        }

LABEL_124:
        v186 = *(v182 + 56);
        v187 = v287;
        v186(v287, 1, 1, v292);
        v139 = v267;
        v144 = v299;
        v188 = v288;
        if (v264)
        {
          if (v263)
          {
            v189 = sub_1000C5224();
            v191 = v265;
            if (*(v265 + 16))
            {
              v192 = sub_100099FF8(v189, v190);
              v194 = v193;

              if (v194)
              {
                sub_10001D804(*(v191 + 56) + 32 * v192, v307);
                sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
                if (swift_dynamicCast())
                {
                  v195 = v305;
                }

                else
                {
                  v195 = 0;
                }
              }

              else
              {
                v195 = 0;
              }

              v182 = v289;
            }

            else
            {

              v195 = 0;
            }

            v221 = v286;
            v222 = v303;
            EmojiImageAttachmentInfo.init(contentIdentifier:shortDescription:stickerDict:)(v254, v264, v253, v263, v195);
            v303 = v222;
            v223 = v297;
            if (v222)
            {

              sub_100018F90(v187, &qword_1000FDA98, &qword_1000CF6A0);
              sub_100018F90(v296, &qword_1000FDAB0, &qword_1000CF6B8);
              sub_100018F90(v294, &qword_1000FDAA0, &qword_1000CF6A8);
              v185 = v223;
              goto LABEL_151;
            }

            sub_100018F90(v187, &qword_1000FDA98, &qword_1000CF6A0);
            v186(v221, 0, 1, v292);
            v196 = v187;
            v139 = v267;
            sub_10001D860(v221, v187, &qword_1000FDA98, &qword_1000CF6A0);
            v188 = v288;
            goto LABEL_137;
          }

          v196 = v187;
        }

        else
        {
          v196 = v187;
        }

LABEL_137:
        v200 = v296;
        sub_100018F28(v296, v188, &qword_1000FDAB0, &qword_1000CF6B8);
        v201 = v301;
        v202 = v248(v188, 1, v301);
        v203 = v297;
        v145 = v298;
        if (v202 == 1)
        {
          sub_100018F90(v188, &qword_1000FDAB0, &qword_1000CF6B8);
          v204 = v196;
          v205 = v285;
          sub_100018F28(v196, v285, &qword_1000FDA98, &qword_1000CF6A0);
          v206 = *(v182 + 48);
          v207 = v182;
          v208 = v292;
          v209 = v206(v205, 1, v292);
          v138 = v303;
          if (v209 == 1)
          {
            sub_100018F90(v205, &qword_1000FDA98, &qword_1000CF6A0);
            v210 = v294;
            v211 = v282;
            sub_100018F28(v294, v282, &qword_1000FDAA0, &qword_1000CF6A8);
            v212 = (*(v290 + 48))(v211, 1, v291);
            v147 = v265;
            if (v212 == 1)
            {
              sub_100018F90(v211, &qword_1000FDAA0, &qword_1000CF6A8);
              v213 = v297;
              v214 = v273;
              sub_100018F28(v297, v273, &qword_1000FDAA8, &qword_1000CF6B0);
              v215 = v293;
              if ((*(v293 + 48))(v214, 1, v295) == 1)
              {
                sub_100018F90(v214, &qword_1000FDAA8, &qword_1000CF6B0);
                v216 = v271;
                sub_1000C41E4();
                if (v138)
                {

                  sub_100018F90(v287, &qword_1000FDA98, &qword_1000CF6A0);
                  sub_100018F90(v296, &qword_1000FDAB0, &qword_1000CF6B8);
                  sub_100018F90(v294, &qword_1000FDAA0, &qword_1000CF6A8);
                  sub_100018F90(v297, &qword_1000FDAA8, &qword_1000CF6B0);
                  return;
                }

                sub_100018F90(v287, &qword_1000FDA98, &qword_1000CF6A0);
                sub_100018F90(v296, &qword_1000FDAB0, &qword_1000CF6B8);
                sub_100018F90(v294, &qword_1000FDAA0, &qword_1000CF6A8);
                sub_100018F90(v297, &qword_1000FDAA8, &qword_1000CF6B0);
                (*(v268 + 32))(v144, v216, v269);
                v227 = &enum case for FileTransferAttribute.AttachmentSubtype.unspecified(_:);
              }

              else
              {
                sub_100018F90(v287, &qword_1000FDA98, &qword_1000CF6A0);
                sub_100018F90(v296, &qword_1000FDAB0, &qword_1000CF6B8);
                sub_100018F90(v294, &qword_1000FDAA0, &qword_1000CF6A8);
                sub_100018F90(v213, &qword_1000FDAA8, &qword_1000CF6B0);
                v243 = *(v215 + 32);
                v244 = v214;
                v245 = v295;
                v243(v275, v244, v295);
                v243(v144, v275, v245);
                v227 = &enum case for FileTransferAttribute.AttachmentSubtype.livePhoto(_:);
              }
            }

            else
            {
              sub_100018F90(v204, &qword_1000FDA98, &qword_1000CF6A0);
              sub_100018F90(v296, &qword_1000FDAB0, &qword_1000CF6B8);
              sub_100018F90(v210, &qword_1000FDAA0, &qword_1000CF6A8);
              sub_100018F90(v297, &qword_1000FDAA8, &qword_1000CF6B0);
              v224 = v291;
              v301 = *(v290 + 32);
              v225 = v211;
              v226 = v274;
              v301(v274, v225, v291);
              v301(v144, v226, v224);
              v227 = &enum case for FileTransferAttribute.AttachmentSubtype.sticker(_:);
            }

            (*(v139 + 104))(v144, *v227, v145);
            v146 = v246;
LABEL_93:
            v148 = sub_1000C5224();
            if (*(v147 + 16))
            {
              v150 = sub_100099FF8(v148, v149);
              v152 = v151;

              if (v152)
              {
                sub_10001D804(*(v147 + 56) + 32 * v150, v307);
                if (swift_dynamicCast())
                {
                  v153 = v147;
                  v154 = v267;
                  if (!v260 || (v303 = v138, v155 = sub_1000931CC(v255, v260), (v156 & 1) != 0))
                  {

                    sub_1000C4FC4();
                    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
                    swift_allocError();
LABEL_122:
                    sub_1000C4FB4();
                    swift_willThrow();
                    (*(v154 + 8))(v144, v145);
                    return;
                  }

                  v197 = v155;
                  if (v250)
                  {
                    v198 = sub_1000934CC(v247, v250);
                    if (v199)
                    {

                      sub_1000C4FC4();
                      sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
                      swift_allocError();
                      goto LABEL_122;
                    }

                    v300 = v198;
                  }

                  else
                  {
                    v300 = 0;
                  }

                  v228 = sub_1000C5224();
                  v230 = *(v153 + 16);
                  v246 = v146;
                  v301 = v197;
                  if (v230)
                  {
                    v231 = sub_100099FF8(v228, v229);
                    v233 = v232;

                    if (v233)
                    {
                      sub_10001D804(*(v153 + 56) + 32 * v231, v307);

                      sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
                      if (swift_dynamicCast())
                      {
                        v234 = v270;
                        v235 = v303;
                        FileTransferAttribute.ImageInfo.init(imageDict:)(v305, v270);
                        v303 = v235;
                        if (v235)
                        {
                          (*(v267 + 8))(v299, v298);

                          goto LABEL_90;
                        }

                        v238 = v281;
                        sub_10001D860(v234, v281, &qword_1000FDA90, &qword_1000CF698);
                        v145 = v298;
                        v144 = v299;
                        goto LABEL_167;
                      }
                    }

                    else
                    {
                    }

                    v145 = v298;
                    v144 = v299;
                  }

                  else
                  {

                    v145 = v298;
                  }

                  v237 = sub_1000C41C4();
                  v238 = v281;
                  (*(*(v237 - 8) + 56))(v281, 1, 1, v237);
LABEL_167:
                  sub_100018F28(v238, v277, &qword_1000FDA90, &qword_1000CF698);
                  v139 = v267;
                  (*(v267 + 16))(v276, v144, v145);
                  v239 = v280;
                  v240 = v303;
                  sub_1000C41A4();
                  if (v240)
                  {
                    sub_100018F90(v238, &qword_1000FDA90, &qword_1000CF698);
                    goto LABEL_105;
                  }

                  sub_100018F90(v238, &qword_1000FDA90, &qword_1000CF698);
                  (*(v139 + 8))(v144, v145);
                  v81 = v304;
                  a4 = v302;
                  v241 = v239;
                  v242 = v308;
                  (*(v304 + 32))(v302, v241, v308);
                  v80 = v242;
                  v79 = 0;
LABEL_16:
                  (*(v81 + 56))(a4, v79, 1, v80);
                  return;
                }
              }

              v139 = v267;
            }

            else
            {
            }

            sub_1000C4FC4();
            sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
            swift_allocError();
            sub_1000C4FB4();
            swift_willThrow();
LABEL_105:
            (*(v139 + 8))(v144, v145);
            return;
          }

          sub_100018F90(v204, &qword_1000FDA98, &qword_1000CF6A0);
          sub_100018F90(v296, &qword_1000FDAB0, &qword_1000CF6B8);
          sub_100018F90(v294, &qword_1000FDAA0, &qword_1000CF6A8);
          sub_100018F90(v297, &qword_1000FDAA8, &qword_1000CF6B0);
          v219 = *(v207 + 32);
          v220 = v283;
          v219(v283, v205, v208);
          v219(v144, v220, v208);
          (*(v139 + 104))(v144, enum case for FileTransferAttribute.AttachmentSubtype.emojiImage(_:), v145);
        }

        else
        {
          sub_100018F90(v196, &qword_1000FDA98, &qword_1000CF6A0);
          sub_100018F90(v200, &qword_1000FDAB0, &qword_1000CF6B8);
          sub_100018F90(v294, &qword_1000FDAA0, &qword_1000CF6A8);
          sub_100018F90(v203, &qword_1000FDAA8, &qword_1000CF6B0);
          v217 = *(v300 + 32);
          v218 = v284;
          v217(v284, v188, v201);
          v217(v144, v218, v201);
          (*(v139 + 104))(v144, enum case for FileTransferAttribute.AttachmentSubtype.audioMessage(_:), v145);
          v138 = v303;
        }

        v146 = v246;
LABEL_92:
        v147 = v265;
        goto LABEL_93;
      }
    }

    else
    {
    }

    v182 = v289;
    goto LABEL_124;
  }

  v171 = v160;
LABEL_119:
  sub_100018F90(v171, &qword_1000FDAA0, &qword_1000CF6A8);
  v185 = v297;
LABEL_151:
  sub_100018F90(v185, &qword_1000FDAA8, &qword_1000CF6B0);
}

double sub_10009771C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_10009B540(&qword_1000FC280, type metadata accessor for Key, &unk_1000C9004);
  v9 = sub_1000C5194();
  v8(v9, a3, a4, a5);

  return result;
}

uint64_t AudioMessageAttachmentInfo.init(audioMessageDict:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000C4674();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000C5224();
  if (!*(a1 + 16))
  {

LABEL_8:

    v21 = 1;
    return (*(v6 + 56))(a2, v21, 1, v5);
  }

  v11 = sub_100099FF8(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_10001D804(*(a1 + 56) + 32 * v11, v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = v23[2];
  v15 = v23[3];
  v16 = sub_1000C5224();
  if (*(a1 + 16))
  {
    v23[1] = v15;
    v25 = v14;
    v18 = sub_100099FF8(v16, v17);
    v20 = v19;

    if (v20)
    {
      sub_10001D804(*(a1 + 56) + 32 * v18, v24);

      swift_dynamicCast();
    }

    else
    {
    }
  }

  else
  {
  }

  result = sub_1000C4664();
  if (!v2)
  {
    (*(v6 + 32))(a2, v8, v5);
    v21 = 0;
    return (*(v6 + 56))(a2, v21, 1, v5);
  }

  return result;
}

void *sub_100097A60(uint64_t a1)
{
  v3 = sub_1000C4174();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v18 - v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  v11 = a1 + 32;
  v18[2] = v4 + 8;
  v19 = (v4 + 16);
  v18[1] = v4 + 32;
  v12 = _swiftEmptyArrayStorage;
  v20 = v7;
  while (1)
  {

    FileTransferAttribute.AttachmentInfo.init(attributes:)(v13, v9);
    if (v1)
    {
      break;
    }

    (*v19)(v7, v9, v3);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_100045568(0, v12[2] + 1, 1, v12);
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_100045568((v14 > 1), v15 + 1, 1, v12);
    }

    (*(v4 + 8))(v9, v3);
    v12[2] = v15 + 1;
    v16 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v15;
    v7 = v20;
    (*(v4 + 32))(v16, v20, v3);
    v11 += 8;
    if (!--v10)
    {
      return v12;
    }
  }

  return v12;
}

uint64_t StickerAttachmentInfo.init(stickerDict:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000C4274();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return (*(v6 + 56))(a2, 1, 1, v5);
  }

  v9 = sub_1000C5224();
  if (!*(a1 + 16))
  {
    goto LABEL_21;
  }

  v138 = v8;
  v134 = a2;
  v11 = sub_100099FF8(v9, v10);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_10001D804(*(a1 + 56) + 32 * v11, v137);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v15 = v135;
  v14 = v136;
  v16 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_22;
  }

  v132 = v15;
  v133 = v14;
  v18 = sub_100099FF8(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0 || (sub_10001D804(*(a1 + 56) + 32 * v18, v137), (swift_dynamicCast() & 1) == 0))
  {
LABEL_21:

LABEL_22:

    sub_1000C5224();
    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  v22 = v135;
  v21 = v136;
  v23 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_21;
  }

  v130 = v22;
  v131 = v21;
  v25 = sub_100099FF8(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0)
  {

    goto LABEL_21;
  }

  sub_10001D804(*(a1 + 56) + 32 * v25, v137);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_21;
  }

  v128 = v136;
  v129 = v135;
  v28 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_31;
  }

  v30 = sub_100099FF8(v28, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_31:
    v126 = 0;
    v127 = 0;
    goto LABEL_32;
  }

  sub_10001D804(*(a1 + 56) + 32 * v30, v137);
  v33 = swift_dynamicCast();
  if (v33)
  {
    v34 = v135;
  }

  else
  {
    v34 = 0;
  }

  if (v33)
  {
    v35 = v136;
  }

  else
  {
    v35 = 0;
  }

  v126 = v35;
  v127 = v34;
LABEL_32:
  v37 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_42;
  }

  v39 = sub_100099FF8(v37, v38);
  v41 = v40;

  if ((v41 & 1) == 0)
  {
LABEL_42:
    v124 = 0;
    v125 = 0;
    goto LABEL_43;
  }

  sub_10001D804(*(a1 + 56) + 32 * v39, v137);
  v42 = swift_dynamicCast();
  if (v42)
  {
    v43 = v135;
  }

  else
  {
    v43 = 0;
  }

  if (v42)
  {
    v44 = v136;
  }

  else
  {
    v44 = 0;
  }

  v124 = v44;
  v125 = v43;
LABEL_43:
  v45 = sub_1000C5224();
  if (*(a1 + 16))
  {
    v47 = sub_100099FF8(v45, v46);
    v49 = v48;

    if (v49)
    {
      sub_10001D804(*(a1 + 56) + 32 * v47, v137);
      if (swift_dynamicCast())
      {
        v123 = sub_1000931CC(v135, v136);
        v122 = v50;
        goto LABEL_49;
      }
    }
  }

  else
  {
  }

  v123 = 0;
  v122 = 1;
LABEL_49:
  v51 = sub_1000C5224();
  if (*(a1 + 16))
  {
    v53 = sub_100099FF8(v51, v52);
    v55 = v54;

    if (v55)
    {
      sub_10001D804(*(a1 + 56) + 32 * v53, v137);
      if (swift_dynamicCast())
      {
        v121 = sub_1000931CC(v135, v136);
        v120 = v56;
        goto LABEL_55;
      }
    }
  }

  else
  {
  }

  v121 = 0;
  v120 = 1;
LABEL_55:
  v57 = sub_1000C5224();
  if (!*(a1 + 16))
  {

LABEL_62:
    v119 = 0;
    v64 = 1;
    goto LABEL_63;
  }

  v59 = sub_100099FF8(v57, v58);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
    goto LABEL_62;
  }

  sub_10001D804(*(a1 + 56) + 32 * v59, v137);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_62;
  }

  v137[0] = 0;
  v62 = sub_10009B378(v135, v136, v137);

  v63 = v137[0];
  if (!v62)
  {
    v63 = 0;
  }

  v119 = v63;
  v64 = !v62;
LABEL_63:
  v118 = v64;
  v65 = sub_1000C5224();
  if (!*(a1 + 16))
  {

LABEL_71:
    v71 = 0;
    v72 = 1;
    goto LABEL_72;
  }

  v67 = sub_100099FF8(v65, v66);
  v69 = v68;

  if ((v69 & 1) == 0)
  {
    goto LABEL_71;
  }

  sub_10001D804(*(a1 + 56) + 32 * v67, v137);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_71;
  }

  v137[0] = 0;
  v70 = sub_10009B378(v135, v136, v137);

  if (v70)
  {
    v71 = v137[0];
  }

  else
  {
    v71 = 0;
  }

  v72 = !v70;
LABEL_72:
  v73 = sub_1000C5224();
  if (!*(a1 + 16))
  {

LABEL_79:
    v79 = 0;
    v80 = 1;
    goto LABEL_80;
  }

  v75 = sub_100099FF8(v73, v74);
  v77 = v76;

  if ((v77 & 1) == 0)
  {
    goto LABEL_79;
  }

  sub_10001D804(*(a1 + 56) + 32 * v75, v137);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_79;
  }

  v137[0] = 0;
  v78 = sub_10009B378(v135, v136, v137);

  v79 = v137[0];
  if (!v78)
  {
    v79 = 0;
  }

  v80 = !v78;
LABEL_80:
  v115 = v72 | v80;
  v81 = ((v72 | v80) & 1) == 0;
  if ((v72 | v80))
  {
    v82 = 0;
  }

  else
  {
    v82 = v71;
  }

  v117 = v82;
  if (!v81)
  {
    v79 = 0;
  }

  v116 = v79;
  v83 = sub_1000C5224();
  if (!*(a1 + 16))
  {

LABEL_92:
    v89 = 0;
    v90 = 1;
    goto LABEL_93;
  }

  v85 = sub_100099FF8(v83, v84);
  v87 = v86;

  if ((v87 & 1) == 0)
  {
    goto LABEL_92;
  }

  sub_10001D804(*(a1 + 56) + 32 * v85, v137);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_92;
  }

  v137[0] = 0;
  v88 = sub_10009B378(v135, v136, v137);

  v89 = v137[0];
  if (!v88)
  {
    v89 = 0;
  }

  v90 = !v88;
LABEL_93:
  v113 = v90;
  v114 = v89;
  v91 = sub_1000C5224();
  if (*(a1 + 16))
  {
    v93 = sub_100099FF8(v91, v92);
    v95 = v94;

    if (v95)
    {
      sub_10001D804(*(a1 + 56) + 32 * v93, v137);
      if (swift_dynamicCast())
      {
        v137[0] = 0;
        v96 = sub_10009B378(v135, v136, v137);

        v97 = !v96;
        goto LABEL_99;
      }
    }
  }

  else
  {
  }

  v97 = 1;
LABEL_99:
  v112 = v97;
  v98 = sub_1000C5224();
  if (*(a1 + 16))
  {
    v100 = sub_100099FF8(v98, v99);
    v102 = v101;

    if (v102)
    {
      sub_10001D804(*(a1 + 56) + 32 * v100, v137);
      if (swift_dynamicCast())
      {
        sub_1000931CC(v135, v136);
        HIDWORD(v111) = v103;
        goto LABEL_105;
      }
    }
  }

  else
  {
  }

  HIDWORD(v111) = 1;
LABEL_105:
  v104 = sub_1000C5224();
  if (*(a1 + 16))
  {
    v106 = sub_100099FF8(v104, v105);
    v108 = v107;

    if (v108)
    {
      sub_10001D804(*(a1 + 56) + 32 * v106, v137);

      if (swift_dynamicCast())
      {
        v109 = v138;
        if (v135 == 49 && v136 == 0xE100000000000000)
        {
        }

        else
        {
          sub_1000C5C04();
        }
      }

      else
      {
        v109 = v138;
      }

      goto LABEL_113;
    }
  }

  else
  {
  }

  v109 = v138;
LABEL_113:
  result = sub_1000C4264();
  if (!v2)
  {
    v110 = v134;
    (*(v6 + 32))(v134, v109, v5);
    return (*(v6 + 56))(v110, 0, 1, v5);
  }

  return result;
}

uint64_t AudioMessageAttachmentInfo.init(transcription:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_1000C4674();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000C4664();
  if (!v3)
  {
    (*(v6 + 32))(a3, v8, v5);
    return (*(v6 + 56))(a3, 0, 1, v5);
  }

  return result;
}

uint64_t EmojiImageAttachmentInfo.init(contentIdentifier:shortDescription:stickerDict:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a5)
  {

    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
LABEL_19:
    sub_1000C4FB4();
    return swift_willThrow();
  }

  v6 = sub_1000C5224();
  if (!*(a5 + 16))
  {

    goto LABEL_16;
  }

  v8 = sub_100099FF8(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_16:

LABEL_17:

LABEL_18:
    sub_1000C5224();
    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    goto LABEL_19;
  }

  sub_10001D804(*(a5 + 56) + 32 * v8, v32);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v11 = sub_1000C5224();
  if (!*(a5 + 16))
  {
LABEL_24:

    goto LABEL_17;
  }

  v13 = sub_100099FF8(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0 || (sub_10001D804(*(a5 + 56) + 32 * v13, v32), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_17;
  }

  v16 = sub_1000C5224();
  if (!*(a5 + 16))
  {

    goto LABEL_18;
  }

  v18 = sub_100099FF8(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_10001D804(*(a5 + 56) + 32 * v18, v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v21 = sub_1000C5224();
  if (*(a5 + 16))
  {
    v23 = sub_100099FF8(v21, v22);
    v25 = v24;

    if (v25)
    {
      sub_10001D804(*(a5 + 56) + 32 * v23, v32);
      swift_dynamicCast();
    }
  }

  else
  {
  }

  v27 = sub_1000C5224();
  if (!*(a5 + 16))
  {

    goto LABEL_30;
  }

  v29 = sub_100099FF8(v27, v28);
  v31 = v30;

  if ((v31 & 1) == 0)
  {
LABEL_30:

    return sub_1000C44C4();
  }

  sub_10001D804(*(a5 + 56) + 32 * v29, v32);

  swift_dynamicCast();
  return sub_1000C44C4();
}

uint64_t FileTransferAttribute.ImageInfo.init(imageDict:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_1000C41C4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_12;
  }

  v12 = sub_100099FF8(v10, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_10001D804(*(a1 + 56) + 32 * v12, v32);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v16 = v30;
  v15 = v31;
  v17 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_12;
  }

  v28 = v16;
  v29 = v15;
  v19 = sub_100099FF8(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {

    goto LABEL_12;
  }

  sub_10001D804(*(a1 + 56) + 32 * v19, v32);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:

    v27 = 1;
    return (*(v7 + 56))(a2, v27, 1, v6);
  }

  v23 = v30;
  v22 = v31;
  v32[0] = 0;
  v24 = sub_10009B378(v28, v29, v32);

  if (!v24)
  {

    goto LABEL_19;
  }

  v32[0] = 0;
  v25 = sub_10009B378(v23, v22, v32);

  if (!v25)
  {
LABEL_19:
    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  result = sub_1000C41B4();
  if (v3)
  {
    return result;
  }

  (*(v7 + 32))(a2, v9, v6);
  v27 = 0;
  return (*(v7 + 56))(a2, v27, 1, v6);
}

unsigned __int8 *FileTransferAttribute.AttachmentInfo.init(attributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000124CC(&qword_1000FC3E8, &unk_1000C9E10);
  __chkstk_darwin(v5 - 8);
  v7 = v66 - v6;
  v8 = sub_1000C14E4();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v66 - v13;
  v79 = "FileTransferAttribute.ImageInfo";
  v15 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_7;
  }

  v71 = a2;
  v72 = v2;
  v73 = v9;
  v17 = sub_100099FF8(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_7:

    sub_1000C5224();
    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  sub_10001D804(*(a1 + 56) + 32 * v17, v77);
  sub_10001D8C8(v77, v78);
  sub_10001D804(v78, v77);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_9;
  }

  sub_1000C14C4();

  v20 = v73;
  if ((*(v73 + 48))(v7, 1, v8) == 1)
  {

    sub_100018F90(v7, &qword_1000FC3E8, &unk_1000C9E10);
LABEL_9:
    sub_1000C5224();
    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    return sub_100015F68(v78);
  }

  (*(v20 + 32))(v14, v7, v8);
  v22 = sub_1000C5224();
  if (!*(a1 + 16))
  {
    goto LABEL_39;
  }

  v24 = sub_100099FF8(v22, v23);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
    goto LABEL_40;
  }

  sub_10001D804(*(a1 + 56) + 32 * v24, v77);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_40;
  }

  v27 = *(&v76[0] + 1);
  v28 = *&v76[0];
  v29 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_40;
  }

  v69 = v28;
  v70 = v27;
  v31 = sub_100099FF8(v29, v30);
  v33 = v32;

  if ((v33 & 1) == 0 || (sub_10001D804(*(a1 + 56) + 32 * v31, v77), (swift_dynamicCast() & 1) == 0))
  {
LABEL_39:

LABEL_40:

LABEL_41:
    sub_1000C5224();
    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
LABEL_42:
    (*(v73 + 8))(v14, v8);
    return sub_100015F68(v78);
  }

  v34 = *(&v76[0] + 1);
  v35 = *&v76[0];
  v36 = sub_1000C5224();
  if (!*(a1 + 16))
  {

    goto LABEL_47;
  }

  v66[1] = v35;
  v68 = v34;
  v38 = sub_100099FF8(v36, v37);
  v40 = v39;

  if ((v40 & 1) == 0)
  {
LABEL_47:

    goto LABEL_41;
  }

  sub_10001D804(*(a1 + 56) + 32 * v38, v76);
  sub_10001D8C8(v76, v77);
  sub_10001D804(v77, v76);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_97:

    sub_1000C5224();
    sub_1000C4FC4();
    sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
LABEL_106:
    sub_1000C4FB4();
    swift_willThrow();
    goto LABEL_107;
  }

  result = v74;
  v41 = HIBYTE(v75) & 0xF;
  v42 = v74 & 0xFFFFFFFFFFFFLL;
  if ((v75 & 0x2000000000000000) != 0)
  {
    v43 = HIBYTE(v75) & 0xF;
  }

  else
  {
    v43 = v74 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43)
  {

    goto LABEL_97;
  }

  if ((v75 & 0x1000000000000000) != 0)
  {
    sub_10009A3F4(v74, v75, 10);
    v67 = v58;
    v60 = v59;

    if (v60)
    {
      goto LABEL_97;
    }

    goto LABEL_99;
  }

  if ((v75 & 0x2000000000000000) == 0)
  {
    if ((v74 & 0x1000000000000000) != 0)
    {
      result = ((v75 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_1000C5984();
    }

    v44 = *result;
    if (v44 == 43)
    {
      if (v42 >= 1)
      {
        v41 = v42 - 1;
        if (v42 != 1)
        {
          if (result)
          {
            v67 = 0;
            v50 = result + 1;
            while (1)
            {
              v51 = *v50 - 48;
              if (v51 > 9)
              {
                goto LABEL_93;
              }

              if (!is_mul_ok(v67, 0xAuLL))
              {
                goto LABEL_93;
              }

              v47 = __CFADD__(10 * v67, v51);
              v67 = 10 * v67 + v51;
              if (v47)
              {
                goto LABEL_93;
              }

              ++v50;
              if (!--v41)
              {
                goto LABEL_94;
              }
            }
          }

          goto LABEL_84;
        }

        goto LABEL_93;
      }

      goto LABEL_111;
    }

    if (v44 != 45)
    {
      if (v42)
      {
        if (result)
        {
          v67 = 0;
          while (1)
          {
            v54 = *result - 48;
            if (v54 > 9)
            {
              goto LABEL_93;
            }

            if (!is_mul_ok(v67, 0xAuLL))
            {
              goto LABEL_93;
            }

            v47 = __CFADD__(10 * v67, v54);
            v67 = 10 * v67 + v54;
            if (v47)
            {
              goto LABEL_93;
            }

            ++result;
            if (!--v42)
            {
              goto LABEL_85;
            }
          }
        }

        goto LABEL_84;
      }

LABEL_93:
      v67 = 0;
      LOBYTE(v41) = 1;
      goto LABEL_94;
    }

    if (v42 >= 1)
    {
      v41 = v42 - 1;
      if (v42 != 1)
      {
        if (result)
        {
          v67 = 0;
          v45 = result + 1;
          while (1)
          {
            v46 = *v45 - 48;
            if (v46 > 9)
            {
              goto LABEL_93;
            }

            if (!is_mul_ok(v67, 0xAuLL))
            {
              goto LABEL_93;
            }

            v47 = 10 * v67 >= v46;
            v67 = 10 * v67 - v46;
            if (!v47)
            {
              goto LABEL_93;
            }

            ++v45;
            if (!--v41)
            {
              goto LABEL_94;
            }
          }
        }

LABEL_84:
        v67 = 0;
LABEL_85:
        LOBYTE(v41) = 0;
LABEL_94:
        LOBYTE(v74) = v41;
        v57 = v41;

        if (v57)
        {
          goto LABEL_97;
        }

LABEL_99:
        v61 = sub_1000C5224();
        if (*(a1 + 16))
        {
          v63 = sub_100099FF8(v61, v62);
          v65 = v64;

          if (v65)
          {
            sub_10001D804(*(a1 + 56) + 32 * v63, v76);

            if (swift_dynamicCast())
            {
              (*(v73 + 16))(v12, v14, v8);
              sub_1000C4164();
LABEL_107:
              sub_100015F68(v77);
              goto LABEL_42;
            }

            goto LABEL_105;
          }
        }

        else
        {
        }

LABEL_105:

        sub_1000C5224();
        sub_1000C4FC4();
        sub_10009B540(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        goto LABEL_106;
      }

      goto LABEL_93;
    }

    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  *&v76[0] = v74;
  *(&v76[0] + 1) = v75 & 0xFFFFFFFFFFFFFFLL;
  if (v74 != 43)
  {
    if (v74 != 45)
    {
      if (v41)
      {
        v67 = 0;
        v55 = v76;
        while (1)
        {
          v56 = *v55 - 48;
          if (v56 > 9)
          {
            break;
          }

          if (!is_mul_ok(v67, 0xAuLL))
          {
            break;
          }

          v47 = __CFADD__(10 * v67, v56);
          v67 = 10 * v67 + v56;
          if (v47)
          {
            break;
          }

          ++v55;
          if (!--v41)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_93;
    }

    if (v41)
    {
      if (--v41)
      {
        v67 = 0;
        v48 = v76 + 1;
        while (1)
        {
          v49 = *v48 - 48;
          if (v49 > 9)
          {
            break;
          }

          if (!is_mul_ok(v67, 0xAuLL))
          {
            break;
          }

          v47 = 10 * v67 >= v49;
          v67 = 10 * v67 - v49;
          if (!v47)
          {
            break;
          }

          ++v48;
          if (!--v41)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_93;
    }

    goto LABEL_110;
  }

  if (v41)
  {
    if (--v41)
    {
      v67 = 0;
      v52 = v76 + 1;
      while (1)
      {
        v53 = *v52 - 48;
        if (v53 > 9)
        {
          break;
        }

        if (!is_mul_ok(v67, 0xAuLL))
        {
          break;
        }

        v47 = __CFADD__(10 * v67, v53);
        v67 = 10 * v67 + v53;
        if (v47)
        {
          break;
        }

        ++v52;
        if (!--v41)
        {
          goto LABEL_94;
        }
      }
    }

    goto LABEL_93;
  }

LABEL_112:
  __break(1u);
  return result;
}

uint64_t sub_100099F6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_100099F84(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_1000124CC(&qword_1000FD870, &qword_1000CEEF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_100099FF8(uint64_t a1, uint64_t a2)
{
  sub_1000C5CB4();
  sub_1000C52C4();
  v4 = sub_1000C5CD4();

  return sub_10009A168(a1, a2, v4);
}

unint64_t sub_10009A070(uint64_t a1)
{
  sub_1000C5CB4();
  type metadata accessor for CFString(0);
  sub_10009B540(&qword_1000FDAC0, type metadata accessor for CFString, &unk_1000C92E8);
  sub_1000C16D4();
  v2 = sub_1000C5CD4();

  return sub_10009A220(a1, v2);
}

unint64_t sub_10009A124(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000C58F4(*(v2 + 40));

  return sub_10009A32C(a1, v4);
}

unint64_t sub_10009A168(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1000C5C04())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10009A220(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_10009B540(&qword_1000FDAC0, type metadata accessor for CFString, &unk_1000C92E8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1000C16C4();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10009A32C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100046C50(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_1000C5904();
      sub_100046CAC(v8);
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

void sub_10009A3F4(uint64_t a1, uint64_t a2, int64_t a3)
{
  v72 = a1;
  v73 = a2;

  v4 = sub_1000C5364();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10009AF04(v4, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1000C5984();
      v8 = v71;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v7)
          {
            v25 = 0;
            v26 = v7 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (is_mul_ok(v25, a3))
              {
                v29 = v25 * a3;
                v30 = v27 + v28;
                v20 = __CFADD__(v29, v30);
                v25 = v29 + v30;
                if (!v20)
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (v7)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v7;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (is_mul_ok(v34, a3))
            {
              v37 = v34 * a3;
              v38 = v35 + v36;
              v20 = __CFADD__(v37, v38);
              v34 = v37 + v38;
              if (!v20)
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (is_mul_ok(v14, a3))
            {
              v18 = v14 * a3;
              v19 = v16 + v17;
              v20 = v18 >= v19;
              v14 = v18 - v19;
              if (v20)
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:

      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v72 = v6;
  v73 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v62 = 0;
        v63 = a3 + 48;
        v64 = a3 + 55;
        v65 = a3 + 87;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (is_mul_ok(v62, a3))
          {
            v69 = v62 * a3;
            v70 = v67 + v68;
            v20 = __CFADD__(v69, v70);
            v62 = v69 + v70;
            if (!v20)
            {
              v66 = (v66 + 1);
              if (--v41)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v72 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (is_mul_ok(v43, a3))
          {
            v50 = v43 * a3;
            v51 = v48 + v49;
            v20 = v50 >= v51;
            v43 = v50 - v51;
            if (v20)
            {
              ++v47;
              if (--v42)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v53 = 0;
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

      v57 = &v72 + 1;
      while (1)
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
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

        if (is_mul_ok(v53, a3))
        {
          v60 = v53 * a3;
          v61 = v58 + v59;
          v20 = __CFADD__(v60, v61);
          v53 = v60 + v61;
          if (!v20)
          {
            ++v57;
            if (--v52)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

void sub_10009A978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_1000C5364();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10009AF04(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_1000C5984();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
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

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_10009AF04(uint64_t a1, unint64_t a2)
{
  v2 = sub_1000C5374();
  v6 = sub_10009AF84(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_10009AF84(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1000C5874();
    if (!v9 || (v10 = v9, v11 = sub_100099F84(v9, 0), v12 = sub_10009B0DC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1000C52B4();

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
      return sub_1000C52B4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1000C5984();
LABEL_4:

  return sub_1000C52B4();
}

unint64_t sub_10009B0DC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_10009B2FC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000C5324();
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
          result = sub_1000C5984();
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

    result = sub_10009B2FC(v12, a6, a7);
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

    result = sub_1000C5304();
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

unint64_t sub_10009B2FC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1000C5334();
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
    v5 = sub_1000C5314();
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

BOOL sub_10009B378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1000C5934();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

_BYTE *sub_10009B470@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void *sub_10009B4F0(void *result)
{
  if ((*(*(result[3] - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

uint64_t sub_10009B540(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10009B58C(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0xD000000000000012 && 0x80000001000D4EC0 == a2;
  if (v2 || (sub_1000C5C04() & 1) != 0 || a1 == 0x702E63696C627570 && a2 == 0xEA0000000000676ELL)
  {
    return 1;
  }

  if ((sub_1000C5C04() & 1) != 0 || a1 == 0xD000000000000014 && 0x80000001000D4E60 == a2)
  {
    return 1;
  }

  if ((sub_1000C5C04() & 1) != 0 || a1 == 0x682E63696C627570 && a2 == 0xEB00000000666965)
  {
    return 1;
  }

  v6 = sub_1000C5C04();
  v7 = a1 == 0x682E63696C627570 && a2 == 0xEB00000000636965;
  v8 = v7;
  if ((v6 & 1) != 0 || v8)
  {
    return 1;
  }

  v9 = sub_1000C5C04();
  v10 = a1 == 0x682E63696C627570 && a2 == 0xEC00000073636965;
  v11 = v10;
  if ((v9 & 1) != 0 || v11 || (sub_1000C5C04() & 1) != 0 || a1 == 0xD000000000000014 && 0x80000001000D81E0 == a2)
  {
    return 1;
  }

  return sub_1000C5C04();
}

void sub_10009B77C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v149 = a2;
  v144 = a5;
  v137 = a4;
  v140 = a6;
  v8 = sub_1000124CC(&qword_1000FC5A8, &qword_1000CEA40);
  __chkstk_darwin(v8 - 8);
  v10 = v110 - v9;
  v11 = sub_1000124CC(&qword_1000FD720, &qword_1000CEA48);
  __chkstk_darwin(v11 - 8);
  v139 = v110 - v12;
  v13 = sub_1000124CC(&qword_1000FD728, &qword_1000CEA50);
  __chkstk_darwin(v13 - 8);
  v138 = v110 - v14;
  v15 = sub_1000124CC(&qword_1000FD730, &qword_1000CEA58);
  __chkstk_darwin(v15 - 8);
  v142 = v110 - v16;
  v17 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  __chkstk_darwin(v17 - 8);
  v143 = v110 - v18;
  v19 = sub_1000C4E14();
  v145 = *(v19 - 8);
  v146 = v19;
  __chkstk_darwin(v19);
  v21 = v110 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000124CC(&qword_1000FD718, &unk_1000CEA30);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v110 - v26;
  v28 = sub_1000124CC(&qword_1000FC3B8, &qword_1000C9788);
  __chkstk_darwin(v28 - 8);
  v30 = v110 - v29;
  v31 = sub_1000C21D4();
  v141 = *(v31 - 8);
  __chkstk_darwin(v31);
  v148 = v110 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1000C4ED4();
  __chkstk_darwin(v33);
  v36 = v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = a1;
  if (!*a1)
  {
    sub_100014F70();
    v39 = sub_1000C5714();
    v40 = sub_1000C5554();
    sub_1000C1A44("<Sticker> No participants", 25, 2, &_mh_execute_header, v39, v40, _swiftEmptyArrayStorage);

    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();
LABEL_7:
    sub_1000C4FB4();
    swift_willThrow();
    return;
  }

  v134 = v10;
  v135 = v34;
  v147 = v36;

  v136 = a3;
  v37 = *(sub_1000C4DD4() + 16);

  if (!v37)
  {

    sub_100014F70();
    v41 = sub_1000C5714();
    v42 = sub_1000C5554();
    sub_1000C1A44("<Sticker> No attribution info.", 30, 2, &_mh_execute_header, v41, v42, _swiftEmptyArrayStorage);

    sub_1000C4FC4();
    sub_100018BFC();
    swift_allocError();
    goto LABEL_7;
  }

  v38 = v150;
  sub_1000C1994();
  v150 = v38;
  if (v38)
  {

    return;
  }

  sub_100018F28(v144, v30, &qword_1000FC3B8, &qword_1000C9788);
  v128 = type metadata accessor for MessageDictionary(0);
  v43 = (v151 + v128[54]);
  v44 = v43[1];
  v149 = *v43;
  v144 = v44;

  sub_10006CB0C(v27);
  v45 = _s14descr1000F0171O17AssociatedMessageVMa(0);
  v46 = *(v45 - 8);
  v130 = *(v46 + 48);
  v129 = v46 + 48;
  LODWORD(v131) = v130(v27, 1, v45);
  if (v131 == 1)
  {
    sub_10009C704(v27);
    v133 = 0;
    v132 = 0;
  }

  else
  {
    v47 = &v27[*(v45 + 28)];
    v49 = *v47;
    v48 = *(v47 + 1);
    v133 = v49;
    v132 = v48;
    sub_10009C76C(v27);
  }

  sub_10006CB0C(v25);
  v50 = v130(v25, 1, v45);
  v51 = v136;
  if (v50 == 1)
  {
    sub_10009C704(v25);
  }

  else
  {

    sub_10009C76C(v25);
  }

  (*(v145 + 16))(v21, v51, v146);
  v52 = v148;
  v53 = v150;
  sub_1000C4E24();
  if (v53)
  {
    (*(v135 + 8))(v147, v33);
    return;
  }

  (*(v141 + 104))(v52, enum case for TextMessage.MessageType.sticker(_:), v31);
  v54 = v128;
  v55 = v151;
  sub_100018F28(v151 + v128[18], v143, &qword_1000FC520, &qword_1000C9D20);
  v56 = (v55 + v54[31]);
  v57 = v56[1];
  v58 = (v55 + v54[32]);
  v59 = v58[1];
  v60 = (v55 + v54[33]);
  v61 = (v55 + v54[23]);
  v62 = (v55 + v54[24]);
  v63 = v55 + v54[21];
  v64 = (v55 + v54[22]);
  if (v64[1])
  {
    v65 = *v64;
    v66 = v64[1];
  }

  else
  {
    v66 = 0xE100000000000000;
    v65 = 56;
  }

  v67 = *v56;
  v68 = *v58;
  v69 = *v60;
  v70 = v60[1];
  v71 = v61[1];
  v132 = *v61;
  v149 = v71;
  v72 = v62[1];
  v131 = *v62;
  v146 = v72;
  v73 = (HIBYTE(v66) & 0xF);
  v130 = *v63;
  v74 = v65 & 0xFFFFFFFFFFFFLL;
  if ((v66 & 0x2000000000000000) != 0)
  {
    v75 = HIBYTE(v66) & 0xF;
  }

  else
  {
    v75 = v65 & 0xFFFFFFFFFFFFLL;
  }

  v76 = v63[8];
  v150 = 0;
  v144 = v59;
  v145 = v57;
  v141 = v69;
  v135 = v67;
  v136 = v68;
  v133 = v70;
  LODWORD(v129) = v76;
  if (!v75)
  {

    v127 = 0;
    v154 = 1;
LABEL_87:
    v95 = v128;
    v96 = v151;
    v97 = v151 + v128[25];
    v126 = *v97;
    v125 = v97[8];
    v98 = v151 + v128[35];
    v124 = *v98;
    v123 = v98[8];
    sub_100018F28(v137, v142, &qword_1000FD730, &qword_1000CEA58);
    v99 = v95[48];
    v100 = (v96 + v95[47]);
    v101 = v100[1];
    v137 = *v100;
    v120 = v101;
    v102 = *(v96 + v99 + 8);
    v122 = *(v96 + v99);
    v118 = v102;
    v103 = v95[50];
    v104 = (v96 + v95[49]);
    v105 = v104[1];
    v121 = *v104;
    v116 = v105;
    v106 = *(v96 + v103 + 8);
    v119 = *(v96 + v103);
    v114 = v106;
    v107 = v95[52];
    v117 = *(v96 + v95[51]);
    v115 = *(v96 + v107);

    sub_10008B5E0(v138);
    v112 = *(v96 + v95[45]);
    v113 = *(v96 + 97);
    v111 = v96[13];
    v110[3] = *(v96 + 112);

    sub_1000C21E4();
    sub_100018F28(v96 + v95[20], v134, &qword_1000FC5A8, &qword_1000CEA40);

    sub_1000C2204();
    return;
  }

  if ((v66 & 0x1000000000000000) != 0)
  {

    sub_10009A3F4(v65, v66, 10);
    v79 = v108;
    v93 = v109;
    goto LABEL_83;
  }

  if ((v66 & 0x2000000000000000) == 0)
  {
    if ((v65 & 0x1000000000000000) != 0)
    {
      v73 = ((v66 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v73 = sub_1000C5984();
    }

    v77 = *v73;
    if (v77 == 43)
    {
      if (v74 >= 1)
      {
        v85 = v74 - 1;
        if (v74 != 1)
        {
          v79 = 0;
          if (v73)
          {
            v86 = v73 + 1;
            while (1)
            {
              v87 = *v86 - 48;
              if (v87 > 9)
              {
                goto LABEL_81;
              }

              if (!is_mul_ok(v79, 0xAuLL))
              {
                goto LABEL_81;
              }

              v82 = __CFADD__(10 * v79, v87);
              v79 = 10 * v79 + v87;
              if (v82)
              {
                goto LABEL_81;
              }

              ++v86;
              if (!--v85)
              {
LABEL_73:
                LOBYTE(v73) = 0;
                goto LABEL_82;
              }
            }
          }

          goto LABEL_82;
        }

        goto LABEL_81;
      }

      goto LABEL_93;
    }

    if (v77 != 45)
    {
      if (v74)
      {
        v79 = 0;
        if (v73)
        {
          while (1)
          {
            v90 = *v73 - 48;
            if (v90 > 9)
            {
              goto LABEL_81;
            }

            if (!is_mul_ok(v79, 0xAuLL))
            {
              goto LABEL_81;
            }

            v82 = __CFADD__(10 * v79, v90);
            v79 = 10 * v79 + v90;
            if (v82)
            {
              goto LABEL_81;
            }

            ++v73;
            if (!--v74)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_82;
      }

LABEL_81:
      v79 = 0;
      LOBYTE(v73) = 1;
      goto LABEL_82;
    }

    if (v74 >= 1)
    {
      v78 = v74 - 1;
      if (v74 != 1)
      {
        v79 = 0;
        if (v73)
        {
          v80 = v73 + 1;
          while (1)
          {
            v81 = *v80 - 48;
            if (v81 > 9)
            {
              goto LABEL_81;
            }

            if (!is_mul_ok(v79, 0xAuLL))
            {
              goto LABEL_81;
            }

            v82 = 10 * v79 >= v81;
            v79 = 10 * v79 - v81;
            if (!v82)
            {
              goto LABEL_81;
            }

            ++v80;
            if (!--v78)
            {
              goto LABEL_73;
            }
          }
        }

LABEL_82:
        v153 = v73;
        v93 = v73;

LABEL_83:

        v154 = v93;
        if (v93)
        {
          v94 = 0;
        }

        else
        {
          v94 = v79;
        }

        v127 = v94;
        goto LABEL_87;
      }

      goto LABEL_81;
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v152[0] = v65;
  v152[1] = v66 & 0xFFFFFFFFFFFFFFLL;
  if (v65 != 43)
  {
    if (v65 != 45)
    {
      if (v73)
      {
        v79 = 0;
        v91 = v152;
        while (1)
        {
          v92 = *v91 - 48;
          if (v92 > 9)
          {
            break;
          }

          if (!is_mul_ok(v79, 0xAuLL))
          {
            break;
          }

          v82 = __CFADD__(10 * v79, v92);
          v79 = 10 * v79 + v92;
          if (v82)
          {
            break;
          }

          ++v91;
          if (!--v73)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    if (v73)
    {
      if (--v73)
      {
        v79 = 0;
        v83 = v152 + 1;
        while (1)
        {
          v84 = *v83 - 48;
          if (v84 > 9)
          {
            break;
          }

          if (!is_mul_ok(v79, 0xAuLL))
          {
            break;
          }

          v82 = 10 * v79 >= v84;
          v79 = 10 * v79 - v84;
          if (!v82)
          {
            break;
          }

          ++v83;
          if (!--v73)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_81;
    }

    goto LABEL_92;
  }

  if (v73)
  {
    if (--v73)
    {
      v79 = 0;
      v88 = v152 + 1;
      while (1)
      {
        v89 = *v88 - 48;
        if (v89 > 9)
        {
          break;
        }

        if (!is_mul_ok(v79, 0xAuLL))
        {
          break;
        }

        v82 = __CFADD__(10 * v79, v89);
        v79 = 10 * v79 + v89;
        if (v82)
        {
          break;
        }

        ++v88;
        if (!--v73)
        {
          goto LABEL_82;
        }
      }
    }

    goto LABEL_81;
  }

LABEL_94:
  __break(1u);
}

uint64_t sub_10009C704(uint64_t a1)
{
  v2 = sub_1000124CC(&qword_1000FD718, &unk_1000CEA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009C76C(uint64_t a1)
{
  v2 = _s14descr1000F0171O17AssociatedMessageVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009C820@<X0>(void (*a1)(uint64_t *, uint64_t *)@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a3 >> 60 == 15)
  {
    v6 = sub_1000C3054();
    return (*(*(v6 - 8) + 56))(a4, 1, 1, v6);
  }

  else
  {
    v11 = a2;
    v12 = a3;
    sub_100018C68(a2, a3);
    a1(&v11, &v10);
    result = sub_100018CD0(v11, v12);
    if (!v4)
    {
      v9 = sub_1000C3054();
      return (*(*(v9 - 8) + 56))(a4, 0, 1, v9);
    }
  }

  return result;
}

uint64_t sub_10009C934@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v336 = a5;
  v328 = sub_1000C3574();
  v319 = *(v328 - 8);
  v9 = __chkstk_darwin(v328);
  v318 = v263 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v263 - v11;
  v13 = sub_1000124CC(&qword_1000FDB40, &qword_1000CF730);
  v14 = __chkstk_darwin(v13 - 8);
  v323 = v263 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v322 = v263 - v17;
  __chkstk_darwin(v16);
  v324 = v263 - v18;
  v19 = sub_1000124CC(&qword_1000FDB48, &qword_1000CF738);
  v20 = __chkstk_darwin(v19 - 8);
  v321 = v263 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v325 = v263 - v22;
  v23 = sub_1000124CC(&qword_1000FD810, &unk_1000CF740);
  v24 = __chkstk_darwin(v23 - 8);
  v320 = v263 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = v263 - v27;
  __chkstk_darwin(v26);
  v326 = v263 - v29;
  v30 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  __chkstk_darwin(v30 - 8);
  v317 = v263 - v31;
  v32 = sub_1000C4D84();
  v33 = __chkstk_darwin(v32 - 8);
  v315 = v263 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v311 = v263 - v35;
  v36 = sub_1000C4D54();
  v313 = *(v36 - 8);
  v314 = v36;
  __chkstk_darwin(v36);
  v312 = v263 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = sub_1000C20D4();
  v331 = *(v330 - 8);
  v38 = __chkstk_darwin(v330);
  v327 = v263 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v329 = v263 - v40;
  v41 = sub_1000124CC(&qword_1000FDB50, &qword_1000CF750);
  __chkstk_darwin(v41 - 8);
  v334 = v263 - v42;
  v43 = sub_1000124CC(&qword_1000FDB58, &qword_1000CF758);
  __chkstk_darwin(v43 - 8);
  v333 = v263 - v44;
  v45 = sub_1000124CC(&qword_1000FDB60, &qword_1000CF760);
  v46 = __chkstk_darwin(v45 - 8);
  v316 = v263 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v332 = v263 - v48;
  v49 = sub_1000124CC(&qword_1000FDB68, &qword_1000CF768);
  __chkstk_darwin(v49 - 8);
  v335 = v263 - v50;
  v51 = sub_1000C5124();
  v339 = *(v51 - 8);
  __chkstk_darwin(v51);
  v53 = v263 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v338 = sub_1000124CC(&qword_1000FDB70, &qword_1000CF770);
  v337 = *(v338 - 8);
  __chkstk_darwin(v338);
  v340 = v263 - v54;
  v55 = sub_1000C4F54();
  v57 = v56 >> 62;
  if ((v56 >> 62) > 1)
  {
    if (v57 != 2)
    {
      sub_100018CD0(v55, v56);
      goto LABEL_32;
    }

    v309 = v28;
    v310 = v12;
    v59 = a1;
    v60 = a4;
    a4 = *(v55 + 16);
    a1 = *(v55 + 24);
    v55 = sub_100018CD0(v55, v56);
    v61 = a1 - a4;
    if (!__OFSUB__(a1, a4))
    {
LABEL_11:
      a4 = v60;
      a1 = v59;
      if (v61 != 16)
      {
        goto LABEL_32;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_9:
    v59 = a1;
    v60 = a4;
    a4 = HIDWORD(v55);
    v62 = v55;
    v63 = sub_100018CD0(v55, v56);
    LODWORD(v61) = a4 - v62;
    if (__OFSUB__(a4, v62))
    {
      __break(1u);
LABEL_99:
      sub_1000A4104(28023, 0xE200000000000000, a2, a3, v63, v64, v376);
      v300 = v59;
      if (v59)
      {
        sub_100018F90(&v365, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v369, &qword_1000FDB90, &unk_1000CF780);
        sub_1000A485C(v373);
        sub_100018CD0(v283, v341);
        sub_100018CD0(v285, v286);

        sub_100018CBC(v288, v290);
        sub_100018CBC(v293, v292);
        sub_100018CBC(v294, v301);
        sub_100018CBC(a2, v289);
        sub_100018CBC(v304, v295);
        sub_100018CBC(v302, v296);
        sub_100018CD0(v299, v303);

        result = sub_100018CBC(v308, v287);
        *a4 = v300;
        return result;
      }

      v361 = v376[0];
      v362 = v376[1];
      v363 = v376[2];
      v364 = v376[3];
      v132 = v299;
      goto LABEL_87;
    }

    v61 = v61;
    goto LABEL_11;
  }

  v309 = v28;
  v310 = v12;
  if (v57)
  {
    goto LABEL_9;
  }

  v58 = BYTE6(v56);
  sub_100018CD0(v55, v56);
  if (v58 != 16)
  {
    goto LABEL_32;
  }

LABEL_12:
  v307 = a1;
  sub_1000C4F64();
  v308 = sub_1000C1514();
  v66 = v65;

  if (v66 >> 60 == 15)
  {
LABEL_32:
    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v88 = swift_allocError();
    sub_1000C4FB4();
    result = swift_willThrow();
LABEL_33:
    *a4 = v88;
    return result;
  }

  v67 = v66 >> 62;
  if ((v66 >> 62) > 1)
  {
    if (v67 != 2)
    {
      goto LABEL_31;
    }

    v69 = *(v308 + 16);
    v68 = *(v308 + 24);
    v70 = __OFSUB__(v68, v69);
    v71 = v68 - v69;
    if (!v70)
    {
      if (v71 == 16)
      {
        goto LABEL_22;
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (v67)
  {
    if (!__OFSUB__(HIDWORD(v308), v308))
    {
      if (HIDWORD(v308) - v308 == 16)
      {
        goto LABEL_22;
      }

LABEL_31:
      sub_100018CBC(v308, v66);
      goto LABEL_32;
    }

    goto LABEL_115;
  }

  if (BYTE6(v66) != 16)
  {
    goto LABEL_31;
  }

LABEL_22:
  v72 = objc_opt_self();
  isa = sub_1000C1544().super.isa;
  *&v369 = 0;
  v74 = [v72 propertyListWithData:isa options:0 format:0 error:&v369];

  if (!v74)
  {
    v90 = v369;
    v91 = sub_1000C1474();

    swift_willThrow();
    result = sub_100018CBC(v308, v66);
    *a4 = v91;
    return result;
  }

  v306 = v72;
  v75 = v369;
  sub_1000C58C4();
  swift_unknownObjectRelease();
  sub_1000124CC(&qword_1000FDB78, &qword_1000CF778);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v88 = swift_allocError();
LABEL_37:
    sub_1000C4FB4();
    swift_willThrow();
LABEL_38:
    result = sub_100018CBC(v308, v66);
    goto LABEL_33;
  }

  v76 = v365;
  if (!*(v365 + 16) || (v77 = sub_100099FF8(110, 0xE100000000000000), (v78 & 1) == 0))
  {

    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v88 = swift_allocError();
    goto LABEL_37;
  }

  v79 = (*(v76 + 56) + 16 * v77);
  v80 = *v79;
  v81 = *(v76 + 16);
  v82 = *v79;
  v303 = v79[1];
  sub_100018C68(v82, v303);
  v305 = v76;
  if (v81 && (v83 = sub_100099FF8(28001, 0xE200000000000000), (v84 & 1) != 0))
  {
    v85 = (*(v76 + 56) + 16 * v83);
    v86 = *v85;
    v87 = v85[1];
    sub_100018C68(*v85, v87);
  }

  else
  {
    v86 = 0;
    v87 = 0xF000000000000000;
  }

  v302 = v86;
  v92 = v305;
  if (*(v305 + 16) && (v93 = sub_100099FF8(25697, 0xE200000000000000), (v94 & 1) != 0))
  {
    v95 = (*(v92 + 56) + 16 * v93);
    v96 = v95[1];
    v304 = *v95;
    sub_100018C68(v304, v96);
  }

  else
  {
    v304 = 0;
    v96 = 0xF000000000000000;
  }

  v300 = v87 >> 60;
  v298 = (v96 >> 60);
  if ((v87 >> 60 == 15) != (v96 >> 60 == 15))
  {

    sub_1000C4FC4();
    v97 = v96;
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v88 = swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    sub_100018CBC(v304, v97);
    sub_100018CBC(v302, v87);
    v98 = v80;
LABEL_46:
    sub_100018CD0(v98, v303);
    goto LABEL_38;
  }

  v295 = v96;
  v296 = v87;
  v99 = v305;
  v100 = *(v305 + 16);
  v299 = v80;
  if (!v100)
  {
    v105 = 0;
    v297 = 0;
    v294 = 0;
    v106 = 0xF000000000000000;
    v107 = 1;
    v104 = 0xF000000000000000;
LABEL_68:
    v301 = 0xF000000000000000;
    goto LABEL_69;
  }

  v101 = sub_100099FF8(28023, 0xE200000000000000);
  if (v102)
  {
    v103 = (*(v99 + 56) + 16 * v101);
    v104 = v103[1];
    v297 = *v103;
    sub_100018C68(v297, v104);
    if (!*(v99 + 16))
    {
      v105 = 0;
      v106 = 0xF000000000000000;
      if (v104 >> 60 == 15)
      {
        v107 = 1;
LABEL_67:
        v294 = 0;
        goto LABEL_68;
      }

      v294 = 0;
      v301 = 0xF000000000000000;
      goto LABEL_79;
    }
  }

  else
  {
    v105 = 0;
    v108 = *(v99 + 16);
    v106 = 0xF000000000000000;
    if (!v108)
    {
      v107 = 1;
      v104 = 0xF000000000000000;
      v297 = 0;
      goto LABEL_67;
    }

    v104 = 0xF000000000000000;
    v297 = 0;
    v99 = v305;
  }

  v109 = sub_100099FF8(25719, 0xE200000000000000);
  if (v110)
  {
    v111 = (*(v99 + 56) + 16 * v109);
    v112 = *v111;
    v113 = *v111;
    v301 = v111[1];
    sub_100018C68(v113, v301);
  }

  else
  {
    v112 = 0;
    v301 = 0xF000000000000000;
  }

  v114 = *(v99 + 16);
  v294 = v112;
  if (v114 && (v115 = sub_100099FF8(1685549676, 0xE400000000000000), (v116 & 1) != 0))
  {
    v117 = (*(v99 + 56) + 16 * v115);
    v105 = *v117;
    v106 = v117[1];
    sub_100018C68(*v117, v106);
  }

  else
  {
    v105 = 0;
    v106 = 0xF000000000000000;
  }

  if (v104 >> 60 == 15)
  {
    if (v301 >> 60 != 15 || v106 >> 60 != 15)
    {
      goto LABEL_81;
    }

    v107 = 1;
    goto LABEL_69;
  }

LABEL_79:
  v107 = 0;
  if (v301 >> 60 == 15 && v106 >> 60 == 15)
  {
LABEL_81:
    v293 = v105;

    sub_1000C4FC4();
    v135 = v106;
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v88 = swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    sub_100018CBC(v293, v135);
    sub_100018CBC(v294, v301);
    sub_100018CBC(v297, v104);
    sub_100018CBC(v304, v295);
    sub_100018CBC(v302, v296);
    v98 = v299;
    goto LABEL_46;
  }

LABEL_69:
  LODWORD(v284) = v107;
  v292 = v106;
  v293 = v105;
  v118 = v305;
  v119 = *(v305 + 16);
  v287 = v66;
  v289 = v104;
  if (v119 && (v120 = sub_100099FF8(6582881, 0xE300000000000000), (v121 & 1) != 0))
  {
    v122 = (*(v118 + 56) + 16 * v120);
    v123 = v122[1];
    v288 = *v122;
    v290 = v123;
    sub_100018C68(v288, v123);
  }

  else
  {
    v288 = 0;
    v290 = 0xF000000000000000;
  }

  v124 = sub_1000C4F54();
  v126 = v125;
  sub_1000A3D7C(v124, v125, &v369);
  v285 = *(&v369 + 1);
  v291 = v369;
  v127 = *(&v370 + 1);
  v286 = v370;
  v128 = v371;
  sub_100018CD0(v124, v126);
  v129 = v299;
  v130 = v303;
  sub_100018C68(v299, v303);
  v131 = v341;
  sub_1000A4104(110, 0xE100000000000000, v129, v130, 0, 0xF000000000000000, v373);
  v59 = v131;
  if (v131)
  {
    sub_100018CD0(v127, v128);
    sub_100018CD0(v285, v286);

    sub_100018CBC(v288, v290);
    sub_100018CBC(v293, v292);
    sub_100018CBC(v294, v301);
    sub_100018CBC(v297, v289);
    sub_100018CBC(v304, v295);
    sub_100018CBC(v302, v296);
    sub_100018CD0(v129, v130);

    result = sub_100018CBC(v308, v287);
    *a4 = v131;
    return result;
  }

  v132 = v129;
  v283 = v127;
  v341 = v128;
  if (v300 <= 0xE)
  {
    v133 = v302;
    v134 = v296;
    sub_100018C68(v302, v296);
    sub_1000A4104(28001, 0xE200000000000000, v133, v134, 0, 0xF000000000000000, v374);
    v369 = v374[0];
    v370 = v374[1];
    v371 = v374[2];
    v372 = v374[3];
    v59 = 0;
  }

  else
  {
    v372 = 0u;
    v371 = 0u;
    v370 = 0u;
    v369 = 0u;
  }

  if (v298 < 0xF)
  {
    v136 = v295;
    v137 = v304;
    sub_100018C68(v304, v295);
    v304 = v137;
    sub_1000A4104(25697, 0xE200000000000000, v137, v136, 0, 0xF000000000000000, v375);
    v59 = 0;
    v365 = v375[0];
    v366 = v375[1];
    v367 = v375[2];
    v368 = v375[3];
    v132 = v299;
  }

  else
  {
    v368 = 0u;
    v367 = 0u;
    v366 = 0u;
    v365 = 0u;
  }

  a2 = v297;
  if (!v284)
  {
    a3 = v289;
    sub_100018C68(v297, v289);
    v63 = sub_1000C4F24();
    if (v64 >> 60 == 15)
    {
      sub_100018CBC(a2, a3);

      *&v357 = 0xD000000000000064;
      *(&v357 + 1) = 0x80000001000D84C0;
      *&v353 = 111;
      v386._countAndFlagsBits = sub_1000C5BE4();
      sub_1000C52E4(v386);

      v387._countAndFlagsBits = 58;
      v387._object = 0xE100000000000000;
      sub_1000C52E4(v387);
      v388._countAndFlagsBits = 0xD000000000000014;
      v388._object = 0x80000001000D8570;
      sub_1000C52E4(v388);
      sub_1000C4FC4();
      sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v88 = swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CBC(v308, v287);
      sub_100018CBC(v304, v295);
      sub_100018CBC(v302, v296);
      sub_100018CD0(v299, v303);
      sub_100018CBC(v293, v292);
      sub_100018CBC(v294, v301);
      sub_100018CBC(a2, a3);
      sub_100018CBC(v288, v290);
      sub_100018F90(&v365, &qword_1000FDB90, &unk_1000CF780);
      v141 = &v369;
LABEL_104:
      sub_100018F90(v141, &qword_1000FDB90, &unk_1000CF780);
      sub_100018CD0(v283, v341);
      sub_100018CD0(v285, v286);

      result = sub_1000A485C(v373);
      goto LABEL_33;
    }

    goto LABEL_99;
  }

  v363 = 0u;
  v364 = 0u;
  v361 = 0u;
  v362 = 0u;
LABEL_87:
  v138 = v292;
  v139 = v301;
  if (v301 >> 60 == 15)
  {
    v359 = 0u;
    v360 = 0u;
    v357 = 0u;
    v358 = 0u;
  }

  else
  {
    v142 = v294;
    sub_100018C68(v294, v301);
    v143 = sub_1000C4EF4();
    if (v144 >> 60 == 15)
    {
      sub_100018CBC(v142, v139);

      *&v353 = 0xD000000000000064;
      *(&v353 + 1) = 0x80000001000D84C0;
      *&v349 = 112;
      v389._countAndFlagsBits = sub_1000C5BE4();
      sub_1000C52E4(v389);

      v390._countAndFlagsBits = 58;
      v390._object = 0xE100000000000000;
      sub_1000C52E4(v390);
      v391._countAndFlagsBits = 0xD000000000000010;
      v391._object = 0x80000001000D8550;
      sub_1000C52E4(v391);
      sub_1000C4FC4();
      sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v88 = swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CBC(v308, v287);
      sub_100018CBC(v304, v295);
      sub_100018CBC(v302, v296);
      sub_100018CD0(v299, v303);
      sub_100018CBC(v293, v292);
      sub_100018CBC(v142, v139);
      sub_100018CBC(v297, v289);
      sub_100018CBC(v288, v290);
      sub_100018F90(&v365, &qword_1000FDB90, &unk_1000CF780);
      v145 = &v369;
LABEL_103:
      sub_100018F90(v145, &qword_1000FDB90, &unk_1000CF780);
      v141 = &v361;
      goto LABEL_104;
    }

    sub_1000A4104(25719, 0xE200000000000000, v142, v139, v143, v144, v377);
    v300 = 0;
    v357 = v377[0];
    v358 = v377[1];
    v359 = v377[2];
    v360 = v377[3];
    v132 = v299;
    v138 = v292;
  }

  v300 = 0;
  if (v138 >> 60 == 15)
  {
    v298 = a4;
    v355 = 0u;
    v356 = 0u;
    v353 = 0u;
    v354 = 0u;
    goto LABEL_91;
  }

  v146 = v293;
  sub_100018C68(v293, v138);
  v147 = sub_1000C4F34();
  if (v148 >> 60 == 15)
  {
    sub_100018CBC(v146, v138);

    v340 = "portraitLayerStack";
    *&v349 = 0xD000000000000064;
    *(&v349 + 1) = 0x80000001000D84C0;
    *&v343 = 113;
    v392._countAndFlagsBits = sub_1000C5BE4();
    sub_1000C52E4(v392);

    v393._countAndFlagsBits = 58;
    v393._object = 0xE100000000000000;
    sub_1000C52E4(v393);
    v394._countAndFlagsBits = 0xD000000000000016;
    v394._object = 0x80000001000D8530;
    sub_1000C52E4(v394);
    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v88 = swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    sub_100018CBC(v308, v287);
    sub_100018CBC(v304, v295);
    sub_100018CBC(v302, v296);
    sub_100018CD0(v132, v303);
    sub_100018CBC(v146, v138);
    sub_100018CBC(v294, v301);
    sub_100018CBC(v297, v289);
    sub_100018CBC(v288, v290);
    sub_100018F90(&v365, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v369, &qword_1000FDB90, &unk_1000CF780);
    v145 = &v357;
    goto LABEL_103;
  }

  v298 = a4;
  v154 = v300;
  sub_1000A4104(1685549676, 0xE400000000000000, v146, v138, v147, v148, v378);
  v300 = v154;
  if (v154)
  {
    goto LABEL_113;
  }

LABEL_116:
  v353 = v378[0];
  v354 = v378[1];
  v355 = v378[2];
  v356 = v378[3];
LABEL_91:
  if (v290 >> 60 != 15)
  {
    sub_100018C68(v288, v290);
    v149 = sub_1000C4F14();
    if (v150 >> 60 == 15)
    {
      v151 = v288;
      v152 = v290;
      sub_100018CBC(v288, v290);

      *&v343 = 0xD000000000000064;
      *(&v343 + 1) = 0x80000001000D84C0;
      v342[0] = 115;
      v395._countAndFlagsBits = sub_1000C5BE4();
      sub_1000C52E4(v395);

      v396._countAndFlagsBits = 58;
      v396._object = 0xE100000000000000;
      sub_1000C52E4(v396);
      v397._countAndFlagsBits = 0xD000000000000013;
      v397._object = 0x80000001000D84A0;
      sub_1000C52E4(v397);
      sub_1000C4FC4();
      sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v153 = swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CBC(v308, v287);
      sub_100018CBC(v304, v295);
      sub_100018CBC(v302, v296);
      sub_100018CD0(v299, v303);
      sub_100018CBC(v293, v292);
      sub_100018CBC(v294, v301);
      sub_100018CBC(v297, v289);
      sub_100018CBC(v151, v152);
      sub_100018F90(&v365, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v369, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v357, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v353, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v361, &qword_1000FDB90, &unk_1000CF780);
      sub_100018CD0(v283, v341);
      sub_100018CD0(v285, v286);

      result = sub_1000A485C(v373);
LABEL_128:
      *v298 = v153;
      return result;
    }

    v155 = v300;
    sub_1000A4104(6582881, 0xE300000000000000, v288, v290, v149, v150, v379);
    v300 = v155;
    if (!v155)
    {
      v349 = v379[0];
      v350 = v379[1];
      v351 = v379[2];
      v352 = v379[3];
      if (*(&v365 + 1))
      {
        goto LABEL_93;
      }

      goto LABEL_118;
    }

    sub_100018F90(&v353, &qword_1000FDB90, &unk_1000CF780);
LABEL_113:
    sub_100018F90(&v357, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v361, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v365, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v369, &qword_1000FDB90, &unk_1000CF780);
    sub_1000A485C(v373);
    sub_100018CD0(v283, v341);
    sub_100018CD0(v285, v286);

    sub_100018CBC(v288, v290);
    sub_100018CBC(v293, v292);
    sub_100018CBC(v294, v301);
    sub_100018CBC(v297, v289);
    sub_100018CBC(v304, v295);
    sub_100018CBC(v302, v296);
    sub_100018CD0(v299, v303);

    result = sub_100018CBC(v308, v287);
    *v298 = v300;
    return result;
  }

  v351 = 0u;
  v352 = 0u;
  v349 = 0u;
  v350 = 0u;
  if (*(&v365 + 1))
  {
LABEL_93:
    v140 = *(&v368 + 1);
    v284 = v368;
    sub_100018C68(v368, *(&v368 + 1));
    goto LABEL_119;
  }

LABEL_118:
  v284 = 0;
  v140 = 0xF000000000000000;
LABEL_119:
  if (*(&v369 + 1))
  {
    v156 = *(&v372 + 1);
    v282 = v372;
    sub_100018C68(v372, *(&v372 + 1));
  }

  else
  {
    v282 = 0;
    v156 = 0xF000000000000000;
  }

  v281 = v373[6];
  v343 = xmmword_1000CF6D0;
  if (v140 >> 60 != 15)
  {
    v157 = v284;
    sub_100018C68(v284, v140);
    sub_1000C1574();
    sub_100018CBC(v157, v140);
  }

  if (v156 >> 60 != 15)
  {
    v158 = v282;
    sub_100018C68(v282, v156);
    sub_1000C1574();
    sub_100018CBC(v158, v156);
  }

  sub_1000C1574();
  *v342 = v343;
  v159 = v283;
  v347 = v283;
  v160 = v341;
  v348 = v341;
  sub_100018C68(v343, *(&v343 + 1));
  sub_100018C68(v159, v160);
  sub_1000C5114();
  sub_1000C5164();
  sub_1000A4600(&qword_1000FDB80, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  sub_1000A4648();
  v161 = v340;
  sub_1000C5154();
  (*(v339 + 8))(v53, v51);
  sub_100018CD0(v342[0], v342[1]);
  v162 = v300;
  sub_1000A469C(v161, v308, v287, 16);
  v153 = v162;
  if (v162)
  {
    sub_100018CD0(v285, v286);

    sub_1000A485C(v373);
    sub_100018CBC(v282, v156);
    sub_100018CBC(v284, v140);

    sub_100018CBC(v308, v287);
    sub_100018CBC(v302, v296);
    sub_100018CBC(v304, v295);
    sub_100018CBC(v297, v289);
    sub_100018CBC(v294, v301);
    sub_100018CBC(v293, v292);
    sub_100018CBC(v288, v290);
    sub_100018F90(&v357, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v353, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v361, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v349, &qword_1000FDB90, &unk_1000CF780);
    sub_100018CD0(v283, v341);
    sub_100018F90(&v369, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v365, &qword_1000FDB90, &unk_1000CF780);
    sub_100018CD0(v299, v303);
    (*(v337 + 8))(v340, v338);
    result = sub_100018CD0(v343, *(&v343 + 1));
    goto LABEL_128;
  }

  sub_100018CBC(v282, v156);
  sub_100018CBC(v284, v140);
  (*(v337 + 8))(v340, v338);
  sub_100018CD0(v343, *(&v343 + 1));
  v339 = sub_1000A49E4(v373, v291, v285, v286);
  v340 = v163;
  if (sub_1000C4F04())
  {
    if (*(&v369 + 1))
    {
      v385[0] = v369;
      v385[1] = v370;
      v385[2] = v371;
      v385[3] = v372;
      v343 = v369;
      v344 = v370;
      v345 = v371;
      v346 = v372;
      sub_1000A4F44(&v343, v342);
      v337 = sub_1000A49E4(v385, v291, v285, v286);
      v338 = v164;
      sub_100018F90(&v369, &qword_1000FDB90, &unk_1000CF780);
    }

    else
    {
      v337 = 0;
      v338 = 0xF000000000000000;
    }

    if (*(&v365 + 1))
    {
      v384[0] = v365;
      v384[1] = v366;
      v384[2] = v367;
      v384[3] = v368;
      v343 = v365;
      v344 = v366;
      v345 = v367;
      v346 = v368;
      sub_1000A4F44(&v343, v342);
      v284 = sub_1000A49E4(v384, v291, v285, v286);
      v300 = v172;
      sub_100018F90(&v365, &qword_1000FDB90, &unk_1000CF780);
    }

    else
    {
      v284 = 0;
      v300 = 0xF000000000000000;
    }

    if (*(&v357 + 1))
    {
      v383[0] = v357;
      v383[1] = v358;
      v383[2] = v359;
      v383[3] = v360;
      v343 = v357;
      v344 = v358;
      v345 = v359;
      v346 = v360;
      sub_1000A4F44(&v343, v342);
      v281 = sub_1000A49E4(v383, v291, v285, v286);
      v282 = v173;
      sub_100018F90(&v357, &qword_1000FDB90, &unk_1000CF780);
    }

    else
    {
      v281 = 0;
      v282 = 0xF000000000000000;
    }

    if (*(&v353 + 1))
    {
      v382[0] = v353;
      v382[1] = v354;
      v382[2] = v355;
      v382[3] = v356;
      v343 = v353;
      v344 = v354;
      v345 = v355;
      v346 = v356;
      sub_1000A4F44(&v343, v342);
      v278 = sub_1000A49E4(v382, v291, v285, v286);
      v279 = v199;
      sub_100018F90(&v353, &qword_1000FDB90, &unk_1000CF780);
    }

    else
    {
      v278 = 0;
      v279 = 0xF000000000000000;
    }

    if (*(&v361 + 1))
    {
      v381[0] = v361;
      v381[1] = v362;
      v381[2] = v363;
      v381[3] = v364;
      v343 = v361;
      v344 = v362;
      v345 = v363;
      v346 = v364;
      sub_1000A4F44(&v343, v342);
      v277 = sub_1000A49E4(v381, v291, v285, v286);
      v280 = v203;
      sub_100018F90(&v361, &qword_1000FDB90, &unk_1000CF780);
    }

    else
    {
      v277 = 0;
      v280 = 0xF000000000000000;
    }

    if (*(&v349 + 1))
    {
      v380[0] = v349;
      v380[1] = v350;
      v380[2] = v351;
      v380[3] = v352;
      v343 = v349;
      v344 = v350;
      v345 = v351;
      v346 = v352;
      sub_1000A4F44(&v343, v342);
      v275 = sub_1000A49E4(v380, v291, v285, v286);
      v276 = v204;
      sub_100018F90(&v349, &qword_1000FDB90, &unk_1000CF780);
    }

    else
    {
      v275 = 0;
      v276 = 0xF000000000000000;
    }

    if ((v338 >> 60 == 15) != (v300 >> 60 == 15))
    {
      goto LABEL_142;
    }

    v230 = v282 >> 60 == 15 && v279 >> 60 == 15;
    if (v280 >> 60 == 15)
    {
      if (!v230)
      {
        goto LABEL_142;
      }
    }

    else if (v230)
    {
      goto LABEL_142;
    }
  }

  else
  {
    v277 = 0;
    v278 = 0;
    v284 = 0;
    v337 = 0;
    v275 = 0;
    v276 = 0xF000000000000000;
    v280 = 0xF000000000000000;
    v281 = 0;
    v279 = 0xF000000000000000;
    v282 = 0xF000000000000000;
    v300 = 0xF000000000000000;
    v338 = 0xF000000000000000;
  }

  v165 = sub_1000C1544().super.isa;
  *&v343 = 0;
  v166 = [v306 propertyListWithData:v165 options:0 format:0 error:&v343];

  if (!v166)
  {
    v169 = v343;

    v153 = sub_1000C1474();

LABEL_143:
    swift_willThrow();
    sub_100018CBC(v275, v276);
    sub_100018CBC(v308, v287);
    sub_100018CBC(v304, v295);
    sub_100018CBC(v302, v296);
    sub_100018CD0(v299, v303);
    sub_100018CBC(v294, v301);
    sub_100018CBC(v293, v292);
    sub_100018CBC(v297, v289);
    sub_100018CBC(v288, v290);
    sub_100018F90(&v365, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v369, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v357, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v353, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v361, &qword_1000FDB90, &unk_1000CF780);
    sub_100018F90(&v349, &qword_1000FDB90, &unk_1000CF780);
    sub_100018CD0(v339, v340);
    sub_100018CD0(v283, v341);
    sub_100018CD0(v285, v286);

    sub_1000A485C(v373);
    sub_100018CBC(v277, v280);
    sub_100018CBC(v278, v279);
    sub_100018CBC(v281, v282);
    sub_100018CBC(v284, v300);
    v170 = v337;
    v171 = v338;
LABEL_144:
    result = sub_100018CBC(v170, v171);
    goto LABEL_128;
  }

  v167 = v343;
  sub_1000C58C4();
  swift_unknownObjectRelease();
  v271 = sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_142:

    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    v153 = swift_allocError();
    sub_1000C4FB4();
    goto LABEL_143;
  }

  v274 = v342[0];
  sub_100092E08(28262, 0xE200000000000000, v342[0], &v343);
  if (*(&v344 + 1))
  {
    if (swift_dynamicCast())
    {
      v168 = v342[1];
    }

    else
    {
      v168 = 0;
    }

    v273 = v168;
  }

  else
  {
    sub_100018F90(&v343, &qword_1000FC828, &qword_1000CF790);
    v273 = 0;
  }

  sub_100092E08(28268, 0xE200000000000000, v274, &v343);
  if (*(&v344 + 1))
  {
    if (swift_dynamicCast())
    {
      v174 = v342[1];
    }

    else
    {
      v174 = 0;
    }

    v272 = v174;
  }

  else
  {
    sub_100018F90(&v343, &qword_1000FC828, &qword_1000CF790);
    v272 = 0;
  }

  v175 = sub_1000C1FF4();
  v176 = *(v175 - 8);
  v269 = *(v176 + 56);
  v270 = v175;
  v268 = v176 + 56;
  v269(v335, 1, 1);
  v177 = sub_1000C50F4();
  v178 = *(v177 - 8);
  v266 = *(v178 + 56);
  v267 = v177;
  v265 = v178 + 56;
  v266(v332, 1, 1);
  v179 = sub_1000C1DF4();
  (*(*(v179 - 8) + 56))(v333, 1, 1, v179);
  v180 = sub_1000C2244();
  (*(*(v180 - 8) + 56))(v334, 1, 1, v180);

  sub_1000C4F94();
  if (v338 >> 60 != 15 && v300 >> 60 != 15)
  {
    sub_100018C54(v337, v338);
    sub_100018C54(v284, v300);
    v181 = sub_1000C1544().super.isa;
    *&v343 = 0;
    v182 = [v306 propertyListWithData:v181 options:0 format:0 error:&v343];

    if (!v182)
    {
      v200 = v343;
      v201 = v337;
      v197 = v338;
      sub_100018CBC(v337, v338);

      v153 = sub_1000C1474();

      swift_willThrow();
      sub_100018CD0(v285, v286);

      sub_100018CBC(v275, v276);
      sub_100018CD0(v339, v340);
      v198 = v201;
      goto LABEL_170;
    }

    v183 = v343;
    sub_1000C58C4();
    swift_unknownObjectRelease();
    sub_1000124CC(&qword_1000FDB98, &qword_1000CF798);
    if ((swift_dynamicCast() & 1) == 0 || (v263[1] = sub_100092E6C(0x6D614E6567616D69, 0xE900000000000065, v342[0]), v185 = v184, , (v334 = v185) == 0))
    {
      sub_100018CBC(v337, v338);

      sub_1000C4FC4();
      sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v153 = swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CD0(v285, v286);

      sub_100018CBC(v275, v276);
      sub_100018CD0(v339, v340);
      v198 = v337;
      v202 = v338;
      goto LABEL_205;
    }

    v186 = v331;
    v188 = (v331 + 104);
    v187 = *(v331 + 104);
    v189 = v329;
    v190 = v330;
    (v187)(v329, enum case for ImageHeader.png(_:), v330);
    v264 = sub_1000C1594();
    v191 = *(v186 + 8);
    v191(v189, v190);
    v333 = v188;
    v332 = v187;
    (v187)(v189, enum case for ImageHeader.jpeg(_:), v190);
    v192 = sub_1000C1594();
    v193 = v189;
    v331 = v186 + 8;
    v194 = v191;
    v191(v193, v190);
    v195 = v264;
    if ((v264 & 1) != 0 && sub_1000C1584())
    {
      v196 = v337;
      v197 = v338;
      sub_100018CBC(v337, v338);

      sub_1000C4FC4();
      sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v153 = swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      sub_100018CD0(v285, v286);

      sub_100018CBC(v275, v276);
      sub_100018CD0(v339, v340);
      v198 = v196;
LABEL_170:
      v202 = v197;
LABEL_205:
      sub_100018CBC(v198, v202);
      sub_1000A485C(v373);
      sub_100018CBC(v308, v287);
      sub_100018CBC(v302, v296);
      sub_100018CBC(v304, v295);
      sub_100018CBC(v297, v289);
      sub_100018CBC(v294, v301);
      sub_100018CBC(v293, v292);
      sub_100018CBC(v288, v290);
      sub_100018F90(&v357, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v353, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v361, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v349, &qword_1000FDB90, &unk_1000CF780);
      v231 = v284;
      v232 = v300;
      sub_100018CBC(v284, v300);
      sub_100018CBC(v278, v279);
      sub_100018CBC(v281, v282);
      sub_100018CBC(v277, v280);
      sub_100018CD0(v283, v341);
      sub_100018F90(&v369, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v365, &qword_1000FDB90, &unk_1000CF780);
      sub_100018CD0(v299, v303);
      v233 = sub_1000C4F84();
      (*(*(v233 - 8) + 8))(v336, v233);
      v170 = v231;
      v171 = v232;
      goto LABEL_144;
    }

    v205 = v329;
    v206 = v330;
    (v332)(v329, enum case for ImageHeader.heif_jpeg(_:), v330);
    v207 = sub_1000C1594();
    v194(v205, v206);
    if (v207 & 1) != 0 || (v208 = v329, v209 = v330, (v332)(v329, enum case for ImageHeader.mpo(_:), v330), v210 = sub_1000C1594(), v194(v208, v209), ((v195 | v192) & 1) == 0) || (v210)
    {

      sub_1000C15A4();
      *&v343 = 0;
      *(&v343 + 1) = 0xE000000000000000;
      sub_1000C5944(41);

      *&v343 = 0xD000000000000027;
      *(&v343 + 1) = 0x80000001000D8400;
      v235 = v327;
      v398._countAndFlagsBits = sub_1000C20C4();
      sub_1000C52E4(v398);

      sub_1000C4FC4();
      sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      v153 = swift_allocError();
      sub_1000C4FB4();
      swift_willThrow();
      v194(v235, v330);
      v342[0] = v153;
      swift_errorRetain();
      sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
      if (swift_dynamicCast())
      {
        v236 = v337;
        v237 = v338;
        sub_100018CBC(v337, v338);

        v238 = v318;
        v239 = v319;
        (*(v319 + 32))(v318, v310, v328);
        *&v343 = 0;
        *(&v343 + 1) = 0xE000000000000000;
        sub_1000C5944(41);

        *&v343 = 0xD000000000000027;
        *(&v343 + 1) = 0x80000001000D8400;
        v399._countAndFlagsBits = sub_1000C3564();
        sub_1000C52E4(v399);

        sub_1000C4FC4();
        sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        v153 = swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
        sub_100018CD0(v285, v286);

        sub_100018CBC(v275, v276);
        sub_100018CD0(v339, v340);
        sub_100018CBC(v236, v237);
        sub_1000A485C(v373);
        sub_100018CBC(v308, v287);
        sub_100018CBC(v302, v296);
        sub_100018CBC(v304, v295);
        sub_100018CBC(v297, v289);
        sub_100018CBC(v294, v301);
        sub_100018CBC(v293, v292);
        sub_100018CBC(v288, v290);
        sub_100018F90(&v357, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v353, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v361, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v349, &qword_1000FDB90, &unk_1000CF780);
        v240 = v284;
        v241 = v300;
        sub_100018CBC(v284, v300);
        sub_100018CBC(v278, v279);
        sub_100018CBC(v281, v282);
        sub_100018CBC(v277, v280);
        sub_100018CD0(v283, v341);
        sub_100018F90(&v369, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v365, &qword_1000FDB90, &unk_1000CF780);
        sub_100018CD0(v299, v303);
        (*(v239 + 8))(v238, v328);
        v242 = sub_1000C4F84();
        (*(*(v242 - 8) + 8))(v336, v242);
        v243 = v240;
        v244 = v241;
      }

      else
      {
        v245 = sub_1000C4F84();
        (*(*(v245 - 8) + 8))(v336, v245);
        sub_100018CBC(v275, v276);
        sub_100018CBC(v308, v287);
        sub_100018CBC(v304, v295);
        sub_100018CBC(v302, v296);
        sub_100018CD0(v299, v303);
        sub_100018CBC(v294, v301);
        sub_100018CBC(v293, v292);
        sub_100018CBC(v297, v289);
        sub_100018CBC(v288, v290);
        sub_100018F90(&v365, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v369, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v357, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v353, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v361, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v349, &qword_1000FDB90, &unk_1000CF780);
        sub_100018CD0(v339, v340);
        sub_100018CD0(v283, v341);
        sub_100018CD0(v285, v286);

        v246 = v337;
        v247 = v338;
        sub_100018CBC(v337, v338);
        v248 = v284;
        v249 = v300;
        sub_100018CBC(v284, v300);
        sub_1000A485C(v373);
        sub_100018CBC(v277, v280);
        sub_100018CBC(v278, v279);
        sub_100018CBC(v281, v282);
        sub_100018CBC(v248, v249);
        v243 = v246;
        v244 = v247;
      }

      sub_100018CBC(v243, v244);

      goto LABEL_128;
    }

    v212 = v312;
    v211 = v313;
    v213 = &enum case for Image.Encoding.png(_:);
    if ((v195 & 1) == 0)
    {
      v213 = &enum case for Image.Encoding.jpeg(_:);
    }

    v214 = v314;
    (*(v313 + 104))(v312, *v213, v314);
    *(&v344 + 1) = &type metadata for Data;
    *&v345 = &protocol witness table for Data;
    v215 = v284;
    *&v343 = v284;
    v216 = v300;
    *(&v343 + 1) = v300;
    v217 = v317;
    (*(v211 + 16))(v317, v212, v214);
    (*(v211 + 56))(v217, 0, 1, v214);
    sub_100018C68(v215, v216);
    sub_1000C4D64();
    v218 = v335;
    sub_1000C2004();
    (v269)(v218, 0, 1, v270);
    sub_1000C4EE4();
    sub_100018CBC(v337, v338);
    sub_100018CBC(v284, v300);
    (*(v211 + 8))(v212, v214);
  }

  if (v280 >> 60 != 15)
  {
    sub_100018C68(v277, v280);
    v219 = sub_1000C1544().super.isa;
    *&v343 = 0;
    v220 = [v306 propertyListWithData:v219 options:0 format:0 error:&v343];

    if (!v220)
    {
      v224 = v343;
      v225 = v277;
      v226 = v280;
      sub_100018CBC(v277, v280);

      v153 = sub_1000C1474();

      swift_willThrow();
      sub_100018CD0(v285, v286);

      sub_100018CBC(v275, v276);
      sub_100018CD0(v339, v340);
      v227 = v225;
      v228 = v226;
LABEL_213:
      sub_100018CBC(v227, v228);
      sub_1000A485C(v373);
      sub_100018CBC(v308, v287);
      sub_100018CBC(v302, v296);
      sub_100018CBC(v304, v295);
      sub_100018CBC(v297, v289);
      sub_100018CBC(v294, v301);
      sub_100018CBC(v293, v292);
      sub_100018CBC(v288, v290);
      sub_100018F90(&v357, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v353, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v361, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v349, &qword_1000FDB90, &unk_1000CF780);
      sub_100018CBC(v278, v279);
      sub_100018CBC(v281, v282);
      sub_100018CD0(v283, v341);
      sub_100018F90(&v369, &qword_1000FDB90, &unk_1000CF780);
      sub_100018F90(&v365, &qword_1000FDB90, &unk_1000CF780);
      sub_100018CD0(v299, v303);
      v234 = sub_1000C4F84();
      (*(*(v234 - 8) + 8))(v336, v234);
      sub_100018CBC(v337, v338);
      v170 = v284;
      v171 = v300;
      goto LABEL_144;
    }

    v221 = v343;
    sub_1000C58C4();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      v222 = v342[0];
      sub_100092E08(0xD000000000000013, 0x80000001000D8350, v342[0], &v343);
      if (!*(&v344 + 1))
      {
        sub_100018CBC(v277, v280);

        sub_100018F90(&v343, &qword_1000FC828, &qword_1000CF790);
LABEL_212:
        sub_1000C4FC4();
        sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        v153 = swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
        sub_100018CD0(v285, v286);

        sub_100018CBC(v275, v276);
        sub_100018CD0(v339, v340);
        v227 = v277;
        v228 = v280;
        goto LABEL_213;
      }

      v223 = swift_dynamicCast();
      if (v223)
      {
        v335 = v342[0];
        __chkstk_darwin(v223);
        sub_10009C820(sub_1000A4EB4, v281, v282, v309);
        sub_1000A4ED4(v309, v326);
        sub_100092E08(0xD000000000000014, 0x80000001000D8370, v222, &v343);
        if (*(&v344 + 1))
        {
          v250 = swift_dynamicCast();
          v251 = v342[0];
          if (!v250)
          {
            v251 = 0;
          }

          v332 = v251;
          if (v250)
          {
            v252 = v342[1];
          }

          else
          {
            v252 = 0;
          }

          v334 = v252;
        }

        else
        {
          sub_100018F90(&v343, &qword_1000FC828, &qword_1000CF790);
          v332 = 0;
          v334 = 0;
        }

        sub_100092E08(0xD00000000000001ALL, 0x80000001000D8390, v222, &v343);
        if (*(&v344 + 1))
        {
          v253 = swift_dynamicCast();
          v254 = v342[0];
          if (!v253)
          {
            v254 = 0;
          }

          v331 = v254;
          if (v253)
          {
            v255 = v342[1];
          }

          else
          {
            v255 = 0;
          }

          v333 = v255;
        }

        else
        {
          sub_100018F90(&v343, &qword_1000FC828, &qword_1000CF790);
          v331 = 0;
          v333 = 0;
        }

        sub_100092E08(0xD000000000000014, 0x80000001000D83B0, v222, &v343);
        if (*(&v344 + 1))
        {
          if (swift_dynamicCast())
          {
            v256 = v342[0];
          }

          else
          {
            v256 = 0;
          }
        }

        else
        {
          sub_100018F90(&v343, &qword_1000FC828, &qword_1000CF790);
          v256 = 0;
        }

        sub_1000A2054(v256, v325);
        sub_100018CBC(v277, v280);

        if (v279 >> 60 == 15)
        {

          v257 = 1;
        }

        else
        {
          v259 = v278;
          v258 = v279;
          sub_100018C68(v278, v279);

          *(&v344 + 1) = &type metadata for Data;
          *&v345 = &protocol witness table for Data;
          *&v343 = v259;
          *(&v343 + 1) = v258;
          (*(v313 + 56))(v317, 1, 1, v314);
          sub_1000C4D64();
          sub_1000C50A4();
          v257 = 0;
        }

        v260 = sub_1000C50B4();
        v261 = *(*(v260 - 8) + 56);
        v262 = v324;
        v261(v324, v257, 1, v260);
        sub_100018F28(v326, v320, &qword_1000FD810, &unk_1000CF740);
        v261(v322, 1, 1, v260);
        sub_100018F28(v262, v323, &qword_1000FDB40, &qword_1000CF730);
        sub_100018F28(v325, v321, &qword_1000FDB48, &qword_1000CF738);
        sub_1000C50E4();
        (v266)(v316, 0, 1, v267);
        sub_1000C4F74();
        sub_100018CD0(v285, v286);

        sub_100018CD0(v339, v340);
        sub_100018CBC(v277, v280);
        sub_1000A485C(v373);
        sub_100018CBC(v308, v287);
        sub_100018CBC(v302, v296);
        sub_100018CBC(v304, v295);
        sub_100018CBC(v297, v289);
        sub_100018CBC(v294, v301);
        sub_100018CBC(v293, v292);
        sub_100018CBC(v288, v290);
        sub_100018F90(&v357, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v353, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v361, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v349, &qword_1000FDB90, &unk_1000CF780);
        sub_100018CBC(v278, v279);
        sub_100018CBC(v281, v282);
        sub_100018CD0(v283, v341);
        sub_100018F90(&v369, &qword_1000FDB90, &unk_1000CF780);
        sub_100018F90(&v365, &qword_1000FDB90, &unk_1000CF780);
        sub_100018CD0(v299, v303);
        sub_100018F90(v324, &qword_1000FDB40, &qword_1000CF730);
        sub_100018F90(v325, &qword_1000FDB48, &qword_1000CF738);
        sub_100018F90(v326, &qword_1000FD810, &unk_1000CF740);
        goto LABEL_186;
      }

      sub_100018CBC(v277, v280);
    }

    else
    {
      sub_100018CBC(v277, v280);
    }

    goto LABEL_212;
  }

  sub_100018CD0(v285, v286);

  sub_100018CD0(v339, v340);
  sub_1000A485C(v373);
  sub_100018CBC(v308, v287);
  sub_100018CBC(v278, v279);
  sub_100018CBC(v281, v282);
  sub_100018CD0(v283, v341);
  sub_100018CD0(v299, v303);
  sub_100018CBC(v302, v296);
  sub_100018CBC(v304, v295);
  sub_100018CBC(v297, v289);
  sub_100018CBC(v294, v301);
  sub_100018CBC(v293, v292);
  sub_100018CBC(v288, v290);
  sub_100018F90(&v369, &qword_1000FDB90, &unk_1000CF780);
  sub_100018F90(&v365, &qword_1000FDB90, &unk_1000CF780);
  sub_100018F90(&v357, &qword_1000FDB90, &unk_1000CF780);
  sub_100018F90(&v353, &qword_1000FDB90, &unk_1000CF780);
  sub_100018F90(&v361, &qword_1000FDB90, &unk_1000CF780);
  sub_100018F90(&v349, &qword_1000FDB90, &unk_1000CF780);

LABEL_186:
  sub_100018CBC(v275, v276);
  sub_100018CBC(v284, v300);
  return sub_100018CBC(v337, v338);
}

void *sub_1000A1EDC@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v17 = a2;
  v6 = sub_1000C2E34();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1000C4CC4();
  __chkstk_darwin(v10 - 8);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *a1;
  v13 = *(a1 + 8);
  sub_100018C68(v14, v13);
  sub_1000C4F44();
  (*(v7 + 104))(v9, enum case for PosterArchive.PosterKitPosterRole.incomingCall(_:), v6);
  result = PosterArchive.init(posterArchiveData:workingDirectory:role:)(v14, v13, v12, v9, a3);
  if (v3)
  {
    *v17 = v3;
  }

  return result;
}

void sub_1000A2054(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = sub_1000C30B4();
  v44 = *(v48 - 8);
  v5 = __chkstk_darwin(v48);
  v7 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v39 - v8;
  v10 = sub_1000124CC(&qword_1000FC608, qword_1000CA058);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = v39 - v15;
  __chkstk_darwin(v14);
  v18 = v39 - v17;
  v19 = sub_1000C4D24();
  v20 = __chkstk_darwin(v19);
  v22 = v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  if (!a1)
  {
    v32 = sub_1000C50D4();
    (*(*(v32 - 8) + 56))(a2, 1, 1, v32);
    return;
  }

  v40 = a2;
  v41 = v39 - v24;
  v42 = v25;
  v43 = v23;
  if (!*(a1 + 16))
  {
    goto LABEL_18;
  }

  v26 = sub_100099FF8(0x656D614E746E6F66, 0xEB0000000079654BLL);
  if ((v27 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_10001D804(*(a1 + 56) + 32 * v26, v47);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (!*(a1 + 16) || (v39[1] = v45, v39[2] = v46, v28 = sub_100099FF8(0x657A6953746E6F66, 0xEB0000000079654BLL), (v29 & 1) == 0) || (sub_10001D804(*(a1 + 56) + 32 * v28, v47), (swift_dynamicCast() & 1) == 0))
  {

LABEL_18:
    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    goto LABEL_19;
  }

  if (!*(a1 + 16) || (v30 = sub_100099FF8(0x67696557746E6F66, 0xED000079654B7468), (v31 & 1) == 0) || (sub_10001D804(*(a1 + 56) + 32 * v30, v47), (swift_dynamicCast() & 1) == 0))
  {

    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
LABEL_19:
    sub_1000C4FB4();
    swift_willThrow();
    return;
  }

  sub_1000A2948(a1, 0x6F6C6F43746E6F66, 0xEC00000079654B72, v18);
  if (v2)
  {

    return;
  }

  v33 = v42;
  if ((*(v42 + 48))(v18, 1, v43) == 1)
  {

    sub_100018F90(v18, &qword_1000FC608, qword_1000CA058);
    goto LABEL_18;
  }

  (*(v33 + 32))(v41, v18, v43);
  if (*(a1 + 16))
  {
    v34 = sub_100099FF8(0x6369747265567369, 0xED000079654B6C61);
    if (v35)
    {
      sub_10001D804(*(a1 + 56) + 32 * v34, v47);
      swift_dynamicCast();
    }
  }

  if (*(a1 + 16) && (v36 = sub_100099FF8(0x79654B65707974, 0xE700000000000000), (v37 & 1) != 0) && (sub_10001D804(*(a1 + 56) + 32 * v36, v47), (swift_dynamicCast() & 1) != 0))
  {
    sub_1000C30C4();
    sub_1000A2948(a1, 0xD000000000000012, 0x80000001000D86B0, v16);
    (*(v42 + 16))(v22, v41, v43);
    (*(v44 + 16))(v7, v9, v48);
    sub_100018F28(v16, v13, &qword_1000FC608, qword_1000CA058);
    sub_1000C50C4();
    sub_100018F90(v16, &qword_1000FC608, qword_1000CA058);
    (*(v44 + 8))(v9, v48);
    (*(v42 + 8))(v41, v43);
    v38 = sub_1000C50D4();
    (*(*(v38 - 8) + 56))(v40, 0, 1, v38);
  }

  else
  {

    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();
    (*(v42 + 8))(v41, v43);
  }
}

uint64_t sub_1000A2948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!a1 || !*(a1 + 16) || (v7 = sub_100099FF8(a2, a3), (v8 & 1) == 0) || (sub_10001D804(*(a1 + 56) + 32 * v7, &v28), sub_1000124CC(&qword_1000FDBA0, &qword_1000CF7A0), (swift_dynamicCast() & 1) == 0))
  {
    v27 = sub_1000C4D24();
    return (*(*(v27 - 8) + 56))(a4, 1, 1, v27);
  }

  v9 = v30;
  if (!*(v30 + 16) || (v10 = sub_100099FF8(6579570, 0xE300000000000000), (v11 & 1) == 0) || (v12 = *(*(v9 + 56) + 8 * v10), v28 = 0, v29 = 1, v13 = v12, sub_1000C5444(), v13, (v29 & 1) != 0) || !*(v9 + 16) || (v14 = sub_100099FF8(0x6E65657267, 0xE500000000000000), (v15 & 1) == 0) || (v16 = *(*(v9 + 56) + 8 * v14), v28 = 0, v29 = 1, v17 = v16, sub_1000C5444(), v17, (v29 & 1) != 0) || !*(v9 + 16) || (v18 = sub_100099FF8(1702194274, 0xE400000000000000), (v19 & 1) == 0) || (v20 = *(*(v9 + 56) + 8 * v18), v28 = 0, v29 = 1, v21 = v20, sub_1000C5444(), v21, (v29 & 1) != 0) || !*(v9 + 16) || (v22 = sub_100099FF8(0x6168706C61, 0xE500000000000000), (v23 & 1) == 0))
  {

    goto LABEL_22;
  }

  v24 = *(*(v9 + 56) + 8 * v22);

  v28 = 0;
  v29 = 1;
  sub_1000C5444();

  if (v29)
  {
LABEL_22:
    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  result = sub_1000C4D04();
  if (!v4)
  {
    v26 = sub_1000C4D24();
    return (*(*(v26 - 8) + 56))(a4, 0, 1, v26);
  }

  return result;
}

void sub_1000A2CA0(uint64_t a1, uint64_t a2, void **a3, uint64_t *a4, uint64_t *a5)
{
  v9 = [objc_allocWithZone(NSData) initWithBytes:a1 length:16];
  v10 = *a3;
  *a3 = v9;

  if (a1)
  {
    v11 = sub_1000A5018((a1 + 16), 0x10uLL);
    v12 = *a4;
    v13 = a4[1];
    *a4 = v11;
    a4[1] = v14;
    sub_100018CD0(v12, v13);
    v15 = sub_1000A5018((a1 + 32), 0x10uLL);
    v16 = *a5;
    v17 = a5[1];
    *a5 = v15;
    a5[1] = v18;
    sub_100018CD0(v16, v17);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000A2D58(const void *a1, uint64_t a2, uint64_t a3, unint64_t a4, size_t a5)
{
  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      memset(__b2, 0, 14);
      goto LABEL_15;
    }

    v7 = a1;
    v8 = *(a3 + 16);
    v9 = sub_1000C13F4();
    if (!v9)
    {
      goto LABEL_13;
    }

    a1 = sub_1000C1424();
    v10 = v8 - a1;
    if (!__OFSUB__(v8, a1))
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_9:
    v11 = a3;
    if (a3 > a3 >> 32)
    {
      __break(1u);
      goto LABEL_20;
    }

    v7 = a1;
    v9 = sub_1000C13F4();
    if (v9)
    {
      v12 = sub_1000C1424();
      v10 = v11 - v12;
      if (!__OFSUB__(v11, v12))
      {
LABEL_12:
        v9 += v10;
        goto LABEL_13;
      }

LABEL_20:
      __break(1u);
    }

LABEL_13:
    sub_1000C1414();
    a1 = v7;
    v13 = v9;
    goto LABEL_16;
  }

  if (v6)
  {
    goto LABEL_9;
  }

  __b2[0] = a3;
  LOWORD(__b2[1]) = a4;
  BYTE2(__b2[1]) = BYTE2(a4);
  BYTE3(__b2[1]) = BYTE3(a4);
  BYTE4(__b2[1]) = BYTE4(a4);
  BYTE5(__b2[1]) = BYTE5(a4);
LABEL_15:
  v13 = __b2;
LABEL_16:
  result = timingsafe_bcmp(a1, v13, a5);
  if (result)
  {
    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1000A2F9C(const void *a1, int a2, id a3, uint64_t a4, uint64_t *a5)
{
  cryptorRef = 0;
  v9 = a3;
  v10 = [a3 bytes];
  v11 = sub_1000C5664();
  v12 = sub_1000C5674();
  v13 = sub_1000C5664();
  v14 = sub_1000C5674();
  if (v11 < v13 || v14 < v11)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v15 = sub_1000C5664();
  v16 = sub_1000C5674();
  if (v12 < v15 || v16 < v12)
  {
    goto LABEL_21;
  }

  if (__OFSUB__(v12, v11))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (CCCryptorCreateWithMode(1u, 4u, 0, 0, a1, v10, v12 - v11, 0, 0, 0, 0, &cryptorRef) || (v18 = cryptorRef) == 0)
  {
    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    sub_1000C4FB4();
    return swift_willThrow();
  }

  v19 = *(a4 + 16);
  v20 = *(a4 + 24);
  v21 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v21 != 2)
    {
      v22 = 0;
      goto LABEL_19;
    }

    v24 = v19 + 16;
    v19 = *(v19 + 16);
    v23 = *(v24 + 8);
    v22 = v23 - v19;
    if (!__OFSUB__(v23, v19))
    {
      goto LABEL_19;
    }

    __break(1u);
LABEL_16:
    v25 = __OFSUB__(HIDWORD(v19), v19);
    v26 = HIDWORD(v19) - v19;
    if (!v25)
    {
      v22 = v26;
      goto LABEL_19;
    }

LABEL_23:
    __break(1u);
  }

  if (v21)
  {
    goto LABEL_16;
  }

  v22 = BYTE6(v20);
LABEL_19:
  OutputLength = CCCryptorGetOutputLength(v18, v22, 1);
  dataOutMoved = 0;
  v28 = sub_1000A4944(OutputLength);
  v29 = *a5;
  v30 = a5[1];
  *a5 = v28;
  a5[1] = v31;
  sub_100018CD0(v29, v30);
  sub_1000A4F44(a4, v33);
  return sub_1000A3928(a5, a4, &cryptorRef, OutputLength, &dataOutMoved);
}

uint64_t sub_1000A323C(void *dataOut, int a2, uint64_t a3, CCCryptorRef *a4, size_t dataOutAvailable, size_t *dataOutMoved)
{
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  v12 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    if (v12 != 2)
    {
      memset(dataIn, 0, 14);
      v14 = *a4;
      v13 = 0;
LABEL_25:
      result = CCCryptorUpdate(v14, dataIn, v13, dataOut, dataOutAvailable, dataOutMoved);
      if (!result)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    v16 = *(v10 + 16);
    v15 = *(v10 + 24);
    v17 = sub_1000C13F4();
    if (v17)
    {
      v18 = sub_1000C1424();
      if (__OFSUB__(v16, v18))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v17 += v16 - v18;
    }

    v19 = __OFSUB__(v15, v16);
    v20 = v15 - v16;
    if (!v19)
    {
      v21 = sub_1000C1414();
      if (v21 >= v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = v21;
      }

      goto LABEL_19;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v12)
  {
    v13 = BYTE6(v11);
    dataIn[0] = v10;
    LODWORD(dataIn[1]) = v11;
    WORD2(dataIn[1]) = WORD2(v11);
    v14 = *a4;
    goto LABEL_25;
  }

  v23 = v10;
  v24 = v10 >> 32;
  v25 = v24 - v23;
  if (v24 < v23)
  {
    __break(1u);
    goto LABEL_30;
  }

  v17 = sub_1000C13F4();
  if (!v17)
  {
    goto LABEL_16;
  }

  v26 = sub_1000C1424();
  if (__OFSUB__(v23, v26))
  {
LABEL_32:
    __break(1u);
  }

  v17 += v23 - v26;
LABEL_16:
  v27 = sub_1000C1414();
  if (v27 >= v25)
  {
    v22 = v25;
  }

  else
  {
    v22 = v27;
  }

LABEL_19:
  if (v17)
  {
    v28 = v22;
  }

  else
  {
    v28 = 0;
  }

  result = CCCryptorUpdate(*a4, v17, v28, dataOut, dataOutAvailable, dataOutMoved);
  if (!result)
  {
LABEL_26:
    if (*dataOutMoved == dataOutAvailable)
    {
      return result;
    }
  }

LABEL_27:
  sub_1000C4FC4();
  sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  swift_allocError();
  sub_1000C4FB4();
  return swift_willThrow();
}

void sub_1000A34BC(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_autoreleasePoolPush();
  sub_10009C934(a3, a1, a2, &v9, a4);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_1000A3544(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_1000C1534();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000A3894(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1000A3894(v4, v5);
  }

  return sub_1000C1534();
}

uint64_t sub_1000A367C(uint64_t a1, unint64_t a2, id a3, uint64_t a4, uint64_t *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v25[0] = a1;
      LOWORD(v25[1]) = a2;
      BYTE2(v25[1]) = BYTE2(a2);
      BYTE3(v25[1]) = BYTE3(a2);
      BYTE4(v25[1]) = BYTE4(a2);
      BYTE5(v25[1]) = BYTE5(a2);
      v8 = v25 + BYTE6(a2);
      v9 = v25;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v10 = a5;
      v13 = sub_1000C13F4();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1000C1424();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1000C1414();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v7 != 2)
  {
    memset(v25, 0, 14);
    v9 = v25;
    v8 = v25;
    goto LABEL_24;
  }

  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1000C13F4();
  if (v13)
  {
    v14 = sub_1000C1424();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1000C1414();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = v18 + v13;
  if (v13)
  {
    LODWORD(v8) = v23;
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v9 = v13;
  a3 = v6;
  a4 = v5;
  a5 = v10;
LABEL_24:
  sub_1000A2F9C(v9, v8, a3, a4, a5);

  return sub_1000A485C(v5);
}

uint64_t sub_1000A3894(uint64_t a1, uint64_t a2)
{
  result = sub_1000C13F4();
  if (!result || (result = sub_1000C1424(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1000C1414();
      return sub_1000C1534();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A3928(uint64_t *a1, uint64_t a2, CCCryptorRef *a3, size_t dataOutAvailable, size_t *dataOutMoved)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v10)
    {
      sub_1000A4F44(a2, dataOut);
      sub_100018CD0(v9, v8);
      *&dataOut[0] = v9;
      WORD4(dataOut[0]) = v8;
      BYTE10(dataOut[0]) = BYTE2(v8);
      BYTE11(dataOut[0]) = BYTE3(v8);
      BYTE12(dataOut[0]) = BYTE4(v8);
      BYTE13(dataOut[0]) = BYTE5(v8);
      BYTE14(dataOut[0]) = BYTE6(v8);
      sub_1000A323C(dataOut, dataOut + BYTE6(v8), a2, a3, dataOutAvailable, dataOutMoved);
      v11 = *&dataOut[0];
      v12 = DWORD2(dataOut[0]) | ((WORD6(dataOut[0]) | (BYTE14(dataOut[0]) << 16)) << 32);
      sub_1000A485C(a2);
      result = sub_1000A485C(a2);
      *a1 = v11;
      a1[1] = v12;
      return result;
    }

    v25 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1000A4F44(a2, dataOut);
    sub_100018C68(v9, v8);
    sub_100018CD0(v9, v8);
    *a1 = xmmword_1000CF6D0;
    sub_100018CD0(0, 0xC000000000000000);
    sub_1000A4F44(a2, dataOut);
    v26 = v9 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v26 < v9)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (sub_1000C13F4() && __OFSUB__(v9, sub_1000C1424()))
      {
LABEL_31:
        __break(1u);
      }

      sub_1000C1434();
      swift_allocObject();
      v27 = sub_1000C13D4();

      v25 = v27;
    }

    v28 = v26 < v9;
    v29 = v26 - v9;
    if (!v28)
    {

      result = sub_1000C13F4();
      if (result)
      {
        v30 = result;
        v31 = sub_1000C1424();
        v32 = v9 - v31;
        if (!__OFSUB__(v9, v31))
        {
          v33 = sub_1000C1414();
          if (v33 >= v29)
          {
            v34 = v29;
          }

          else
          {
            v34 = v33;
          }

          sub_1000A323C((v30 + v32), v30 + v32 + v34, a2, a3, dataOutAvailable, dataOutMoved);

          sub_1000A485C(a2);
          sub_1000A485C(a2);
          result = sub_1000A485C(a2);
          *a1 = v9;
          a1[1] = v25 | 0x4000000000000000;
          return result;
        }

        goto LABEL_29;
      }

LABEL_33:
      __break(1u);
      return result;
    }

    goto LABEL_27;
  }

  if (v10 != 2)
  {
    *(dataOut + 7) = 0;
    *&dataOut[0] = 0;
    sub_1000A323C(dataOut, dataOut, a2, a3, dataOutAvailable, dataOutMoved);
    return sub_1000A485C(a2);
  }

  sub_1000A4F44(a2, dataOut);

  sub_100018CD0(v9, v8);
  *&dataOut[0] = v9;
  *(&dataOut[0] + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_1000CF6D0;
  sub_100018CD0(0, 0xC000000000000000);
  sub_1000C14F4();
  v14 = dataOut[0];
  v15 = *(*&dataOut[0] + 16);
  v16 = *(*&dataOut[0] + 24);
  v17 = sub_1000C13F4();
  if (!v17)
  {
    result = sub_1000A485C(a2);
    __break(1u);
    goto LABEL_33;
  }

  v18 = v17;
  v19 = sub_1000C1424();
  v20 = v15 - v19;
  if (__OFSUB__(v15, v19))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = __OFSUB__(v16, v15);
  v22 = v16 - v15;
  if (v21)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v23 = sub_1000C1414();
  if (v23 >= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v23;
  }

  sub_1000A323C((v18 + v20), v18 + v20 + v24, a2, a3, dataOutAvailable, dataOutMoved);
  sub_1000A485C(a2);
  result = sub_1000A485C(a2);
  *a1 = v14;
  a1[1] = *(&v14 + 1) | 0x8000000000000000;
  return result;
}

void sub_1000A3D7C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v30 = a3;
  v29 = sub_1000C5124();
  v5 = *(v29 - 8);
  v6 = __chkstk_darwin(v29);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v29 - v9;
  v11 = sub_1000C5274();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5264();
  v15 = sub_1000C5234();
  v17 = v16;
  (*(v12 + 8))(v14, v11);
  if (v17 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *&v33 = a1;
    *(&v33 + 1) = a2;
    sub_100018C68(a1, a2);
    sub_1000C5114();
    *&v33 = v15;
    *(&v33 + 1) = v17;
    *&v32 = v15;
    *(&v32 + 1) = v17;
    sub_1000C5164();
    sub_1000A4600(&qword_1000FDB80, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    v28 = sub_1000A4648();
    sub_1000C5144();
    v31 = [objc_allocWithZone(NSData) init];
    v32 = xmmword_1000CF6D0;
    v33 = xmmword_1000CF6D0;
    __chkstk_darwin(v31);
    *(&v29 - 4) = &v31;
    *(&v29 - 3) = &v33;
    v27 = &v32;
    sub_1000C5104();
    sub_100018CBC(v15, v17);
    v18 = *(v5 + 8);
    v19 = v8;
    v20 = v29;
    v18(v19, v29);
    v18(v10, v20);
    v21 = v32;
    v22 = v33;
    v23 = *(&v32 + 1);
    v24 = v31;
    sub_100018C68(v22, *(&v22 + 1));
    sub_100018C68(v21, v23);
    sub_100018CD0(v21, v23);
    sub_100018CD0(v33, *(&v33 + 1));

    v25 = v30;
    *v30 = v24;
    *&v26 = v21;
    *(&v26 + 1) = v23;
    *(v25 + 3) = v26;
    *(v25 + 1) = v22;
  }
}

uint64_t sub_1000A4104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X8>)
{
  v12 = objc_opt_self();
  isa = sub_1000C1544().super.isa;
  *&v34[0] = 0;
  v14 = [v12 propertyListWithData:isa options:0 format:0 error:v34];

  if (!v14)
  {
    v19 = *&v34[0];

    sub_1000C1474();

LABEL_26:
    swift_willThrow();
    sub_100018CBC(a5, a6);
    return sub_100018CD0(a3, a4);
  }

  v15 = *&v34[0];
  sub_1000C58C4();
  swift_unknownObjectRelease();
  sub_1000124CC(&qword_1000FC580, &unk_1000C9E50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  if (*(v32 + 16))
  {
    v16 = sub_100099FF8(118, 0xE100000000000000);
    if (v17)
    {
      v18 = v16;

      sub_10001D804(*(v32 + 56) + 32 * v18, v34);

      sub_100018F90(v34, &qword_1000FC828, &qword_1000CF790);
      sub_1000C4FC4();
      sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
      swift_allocError();
LABEL_25:
      sub_1000C4FB4();
      goto LABEL_26;
    }
  }

  memset(v34, 0, sizeof(v34));
  sub_100018F90(v34, &qword_1000FC828, &qword_1000CF790);
  if (!*(v32 + 16))
  {
    goto LABEL_23;
  }

  v20 = sub_100099FF8(105, 0xE100000000000000);
  if ((v21 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_10001D804(*(v32 + 56) + 32 * v20, v34);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v22 = v32;
  if (!*(v32 + 16) || (v23 = sub_100099FF8(100, 0xE100000000000000), v22 = v32, (v24 & 1) == 0))
  {
    sub_100018CD0(v22, v33);
    goto LABEL_23;
  }

  sub_10001D804(*(v32 + 56) + 32 * v23, v34);
  if ((swift_dynamicCast() & 1) == 0)
  {

    v28 = v32;
    v29 = v33;
LABEL_21:
    sub_100018CD0(v28, v29);
LABEL_24:

    sub_1000C4FC4();
    sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
    swift_allocError();
    goto LABEL_25;
  }

  if (!*(v32 + 16) || (v25 = sub_100099FF8(116, 0xE100000000000000), (v26 & 1) == 0))
  {
    sub_100018CD0(v32, v33);
    sub_100018CD0(v32, v33);
LABEL_23:

    goto LABEL_24;
  }

  sub_10001D804(*(v32 + 56) + 32 * v25, v34);

  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_100018CD0(v32, v33);
    v28 = v32;
    v29 = v33;
    goto LABEL_21;
  }

  sub_100018CD0(a3, a4);
  result = v32;
  if (a6 >> 60 == 15)
  {
    a6 = v33;
  }

  else
  {
    sub_100018CD0(v32, v33);
    result = a5;
  }

  *a7 = a1;
  a7[1] = a2;
  a7[2] = v32;
  a7[3] = v33;
  a7[4] = v32;
  a7[5] = v33;
  a7[6] = result;
  a7[7] = a6;
  return result;
}

uint64_t sub_1000A4600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000A4648()
{
  result = qword_1000FDB88;
  if (!qword_1000FDB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDB88);
  }

  return result;
}

uint64_t sub_1000A469C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v4)
    {
      if (BYTE6(a3) != a4)
      {
        goto LABEL_13;
      }

LABEL_8:
      __chkstk_darwin(result);
      sub_1000124CC(&qword_1000FDB70, &qword_1000CF770);
      return sub_1000C5134();
    }

    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      if (HIDWORD(a2) - a2 != a4)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_16:
    __break(1u);
    return result;
  }

  if (v4 == 2)
  {
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (v7)
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v8 == a4)
    {
      goto LABEL_8;
    }
  }

  else if (!a4)
  {
    goto LABEL_8;
  }

LABEL_13:
  sub_1000C4FC4();
  sub_1000A4600(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
  swift_allocError();
  sub_1000C4FB4();
  return swift_willThrow();
}

uint64_t sub_1000A488C(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000A4944(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_1000C1434();
      swift_allocObject();
      sub_1000C1404();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1000C1524();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_1000A49E4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *(&v32 + 1) = a4;
  *&v32 = a3;
  v30 = a2;
  v34 = sub_1000C5124();
  v33 = *(v34 - 8);
  __chkstk_darwin(v34);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000124CC(&qword_1000FDB70, &qword_1000CF770);
  v35 = *(v44 - 8);
  __chkstk_darwin(v44);
  v8 = &v29 - v7;
  v9 = sub_1000C5274();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5254();
  v13 = sub_1000C5234();
  v15 = v14;
  result = (*(v10 + 8))(v12, v9);
  if (v15 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v43 = *(a1 + 32);
    *&v40 = v13;
    *(&v40 + 1) = v15;
    v37 = &type metadata for Data;
    v38 = &protocol witness table for Data;
    v36 = *(a1 + 32);
    v17 = sub_10001530C(&v36, &type metadata for Data);
    v19 = *v17;
    v18 = v17[1];
    sub_100018C54(v13, v15);
    sub_1000A4F7C(&v43, &v41);
    v20 = v31;
    sub_1000A3544(v19, v18, &v40);
    sub_100018CBC(v13, v15);
    sub_100015F68(&v36);
    v21 = v40;
    v42 = *(a1 + 16);
    v41 = v40;
    v37 = &type metadata for Data;
    v38 = &protocol witness table for Data;
    v36 = *(a1 + 16);
    v22 = sub_10001530C(&v36, &type metadata for Data);
    v24 = *v22;
    v23 = v22[1];
    sub_100018C68(v21, *(&v21 + 1));
    sub_1000A4F7C(&v42, v39);
    sub_1000A3544(v24, v23, &v41);
    sub_100018CD0(v21, *(&v21 + 1));
    sub_100015F68(&v36);
    v25 = v41;
    v36 = v41;
    v41 = v32;
    sub_100018C68(v32, *(&v32 + 1));
    sub_1000C5114();
    sub_1000C5164();
    sub_1000A4600(&qword_1000FDB80, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
    sub_1000A4648();
    sub_1000C5154();
    (*(v33 + 8))(v6, v34);
    sub_1000A469C(v8, *(a1 + 48), *(a1 + 56), 32);
    if (v20)
    {
      (*(v35 + 8))(v8, v44);
      sub_100018CD0(v25, *(&v25 + 1));
    }

    else
    {
      v41 = xmmword_1000CF6D0;
      v26 = v43;
      v27 = v30;
      sub_1000A4F44(a1, &v36);
      sub_1000A367C(v26, *(&v26 + 1), v27, a1, &v41);
      sub_100018CD0(v25, *(&v25 + 1));
      (*(v35 + 8))(v8, v44);
      v28 = *(&v41 + 1);
      a1 = v41;
      sub_100018C68(v41, *(&v41 + 1));
      sub_100018CD0(a1, v28);
    }

    return a1;
  }

  return result;
}

uint64_t sub_1000A4ED4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FD810, &unk_1000CF740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A5018(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1000A488C(a1, &a1[a2]);
  }

  sub_1000C1434();
  swift_allocObject();
  sub_1000C13E4();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1000C1524();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

__n128 sub_1000A50C8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000A50DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1000A5124(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000A5194(uint64_t a1)
{
  result = sub_100012BEC();
  *(a1 + 8) = result;
  return result;
}

void sub_1000A5204(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v3 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  __chkstk_darwin(v3 - 8);
  v141 = &v126 - v4;
  v145 = sub_1000C5974();
  v152 = *(v145 - 8);
  v5 = __chkstk_darwin(v145);
  v142 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v155 = &v126 - v8;
  __chkstk_darwin(v7);
  v144 = &v126 - v9;
  v10 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  __chkstk_darwin(v10 - 8);
  v148 = &v126 - v11;
  v154 = sub_1000C1614();
  v149 = *(v154 - 8);
  __chkstk_darwin(v154);
  v139 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for CrossServiceAssociationMessageContents(0);
  v13 = __chkstk_darwin(v147);
  v138 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  *&v146 = &v126 - v16;
  __chkstk_darwin(v15);
  v143 = (&v126 - v17);
  v18 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v18 - 8);
  v151 = &v126 - v19;
  v20 = sub_1000C1974();
  v150 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v126 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000C4FC4();
  v153 = *(v23 - 8);
  __chkstk_darwin(v23);
  v25 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000C4ED4();
  v27 = *(v26 - 8);
  v28 = __chkstk_darwin(v26);
  v30 = &v126 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v126 - v31;
  v33 = v156;
  sub_1000C1994();
  if (!v33)
  {
    v130 = v30;
    v133 = v22;
    v134 = v20;
    v131 = 0;
    v34 = v155;
    v135 = v25;
    v136 = v32;
    v137 = v26;
    v156 = v27;
    v35 = sub_1000C1984();
    if (v36 >> 60 == 15)
    {
      sub_100014F70();
      v37 = sub_1000C57E4();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1000C94D0;
      v39 = v148;
      v40 = v136;
      sub_1000C4EC4();
      (*(v149 + 56))(v39, 0, 1, v154);
      v41 = sub_1000C4A84();
      v43 = v42;
      sub_100018F90(v39, &qword_1000FC520, &qword_1000C9D20);
      *(v38 + 56) = &type metadata for String;
      *(v38 + 64) = sub_100014FBC();
      *(v38 + 32) = v41;
      *(v38 + 40) = v43;
      v44 = sub_1000C5554();
      sub_1000C1A44("Missing encrypted data (crossServiceAssociationGUID: %@)", 56, 2, &_mh_execute_header, v37, v44, v38);

      sub_1000A681C();
      swift_allocError();
      swift_willThrow();
      (*(v156 + 8))(v40, v137);
      return;
    }

    v126 = a1;
    v128 = v35;
    v129 = v36;
    isa = sub_1000C1544().super.isa;
    v46 = [(objc_class *)isa _imOptionallyDecompressData];

    v148 = sub_1000C1564();
    v48 = v47;

    v132 = v48;
    v49 = v48 >> 62;
    if ((v48 >> 62) > 1)
    {
      v50 = v23;
      v58 = v152;
      v52 = v153;
      v53 = v135;
      v54 = v34;
      v56 = v150;
      v59 = v151;
      v55 = v134;
      v57 = v133;
      v51 = v154;
      if (v49 != 2)
      {
        goto LABEL_16;
      }

      v61 = *(v148 + 16);
      v60 = *(v148 + 24);
      v62 = __OFSUB__(v60, v61);
      v63 = v60 - v61;
      if (!v62)
      {
        if (v63 > 0)
        {
          goto LABEL_11;
        }

LABEL_16:
        v127 = v50;
        v100 = v53;
        (*(v56 + 104))(v57, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v55);
        sub_1000C1964();
        (*(v56 + 8))(v57, v55);
        sub_1000C4FB4();
        sub_100014F70();
        v101 = sub_1000C57E4();
        sub_1000124CC(&qword_1000FC348, qword_1000C9550);
        v102 = swift_allocObject();
        *(v102 + 16) = xmmword_1000C94D0;
        v103 = v52;
        v104 = v52;
        v105 = v100;
        v106 = *(v103 + 16);
        v107 = v100;
        v108 = v127;
        v106(v59, v107, v127);
        (*(v104 + 56))(v59, 0, 1, v108);
        v109 = sub_1000C4A84();
        v110 = v59;
        v112 = v111;
        sub_100018F90(v110, &qword_1000FC438, &unk_1000C9DC0);
        *(v102 + 56) = &type metadata for String;
        *(v102 + 64) = sub_100014FBC();
        *(v102 + 32) = v109;
        *(v102 + 40) = v112;
        v113 = sub_1000C5554();
        sub_1000C1A44("Message unpacking explosion: %{public}@", 39, 2, &_mh_execute_header, v101, v113, v102);

        sub_1000A6ED0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        v106(v114, v105, v108);
        swift_willThrow();
        sub_100018CBC(v128, v129);
        sub_100018CD0(v148, v132);
        (*(v104 + 8))(v105, v108);
LABEL_19:
        (*(v156 + 8))(v136, v137);
        return;
      }

      __break(1u);
    }

    else
    {
      v50 = v23;
      v52 = v153;
      v51 = v154;
      v53 = v135;
      v54 = v34;
      v55 = v134;
      v56 = v150;
      v57 = v133;
      if (!v49)
      {
        v59 = v151;
        v58 = v152;
        if (!BYTE6(v132))
        {
          goto LABEL_16;
        }

LABEL_11:
        sub_1000C1464();
        swift_allocObject();
        v64 = sub_1000C1454();
        sub_1000A6ED0(&qword_1000FDBB8, type metadata accessor for CrossServiceAssociationMessageContents, &unk_1000CFA30);
        v65 = v146;
        v66 = v131;
        sub_1000C1444();
        if (!v66)
        {
          v115 = v143;
          sub_1000A6870(v65, v143);
          sub_1000C1994();
          v122 = v138;
          sub_1000A6930(v115, v138);
          (*(v149 + 32))(v139, v122, v51);
          sub_1000C4A94();
          v123 = v156;
          v124 = v137;
          v125 = v136;
          sub_100018CBC(v128, v129);

          sub_100018CD0(v148, v132);
          sub_1000A68D4(v115);
          (*(v123 + 8))(v125, v124);
          return;
        }

        v127 = v50;
        v154 = v64;
        v157 = v66;
        swift_errorRetain();
        sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
        v68 = v144;
        v67 = v145;
        if (swift_dynamicCast())
        {

          (*(v58 + 32))(v54, v68, v67);
          v149 = sub_100014F70();
          v69 = v67;
          v70 = sub_1000C57E4();
          v147 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
          v71 = swift_allocObject();
          v146 = xmmword_1000C94D0;
          *(v71 + 16) = xmmword_1000C94D0;
          v72 = v58;
          v73 = v54;
          v143 = *(v58 + 16);
          v74 = v141;
          v75 = v54;
          v76 = v69;
          (v143)(v141, v75, v69);
          (*(v72 + 56))(v74, 0, 1, v69);
          v77 = sub_1000C4A84();
          v78 = v127;
          v80 = v79;
          sub_100018F90(v74, &qword_1000FC430, &unk_1000C9B00);
          *(v71 + 56) = &type metadata for String;
          v144 = sub_100014FBC();
          *(v71 + 64) = v144;
          *(v71 + 32) = v77;
          *(v71 + 40) = v80;
          v81 = sub_1000C5554();
          sub_1000C1A44("CrossServiceAssociationMessageDictionary unpacking error: %{public}@", 68, 2, &_mh_execute_header, v70, v81, v71);

          v82 = v150;
          v83 = v133;
          v84 = v134;
          (*(v150 + 104))(v133, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v134);
          sub_1000C1964();
          (*(v82 + 8))(v83, v84);
          (v143)(v142, v73, v76);
          v85 = v135;
          sub_1000C4FA4();
          v86 = sub_1000C57E4();
          v87 = swift_allocObject();
          *(v87 + 16) = v146;
          v88 = v153;
          v89 = *(v153 + 16);
          v90 = v151;
          v89(v151, v85, v78);
          v91 = v89;
          v92 = v88;
          (*(v88 + 56))(v90, 0, 1, v78);
          v93 = sub_1000C4A84();
          v95 = v94;
          sub_100018F90(v90, &qword_1000FC438, &unk_1000C9DC0);
          v96 = v144;
          *(v87 + 56) = &type metadata for String;
          *(v87 + 64) = v96;
          *(v87 + 32) = v93;
          *(v87 + 40) = v95;
          v97 = sub_1000C5554();
          sub_1000C1A44("CrossServiceAssociationMessageDictionary unpacking explosion: %{public}@", 72, 2, &_mh_execute_header, v86, v97, v87);

          sub_1000A6ED0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          swift_allocError();
          v98 = v135;
          v91(v99, v135, v78);
          swift_willThrow();
          sub_100018CBC(v128, v129);

          sub_100018CD0(v148, v132);
          (*(v92 + 8))(v98, v78);
          (*(v152 + 8))(v155, v145);
          (*(v156 + 8))(v136, v137);

          return;
        }

        sub_100014F70();
        v116 = sub_1000C57E4();
        sub_1000124CC(&qword_1000FC348, qword_1000C9550);
        v117 = swift_allocObject();
        *(v117 + 16) = xmmword_1000C94D0;
        v157 = v66;
        v118 = sub_1000C4A84();
        v120 = v119;
        *(v117 + 56) = &type metadata for String;
        *(v117 + 64) = sub_100014FBC();
        *(v117 + 32) = v118;
        *(v117 + 40) = v120;
        v121 = sub_1000C5554();
        sub_1000C1A44("CrossServiceAssociationMessageDictionary unpacking unknown error: %{public}@", 76, 2, &_mh_execute_header, v116, v121, v117);

        swift_getErrorValue();
        swift_getDynamicType();
        v157 = 0;
        v158 = 0xE000000000000000;
        sub_1000C5944(22);

        v157 = 0xD000000000000014;
        v158 = 0x80000001000D5330;
        v159._countAndFlagsBits = sub_1000C5D34();
        sub_1000C52E4(v159);

        sub_1000A6ED0(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
        sub_100018CBC(v128, v129);

        sub_100018CD0(v148, v132);

        goto LABEL_19;
      }

      v59 = v151;
      v58 = v152;
      if (!__OFSUB__(HIDWORD(v148), v148))
      {
        if (HIDWORD(v148) - v148 > 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000A63D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_1000C1614();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000124CC(&qword_1000FDC50, &qword_1000CFA98);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CrossServiceAssociationMessageContents(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001530C(a1, a1[3]);
  sub_1000A6E7C();
  sub_1000C5CF4();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_1000A6ED0(&qword_1000FDC60, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    sub_1000C5AC4();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_1000A6870(v11, v13);
  }

  return sub_100015F68(a1);
}

uint64_t sub_1000A665C@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_1000C19B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_1000A6ED0(&qword_1000FC428, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_1000C1444();

  if (!v3)
  {
    sub_1000A5204(v8, a3);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t type metadata accessor for CrossServiceAssociationMessageContents(uint64_t a1)
{
  result = qword_1000FDC18;
  if (!qword_1000FDC18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000A681C()
{
  result = qword_1000FDBB0;
  if (!qword_1000FDBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDBB0);
  }

  return result;
}

uint64_t sub_1000A6870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrossServiceAssociationMessageContents(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A68D4(uint64_t a1)
{
  v2 = type metadata accessor for CrossServiceAssociationMessageContents(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A6930(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrossServiceAssociationMessageContents(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A69B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1614();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000A6A38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C1614();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000A6AA8(uint64_t a1)
{
  result = sub_1000C1614();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Int sub_1000A6B14()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

Swift::Int sub_1000A6B68()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

void sub_1000A6BAC(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F2088;
  v6._object = v3;
  v5 = sub_1000C59F4(v4, v6);

  *a2 = v5 != 0;
}

void sub_1000A6C1C(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F20C0;
  v7._object = a2;
  v6 = sub_1000C59F4(v5, v7);

  *a3 = v6 != 0;
}

uint64_t sub_1000A6C74(uint64_t a1)
{
  v2 = sub_1000A6E7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A6CB0(uint64_t a1)
{
  v2 = sub_1000A6E7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A6D04(void *a1)
{
  v2 = sub_1000124CC(&qword_1000FDC68, &qword_1000CFAA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10001530C(a1, a1[3]);
  sub_1000A6E7C();
  sub_1000C5D04();
  sub_1000C1614();
  sub_1000A6ED0(&qword_1000FDC70, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  sub_1000C5BB4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1000A6E7C()
{
  result = qword_1000FDC58;
  if (!qword_1000FDC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDC58);
  }

  return result;
}

uint64_t sub_1000A6ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000A6F2C()
{
  result = qword_1000FDC78;
  if (!qword_1000FDC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDC78);
  }

  return result;
}

unint64_t sub_1000A6F84()
{
  result = qword_1000FDC80;
  if (!qword_1000FDC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDC80);
  }

  return result;
}

unint64_t sub_1000A6FDC()
{
  result = qword_1000FDC88;
  if (!qword_1000FDC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDC88);
  }

  return result;
}

unint64_t sub_1000A7040(uint64_t a1)
{
  result = sub_10001270C();
  *(a1 + 8) = result;
  return result;
}

void sub_1000A70B0(unint64_t a1@<X8>)
{
  v118 = a1;
  v1 = sub_1000124CC(&qword_1000FC430, &unk_1000C9B00);
  __chkstk_darwin(v1 - 8);
  v112 = &v99 - v2;
  v122 = sub_1000C5974();
  v120 = *(v122 - 1);
  v3 = __chkstk_darwin(v122);
  v113 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v115 = &v99 - v6;
  __chkstk_darwin(v5);
  v114 = &v99 - v7;
  v8 = sub_1000124CC(&qword_1000FC520, &qword_1000C9D20);
  __chkstk_darwin(v8 - 8);
  v117 = &v99 - v9;
  v10 = sub_1000124CC(&qword_1000FC438, &unk_1000C9DC0);
  __chkstk_darwin(v10 - 8);
  v116 = &v99 - v11;
  v12 = sub_1000C1974();
  v119 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000C4FC4();
  v121 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000C4ED4();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v99 - v23;
  v25 = v123;
  sub_1000C1994();
  if (!v25)
  {
    v105 = v22;
    v107 = v14;
    v106 = 0;
    v108 = v12;
    v109 = v17;
    v26 = v122;
    v110 = v24;
    v111 = v18;
    v123 = v19;
    v27 = sub_1000C1984();
    if (v28 >> 60 == 15)
    {
      sub_100014F70();
      v29 = sub_1000C5744();
      sub_1000124CC(&qword_1000FC348, qword_1000C9550);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1000C94D0;
      v31 = v117;
      v32 = v110;
      sub_1000C4EC4();
      v33 = sub_1000C1614();
      (*(*(v33 - 8) + 56))(v31, 0, 1, v33);
      v34 = sub_1000C4A84();
      v36 = v35;
      sub_100018F90(v31, &qword_1000FC520, &qword_1000C9D20);
      *(v30 + 56) = &type metadata for String;
      *(v30 + 64) = sub_100014FBC();
      *(v30 + 32) = v34;
      *(v30 + 40) = v36;
      v37 = sub_1000C5554();
      sub_1000C1A44("Missing encrypted data (MessageGUID: %@)", 40, 2, &_mh_execute_header, v29, v37, v30);

      sub_1000A8378();
      swift_allocError();
      swift_willThrow();
      (*(v123 + 8))(v32, v111);
      return;
    }

    v104 = v27;
    v117 = v28;
    isa = sub_1000C1544().super.isa;
    v39 = [(objc_class *)isa _imOptionallyDecompressData];

    v40 = sub_1000C1564();
    v42 = v41;

    v43 = v42 >> 62;
    v103 = v15;
    if ((v42 >> 62) > 1)
    {
      v49 = v120;
      v44 = v121;
      v45 = v108;
      v46 = v109;
      v47 = v119;
      v48 = v107;
      if (v43 != 2)
      {
        goto LABEL_16;
      }

      v51 = *(v40 + 16);
      v50 = *(v40 + 24);
      v52 = __OFSUB__(v50, v51);
      v53 = v50 - v51;
      if (!v52)
      {
        if (v53 > 0)
        {
          goto LABEL_11;
        }

LABEL_16:
        v82 = v45;
        v83 = v47;
        (*(v47 + 104))(v48, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v45);
        sub_1000C1964();
        v106 = v40;
        (*(v83 + 8))(v48, v82);
        sub_1000C4FB4();
        sub_100014F70();
        v84 = sub_1000C5744();
        sub_1000124CC(&qword_1000FC348, qword_1000C9550);
        v85 = swift_allocObject();
        *(v85 + 16) = xmmword_1000C94D0;
        v122 = *(v44 + 16);
        v86 = v116;
        v87 = v103;
        (v122)(v116, v46, v103);
        (*(v44 + 56))(v86, 0, 1, v87);
        v88 = sub_1000C4A84();
        v118 = v42;
        v90 = v89;
        sub_100018F90(v86, &qword_1000FC438, &unk_1000C9DC0);
        *(v85 + 56) = &type metadata for String;
        *(v85 + 64) = sub_100014FBC();
        *(v85 + 32) = v88;
        *(v85 + 40) = v90;
        v91 = sub_1000C5554();
        sub_1000C1A44("Message unpacking explosion: %{public}@", 39, 2, &_mh_execute_header, v84, v91, v85);

        sub_1000A83CC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        (v122)(v92, v46, v87);
        swift_willThrow();
        sub_100018CBC(v104, v117);
        sub_100018CD0(v106, v118);
        (*(v44 + 8))(v46, v87);
LABEL_19:
        (*(v123 + 8))(v110, v111);
        return;
      }

      __break(1u);
    }

    else
    {
      v44 = v121;
      v45 = v108;
      v46 = v109;
      v47 = v119;
      v48 = v107;
      if (!v43)
      {
        v49 = v120;
        if (!BYTE6(v42))
        {
          goto LABEL_16;
        }

LABEL_11:
        sub_1000C1464();
        swift_allocObject();
        v54 = sub_1000C1454();
        sub_1000A8414();
        v55 = v106;
        sub_1000C1444();
        if (!v55)
        {
          sub_1000C1994();
          sub_1000C4204();
          (*(v123 + 8))(v110, v111);
          sub_100018CBC(v104, v117);
          sub_100018CD0(v40, v42);

          return;
        }

        v105 = v54;
        v106 = v40;
        v118 = v42;
        v124 = v55;
        swift_errorRetain();
        sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
        v56 = v114;
        if (swift_dynamicCast())
        {

          v57 = v115;
          (*(v49 + 32))(v115, v56, v26);
          v114 = sub_100014F70();
          v58 = sub_1000C5744();
          v102 = sub_1000124CC(&qword_1000FC348, qword_1000C9550);
          v59 = swift_allocObject();
          v101 = xmmword_1000C94D0;
          *(v59 + 16) = xmmword_1000C94D0;
          v100 = *(v49 + 16);
          v60 = v112;
          v100(v112, v57, v26);
          (*(v49 + 56))(v60, 0, 1, v26);
          v61 = sub_1000C4A84();
          v63 = v62;
          sub_100018F90(v60, &qword_1000FC430, &unk_1000C9B00);
          *(v59 + 56) = &type metadata for String;
          v112 = sub_100014FBC();
          *(v59 + 64) = v112;
          *(v59 + 32) = v61;
          *(v59 + 40) = v63;
          v64 = sub_1000C5554();
          sub_1000C1A44("Reviewed chat guids array unpacking error: %{public}@", 53, 2, &_mh_execute_header, v58, v64, v59);

          v65 = v119;
          v66 = v107;
          v67 = v108;
          (*(v119 + 104))(v107, enum case for TopLevelDictionary.CodingKeys.decryptedData(_:), v108);
          sub_1000C1964();
          (*(v65 + 8))(v66, v67);
          v100(v113, v57, v26);
          v68 = v109;
          sub_1000C4FA4();
          v69 = sub_1000C5744();
          v70 = swift_allocObject();
          *(v70 + 16) = v101;
          v71 = v121;
          v72 = *(v121 + 16);
          v73 = v116;
          v74 = v103;
          v72(v116, v68, v103);
          (*(v71 + 56))(v73, 0, 1, v74);
          v75 = sub_1000C4A84();
          v77 = v76;
          sub_100018F90(v73, &qword_1000FC438, &unk_1000C9DC0);
          v78 = v112;
          *(v70 + 56) = &type metadata for String;
          *(v70 + 64) = v78;
          *(v70 + 32) = v75;
          *(v70 + 40) = v77;
          v79 = sub_1000C5554();
          sub_1000C1A44("Reviewed chat guids array unpacking explosion: %{public}@", 57, 2, &_mh_execute_header, v69, v79, v70);

          sub_1000A83CC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
          swift_allocError();
          v80 = v109;
          v72(v81, v109, v74);
          swift_willThrow();
          sub_100018CBC(v104, v117);

          sub_100018CD0(v106, v118);
          (*(v71 + 8))(v80, v74);
          (*(v120 + 8))(v115, v122);
          (*(v123 + 8))(v110, v111);

          return;
        }

        sub_100014F70();
        v93 = sub_1000C5744();
        sub_1000124CC(&qword_1000FC348, qword_1000C9550);
        v94 = swift_allocObject();
        *(v94 + 16) = xmmword_1000C94D0;
        v124 = v55;
        v95 = sub_1000C4A84();
        v97 = v96;
        *(v94 + 56) = &type metadata for String;
        *(v94 + 64) = sub_100014FBC();
        *(v94 + 32) = v95;
        *(v94 + 40) = v97;
        v98 = sub_1000C5554();
        sub_1000C1A44("Reviewed chat guids array unpacking unknown error: %{public}@", 61, 2, &_mh_execute_header, v93, v98, v94);

        swift_getErrorValue();
        swift_getDynamicType();
        v124 = 0;
        v125 = 0xE000000000000000;
        sub_1000C5944(22);

        v124 = 0xD000000000000014;
        v125 = 0x80000001000D5330;
        v126._countAndFlagsBits = sub_1000C5D34();
        sub_1000C52E4(v126);

        sub_1000A83CC(&qword_1000FC360, &type metadata accessor for Explosion, &protocol conformance descriptor for Explosion);
        swift_allocError();
        sub_1000C4FB4();
        swift_willThrow();
        sub_100018CBC(v104, v117);

        sub_100018CD0(v106, v118);

        goto LABEL_19;
      }

      v49 = v120;
      if (!__OFSUB__(HIDWORD(v40), v40))
      {
        if (HIDWORD(v40) - v40 > 0)
        {
          goto LABEL_11;
        }

        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1000A8084(void *a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FDCB8, &qword_1000CFD90);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v9 - v6;
  sub_10001530C(a1, a1[3]);
  sub_1000A8850();
  sub_1000C5D04();
  v9[1] = a2;
  sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
  sub_100015FB4(&qword_1000FC380, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  sub_1000C5BB4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1000A8204@<X0>(unint64_t a3@<X8>)
{
  v5 = sub_1000C19B4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C1464();
  swift_allocObject();
  sub_1000C1454();
  sub_1000A83CC(&qword_1000FC428, &type metadata accessor for TopLevelDictionary, &protocol conformance descriptor for TopLevelDictionary);
  sub_1000C1444();

  if (!v3)
  {
    sub_1000A70B0(a3);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

unint64_t sub_1000A8378()
{
  result = qword_1000FDC98;
  if (!qword_1000FDC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDC98);
  }

  return result;
}

uint64_t sub_1000A83CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000A8414()
{
  result = qword_1000FDCA0;
  if (!qword_1000FDCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDCA0);
  }

  return result;
}

Swift::Int sub_1000A8488()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

Swift::Int sub_1000A84DC()
{
  sub_1000C5CB4();
  sub_1000C52C4();
  return sub_1000C5CD4();
}

void sub_1000A8520(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v6._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000F20F8;
  v6._object = v3;
  v5 = sub_1000C59F4(v4, v6);

  *a2 = v5 != 0;
}

void sub_1000A8590(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v7._countAndFlagsBits = a1;
  v5._rawValue = &off_1000F2130;
  v7._object = a2;
  v6 = sub_1000C59F4(v5, v7);

  *a3 = v6 != 0;
}

uint64_t sub_1000A85E8(uint64_t a1)
{
  v2 = sub_1000A8850();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A8624(uint64_t a1)
{
  v2 = sub_1000A8850();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000A8660@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000A86A8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1000A86A8(void *a1)
{
  v3 = sub_1000124CC(&qword_1000FDCA8, &unk_1000CFD80);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v9 - v5;
  v7 = sub_10001530C(a1, a1[3]);
  sub_1000A8850();
  sub_1000C5CF4();
  if (v1)
  {
    sub_100015F68(a1);
  }

  else
  {
    sub_1000124CC(&qword_1000FC378, &qword_1000CA860);
    sub_100015FB4(&qword_1000FC3A8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_1000C5AC4();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    sub_100015F68(a1);
  }

  return v7;
}

unint64_t sub_1000A8850()
{
  result = qword_1000FDCB0;
  if (!qword_1000FDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDCB0);
  }

  return result;
}

unint64_t sub_1000A88B8()
{
  result = qword_1000FDCC0;
  if (!qword_1000FDCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDCC0);
  }

  return result;
}

unint64_t sub_1000A8910()
{
  result = qword_1000FDCC8;
  if (!qword_1000FDCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDCC8);
  }

  return result;
}

unint64_t sub_1000A8968()
{
  result = qword_1000FDCD0;
  if (!qword_1000FDCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDCD0);
  }

  return result;
}

void *sub_1000A89BC()
{
  v2 = v1;
  v3 = sub_1000124CC(&qword_1000FDCD8, &qword_1000CFEE8);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v84 - v8;
  __chkstk_darwin(v7);
  v11 = &v84 - v10;
  v12 = sub_1000124CC(&qword_1000FDCE0, &qword_1000CFEF0);
  __chkstk_darwin(v12 - 8);
  v14 = &v84 - v13;
  v111 = sub_1000C33B4();
  v15 = *(v111 - 8);
  v16 = __chkstk_darwin(v111);
  v110 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v107 = &v84 - v18;
  v19 = (v0 + *(type metadata accessor for MessageDictionary(0) + 116));
  v20 = v19[1];
  if (v20 >> 60 == 15)
  {
    return _swiftEmptyArrayStorage;
  }

  v101 = v15;
  v102 = v14;
  v87 = v9;
  v100 = v6;
  v21 = *v19;
  sub_100018C68(*v19, v20);
  v108 = v21;
  isa = sub_1000C1544().super.isa;
  v23 = [(objc_class *)isa _imOptionallyDecompressData];

  v24 = sub_1000C1564();
  v26 = v25;

  sub_1000124CC(&qword_1000FC470, &qword_1000C9C80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000CBED0;
  v28 = sub_10001D1A8(0, &qword_1000FC8F8, NSArray_ptr);
  *(v27 + 56) = sub_1000124CC(&qword_1000FDCE8, &qword_1000CFEF8);
  *(v27 + 32) = v28;
  v29 = sub_10001D1A8(0, &qword_1000FC488, NSString_ptr);
  *(v27 + 88) = sub_1000124CC(&qword_1000FC490, &qword_1000C9C90);
  *(v27 + 64) = v29;
  v30 = sub_10001D1A8(0, &qword_1000FC320, NSNumber_ptr);
  *(v27 + 120) = sub_1000124CC(&qword_1000FC4A8, &qword_1000C9CA0);
  *(v27 + 96) = v30;
  v31 = sub_10001D1A8(0, &qword_1000FC478, NSDictionary_ptr);
  *(v27 + 152) = sub_1000124CC(&qword_1000FC480, &qword_1000C9C88);
  *(v27 + 128) = v31;
  v32 = sub_10001D1A8(0, &qword_1000FDCF0, NSMutableArray_ptr);
  *(v27 + 184) = sub_1000124CC(&qword_1000FDCF8, &unk_1000D1270);
  *(v27 + 160) = v32;
  v33 = sub_10001D1A8(0, &qword_1000FC4E0, NSMutableDictionary_ptr);
  *(v27 + 216) = sub_1000124CC(&qword_1000FC4E8, &unk_1000C9CC0);
  *(v27 + 192) = v33;
  v34 = sub_10001D1A8(0, &qword_1000FC500, NSMutableString_ptr);
  *(v27 + 248) = sub_1000124CC(&qword_1000FC508, &unk_1000C9CD0);
  *(v27 + 224) = v34;
  v35 = sub_10001D1A8(0, &qword_1000FDD00, NSNull_ptr);
  *(v27 + 280) = sub_1000124CC(&qword_1000FDD08, &qword_1000CFF00);
  *(v27 + 256) = v35;
  sub_10001D1A8(0, &qword_1000FC510, NSSet_ptr);
  v36 = sub_1000C5614();
  *&v121[0] = 0;
  sub_1000C54A4();
  v105 = v26;
  v106 = v20;
  v109 = v24;
  if (!*&v121[0])
  {
    sub_1000C4FC4();
    sub_100018BFC();
    v59 = swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();

    goto LABEL_25;
  }

  v90 = v36;
  v88 = v11;
  v37 = objc_opt_self();
  v38 = sub_1000C5484().super.isa;

  v39 = sub_1000C1544().super.isa;
  *&v121[0] = 0;
  v40 = [v37 _strictlyUnarchivedObjectOfClasses:v38 fromData:v39 error:v121];

  v41 = *&v121[0];
  if (!v40)
  {
    v74 = v41;
    v59 = sub_1000C1474();

    swift_willThrow();
    goto LABEL_25;
  }

  sub_1000C58C4();
  swift_unknownObjectRelease();
  sub_10001D804(v123, v121);
  sub_1000124CC(&qword_1000FDD10, &qword_1000CFF08);
  v42 = swift_dynamicCast();
  v43 = v90;
  v44 = v108;
  if (!v42)
  {
    sub_1000C4FC4();
    sub_100018BFC();
    v59 = swift_allocError();
    sub_1000C4FB4();
    swift_willThrow();

    sub_100015F68(v123);
    goto LABEL_27;
  }

  v45 = v112;
  v89 = *(v112 + 16);
  if (!v89)
  {
    v48 = _swiftEmptyArrayStorage;
    v49 = v109;
LABEL_31:

    sub_100018CBC(v44, v20);
    sub_100018CD0(v49, v26);
    sub_100015F68(v123);
    return v48;
  }

  v46 = 0;
  v47 = v102;
  v86 = (v101 + 56);
  v98 = (v101 + 32);
  v48 = _swiftEmptyArrayStorage;
  v49 = v109;
  v85 = v112;
  while (1)
  {
    if (v46 >= *(v45 + 16))
    {
      __break(1u);
    }

    v104 = v46;
    v50 = *(v45 + 8 * v46 + 32);
    if (v50)
    {
      break;
    }

    (*v86)(v47, 1, 1, v111);
    sub_100018F90(v47, &qword_1000FDCE0, &qword_1000CFEF0);
LABEL_8:
    v46 = v104 + 1;
    if (v89 == v104 + 1)
    {
      goto LABEL_31;
    }
  }

  v103 = v48;
  v51 = v50;
  sub_1000C1354();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  sub_1000C1344();
  v52 = objc_opt_self();
  v53 = sub_1000C5174().super.isa;
  v99 = v51;

  *&v112 = 0;
  v54 = [v52 dataWithJSONObject:v53 options:0 error:&v112];

  v55 = v112;
  if (!v54)
  {
    v82 = v55;

    v83 = sub_1000C1474();

    v59 = v83;
    swift_willThrow();
LABEL_34:
    sub_100015F68(v123);

    goto LABEL_25;
  }

  v56 = sub_1000C1564();
  v58 = v57;

  sub_1000A97A4();
  sub_1000C1334();
  v59 = v2;
  if (v2)
  {

    sub_100018CD0(v56, v58);
    goto LABEL_34;
  }

  sub_100018CD0(v56, v58);
  v118 = v121[6];
  v119 = v121[7];
  v120[0] = v122[0];
  *(v120 + 10) = *(v122 + 10);
  v114 = v121[2];
  v115 = v121[3];
  v116 = v121[4];
  v117 = v121[5];
  v112 = v121[0];
  v113 = v121[1];
  if (BYTE9(v122[1]) == 2)
  {
    v97 = 0;
    v60 = sub_1000C3394();
    v61 = v88;
    (*(*(v60 - 8) + 56))(v88, 1, 1, v60);
  }

  else
  {
    v62 = v87;
    sub_1000C3384();
    v61 = v88;
    v97 = 0;
    v63 = sub_1000C3394();
    (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
    sub_1000A9868(v62, v61);
  }

  v96 = v112;
  v95 = BYTE8(v112);
  v93 = v114;
  v94 = v113;
  v91 = v116;
  v92 = v115;
  sub_1000A97F8(v61, v100);

  v64 = v102;
  v65 = v97;
  sub_1000C33A4();
  v2 = v65;
  if (!v65)
  {

    sub_10006710C(&v112);
    sub_100018F90(v61, &qword_1000FDCD8, &qword_1000CFEE8);
    v66 = v111;
    (*v86)(v64, 0, 1, v111);
    v67 = *v98;
    v68 = v107;
    (*v98)(v107, v64, v66);
    v67(v110, v68, v66);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v106;
    v44 = v108;
    v47 = v64;
    if (isUniquelyReferenced_nonNull_native)
    {
      v49 = v109;
      v70 = v103;
    }

    else
    {
      v70 = sub_100045164(0, v103[2] + 1, 1, v103);
      v49 = v109;
    }

    v72 = v70[2];
    v71 = v70[3];
    v73 = v70;
    if (v72 >= v71 >> 1)
    {
      v73 = sub_100045164((v71 > 1), v72 + 1, 1, v70);
    }

    v73[2] = v72 + 1;
    v48 = v73;
    v67(v73 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v72, v110, v111);
    v26 = v105;
    v45 = v85;
    goto LABEL_8;
  }

  sub_10006710C(&v112);

  sub_100018F90(v61, &qword_1000FDCD8, &qword_1000CFEE8);
  sub_100015F68(v123);

  v59 = v65;
LABEL_25:
  v44 = v108;
LABEL_27:
  sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v75 = sub_1000C5714();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1000C94D0;
  *&v121[0] = v59;
  sub_1000124CC(&qword_1000FC350, &unk_1000CA170);
  v77 = sub_1000C4A84();
  v79 = v78;
  *(v76 + 56) = &type metadata for String;
  *(v76 + 64) = sub_100014FBC();
  *(v76 + 32) = v77;
  *(v76 + 40) = v79;
  v80 = sub_1000C5554();
  sub_1000C1A44("Unpacking attribution unpacking error: %{public}@", 49, 2, &_mh_execute_header, v75, v80, v76);

  sub_100018CBC(v44, v106);
  sub_100018CD0(v109, v105);

  return _swiftEmptyArrayStorage;
}

unint64_t sub_1000A97A4()
{
  result = qword_1000FDD18;
  if (!qword_1000FDD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000FDD18);
  }

  return result;
}

uint64_t sub_1000A97F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FDCD8, &qword_1000CFEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A9868(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000124CC(&qword_1000FDCD8, &qword_1000CFEE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A9930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v143 = a2;
  v140 = a1;
  v117[1] = a3;
  v3 = sub_1000124CC(&qword_1000FDD28, &unk_1000CFF60);
  v4 = __chkstk_darwin(v3 - 8);
  v117[0] = v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v121 = v117 - v6;
  v120 = sub_1000C23A4();
  v124 = *(v120 - 8);
  __chkstk_darwin(v120);
  v122 = v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000124CC(&qword_1000FC608, qword_1000CA058);
  v9 = __chkstk_darwin(v8 - 8);
  v118 = v117 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v119 = v117 - v12;
  v13 = __chkstk_darwin(v11);
  v123 = v117 - v14;
  __chkstk_darwin(v13);
  v132 = v117 - v15;
  v128 = sub_1000124CC(&qword_1000FDD30, &qword_1000CFF70);
  v125 = *(v128 - 8);
  __chkstk_darwin(v128);
  v130 = v117 - v16;
  v17 = sub_1000124CC(&qword_1000FDD38, &unk_1000CFF78);
  __chkstk_darwin(v17 - 8);
  v131 = v117 - v18;
  v19 = sub_1000124CC(&qword_1000FC460, &qword_1000C9D30);
  __chkstk_darwin(v19 - 8);
  v127 = v117 - v20;
  v21 = sub_1000124CC(&qword_1000FDD40, &qword_1000CFF88);
  v22 = __chkstk_darwin(v21 - 8);
  v129 = v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v126 = v117 - v25;
  __chkstk_darwin(v24);
  v133 = v117 - v26;
  v141 = sub_1000C4CC4();
  v151 = *(v141 - 8);
  v27 = __chkstk_darwin(v141);
  v142 = v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v30 = v117 - v29;
  v31 = sub_1000C4CF4();
  v137 = v31;
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = v117 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1000C5554();
  v139 = sub_10001D1A8(0, &qword_1000FC340, OS_os_log_ptr);
  v35 = sub_1000C56B4();
  sub_1000124CC(&qword_1000FC348, qword_1000C9550);
  v36 = swift_allocObject();
  v134 = xmmword_1000C94D0;
  *(v36 + 16) = xmmword_1000C94D0;
  sub_1000C4CB4();
  v37 = sub_1000C4CD4();
  v39 = v38;
  v40 = *(v32 + 8);
  v136 = v32 + 8;
  v138 = v40;
  v40(v34, v31);
  v147 = v37;
  v148 = v39;
  v41 = sub_1000C4A84();
  v43 = v42;

  *(v36 + 56) = &type metadata for String;
  v44 = sub_100014FBC();
  *(v36 + 64) = v44;
  *(v36 + 32) = v41;
  *(v36 + 40) = v43;
  sub_1000C1A54(v135, &_mh_execute_header, v35, "Processing order at: %@", 23, 2, v36);

  v135 = sub_1000C5524();
  v45 = sub_1000C56B4();
  v46 = swift_allocObject();
  *(v46 + 16) = v134;
  sub_1000C23D4();
  sub_1000C4CB4();
  v47 = v151[1];
  v48 = v30;
  v49 = v141;
  ++v151;
  v139 = v47;
  v47(v48, v141);
  v50 = sub_1000C4CD4();
  v52 = v51;
  v138(v34, v137);
  v147 = v50;
  v148 = v52;
  v53 = sub_1000C4A84();
  v55 = v54;
  v56 = v142;

  *(v46 + 56) = &type metadata for String;
  *(v46 + 64) = v44;
  *(v46 + 32) = v53;
  *(v46 + 40) = v55;
  sub_1000C1A54(v135, &_mh_execute_header, v45, "Using working directory: %@", 27, 2, v46);

  sub_1000C23D4();
  v145 = v140;
  v146 = v56;
  sub_10001D1A8(0, &qword_1000FDD48, off_1000EEAD0);
  v57 = v144;
  sub_1000C4C94();
  if (v57)
  {
    return v139(v56, v49);
  }

  v59 = v49;
  v60 = v127;
  v61 = v126;
  v62 = v147;
  v139(v56, v59);
  v151 = v62;
  v63 = [v62 headerImage];
  v64 = v133;
  v65 = v128;
  v66 = v130;
  v67 = v129;
  if (!v63)
  {
    goto LABEL_7;
  }

  v68 = v63;
  v69 = [v63 data];
  if (!v69)
  {

LABEL_7:
    v95 = v125;
    (*(v125 + 56))(v64, 1, 1, v65);
    goto LABEL_8;
  }

  v70 = v69;
  v71 = sub_1000C1564();
  v73 = v72;

  v144 = *(v65 + 48);
  v149 = &type metadata for Data;
  v150 = &protocol witness table for Data;
  v147 = v71;
  v148 = v73;
  v74 = sub_1000C4D54();
  (*(*(v74 - 8) + 56))(v60, 1, 1, v74);
  sub_100018C68(v71, v73);
  sub_1000C4D64();
  v75 = [v68 kind];
  sub_1000AA940(v75, v61 + v144);

  sub_100018CD0(v71, v73);
  v95 = v125;
  (*(v125 + 56))(v61, 0, 1, v65);
  sub_10001D860(v61, v64, &qword_1000FDD40, &qword_1000CFF88);
  v66 = v130;
  v67 = v129;
LABEL_8:
  sub_1000AAE18(v64, v67);
  v76 = 1;
  v77 = (*(v95 + 48))(v67, 1, v65);
  v78 = v132;
  v79 = v131;
  if (v77 != 1)
  {
    sub_10001D860(v67, v66, &qword_1000FDD30, &qword_1000CFF70);
    sub_1000C23B4();
    sub_100018F90(v66, &qword_1000FDD30, &qword_1000CFF70);
    v76 = 0;
  }

  v80 = sub_1000C23C4();
  v81 = 1;
  (*(*(v80 - 8) + 56))(v79, v76, 1, v80);
  v82 = v151;
  v83 = [v151 backgroundColor];
  if (v83)
  {
    v84 = v83;
    sub_1000C4D14();

    v81 = 0;
  }

  v85 = sub_1000C4D24();
  v86 = *(v85 - 8);
  v87 = *(v86 + 56);
  v88 = 1;
  v142 = v85;
  v143 = v86 + 56;
  v144 = v87;
  v87(v78, v81, 1);
  v89 = [v82 primaryText];
  v90 = [v89 text];

  sub_1000C5224();
  v91 = [v82 primaryText];
  v92 = [v91 overrideColor];

  if (v92)
  {
    v93 = v92;
    sub_1000C4D14();
    v94 = v124;

    v88 = 0;
  }

  else
  {
    v94 = v124;
  }

  v96 = 1;
  (v144)(v123, v88, 1, v142);
  sub_1000C2394();
  v97 = [v82 secondaryText];
  if (v97)
  {
    v98 = v97;
    v99 = [v98 text];
    sub_1000C5224();

    v100 = &MBDHTMLToSuper_MENTION_Frame__classData;
    v101 = [v98 overrideColor];
    if (v101)
    {
      v102 = v101;
      v103 = v119;
      sub_1000C4D14();

      v105 = 0;
    }

    else
    {
      v105 = 1;
      v103 = v119;
    }

    (v144)(v103, v105, 1, v142);
    v104 = v121;
    sub_1000C2394();

    v96 = 0;
    v94 = v124;
  }

  else
  {
    v104 = v121;
    v100 = &MBDHTMLToSuper_MENTION_Frame__classData;
  }

  v106 = *(v94 + 56);
  v107 = 1;
  v108 = v104;
  v109 = v120;
  v106(v108, v96, 1, v120);
  v110 = [v82 tertiaryText];
  if (v110)
  {
    v111 = v110;
    v112 = [v111 text];
    sub_1000C5224();

    v113 = [v111 v100[47].base_prots];
    if (v113)
    {
      v114 = v113;
      sub_1000C4D14();

      v116 = 0;
    }

    else
    {
      v116 = 1;
    }

    (v144)(v118, v116, 1, v142);
    v115 = v117[0];
    sub_1000C2394();

    v107 = 0;
    v109 = v120;
  }

  else
  {
    v115 = v117[0];
  }

  v106(v115, v107, 1, v109);
  sub_1000C23E4();

  return sub_100018F90(v133, &qword_1000FDD40, &qword_1000CFF88);
}