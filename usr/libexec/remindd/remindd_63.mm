void sub_1005C669C(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v146 = a2;
  v116 = a1;
  v117 = a3;
  v3 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v135 = *(v3 - 8);
  __chkstk_darwin(v3, v4);
  v132 = &v108[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6, v7);
  v9 = &v108[-v8];
  v10 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day();
  v142 = *(v10 - 8);
  __chkstk_darwin(v10, v11);
  v13 = &v108[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14, v15);
  v134 = &v108[-v16];
  v115 = _s10PredicatesOMa(0);
  __chkstk_darwin(v115, v17);
  v114 = &v108[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v131 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket();
  v19 = *(v131 - 8);
  __chkstk_darwin(v131, v20);
  v129 = &v108[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22, v23);
  v133 = &v108[-v24];
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v26 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v27);
  v29 = &v108[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
  v30 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  (*(v26 + 8))(v29, Configuration);
  if ((v30 & 1) == 0)
  {
LABEL_41:
    v100 = 1;
    v101 = v117;
    goto LABEL_42;
  }

  v121 = *(v146 + 16);
  if (!v121)
  {
LABEL_43:
    v103 = v114;
    swift_storeEnumTagMultiPayload();
    v104 = sub_100043AA8();
    sub_1000513B4(v103);
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v105 = [objc_allocWithZone(NSFetchRequest) init];
    v106 = [swift_getObjCClassFromMetadata() entity];
    [v105 setEntity:v106];

    [v105 setAffectedStores:0];
    [v105 setPredicate:v104];
    v107 = v119;
    NSManagedObjectContext.count<A>(for:)();
    if (v107)
    {

      return;
    }

    v101 = v117;
    REMRemindersListDataView.CountByCompleted.init(completed:incomplete:)();

    v100 = 0;
LABEL_42:
    v102 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v102 - 8) + 56))(v101, v100, 1, v102);
    return;
  }

  v112 = v13;
  v31 = 0;
  v32 = 0;
  v34 = *(v19 + 16);
  v33 = v19 + 16;
  v127 = v34;
  v126 = v146 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
  v125 = *(v33 + 56);
  v124 = (v33 + 72);
  v123 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.pastDue(_:);
  v118 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.nextFiveDays(_:);
  v113 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.day(_:);
  v111 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.month(_:);
  v122 = (v33 + 80);
  v110 = (v142 + 32);
  v146 = v135 + 16;
  v109 = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.year(_:);
  v35 = (v135 + 8);
  v138 = (v142 + 8);
  v128 = v33;
  v120 = (v33 - 8);
  v136 = v10;
  v137 = v142 + 16;
  v36 = v134;
  while (1)
  {
    v130 = v32;
    v37 = v131;
    v38 = v127;
    v127(v133, v126 + v125 * v32, v131);
    v39 = v129;
    v38(v129, v133, v37);
    v40 = (*v124)(v39, v37);
    if (v40 != v123)
    {
      break;
    }

    (*v122)(v39, v37);
    v48 = *v39;
    v49 = v136;
LABEL_18:
    v141 = *(v48 + 16);
    if (v141)
    {
      v76 = 0;
      v77 = *(v142 + 80);
      v139 = v48;
      v140 = v48 + ((v77 + 32) & ~v77);
      while (v76 < *(v48 + 16))
      {
        v78 = *(v142 + 72);
        v145 = v76;
        (*(v142 + 16))(v36, v140 + v78 * v76, v49);
        v79 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
        v87 = *(v79 + 16);
        if (v87)
        {
          v143 = v79;
          v144 = v31;
          v88 = 0;
          v89 = v79 + ((*(v135 + 80) + 32) & ~*(v135 + 80));
          v90 = *(v135 + 72);
          v91 = *(v135 + 16);
          v91(v9, v89, v3);
          while (1)
          {
            v92 = REMRemindersListDataView.ReminderLite.isCompleted.getter();
            (*v35)(v9, v3);
            if ((v92 & 1) == 0)
            {
              v73 = __OFADD__(v88++, 1);
              if (v73)
              {
                __break(1u);
                goto LABEL_43;
              }
            }

            v89 += v90;
            if (!--v87)
            {
              break;
            }

            v91(v9, v89, v3);
          }

          v143, v93, v94, v95, v96, v97, v98, v99;
          v49 = v136;
          v31 = v144;
          v36 = v134;
        }

        else
        {
          v79, v80, v81, v82, v83, v84, v85, v86;
          v88 = 0;
        }

        (*v138)(v36, v49);
        v73 = __OFADD__(v31, v88);
        v31 += v88;
        if (v73)
        {
          goto LABEL_47;
        }

        v76 = v145 + 1;
        v48 = v139;
        if (v145 + 1 == v141)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

LABEL_33:
    v48, v41, v42, v43, v44, v45, v46, v47;
    (*v120)(v133, v131);
LABEL_34:
    v32 = v130 + 1;
    if (v130 + 1 == v121)
    {
      goto LABEL_43;
    }
  }

  v49 = v136;
  if (v40 == v118)
  {
LABEL_17:
    v74 = v129;
    (*v122)(v129, v131);
    v48 = *(v74 + *(sub_1000F5104(&qword_10094DEB8, &qword_1007B3C78) + 48));
    v75 = type metadata accessor for Date();
    (*(*(v75 - 8) + 8))(v74, v75);
    goto LABEL_18;
  }

  if (v40 != v113)
  {
    if (v40 != v111 && v40 != v109)
    {
      goto LABEL_49;
    }

    goto LABEL_17;
  }

  v144 = v31;
  v50 = v129;
  (*v122)(v129, v131);
  (*v110)(v112, v50, v49);
  v51 = REMRemindersListDataView.ScheduledDateBucketsModel.Day.reminders.getter();
  v59 = *(v51 + 16);
  if (!v59)
  {
    v51, v52, v53, v54, v55, v56, v57, v58;
    v60 = 0;
LABEL_38:
    (*v138)(v112, v49);
    (*v120)(v133, v131);
    v73 = __OFADD__(v144, v60);
    v31 = v144 + v60;
    if (v73)
    {
      __break(1u);
      goto LABEL_41;
    }

    goto LABEL_34;
  }

  v60 = 0;
  v61 = *(v135 + 80);
  v143 = v51;
  v62 = v51 + ((v61 + 32) & ~v61);
  v145 = *(v135 + 72);
  v63 = *(v135 + 16);
  while (1)
  {
    v64 = v132;
    v63(v132, v62, v3);
    v65 = REMRemindersListDataView.ReminderLite.isCompleted.getter();
    (*v35)(v64, v3);
    if ((v65 & 1) == 0)
    {
      v73 = __OFADD__(v60++, 1);
      if (v73)
      {
        break;
      }
    }

    v62 += v145;
    if (!--v59)
    {
      v143, v66, v67, v68, v69, v70, v71, v72;
      v49 = v136;
      v36 = v134;
      goto LABEL_38;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
}

uint64_t sub_1005C70DC()
{
  v0 = _s9UtilitiesO12SortingStyleOMa(0);
  sub_1000EECAC(v0, qword_10094DE78);
  v1 = sub_100006654(v0, qword_10094DE78);
  v2 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v3 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1005C7190@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v29 = a3;
  v30 = a2;
  v31 = a4;
  v5 = type metadata accessor for Calendar.Component();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v18 = &v28 - v17;
  *&v21 = __chkstk_darwin(v19, v20).n128_u64[0];
  v23 = &v28 - v22;
  v24 = [*a1 displayDateDate];
  if (v24)
  {
    v25 = v24;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v11 + 32))(v23, v18, v10);
    (*(v6 + 104))(v9, enum case for Calendar.Component.year(_:), v5);
    v26 = Calendar.component(_:from:)();
    (*(v6 + 8))(v9, v5);
    result = (*(v11 + 8))(v23, v10);
  }

  else
  {
    (*(v6 + 104))(v9, enum case for Calendar.Component.year(_:), v5);
    (*(v11 + 16))(v14, v29, v10);
    v26 = Calendar.component(_:from:)();
    (*(v11 + 8))(v14, v10);
    result = (*(v6 + 8))(v9, v5);
  }

  *v31 = v26;
  return result;
}

uint64_t sub_1005C7468(id *a1, uint64_t a2)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v8, v9).n128_u64[0];
  v12 = v18 - v11;
  v13 = [*a1 displayDateDate];
  if (v13)
  {
    v14 = v13;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v4 + 32))(v12, v7, v3);
    sub_1005CC954(&qword_1009464D0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v15 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v4 + 8))(v12, v3);
    v16 = v15 ^ 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1005C7620(uint64_t a1)
{
  result = sub_1005CC954(&qword_10094DEB0, &type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsInvocation, &protocol conformance descriptor for REMRemindersListDataView.ScheduledByDateBucketsInvocation);
  *(a1 + 8) = result;
  return result;
}

void sub_1005C7678(char **a1, const char *a2, uint64_t *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = &_swiftEmptyArrayStorage;
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v12 = sub_1004361F4(v12, a2, a3, a4, a5, a6, a7, a8);
    }

    clientIdentity = v12->clientIdentity;
    v87 = *v12->clientIdentity;
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = (v12 + 16 * v87);
        v89 = *v88;
        v90 = &clientIdentity[2 * v87];
        v91 = v90[1];
        sub_1005C7C00((*a3 + 16 * *v88), (*a3 + 16 * *v90), (*a3 + 16 * v91), v9);
        if (v8)
        {
          goto LABEL_97;
        }

        if (v91 < v89)
        {
          goto LABEL_114;
        }

        if (v87 - 2 >= *clientIdentity)
        {
          goto LABEL_115;
        }

        *v88 = v89;
        v88[1] = v91;
        v92 = *clientIdentity - v87;
        if (*clientIdentity < v87)
        {
          goto LABEL_116;
        }

        v87 = *clientIdentity - 1;
        memmove(v90, v90 + 2, 16 * v92);
        *clientIdentity = v87;
        if (v87 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:
    v12, a2, a3, a4, a5, a6, a7, a8;
    return;
  }

  v11 = 0;
  v12 = &_swiftEmptyArrayStorage;
  v93 = a4;
  while (1)
  {
    v13 = v11++;
    if (v11 < v10)
    {
      v14 = *(*a3 + 16 * v11);
      v15 = 16 * v13;
      v16 = (*a3 + 16 * v13);
      v19 = *v16;
      v18 = v16 + 4;
      v17 = v19;
      v20 = v13 + 2;
      v21 = v14;
      while (v10 != v20)
      {
        v22 = *v18;
        v18 += 2;
        v23 = (v14 < v17) ^ (v22 >= v21);
        ++v20;
        v21 = v22;
        if ((v23 & 1) == 0)
        {
          v11 = v20 - 1;
          if (v14 >= v17)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v11 = v10;
      if (v14 >= v17)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v11 < v13)
      {
        goto LABEL_119;
      }

      if (v13 < v11)
      {
        v24 = 0;
        v25 = 16 * v11;
        v26 = v13;
        do
        {
          if (v26 != v11 + v24 - 1)
          {
            v31 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v27 = (v31 + v15);
            v28 = v31 + v25;
            v29 = *v27;
            v30 = v27[1];
            *v27 = *(v28 - 16);
            *(v28 - 16) = v29;
            *(v28 - 8) = v30;
          }

          ++v26;
          --v24;
          v25 -= 16;
          v15 += 16;
        }

        while (v26 < v11 + v24);
        v10 = a3[1];
      }
    }

LABEL_20:
    if (v11 < v10)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_118;
      }

      if (v11 - v13 < a4)
      {
        if (__OFADD__(v13, a4))
        {
          goto LABEL_120;
        }

        if (a4 + v13 < v10)
        {
          v10 = a4 + v13;
        }

        if (v10 < v13)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v11 != v10)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v11 < v13)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_1003658B8(0, *v12->clientIdentity + 1, 1, v12, a5, a6, a7, a8);
    }

    v9 = *v12->clientIdentity;
    v40 = *&v12->clientIdentity[8];
    v41 = v9 + 1;
    if (v9 >= v40 >> 1)
    {
      v12 = sub_1003658B8((v40 > 1), v9 + 1, 1, v12, a5, a6, a7, a8);
    }

    *v12->clientIdentity = v41;
    v42 = &v12->clientIdentity[16];
    v43 = &v12->clientIdentity[16 * v9 + 16];
    *v43 = v13;
    *(v43 + 1) = v11;
    v95 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v9)
    {
      while (1)
      {
        v9 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = *&v12->clientIdentity[16];
          v45 = *&v12->clientIdentity[24];
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_57:
          if (v47)
          {
            goto LABEL_104;
          }

          v60 = &v12->super.isa + 2 * v41;
          v62 = *v60;
          v61 = v60[1];
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_106;
          }

          v66 = &v42[16 * v9];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_111;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v9 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v41 < 2)
        {
          goto LABEL_112;
        }

        v70 = &v12->super.isa + 2 * v41;
        v72 = *v70;
        v71 = v70[1];
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_72:
        if (v65)
        {
          goto LABEL_108;
        }

        v73 = &v42[16 * v9];
        v75 = *v73;
        v74 = *(v73 + 1);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_110;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v9 - 1 >= v41)
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

        v81 = &v42[16 * v9 - 16];
        v82 = *v81;
        v83 = &v42[16 * v9];
        v84 = *(v83 + 1);
        sub_1005C7C00((*a3 + 16 * *v81), (*a3 + 16 * *v83), (*a3 + 16 * v84), v95);
        if (v8)
        {
          goto LABEL_97;
        }

        if (v84 < v82)
        {
          goto LABEL_99;
        }

        if (v9 > *v12->clientIdentity)
        {
          goto LABEL_100;
        }

        *v81 = v82;
        *(v81 + 1) = v84;
        v85 = *v12->clientIdentity;
        if (v9 >= v85)
        {
          goto LABEL_101;
        }

        v41 = v85 - 1;
        memmove(&v42[16 * v9], v83 + 16, 16 * (v85 - 1 - v9));
        *v12->clientIdentity = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_3;
        }
      }

      v48 = &v42[16 * v41];
      v49 = *(v48 - 8);
      v50 = *(v48 - 7);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_102;
      }

      v53 = *(v48 - 6);
      v52 = *(v48 - 5);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_103;
      }

      v55 = &v12->super.isa + 2 * v41;
      v57 = *v55;
      v56 = v55[1];
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_105;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_107;
      }

      if (v59 >= v51)
      {
        v77 = &v42[16 * v9];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v46 < v80)
        {
          v9 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v10 = a3[1];
    a4 = v93;
    if (v11 >= v10)
    {
      goto LABEL_88;
    }
  }

  v32 = *a3;
  v33 = *a3 + 16 * v11 - 16;
  v34 = v13 - v11;
LABEL_30:
  v35 = *(v32 + 16 * v11);
  v36 = v34;
  v37 = v33;
  while (1)
  {
    if (v35 >= *v37)
    {
LABEL_29:
      ++v11;
      v33 += 16;
      --v34;
      if (v11 != v10)
      {
        goto LABEL_30;
      }

      v11 = v10;
      goto LABEL_37;
    }

    if (!v32)
    {
      break;
    }

    v38 = *(v37 + 24);
    *(v37 + 16) = *v37;
    *v37 = v35;
    *(v37 + 8) = v38;
    v37 -= 16;
    if (__CFADD__(v36++, 1))
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
}

uint64_t sub_1005C7C00(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

void sub_1005C7E04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9[2] = a5;
  sub_100260DE4(sub_1005CC99C, v9, a2, a3, a4);
  if (v8)
  {
    goto LABEL_6;
  }

  if (v7 > a3)
  {
    if ((a4 >> 1) < a3)
    {
      __break(1u);
    }

    else if ((a4 >> 1) >= v7)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
LABEL_6:
        swift_unknownObjectRetain();
        return;
      }

      goto LABEL_10;
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

uint64_t sub_1005C7ED8(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3, unsigned int (**a4)(uint64_t, uint64_t, void), __n128 a5, uint64_t a6, uint64_t a7)
{
  v168 = a7;
  v180 = a4;
  v146 = a2;
  v140 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Day();
  v9 = *(v140 - 8);
  __chkstk_darwin(v140, v10);
  v135 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v137 = &v134 - v14;
  v15 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  __chkstk_darwin(v15 - 8, v16);
  v158 = &v134 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v152 = &v134 - v20;
  v177 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v21 = *(v177 - 8);
  __chkstk_darwin(v177, v22);
  v161 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v25);
  v151 = &v134 - v26;
  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27, v29);
  v144 = &v134 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v32);
  v138 = &v134 - v33;
  __chkstk_darwin(v34, v35);
  v157 = &v134 - v36;
  __chkstk_darwin(v37, v38);
  v167 = &v134 - v39;
  __chkstk_darwin(v40, v41);
  v169 = &v134 - v42;
  v43 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v43 - 8, v44);
  v141 = &v134 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46, v47);
  v166 = &v134 - v48;
  __chkstk_darwin(v49, v50);
  v52 = &v134 - v51;
  __chkstk_darwin(v53, v54);
  v56 = &v134 - v55;
  v57 = type metadata accessor for Calendar();
  v147 = *(v57 - 8);
  __chkstk_darwin(v57, v58);
  v160 = &v134 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  v60 = *(v28 + 56);
  v170 = v56;
  v153 = v27;
  v156 = v28 + 56;
  v155 = v60;
  v60(v56, 1, 1, v27);
  v61 = v180 >> 1;
  swift_unknownObjectRetain();
  v178 = v61;
  v159 = v21;
  v139 = v9;
  if (v61 == a3)
  {
    v148 = &_swiftEmptyArrayStorage;
    v62 = a3;
    v63 = v153;
LABEL_48:
    swift_unknownObjectRelease();
    v66 = (v178 - v62);
    if (v178 <= v62)
    {
      sub_1000050A4(v170, &unk_100938850, qword_100795AE0);
      (*(v147 + 8))(v160, v57);
      return v148;
    }

    v176 = v62;
    v111 = v170;
    v112 = v141;
    sub_100010364(v170, v141, &unk_100938850, qword_100795AE0);
    if ((*(v28 + 48))(v112, 1, v63) == 1)
    {
      sub_1000050A4(v111, &unk_100938850, qword_100795AE0);
      (*(v147 + 8))(v160, v57);
      sub_1000050A4(v112, &unk_100938850, qword_100795AE0);
      return v148;
    }

    (*(v28 + 32))(v144, v112, v63);
    v113 = v176;
    if (v176 < a3)
    {
LABEL_76:
      __break(1u);
    }

    else
    {
      v143 = v57;
      v142 = v28;
      v114 = (v21 + 48);
      v115 = (v21 + 32);
      v145 = a1;
      swift_unknownObjectRetain();
      v116 = &_swiftEmptyArrayStorage;
      v117 = (v146 + 8 * v113);
      v118 = v158;
      do
      {
        v119 = *v117;
        v120 = [v119 objectID];
        v121 = v120;
        v122 = v168;
        if (*(v168 + 16))
        {
          v123 = sub_100363FF4(v120);
          if (v124)
          {
            v125 = *(*(v122 + 56) + 8 * v123);
          }

          else
          {
            v125 = 0;
          }

          v118 = v158;
        }

        else
        {
          v125 = 0;
        }

        sub_1005384A4(v119, v125, 0, v118);
        v126 = v177;
        if ((*v114)(v118, 1, v177) == 1)
        {
          sub_1000050A4(v118, &qword_100940628, &unk_1007A6A20);
        }

        else
        {
          v127 = *v115;
          (*v115)(v161, v118, v126);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = sub_100365A24(0, *v116->clientIdentity + 1, 1, v116);
          }

          v129 = *v116->clientIdentity;
          v128 = *&v116->clientIdentity[8];
          if (v129 >= v128 >> 1)
          {
            v116 = sub_100365A24((v128 > 1), v129 + 1, 1, v116);
          }

          *v116->clientIdentity = v129 + 1;
          v127(v116 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v129, v161, v177);
        }

        ++v117;
        --v66;
      }

      while (v66);
      v28 = v142;
      (*(v142 + 16))(v138, v144, v153);
      v66 = v135;
      REMRemindersListDataView.ScheduledDateBucketsModel.Day.init(date:reminders:)();
      a1 = v148;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_70;
      }
    }

    a1 = sub_100365C28(0, *a1->clientIdentity + 1, 1, a1);
LABEL_70:
    v130 = v143;
    v131 = v170;
    v133 = *a1->clientIdentity;
    v132 = *&a1->clientIdentity[8];
    if (v133 >= v132 >> 1)
    {
      a1 = sub_100365C28((v132 > 1), v133 + 1, 1, a1);
    }

    swift_unknownObjectRelease();
    (*(v28 + 8))(v144, v153);
    sub_1000050A4(v131, &unk_100938850, qword_100795AE0);
    (*(v147 + 8))(v160, v130);
    *a1->clientIdentity = v133 + 1;
    (*(v139 + 32))(a1 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v133, v66, v140);
    return a1;
  }

  v64 = 0;
  v172 = (v28 + 32);
  v180 = v28 + 48;
  v154 = (v28 + 16);
  v162 = (v28 + 8);
  v150 = (v21 + 48);
  v149 = (v21 + 32);
  v134 = v9 + 32;
  v148 = &_swiftEmptyArrayStorage;
  v65 = a3;
  v62 = a3;
  v63 = v153;
  v145 = a1;
  v142 = v28;
  v143 = v57;
  v165 = a3;
  v163 = v52;
  while (2)
  {
    v28 = 0;
    v174 = v178 - v65;
    v175 = v146 + 8 * v65;
    v136 = v62;
    v66 = (a3 + v64 - v62);
    v67 = v169;
    v68 = &unk_100938850;
    a1 = qword_100795AE0;
    v69 = v65;
    v164 = v65;
    v176 = v64;
    while (1)
    {
      if (v69 < a3 || v69 + v28 >= v178)
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      if (__OFADD__(v64 + v28, 1))
      {
        goto LABEL_75;
      }

      v173 = v64 + v28 + 1;
      v70 = *(v175 + 8 * v28);
      v71 = [v70 displayDateDate];
      if (v71)
      {
        break;
      }

LABEL_6:
      ++v28;
      ++v66;
      v64 = v176;
      if (v174 == v28)
      {
        v62 = v136;
        a1 = v145;
        v28 = v142;
        v21 = v159;
        v57 = v143;
        goto LABEL_48;
      }
    }

    v179 = v70;
    v72 = v67;
    v73 = v167;
    v74 = v71;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v171 = *v172;
    v171(v72, v73, v63);
    v75 = v170;
    v76 = v63;
    v77 = a1;
    v78 = v68;
    v79 = v163;
    sub_100010364(v170, v163, v78, v77);
    v80 = *v180;
    if ((*v180)(v79, 1, v76) == 1)
    {
      sub_1000050A4(v75, v78, v77);
      sub_1000050A4(v79, v78, v77);
      (*v154)(v75, v72, v76);
      v155(v75, 0, 1, v76);
    }

    else
    {
      sub_1000050A4(v79, v78, v77);
    }

    v68 = v78;
    v81 = v166;
    sub_100010364(v75, v166, v78, v77);
    a1 = v77;
    if (v80(v81, 1, v76) == 1)
    {
      v67 = v169;
      (*v162)(v169, v76);

      sub_1000050A4(v81, v68, v77);
      v69 = v164;
      a3 = v165;
      v63 = v76;
      goto LABEL_6;
    }

    v82 = v157;
    v171(v157, v81, v76);
    v83 = v169;
    result = Calendar.isDate(_:inSameDayAs:)();
    v63 = v76;
    if (result)
    {

      v85 = *v162;
      (*v162)(v82, v76);
      v85(v83, v76);
      v67 = v83;
      v69 = v164;
      a3 = v165;
      goto LABEL_6;
    }

    v86 = v165 + v176 + v28;
    if (__OFADD__(v165, v176 + v28))
    {
      __break(1u);
      goto LABEL_79;
    }

    v87 = v136;
    if (v86 < v136)
    {
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v178 < v136)
    {
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    if (v136 < v165)
    {
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    if (v178 < v86)
    {
LABEL_82:
      __break(1u);
      break;
    }

    if ((v86 & 0x8000000000000000) == 0)
    {
      swift_unknownObjectRetain();
      v88 = &_swiftEmptyArrayStorage;
      v176 = v86;
      if (v87 != v86)
      {
        v98 = (v146 + 8 * v87);
        do
        {
          v99 = *v98;
          v100 = [v99 objectID];
          v101 = v100;
          v102 = v168;
          if (*(v168 + 16))
          {
            v103 = sub_100363FF4(v100);
            if (v104)
            {
              v105 = *(*(v102 + 56) + 8 * v103);
            }

            else
            {
              v105 = 0;
            }

            v63 = v153;
          }

          else
          {
            v105 = 0;
          }

          v106 = v152;
          sub_1005384A4(v99, v105, 0, v152);
          v107 = v177;
          if ((*v150)(v106, 1, v177) == 1)
          {
            sub_1000050A4(v106, &qword_100940628, &unk_1007A6A20);
          }

          else
          {
            v108 = *v149;
            (*v149)(v151, v106, v107);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v88 = sub_100365A24(0, *v88->clientIdentity + 1, 1, v88);
            }

            v110 = *v88->clientIdentity;
            v109 = *&v88->clientIdentity[8];
            if (v110 >= v109 >> 1)
            {
              v88 = sub_100365A24((v109 > 1), v110 + 1, 1, v88);
            }

            *v88->clientIdentity = v110 + 1;
            v108(v88 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v110, v151, v177);
          }

          ++v98;
          --v66;
        }

        while (v66);
      }

      (*v154)(v138, v157, v63);
      REMRemindersListDataView.ScheduledDateBucketsModel.Day.init(date:reminders:)();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v148 = sub_100365C28(0, *v148->clientIdentity + 1, 1, v148);
      }

      v89 = v164;
      v91 = *v148->clientIdentity;
      v90 = *&v148->clientIdentity[8];
      if (v91 >= v90 >> 1)
      {
        v148 = sub_100365C28((v90 > 1), v91 + 1, 1, v148);
      }

      v92 = v89 + v28 + 1;
      v93 = ~v89 + v178;
      v94 = v145;
      swift_unknownObjectRelease();

      (*v162)(v157, v63);
      v95 = v170;
      sub_1000050A4(v170, &unk_100938850, a1);
      v96 = v148;
      *v148->clientIdentity = v91 + 1;
      (*(v139 + 32))(v96 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v91, v137, v140);
      v171(v95, v169, v63);
      v155(v95, 0, 1, v63);
      v65 = v92;
      v64 = v173;
      v97 = v93 == v28;
      a1 = v94;
      v28 = v142;
      v21 = v159;
      v57 = v143;
      a3 = v165;
      v62 = v176;
      if (v97)
      {
        goto LABEL_48;
      }

      continue;
    }

    break;
  }

  __break(1u);
  return result;
}

size_t sub_1005C9018(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2)
{
  v702 = a1;
  v664 = type metadata accessor for Calendar.SearchDirection();
  v640 = *(v664 - 8);
  __chkstk_darwin(v664, v3);
  v663 = &v626 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v662 = type metadata accessor for Calendar.RepeatedTimePolicy();
  v639 = *(v662 - 8);
  __chkstk_darwin(v662, v5);
  v661 = &v626 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v660 = type metadata accessor for Calendar.MatchingPolicy();
  v638 = *(v660 - 8);
  __chkstk_darwin(v660, v7);
  v659 = &v626 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000F5104(&qword_10093F970, &unk_1007A7670);
  __chkstk_darwin(v9 - 8, v10);
  v667 = &v626 - v11;
  v12 = sub_1000F5104(&qword_100946078, &qword_1007ACC30);
  __chkstk_darwin(v12 - 8, v13);
  v666 = &v626 - v14;
  v665 = type metadata accessor for DateComponents();
  v637 = *(v665 - 8);
  __chkstk_darwin(v665, v15);
  v642 = (&v626 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17, v18);
  v658 = &v626 - v19;
  v650 = type metadata accessor for Calendar.Component();
  v636 = *(v650 - 8);
  __chkstk_darwin(v650, v20);
  v649 = &v626 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v22 - 8, v23);
  v641 = &v626 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v26);
  v657 = &v626 - v27;
  __chkstk_darwin(v28, v29);
  v634 = (&v626 - v30);
  v31 = sub_1000F5104(&qword_100940628, &unk_1007A6A20);
  __chkstk_darwin(v31 - 8, v32);
  v710 = &v626 - v33;
  v712 = type metadata accessor for REMRemindersListDataView.ReminderLite();
  v706 = *(v712 - 1);
  __chkstk_darwin(v712, v34);
  v709 = &v626 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v700 = type metadata accessor for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket();
  v685 = *(v700 - 8);
  __chkstk_darwin(v700, v36);
  v651 = &v626 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38, v39);
  v674 = &v626 - v40;
  __chkstk_darwin(v41, v42);
  v631 = (&v626 - v43);
  __chkstk_darwin(v44, v45);
  v691 = (&v626 - v46);
  __chkstk_darwin(v47, v48);
  v656 = (&v626 - v49);
  v677 = type metadata accessor for REMRemindersListDataView.ScheduledByDateBucketsStyle();
  v676 = *(v677 - 1);
  __chkstk_darwin(v677, v50);
  v672 = (&v626 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v698 = type metadata accessor for Date();
  v652 = *(v698 - 8);
  __chkstk_darwin(v698, v52);
  v653 = &v626 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54, v55);
  v680 = &v626 - v56;
  __chkstk_darwin(v57, v58);
  v635 = &v626 - v59;
  __chkstk_darwin(v60, v61);
  v690 = &v626 - v62;
  __chkstk_darwin(v63, v64);
  v679 = (&v626 - v65);
  __chkstk_darwin(v66, v67);
  v704 = &v626 - v68;
  v669 = type metadata accessor for Calendar();
  v646 = *(v669 - 8);
  __chkstk_darwin(v669, v69);
  v692 = &v626 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v686 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v687 = *(v686 - 8);
  __chkstk_darwin(v686, v71);
  v645 = &v626 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73, v74);
  v655 = &v626 - v75;
  __chkstk_darwin(v76, v77);
  v633 = (&v626 - v78);
  __chkstk_darwin(v79, v80);
  v688 = (&v626 - v81);
  __chkstk_darwin(v82, v83);
  v671 = &v626 - v84;
  __chkstk_darwin(v85, v86);
  v684 = &v626 - v87;
  __chkstk_darwin(v88, v89);
  v701 = (&v626 - v90);
  v696 = _s10PredicatesOMa(0);
  __chkstk_darwin(v696, v91);
  v693 = &v626 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v711 = *(Subtasks - 1);
  __chkstk_darwin(Subtasks, v93);
  v683 = &v626 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v95, v96);
  v689 = &v626 - v97;
  __chkstk_darwin(v98, v99);
  v707 = &v626 - v100;
  __chkstk_darwin(v101, v102);
  storeController = &v626 - v103;
  v104 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v105 = *(v104 - 8);
  __chkstk_darwin(v104, v106);
  v108 = &v626 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v109, v110);
  v112 = &v626 - v111;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v114 = *(Configuration - 8);
  __chkstk_darwin(Configuration, v115);
  v644 = &v626 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v117, v118);
  v654 = &v626 - v119;
  __chkstk_darwin(v120, v121);
  v632 = (&v626 - v122);
  __chkstk_darwin(v123, v124);
  v675 = &v626 - v125;
  __chkstk_darwin(v126, v127);
  v670 = &v626 - v128;
  __chkstk_darwin(v129, v130);
  v682 = (&v626 - v131);
  __chkstk_darwin(v132, v133);
  v681 = (&v626 - v134);
  __chkstk_darwin(v135, v136);
  v138 = &v626 - v137;
  v697 = a2;
  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
  v139 = *(v114 + 8);
  v699 = Configuration;
  v694 = v139;
  v695 = (v114 + 8);
  (v139)(v138, Configuration);
  v140 = *(v105 + 104);
  v140(v108, enum case for REMRemindersListDataView.SortingStyle.default(_:), v104);
  LOBYTE(a2) = static REMRemindersListDataView.SortingStyle.== infix(_:_:)();
  v141 = *(v105 + 8);
  v141(v108, v104);
  v141(v112, v104);
  if (a2 & 1) == 0 && (REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter(), REMRemindersListDataView.FetchConfiguration.sortingStyle.getter(), (v694)(v138, v699), v142 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:), v143 = type metadata accessor for REMRemindersListDataView.SortingDirection(), (*(*(v143 - 8) + 104))(v108, v142, v143), v140(v108, enum case for REMRemindersListDataView.SortingStyle.displayDate(_:), v104), LOBYTE(v142) = static REMRemindersListDataView.SortingStyle.== infix(_:_:)(), v141(v108, v104), v141(v112, v104), (v142 & 1) == 0) || (REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter(), v108 = storeController, REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter(), v144 = v694, (v694)(v138, v699), v145 = v711, v146 = *&v711->coreSuggestionsHandler[10], v147 = v707, LODWORD(v673) = enum case for REMRemindersListDataView.FetchSubtasks.on(_:), v148 = Subtasks, v146(v707), sub_1005CC954(&qword_100940630, &type metadata accessor for REMRemindersListDataView.FetchSubtasks, &protocol conformance descriptor for REMRemindersListDataView.FetchSubtasks), v149 = dispatch thunk of static Equatable.== infix(_:_:)(), v150 = *v145->storeController, (v150)(v147, v148), storeController = v145->storeController, (v150)(v108, v148), v151 = v150, v152 = v699, (v149))
  {
    v212 = objc_opt_self();
    v213 = String._bridgeToObjectiveC()();
    [v212 internalErrorWithDebugDescription:v213];

    swift_willThrow();
    return v108;
  }

  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
  v153 = v693;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v144(v138, v152);
  swift_storeEnumTagMultiPayload();
  v643 = sub_100043AA8();
  sub_1000513B4(v153);
  if (qword_1009363F8 != -1)
  {
    goto LABEL_238;
  }

LABEL_5:
  v696 = v151;
  v154 = qword_100974F68;
  v155 = qword_100936400;

  v156 = v698;
  if (v155 != -1)
  {
    swift_once();
  }

  v713 = v154;

  sub_100271A80(v157);
  v158 = v713;
  v159 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v160 = [objc_allocWithZone(NSFetchRequest) init];
  v161 = [swift_getObjCClassFromMetadata() entity];
  [v160 setEntity:v161];

  [v160 setAffectedStores:0];
  [v160 setPredicate:v643];
  v713 = _swiftEmptySetSingleton;

  sub_100050AD0(v162);
  v158, v163, v164, v165, v166, v167, v168, v169;
  v170 = v713;
  v171 = v703;
  v172 = sub_1003FE014(v713);
  v151 = v171;
  v170, v173, v174, v175, v176, v177, v178, v179;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v172, v181, v182, v183, v184, v185, v186, v187;
  [v160 setPropertiesToFetch:isa];
  v158, v188, v189, v190, v191, v192, v193, v194;

  if (qword_100936680 != -1)
  {
    swift_once();
  }

  v195 = _s9UtilitiesO12SortingStyleOMa(0);
  v196 = sub_100006654(v195, qword_10094DE78);
  v197 = v687;
  v198 = v701;
  v199 = v686;
  (*(v687 + 104))(v701, enum case for REMRemindersListDataView.ShowCompleted.off(_:), v686);
  v200 = sub_10053CE0C(v196, v198, 0);
  v202 = *(v197 + 8);
  v108 = v197 + 8;
  v201 = v202;
  (v202)(v198, v199);
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v203 = Array._bridgeToObjectiveC()().super.isa;
  v200, v204, v205, v206, v207, v208, v209, v210;
  [v160 setSortDescriptors:v203];

  v211 = NSManagedObjectContext.fetch<A>(_:)();
  v703 = v171;
  if (v171)
  {

    return v108;
  }

  v707 = v211;
  v678 = v201;
  v668 = v159;
  v627 = v160;
  v687 = v108;
  v215 = v681;
  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
  v216 = v689;
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v217 = v215;
  v218 = v699;
  v219 = v694;
  (v694)(v217, v699);
  v220 = v682;
  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
  v221 = v684;
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v219(v220, v218);
  v222 = v711;
  v223 = v683;
  v224 = Subtasks;
  (*v711->clientIdentity)(v683, v216, Subtasks);
  v225 = (*&v222->contactInteractionWriter[2])(v223, v224);
  if (v225 == enum case for REMRemindersListDataView.FetchSubtasks.off(_:) || v225 == v673)
  {
    v711 = sub_10038E654(&_swiftEmptyArrayStorage);
    v226 = v704;
    v227 = v678;
  }

  else
  {
    v226 = v704;
    v227 = v678;
    if (v225 != enum case for REMRemindersListDataView.FetchSubtasks.count(_:))
    {
      goto LABEL_261;
    }

    v108 = v707;
    v228 = v703;
    sub_100539C70(v707, v221, v702, 0);
    v237 = v627;
    v703 = v228;
    if (v228)
    {
      v108, v230, v231, v232, v233, v234, v235, v236;

      (v227)(v221, v686);
      (v696)(v689, Subtasks);
      return v108;
    }

    v711 = v229;
  }

  (v227)(v221, v686);
  (v696)(v689, Subtasks);
  static Calendar.current.getter();
  v108 = v679;
  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.today.getter();
  Calendar.startOfDay(for:)();
  v238 = *(v652 + 8);
  v629 = v652 + 8;
  v628 = v238;
  v238(v108, v156);
  v239 = v707;
  v693 = (v707 >> 62);
  if (v707 >> 62)
  {
    goto LABEL_245;
  }

  v696 = *((v707 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v240 = v703;
LABEL_22:
  v673 = v239 & 0xC000000000000001;
  if ((v239 & 0xC000000000000001) != 0)
  {

    if (v696)
    {
      v248 = 0;
      v249 = v696;
      do
      {
        v250 = v248 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v248);
        v248 = v250;
      }

      while (v249 != v250);
    }

    if (!v693)
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (!v693)
    {
LABEL_27:
      v251 = 0;
      v702 = (v707 & 0xFFFFFFFFFFFFFF8);
      v227 = ((v707 & 0xFFFFFFFFFFFFFF8) + 32);
      v252 = ((2 * v696) | 1);
      goto LABEL_30;
    }
  }

  v707, v241, v242, v243, v244, v245, v246, v247;
  v702 = _CocoaArrayWrapper.subscript.getter();
  v227 = v253;
  v251 = v254;
  v252 = v255;
LABEL_30:
  v256 = v672;
  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.style.getter();
  v257 = (*(v676 + 88))(v256, v677);
  LODWORD(v683) = enum case for REMRemindersListDataView.ScheduledByDateBucketsStyle.regular(_:);
  LODWORD(v684) = v257;
  if (v257 != enum case for REMRemindersListDataView.ScheduledByDateBucketsStyle.regular(_:) && v257 != enum case for REMRemindersListDataView.ScheduledByDateBucketsStyle.compact(_:))
  {
    goto LABEL_260;
  }

  sub_1005C7E04(v702, v227, v251, v252, v226);
  if (v259)
  {
    v263 = v259;
    if (v261 != v262 >> 1)
    {
      Subtasks = (v262 >> 1);
      v348 = v670;
      v349 = v260;
      v350 = v261;
      v108 = v262;
      REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
      v351 = v671;
      REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
      v352.n128_f64[0] = (v694)(v348, v699);
      v353 = v349;
      v354 = v711;
      v355 = sub_1005C7ED8(v263, v353, v350, v108, v352, v351, v711);
      if (v240)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v707, v356, v357, v358, v359, v360, v361, v362;

        v354, v363, v364, v365, v366, v367, v368, v369;
        (v678)(v351, v686);
        v628(v704, v698);
        goto LABEL_195;
      }

      v397 = v355;
      (v678)(v351, v686);
      v398 = v656;
      *v656 = v397;
      (*(v685 + 104))(v398, enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.pastDue(_:), v700);
      v399 = sub_100365C50(0, 1, 1, &_swiftEmptyArrayStorage);
      v401 = *v399->clientIdentity;
      v400 = *&v399->clientIdentity[8];
      v402 = v399;
      if (v401 >= v400 >> 1)
      {
        v402 = sub_100365C50((v400 > 1), v401 + 1, 1, v399);
      }

      *v402->clientIdentity = v401 + 1;
      (*(v685 + 32))(v402 + ((*(v685 + 80) + 32) & ~*(v685 + 80)) + *(v685 + 72) * v401, v398, v700);
      v403 = Subtasks;
      if (v696 < Subtasks)
      {
        __break(1u);
LABEL_251:
        __break(1u);
LABEL_252:
        __break(1u);
LABEL_253:
        __break(1u);
LABEL_254:
        __break(1u);
LABEL_255:
        __break(1u);
LABEL_256:
        __break(1u);
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
LABEL_260:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
LABEL_261:
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
LABEL_262:

        __break(1u);
        goto LABEL_263;
      }

      if (v693)
      {
        v404 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v404 = *((v707 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v404 < v403)
      {
        goto LABEL_251;
      }

      if (!v673 || v403 == v696)
      {
        v408 = v707;
      }

      else
      {
        if (v403 >= v696)
        {
          goto LABEL_254;
        }

        v408 = v707;

        v409 = Subtasks;
        v410 = v696;
        do
        {
          v411 = v409 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v409);
          v409 = v411;
        }

        while (v410 != v411);
      }

      v703 = 0;
      if (v693)
      {
        v408, v412, v413, v414, v415, v416, v417, v418;
        v419 = _CocoaArrayWrapper.subscript.getter();
        v227 = v420;
        v251 = v421;
        storeController = v422;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v702 = v419;
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v227 = ((v408 & 0xFFFFFFFFFFFFFF8) + 32);
        storeController = (2 * v696) | 1;
        v702 = (v408 & 0xFFFFFFFFFFFFFF8);
        v251 = Subtasks;
      }

      v108 = v402;
      v156 = v698;
      goto LABEL_40;
    }

    storeController = v252;
    v703 = v240;
    swift_unknownObjectRelease();
  }

  else
  {
    storeController = v252;
    v703 = v240;
  }

  v108 = &_swiftEmptyArrayStorage;
LABEL_40:
  v264 = v690;
  v265 = 2;
  if (v684 == v683)
  {
    v265 = 7;
  }

  v670 = v265;
  v151 = v707;
  v266 = (v706 + 48);
  Subtasks = (v706 + 32);
  if (v707 < 0)
  {
    v267 = v707;
  }

  else
  {
    v267 = v707 & 0xFFFFFFFFFFFFFF8;
  }

  v671 = v267;
  v672 = (v707 & 0xFFFFFFFFFFFFFF8);
  v648 = (v707 & 0xFFFFFFFFFFFFFF8) + 32;
  v268 = 1;
  v647 = ((2 * v696) | 1);
  v682 = (v652 + 16);
  LODWORD(v656) = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.day(_:);
  v677 = (v685 + 104);
  v676 = v685 + 32;
  v681 = (v652 + 40);
  v269 = v704;
  do
  {
    v689 = v268;
    v271 = Calendar.beginningOfNextDay(_:)();
    __chkstk_darwin(v271, v272);
    v624 = v264;
    v273 = v703;
    sub_100260DE4(sub_1005CC918, &v622, v227, v251, storeController);
    v703 = v273;
    v701 = v108;
    if (v275)
    {
      v282 = v227;
      v283 = storeController;
      goto LABEL_55;
    }

    if (v251 < v274)
    {
      if ((storeController >> 1) < v251)
      {
        goto LABEL_235;
      }

      if ((storeController >> 1) < v274)
      {
        goto LABEL_236;
      }

      if (v274 < 0)
      {
        goto LABEL_237;
      }

      v282 = v227;
      v283 = 2 * v274;
LABEL_55:
      swift_unknownObjectRetain();
      v284 = v675;
      REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
      REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
      (v694)(v284, v699);
      v292 = (v283 >> 1);
      v293 = &_swiftEmptyArrayStorage;
      storeController = v292;
      v227 = v292 - v251;
      if (v292 != v251)
      {
        v296 = storeController;
        if (v251 > storeController)
        {
          v296 = v251;
        }

        v297 = v296 - v251;
        v298 = &v282[8 * v251];
        while (v297)
        {
          v299 = *v298;
          v300 = [v299 objectID];
          v301 = v300;
          v302 = v711;
          if (*v711->clientIdentity)
          {
            v303 = sub_100363FF4(v300);
            if (v304)
            {
              v305 = *(*&v302->clientIdentity[40] + 8 * v303);
            }

            else
            {
              v305 = 0;
            }

            v151 = v707;
          }

          else
          {
            v305 = 0;
          }

          v306 = v710;
          sub_1005384A4(v299, v305, 0, v710);
          v307 = v712;
          if ((*v266)(v306, 1, v712) == 1)
          {
            sub_1000050A4(v306, &qword_100940628, &unk_1007A6A20);
          }

          else
          {
            v308 = *Subtasks;
            (*Subtasks)(v709, v306, v307);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v293 = sub_100365A24(0, *v293->clientIdentity + 1, 1, v293);
            }

            v310 = *v293->clientIdentity;
            v309 = *&v293->clientIdentity[8];
            if (v310 >= v309 >> 1)
            {
              v293 = sub_100365A24((v309 > 1), v310 + 1, 1, v293);
            }

            *v293->clientIdentity = v310 + 1;
            v308(v293 + ((*(v706 + 80) + 32) & ~*(v706 + 80)) + *(v706 + 72) * v310, v709, v712);
          }

          --v297;
          ++v298;
          if (!--v227)
          {
            goto LABEL_56;
          }
        }

        __break(1u);
LABEL_111:
        v396 = &_swiftEmptyArrayStorage;
        v108 = v698;
        goto LABEL_145;
      }

LABEL_56:
      (v678)(v688, v686);
      v294 = storeController;
      if (v696 < storeController)
      {
        __break(1u);
LABEL_231:
        __break(1u);
LABEL_232:
        __break(1u);
LABEL_233:
        __break(1u);
LABEL_234:
        __break(1u);
LABEL_235:
        __break(1u);
LABEL_236:
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        swift_once();
        goto LABEL_5;
      }

      if (v693)
      {
        v295 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v295 = *v672->clientIdentity;
      }

      v156 = v698;
      v269 = v704;
      if (v295 < v294)
      {
        goto LABEL_231;
      }

      if (!v673 || v294 == v696)
      {

        if (!v693)
        {
LABEL_85:
          swift_unknownObjectRelease_n();
          v702 = v672;
          v227 = v648;
          v251 = storeController;
          storeController = v647;
LABEL_88:
          v264 = v690;
          goto LABEL_90;
        }
      }

      else
      {
        if (v294 >= v696)
        {
          goto LABEL_232;
        }

        v311 = v294;
        v312 = v696;
        do
        {
          v313 = v311 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v311);
          v311 = v313;
        }

        while (v312 != v313);
        if (!v693)
        {
          goto LABEL_85;
        }
      }

      v151, v314, v315, v316, v317, v318, v319, v320;
      v321 = _CocoaArrayWrapper.subscript.getter();
      v227 = v322;
      v251 = v323;
      storeController = v324;
      swift_unknownObjectRelease_n();
      v702 = v321;
      goto LABEL_88;
    }

    v293 = &_swiftEmptyArrayStorage;
LABEL_90:
    if (v684 == v683)
    {
      v293, v275, v276, v277, v278, v279, v280, v281;
    }

    else
    {
      v325 = *v293->clientIdentity;
      v293, v275, v276, v277, v278, v279, v280, v281;
      if (!v325)
      {
        v293, v326, v327, v328, v329, v330, v331, v332;
        v108 = v701;
        goto LABEL_47;
      }
    }

    (*v682)(v679, v269);
    v333 = v691;
    REMRemindersListDataView.ScheduledDateBucketsModel.Day.init(date:reminders:)();
    (*v677)(v333, v656, v700);
    v108 = v701;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v108 = sub_100365C50(0, *(v108 + 16) + 1, 1, v108);
    }

    v335 = *(v108 + 16);
    v334 = *(v108 + 24);
    if (v335 >= v334 >> 1)
    {
      v108 = sub_100365C50((v334 > 1), v335 + 1, 1, v108);
    }

    *(v108 + 16) = v335 + 1;
    (*(v685 + 32))(v108 + ((*(v685 + 80) + 32) & ~*(v685 + 80)) + *(v685 + 72) * v335, v691, v700);
    v269 = v704;
    v264 = v690;
LABEL_47:
    v270 = *v681;
    (*v681)(v269, v264, v156);
    v268 = (v689 + 1);
  }

  while (v689 != v670);
  v630 = v270;
  if (v684 == v683)
  {
    v156 = v703;
    v336 = v640;
    v337 = v639;
    v338 = v638;
    v339 = v637;
    goto LABEL_152;
  }

  v710 = v251;
  v701 = v108;
  v340 = v636;
  v341 = v649;
  v342 = v650;
  (*(v636 + 104))(v649, enum case for Calendar.Component.day(_:), v650);
  v343 = v634;
  v344 = v704;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v340 + 8))(v341, v342);
  v345 = v652;
  v346 = *(v652 + 48);
  v347 = v346(v343, 1, v156);
  if (v347 == 1)
  {
    v151 = v635;
    (*v682)(v635, v344, v156);
    if (v346(v343, 1, v156) != 1)
    {
      sub_1000050A4(v343, &unk_100938850, qword_100795AE0);
    }
  }

  else
  {
    v151 = v635;
    (*(v345 + 32))(v635, v343, v156);
  }

  sub_1005C7E04(v702, v227, v710, storeController, v151);
  v371 = v633;
  if (!v370)
  {
    goto LABEL_111;
  }

  v372 = v370;
  v373 = v285;
  v374 = v286;
  v108 = v287;
  v375 = v632;
  REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
  v376.n128_f64[0] = (v694)(v375, v699);
  v377 = v373;
  v378 = v711;
  v379 = v703;
  v380 = sub_1005C7ED8(v372, v377, v374, v108, v376, v371, v711);
  if (v379)
  {
    swift_unknownObjectRelease();
    v707, v381, v382, v383, v384, v385, v386, v387;
    v378, v388, v389, v390, v391, v392, v393, v394;
    swift_unknownObjectRelease();

    (v678)(v371, v686);
    v395 = v151;
    goto LABEL_194;
  }

  v396 = v380;
  (v678)(v371, v686);
  v405 = v696;
  v710 = (v108 >> 1);
  v406 = v696 < (v108 >> 1);
  v108 = v698;
  if (v406)
  {
    goto LABEL_252;
  }

  if (v693)
  {
    v407 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v407 = *v672->clientIdentity;
  }

  if (v407 < v710)
  {
    goto LABEL_253;
  }

  v703 = 0;
  if (!v673 || v710 == v405)
  {
  }

  else
  {
    if (v710 >= v405)
    {
      goto LABEL_255;
    }

    v423 = v710;
    do
    {
      v424 = v423 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v423);
      v423 = v424;
    }

    while (v405 != v424);
  }

  if (v693)
  {
    v707, v425, v426, v427, v428, v429, v430, v431;
    v432 = _CocoaArrayWrapper.subscript.getter();
    v227 = v433;
    v710 = v434;
    storeController = v435;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v702 = v432;
  }

  else
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v702 = v672;
    v227 = v648;
    storeController = v647;
  }

LABEL_145:
  v156 = v631;
  v436 = *v396->clientIdentity;
  v396, v285, v286, v287, v288, v289, v290, v291;
  v226 = v704;
  if (v436)
  {
    v444 = *(sub_1000F5104(&qword_10094DEB8, &qword_1007B3C78) + 48);
    (*v682)(v156, v226, v108);
    *&v156[v444] = v396;
    (*v677)(v156, enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.nextFiveDays(_:), v700);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_249;
    }

    goto LABEL_147;
  }

  v396, v437, v438, v439, v440, v441, v442, v443;
  while (2)
  {
    v630(v226, v151, v108);
    v336 = v640;
    v337 = v639;
    v338 = v638;
    v339 = v637;
    v108 = v701;
    v251 = v710;
    v156 = v703;
LABEL_152:
    v706 = *(v646 + 56);
    Subtasks = (v646 + 56);
    LODWORD(v656) = enum case for Calendar.MatchingPolicy.nextTime(_:);
    v640 = v338 + 13;
    LODWORD(v639) = enum case for Calendar.RepeatedTimePolicy.first(_:);
    v638 = (v337 + 104);
    LODWORD(v637) = enum case for Calendar.SearchDirection.forward(_:);
    v635 = (v336 + 13);
    v634 = (v336 + 1);
    v633 = (v337 + 8);
    v632 = (v338 + 1);
    v691 = (v339 + 8);
    v690 = (v652 + 48);
    v631 = (v652 + 32);
    LODWORD(v652) = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.month(_:);
    v449 = 1;
LABEL_155:
    v709 = v449;
    v710 = v251;
    v712 = v227;
    v701 = v108;
    v703 = v156;
    (v706)(v666, 1, 1, v669);
    v457 = type metadata accessor for TimeZone();
    v458 = *(v457 - 8);
    v459 = *(v458 + 56);
    v689 = v457;
    v688 = v459;
    v679 = (v458 + 56);
    (v459)(v667, 1, 1);
    LOBYTE(v625) = 1;
    v624 = 0;
    LOBYTE(v623) = 1;
    v622 = 0;
    v460 = v658;
    DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
    v461 = v659;
    v462 = v660;
    (*v640)(v659, v656, v660);
    v463 = v661;
    v464 = v662;
    (*v638)(v661, v639, v662);
    v465 = v663;
    v466 = v664;
    (*v635)(v663, v637, v664);
    v467 = v657;
    Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)();
    (*v634)(v465, v466);
    v468 = v467;
    (*v633)(v463, v464);
    v469 = v698;
    (*v632)(v461, v462);
    v675 = *v691;
    (v675)(v460, v665);
    v470 = *v690;
    v471 = (*v690)(v467, 1, v469);
    v670 = v470;
    if (v471 == 1)
    {
      v472 = v680;
      (*v682)(v680, v704, v469);
      v473 = (v470)(v467, 1, v469);
      v226 = v699;
      v227 = v694;
      v108 = v695;
      v475 = v703;
      v251 = v710;
      if (v473 != 1)
      {
        v473 = sub_1000050A4(v468, &unk_100938850, qword_100795AE0);
      }
    }

    else
    {
      v472 = v680;
      v473 = (*v631)(v680, v467, v469);
      v226 = v699;
      v227 = v694;
      v108 = v695;
      v475 = v703;
      v251 = v710;
    }

    __chkstk_darwin(v473, v474);
    v624 = v472;
    sub_100260DE4(sub_1005CC99C, &v622, v712, v251, storeController);
    v156 = v475;
    if (v477)
    {
      v484 = v655;
      goto LABEL_166;
    }

    v151 = v707;
    if (v251 >= v476)
    {
      v497 = &_swiftEmptyArrayStorage;
      v108 = v701;
      v227 = v712;
      goto LABEL_182;
    }

    v484 = v655;
    if ((storeController >> 1) < v251)
    {
      goto LABEL_240;
    }

    if ((storeController >> 1) < v476)
    {
      goto LABEL_241;
    }

    if (v476 < 0)
    {
      goto LABEL_242;
    }

    storeController = storeController & 1 | (2 * v476);
LABEL_166:
    v485 = v702;
    swift_unknownObjectRetain();
    v486 = v654;
    REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
    REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
    v487.n128_f64[0] = (v227)(v486, v226);
    v488 = storeController;
    v489 = sub_1005C7ED8(v485, v712, v710, storeController, v487, v484, v711);
    if (!v475)
    {
      v497 = v489;
      (v678)(v484, v686);
      v251 = v488 >> 1;
      v226 = v696;
      v108 = v701;
      v151 = v707;
      if (v696 < v251)
      {
        goto LABEL_233;
      }

      if (v693)
      {
        v498 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v498 = *v672->clientIdentity;
      }

      if (v498 < v251)
      {
        goto LABEL_234;
      }

      if (!v673 || v251 == v226)
      {

        if (!v693)
        {
          goto LABEL_178;
        }
      }

      else
      {
        if (v251 >= v226)
        {
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          v696 = _CocoaArrayWrapper.endIndex.getter();
          if (v696 < 0)
          {
            goto LABEL_258;
          }

          if (_CocoaArrayWrapper.endIndex.getter() < 0)
          {
            goto LABEL_259;
          }

          if (_CocoaArrayWrapper.endIndex.getter() < v696)
          {
            __break(1u);
LABEL_249:
            v701 = sub_100365C50(0, *v701->clientIdentity + 1, 1, v701);
LABEL_147:
            v446 = *v701->clientIdentity;
            v445 = *&v701->clientIdentity[8];
            if (v446 >= v445 >> 1)
            {
              v701 = sub_100365C50((v445 > 1), v446 + 1, 1, v701);
            }

            v447 = v700;
            v448 = v701;
            *v701->clientIdentity = v446 + 1;
            (*(v685 + 32))(v448 + ((*(v685 + 80) + 32) & ~*(v685 + 80)) + *(v685 + 72) * v446, v156, v447);
            continue;
          }

LABEL_263:
          v156 = v698;
          v240 = v703;
          v226 = v704;
          v239 = v707;
          goto LABEL_22;
        }

        v499 = v251;
        do
        {
          v500 = (v499 + 1);
          _ArrayBuffer._typeCheckSlowPath(_:)(v499);
          v499 = v500;
        }

        while (v226 != v500);
        if (!v693)
        {
LABEL_178:
          swift_unknownObjectRelease_n();
          v702 = v672;
          v227 = v648;
          storeController = v647;
          goto LABEL_182;
        }
      }

      v151, v501, v502, v503, v504, v505, v506, v507;
      v508 = _CocoaArrayWrapper.subscript.getter();
      v227 = v509;
      v251 = v510;
      storeController = v511;
      swift_unknownObjectRelease_n();
      v702 = v508;
LABEL_182:
      if (v684 == v683)
      {
        v497, v477, v478, v479, v480, v481, v482, v483;
        goto LABEL_185;
      }

      v512 = *v497->clientIdentity;
      v497, v477, v478, v479, v480, v481, v482, v483;
      if (v512)
      {
LABEL_185:
        v520 = *(sub_1000F5104(&qword_10094DEB8, &qword_1007B3C78) + 48);
        v521 = v674;
        (*v682)(v674, v704, v698);
        *&v521[v520] = v497;
        (*v677)(v521, v652, v700);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_100365C50(0, *(v108 + 16) + 1, 1, v108);
        }

        v523 = *(v108 + 16);
        v522 = *(v108 + 24);
        if (v523 >= v522 >> 1)
        {
          v108 = sub_100365C50((v522 > 1), v523 + 1, 1, v108);
        }

        *(v108 + 16) = v523 + 1;
        (*(v685 + 32))(v108 + ((*(v685 + 80) + 32) & ~*(v685 + 80)) + *(v685 + 72) * v523, v674, v700);
      }

      else
      {
        v497, v513, v514, v515, v516, v517, v518, v519;
      }

      v630(v704, v680, v698);
      v449 = (v709 + 1);
      if (v709 != 12)
      {
        goto LABEL_155;
      }

      v151, v450, v451, v452, v453, v454, v455, v456;
      v526 = storeController;
      if (v251 == storeController >> 1)
      {
        swift_unknownObjectRelease();
        v711, v527, v528, v529, v530, v531, v532, v533;
        v156 = v698;
        v534 = v692;
        v535 = v704;
LABEL_228:

        v628(v535, v156);
        (*(v646 + 8))(v534, v669);
        return v108;
      }

      v701 = v108;
      __chkstk_darwin(v524, v525);
      v624 = v692;
      v625 = v704;
      v553 = swift_unknownObjectRetain();
      v554 = sub_1005C4BEC(v553, v227, v251, v526, sub_1005CC938);
      v713 = sub_100277DC4(v554);
      sub_1005C4E20(&v713);
      v156 = v698;
      v151 = v475;
      if (v475)
      {
        goto LABEL_262;
      }

      v554, v555, v556, v557, v558, v559, v560, v561;
      v226 = v713;
      v712 = *v713->clientIdentity;
      if (!v712)
      {
LABEL_227:
        swift_unknownObjectRelease();
        v711, v608, v609, v610, v611, v612, v613, v614;

        v534 = v692;
        v535 = v704;
        v108 = v701;
        goto LABEL_228;
      }

      v108 = 0;
      v710 = &v713->clientIdentity[16];
      LODWORD(v709) = enum case for Calendar.Component.year(_:);
      v707 = v636 + 104;
      storeController = v636 + 8;
      LODWORD(v693) = enum case for REMRemindersListDataView.ScheduledDateBucketsModel.Bucket.year(_:);
      v696 = v713;
      while (2)
      {
        v703 = v151;
        if (v108 >= *v226->clientIdentity)
        {
          goto LABEL_243;
        }

        v562 = &v710[16 * v108];
        v227 = *v562;
        v563 = *(v562 + 1);
        v564 = v649;
        v151 = v650;
        (*v707)(v649, v709, v650);

        v565 = v704;
        v566 = Calendar.component(_:from:)();
        (*storeController)(v564, v151);
        if (v227 == v566)
        {
          (*v682)(v653, v565, v156);
          goto LABEL_206;
        }

        (v706)(v666, 1, 1, v669);
        v688(v667, 1, 1, v689);
        LOBYTE(v625) = 1;
        v624 = 0;
        LOBYTE(v623) = 1;
        v622 = 0;
        v151 = v642;
        DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
        v567 = v641;
        Calendar.date(from:)();
        (v675)(v151, v665);
        if ((v670)(v567, 1, v156) == 1)
        {
          v563, v568, v569, v570, v571, v572, v573, v574;
          sub_1000050A4(v567, &unk_100938850, qword_100795AE0);
          v151 = v703;
          v226 = v696;
        }

        else
        {
          (*v631)(v653, v567, v156);
LABEL_206:
          v226 = v686;
          v156 = (v563 >> 62);
          if (v563 >> 62)
          {
            v607 = _CocoaArrayWrapper.endIndex.getter();
            if (v607 < 0)
            {
              goto LABEL_256;
            }

            v575 = v607;
            if (_CocoaArrayWrapper.endIndex.getter() < 0)
            {
              goto LABEL_257;
            }

            if (_CocoaArrayWrapper.endIndex.getter() < v575)
            {
              goto LABEL_244;
            }

            v226 = v686;
          }

          else
          {
            v575 = *((v563 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if ((v563 & 0xC000000000000001) != 0)
          {

            if (v575)
            {
              v583 = 0;
              do
              {
                v584 = v583 + 1;
                _ArrayBuffer._typeCheckSlowPath(_:)(v583);
                v583 = v584;
              }

              while (v575 != v584);
            }
          }

          else
          {
          }

          v563, v576, v577, v578, v579, v580, v581, v582;
          if (v156)
          {
            v227 = _CocoaArrayWrapper.subscript.getter();
            v586 = v588;
            v585 = v589;
            v587 = v590;
            v563, v588, v589, v590, v591, v592, v593, v594;
          }

          else
          {
            v585 = 0;
            v227 = (v563 & 0xFFFFFFFFFFFFFF8);
            v586 = (v563 & 0xFFFFFFFFFFFFFF8) + 32;
            v587 = ((2 * v575) | 1);
          }

          v595 = v644;
          REMRemindersListDataView.ScheduledByDateBucketsInvocation.Parameters.configuration.getter();
          v596 = v645;
          REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
          v597.n128_f64[0] = (v694)(v595, v699);
          v598 = v703;
          v599 = sub_1005C7ED8(v227, v586, v585, v587, v597, v596, v711);
          if (v598)
          {
            swift_unknownObjectRelease();
            v711, v615, v616, v617, v618, v619, v620, v621;
            swift_unknownObjectRelease();

            (v678)(v596, v226);
            v543 = &v685;
            goto LABEL_193;
          }

          v600 = v599;
          v151 = 0;
          (v678)(v596, v226);
          swift_unknownObjectRelease();
          v601 = *(sub_1000F5104(&qword_10094DEB8, &qword_1007B3C78) + 48);
          v602 = v651;
          v156 = v698;
          (*v682)(v651, v653, v698);
          *&v602[v601] = v600;
          (*v677)(v602, v693, v700);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v701 = sub_100365C50(0, *v701->clientIdentity + 1, 1, v701);
          }

          v226 = v696;
          v604 = *v701->clientIdentity;
          v603 = *&v701->clientIdentity[8];
          if (v604 >= v603 >> 1)
          {
            v701 = sub_100365C50((v603 > 1), v604 + 1, 1, v701);
          }

          v628(v653, v156);
          v605 = v700;
          v606 = v701;
          *v701->clientIdentity = v604 + 1;
          (*(v685 + 32))(v606 + ((*(v685 + 80) + 32) & ~*(v685 + 80)) + *(v685 + 72) * v604, v651, v605);
        }

        if (++v108 == v712)
        {
          goto LABEL_227;
        }

        continue;
      }
    }

    break;
  }

  v707, v490, v491, v492, v493, v494, v495, v496;
  v711, v536, v537, v538, v539, v540, v541, v542;
  swift_unknownObjectRelease_n();

  (v678)(v484, v686);
  v543 = &v712;
LABEL_193:
  v395 = *(v543 - 32);
LABEL_194:
  v544 = v698;
  v545 = v628;
  v628(v395, v698);
  v701, v546, v547, v548, v549, v550, v551, v552;
  v545(v704, v544);
LABEL_195:
  (*(v646 + 8))(v692, v669);
  return v108;
}

uint64_t sub_1005CC954(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1005CC9B8(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v2[35] = *v1;
  v3 = type metadata accessor for Locale();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[39] = v4;
  v2[40] = *(v4 - 8);
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v2[44] = v5;
  v2[45] = *(v5 - 8);
  v2[46] = swift_task_alloc();

  return _swift_task_switch(sub_1005CCB70, 0, 0);
}

uint64_t sub_1005CCB70()
{
  v35 = v0;
  if (qword_100936688 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 376) = sub_100006654(v1, qword_10094DED0);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 272);
    v4 = *(v0 + 280);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v6 = 136446466;
    *(v0 + 240) = v4;
    swift_getMetatypeMetadata();
    v9 = String.init<A>(describing:)();
    v11 = v10;
    v12 = sub_10000668C(v9, v10, &v34);
    v11, v13, v14, v15, v16, v17, v18, v19;
    *(v6 + 4) = v12;
    *(v6 + 12) = 2114;
    v20 = *(v5 + 24);
    *(v6 + 14) = v20;
    *v7 = v20;
    v21 = v20;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Start execution {listObjectID: %{public}@}", v6, 0x16u);
    sub_1000050A4(v7, &unk_100938E70, &unk_100797230);

    sub_10000607C(v8);
  }

  v22 = *(v0 + 344);
  v23 = *(v0 + 320);
  v25 = *(v0 + 264);
  v24 = *(v0 + 272);
  Date.init()();
  v26 = *(v24 + 24);
  *(v0 + 384) = v26;
  v27 = swift_allocObject();
  *(v0 + 392) = v27;
  *(v27 + 16) = v26;
  *(v27 + 24) = v25;
  *(v0 + 76) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v28 = *(v23 + 104);
  *(v0 + 400) = v28;
  *(v0 + 408) = (v23 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v28(v22);
  v29 = v26;
  v30 = v25;
  v31 = swift_task_alloc();
  *(v0 + 416) = v31;
  *v31 = v0;
  v31[1] = sub_1005CCE54;
  v32 = *(v0 + 344);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 80, v32, sub_1005CF864, v27, &_s9UtilitiesO40REMCDListThreadSafePartialRepresentationVN);
}

uint64_t sub_1005CCE54()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *(*v1 + 320);
  v5 = *(*v1 + 312);
  v2[53] = v0;

  v6 = *(v4 + 8);
  v2[54] = v6;
  v2[55] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);

  if (v0)
  {
    v7 = sub_1005CD34C;
  }

  else
  {
    v7 = sub_1005CCFF4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1005CCFF4()
{
  v39 = v0;
  v1 = *(v0 + 112);
  *(v0 + 32) = *(v0 + 96);
  *(v0 + 48) = v1;
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 57) = *(v0 + 121);
  if (*(v0 + 49) & 1) != 0 || (*(v0 + 50))
  {

    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 384);
      v5 = *(v0 + 280);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v38 = v8;
      *v6 = 136446466;
      *(v0 + 232) = v5;
      swift_getMetatypeMetadata();
      v9 = String.init<A>(describing:)();
      v11 = v10;
      v12 = sub_10000668C(v9, v10, &v38);
      v11, v13, v14, v15, v16, v17, v18, v19;
      *(v6 + 4) = v12;
      *(v6 + 12) = 2114;
      *(v6 + 14) = v4;
      *v7 = v4;
      v20 = v4;
      _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Skipped suggesting conversion to grocery list because we already determined that we should suggest the conversion or it is already a grocery list {listObjectID: %{public}@}", v6, 0x16u);
      sub_1000050A4(v7, &unk_100938E70, &unk_100797230);

      sub_10000607C(v8);
    }

    sub_100332478(v0 + 16);
    v22 = *(v0 + 360);
    v21 = *(v0 + 368);
    v23 = *(v0 + 352);
    sub_1005CE19C(*(v0 + 272), v21, *(v0 + 280));
    (*(v22 + 8))(v21, v23);

    v24 = *(v0 + 8);

    return v24(0);
  }

  else
  {
    v26 = *(v0 + 400);
    v27 = *(v0 + 76);
    v28 = *(v0 + 384);
    v29 = *(v0 + 336);
    v30 = *(v0 + 312);
    v31 = *(v0 + 264);
    v32 = swift_allocObject();
    *(v0 + 448) = v32;
    *(v32 + 16) = v28;
    *(v32 + 24) = v31;
    v26(v29, v27, v30);
    v33 = v28;
    v34 = v31;
    v35 = swift_task_alloc();
    *(v0 + 456) = v35;
    v36 = sub_1000F5104(&unk_10093B300, &unk_100797780);
    *v35 = v0;
    v35[1] = sub_1005CD420;
    v37 = *(v0 + 336);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 248, v37, sub_1005CF880, v32, v36);
  }
}

uint64_t sub_1005CD34C()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  sub_1005CE19C(v0[34], v1, v0[35]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1005CD420()
{
  v2 = *(*v1 + 432);
  v3 = *(*v1 + 336);
  v4 = *(*v1 + 312);
  *(*v1 + 464) = v0;

  v2(v3, v4);

  if (v0)
  {
    v5 = sub_1005CD778;
  }

  else
  {
    v5 = sub_1005CD5BC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005CD5BC(uint64_t a1)
{
  v3 = v1[37];
  v2 = v1[38];
  v4 = v1[36];
  v5 = v1[31];
  v1[59] = v5;
  static Locale.current.getter();
  v6 = Locale.identifier.getter();
  v8 = v7;
  v1[60] = v6;
  v1[61] = v7;
  (*(v3 + 8))(v2, v4);
  if (*(v5 + 16))
  {
    v16 = swift_task_alloc();
    v1[62] = v16;
    *v16 = v1;
    v16[1] = sub_1005CD854;

    return sub_1005CE45C(v5, (v1 + 2), v6, v8);
  }

  else
  {
    v8, v9, v10, v11, v12, v13, v14, v15;
    v5, v18, v19, v20, v21, v22, v23, v24;
    sub_100332478((v1 + 2));
    v26 = v1[45];
    v25 = v1[46];
    v27 = v1[44];
    sub_1005CE19C(v1[34], v25, v1[35]);
    (*(v26 + 8))(v25, v27);

    v28 = v1[1];

    return v28(0);
  }
}

uint64_t sub_1005CD778()
{
  sub_100332478((v0 + 2));
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  sub_1005CE19C(v0[34], v1, v0[35]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1005CD854(char a1)
{
  v4 = *v2;
  *(*v2 + 504) = v1;

  if (v1)
  {
    *(v4 + 472), v5, v6, v7, v8, v9, v10, v11;
    v12 = sub_1005CDE40;
  }

  else
  {
    v13 = *(v4 + 488);
    *(v4 + 472), v5, v6, v7, v8, v9, v10, v11;
    v13, v14, v15, v16, v17, v18, v19, v20;
    *(v4 + 73) = a1 & 1;
    v12 = sub_1005CD99C;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1005CD99C()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 400);
  v3 = *(v0 + 76);
  v4 = *(v0 + 328);
  v5 = *(v0 + 312);
  v6 = *(v0 + 264);
  v7 = swift_allocObject();
  *(v0 + 512) = v7;
  *(v7 + 16) = v6;
  v8 = *(v0 + 32);
  *(v7 + 24) = *(v0 + 16);
  *(v7 + 40) = v8;
  *(v7 + 56) = *(v0 + 48);
  *(v7 + 65) = *(v0 + 57);
  *(v7 + 81) = v1;
  v2(v4, v3, v5);
  v9 = v6;
  sub_10033251C(v0 + 16, v0 + 144);
  v10 = swift_task_alloc();
  *(v0 + 520) = v10;
  *v10 = v0;
  v10[1] = sub_1005CDAE8;
  v11 = *(v0 + 328);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v10, v11, sub_1005CF89C, v7, &type metadata for () + 1);
}

uint64_t sub_1005CDAE8()
{
  v2 = *(*v1 + 432);
  v3 = *(*v1 + 328);
  v4 = *(*v1 + 312);
  *(*v1 + 528) = v0;

  v2(v3, v4);

  if (v0)
  {
    v5 = sub_1005CDD64;
  }

  else
  {
    v5 = sub_1005CDC84;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005CDC84()
{
  sub_100332478(v0 + 16);
  v1 = *(v0 + 73);
  v3 = *(v0 + 360);
  v2 = *(v0 + 368);
  v4 = *(v0 + 352);
  sub_1005CE19C(*(v0 + 272), v2, *(v0 + 280));
  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_1005CDD64()
{
  sub_100332478((v0 + 2));
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  sub_1005CE19C(v0[34], v1, v0[35]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_1005CDE40()
{
  v58 = v0;
  v1 = *(v0 + 488);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v1, v4, v5, v6, v7, v8, v9, v10;

  if (os_log_type_enabled(v2, v3))
  {
    v11 = *(v0 + 488);
    v56 = *(v0 + 480);
    v12 = *(v0 + 384);
    v13 = *(v0 + 280);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    v57[1] = v13;
    *v14 = 136446978;
    swift_getMetatypeMetadata();
    v16 = String.init<A>(describing:)();
    v18 = v17;
    v19 = sub_10000668C(v16, v17, v57);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v14 + 4) = v19;
    *(v14 + 12) = 2114;
    *(v14 + 14) = v12;
    *v15 = v12;
    *(v14 + 22) = 2082;
    v27 = v12;
    v28 = sub_10000668C(v56, v11, v57);
    v11, v29, v30, v31, v32, v33, v34, v35;
    *(v14 + 24) = v28;
    *(v14 + 32) = 2082;
    swift_getErrorValue();
    v36 = Error.rem_errorDescription.getter();
    v38 = v37;
    v39 = sub_10000668C(v36, v37, v57);
    v38, v40, v41, v42, v43, v44, v45, v46;
    *(v14 + 34) = v39;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Failed to predict whether to suggest conversion to grocery list {listObjectID: %{public}@, groceryLocaleID: %{public}s, error: %{public}s}", v14, 0x2Au);
    sub_1000050A4(v15, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
  }

  else
  {
    v47 = *(v0 + 488);

    v47, v48, v49, v50, v51, v52, v53, v54;
  }

  *(v0 + 73) = 0;

  return _swift_task_switch(sub_1005CD99C, 0, 0);
}

uint64_t sub_1005CE0D4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DED0);
  v1 = sub_100006654(v0, qword_10094DED0);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1005CE19C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936688 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_10094DED0);
  (*(v7 + 16))(v10, a2, v6);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33[0] = v32;
    *v14 = 136446722;
    v33[1] = a3;
    swift_getMetatypeMetadata();
    v16 = String.init<A>(describing:)();
    v18 = v17;
    v19 = sub_10000668C(v16, v17, v33);
    v18, v20, v21, v22, v23, v24, v25, v26;
    *(v14 + 4) = v19;
    *(v14 + 12) = 2114;
    v27 = *(a1 + 24);
    *(v14 + 14) = v27;
    *v15 = v27;
    *(v14 + 22) = 2048;
    v28 = v27;
    Date.rem_elapsedInMilliseconds.getter();
    v30 = v29;
    (*(v7 + 8))(v10, v6);
    *(v14 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s: Finished execution {listObjectID: %{public}@, elapsedSeconds: %f ms}", v14, 0x20u);
    sub_1000050A4(v15, &unk_100938E70, &unk_100797230);

    sub_10000607C(v32);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1005CE45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  v5[15] = swift_task_alloc();

  return _swift_task_switch(sub_1005CE500, 0, 0);
}

uint64_t sub_1005CE500(uint64_t a1)
{
  v3 = v1[14];
  v2 = v1[15];
  v5 = v1[12];
  v4 = v1[13];
  v7 = v1[10];
  v6 = v1[11];
  static TaskPriority.high.getter();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v2, 0, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v3;
  *(v9 + 40) = v5;
  *(v9 + 48) = v4;
  *(v9 + 56) = v7;
  v10 = *v6;
  v11 = v6[1];
  v12 = v6[2];
  *(v9 + 105) = *(v6 + 41);
  *(v9 + 80) = v11;
  *(v9 + 96) = v12;
  *(v9 + 64) = v10;

  sub_10033251C(v6, (v1 + 2));
  v13 = sub_100331E3C(0, 0, v2, &unk_1007B3D10, v9);
  v1[16] = v13;
  v14 = swift_task_alloc();
  v1[17] = v14;
  v15 = sub_1000F5104(&unk_1009399E0, &qword_100795D00);
  *v14 = v1;
  v14[1] = sub_1005CE6C0;

  return Task.value.getter(v1 + 73, v13, &type metadata for Bool, v15, &protocol self-conformance witness table for Error);
}

uint64_t sub_1005CE6C0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1005CE85C;
  }

  else
  {
    v2 = sub_1005CE7F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1005CE7F0()
{
  v1 = *(v0 + 73);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1005CE85C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_1005CE8C4(void *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v69 = a3;
  v70 = a2;
  v5 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v5, v6);
  v8 = (&v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1007953F0;
  *(v9 + 32) = a1;
  *v8 = v9;
  swift_storeEnumTagMultiPayload();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100799D70;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  v68 = a1;
  v11 = sub_10001F6F4();
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v12 = [objc_allocWithZone(NSFetchRequest) init];
  v13 = [swift_getObjCClassFromMetadata() entity];
  [v12 setEntity:v13];

  [v12 setAffectedStores:0];
  [v12 setPredicate:v11];
  v73 = _swiftEmptySetSingleton;

  sub_100391CC4(v14);
  inited, v15, v16, v17, v18, v19, v20, v21;
  v22 = v73;
  v23 = sub_1003FE48C(v73);
  v22, v24, v25, v26, v27, v28, v29, v30;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v23, v32, v33, v34, v35, v36, v37, v38;
  [v12 setPropertiesToFetch:isa];

  swift_setDeallocating();
  swift_arrayDestroy();
  if (qword_100936520 != -1)
  {
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v39 = Array._bridgeToObjectiveC()().super.isa;
  [v12 setSortDescriptors:v39];

  v40 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    sub_1004258C8(v8, _s10PredicatesOMa_1);

    return;
  }

  v73 = v40;
  v41 = v40;
  sub_1000F5104(&qword_10093F6F0, qword_10079A300);
  sub_100155610();
  v42 = Sequence.elements<A>(ofType:)();

  sub_1004258C8(v8, _s10PredicatesOMa_1);
  v41, v43, v44, v45, v46, v47, v48, v49;
  if (v42 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_7;
    }

LABEL_12:
    v42, v50, v51, v52, v53, v54, v55, v56;
    [objc_opt_self() noSuchObjectErrorWithObjectID:v68];
    swift_willThrow();
    return;
  }

  if (!*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v42 & 0xC000000000000001) != 0)
  {
    v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_10;
  }

  if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v57 = *(v42 + 32);
LABEL_10:
    v65 = v57;
    v42, v58, v59, v60, v61, v62, v63, v64;
    sub_100192C08(v65, v71);
    v66 = v71[1];
    v67 = v69;
    *v69 = v71[0];
    v67[1] = v66;
    v67[2] = v72[0];
    *(v67 + 41) = *(v72 + 9);
    return;
  }

  __break(1u);
}

void sub_1005CED34(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 groceryLocaleID];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1005CED9C(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setGroceryLocaleID:?];
}

void sub_1005CEE0C(void *a1@<X0>, void *a2@<X8>)
{
  v5 = 0x656C746974;
  v6 = _s10PredicatesOMa(0);
  __chkstk_darwin(v6, v7);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(sub_1000F5104(&qword_10093C920, qword_1007AC750) + 64);
  *v9 = a1;
  v9[8] = 1;
  v11 = enum case for REMRemindersListDataView.ShowCompleted.on(_:);
  v12 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  swift_storeEnumTagMultiPayload();
  v13 = a1;
  v14 = sub_100043AA8();
  sub_1004258C8(v9, _s10PredicatesOMa);
  v15 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v16 = [swift_getObjCClassFromMetadata() entity];
  [v15 setEntity:v16];

  [v15 setAffectedStores:0];
  [v15 setPredicate:v14];
  [v15 setResultType:2];

  [v15 setReturnsDistinctResults:0];
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100791340;
  *(v17 + 32) = 0x696669746E656469;
  *(v17 + 40) = 0xEA00000000007265;
  *(v17 + 88) = &type metadata for String;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = 0x656C746974;
  *(v17 + 72) = 0xE500000000000000;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v17, v19, v20, v21, v22, v23, v24, v25;
  [v15 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v26 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {

    return;
  }

  v27 = v26;
  v54 = 0;
  v57 = a2;
  if (v26 >> 62)
  {
LABEL_33:
    v63 = v27 & 0xFFFFFFFFFFFFFF8;
    v28 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v63 = v26 & 0xFFFFFFFFFFFFFF8;
    v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = v57;
  v55 = v15;
  if (!v28)
  {
    v56 = &_swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v30 = 0;
  v15 = (v27 & 0xC000000000000001);
  v56 = &_swiftEmptyArrayStorage;
  do
  {
    v31 = v30;
    while (1)
    {
      if (v15)
      {
        v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v31 >= *(v63 + 16))
        {
          goto LABEL_32;
        }

        v32 = *(v27 + 8 * v31 + 32);
      }

      v33 = v32;
      v30 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v34 = v5;
      *&v58 = v5;
      *(&v58 + 1) = 0xE500000000000000;
      v35 = [v32 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
      swift_unknownObjectRelease();
      if (v35)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v58 = 0u;
        v59 = 0u;
      }

      v60[0] = v58;
      v60[1] = v59;
      if (*(&v59 + 1))
      {
        break;
      }

      sub_1000050A4(v60, &qword_100939ED0, &qword_100791B10);
LABEL_9:
      ++v31;
      if (v30 == v28)
      {
        v29 = v57;
        goto LABEL_30;
      }
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_9;
    }

    v36 = v62;
    if (!v62)
    {
      goto LABEL_9;
    }

    v37 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v56 = sub_100365788(0, *v56->clientIdentity + 1, 1, v56, v39, v40, v41, v42);
    }

    v44 = *v56->clientIdentity;
    v43 = *&v56->clientIdentity[8];
    if (v44 >= v43 >> 1)
    {
      v56 = sub_100365788((v43 > 1), v44 + 1, 1, v56, v39, v40, v41, v42);
    }

    v45 = v56;
    *v56->clientIdentity = v44 + 1;
    v46 = v45 + 16 * v44;
    *(v46 + 4) = v37;
    *(v46 + 5) = v36;
    v29 = v57;
    v5 = v34;
  }

  while (v30 != v28);
LABEL_30:

  v27, v47, v48, v49, v50, v51, v52, v53;
  *v29 = v56;
}

uint64_t sub_1005CF334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  return _swift_task_switch(sub_1005CF35C, 0, 0);
}

uint64_t sub_1005CF35C()
{
  v0[8] = (*(v0[3] + 40))(v0[4], v0[5]);
  v1 = v0[7];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1005CF468;
  v5 = v0[6];

  return REMGroceryClassifier.shouldSuggestConvertToGrocery(titles:listName:)(v5, v2, v3);
}

uint64_t sub_1005CF468(char a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_1005CF604;
  }

  else
  {
    *(v4 + 88) = a1 & 1;
    v5 = sub_1005CF594;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1005CF594()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1005CF604()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_1005CF668(void *a1, uint64_t *a2, char a3)
{
  v4 = *a2;
  v11 = 0;
  v5 = [a1 existingObjectWithID:v4 error:&v11];
  v6 = v11;
  if (v5)
  {
    v7 = v5;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    v9 = v6;
    if (v8)
    {
      [v8 setShouldSuggestConversionToGroceryList:a3 & 1];
    }
  }

  else
  {
    v10 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

uint64_t sub_1005CF760()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1005CF7CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000FCBFC;

  return sub_1005CC9B8(a1);
}

uint64_t sub_1005CF8C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000FCBFC;

  return sub_1005CF334(a1, v4, v5, v6, v7, v8, v9, (v1 + 8));
}

uint64_t sub_1005CF9A4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DFA0);
  v1 = sub_100006654(v0, qword_10094DFA0);
  if (qword_1009364C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

Swift::Void __swiftcall RDStoreControllerMigrator_IsPinnedByCurrentUser.migrateStoreIfNeeded(_:metadata:)(NSPersistentStore _, NSMutableDictionary metadata)
{
  *&v8 = 0xD00000000000002FLL;
  *(&v8 + 1) = 0x80000001007B3DA0;
  v4 = [(objc_class *)metadata.super.super.isa __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_1001B2134(v10);
LABEL_9:
    sub_1005CFC74(_.super.isa);
    isa = Int._bridgeToObjectiveC()().super.super.isa;
    *&v10[0] = 0xD00000000000002FLL;
    *(&v10[0] + 1) = 0x80000001007B3DA0;
    [(objc_class *)metadata.super.super.isa __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
    return;
  }

  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  v5 = [v7 integerValue];

  if (v5 < 1)
  {
    goto LABEL_9;
  }
}

uint64_t sub_1005CFC74(void *a1)
{
  ObjectType = swift_getObjectType();
  if (qword_100936690 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006654(v3, qword_10094DFA0);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock[0] = ObjectType;
    *v7 = 136315394;
    swift_getMetatypeMetadata();
    v8 = String.init<A>(describing:)();
    v10 = v9;
    v11 = sub_10000668C(v8, v9, &v38);
    v10, v12, v13, v14, v15, v16, v17, v18;
    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v19 = sub_1003533B0();
    v21 = v20;
    v22 = sub_10000668C(v19, v20, &v38);
    v21, v23, v24, v25, v26, v27, v28, v29;
    *(v7 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: BEGIN {store: %{public}s}", v7, 0x16u);
    swift_arrayDestroy();
  }

  v30 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:1];
  v31 = [v4 persistentStoreCoordinator];
  [v30 setPersistentStoreCoordinator:v31];

  [v30 setTransactionAuthor:RDStoreControllerIsPinnedByCurrentUserMigrationAuthor];
  v32 = swift_allocObject();
  v32[2] = v30;
  v32[3] = v4;
  v32[4] = ObjectType;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1005D0970;
  *(v33 + 24) = v32;
  aBlock[4] = sub_1000529DC;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F95E8;
  v34 = _Block_copy(aBlock);
  v35 = v4;
  v36 = v30;

  [v36 performBlockAndWait:v34];

  _Block_release(v34);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  return result;
}

void sub_1005CFFBC(void *a1, void *a2, _TtC7remindd19RDXPCStorePerformer *a3)
{
  v150 = a3;
  v153 = a2;
  v154 = a1;
  v3 = _s10PredicatesOMa_1(0);
  __chkstk_darwin(v3, v4);
  v6 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for Date();
  v7 = *(v152 - 8);
  __chkstk_darwin(v152, v8);
  v149 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v151 = &v146 - v12;
  __chkstk_darwin(v13, v14);
  v16 = &v146 - v15;
  Date.init()();
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v18 = sub_10001F6F4();
  sub_1001555B4(v6);
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v19 = [objc_allocWithZone(NSFetchRequest) init];
  v20 = [swift_getObjCClassFromMetadata() entity];
  [v19 setEntity:v20];

  [v19 setAffectedStores:0];
  [v19 setPredicate:v18];
  v155 = _swiftEmptySetSingleton;

  sub_100391CC4(v21);
  inited, v22, v23, v24, v25, v26, v27, v28;
  v29 = v155;
  v30 = sub_1003FE48C(v155);
  v29, v31, v32, v33, v34, v35, v36, v37;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v30, v39, v40, v41, v42, v43, v44, v45;
  [v19 setPropertiesToFetch:isa];

  inited, v46, v47, v48, v49, v50, v51, v52;
  v53 = NSManagedObjectContext.fetch<A>(_:)();
  v63 = v53;
  v148 = v16;
  if (v53 >> 62)
  {
    v99 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v99 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v147 = v7;
  if (v99)
  {
    if (v99 < 1)
    {
      __break(1u);
    }

    v100 = 0;
    v101 = 0;
    while (1)
    {
      if ((v63 & 0xC000000000000001) != 0)
      {
        v102 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v102 = *(v63 + 8 * v101 + 32);
      }

      v103 = v102;
      if (([v102 isPinnedByCurrentUser] & 1) != 0 || objc_msgSend(v103, "sharingStatus") > 1)
      {
      }

      else
      {
        [v103 setIsPinnedByCurrentUser:1];

        if (__OFADD__(v100++, 1))
        {
          __break(1u);
          goto LABEL_21;
        }
      }

      if (v99 == ++v101)
      {
        goto LABEL_23;
      }
    }
  }

  v100 = 0;
LABEL_23:
  v63, v54, v55, v56, v57, v58, v59, v60;
  v105 = v154;
  v106 = [v154 hasChanges];
  v107 = v151;
  v108 = v152;
  v109 = v148;
  v110 = v149;
  if ((v106 & 1) == 0)
  {
    goto LABEL_26;
  }

  v155 = 0;
  if ([v105 save:&v155])
  {
    v111 = v155;
LABEL_26:
    if (qword_100936690 != -1)
    {
      swift_once();
    }

    v112 = type metadata accessor for Logger();
    sub_100006654(v112, qword_10094DFA0);
    v113 = v147;
    (*(v147 + 16))(v107, v109, v108);
    v114 = v153;
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v154 = swift_slowAlloc();
      v156 = v154;
      *v117 = 136315906;
      v155 = v150;
      swift_getMetatypeMetadata();
      v118 = String.init<A>(describing:)();
      LODWORD(v153) = v116;
      v120 = v119;
      v121 = sub_10000668C(v118, v119, &v156);
      v120, v122, v123, v124, v125, v126, v127, v128;
      *(v117 + 4) = v121;
      *(v117 + 12) = 2082;
      v129 = sub_1003533B0();
      v131 = v130;
      v132 = sub_10000668C(v129, v130, &v156);
      v131, v133, v134, v135, v136, v137, v138, v139;
      *(v117 + 14) = v132;
      *(v117 + 22) = 2050;
      *(v117 + 24) = v100;
      *(v117 + 32) = 2050;
      Date.init()();
      v140 = v151;
      Date.timeIntervalSince(_:)();
      v142 = v141;
      v143 = *(v113 + 8);
      v143(v110, v108);
      v143(v140, v108);
      *(v117 + 34) = v142;
      _os_log_impl(&_mh_execute_header, v115, v153, "%s: END {store: %{public}s, updateCount = %{public}ld, elapsedSeconds: %{public}f}", v117, 0x2Au);
      swift_arrayDestroy();

      v143(v148, v108);
    }

    else
    {

      v144 = *(v113 + 8);
      v144(v107, v108);
      v144(v109, v108);
    }

    return;
  }

  v145 = v155;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  (*(v147 + 8))(v109, v108);
  if (qword_100936690 != -1)
  {
    swift_once();
  }

  v61 = type metadata accessor for Logger();
  sub_100006654(v61, qword_10094DFA0);
  v62 = v153;
  swift_errorRetain();
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v156 = swift_slowAlloc();
    *v65 = 136315650;
    v155 = v150;
    swift_getMetatypeMetadata();
    v66 = String.init<A>(describing:)();
    v68 = v67;
    v69 = sub_10000668C(v66, v67, &v156);
    v68, v70, v71, v72, v73, v74, v75, v76;
    *(v65 + 4) = v69;
    *(v65 + 12) = 2082;
    v77 = sub_1003533B0();
    v79 = v78;
    v80 = sub_10000668C(v77, v78, &v156);
    v79, v81, v82, v83, v84, v85, v86, v87;
    *(v65 + 14) = v80;
    *(v65 + 22) = 2082;
    swift_getErrorValue();
    v88 = Error.rem_errorDescription.getter();
    v90 = v89;
    v91 = sub_10000668C(v88, v89, &v156);
    v90, v92, v93, v94, v95, v96, v97, v98;
    *(v65 + 24) = v91;
    _os_log_impl(&_mh_execute_header, v63, v64, "%s: FAILED {store: %{public}s, error: %{public}s}", v65, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
LABEL_21:
  }
}

id RDStoreControllerMigrator_IsPinnedByCurrentUser.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_IsPinnedByCurrentUser();
  return objc_msgSendSuper2(&v2, "init");
}

id RDStoreControllerMigrator_IsPinnedByCurrentUser.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RDStoreControllerMigrator_IsPinnedByCurrentUser();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1005D097C(uint64_t a1)
{
  v1 = a1;
  v39 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v46 = &_swiftEmptyArrayStorage;
    sub_100026EF4(0, v2 & ~(v2 >> 63), 0);
    v41 = &_swiftEmptyArrayStorage;
    if (v39)
    {
      v3 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v3 = _HashTable.startBucket.getter();
      v4 = *(v1 + 36);
    }

    v43 = v3;
    v44 = v4;
    v45 = v39 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v37 = v1 + 56;
      v36 = v1 + 64;
      v38 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v13 = v43;
        v14 = v45;
        v40 = v44;
        v15 = v1;
        sub_100411B34(v43, v44, v45, v1);
        v17 = v16;
        v18 = [v16 description];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        v22 = v41;
        v46 = v41;
        v24 = *v41->clientIdentity;
        v23 = *&v41->clientIdentity[8];
        if (v24 >= v23 >> 1)
        {
          sub_100026EF4((v23 > 1), v24 + 1, 1);
          v22 = v46;
        }

        *v22->clientIdentity = v24 + 1;
        v25 = v22 + 16 * v24;
        *(v25 + 4) = v19;
        *(v25 + 5) = v21;
        v41 = v22;
        if (v39)
        {
          if (!v14)
          {
            goto LABEL_40;
          }

          v1 = v15;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v38;
          sub_1000F5104(&qword_10094E130, &unk_1007B3ED0);
          v6 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v6(v42, 0);
          if (v5 == v38)
          {
LABEL_32:
            sub_100010E34(v43, v44, v45, v7, v8, v9, v10, v11);
            return;
          }
        }

        else
        {
          if (v14)
          {
            goto LABEL_41;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v15;
          v26 = (1 << *(v15 + 32));
          if (v13 >= v26)
          {
            goto LABEL_36;
          }

          v27 = v13 >> 6;
          v28 = *(v37 + 8 * (v13 >> 6));
          if (((v28 >> v13) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v15 + 36) != v40)
          {
            goto LABEL_38;
          }

          v29 = v28 & (-2 << (v13 & 0x3F));
          if (v29)
          {
            v26 = (__clz(__rbit64(v29)) | v13 & 0x7FFFFFFFFFFFFFC0);
            v2 = v38;
          }

          else
          {
            v30 = v27 << 6;
            v31 = v27 + 1;
            v32 = (v36 + 8 * v27);
            v2 = v38;
            while (v31 < &v26->storeProvider[1] >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                sub_100010E34(v13, v40, 0, v7, v8, v9, v10, v11);
                v26 = (__clz(__rbit64(v33)) + v30);
                goto LABEL_31;
              }
            }

            sub_100010E34(v13, v40, 0, v7, v8, v9, v10, v11);
          }

LABEL_31:
          v35 = *(v15 + 36);
          v43 = v26;
          v44 = v35;
          v45 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_1005D0CE4()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094DFE0);
  v1 = sub_100006654(v0, qword_10094DFE0);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974F78);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1005D0E0C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v6 = *(v20 - 8);
  __chkstk_darwin(v20, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936698 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006654(v10, qword_10094DFE0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Reminder daemon started", v13, 2u);
  }

  v14 = *&v1[OBJC_IVAR____TtC7remindd8RDDaemon_xpcClientConnectionListener];
  [*(v14 + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListener) resume];
  [*(v14 + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListenerUserInteractive) resume];
  if (qword_100935D38 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  aBlock[4] = sub_1005D1E38;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008F9668;
  v16 = _Block_copy(aBlock);
  v17 = v1;
  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  sub_10000AB38();
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);
  (*(v21 + 8))(v5, v2);
  (*(v6 + 8))(v9, v20);
}

void sub_1005D11D0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7remindd8RDDaemon_disabledAccountsEventHandler);
  v3 = [objc_opt_self() daemonUserDefaults];
  v4 = [objc_opt_self() babysittableWaiterID];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [objc_opt_self() sharedBabysitter];
  if (v8)
  {
    v9 = v8;
    v10 = v3;
    sub_1005D1E40(v10, v5, v7, v9, v2);
    v7, v11, v12, v13, v14, v15, v16, v17;

    if (*(a1 + OBJC_IVAR____TtC7remindd8RDDaemon_suggestedAttributesAutoTrainer))
    {
      sub_1006E4184();
    }

    sub_1005D2230(a1 + OBJC_IVAR____TtC7remindd8RDDaemon_housekeepingActivityScheduler, v22);
    v18 = v23;
    if (v23)
    {
      v19 = v24;
      sub_10000F61C(v22, v23);
      (*(v19 + 8))(v18, v19);
      sub_10000607C(v22);
    }

    else
    {
      sub_1000050A4(v22, &qword_10094E138, &qword_1007B3EE0);
    }

    sub_1005D2230(a1 + OBJC_IVAR____TtC7remindd8RDDaemon_cloudConfigurationUpdater, v22);
    v20 = v23;
    if (v23)
    {
      v21 = v24;
      sub_10000F61C(v22, v23);
      (*(v21 + 8))(v20, v21);
      sub_10000607C(v22);
    }

    else
    {
      sub_1000050A4(v22, &qword_10094E138, &qword_1007B3EE0);
    }

    if (*(a1 + OBJC_IVAR____TtC7remindd8RDDaemon_extraneousAlarmsCollector))
    {
      sub_100296400();
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_1005D13D0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7remindd8RDDaemon_xpcClientConnectionListener);
  v2 = OBJC_IVAR____TtC7remindd26RDClientConnectionListener_clientConnections;
  swift_beginAccess();
  v3 = *(v1 + v2);

  sub_1005D097C(v4);
  v6 = v5;
  v3, v7, v8, v9, v10, v11, v12, v13;
  v80 = *(v6 + 16);
  if (!v80)
  {
    v23 = _swiftEmptyDictionarySingleton;
LABEL_17:
    v6, v14, v15, v16, v17, v18, v19, v20;
    return v23;
  }

  v21 = 0;
  v22 = (v6 + 40);
  v23 = _swiftEmptyDictionarySingleton;
  v79 = v6;
  while (v21 < *(v6 + 16))
  {
    v41 = *(v22 - 1);
    v42 = *v22;

    _StringGuts.grow(_:)(30);
    0xE000000000000000, v43, v44, v45, v46, v47, v48, v49;
    v50._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    object = v50._object;
    String.append(_:)(v50);
    object, v52, v53, v54, v55, v56, v57, v58;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81 = v23;
    v60 = sub_100005F4C(0xD00000000000001CLL, 0x80000001007FDD10);
    v68 = v23[2];
    v69 = (v61 & 1) == 0;
    v70 = __OFADD__(v68, v69);
    v71 = v68 + v69;
    if (v70)
    {
      goto LABEL_19;
    }

    v72 = v61;
    if (v23[3] < v71)
    {
      sub_10036A8F0(v71, isUniquelyReferenced_nonNull_native);
      v60 = sub_100005F4C(0xD00000000000001CLL, 0x80000001007FDD10);
      if ((v72 & 1) != (v61 & 1))
      {
        goto LABEL_21;
      }

LABEL_11:
      if (v72)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v77 = v60;
    sub_100373664();
    v60 = v77;
    if (v72)
    {
LABEL_3:
      v24 = v60;
      0x80000001007FDD10, v61, v62, v63, v64, v65, v66, v67;
      v23 = v81;
      v25 = (v81[7] + 16 * v24);
      v26 = v25[1];
      *v25 = v41;
      v25[1] = v42;
      v42, v27, v28, v29, v30, v31, v32, v33;
      v26, v34, v35, v36, v37, v38, v39, v40;
      goto LABEL_4;
    }

LABEL_12:
    v23 = v81;
    v81[(v60 >> 6) + 8] |= 1 << v60;
    v73 = (v81[6] + 16 * v60);
    *v73 = 0xD00000000000001CLL;
    v73[1] = 0x80000001007FDD10;
    v74 = (v81[7] + 16 * v60);
    *v74 = v41;
    v74[1] = v42;
    v42, v61, v62, v63, v64, v65, v66, v67;
    v75 = v81[2];
    v70 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (v70)
    {
      goto LABEL_20;
    }

    v81[2] = v76;
LABEL_4:
    ++v21;
    v22 += 2;
    v6 = v79;
    if (v80 == v21)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id sub_1005D19E8()
{
  v1 = v0;
  if (qword_100936698 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094DFE0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Reminder barebones daemon started", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7remindd17RDBarebonesDaemon_xpcClientConnectionListener);
  [*(v6 + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListener) resume];
  v7 = *(v6 + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListenerUserInteractive);

  return [v7 resume];
}

id sub_1005D1B28(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1005D1BDC(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  *&a3[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_clientConnections] = _swiftEmptySetSingleton;
  sub_100003C4C();
  if (qword_100935D10 != -1)
  {
    swift_once();
  }

  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    v9 = &a3[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcDaemon];
    *v9 = a1;
    *(v9 + 1) = a4;
    v10 = OBJC_IVAR____TtC7remindd26RDClientConnectionListener_listenerQueue;
    *&a3[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_listenerQueue] = a2;
    v11 = REMDaemonMachServiceName;
    v12 = objc_allocWithZone(NSXPCListener);
    v13 = a2;
    v14 = [v12 initWithMachServiceName:v11];
    *&a3[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListener] = v14;
    [v14 _setQueue:*&a3[v10]];
    v15 = [objc_allocWithZone(NSXPCListener) initWithMachServiceName:REMDaemonMachServiceName_userInteractive];
    *&a3[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListenerUserInteractive] = v15;
    [v15 _setQueue:*&a3[v10]];
    sub_1000F5104(&qword_10094E120, &qword_1007B3EC8);
    swift_allocObject();
    v16 = PassthroughSubject.init()();
    *&a3[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_clientConnectionDidClosePassthroughSubject] = v16;
    v21 = v16;
    sub_10000CB48(&qword_10094E128, &qword_10094E120, &qword_1007B3EC8, &protocol conformance descriptor for PassthroughSubject<A, B>);
    *&a3[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_clientConnectionDidClosePublisher] = Publisher.eraseToAnyPublisher()();
    v20.receiver = a3;
    v20.super_class = type metadata accessor for RDClientConnectionListener();
    v17 = objc_msgSendSuper2(&v20, "init");
    v18 = *&v17[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListener];
    v19 = v17;
    [v18 setDelegate:v19];
    [*&v19[OBJC_IVAR____TtC7remindd26RDClientConnectionListener_xpcListenerUserInteractive] setDelegate:v19];

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1005D1E40(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v32 = a3;
  v33 = a4;
  v31 = a2;
  v34 = *a5;
  v6 = type metadata accessor for NSNotificationCenter.Publisher();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() defaultCenter];
  NSNotificationCenter.publisher(for:object:)();

  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v15 = sub_100440048(v12, v13, 0xD00000000000001ELL, 0x80000001007FDD30, 0);
  v14, v16, v17, v18, v19, v20, v21, v22;
  (*(v7 + 8))(v10, v6);
  v35[0] = v15;
  sub_1000F5104(&unk_10093D140, qword_1007969F0);
  sub_1000F5104(&qword_10094A740, &unk_1007AE960);
  sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000CB48(&qword_10094E140, &qword_10094A740, &unk_1007AE960, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v23 = Publisher.multicast<A>(_:)();

  v35[0] = v23;
  sub_1000F5104(&qword_10094E148, &qword_1007B3EE8);
  sub_10000CB48(&qword_10094E150, &qword_10094E148, &qword_1007B3EE8, &protocol conformance descriptor for Publishers.Multicast<A, B>);
  v35[0] = Publisher.eraseToAnyPublisher()();
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = &off_1008F37F8;
  v25 = v31;
  v26 = v32;
  v24[4] = &off_1008F7C98;
  v24[5] = v25;
  v27 = v33;
  v24[6] = v26;
  v24[7] = v27;
  v28 = a1;

  v29 = v27;
  Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  Publishers.Multicast.connect()();
  sub_10000F61C(v35, v35[3]);
  swift_beginAccess();
  Cancellable.store(in:)();
  swift_endAccess();

  return sub_10000607C(v35);
}

uint64_t sub_1005D2230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094E138, &qword_1007B3EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1005D22B0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin(a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness, v12);
  v14 = &v30 - v13;
  __chkstk_darwin(v15, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  __chkstk_darwin(v18, v19);
  v21 = &v30 - v20;
  v22 = dispatch thunk of Collection.count.getter();
  if (!v22)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v44 = v22;
  v48 = ContiguousArray.init()();
  v35 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v44);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = dispatch thunk of Collection.subscript.read();
      v26 = v14;
      v27 = v14;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v24;
      v14 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1005D26D0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 sha512Sum];
  if (v3)
  {
    v4 = v3;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1005D2738(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setSha512Sum:?];
}

uint64_t sub_1005D27A8@<X0>(void (*a1)(_BYTE *, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __chkstk_darwin(a1, a2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Result();
  v8 = *(v7 - 8);
  v10 = __chkstk_darwin(v7, v9);
  v12 = &v14[-v11];
  a1(v6, v10);
  swift_storeEnumTagMultiPayload();
  return (*(v8 + 32))(a3, v12, v7);
}

uint64_t sub_1005D295C()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_10094E160);
  v1 = sub_100006654(v0, qword_10094E160);
  if (qword_100936428 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FC0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1005D2A24()
{
  result = [objc_opt_self() housekeepingingActivityScheduler];
  qword_10094E178 = result;
  return result;
}

uint64_t sub_1005D2AC0()
{
  v1 = v0;
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.begin.getter();
  if (qword_1009366A8 != -1)
  {
    swift_once();
  }

  v7 = qword_10094E178;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v8 = *(v3 + 8);
  v8(v6, v2);
  if (qword_1009366A0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006654(v9, qword_10094E160);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = v7;
    v28 = v2;
    v13 = v8;
    v14 = v12;
    v15 = swift_slowAlloc();
    v32 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_10000668C(*(v1 + 144), *(v1 + 152), &v32);
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] start execute()", v14, 0xCu);
    sub_10000607C(v15);

    v8 = v13;
    v2 = v28;
  }

  sub_1005D2DEC();
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v29[0] = v16;
  v29[1] = v17;
  memset(&v29[2], 0, 24);
  v31 = 0x4000;
  v30 = 0;
  sub_100014A64(v29, sub_1005DFE8C, v1);
  v18, v19, v20, v21, v22, v23, v24, v25;
  sub_1005D2F54(v1);
  static os_signpost_type_t.end.getter();
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (v8)(v6, v2);
}

uint64_t sub_1005D2DEC()
{
  v1 = *v0;
  v2 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v27[-v4];
  v6 = v0[5];
  v0[5] = &_swiftEmptyArrayStorage;
  v6, v7, v8, v9, v10, v11, v12, v13;
  type metadata accessor for RDDeduplicationActivity.Executable.DeduplicationError(0, *(v1 + 80), *(v1 + 88), v14);
  v15 = static Array._allocateUninitialized(_:)();
  swift_beginAccess();
  v16 = v0[6];
  v0[6] = v15;
  v16, v17, v18, v19, v20, v21, v22, v23;
  static Date.now.getter();
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 56))(v5, 0, 1, v24);
  v25 = qword_10094E388;
  swift_beginAccess();
  sub_1001BBB60(v5, v0 + v25);
  return swift_endAccess();
}

void sub_1005D2F54(uint64_t a1)
{
  sub_1005D99D8((a1 + 96));
  if (qword_1009366A0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094E160);

  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v7 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000668C(*(a1 + 144), *(a1 + 152), &v7);
    _os_log_impl(&_mh_execute_header, oslog, v3, "[%{public}s] finish execute()", v4, 0xCu);
    sub_10000607C(v5);
  }
}

void sub_1005D30A8(void *a1, void *a2)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = (&v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10, v11);
  v13 = &v94 - v12;
  v14 = sub_1005D3F14();
  v23 = v2;
  if (!v2)
  {
    v24 = v14;
    v109 = a2;
    if (v14 >> 62)
    {
      goto LABEL_45;
    }

    v108 = v14 & 0xFFFFFFFFFFFFFF8;
    v25 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v26 = v109;
    v27 = v25 != 0;
    if (v25)
    {
      v97 = 1;
      v102 = v9;
      v106 = v5;
      v28 = 0;
      LODWORD(v100) = 0;
      v107 = v24 & 0xC000000000000001;
      v104 = (v6 + 8);
      v9 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
      *&v22 = 136446722;
      v98 = v22;
      *&v22 = 136446466;
      v99 = v22;
      v105 = v25;
      v103 = v13;
      v101 = v24;
LABEL_6:
      v5 = v23;
      while (1)
      {
        if (v107)
        {
          v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v37 = (v28 + 1);
          if (__OFADD__(v28, 1))
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v28 >= *(v108 + 16))
          {
            goto LABEL_44;
          }

          v29 = *&v24->clientIdentity[8 * v28 + 16];
          v37 = (v28 + 1);
          if (__OFADD__(v28, 1))
          {
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            v108 = v24 & 0xFFFFFFFFFFFFFF8;
            v25 = _CocoaArrayWrapper.endIndex.getter();
            goto LABEL_4;
          }
        }

        if (*(*(*(v26 + 136) + 40) + 16) >= *(*(v26 + 136) + 16))
        {
          v13 = v29;
          v24, v30, v31, v32, v33, v34, v35, v36;
          if (qword_1009366A0 == -1)
          {
            goto LABEL_25;
          }

          goto LABEL_47;
        }

        v110 = v28;
        v111 = v37;
        v23 = v29;
        v38 = [v29 v9[318]];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1005D41B4();
        v6 = v5;
        if (v5)
        {
          v100 = v5;
          (*v104)(v13, v106);
          if (qword_1009366A0 != -1)
          {
            swift_once();
          }

          v110 = 0;
          v51 = type metadata accessor for Logger();
          sub_100006654(v51, qword_10094E160);
          v52 = v26;

          v6 = v23;
          swift_errorRetain();
          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v95 = v56;
            v96 = swift_slowAlloc();
            v113 = v96;
            *v55 = v98;
            *(v55 + 4) = sub_10000668C(*(v52 + 144), *(v52 + 152), &v113);
            *(v55 + 12) = 2114;
            *(v55 + 14) = v6;
            *v56 = v6;
            *(v55 + 22) = 2080;
            swift_getErrorValue();
            v94 = v112;
            v57 = v53;
            v6 = v6;
            v58 = Error.rem_errorDescription.getter();
            v60 = v59;
            v61 = sub_10000668C(v58, v59, &v113);
            v60, v62, v63, v64, v65, v66, v67, v68;
            *(v55 + 24) = v61;
            v69 = v54;
            v26 = v109;
            v70 = v57;
            _os_log_impl(&_mh_execute_header, v57, v69, "[%{public}s] Could not create destination directory for hashed attachments {accountID: %{public}@; error: %s}", v55, 0x20u);
            sub_1000050A4(v95, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            v13 = v103;
            v9 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;

            v28 = v111;
          }

          else
          {

            v28 = v111;
            v26 = v52;
          }

          LODWORD(v100) = 1;
          v23 = v110;
          if (v28 == v105)
          {
            v27 = v97;
            break;
          }

          goto LABEL_6;
        }

        v39 = *v104;
        v40 = v106;
        (*v104)(v13, v106);
        v41 = [v23 v9[318]];
        v42 = v102;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = (*(*(*v26 + 88) + 64))(*(v26 + 32), a1, v42, *(v26 + 88));
        v39(v42, v40);
        sub_1005D4428(v43, v23, a1);
        v5 = 0;

        v43, v44, v45, v46, v47, v48, v49, v50;
        v28 = (v110 + 1);
        v24 = v101;
        v26 = v109;
        v13 = v103;
        v9 = &selRef_setRecordZoneChangeTokensUpdatedBlock_;
        if (v111 == v105)
        {
          v27 = v100;
          break;
        }
      }
    }

    v24, v15, v16, v17, v18, v19, v20, v21;
    v76 = v27;
    if (!v27)
    {
      goto LABEL_31;
    }

    do
    {
      do
      {
        if (qword_1009366A0 != -1)
        {
          swift_once();
        }

        v85 = type metadata accessor for Logger();
        sub_100006654(v85, qword_10094E160);

        v86 = Logger.logObject.getter();
        a1 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v86, a1))
        {

          return;
        }

        v87 = v26;
        v26 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v113 = v88;
        *v26 = 136446722;
        *(v26 + 4) = sub_10000668C(*(v87 + 144), *(v87 + 152), &v113);
        *(v26 + 12) = 1026;
        *(v26 + 14) = v76;
        *(v26 + 18) = 2050;
        v89 = *(v87 + 136);
        v90 = *(v89 + 16);
        v91 = *(*(v89 + 40) + 16);
        v92 = __OFSUB__(v90, v91);
        v93 = v90 - v91;
        if (!v92)
        {
          *(v26 + 20) = v93 & ~(v93 >> 63);

          _os_log_impl(&_mh_execute_header, v86, a1, "[%{public}s] finished without deeming complete {errorEncountered: %{BOOL,public}d, quota remaining: %{public}ld}", v26, 0x1Cu);
          sub_10000607C(v88);

          return;
        }

        __break(1u);
LABEL_47:
        swift_once();
LABEL_25:
        v71 = type metadata accessor for Logger();
        sub_100006654(v71, qword_10094E160);

        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v113 = v75;
          *v74 = v99;
          *(v74 + 4) = sub_10000668C(v109[18], v109[19], &v113);
          *(v74 + 12) = 2050;
          *(v74 + 14) = v109[11];

          _os_log_impl(&_mh_execute_header, v72, v73, "[%{public}s] no delete limit left {perRunDeleteLimit: %{public}ld}", v74, 0x16u);
          sub_10000607C(v75);

          v26 = v109;
        }

        else
        {
        }

        v76 = v100;
      }

      while ((v100 & 1) != 0);
LABEL_31:
      ;
    }

    while (*(*(*(v26 + 136) + 40) + 16) >= *(*(v26 + 136) + 16));
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_100006654(v77, qword_10094E160);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v113 = v81;
      *v80 = 136446210;
      *(v80 + 4) = sub_10000668C(v109[18], v109[19], &v113);
      _os_log_impl(&_mh_execute_header, v78, v79, "[%{public}s] finished with some delete quota remaining: container deemed clean", v80, 0xCu);
      sub_10000607C(v81);
    }

    sub_1005D45C0(a1, v82, v83, v84);
  }
}

_TtC7remindd19RDXPCStorePerformer *sub_1005D3F14()
{
  v2 = sub_1005D7F4C();
  if (!v1)
  {
    v10 = v2;
    if (v2 >> 62)
    {
      goto LABEL_35;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_34;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v16 = [objc_allocWithZone(REMAccountCapabilities) initWithAccountType:{objc_msgSend(v13, "type")}];
        v17 = [v16 supportsAttachments];

        if (v17)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v12;
        if (v15 == i)
        {
          goto LABEL_15;
        }
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }

LABEL_15:
    v10, v3, v4, v5, v6, v7, v8, v9;
    if ((&_swiftEmptyArrayStorage & 0x8000000000000000) != 0 || (&_swiftEmptyArrayStorage & 0x4000000000000000) != 0)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *_swiftEmptyArrayStorage.clientIdentity;
    }

    v18 = 0;
    v0 = &_swiftEmptyArrayStorage;
    while (v10 != v18)
    {
      if ((&_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v18 >= *_swiftEmptyArrayStorage.clientIdentity)
        {
          goto LABEL_32;
        }

        v19 = *&_swiftEmptyArrayStorage.clientIdentity[8 * v18 + 16];
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v22 = [v19 remObjectID];

      ++v18;
      if (v22)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v0 = &_swiftEmptyArrayStorage;
        v18 = v21;
      }
    }
  }

  return v0;
}

uint64_t sub_1005D41B4()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  *&v4 = __chkstk_darwin(v1, v3).n128_u64[0];
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v0 + 32) attachmentFileManager];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v9 = [v7 URLForHashedAttachmentDirectory:isa];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = objc_opt_self();
  v11 = [v10 defaultManager];
  object = URL.path(percentEncoded:)(0)._object;
  v13 = String._bridgeToObjectiveC()();
  object, v14, v15, v16, v17, v18, v19, v20;
  LOBYTE(object) = [v11 fileExistsAtPath:v13];

  if ((object & 1) == 0)
  {
    v21 = [v10 defaultManager];
    URL._bridgeToObjectiveC()(v22);
    v24 = v23;
    v30 = 0;
    v25 = [v21 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:&v30];

    if (v25)
    {
      v26 = *(v2 + 8);
      v27 = v30;
      return v26(v6, v1);
    }

    v29 = v30;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return (*(v2 + 8))(v6, v1);
}

void sub_1005D4428(uint64_t a1, void *a2, void *a3)
{
  v5 = v3;
  v25[0] = a1;
  sub_1000F5104(&qword_10094EC30, &qword_1007B4888);
  sub_10000CB48(&qword_10094EC38, &qword_10094EC30, &qword_1007B4888, &protocol conformance descriptor for [A]);
  v6 = BidirectionalCollection<>.lazySlices(by:)();
  v24 = v7;
  v21 = *(v6 + 16);
  if (v21)
  {
    v8 = 0;
    while (v8 < *(v6 + 16))
    {
      v26 = *(v6 + 8 * v8 + 32);
      v24(v25, &v26);
      v9 = v25[0];
      if (*(*(*(v5 + 136) + 40) + 16) >= *(*(v5 + 136) + 16))
      {
        goto LABEL_9;
      }

      v10 = v25[1];
      v11 = v25[2];
      v12 = v25[3];
      v13 = objc_autoreleasePoolPush();
      sub_1005D63B0(v9, v10, v11, v12, a2, a3);
      if (v4)
      {
        objc_autoreleasePoolPop(v13);
LABEL_9:
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      ++v8;
      objc_autoreleasePoolPop(v13);
      swift_unknownObjectRelease();
      if (v21 == v8)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v6, v14, v15, v16, v17, v18, v19, v20;
  }
}

void sub_1005D45C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v8 = *(*v4 + 80);
  v9 = *(*v4 + 88);
  v201 = type metadata accessor for RDDeduplicationActivity.CrashCleanError(0, v8, v9, a4);
  v204 = *(v201 - 8);
  v10 = *(v204 + 64);
  __chkstk_darwin(v201, v11);
  v203 = &v196 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v217 = &v196 - v14;
  v224 = type metadata accessor for UUID();
  isa = v224[-1].isa;
  __chkstk_darwin(v224, v15);
  v216 = &v196 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v213 = &v196 - v19;
  __chkstk_darwin(v20, v21);
  v223 = &v196 - v22;
  __chkstk_darwin(v23, v24);
  v222 = &v196 - v25;
  v26 = sub_1000F5104(&qword_10094EC58, &qword_1007B48A0);
  __chkstk_darwin(v26 - 8, v27);
  v215 = &v196 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v30);
  v214 = (&v196 - v31);
  swift_beginAccess();
  v32 = v4[8];
  v33 = v4[9];
  sub_10000F61C(v4 + 5, v32);
  v34 = (*(v33 + 32))(v32, v33);
  if (v34)
  {
    v35 = v34;
    v200 = v10;
    swift_endAccess();
    type metadata accessor for RDDeduplicationActivity.Executable.CrashCleaner(0, v8, v9, v36);
    v37 = v4[4];
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = a1;
    v39 = v37;
    v40 = a1;
    v41 = sub_1005D5250(v35);
    if (v5)
    {
      v35, v42, v43, v44, v45, v46, v47, v48;
LABEL_41:

      return;
    }

    v49 = v41;
    v50 = v42;
    v199 = 0;
    v197 = v35;
    v198 = v38;
    v51 = Set.init(minimumCapacity:)();
    v52 = 0;
    v227 = v51;
    v209 = (isa + 16);
    v210 = (isa + 32);
    v53 = *v49->clientIdentity;
    v207 = (isa + 8);
    *&v54 = 136446722;
    v202 = v54;
    v212 = v6;
    v218 = v50;
    v55 = v224;
    v57 = v215;
    v56 = v216;
    v58 = v49;
    v208 = v53;
    v211 = v49;
    while (1)
    {
      if (v52 == v53)
      {
        v67 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
        (*(*(v67 - 8) + 56))(v57, 1, 1, v67);
        isa = v53;
        v68 = v223;
      }

      else
      {
        if ((v52 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        v68 = v223;
        if (v52 >= *v58->clientIdentity)
        {
          goto LABEL_45;
        }

        v69 = v52;
        v70 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
        v71 = *(v70 - 8);
        sub_100010364(v58 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v69, v57, &qword_10094EC60, &qword_1007B48A8);
        isa = (v69 + 1);
        v56 = v216;
        (*(v71 + 56))(v57, 0, 1, v70);
      }

      v72 = v57;
      v73 = v214;
      sub_100031B58(v72, v214, &qword_10094EC58, &qword_1007B48A0);
      v74 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
      if ((*(*(v74 - 8) + 48))(v73, 1, v74) == 1)
      {
        break;
      }

      v82 = *v73;
      v219 = v73[1];
      v220 = v82;
      v83 = *(v74 + 48);
      v84 = *(v74 + 64);
      v85 = *v210;
      v86 = v222;
      (*v210)(v222, v73 + v83, v55);
      v85(v68, v73 + v84, v55);
      if (qword_1009366A0 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      sub_100006654(v87, qword_10094E160);
      v88 = *v209;
      v89 = v213;
      (*v209)(v213, v86, v55);
      v88(v56, v68, v55);
      v90 = v212;

      v91 = v89;
      v92 = v56;
      v93 = Logger.logObject.getter();
      v94 = static os_log_type_t.info.getter();

      v95 = os_log_type_enabled(v93, v94);
      v96 = v207;
      if (v95)
      {
        v97 = swift_slowAlloc();
        v206 = swift_slowAlloc();
        v225 = v206;
        *v97 = v202;
        *(v97 + 4) = sub_10000668C(v90[18], v90[19], &v225);
        *(v97 + 12) = 2082;
        sub_1005E0108(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v205 = v94;
        v98 = dispatch thunk of CustomStringConvertible.description.getter();
        v100 = v99;
        v59 = *v96;
        (*v96)(v91, v224);
        v101 = sub_10000668C(v98, v100, &v225);
        v100, v102, v103, v104, v105, v106, v107, v108;
        *(v97 + 14) = v101;
        *(v97 + 22) = 2082;
        v109 = v216;
        v110 = dispatch thunk of CustomStringConvertible.description.getter();
        v112 = v111;
        v59(v109, v224);
        v113 = sub_10000668C(v110, v112, &v225);
        v114 = v112;
        v50 = v218;
        v114, v115, v116, v117, v118, v119, v120, v121;
        *(v97 + 24) = v113;
        _os_log_impl(&_mh_execute_header, v93, v205, "[%{public}s] Cleaned after crash {accountID: %{public}s, attachmentID: %{public}s", v97, 0x20u);
        swift_arrayDestroy();

        v55 = v224;

        v56 = v109;
        v57 = v215;
        v58 = v211;
      }

      else
      {

        v59 = *v96;
        (*v96)(v92, v55);
        v59(v91, v55);
        v56 = v92;
        v57 = v215;
        v58 = v211;
        v50 = v218;
      }

      sub_100378434(&v225, v220, v219);
      v226, v60, v61, v62, v63, v64, v65, v66;
      v59(v223, v55);
      v59(v222, v55);
      v53 = v208;
      v52 = isa;
    }

    v58, v75, v76, v77, v78, v79, v80, v81;
    v122 = v201;
    if (Array.endIndex.getter())
    {
      v130 = 0;
      v131 = v212[19];
      v224 = v212[18];
      v132 = (v204 + 16);
      v133 = (v204 + 32);
      v134 = (v204 + 8);
      while (1)
      {
        IsNativeType = Array._hoistableIsNativeTypeChecked()();
        Array._checkSubscript(_:wasNativeTypeChecked:)();
        if (IsNativeType)
        {
          (*(v204 + 16))(v217, v50 + ((*(v204 + 80) + 32) & ~*(v204 + 80)) + *(v204 + 72) * v130, v122);
        }

        else
        {
          v147 = _ArrayBuffer._getElementSlowPath(_:)();
          if (v200 != 8)
          {
            goto LABEL_46;
          }

          v225 = v147;
          (*v132)(v217, &v225, v122);
          swift_unknownObjectRelease();
        }

        v136 = v130 + 1;
        v137 = v203;
        if (__OFADD__(v130, 1))
        {
          break;
        }

        (*v133)(v203, v217, v122);
        sub_1005D5554(v224, v131, v122);
        if (sub_1005D6030(v122))
        {
          v138 = sub_1005D6228(v122);
          sub_100378434(&v225, v138, v139);
          v226, v140, v141, v142, v143, v144, v145, v146;
        }

        (*v134)(v137, v122);
        v50 = v218;
        ++v130;
        if (v136 == Array.endIndex.getter())
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      return;
    }

LABEL_28:
    v50, v123, v124, v125, v126, v127, v128, v129;
    v148 = v197;
    v149 = sub_1001A5660(v197);
    v148, v150, v151, v152, v153, v154, v155, v156;
    v157 = v227;
    if (*(v227 + 16) <= *v149->clientIdentity >> 3)
    {
      v225 = v149;
      sub_10019BAF4(v227);
      v157, v173, v174, v175, v176, v177, v178, v179;
      v158 = v225;
    }

    else
    {
      v158 = sub_10019C4D4(v227, v149);
      v157, v159, v160, v161, v162, v163, v164, v165;
    }

    v6 = v212;
    v180 = *v158->clientIdentity;
    if (v180)
    {
      v181 = sub_1003689CC(*v158->clientIdentity, 0);
      v158 = sub_1002791DC(&v225, &v181->clientIdentity[16], v180, v158);
      sub_10001B860(v225);
      if (v158 == v180)
      {
LABEL_35:
        swift_beginAccess();
        v182 = v6[8];
        v183 = v6[9];
        sub_10000C9DC((v6 + 5), v182);
        (*(v183 + 40))(v181, v182, v183);
        swift_endAccess();

        goto LABEL_36;
      }

      __break(1u);
    }

    v158, v166, v167, v168, v169, v170, v171, v172;
    v181 = &_swiftEmptyArrayStorage;
    goto LABEL_35;
  }

  swift_endAccess();
LABEL_36:
  swift_beginAccess();
  v184 = v6[8];
  v185 = v6[9];
  sub_10000F61C(v6 + 5, v184);
  v186 = (*(v185 + 32))(v184, v185);
  swift_endAccess();
  if (v186)
  {
    v194 = v186;
  }

  else
  {
    v194 = &_swiftEmptyArrayStorage;
  }

  v195 = *v194->clientIdentity;
  v194, v187, v188, v189, v190, v191, v192, v193;
  if (!v195)
  {

    sub_10048C21C();
    goto LABEL_41;
  }
}

uint64_t sub_1005D5210(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

_TtC7remindd19RDXPCStorePerformer *sub_1005D5250(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v3 = *v1;
  v42 = a1;
  v4 = sub_1000F5104(&unk_10093B300, &unk_100797780);
  v5 = sub_1000F514C(&qword_10094EC60, &qword_1007B48A8);
  type metadata accessor for RDDeduplicationActivity.CrashCleanError(255, *(v3 + 80), *(v3 + 88), v6);
  swift_getWitnessTable();
  v41[1] = v5;
  v7 = type metadata accessor for Result();
  v8 = sub_10000CB48(&qword_10093EE30, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
  v10 = sub_1005D22B0(sub_1005DFF78, v1, v4, v7, &type metadata for Never, v8, &protocol witness table for Never, v9);
  v11 = sub_1005DABC8(v10);
  v10, v12, v13, v14, v15, v16, v17, v18;
  if (!v2)
  {
    v19 = type metadata accessor for Array();
    WitnessTable = swift_getWitnessTable();
    v22 = sub_1005D22B0(sub_1005DFFA8, v1, v19, v7, &type metadata for Never, WitnessTable, &protocol witness table for Never, v21);
    v11, v23, v24, v25, v26, v27, v28, v29;
    v41[0] = v41;
    v42 = v22;
    __chkstk_darwin(v30, v31);
    swift_getWitnessTable();
    v11 = Sequence.compactMap<A>(_:)();
    v42 = v22;
    __chkstk_darwin(v11, v32);
    Sequence.compactMap<A>(_:)();
    v22, v33, v34, v35, v36, v37, v38, v39;
  }

  return v11;
}

void sub_1005D5554(NSObject *a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3)
{
  v4 = v3;
  v187 = a2;
  v185 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v184 = &v179 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v11);
  v183 = &v179 - v12;
  __chkstk_darwin(v13, v14);
  v186 = &v179 - v15;
  __chkstk_darwin(v16, v17);
  v19 = (&v179 - v18);
  __chkstk_darwin(v20, v21);
  v23 = &v179 - v22;
  __chkstk_darwin(v24, v25);
  v27 = &v179 - v26;
  __chkstk_darwin(v28, v29);
  v31 = (&v179 - v30);
  __chkstk_darwin(v32, v33);
  v35 = &v179 - v34;
  v38 = __chkstk_darwin(v36, v37);
  v40 = (&v179 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v41 + 16))(v40, v4, a3, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v40[1], v43, v44, v45, v46, v47, v48, v49;
      v50 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
      v51 = *(v50 + 64);
      v52 = v7[4];
      v52(v35, v40 + *(v50 + 48), v6);
      v52(v31, v40 + v51, v6);
      if (qword_1009366A0 != -1)
      {
        swift_once();
      }

      v53 = type metadata accessor for Logger();
      sub_100006654(v53, qword_10094E160);
      v54 = v7[2];
      v54(v27, v35, v6);
      v54(v23, v31, v6);
      v55 = v187;

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();
      v55, v58, v59, v60, v61, v62, v63, v64;
      if (os_log_type_enabled(v56, v57))
      {
        v65 = swift_slowAlloc();
        LODWORD(v184) = v57;
        v66 = v65;
        v186 = swift_slowAlloc();
        v188 = v186;
        *v66 = 136446722;
        *(v66 + 4) = sub_10000668C(v185, v55, &v188);
        *(v66 + 12) = 2082;
        sub_1005E0108(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v185 = v56;
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        v187 = v31;
        v70 = v7[1];
        v70(v27, v6);
        v71 = sub_10000668C(v67, v69, &v188);
        v69, v72, v73, v74, v75, v76, v77, v78;
        *(v66 + 14) = v71;
        *(v66 + 22) = 2082;
        v79 = dispatch thunk of CustomStringConvertible.description.getter();
        v81 = v80;
        v70(v23, v6);
        v82 = sub_10000668C(v79, v81, &v188);
        v81, v83, v84, v85, v86, v87, v88, v89;
        *(v66 + 24) = v82;
        v90 = v185;
        _os_log_impl(&_mh_execute_header, v185, v184, "[%{public}s] Attachment was not migrated {accountID: %{public}s, attachmentID: %{public}s}", v66, 0x20u);
        swift_arrayDestroy();

        v70(v187, v6);
        v70(v35, v6);
      }

      else
      {

        v177 = v7[1];
        v177(v23, v6);
        v177(v27, v6);
        v177(v31, v6);
        v177(v35, v6);
      }
    }

    else
    {
      v40[1], v43, v44, v45, v46, v47, v48, v49;
      v127 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
      v128 = v127[16];
      v129 = *(v40 + v127[20]);
      v130 = v7;
      v131 = v7[4];
      v132 = v19;
      v131(v19, v40 + v127[12], v6);
      v133 = v40 + v128;
      v134 = v186;
      v131(v186, v133, v6);
      if (qword_1009366A0 != -1)
      {
        swift_once();
      }

      v135 = type metadata accessor for Logger();
      sub_100006654(v135, qword_10094E160);
      v136 = v7[2];
      v137 = v183;
      v136(v183, v19, v6);
      v138 = v184;
      v136(v184, v134, v6);
      v139 = v187;

      swift_errorRetain();
      v140 = Logger.logObject.getter();
      v141 = static os_log_type_t.error.getter();
      v139, v142, v143, v144, v145, v146, v147, v148;

      if (os_log_type_enabled(v140, v141))
      {
        v149 = swift_slowAlloc();
        v179 = v129;
        v181 = v141;
        v150 = v149;
        v180 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        v188 = v182;
        *v150 = 136446978;
        *(v150 + 4) = sub_10000668C(v185, v139, &v188);
        *(v150 + 12) = 2082;
        sub_1005E0108(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v187 = v132;
        v151 = v140;
        v152 = dispatch thunk of CustomStringConvertible.description.getter();
        v154 = v153;
        v155 = v130[1];
        v155(v137, v6);
        v156 = sub_10000668C(v152, v154, &v188);
        v154, v157, v158, v159, v160, v161, v162, v163;
        *(v150 + 14) = v156;
        *(v150 + 22) = 2082;
        v164 = dispatch thunk of CustomStringConvertible.description.getter();
        v166 = v165;
        v155(v138, v6);
        v167 = sub_10000668C(v164, v166, &v188);
        v166, v168, v169, v170, v171, v172, v173, v174;
        *(v150 + 24) = v167;
        *(v150 + 32) = 2112;
        swift_errorRetain();
        v175 = _swift_stdlib_bridgeErrorToNSError();
        *(v150 + 34) = v175;
        v176 = v180;
        *v180 = v175;
        _os_log_impl(&_mh_execute_header, v151, v181, "[%{public}s] Purging attachment failed {accountID: %{public}s, attachmentID: %{public}s, error: %@}", v150, 0x2Au);
        sub_1000050A4(v176, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v155(v186, v6);
        v155(v187, v6);
      }

      else
      {

        v178 = v130[1];
        v178(v138, v6);
        v178(v137, v6);
        v178(v134, v6);
        v178(v132, v6);
      }
    }
  }

  else
  {
    v92 = *v40;
    v91 = v40[1];
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    sub_100006654(v93, qword_10094E160);
    v94 = v187;

    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    v91, v97, v98, v99, v100, v101, v102, v103;
    v94, v104, v105, v106, v107, v108, v109, v110;
    if (os_log_type_enabled(v95, v96))
    {
      v118 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      *v118 = 136446466;
      *(v118 + 4) = sub_10000668C(v185, v94, &v188);
      *(v118 + 12) = 2082;
      v119 = sub_10000668C(v92, v91, &v188);
      v91, v120, v121, v122, v123, v124, v125, v126;
      *(v118 + 14) = v119;
      _os_log_impl(&_mh_execute_header, v95, v96, "[%{public}s] Invalid cache key {cacheKey: %{public}s", v118, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v91, v111, v112, v113, v114, v115, v116, v117;
    }
  }
}

uint64_t sub_1005D6030(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  v5 = __chkstk_darwin(a1, v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *(v7 + 1), v9, v10, v11, v12, v13, v14, v15;
      v16 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
      v17 = *(v16 + 48);
      v18 = *(v16 + 64);
      v19 = type metadata accessor for UUID();
      v20 = *(*(v19 - 8) + 8);
      v20(&v7[v18], v19);
      v20(&v7[v17], v19);
      return 1;
    }

    else
    {
      *(v7 + 1), v9, v10, v11, v12, v13, v14, v15;
      v22 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
      v23 = *(v22 + 48);
      v24 = *(v22 + 64);

      v25 = type metadata accessor for UUID();
      v26 = *(*(v25 - 8) + 8);
      v26(&v7[v24], v25);
      v26(&v7[v23], v25);
      return 0;
    }
  }

  else
  {
    (*(v4 + 8))(v7, a1);
    return 1;
  }
}

uint64_t sub_1005D6228(uint64_t a1)
{
  v2 = __chkstk_darwin(a1, v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v4, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *v4;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
      v9 = *(v8 + 48);
      v10 = *(v8 + 64);
    }

    else
    {
      v11 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
      v9 = *(v11 + 48);
      v10 = *(v11 + 64);
    }

    v12 = v4 + v9;
    v13 = v4 + v10;
    v14 = type metadata accessor for UUID();
    v15 = *(*(v14 - 8) + 8);
    v15(v13, v14);
    v15(v12, v14);
  }

  return v7;
}

uint64_t sub_1005D63B0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v189 = a6;
  v13 = *(*v6 + 80);
  v14 = *(*v6 + 88);
  v186 = type metadata accessor for RDDeduplicationActivity.Executable.DeduplicationError(0, v13, v14, a4);
  v188 = *(v186 - 8);
  __chkstk_darwin(v186, v15);
  v185 = (&v179 - v16);
  v198[0] = a1;
  v198[1] = a2;
  v17 = v6;
  v198[2] = a3;
  v198[3] = a4;
  v196 = v6;
  v197 = a5;
  sub_1000F5104(&qword_10094EC40, &unk_1007B4890);
  v19 = type metadata accessor for RDDeduplicationActivity.Executable.PreprocessedAttachment(0, v13, v14, v18);
  sub_10000CB48(&unk_10094EC48, &qword_10094EC40, &unk_1007B4890, &protocol conformance descriptor for ArraySlice<A>);
  v20 = Sequence.compactMap<A>(_:)();
  v198[0] = v20;
  v194 = v6;
  v195 = a5;
  v187 = a5;
  v21 = type metadata accessor for Array();
  swift_getWitnessTable();
  v22 = Sequence.compactMap<A>(_:)();
  v20, v23, v24, v25, v26, v27, v28, v29;
  v198[0] = v22;
  v192 = v13;
  v193 = v14;
  WitnessTable = swift_getWitnessTable();
  v32 = sub_1005D22B0(sub_1005DFF24, v191, v21, &type metadata for String, &type metadata for Never, WitnessTable, &protocol witness table for Never, v31);
  v33 = v7;
  swift_beginAccess();
  v34 = v6[8];
  v35 = v6[9];
  sub_10000F61C(v17 + 5, v17[8]);
  v36 = (*(v35 + 32))(v34, v35);
  swift_endAccess();
  if (!v36)
  {
    v36 = &_swiftEmptyArrayStorage;
  }

  v198[0] = v36;

  sub_100271EA8(v32);
  v37 = v198[0];
  swift_beginAccess();
  v38 = v17[8];
  v39 = v17[9];
  sub_10000C9DC((v17 + 5), v38);
  (*(v39 + 40))(v37, v38, v39);
  swift_endAccess();
  v198[0] = 0;
  if (![v189 save:v198])
  {
    v156 = v198[0];
    v22, v157, v158, v159, v160, v161, v162, v163;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_beginAccess();
    v164 = v17[8];
    v165 = v17[9];
    sub_10000C9DC((v17 + 5), v164);
    (*(v165 + 40))(v36, v164, v165);
    swift_endAccess();
    return swift_willThrow();
  }

  v40 = v198[0];
  v36, v41, v42, v43, v44, v45, v46, v47;
  swift_beginAccess();
  v48 = v17[8];
  v49 = v17[9];
  sub_10000F61C(v17 + 5, v48);
  v50 = (*(v49 + 32))(v48, v49);
  swift_endAccess();
  if (!v50)
  {
    v50 = &_swiftEmptyArrayStorage;
  }

  v51 = sub_1001A5660(v50);
  v50, v52, v53, v54, v55, v56, v57, v58;
  v190 = v51;
  v184 = v22;
  if (Array.endIndex.getter())
  {
    v67 = v19;
    v182 = (v188 + 8);
    v68 = 4;
    *&v66 = 136447234;
    v179 = v66;
    v69 = v184;
    v183 = v67;
    do
    {
      v89 = v68 - 4;
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        v91 = *(&v69->super.isa + v68);

        v92 = (v68 - 3);
        if (__OFADD__(v89, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        v91 = _ArrayBuffer._getElementSlowPath(_:)();
        v92 = (v68 - 3);
        if (__OFADD__(v89, 1))
        {
LABEL_28:
          __break(1u);
        }
      }

      v189 = v92;
      sub_1005D7C40();
      if (v33)
      {
        v188 = v17[17];
        v70 = sub_1000F5104(qword_10094EB80, &unk_1007B46B0);
        v71 = v70[12];
        v72 = v70[16];
        v73 = v68;
        v74 = v70[20];
        v75 = v185;
        *v185 = v33;
        v76 = v17;
        v77 = qword_10094E2F0;
        v78 = type metadata accessor for URL();
        v79 = v91 + v77;
        v17 = v76;
        (*(*(v78 - 8) + 16))(v75 + v71, v79, v78);
        v80 = qword_10094E2D8;
        v81 = type metadata accessor for UUID();
        (*(*(v81 - 8) + 16))(v75 + v72, v91 + v80, v81);
        v82 = v187;
        *(v75 + v74) = v187;
        v68 = v73;
        v83 = v186;
        swift_storeEnumTagMultiPayload();
        swift_errorRetain();
        v84 = v82;
        sub_1005D79CC(v75, v85, v86, v87);

        v88 = v75;
        v69 = v184;
        (*v182)(v88, v83);
        v33 = 0;
      }

      else
      {
        v93 = sub_1005D7B08();
        v95 = v94;
        sub_10019EC58(v93, v94);
        v97 = v96;
        v95, v96, v98, v99, v100, v101, v102, v103;
        v97, v104, v105, v106, v107, v108, v109, v110;
        if (qword_1009366A0 != -1)
        {
          swift_once();
        }

        v111 = type metadata accessor for Logger();
        sub_100006654(v111, qword_10094E160);

        v112 = Logger.logObject.getter();
        v113 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v180 = v113;
          v115 = v114;
          v181 = swift_slowAlloc();
          v198[0] = v181;
          *v115 = v179;
          *(v115 + 4) = sub_10000668C(v17[18], v17[19], v198);
          *(v115 + 12) = 2080;
          v116 = URL.path(percentEncoded:)(1);
          v117 = sub_10000668C(v116._countAndFlagsBits, v116._object, v198);
          v188 = v68;
          v118 = v117;
          v116._object, v119, v120, v121, v122, v123, v124, v125;
          *(v115 + 14) = v118;
          *(v115 + 22) = 2080;
          v126 = URL.path(percentEncoded:)(1);
          v127 = sub_10000668C(v126._countAndFlagsBits, v126._object, v198);
          v126._object, v128, v129, v130, v131, v132, v133, v134;
          *(v115 + 24) = v127;
          *(v115 + 32) = 2082;
          v136 = *(v91 + qword_10094E2E0);
          v135 = *(v91 + qword_10094E2E0 + 8);

          v137 = sub_10000668C(v136, v135, v198);
          v135, v138, v139, v140, v141, v142, v143, v144;
          *(v115 + 34) = v137;
          *(v115 + 42) = 2082;
          v145 = UUID.uuidString.getter();
          v147 = v146;
          v148 = sub_10000668C(v145, v146, v198);
          v147, v149, v150, v151, v152, v153, v154, v155;
          *(v115 + 44) = v148;
          v68 = v188;
          _os_log_impl(&_mh_execute_header, v112, v180, "[%{public}s] Migrated from {%s} to {%s} with sha512sum '%{public}s' {attachmentID: %{public}s}", v115, 0x34u);
          swift_arrayDestroy();
        }

        sub_1005D7DF4(*(v91 + qword_10094E2E8), (*(v91 + qword_10094E300) & 1) == 0);
      }

      ++v68;
    }

    while (v189 != Array.endIndex.getter());
  }

  else
  {
    v69 = v184;
  }

  v69, v59, v60, v61, v62, v63, v64, v65;
  v174 = v190;
  v175 = *(v190 + 16);
  if (!v175)
  {
    goto LABEL_26;
  }

  v176 = sub_1003689CC(*(v190 + 16), 0);
  v174 = sub_1002791DC(v198, &v176->clientIdentity[16], v175, v174);
  sub_10001B860(v198[0]);
  if (v174 != v175)
  {
    __break(1u);
LABEL_26:
    v174, v167, v168, v169, v170, v171, v172, v173;
    v176 = &_swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v177 = v17[8];
  v178 = v17[9];
  sub_10000C9DC((v17 + 5), v177);
  (*(v178 + 40))(v176, v177, v178);
  return swift_endAccess();
}

void *sub_1005D6E0C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v127 = a3;
  v8 = *(*v5 + 80);
  v119 = *(*v5 + 88);
  v120 = v8;
  v9 = type metadata accessor for RDDeduplicationActivity.Executable.DeduplicationError(0, v8, v119, a4);
  v126 = *(v9 - 8);
  __chkstk_darwin(v9, v10);
  v12 = &v105 - v11;
  v13 = type metadata accessor for URL();
  v123 = *(v13 - 8);
  v124 = v13;
  __chkstk_darwin(v13, v14);
  v118 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v17);
  v117 = &v105 - v18;
  __chkstk_darwin(v19, v20);
  v122 = &v105 - v21;
  v22 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v22 - 8, v23);
  v25 = &v105 - v24;
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26, v28);
  v121 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v31);
  v33 = &v105 - v32;
  ObjectType = swift_getObjectType();
  (*(a2 + 8))(ObjectType, a2);
  v125 = v27;
  v35 = *(v27 + 48);
  v36 = v26;
  if (v35(v25, 1, v26) == 1)
  {
    sub_1000050A4(v25, &unk_100939D90, "8\n\r");
    *v12 = a1;
    *(v12 + 1) = a2;
    v37 = v127;
    *(v12 + 2) = v127;
    swift_storeEnumTagMultiPayload();
    swift_unknownObjectRetain();
    v38 = v37;
    sub_1005D79CC(v12, v39, v40, v41);
    (v126)[1](v12, v9);
  }

  else
  {
    v42 = v127;
    v115 = v9;
    v43 = v125;
    v113 = *(v125 + 32);
    v114 = v125 + 32;
    v113(v33, v25, v36);
    v116 = (*(a2 + 16))(ObjectType, a2);
    v112 = a2;
    if (v44)
    {
      v45 = v44;
      v108 = a1;
      v46 = v5[4];
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v48 = [v42 uuid];
      v49 = v121;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v50 = UUID._bridgeToObjectiveC()().super.isa;
      v110 = *(v43 + 8);
      v111 = v43 + 8;
      v110(v49, v36);
      v109 = v45;
      v51 = String._bridgeToObjectiveC()();
      v107 = v46;
      v52 = [v46 URLForAttachmentFile:isa accountID:v50 fileName:v51 sha512Sum:0];

      v53 = v122;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v54 = static REMFileDigester.sha512SumWithFileSize(url:)();
      if (v55)
      {
        v62 = v54;
        v126 = v56;
        v106 = v55;
        v63 = UUID._bridgeToObjectiveC()().super.isa;
        v64 = [v127 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v65 = UUID._bridgeToObjectiveC()().super.isa;
        v110(v49, v36);
        v66 = v109;
        v67 = String._bridgeToObjectiveC()();
        v66, v68, v69, v70, v71, v72, v73, v74;
        v75 = v62;
        v76 = String._bridgeToObjectiveC()();
        v77 = v49;
        v78 = v33;
        v79 = v53;
        v80 = [v107 URLForAttachmentFile:v63 accountID:v65 fileName:v67 sha512Sum:v76];

        v81 = v117;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        type metadata accessor for RDDeduplicationActivity.Executable.PreprocessedAttachment(0, v120, v119, v82);
        v113(v77, v78, v36);
        v83 = v118;
        (*(v123 + 32))(v118, v79, v124);
        swift_allocObject();
        v84 = v127;
        v85 = sub_1005D97A0(v108, v112, v127, v77, v75, v106, v126, v83, v81);
        swift_unknownObjectRetain();
        v86 = v84;
        return v85;
      }

      v109, 0, v56, v57, v58, v59, v60, v61;
      v94 = sub_1000F5104(&qword_10094EB70, &qword_1007B46A0);
      v95 = *(v94 + 48);
      v96 = *(v94 + 64);
      v98 = v123;
      v97 = v124;
      (*(v123 + 16))(v12, v53, v124);
      (*(v125 + 16))(&v12[v95], v33, v36);
      v99 = v127;
      *&v12[v96] = v127;
      v100 = v115;
      swift_storeEnumTagMultiPayload();
      v101 = v99;
      sub_1005D79CC(v12, v102, v103, v104);
      (v126)[1](v12, v100);
      (*(v98 + 8))(v53, v97);
      v110(v33, v36);
    }

    else
    {
      v88 = *(sub_1000F5104(&qword_10094EB68, &qword_1007B4698) + 48);
      (*(v43 + 16))(v12, v33, v36);
      *&v12[v88] = v42;
      v89 = v115;
      swift_storeEnumTagMultiPayload();
      v90 = v42;
      sub_1005D79CC(v12, v91, v92, v93);
      (v126)[1](v12, v89);
      (*(v43 + 8))(v33, v36);
    }
  }

  return 0;
}

uint64_t sub_1005D75CC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v10 = type metadata accessor for RDDeduplicationActivity.Executable.DeduplicationError(0, *(*a2 + 80), *(*a2 + 88), a5);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v26 - v13;
  v15 = *a1;
  sub_1005D77B8();
  if (v5)
  {
    v26[1] = a2[17];
    v16 = sub_1000F5104(&qword_10094EB78, &qword_1007B46A8);
    v17 = *(v16 + 48);
    v27 = a4;
    v18 = *(v16 + 64);
    *v14 = v5;
    v19 = qword_10094E2D8;
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 16))(&v14[v17], v15 + v19, v20);
    *&v14[v18] = a3;
    a4 = v27;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v21 = a3;
    sub_1005D79CC(v14, v22, v23, v24);

    result = (*(v11 + 8))(v14, v10);
    v15 = 0;
  }

  else
  {
    sub_1005D7948();
  }

  *a4 = v15;
  return result;
}

void sub_1005D77B8()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 defaultManager];
  object = URL.path(percentEncoded:)(0)._object;
  v5 = String._bridgeToObjectiveC()();
  object, v6, v7, v8, v9, v10, v11, v12;
  LOBYTE(object) = [v3 fileExistsAtPath:v5];

  if ((object & 1) == 0)
  {
    v13 = [v2 defaultManager];
    URL._bridgeToObjectiveC()(qword_10094E2F0);
    v15 = v14;
    URL._bridgeToObjectiveC()(v16);
    v18 = v17;
    v23 = 0;
    v19 = [v13 copyItemAtURL:v15 toURL:v17 error:&v23];

    v20 = v23;
    if (v19)
    {
      *(v1 + qword_10094E300) = 1;
      v21 = v20;
    }

    else
    {
      v22 = v23;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }
}

uint64_t sub_1005D7948()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v3 = v0 + qword_10094E2E0;
  v4 = *(v0 + qword_10094E2E0);
  v5 = *(v3 + 8);
  v6 = *(v1 + 32);

  return v6(v4, v5, ObjectType, v1);
}

uint64_t sub_1005D79CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = type metadata accessor for RDDeduplicationActivity.Executable.DeduplicationError(0, *(*v5 + 80), *(*v5 + 88), a4);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v13 - v10;
  sub_1005D8368(*(v5 + 24), *(v5 + 32), v7);
  (*(v8 + 16))(v11, a1, v7);
  swift_beginAccess();
  type metadata accessor for Array();
  Array.append(_:)();
  return swift_endAccess();
}

uint64_t sub_1005D7B08()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  *&v5 = __chkstk_darwin(v2, v4).n128_u64[0];
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(v1 + 32) uuid];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = UUID.uuidString.getter();
  v11 = v10;
  (*(v3 + 8))(v7, v2);
  v23[0] = v9;
  v23[1] = v11;
  v12._countAndFlagsBits = 124;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = UUID.uuidString.getter();
  object = v13._object;
  String.append(_:)(v13);
  object, v15, v16, v17, v18, v19, v20, v21;
  return v23[0];
}

uint64_t sub_1005D7C40()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.deletingLastPathComponent()();
  v5 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  v14 = 0;
  v9 = [v5 removeItemAtURL:v7 error:&v14];

  if (v9)
  {
    v10 = *(v1 + 8);
    v11 = v14;
    return v10(v4, v0);
  }

  else
  {
    v13 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v1 + 8))(v4, v0);
  }
}

void sub_1005D7DF4(uint64_t a1, char a2)
{
  v5 = *(v2 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 40) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1003684B8(0, *v5->clientIdentity + 1, 1, v5, v7, v8, v9, v10);
    *(v2 + 40) = v5;
  }

  v12 = *v5->clientIdentity;
  v11 = *&v5->clientIdentity[8];
  if (v12 >= v11 >> 1)
  {
    v5 = sub_1003684B8((v11 > 1), v12 + 1, 1, v5, v7, v8, v9, v10);
  }

  *v5->clientIdentity = v12 + 1;
  v13 = v5 + 16 * v12;
  *(v13 + 4) = a1;
  v13[40] = a2 & 1;
  *(v2 + 40) = v5;
}

uint64_t sub_1005D7F4C()
{
  v1 = sub_10000F8A4(3uLL, 0, 7u);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  v3 = [objc_allocWithZone(NSFetchRequest) init];
  v4 = [swift_getObjCClassFromMetadata() entity];
  [v3 setEntity:v4];

  [v3 setAffectedStores:0];
  v56 = v1;
  [v3 setPredicate:v1];
  v57 = _swiftEmptySetSingleton;

  sub_100010864(v5);
  inited, v6, v7, v8, v9, v10, v11, v12;
  v13 = sub_1002137C0(_swiftEmptySetSingleton);
  _swiftEmptySetSingleton, v14, v15, v16, v17, v18, v19, v20;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v13, v22, v23, v24, v25, v26, v27, v28;
  [v3 setPropertiesToFetch:isa];

  swift_setDeallocating();
  swift_arrayDestroy();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1007953F0;
  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  swift_getKeyPath();
  *(v29 + 32) = NSSortDescriptor.init<A, B>(keyPath:ascending:)();
  v30 = Array._bridgeToObjectiveC()().super.isa;
  v29, v31, v32, v33, v34, v35, v36, v37;
  [v3 setSortDescriptors:v30];

  v38 = NSManagedObjectContext.fetch<A>(_:)();
  if (v0)
  {
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_100006654(v39, qword_10094E160);

    swift_errorRetain();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      *v42 = 136446466;
      *(v42 + 4) = sub_10000668C(*(v55 + 144), *(v55 + 152), &v57);
      *(v42 + 12) = 2082;
      swift_getErrorValue();
      v43 = Error.rem_errorDescription.getter();
      v45 = v44;
      v46 = sub_10000668C(v43, v44, &v57);
      v45, v47, v48, v49, v50, v51, v52, v53;
      *(v42 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v40, v41, "[%{public}s] failed to fetch accounts from database {error: %{public}s}", v42, 0x16u);
      swift_arrayDestroy();
    }

    swift_willThrow();
  }

  return v38;
}

void sub_1005D8368(NSObject *a1, _TtC7remindd19RDXPCStorePerformer *a2, uint64_t a3)
{
  v4 = v3;
  v313 = a2;
  v310 = a1;
  v314 = type metadata accessor for UUID();
  v6 = *(v314 - 8);
  __chkstk_darwin(v314, v7);
  v308 = (&v301 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9, v10);
  v309 = &v301 - v11;
  __chkstk_darwin(v12, v13);
  v304 = &v301 - v14;
  __chkstk_darwin(v15, v16);
  v305 = &v301 - v17;
  __chkstk_darwin(v18, v19);
  v303 = &v301 - v20;
  __chkstk_darwin(v21, v22);
  v307 = &v301 - v23;
  __chkstk_darwin(v24, v25);
  v27 = &v301 - v26;
  __chkstk_darwin(v28, v29);
  v31 = &v301 - v30;
  v32 = type metadata accessor for URL();
  v311 = *(v32 - 8);
  v312 = v32;
  __chkstk_darwin(v32, v33);
  v306 = &v301 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v36);
  v38 = &v301 - v37;
  __chkstk_darwin(v39, v40);
  v42 = &v301 - v41;
  __chkstk_darwin(v43, v44);
  v46 = &v301 - v45;
  __chkstk_darwin(v47, v48);
  v50 = &v301 - v49;
  v53 = __chkstk_darwin(v51, v52);
  v55 = &v301 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v56 + 16))(v55, v4, a3, v53);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v138 = sub_1000F5104(&qword_10094EB70, &qword_1007B46A0);
      v139 = *(v138 + 48);
      v140 = *&v55[*(v138 + 64)];
      v142 = v311;
      v141 = v312;
      (*(v311 + 32))(v46, v55, v312);
      v143 = v6;
      v144 = &v55[v139];
      v145 = v307;
      v146 = v314;
      (*(v6 + 4))(v307, v144, v314);
      if (qword_1009366A0 != -1)
      {
        swift_once();
      }

      v147 = type metadata accessor for Logger();
      sub_100006654(v147, qword_10094E160);
      (*(v142 + 16))(v42, v46, v141);
      v148 = *(v6 + 2);
      v149 = v303;
      v148(v303, v145, v146);
      v150 = v313;

      v151 = v140;
      v152 = v146;
      v153 = v151;
      v154 = v150;
      v155 = Logger.logObject.getter();
      v156 = static os_log_type_t.error.getter();

      v154, v157, v158, v159, v160, v161, v162, v163;
      if (os_log_type_enabled(v155, v156))
      {
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v306 = v143;
        v308 = v165;
        v309 = swift_slowAlloc();
        v315[0] = v309;
        *v164 = 136446978;
        *(v164 + 4) = sub_10000668C(v310, v154, v315);
        *(v164 + 12) = 2080;
        v166 = URL.path(percentEncoded:)(1);
        v167 = *(v142 + 8);
        v310 = v155;
        v311 = v167;
        v313 = v46;
        v167(v42, v312);
        v168 = sub_10000668C(v166._countAndFlagsBits, v166._object, v315);
        v166._object, v169, v170, v171, v172, v173, v174, v175;
        *(v164 + 14) = v168;
        *(v164 + 22) = 2082;
        v176 = UUID.uuidString.getter();
        v178 = v177;
        v179 = *(v306 + 1);
        v180 = v149;
        v181 = v314;
        v179(v180, v314);
        v182 = sub_10000668C(v176, v178, v315);
        v178, v183, v184, v185, v186, v187, v188, v189;
        *(v164 + 24) = v182;
        *(v164 + 32) = 2114;
        *(v164 + 34) = v153;
        v190 = v308;
        *v308 = v153;
        v191 = v153;
        v192 = v310;
        _os_log_impl(&_mh_execute_header, v310, v156, "[%{public}s] Failed to migrate from {%s} because sha512Sum failed {attachmentID: %{public}s, accountID: %{public}@}", v164, 0x2Au);
        sub_1000050A4(v190, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v179(v307, v181);
        (v311)(v313, v312);
        return;
      }

      v293 = *(v143 + 1);
      v293(v149, v152);
      v294 = *(v142 + 8);
      v295 = v312;
      v294(v42, v312);
      v293(v307, v152);
      v296 = v46;
      v297 = v295;
    }

    else
    {
      v58 = v6;
      v59 = v311;
      if (EnumCaseMultiPayload == 3)
      {
        v60 = sub_1000F5104(&qword_10094EB78, &qword_1007B46A8);
        v61 = *&v55[*(v60 + 64)];
        v62 = *(v6 + 4);
        v63 = v305;
        v64 = v314;
        v62(v305, &v55[*(v60 + 48)], v314);
        if (qword_1009366A0 != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        sub_100006654(v65, qword_10094E160);
        v66 = v304;
        (*(v58 + 2))(v304, v63, v64);
        v67 = v313;

        swift_errorRetain();
        v68 = v61;
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.error.getter();
        v67, v71, v72, v73, v74, v75, v76, v77;

        if (os_log_type_enabled(v69, v70))
        {
          v78 = swift_slowAlloc();
          v311 = swift_slowAlloc();
          v312 = swift_slowAlloc();
          v315[0] = v312;
          *v78 = 136446978;
          *(v78 + 4) = sub_10000668C(v310, v67, v315);
          *(v78 + 12) = 2080;
          swift_getErrorValue();
          v79 = Error.rem_errorDescription.getter();
          v81 = v80;
          v82 = v66;
          v83 = sub_10000668C(v79, v80, v315);
          v81, v84, v85, v86, v87, v88, v89, v90;
          *(v78 + 14) = v83;
          *(v78 + 22) = 2082;
          sub_1005E0108(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v91 = dispatch thunk of CustomStringConvertible.description.getter();
          v93 = v92;
          v94 = *(v58 + 1);
          v94(v82, v64);
          v95 = sub_10000668C(v91, v93, v315);
          v93, v96, v97, v98, v99, v100, v101, v102;
          *(v78 + 24) = v95;
          *(v78 + 32) = 2114;
          *(v78 + 34) = v68;
          v103 = v311;
          *v311 = v68;
          v104 = v68;
          _os_log_impl(&_mh_execute_header, v69, v70, "[%{public}s] Could not copy file for deduplication. Skipping {error: %s, attachmentID: %{public}s, accountID: %{public}@}", v78, 0x2Au);
          sub_1000050A4(v103, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();

          v94(v305, v314);
        }

        else
        {

          v298 = *(v58 + 1);
          v298(v66, v64);
          v298(v63, v64);
        }

        return;
      }

      v193 = sub_1000F5104(qword_10094EB80, &unk_1007B46B0);
      v194 = v193[16];
      v195 = *&v55[v193[20]];
      v196 = v312;
      (*(v59 + 32))(v38, &v55[v193[12]], v312);
      v197 = &v55[v194];
      v198 = v309;
      v199 = v314;
      (*(v6 + 4))(v309, v197, v314);
      if (qword_1009366A0 != -1)
      {
        swift_once();
      }

      v200 = type metadata accessor for Logger();
      sub_100006654(v200, qword_10094E160);
      (*(v59 + 16))(v306, v38, v196);
      (*(v6 + 2))(v308, v198, v199);
      v201 = v313;

      swift_errorRetain();
      v202 = v195;
      v203 = v38;
      v204 = v202;
      v205 = v201;
      v206 = Logger.logObject.getter();
      LODWORD(v201) = static os_log_type_t.error.getter();
      v205, v207, v208, v209, v210, v211, v212, v213;

      v307 = v204;

      LODWORD(v305) = v201;
      if (os_log_type_enabled(v206, v201))
      {
        v214 = swift_slowAlloc();
        v304 = v203;
        v215 = v214;
        v302 = swift_slowAlloc();
        v303 = swift_slowAlloc();
        v315[0] = v303;
        *v215 = 136447234;
        *(v215 + 4) = sub_10000668C(v310, v205, v315);
        *(v215 + 12) = 2080;
        sub_1005E0108(&qword_1009456F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
        v216 = v306;
        v217 = dispatch thunk of CustomStringConvertible.description.getter();
        v218 = v196;
        v219 = v6;
        v221 = v220;
        v313 = *(v59 + 8);
        (v313)(v216, v218);
        v222 = sub_10000668C(v217, v221, v315);
        v221, v223, v224, v225, v226, v227, v228, v229;
        *(v215 + 14) = v222;
        *(v215 + 22) = 2080;
        swift_getErrorValue();
        v230 = Error.rem_errorDescription.getter();
        v232 = v231;
        v233 = sub_10000668C(v230, v231, v315);
        v232, v234, v235, v236, v237, v238, v239, v240;
        *(v215 + 24) = v233;
        *(v215 + 32) = 2082;
        sub_1005E0108(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v241 = v308;
        v242 = dispatch thunk of CustomStringConvertible.description.getter();
        v244 = v243;
        v245 = *(v219 + 1);
        v245(v241, v199);
        v246 = sub_10000668C(v242, v244, v315);
        v244, v247, v248, v249, v250, v251, v252, v253;
        *(v215 + 34) = v246;
        *(v215 + 42) = 2114;
        v254 = v307;
        *(v215 + 44) = v307;
        v255 = v302;
        *v302 = v254;
        v256 = v254;
        _os_log_impl(&_mh_execute_header, v206, v305, "[%{public}s] Could not delete file <%s> after deduplication. Leaving in place {error: %s, attachmentID: %{public}s, accountID: %{public}@}", v215, 0x34u);
        sub_1000050A4(v255, &unk_100938E70, &unk_100797230);

        swift_arrayDestroy();

        v245(v309, v199);
        (v313)(v304, v312);
        return;
      }

      v299 = *(v6 + 1);
      v299(v308, v199);
      v294 = *(v59 + 8);
      v294(v306, v196);
      v299(v309, v199);
      v296 = v203;
      v297 = v196;
    }

    v294(v296, v297);
    return;
  }

  if (EnumCaseMultiPayload)
  {
    v257 = *&v55[*(sub_1000F5104(&qword_10094EB68, &qword_1007B4698) + 48)];
    v258 = v6;
    v259 = v31;
    v260 = v314;
    (*(v6 + 4))(v31, v55, v314);
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v261 = type metadata accessor for Logger();
    sub_100006654(v261, qword_10094E160);
    (*(v6 + 2))(v27, v31, v260);
    v262 = v313;

    v263 = v257;
    v264 = v262;
    v265 = Logger.logObject.getter();
    v266 = static os_log_type_t.error.getter();

    v264, v267, v268, v269, v270, v271, v272, v273;
    if (os_log_type_enabled(v265, v266))
    {
      v274 = swift_slowAlloc();
      v275 = swift_slowAlloc();
      v312 = swift_slowAlloc();
      v315[0] = v312;
      *v274 = 136446722;
      *(v274 + 4) = sub_10000668C(v310, v264, v315);
      *(v274 + 12) = 2082;
      sub_1005E0108(&qword_10093F2A0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v276 = dispatch thunk of CustomStringConvertible.description.getter();
      v277 = v260;
      v278 = v258;
      v280 = v279;
      v313 = v259;
      v281 = *(v278 + 1);
      v282 = v27;
      v283 = v277;
      v281(v282, v277);
      v284 = sub_10000668C(v276, v280, v315);
      v280, v285, v286, v287, v288, v289, v290, v291;
      *(v274 + 14) = v284;
      *(v274 + 22) = 2114;
      *(v274 + 24) = v263;
      *v275 = v263;
      v292 = v263;
      _os_log_impl(&_mh_execute_header, v265, v266, "[%{public}s] Attachment had null fileName {attachmentID: %{public}s, accountID: %{public}@}", v274, 0x20u);
      sub_1000050A4(v275, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      v281(v313, v283);
    }

    else
    {

      v300 = *(v258 + 1);
      v300(v27, v260);
      v300(v259, v260);
    }
  }

  else
  {
    v105 = *(v55 + 1);
    v106 = *(v55 + 2);
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v107 = type metadata accessor for Logger();
    sub_100006654(v107, qword_10094E160);
    v108 = v313;

    swift_unknownObjectRetain();
    v109 = v106;
    v110 = v108;
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.error.getter();

    swift_unknownObjectRelease();
    v110, v113, v114, v115, v116, v117, v118, v119;
    if (os_log_type_enabled(v111, v112))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v314 = swift_slowAlloc();
      v315[0] = v314;
      *v120 = 136446722;
      *(v120 + 4) = sub_10000668C(v310, v110, v315);
      *(v120 + 12) = 2082;
      ObjectType = swift_getObjectType();
      v123 = (*(v105 + 56))(ObjectType, v105);
      v124 = [v123 URIRepresentation];

      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      sub_1005E0108(&qword_1009456F0, &type metadata accessor for URL, &protocol conformance descriptor for URL);
      v125 = v312;
      v126 = dispatch thunk of CustomStringConvertible.description.getter();
      v128 = v127;
      (*(v311 + 8))(v50, v125);
      v129 = sub_10000668C(v126, v128, v315);
      v128, v130, v131, v132, v133, v134, v135, v136;
      *(v120 + 14) = v129;
      *(v120 + 22) = 2114;
      *(v120 + 24) = v109;
      *v121 = v109;
      v137 = v109;
      _os_log_impl(&_mh_execute_header, v111, v112, "[%{public}s] Attachment had null identifier {managedObjectID: %{public}s, accountID: %{public}@}", v120, 0x20u);
      sub_1000050A4(v121, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void *sub_1005D97A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + qword_10094E300) = 0;
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = a3;
  v15 = qword_10094E2D8;
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 32))(v9 + v15, a4, v16);
  v17 = (v9 + qword_10094E2E0);
  *v17 = a5;
  v17[1] = a6;
  *(v9 + qword_10094E2E8) = a7;
  v18 = qword_10094E2F0;
  v19 = type metadata accessor for URL();
  v20 = *(*(v19 - 8) + 32);
  v20(v9 + v18, a8, v19);
  v20(v9 + qword_10094E2F8, a9, v19);
  return v9;
}

uint64_t sub_1005D98CC()
{
  swift_unknownObjectRelease();

  v1 = qword_10094E2D8;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  *(v0 + qword_10094E2E0 + 8), v3, v4, v5, v6, v7, v8, v9;
  v10 = qword_10094E2F0;
  v11 = type metadata accessor for URL();
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  v12(v0 + qword_10094E2F8, v11);
  return v0;
}

uint64_t sub_1005D99D8(void *a1)
{
  v170 = a1;
  v2 = *v1;
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v165 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7, v9);
  v11 = &v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v165 - v14;
  static Date.now.getter();
  v16 = qword_10094E388;
  swift_beginAccess();
  v17 = v1 + v16;
  v18 = v1;
  sub_100010364(v17, v6, &unk_100938850, qword_100795AE0);
  v169 = (*(v8 + 48))(v6, 1, v7);
  if (v169 == 1)
  {
    sub_1000050A4(v6, &unk_100938850, qword_100795AE0);
    v168 = 0;
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    Date.timeIntervalSince(_:)();
    v20 = v19;
    (*(v8 + 8))(v11, v7);
    v168 = v20;
  }

  v171 = v15;
  v172 = v8;
  v173 = v7;
  v21 = v1[5];
  v22 = *(v21 + 16);
  v23 = &_swiftEmptyArrayStorage;
  if (v22)
  {
    v177[0] = &_swiftEmptyArrayStorage;

    sub_100253830(0, v22, 0);
    v23 = v177[0];
    v31 = *(v177[0] + 16);
    v32 = (v21 + 40);
    do
    {
      if (*v32)
      {
        v33 = *(v32 - 1);
      }

      else
      {
        v33 = 0;
      }

      v177[0] = v23;
      v34 = *&v23->clientIdentity[8];
      if (v31 >= v34 >> 1)
      {
        sub_100253830((v34 > 1), v31 + 1, 1);
        v23 = v177[0];
      }

      *v23->clientIdentity = v31 + 1;
      *&v23->clientIdentity[8 * v31 + 16] = v33;
      v32 += 16;
      ++v31;
      --v22;
    }

    while (v22);
    v21, v24, v25, v26, v27, v28, v29, v30;
  }

  v175 = v23;
  sub_1000F5104(&qword_10094EC10, &qword_1007AD5B0);
  sub_10000CB48(&qword_10094EC18, &qword_10094EC10, &qword_1007AD5B0, &protocol conformance descriptor for [A]);
  Sequence<>.sum()();
  v23, v35, v36, v37, v38, v39, v40, v41;
  v174 = v177[0];
  v42 = v1[5];
  v43 = *(v42 + 16);
  v44 = &_swiftEmptyArrayStorage;
  if (v43)
  {
    v166 = v2;
    v167 = v1;
    v177[0] = &_swiftEmptyArrayStorage;

    sub_100253830(0, v43, 0);
    v44 = v177[0];
    v52 = *(v177[0] + 16);
    v53 = 32;
    do
    {
      v54 = *(v42 + v53);
      v177[0] = v44;
      v55 = *&v44->clientIdentity[8];
      if (v52 >= v55 >> 1)
      {
        sub_100253830((v55 > 1), v52 + 1, 1);
        v44 = v177[0];
      }

      *v44->clientIdentity = v52 + 1;
      *&v44->clientIdentity[8 * v52 + 16] = v54;
      v53 += 16;
      ++v52;
      --v43;
    }

    while (v43);
    v42, v45, v46, v47, v48, v49, v50, v51;
    v18 = v167;
    v2 = v166;
  }

  v175 = v44;
  Sequence<>.sum()();
  v44, v56, v57, v58, v59, v60, v61, v62;
  v63 = v18[5];
  v64 = *(v63 + 16);
  if (v64)
  {
    v65 = 0;
    v66 = (v63 + 40);
    v67 = v64;
    while (*v66 != 1 || !__OFADD__(v65++, 1))
    {
      v66 += 16;
      if (!--v67)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  v65 = 0;
LABEL_27:
  sub_1000F5104(&unk_10094EC20, &qword_1007A11D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100792CF0;
  *(inited + 32) = 0x6564656563637573;
  *(inited + 40) = 0xE900000000000064;
  *(inited + 48) = Int._bridgeToObjectiveC()();
  *(inited + 56) = 0x64656C696166;
  *(inited + 64) = 0xE600000000000000;
  swift_beginAccess();
  v70 = v18[6];
  v71 = *(v2 + 80);
  v72 = *(v2 + 88);
  type metadata accessor for RDDeduplicationActivity.Executable.DeduplicationError(0, v71, v72, v73);

  Array.count.getter();
  v70, v74, v75, v76, v77, v78, v79, v80;
  *(inited + 72) = Int._bridgeToObjectiveC()();
  strcpy((inited + 80), "dedupedCount");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = Int._bridgeToObjectiveC()();
  *(inited + 104) = 0xD000000000000018;
  *(inited + 112) = 0x80000001007FE070;
  *(inited + 120) = Int._bridgeToObjectiveC()();
  strcpy((inited + 128), "bytesRecovered");
  *(inited + 143) = -18;
  *(inited + 144) = Int._bridgeToObjectiveC()();
  v81 = sub_10038F938(inited);
  swift_setDeallocating();
  sub_1000F5104(&qword_100941380, &unk_1007A11E0);
  swift_arrayDestroy();
  v175 = v18[6];
  type metadata accessor for Array();
  swift_getWitnessTable();
  v82 = 0;
  if ((Collection.isEmpty.getter() & 1) == 0)
  {
    v83 = v18[6];

    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v82 = _arrayForceCast<A, B>(_:)();
    v83, v84, v85, v86, v87, v88, v89, v90;
  }

  sub_10000F61C(v170, v170[3]);
  v91 = sub_1004646CC();
  v81, v92, v93, v94, v95, v96, v97, v98;
  if (v82)
  {
    type metadata accessor for RDDeduplicationActivity.Executable.LocalAnalytics.CompositeError(0, v71, v72, v99);
    swift_getWitnessTable();
    swift_allocError();
    *v100 = v82;
  }

  v101 = v169;
  dispatch thunk of AnalyticsType.postEvent(_:payload:duration:error:performAutoBugCaptureOnError:)();

  v91, v102, v103, v104, v105, v106, v107, v108;
  if (v101 == 1)
  {
    v109 = 0xE400000000000000;
    v110 = 1936539455;
  }

  else
  {
    v111 = [objc_allocWithZone(NSNumberFormatter) init];
    [v111 setUsesSignificantDigits:1];
    [v111 setMinimumSignificantDigits:3];
    [v111 setMaximumSignificantDigits:4];
    v175 = 0;
    v176 = 0xE000000000000000;
    isa = Double._bridgeToObjectiveC()().super.super.isa;
    v113 = [v111 stringForObjectValue:isa];

    if (v113)
    {
      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = v115;
    }

    else
    {
      v116 = 0xE200000000000000;
      v114 = 16191;
    }

    v117._countAndFlagsBits = v114;
    v117._object = v116;
    String.append(_:)(v117);
    v116, v118, v119, v120, v121, v122, v123, v124;
    v125._countAndFlagsBits = 29549;
    v125._object = 0xE200000000000000;
    String.append(_:)(v125);

    v110 = v175;
    v109 = v176;
  }

  if (qword_1009366A0 != -1)
  {
    swift_once();
  }

  v126 = type metadata accessor for Logger();
  sub_100006654(v126, qword_10094E160);

  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.info.getter();
  v109, v129, v130, v131, v132, v133, v134, v135;
  if (os_log_type_enabled(v127, v128))
  {
    v136 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    *v136 = 136447234;
    *(v136 + 4) = sub_10000668C(v18[3], v18[4], &v175);
    *(v136 + 12) = 2050;
    *(v136 + 14) = *(v18[5] + 16);

    *(v136 + 22) = 2050;
    *(v136 + 24) = v65;
    *(v136 + 32) = 2082;
    v137 = [objc_opt_self() stringFromByteCount:v174 countStyle:0];
    v138 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v140 = v139;

    v141 = sub_10000668C(v138, v140, &v175);
    v140, v142, v143, v144, v145, v146, v147, v148;
    *(v136 + 34) = v141;
    *(v136 + 42) = 2080;
    v149 = sub_10000668C(v110, v109, &v175);
    v109, v150, v151, v152, v153, v154, v155, v156;
    *(v136 + 44) = v149;
    _os_log_impl(&_mh_execute_header, v127, v128, "[%{public}s] Successfully migrated %{public}ld attachments, finding %{public}ld duplicates, saving %{public}s. Took %s", v136, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    v109, v157, v158, v159, v160, v161, v162, v163;
  }

  return (*(v172 + 8))(v171, v173);
}

uint64_t sub_1005DA4FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100026EF4(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      swift_getErrorValue();
      swift_errorRetain();
      v4 = Error.rem_errorDescription.getter();
      v6 = v5;

      v8 = *_swiftEmptyArrayStorage.clientIdentity;
      v7 = *&_swiftEmptyArrayStorage.clientIdentity[8];
      if (v8 >= v7 >> 1)
      {
        sub_100026EF4((v7 > 1), v8 + 1, 1);
      }

      *_swiftEmptyArrayStorage.clientIdentity = v8 + 1;
      v9 = &_swiftEmptyArrayStorage + 16 * v8;
      *(v9 + 4) = v4;
      *(v9 + 5) = v6;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  sub_1000F5104(&unk_10093B300, &unk_100797780);
  sub_10000CB48(&qword_10093D0F0, &unk_10093B300, &unk_100797780, &protocol conformance descriptor for [A]);
  v10 = BidirectionalCollection<>.joined(separator:)();
  v12 = v11;
  &_swiftEmptyArrayStorage, v11, v13, v14, v15, v16, v17, v18;
  v19._countAndFlagsBits = v10;
  v19._object = v12;
  String.append(_:)(v19);
  v12, v20, v21, v22, v23, v24, v25, v26;
  return 0x203A73726F727245;
}

_TtC7remindd19RDXPCStorePerformer **sub_1005DA6B4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[4], a2, a3, a4, a5, a6, a7, a8;
  v8[5], v9, v10, v11, v12, v13, v14, v15;
  v8[6], v16, v17, v18, v19, v20, v21, v22;
  sub_1000050A4(v8 + qword_10094E388, &unk_100938850, qword_100795AE0);
  return v8;
}

uint64_t sub_1005DA71C(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

void sub_1005DA774(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *v3;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v8 - 8, v9);
  v80 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v12);
  v14 = &v75 - v13;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15, v17);
  v19 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v21);
  v23 = &v75 - v22;
  v83 = a1;
  v84 = a2;
  v81 = 124;
  v82 = 0xE100000000000000;
  sub_10013BCF4();
  v24 = StringProtocol.components<A>(separatedBy:)();
  if (*(v24 + 16) != 2)
  {
    v24, v25, v26, v27, v28, v29, v30, v31;
LABEL_9:
    *a3 = a1;
    *(a3 + 1) = a2;
    type metadata accessor for RDDeduplicationActivity.CrashCleanError(0, *(v7 + 80), *(v7 + 88), v50);
    swift_storeEnumTagMultiPayload();
    sub_1000F514C(&qword_10094EC60, &qword_1007B48A8);
    swift_getWitnessTable();
    type metadata accessor for Result();
LABEL_10:
    swift_storeEnumTagMultiPayload();

    return;
  }

  v76 = v19;
  v77 = a1;
  v78 = v7;
  v79 = a2;
  v32 = *(v24 + 40);
  v33 = v24;

  UUID.init(uuidString:)();
  v32, v34, v35, v36, v37, v38, v39, v40;
  v41 = *(v16 + 48);
  if (v41(v14, 1, v15) == 1)
  {
    v33, v42, v43, v44, v45, v46, v47, v48;
    v49 = v14;
LABEL_8:
    sub_1000050A4(v49, &unk_100939D90, "8\n\r");
    v7 = v78;
    a2 = v79;
    a1 = v77;
    goto LABEL_9;
  }

  v75 = *(v16 + 32);
  v75(v23, v14, v15);
  if (*(v33 + 16) >= 2uLL)
  {
    v51 = v33;
    v52 = *(v33 + 56);

    v51, v53, v54, v55, v56, v57, v58, v59;
    v60 = v80;
    UUID.init(uuidString:)();
    v52, v61, v62, v63, v64, v65, v66, v67;
    if (v41(v60, 1, v15) != 1)
    {
      v69 = v75;
      v68 = v76;
      v75(v76, v60, v15);
      v70 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
      v71 = *(v70 + 48);
      v72 = *(v70 + 64);
      v73 = v79;
      *a3 = v77;
      *(a3 + 1) = v73;
      v69(&a3[v71], v23, v15);
      v69(&a3[v72], v68, v15);
      type metadata accessor for RDDeduplicationActivity.CrashCleanError(255, *(v78 + 80), *(v78 + 88), v74);
      swift_getWitnessTable();
      type metadata accessor for Result();
      goto LABEL_10;
    }

    (*(v16 + 8))(v23, v15);
    v49 = v60;
    goto LABEL_8;
  }

  __break(1u);
}

_TtC7remindd19RDXPCStorePerformer *sub_1005DABC8(_TtC7remindd19RDXPCStorePerformer *a1)
{
  v3 = *v1;
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  __chkstk_darwin(v4 - 8, v5);
  v7 = v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v9);
  v115 = v101 - v10;
  __chkstk_darwin(v11, v12);
  v14 = v101 - v13;
  v125 = type metadata accessor for UUID();
  v116 = *(v125 - 8);
  __chkstk_darwin(v125, v15);
  v104 = v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v18);
  v112 = v101 - v19;
  __chkstk_darwin(v20, v21);
  v109 = v101 - v22;
  __chkstk_darwin(v23, v24);
  v111 = v101 - v25;
  __chkstk_darwin(v26, v27);
  v124 = v101 - v28;
  v103 = a1;
  v129 = a1;
  v126 = *(v3 + 80);
  v29 = v126;
  v127 = *(v3 + 88);
  v30 = v127;
  sub_1000F514C(&qword_10094EC60, &qword_1007B48A8);
  type metadata accessor for RDDeduplicationActivity.CrashCleanError(255, v29, v30, v31);
  swift_getWitnessTable();
  v32 = type metadata accessor for Result();
  v33 = type metadata accessor for Array();
  swift_getWitnessTable();
  v34 = v123;
  v35 = Sequence.compactMap<A>(_:)();
  v129 = _swiftEmptyDictionarySingleton;
  v36 = sub_1005DBD14();
  v37 = v34;
  v35, v38, v39, v40, v41, v42, v43, v44;
  if (v34)
  {
    return v37;
  }

  v101[1] = 0;
  v102 = v33;
  v120 = v32;
  v121 = v30;
  v122 = v29;
  v123 = v36;
  v119 = *(v36 + 16);
  if (!v119)
  {
    v110 = 0;
    v55 = v121;
    v54 = v122;
    v56 = v120;
LABEL_28:
    v123, v45, v46, v47, v48, v49, v50, v51;
    v128 = v103;
    __chkstk_darwin(v88, v89);
    v101[-4] = v54;
    v101[-3] = v55;
    v101[-2] = &v129;
    v90 = v102;
    WitnessTable = swift_getWitnessTable();
    v37 = sub_1005D22B0(sub_1005E0064, &v101[-6], v90, v56, &type metadata for Never, WitnessTable, &protocol witness table for Never, v92);
    v129, v93, v94, v95, v96, v97, v98, v99;
    sub_10003E114(v110, 0);
    return v37;
  }

  v110 = 0;
  v52 = 0;
  v118 = (v116 + 56);
  v105 = (v116 + 16);
  v106 = (v116 + 8);
  v53 = (v36 + 40);
  v108 = v7;
  v117 = v14;
  v114 = (v116 + 48);
  v107 = (v116 + 32);
  while (v52 < *v123->clientIdentity)
  {
    v57 = *v53;
    ObjectType = swift_getObjectType();
    v59 = *(v57 + 48);
    swift_unknownObjectRetain();
    v60 = v59(ObjectType, v57);
    if (v60)
    {
      v61 = v60;
      v62 = [v60 identifier];

      v116 = ObjectType;
      if (v62)
      {
        v63 = v115;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v64 = 0;
      }

      else
      {
        v64 = 1;
        v63 = v115;
      }

      v14 = v117;
      v66 = v124;
      v65 = v125;
      (*v118)(v63, v64, 1, v125);
      sub_100031B58(v63, v14, &unk_100939D90, "8\n\r");
      v67 = *v114;
      if ((*v114)(v14, 1, v65) != 1)
      {
        v113 = *v107;
        v113(v66, v14, v65);
        v68 = v108;
        (*(v57 + 8))(v116, v57);
        v69 = v125;
        if (v67(v68, 1, v125) == 1)
        {
          (*v106)(v124, v69);
          swift_unknownObjectRelease();
          sub_1000050A4(v68, &unk_100939D90, "8\n\r");
          v14 = v117;
LABEL_26:
          v55 = v121;
          v54 = v122;
          goto LABEL_6;
        }

        v70 = v111;
        v113(v111, v68, v69);
        v71 = *v105;
        (*v105)(v112, v70, v69);
        sub_10003E114(v110, 0);
        v72 = v129;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v128 = v72;
        v74 = v124;
        v76 = sub_100363F20(v124);
        v77 = *v72->clientIdentity;
        v78 = (v75 & 1) == 0;
        v79 = v77 + v78;
        if (__OFADD__(v77, v78))
        {
          goto LABEL_31;
        }

        v80 = v75;
        if (*&v72->clientIdentity[8] >= v79)
        {
          v83 = v109;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100374248();
            v83 = v109;
            v72 = v128;
          }

          v14 = v117;
          v129 = v72;
          if ((v80 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_10036C304(v79, isUniquelyReferenced_nonNull_native);
          v72 = v128;
          v81 = sub_100363F20(v74);
          if ((v80 & 1) != (v82 & 1))
          {
            goto LABEL_32;
          }

          v76 = v81;
          v14 = v117;
          v83 = v109;
          v129 = v72;
          if (v80)
          {
            goto LABEL_25;
          }

LABEL_24:
          v84 = v104;
          v71(v104, v124, v125);
          sub_1002CB9B0(v76, v84, _swiftEmptySetSingleton, v72);
          v83 = v109;
        }

LABEL_25:
        v85 = v83;
        sub_1003794C4(v83, v112);
        swift_unknownObjectRelease();
        v86 = *v106;
        v87 = v125;
        (*v106)(v85, v125);
        v86(v111, v87);
        v86(v124, v87);
        v110 = sub_1001424E8;
        goto LABEL_26;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      (*v118)(v14, 1, 1, v125);
    }

    v55 = v121;
    v54 = v122;
    sub_1000050A4(v14, &unk_100939D90, "8\n\r");
LABEL_6:
    v56 = v120;
    ++v52;
    v53 += 2;
    if (v119 == v52)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1005DB460@<X0>(uint64_t *a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = *a2;
  sub_1000F514C(&qword_10094EC60, &qword_1007B48A8);
  type metadata accessor for RDDeduplicationActivity.CrashCleanError(255, *(v5 + 80), *(v5 + 88), v6);
  swift_getWitnessTable();
  v7 = type metadata accessor for Result();
  return sub_1005DBA4C(sub_1005DFFF8, a2, v7, x8_0);
}

uint64_t sub_1005DB54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
  v5 = v4 - 8;
  __chkstk_darwin(v4, v6);
  v8 = (&v22 - v7);
  sub_100010364(a1, &v22 - v7, &qword_10094EC60, &qword_1007B48A8);
  v9 = v8[1];
  v10 = *(v5 + 56);
  v11 = *(v5 + 72);
  sub_1005DB674(*v8, v9, (v8 + v10), v8 + v11, a2);
  v9, v12, v13, v14, v15, v16, v17, v18;
  v19 = type metadata accessor for UUID();
  v20 = *(*(v19 - 8) + 8);
  v20(v8 + v11, v19);
  return (v20)(v8 + v10, v19);
}

uint64_t sub_1005DB674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _TtC7remindd19RDXPCStorePerformer *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a4;
  v45 = a3;
  v44 = a2;
  v51 = a5;
  v49 = *v5;
  v50 = sub_1000F5104(&qword_10094EC70, &qword_1007B48C0);
  __chkstk_darwin(v50, v8);
  v48 = &v44 - v9;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15, v16);
  v18 = &v44 - v17;
  v19 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
  __chkstk_darwin(v19, v20);
  v22 = (&v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v23, v24);
  v27 = (&v44 - v26);
  *v27 = a1;
  v27[1] = a2;
  v29 = v11[2];
  v29(&v44 + *(v28 + 48) - v26, v45, v10, v25);
  (v29)(v27 + *(v19 + 64), v46, v10);
  sub_100010364(v27, v22, &qword_10094EC60, &qword_1007B48A8);
  v30 = v22[1];
  v46 = *v22;
  v45 = v30;
  v31 = *(v19 + 64);
  v32 = v11[4];
  v32(v18, v22 + *(v19 + 48), v10);
  v32(v14, v22 + v31, v10);
  v60 = v47;
  v61 = v14;
  v62 = v18;
  v63 = v27;

  sub_1000F5104(&unk_1009399E0, &qword_100795D00);
  sub_1005D27A8(sub_1005E0000, v59, v48);
  v53 = *(v49 + 80);
  v54 = *(v49 + 88);
  v55 = v46;
  v33 = v45;
  v56 = v45;
  v57 = v18;
  v58 = v14;
  type metadata accessor for RDDeduplicationActivity.CrashCleanError(0, v53, v54, v34);
  swift_getWitnessTable();
  sub_1005DC81C(sub_1005E0024, v52, v50, v51);
  v33, v35, v36, v37, v38, v39, v40, v41;
  v42 = v11[1];
  v42(v14, v10);
  v42(v18, v10);
  return sub_1000050A4(v27, &qword_10094EC60, &qword_1007B48A8);
}

uint64_t sub_1005DBA4C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a5@<X8>)
{
  v8 = a3[2];
  v9 = *(v8 - 8);
  __chkstk_darwin(a1, a2);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12, v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a3[3] - 8) + 32))(a5, v16, a3[3]);
    type metadata accessor for Result();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v9 + 32))(v11, v16, v8);
    a1(v11);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_1005DBC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  sub_1000F514C(&qword_10094EC60, &qword_1007B48A8);
  type metadata accessor for RDDeduplicationActivity.CrashCleanError(255, a2, a3, v7);
  swift_getWitnessTable();
  v8 = type metadata accessor for Result();
  return a4(v8);
}

uint64_t sub_1005DBD14()
{
  v23 = *v0;
  v1 = sub_1000F5104(&qword_10094EC78, qword_1007B48C8);
  v2 = type metadata accessor for UUID();
  v3 = sub_10000CB48(&qword_10094EC80, &qword_10094EC78, qword_1007B48C8, &protocol conformance descriptor for [A]);
  v5 = sub_1005D22B0(sub_1005DC26C, 0, v1, v2, &type metadata for Never, v3, &protocol witness table for Never, v4);
  sub_10000CB48(&qword_10094EC88, &qword_10094EC78, qword_1007B48C8, &protocol conformance descriptor for [A]);
  sub_1005E0108(&qword_10093B410, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v6 = Sequence.mapToSet<A>(_:)();
  v7 = (*(*(v23 + 88) + 72))(v0[2], v0[3], v5, v6);
  v5, v8, v9, v10, v11, v12, v13, v14;
  v6, v15, v16, v17, v18, v19, v20, v21;
  return v7;
}

uint64_t sub_1005DBF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v13 = a3;
  v14 = a4;
  v15 = a2;
  v16 = a1;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = sub_1005E0088;
  v11[5] = &v12;
  sub_1000F514C(&qword_10094EC60, &qword_1007B48A8);
  type metadata accessor for RDDeduplicationActivity.CrashCleanError(255, a3, a4, v8);
  swift_getWitnessTable();
  v9 = type metadata accessor for Result();
  return sub_1005DBA4C(sub_1005E0094, v11, v9, a5);
}

void sub_1005DC008(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v13 = *a5;
  if (*(*a5 + 16) && (v18 = sub_100363F20(a3), (v19 & 1) != 0) && (v20 = *(*(v13 + 56) + 8 * v18), , v21 = sub_100240CD4(a4, v20), v20, v22, v23, v24, v25, v26, v27, v28, (v21 & 1) != 0))
  {
    v29 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
    v36 = *(v29 + 48);
    v37 = *(v29 + 64);
    *a9 = a1;
    *(a9 + 1) = a2;
    v30 = type metadata accessor for UUID();
    v31 = *(*(v30 - 8) + 16);
    v31(&a9[v36], a3, v30);
    v31(&a9[v37], a4, v30);
    type metadata accessor for RDDeduplicationActivity.CrashCleanError(0, a7, a8, v32);
    swift_storeEnumTagMultiPayload();
    swift_getWitnessTable();
    type metadata accessor for Result();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1000F514C(&qword_10094EC60, &qword_1007B48A8);
    type metadata accessor for RDDeduplicationActivity.CrashCleanError(255, a7, a8, v33);
    swift_getWitnessTable();
    v34 = type metadata accessor for Result();
    v35 = *(*(v34 - 8) + 16);

    v35(a9, a6, v34);
  }
}

uint64_t sub_1005DC26C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
  v5 = v4 - 8;
  __chkstk_darwin(v4, v6);
  v8 = (v21 - v7);
  sub_100010364(a1, v21 - v7, &qword_10094EC60, &qword_1007B48A8);
  v8[1], v9, v10, v11, v12, v13, v14, v15;
  v16 = *(v5 + 56);
  v17 = *(v5 + 72);
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  (*(v19 + 32))(a2, v8 + v17, v18);
  return (*(v19 + 8))(v8 + v16, v18);
}

uint64_t sub_1005DC39C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000F5104(&qword_10094EC60, &qword_1007B48A8);
  v5 = v4 - 8;
  __chkstk_darwin(v4, v6);
  v8 = (v21 - v7);
  sub_100010364(a1, v21 - v7, &qword_10094EC60, &qword_1007B48A8);
  v8[1], v9, v10, v11, v12, v13, v14, v15;
  v16 = *(v5 + 56);
  v17 = *(v5 + 72);
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  (*(v19 + 32))(a2, v8 + v16, v18);
  return (*(v19 + 8))(v8 + v17, v18);
}

uint64_t sub_1005DC4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X4>, uint64_t a4@<X8>)
{
  v24 = a2;
  v25 = a3;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v13 = UUID._bridgeToObjectiveC()().super.isa;
  v14 = [v11 URLForAttachmentDirectory:isa accountID:v13];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v26 = 0;
  LOBYTE(v14) = [v15 removeItemAtURL:v17 error:&v26];

  if (v14)
  {
    v19 = *(v7 + 8);
    v20 = v26;
    v19(v10, v6);
    return sub_100010364(v24, a4, &qword_10094EC60, &qword_1007B48A8);
  }

  else
  {
    v22 = v26;
    v23 = _convertNSErrorToError(_:)();

    swift_willThrow();
    result = (*(v7 + 8))(v10, v6);
    *v25 = v23;
  }

  return result;
}

uint64_t sub_1005DC704@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v12 = *a1;
  v13 = sub_1000F5104(&qword_10094EC68, &unk_1007B48B0);
  v14 = v13[12];
  v15 = v13[16];
  v16 = v13[20];
  *a8 = a2;
  *(a8 + 1) = a3;
  v17 = type metadata accessor for UUID();
  v18 = *(*(v17 - 8) + 16);
  v18(&a8[v14], a4, v17);
  v18(&a8[v15], a5, v17);
  *&a8[v16] = v12;
  type metadata accessor for RDDeduplicationActivity.CrashCleanError(0, a6, a7, v19);
  swift_storeEnumTagMultiPayload();

  return swift_errorRetain();
}

uint64_t sub_1005DC81C@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  v10 = *(a3 + 24);
  v11 = *(v10 - 8);
  __chkstk_darwin(a1, a2);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v6, v10);
    a1(v13);
    (*(v11 + 8))(v13, v10);
    type metadata accessor for Result();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(*(*(a3 + 16) - 8) + 32))(a6, v6, *(a3 + 16));
    type metadata accessor for Result();

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1005DC9F0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;

  sub_10000607C((v8 + 40));

  sub_10000607C((v8 + 96));

  *(v8 + 152), v9, v10, v11, v12, v13, v14, v15;
  return v8;
}

uint64_t sub_1005DCA40(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  sub_1005DC9F0(a1, a2, a3, a4, a5, a6, a7, a8);

  return swift_deallocClassInstance();
}

uint64_t sub_1005DCA94@<X0>(void *a1@<X8>, uint64_t a2@<X3>)
{
  v4 = *(v2 + qword_10094E1D0);
  a1[3] = type metadata accessor for RDDeduplicationActivity.Executable(0, *((swift_isaMask & *v2) + 0x50), *((swift_isaMask & *v2) + 0x58), a2);
  a1[4] = &off_1008F9E70;
  a1[5] = &off_1008F9E80;
  *a1 = v4;
}

uint64_t sub_1005DCB38()
{
  v1 = v0;
  v2 = (*(v0 + qword_10094E1C8) + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager);
  v3 = v2[4];
  sub_10000F61C(v2, v2[3]);
  v4 = sub_10048C990();
  v6 = v5;
  v7 = (*(v3 + 8))(v4);
  v6, v8, v9, v10, v11, v12, v13, v14;
  v15 = (v1 + qword_10094E1B8);
  v16 = *(v1 + qword_10094E1B8 + 24);
  v17 = v15[4];
  sub_10000F61C(v15, v16);
  v18 = *(v17 + 24);
  if (v7)
  {
    return (*(v18 + 16))(v16);
  }

  else
  {
    return (*(v18 + 8))(v16);
  }
}

uint64_t sub_1005DCC1C()
{
  v1 = v0;
  v2 = &v0[qword_10094E1B8];
  v4 = *&v0[qword_10094E1B8 + 24];
  v3 = *&v0[qword_10094E1B8 + 32];
  sub_10000F61C(v2, v4);
  if (!(*(*(v3 + 8) + 8))(v4))
  {
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_100006654(v36, qword_10094E160);
    v37 = v1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_12;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v50 = v23;
    *v22 = 136446210;
    v38 = sub_1005DCF0C();
    v40 = v39;
    v41 = sub_10000668C(v38, v39, &v50);
    v40, v42, v43, v44, v45, v46, v47, v48;
    *(v22 + 4) = v41;
    v35 = "[%{public}s] configuration validation fail - cannot execute because configurations.approximatePerRunDeleteLimit is 0";
    goto LABEL_11;
  }

  v5 = (*&v1[qword_10094E1C8] + OBJC_IVAR____TtC7remindd22RDSentinelFileLocation_fileManager);
  v6 = v5[4];
  sub_10000F61C(v5, v5[3]);
  v7 = sub_10048C990();
  v9 = v8;
  v10 = (*(v6 + 8))(v7);
  v9, v11, v12, v13, v14, v15, v16, v17;
  if (v10)
  {
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100006654(v18, qword_10094E160);
    v19 = v1;
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_12;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v50 = v23;
    *v22 = 136446210;
    v24 = sub_1005DCF0C();
    v26 = v25;
    v27 = sub_10000668C(v24, v25, &v50);
    v26, v28, v29, v30, v31, v32, v33, v34;
    *(v22 + 4) = v27;
    v35 = "[%{public}s] skipping execute because sentinel file exists";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v20, v21, v35, v22, 0xCu);
    sub_10000607C(v23);

LABEL_12:

    return 0;
  }

  return 1;
}

uint64_t sub_1005DCF0C()
{
  swift_getObjectType();
  swift_getMetatypeMetadata();
  return String.init<A>(reflecting:)();
}

uint64_t sub_1005DCF6C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v5 = type metadata accessor for RDExecutionIntervalThrottlingPolicy();
  v6 = v1;
  sub_1005DCB38();
  v8 = v7;
  v12 = v6;
  v10 = type metadata accessor for RDDeduplicationActivity(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v9);
  result = sub_10051F8B4(&v12, v5, v10, &off_1008F9EC0, v8);
  a1[3] = v5;
  a1[4] = &off_1008F5B28;
  *a1 = result;
  return result;
}

uint64_t sub_1005DD058@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_100010364(v4 + v8, a4, a2, a3);
}

uint64_t sub_1005DD0C4()
{
  _StringGuts.grow(_:)(23);
  0xE000000000000000, v0, v1, v2, v3, v4, v5, v6;
  v7._countAndFlagsBits = sub_1005DCF0C();
  object = v7._object;
  String.append(_:)(v7);
  object, v9, v10, v11, v12, v13, v14, v15;
  v16._countAndFlagsBits = 0x746973796261622ELL;
  v16._object = 0xEB00000000726574;
  String.append(_:)(v16);
  return 0x6C7070612E6D6F63;
}

id sub_1005DD168(void *a1)
{
  v1 = a1;
  sub_1005DD0C4();
  v3 = v2;

  if (v3)
  {
    v4 = String._bridgeToObjectiveC()();
    v3, v5, v6, v7, v8, v9, v10, v11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

double sub_1005DD1E0()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_10000F61C(v0, v1);
  v3 = (*(v2 + 8))(v1, v2);
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

uint64_t sub_1005DD25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  sub_10000A87C(a1, v30);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDDeduplicationActivity(0, *(v5 + 80), *(v5 + 88), v6);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v7 = v2[5];
    v8 = v2[6];
    sub_10000F61C(v2 + 2, v7);
    (*(v8 + 8))(v7, v8);
    swift_endAccess();
    return sub_10000607C(v30);
  }

  else
  {
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_10094E160);
    sub_10000A87C(a1, v29);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136446210;
      sub_10000A87C(v29, v27);
      v15 = String.init<A>(describing:)();
      v17 = v16;
      sub_10000607C(v29);
      v18 = sub_10000668C(v15, v17, &v28);
      v17, v19, v20, v21, v22, v23, v24, v25;
      *(v13 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v11, v12, "[RDDeduplicationActivity.ExecutionDateStorage] lastExecutedDate(for:) must work with RDDeduplicationActivity only {executable: %{public}s}", v13, 0xCu);
      sub_10000607C(v14);
    }

    else
    {

      sub_10000607C(v29);
    }

    sub_10000607C(v30);
    v26 = type metadata accessor for Date();
    return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
  }
}

uint64_t sub_1005DD508(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v6 - 8, v7);
  v9 = v32 - v8;
  sub_10000A87C(a1, v35);
  sub_1000F5104(&qword_10093D900, &qword_10079B610);
  type metadata accessor for RDDeduplicationActivity(0, *(v5 + 80), *(v5 + 88), v10);
  if (swift_dynamicCast())
  {

    v11 = type metadata accessor for Date();
    v12 = *(v11 - 8);
    (*(v12 + 16))(v9, a2, v11);
    (*(v12 + 56))(v9, 0, 1, v11);
    swift_beginAccess();
    v13 = v2[5];
    v14 = v2[6];
    sub_10000C9DC((v2 + 2), v13);
    (*(v14 + 16))(v9, v13, v14);
    swift_endAccess();
  }

  else
  {
    if (qword_1009366A0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_10094E160);
    sub_10000A87C(a1, v34);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v33 = v19;
      *v18 = 136446210;
      sub_10000A87C(v34, v32);
      v20 = String.init<A>(describing:)();
      v22 = v21;
      sub_10000607C(v34);
      v23 = sub_10000668C(v20, v22, &v33);
      v22, v24, v25, v26, v27, v28, v29, v30;
      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v16, v17, "[RDDeduplicationActivity.ExecutionDateStorage] updateLastExecutedDate(for:) must work with RDDeduplicationActivity only {executable: %{public}s}", v18, 0xCu);
      sub_10000607C(v19);
    }

    else
    {

      sub_10000607C(v34);
    }
  }

  return sub_10000607C(v35);
}

id sub_1005DD8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RDDeduplicationActivity(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_1005DD938(uint64_t a1)
{
  sub_1000050A4(a1 + qword_10094E198, &unk_10093E4F0, &qword_1007A9640);
  sub_10000607C((a1 + qword_10094E1A0));
  sub_1000050A4(a1 + qword_10094E1A8, &unk_10093D8F0, &unk_10079B600);

  sub_10000607C((a1 + qword_10094E1B8));
  sub_10000607C((a1 + qword_10094E1C0));
}

uint64_t sub_1005DDB10@<X0>(SEL *a1@<X2>, void (*a2)(void)@<X3>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  v8 = [v4 *a1];
  if (v8)
  {
    v9 = v8;
    a2();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4, v10, 1, v11);
}

void sub_1005DDBD4(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = v4;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(a1, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(a1, v8);
    v11 = isa;
  }

  v13 = v11;
  [v6 *a4];
}

uint64_t sub_1005DDCE0(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v6;
}

void sub_1005DDD44(_TtC7remindd19RDXPCStorePerformer *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
    a1, v7, v8, v9, v10, v11, v12, v13;
  }

  else
  {
    isa = 0;
  }

  [v4 *a4];
}

id sub_1005DDDE0()
{
  v1 = [*v0 imageDeduplicationRateReduceFactor];

  return v1;
}

id sub_1005DDE48()
{
  v1 = [*v0 savedImageDeduplicationRateReduceFactor];

  return v1;
}

uint64_t sub_1005DDFBC(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_1005DE0D0(uint64_t a1)
{
  sub_100140DD4(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_1005DE2C4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_10000F61C((v1 + 16), v2);
  return (*(*(v3 + 24) + 8))(v2);
}

uint64_t sub_1005DE314()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_10000F61C((v1 + 16), v2);
  return (*(*(v3 + 24) + 16))(v2);
}

uint64_t sub_1005DE364()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_10000F61C((v1 + 16), v2);
  return (*(*(v3 + 16) + 8))(v2);
}

uint64_t sub_1005DE3B4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_10000F61C((v1 + 16), v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t sub_1005DE404()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1005DE43C()
{
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_1005DE490(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = *(*v1 + 24);
  ObjectType = swift_getObjectType();
  sub_100010364(a1, v6, &unk_100938850, qword_100795AE0);
  (*(v7 + 16))(v6, ObjectType, v7);
  return sub_1000050A4(a1, &unk_100938850, qword_100795AE0);
}

uint64_t sub_1005DE578()
{
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(ObjectType, v1);
}

uint64_t sub_1005DE5BC(uint64_t a1)
{
  v3 = *(*v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 40))(a1, ObjectType, v3);
}

id sub_1005DE6C8(void *a1)
{
  v2.receiver = a1;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_1005DE730()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_10000F61C((v1 + 16), v2);
  return (*(*(v3 + 24) + 8))(v2);
}

uint64_t sub_1005DE780()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_10000F61C((v1 + 16), v2);
  return (*(*(v3 + 24) + 16))(v2);
}

uint64_t sub_1005DE7D0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_10000F61C((v1 + 16), v2);
  return (*(*(v3 + 16) + 8))(v2);
}

uint64_t sub_1005DE820()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_10000F61C((v1 + 16), v2);
  return (*(*(v3 + 8) + 8))(v2);
}

uint64_t sub_1005DE870()
{
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 8))(ObjectType, v1);
}

uint64_t sub_1005DE8C4(uint64_t a1)
{
  v3 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  __chkstk_darwin(v3 - 8, v4);
  v6 = &v10 - v5;
  v7 = *(*v1 + 24);
  ObjectType = swift_getObjectType();
  sub_100010364(a1, v6, &unk_100938850, qword_100795AE0);
  (*(v7 + 16))(v6, ObjectType, v7);
  return sub_1000050A4(a1, &unk_100938850, qword_100795AE0);
}

uint64_t sub_1005DE9AC()
{
  v1 = *(*v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 32))(ObjectType, v1);
}

uint64_t sub_1005DE9F0(uint64_t a1)
{
  v3 = *(*v1 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 40))(a1, ObjectType, v3);
}

uint64_t sub_1005DEAF4(uint64_t a1)
{
  v8 = &unk_1007B46D8;
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v9 = &v7;
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      swift_getTupleTypeLayout3();
      v10 = &v6;
      swift_getTupleTypeLayout3();
      v11 = &v5;
      swift_getTupleTypeLayout();
      v12 = &v4;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *sub_1005DEC5C(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *a1 = *a2;
    a1 = (v14 + ((v5 + 16) & ~v5));
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v29 = type metadata accessor for UUID();
        (*(*(v29 - 8) + 16))(a1, a2, v29);
        v30 = *(sub_1000F5104(&qword_10094EB68, &qword_1007B4698) + 48);
        v31 = *&a2[v30];
        *&a1[v30] = v31;
        v32 = v31;
      }

      else
      {
        *a1 = *a2;
        v15 = *(a2 + 2);
        *(a1 + 2) = v15;
        swift_unknownObjectRetain();
        v16 = v15;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 16))(a1, a2, v17);
      v18 = sub_1000F5104(&qword_10094EB70, &qword_1007B46A0);
      v19 = *(v18 + 48);
      v20 = type metadata accessor for UUID();
      (*(*(v20 - 8) + 16))(&a1[v19], &a2[v19], v20);
      v21 = *(v18 + 64);
      v22 = *&a2[v21];
      *&a1[v21] = v22;
      v23 = v22;
    }

    else
    {
      v7 = *a2;
      if (EnumCaseMultiPayload == 3)
      {
        swift_errorRetain();
        *a1 = v7;
        v8 = sub_1000F5104(&qword_10094EB78, &qword_1007B46A8);
        v9 = *(v8 + 48);
        v10 = type metadata accessor for UUID();
        (*(*(v10 - 8) + 16))(&a1[v9], &a2[v9], v10);
        v11 = *(v8 + 64);
      }

      else
      {
        swift_errorRetain();
        *a1 = v7;
        v24 = sub_1000F5104(qword_10094EB80, &unk_1007B46B0);
        v25 = v24[12];
        v26 = type metadata accessor for URL();
        (*(*(v26 - 8) + 16))(&a1[v25], &a2[v25], v26);
        v27 = v24[16];
        v28 = type metadata accessor for UUID();
        (*(*(v28 - 8) + 16))(&a1[v27], &a2[v27], v28);
        v11 = v24[20];
      }

      v12 = *&a2[v11];
      *&a1[v11] = v12;
      v13 = v12;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_1005DEFAC(char *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        return;
      }

      v10 = type metadata accessor for UUID();
      (*(*(v10 - 8) + 8))(a1, v10);
      v9 = *(sub_1000F5104(&qword_10094EB68, &qword_1007B4698) + 48);
    }

    else
    {
      swift_unknownObjectRelease();
      v9 = 16;
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v11 = type metadata accessor for URL();
        (*(*(v11 - 8) + 8))(a1, v11);
        v12 = &qword_10094EB70;
        v13 = &qword_1007B46A0;
        break;
      case 3:

        v12 = &qword_10094EB78;
        v13 = &qword_1007B46A8;
        break;
      case 4:

        v4 = sub_1000F5104(qword_10094EB80, &unk_1007B46B0);
        v5 = v4[12];
        v6 = type metadata accessor for URL();
        (*(*(v6 - 8) + 8))(&a1[v5], v6);
        v7 = v4[16];
        v8 = type metadata accessor for UUID();
        (*(*(v8 - 8) + 8))(&a1[v7], v8);
        v9 = v4[20];
        goto LABEL_13;
      default:
        return;
    }

    v14 = sub_1000F5104(v12, v13);
    v15 = *(v14 + 48);
    v16 = type metadata accessor for UUID();
    (*(*(v16 - 8) + 8))(&a1[v15], v16);
    v9 = *(v14 + 64);
  }

LABEL_13:
  v17 = *&a1[v9];
}

uint64_t sub_1005DF1D8(uint64_t a1, __int128 *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v27 = type metadata accessor for UUID();
      (*(*(v27 - 8) + 16))(a1, a2, v27);
      v28 = *(sub_1000F5104(&qword_10094EB68, &qword_1007B4698) + 48);
      v29 = *(a2 + v28);
      *(a1 + v28) = v29;
      v30 = v29;
    }

    else
    {
      *a1 = *a2;
      v13 = *(a2 + 2);
      *(a1 + 16) = v13;
      swift_unknownObjectRetain();
      v14 = v13;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 16))(a1, a2, v15);
    v16 = sub_1000F5104(&qword_10094EB70, &qword_1007B46A0);
    v17 = *(v16 + 48);
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 16))(a1 + v17, a2 + v17, v18);
    v19 = *(v16 + 64);
    v20 = *(a2 + v19);
    *(a1 + v19) = v20;
    v21 = v20;
  }

  else
  {
    v6 = *a2;
    if (EnumCaseMultiPayload == 3)
    {
      swift_errorRetain();
      *a1 = v6;
      v7 = sub_1000F5104(&qword_10094EB78, &qword_1007B46A8);
      v8 = *(v7 + 48);
      v9 = type metadata accessor for UUID();
      (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
      v10 = *(v7 + 64);
    }

    else
    {
      swift_errorRetain();
      *a1 = v6;
      v22 = sub_1000F5104(qword_10094EB80, &unk_1007B46B0);
      v23 = v22[12];
      v24 = type metadata accessor for URL();
      (*(*(v24 - 8) + 16))(a1 + v23, a2 + v23, v24);
      v25 = v22[16];
      v26 = type metadata accessor for UUID();
      (*(*(v26 - 8) + 16))(a1 + v25, a2 + v25, v26);
      v10 = v22[20];
    }

    v11 = *(a2 + v10);
    *(a1 + v10) = v11;
    v12 = v11;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_1005DF4DC(uint64_t a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    (*(*(a3 - 8) + 8))(a1, a3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v27 = type metadata accessor for UUID();
        (*(*(v27 - 8) + 16))(a1, a2, v27);
        v28 = *(sub_1000F5104(&qword_10094EB68, &qword_1007B4698) + 48);
        v29 = *(a2 + v28);
        *(a1 + v28) = v29;
        v30 = v29;
      }

      else
      {
        *a1 = *a2;
        v13 = *(a2 + 2);
        *(a1 + 16) = v13;
        swift_unknownObjectRetain();
        v14 = v13;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 16))(a1, a2, v15);
      v16 = sub_1000F5104(&qword_10094EB70, &qword_1007B46A0);
      v17 = *(v16 + 48);
      v18 = type metadata accessor for UUID();
      (*(*(v18 - 8) + 16))(a1 + v17, a2 + v17, v18);
      v19 = *(v16 + 64);
      v20 = *(a2 + v19);
      *(a1 + v19) = v20;
      v21 = v20;
    }

    else
    {
      v6 = *a2;
      if (EnumCaseMultiPayload == 3)
      {
        swift_errorRetain();
        *a1 = v6;
        v7 = sub_1000F5104(&qword_10094EB78, &qword_1007B46A8);
        v8 = *(v7 + 48);
        v9 = type metadata accessor for UUID();
        (*(*(v9 - 8) + 16))(a1 + v8, a2 + v8, v9);
        v10 = *(v7 + 64);
      }

      else
      {
        swift_errorRetain();
        *a1 = v6;
        v22 = sub_1000F5104(qword_10094EB80, &unk_1007B46B0);
        v23 = v22[12];
        v24 = type metadata accessor for URL();
        (*(*(v24 - 8) + 16))(a1 + v23, a2 + v23, v24);
        v25 = v22[16];
        v26 = type metadata accessor for UUID();
        (*(*(v26 - 8) + 16))(a1 + v25, a2 + v25, v26);
        v10 = v22[20];
      }

      v11 = *(a2 + v10);
      *(a1 + v10) = v11;
      v12 = v11;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_1005DF818(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      *a1 = *a2;
      v20 = sub_1000F5104(&qword_10094EB78, &qword_1007B46A8);
      v21 = *(v20 + 48);
      v22 = type metadata accessor for UUID();
      (*(*(v22 - 8) + 32))(&a1[v21], &a2[v21], v22);
      *&a1[*(v20 + 64)] = *&a2[*(v20 + 64)];
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 4)
    {
      *a1 = *a2;
      v11 = sub_1000F5104(qword_10094EB80, &unk_1007B46B0);
      v12 = v11[12];
      v13 = type metadata accessor for URL();
      (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
      v14 = v11[16];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(&a1[v14], &a2[v14], v15);
      *&a1[v11[20]] = *&a2[v11[20]];
      goto LABEL_13;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = type metadata accessor for UUID();
      (*(*(v18 - 8) + 32))(a1, a2, v18);
      v19 = sub_1000F5104(&qword_10094EB68, &qword_1007B4698);
      *&a1[*(v19 + 48)] = *&a2[*(v19 + 48)];
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = sub_1000F5104(&qword_10094EB70, &qword_1007B46A0);
      v9 = *(v8 + 48);
      v10 = type metadata accessor for UUID();
      (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
      *&a1[*(v8 + 64)] = *&a2[*(v8 + 64)];
LABEL_13:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v16 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v16);
}

char *sub_1005DFB1C(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 - 8);
  (*(v5 + 8))(a1, a3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      *a1 = *a2;
      v20 = sub_1000F5104(&qword_10094EB78, &qword_1007B46A8);
      v21 = *(v20 + 48);
      v22 = type metadata accessor for UUID();
      (*(*(v22 - 8) + 32))(&a1[v21], &a2[v21], v22);
      *&a1[*(v20 + 64)] = *&a2[*(v20 + 64)];
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 4)
    {
      *a1 = *a2;
      v11 = sub_1000F5104(qword_10094EB80, &unk_1007B46B0);
      v12 = v11[12];
      v13 = type metadata accessor for URL();
      (*(*(v13 - 8) + 32))(&a1[v12], &a2[v12], v13);
      v14 = v11[16];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(&a1[v14], &a2[v14], v15);
      *&a1[v11[20]] = *&a2[v11[20]];
      goto LABEL_14;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = type metadata accessor for UUID();
      (*(*(v18 - 8) + 32))(a1, a2, v18);
      v19 = sub_1000F5104(&qword_10094EB68, &qword_1007B4698);
      *&a1[*(v19 + 48)] = *&a2[*(v19 + 48)];
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v7 = type metadata accessor for URL();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = sub_1000F5104(&qword_10094EB70, &qword_1007B46A0);
      v9 = *(v8 + 48);
      v10 = type metadata accessor for UUID();
      (*(*(v10 - 8) + 32))(&a1[v9], &a2[v9], v10);
      *&a1[*(v8 + 64)] = *&a2[*(v8 + 64)];
LABEL_14:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  v16 = *(v5 + 64);

  return memcpy(a1, a2, v16);
}