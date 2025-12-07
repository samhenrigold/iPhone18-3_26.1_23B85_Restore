uint64_t sub_1B6996750(uint64_t a1)
{
  v3 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1B6AB90F0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v1 + 48);
  v11 = *&v10[OBJC_IVAR___AAAccessQueue_queue];
  *v9 = v11;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8020], v6);
  v12 = v11;
  LOBYTE(v11) = sub_1B6AB9110();
  result = (*(v7 + 8))(v9, v6);
  if (v11)
  {
    v14 = sub_1B6980478(*(v1 + 16) + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, v5, type metadata accessor for DiagnosticsConsentProvider);
    MEMORY[0x1EEE9AC00](v14);
    *&v15[-16] = v1;
    *&v15[-8] = a1;
    sub_1B6995F94(v10, sub_1B6994B60, &v15[-32], v15);
    return sub_1B6A0BDA4(v5, type metadata accessor for DiagnosticsConsentProvider);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B699696C(void *a1)
{
  v2 = v1;
  v4 = sub_1B6AB8E40();
  v107 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v90 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC(0);
  v98 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B699332C(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v91 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v105 = (&v90 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v90 - v14;
  v15 = type metadata accessor for DiagnosticsConsentProvider(0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v110 = &v90 - v19;
  v20 = sub_1B6AB90F0();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = &unk_1EB95B000;
  v96 = v2[6];
  v94 = OBJC_IVAR___AAAccessQueue_queue;
  v25 = *&v96[OBJC_IVAR___AAAccessQueue_queue];
  *v23 = v25;
  v26 = *(v21 + 104);
  v101 = *MEMORY[0x1E69E8020];
  v102 = v21 + 104;
  v100 = v26;
  v26(v23);
  v27 = v25;
  LOBYTE(v25) = sub_1B6AB9110();
  v29 = *(v21 + 8);
  v28 = v21 + 8;
  v103 = v28;
  v104 = v20;
  v99 = v29;
  v29(v23, v20);
  if ((v25 & 1) == 0)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_17;
  }

  v108 = v8;
  v93 = v18;
  v30 = a1[2];
  v31 = a1[3];
  v115 = MEMORY[0x1E69E6158];
  *&v114 = v30;
  *(&v114 + 1) = v31;
  sub_1B69979CC(&v114, v113);

  v32 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v112 = v32;
  sub_1B69A18C4(v113, 0x496E6F6973736573, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  v116 = v112;
  v34 = a1[4];
  v35 = a1[5];
  v109 = a1;
  v111 = v2;
  if (v35)
  {
    if (v35 == 1)
    {
      v36 = 0xE900000000000079;
      v37 = 0x7274656D656C6574;
    }

    else if (v35 == 2)
    {
      v36 = 0xE800000000000000;
      v37 = 0x656D69746C616572;
    }

    else
    {
      v37 = v34;
      v36 = v35;
    }
  }

  else
  {
    v36 = 0xEA00000000007374;
    v37 = 0x6E65764572657375;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v39 = Strong;
    v40 = *(*(Strong + 24) + OBJC_IVAR___AAAccessQueue_queue);
    *v23 = v40;
    v41 = v104;
    v100(v23, v101, v104);
    sub_1B6992E2C(v34, v35);
    v42 = v40;
    LOBYTE(v40) = sub_1B6AB9110();
    v99(v23, v41);
    if ((v40 & 1) == 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v44 = *(v39 + 56);
    v43 = *(v39 + 64);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B6992E2C(v34, v35);
    v44 = 0;
    v43 = 0;
  }

  v45 = sub_1B69C1704(v37, v36, v44, v43);
  v47 = v46;

  if (v47)
  {
    v115 = MEMORY[0x1E69E6158];
    *&v114 = v45;
    *(&v114 + 1) = v47;
    sub_1B69979CC(&v114, v113);
    v48 = v116;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v112 = v48;
    sub_1B69A18C4(v113, 0x6973736553707061, 0xEC00000044496E6FLL, v49);
    v116 = v112;
  }

  else
  {
    sub_1B69A3110(0x6973736553707061, 0xEC00000044496E6FLL, &v114);
    sub_1B6A0A674(&v114, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8);
  }

  v24 = v110;
  v2 = v107;
  a1 = v105;
  sub_1B6980478(v111[2] + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, v110, type metadata accessor for DiagnosticsConsentProvider);
  v50 = qword_1EDBC9F60;

  v28 = v106;
  if (v50 != -1)
  {
    goto LABEL_32;
  }

LABEL_17:
  v92 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v95 = v23;
  v97 = v114;
  if (v114)
  {
    v51 = v2[2];
    v51(v28, (v114 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider), v4);
    v52 = v2[7];
    v52(v28, 0, 1, v4);
  }

  else
  {
    v52 = v2[7];
    v52(v28, 1, 1, v4);
    v51 = v2[2];
  }

  v51(a1, v24, v4);
  v52(a1, 0, 1, v4);
  v53 = *(v98 + 48);
  v54 = MEMORY[0x1E69695A8];
  v55 = MEMORY[0x1E69E6720];
  v56 = v4;
  v57 = a1;
  v58 = v108;
  sub_1B6A0A858(v28, v108, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
  v59 = v55;
  v60 = v58;
  sub_1B6A0A858(v57, v58 + v53, &qword_1EDBCAF50, v54, v59, sub_1B699332C);
  v61 = v2[6];
  if (v61(v60, 1, v56) == 1)
  {
    v62 = MEMORY[0x1E69695A8];
    v63 = MEMORY[0x1E69E6720];
    sub_1B6A0A8CC(v57, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
    v64 = v108;
    sub_1B6A0A8CC(v28, &qword_1EDBCAF50, v62, v63, sub_1B699332C);
    v65 = v61(v64 + v53, 1, v56);
    v66 = v109;
    v67 = v111;
    if (v65 == 1)
    {
      sub_1B6A0A8CC(v64, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
      v68 = v110;
LABEL_29:
      sub_1B69A22AC(v67, v66, &v116);
      goto LABEL_30;
    }
  }

  else
  {
    v69 = v91;
    sub_1B6A0A858(v60, v91, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
    v70 = v56;
    if (v61(v60 + v53, 1, v56) != 1)
    {
      v82 = v107;
      v83 = v90;
      (*(v107 + 32))(v90, v60 + v53, v56);
      sub_1B69822F4(&qword_1EDBCA470, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v84 = sub_1B6AB92A0();
      v85 = *(v82 + 8);
      v85(v83, v70);
      v86 = v60;
      v87 = MEMORY[0x1E69695A8];
      v88 = MEMORY[0x1E69E6720];
      sub_1B6A0A8CC(v105, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
      sub_1B6A0A8CC(v106, &qword_1EDBCAF50, v87, v88, sub_1B699332C);
      v85(v69, v70);
      sub_1B6A0A8CC(v86, &qword_1EDBCAF50, v87, v88, sub_1B699332C);
      v66 = v109;
      v68 = v110;
      v67 = v111;
      v74 = v96;
      v75 = v95;
      if (v84)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    v71 = v69;
    v72 = MEMORY[0x1E69695A8];
    v73 = MEMORY[0x1E69E6720];
    sub_1B6A0A8CC(v105, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
    v64 = v108;
    sub_1B6A0A8CC(v106, &qword_1EDBCAF50, v72, v73, sub_1B699332C);
    (*(v107 + 8))(v71, v56);
    v66 = v109;
    v67 = v111;
  }

  sub_1B6A0BDA4(v64, sub_1B6992BDC);
  v68 = v110;
  v74 = v96;
  v75 = v95;
LABEL_26:
  v76 = v93;
  sub_1B6980478(v68, v93, type metadata accessor for DiagnosticsConsentProvider);
  type metadata accessor for LazyDiagnosticStatus(0);
  v77 = swift_allocObject();
  *(v77 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v78 = *&v74[v94];
  *v75 = v78;
  v79 = v104;
  v100(v75, v101, v104);
  v80 = v78;
  LOBYTE(v78) = sub_1B6AB9110();
  v99(v75, v79);
  if (v78)
  {
    sub_1B6980F64(v76, v77 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider);
    *(v77 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v74;
    *&v114 = v77;
    sub_1B699332C(0, qword_1EDBC9F98, type metadata accessor for LazyDiagnosticStatus, MEMORY[0x1E69E6720]);
    v81 = v74;

    swift_task_localValuePush();
    sub_1B69A22AC(v67, v66, &v116);
    swift_task_localValuePop();

LABEL_30:

    sub_1B6A0BDA4(v68, type metadata accessor for DiagnosticsConsentProvider);
    return v116;
  }

LABEL_34:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B69976F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B69881C8(0, &qword_1EDBCBB10, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6EC8]);
  v33 = v4;
  result = sub_1B6AB9E80();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1B69979CC(v24, v34);
      }

      else
      {
        sub_1B698FE74(v24, v34);
      }

      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1B69979CC(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

_OWORD *sub_1B69979CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B69979DC(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1B6997AD4(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1B6997AD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EDBC7FF0, &type metadata for Action.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B6997C0C(char *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v60 = a4;
  v62 = a5;
  v63 = a2;
  v59 = a3;
  v57 = a1;
  v5 = sub_1B6AB90F0();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v54 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6AB8E40();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6987C8C(0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v49 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v49 - v23;
  if (qword_1EDBC9F60 != -1)
  {
    swift_once();
  }

  v61 = v15;
  v51 = v19;
  v52 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v58 = v64;
  if (v64)
  {
    v25 = *(v10 + 16);
    v25(v24, v64 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v9);
    v26 = *(v10 + 56);
    v26(v24, 0, 1, v9);
  }

  else
  {
    v26 = *(v10 + 56);
    v26(v24, 1, 1, v9);
    v25 = *(v10 + 16);
  }

  v25(v22, v63, v9);
  v26(v22, 0, 1, v9);
  v27 = *(v13 + 48);
  v28 = v61;
  sub_1B699A394(v24, v61, sub_1B6987C8C);
  sub_1B699A394(v22, v28 + v27, sub_1B6987C8C);
  v29 = *(v10 + 48);
  if (v29(v28, 1, v9) == 1)
  {
    sub_1B6984DF8(v22, sub_1B6987C8C);
    sub_1B6984DF8(v24, sub_1B6987C8C);
    if (v29(v28 + v27, 1, v9) == 1)
    {
      sub_1B6984DF8(v28, sub_1B6987C8C);
      v30 = v62;
LABEL_15:
      type metadata accessor for AccessSessionManager();
      v48 = swift_allocObject();
      *(v48 + 16) = v30;

      v59(v48);
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v49 = v24;
  v31 = v28;
  v32 = v28;
  v33 = v51;
  sub_1B699A394(v31, v51, sub_1B6987C8C);
  if (v29(v32 + v27, 1, v9) == 1)
  {
    sub_1B6984DF8(v22, sub_1B6987C8C);
    sub_1B6984DF8(v49, sub_1B6987C8C);
    (*(v10 + 8))(v33, v9);
    v28 = v32;
LABEL_11:
    sub_1B6984DF8(v28, sub_1B6992BDC);
    v30 = v62;
    goto LABEL_12;
  }

  v45 = v50;
  (*(v10 + 32))(v50, v32 + v27, v9);
  sub_1B6AAFDD0();
  v46 = sub_1B6AB92A0();
  v47 = *(v10 + 8);
  v47(v45, v9);
  sub_1B6984DF8(v22, sub_1B6987C8C);
  sub_1B6984DF8(v49, sub_1B6987C8C);
  v47(v33, v9);
  sub_1B6984DF8(v32, sub_1B6987C8C);
  v30 = v62;
  if (v46)
  {
    goto LABEL_15;
  }

LABEL_12:
  v34 = v53;
  sub_1B699A394(v63, v53, type metadata accessor for DiagnosticsConsentProvider);
  type metadata accessor for LazyDiagnosticStatus(0);
  v35 = swift_allocObject();
  *(v35 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v37 = v56;
  v36 = v57;
  v38 = *&v57[OBJC_IVAR___AAAccessQueue_queue];
  v40 = v54;
  v39 = v55;
  *v54 = v38;
  (*(v39 + 104))(v40, *MEMORY[0x1E69E8020], v37);
  v41 = v38;
  LOBYTE(v38) = sub_1B6AB9110();
  result = (*(v39 + 8))(v40, v37);
  if (v38)
  {
    sub_1B6980F64(v34, v35 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider);
    *(v35 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v36;
    v64 = v35;
    sub_1B69930AC(0);
    v43 = v36;

    swift_task_localValuePush();
    type metadata accessor for AccessSessionManager();
    v44 = swift_allocObject();
    *(v44 + 16) = v30;

    v59(v44);

    swift_task_localValuePop();
LABEL_16:
  }

  __break(1u);
  return result;
}

uint64_t sub_1B699835C(uint64_t a1)
{
  sub_1B6A0A7A4(0, &qword_1EDBCC3A8, &qword_1EDBCC3B0, &protocol descriptor for DataEventStackType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_WORD *storeEnumTagSinglePayload for ExternalAnalyticsUploader.Errors(_WORD *result, int a2, int a3)
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

uint64_t sub_1B6998460(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6980478(*(a1 + 16) + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, v8, type metadata accessor for DiagnosticsConsentProvider);
  v9 = *(a1 + 48);

  sub_1B6997C0C(v9, v8, a2, a3, a1);
  return sub_1B6A0BDA4(v8, type metadata accessor for DiagnosticsConsentProvider);
}

uint64_t sub_1B6998590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v70 = a4;
  *&v71 = a5;
  v68 = a2;
  v69 = a3;
  v67 = type metadata accessor for Session(0);
  MEMORY[0x1EEE9AC00](v67);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for SessionManager.SessionState(0);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B6AB90F0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(*(v8 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v20 = v19;
  v21 = sub_1B6AB9110();
  result = (*(v16 + 8))(v18, v15);
  if ((v21 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v66 = v13;
  v24 = type metadata accessor for SessionData(255, a6, a7, v23);
  WitnessTable = swift_getWitnessTable();
  v27 = type metadata accessor for PushEvent(0, v24, WitnessTable, v26);
  v28 = (a1 + v27[9]);
  v29 = *v28;
  v30 = v28[1];
  v31 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks;
  swift_beginAccess();
  v32 = *(v8 + v31);
  if (*(v32 + 16) && (v33 = sub_1B6993940(v29, v30), (v34 & 1) != 0))
  {
    sub_1B6982544(*(v32 + 56) + 40 * v33, &v74);
  }

  else
  {
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
  }

  swift_endAccess();
  if (*(&v75 + 1))
  {
    sub_1B697ED90(0, &qword_1EDBCC3B0, &protocol descriptor for DataEventStackType);
    type metadata accessor for DataEventStack(0, v24, WitnessTable, v35);
    if (swift_dynamicCast())
    {
      v38 = *(&v77 + 1);
      v37 = v77;
      v39 = v78;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1B699835C(&v74);
  }

  v37 = sub_1B699A428(v29, v30, v24, WitnessTable);
LABEL_11:
  *&v77 = v37;
  *(&v77 + 1) = v38;
  v78 = v39;
  v40 = v27[11];
  v41 = *(a1 + v27[10]);
  v42 = *(a1 + v40);
  v43 = type metadata accessor for DataEventStack(0, v24, WitnessTable, v36);
  sub_1B6A25A5C(a1, v68, v41, v42, v69, v70, v71, v43);
  *(&v75 + 1) = v43;
  v76 = &off_1F2E77398;
  v74 = v77;
  *&v75 = v78;
  swift_beginAccess();

  sub_1B699A480(&v74, v29, v30);
  swift_endAccess();
  v44 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  v45 = v8 + v44;
  v46 = v73;
  sub_1B6980478(v45, v73, type metadata accessor for SessionManager.SessionState);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v48 = type metadata accessor for SessionManager.SessionState;
    v49 = v46;
  }

  else
  {
    v50 = *v46;
    v51 = *(v8 + 24);
    v52 = *(*v46 + 16);
    v53 = *(*v46 + 24);
    v72 = v52;
    v73 = v51;
    v54 = *&v50[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8];
    v55 = *(v50 + 4);
    v56 = *(v50 + 5);
    v57 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate;
    v58 = v67;
    v59 = *(v67 + 28);
    *&v47 = *&v50[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier];
    v71 = v47;
    v60 = sub_1B6AB8DB0();
    v61 = v66;
    (*(*(v60 - 8) + 16))(&v66[v59], &v50[v57], v60);

    sub_1B6992E2C(v55, v56);
    v62 = sub_1B699696C(v50);
    *&v63 = v71;
    *(&v63 + 1) = v54;
    *&v64 = v55;
    *(&v64 + 1) = v56;
    *v61 = v72;
    *(v61 + 8) = v53;
    *(v61 + 16) = v63;
    *(v61 + 32) = v64;
    *(v61 + *(v58 + 32)) = v62;
    sub_1B69A5404(v61);

    v48 = type metadata accessor for Session;
    v49 = v61;
  }

  return sub_1B6A0BDA4(v49, v48);
}

uint64_t sub_1B6998ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DataEventStack.Entry(255, *(a1 + 16), *(a1 + 24), a4);
  v4 = sub_1B6AB95D0();

  return MEMORY[0x1EEE69500](0, v4);
}

uint64_t getEnumTagSinglePayload for ExternalAnalyticsUploader.Errors(unsigned int *a1, int a2)
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

uint64_t AccessSessionManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B6998B8C()
{
  v30 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = sub_1B6AB9560();
  *(v3 + 16) = 20;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v0 + 16) = v3;
  sub_1B6994494(v1, v2);
  sub_1B69A9404(v1, v2, v1, v2, (v0 + 16));
  v4 = *(v0 + 16);
  *(v0 + 56) = v4;
  v5 = sub_1B69A96F4((v4 + 32), *(v4 + 16));
  v7 = v6;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v8 = sub_1B6AB8F90();
  *(v0 + 80) = v8;
  *(v0 + 88) = __swift_project_value_buffer(v8, qword_1EDBCFDA8);
  sub_1B6994494(v5, v7);
  v9 = sub_1B6AB8F80();
  v10 = sub_1B6AB9900();
  sub_1B6993C94(v5, v7);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315138;
    *(v0 + 24) = sub_1B69A97A4(v5, v7);
    sub_1B69A9B10();
    v28 = v5;
    sub_1B699918C();
    v13 = sub_1B6AB9290();
    v15 = v14;

    v16 = sub_1B698F63C(v13, v15, &v29);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1B697C000, v9, v10, "Generated SHA1 from data, %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v17 = v12;
    v18 = v28;
    MEMORY[0x1B8C99550](v17, -1, -1);
    MEMORY[0x1B8C99550](v11, -1, -1);
  }

  else
  {

    v18 = v5;
  }

  v19 = objc_allocWithZone(MEMORY[0x1E698CAC8]);

  v20 = sub_1B6AB92B0();

  v21 = [v19 initWithBundleIdentifier_];

  v22 = sub_1B6AB92B0();
  v23 = sub_1B6AB92B0();
  v24 = [objc_opt_self() bagForProfile:v22 profileVersion:v23 processInfo:v21];
  *(v0 + 96) = v24;

  sub_1B6986438(0, &qword_1EDBC9BA0, 0x1E698C9F0);
  v25 = v24;
  v26 = swift_task_alloc();
  *(v0 + 104) = v26;
  *v26 = v0;
  v26[1] = sub_1B69ACF4C;

  return MEMORY[0x1EEDEE018](v18, v7, 1, v25);
}

uint64_t AccessSessionManager.push<A>(_:traits:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a4;
  v22 = a5;
  v20 = a3;
  v11 = type metadata accessor for SessionData(255, a6, a7, a4);
  WitnessTable = swift_getWitnessTable();
  v14 = type metadata accessor for PushEvent(0, v11, WitnessTable, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v19 - v16;
  sub_1B698D998(a1, v11, WitnessTable, &v19 - v16);
  sub_1B6998590(v17, a2, v20, v21, v22, a6, a7);
  return (*(v15 + 8))(v17, v14);
}

void sub_1B69990B4(uint64_t a1)
{
  if (!qword_1EDBCCC50)
  {
    sub_1B6994A40();
    v1 = sub_1B6ABA090();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBCCC50);
    }
  }
}

uint64_t sub_1B6999114@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1B6AB8BB0();
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, a1 + v5, v6);
}

unint64_t sub_1B699918C()
{
  result = qword_1EDBCB650;
  if (!qword_1EDBCB650)
  {
    sub_1B6999200(255, &qword_1EDBCAFF0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCB650);
  }

  return result;
}

void sub_1B6999200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B6999254(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B69992A4()
{
  v4 = *(v0 + OBJC_IVAR___AAClient_identifier);

  MEMORY[0x1B8C97BE0](47, 0xE100000000000000);
  v2 = *(v0 + OBJC_IVAR___AAClient_version);
  v3 = *(v0 + OBJC_IVAR___AAClient_version + 8);

  MEMORY[0x1B8C97BE0](46, 0xE100000000000000);
  MEMORY[0x1B8C97BE0](*(v0 + OBJC_IVAR___AAClient_buildNumber), *(v0 + OBJC_IVAR___AAClient_buildNumber + 8));
  MEMORY[0x1B8C97BE0](v2, v3);

  return v4;
}

void sub_1B6999350(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1B6AB9EA0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B69993A8(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v40 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v4)
  {
    if ((a2 & 0xFF000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    if (sub_1B69997EC(&unk_1F2E73ED0, a1, a2))
    {
      goto LABEL_10;
    }

    memset(&strm, 0, sizeof(strm));
    if (v4 == 2)
    {
      v10 = *(v3 + 16);
      v11 = *(v3 + 24);
      v12 = sub_1B6AB8900();
      if (v12)
      {
        v13 = sub_1B6AB8930();
        if (__OFSUB__(v10, v13))
        {
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
        }

        v12 += v10 - v13;
      }

      if (__OFSUB__(v11, v10))
      {
        goto LABEL_97;
      }

      sub_1B6AB8920();
      if (v12)
      {
        strm.next_in = v12;
      }

      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (!v16)
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    else if (v4 == 1)
    {
      if (v3 > v3 >> 32)
      {
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v6 = sub_1B6AB8900();
      if (v6)
      {
        v7 = v6;
        v8 = sub_1B6AB8930();
        if (__OFSUB__(v3, v8))
        {
          goto LABEL_100;
        }

        v9 = (v3 - v8 + v7);
        sub_1B6AB8920();
        if (v9)
        {
          strm.next_in = v9;
        }
      }

      else
      {
        sub_1B6AB8920();
      }

      LODWORD(v17) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_98;
      }

      v17 = v17;
LABEL_32:
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_87;
      }

      if (HIDWORD(v17))
      {
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
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
        goto LABEL_96;
      }

LABEL_34:
      strm.avail_in = v17;
      v18 = deflateInit2_(&strm, 9, 8, 31, 9, 0, "1.2.12", 112);
      if (v18)
      {
        v19 = v18;
        sub_1B6A254A8();
        swift_allocError();
        *v20 = v19;
        swift_willThrow();
        return v3;
      }

      sub_1B6AB8950();
      swift_allocObject();
      v21 = sub_1B6AB8940() | 0x4000000000000000;
      v37 = 0;
      v38 = v21;
      if (!strm.avail_out)
      {
        v22 = 0;
        while (1)
        {
          if ((strm.total_out & 0x8000000000000000) != 0)
          {
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
            goto LABEL_88;
          }

          v23 = v21 >> 62;
          if ((v21 >> 62) <= 1)
          {
            break;
          }

          if (v23 == 2)
          {
            v25 = *(v22 + 16);
            v24 = *(v22 + 24);
            v16 = __OFSUB__(v24, v25);
            v26 = v24 - v25;
            if (v16)
            {
              goto LABEL_89;
            }

            if (strm.total_out < v26)
            {
              goto LABEL_61;
            }

LABEL_49:
            if (v23 == 2)
            {
              v29 = *(v22 + 16);
              v28 = *(v22 + 24);
              v16 = __OFSUB__(v28, v29);
              v27 = v28 - v29;
              if (v16)
              {
                goto LABEL_94;
              }
            }

            else if (v23 == 1)
            {
              LODWORD(v27) = HIDWORD(v22) - v22;
              if (__OFSUB__(HIDWORD(v22), v22))
              {
                goto LABEL_93;
              }

              v27 = v27;
            }

            else
            {
              v27 = BYTE6(v21);
            }

            goto LABEL_58;
          }

          v27 = 0;
LABEL_58:
          if (__OFADD__(v27, 0x4000))
          {
            goto LABEL_85;
          }

          if (v27 + 0x4000 < 0)
          {
            goto LABEL_86;
          }

          sub_1B6AB8C20();
LABEL_61:
          sub_1B6999A10(&v37, &strm);
          v22 = v37;
          v21 = v38;
          v30 = v38 >> 62;
          if ((v38 >> 62) > 1)
          {
            if (v30 != 2)
            {
              LODWORD(v31) = 0;
              goto LABEL_74;
            }

            v33 = *(v37 + 16);
            v32 = *(v37 + 24);
            v16 = __OFSUB__(v32, v33);
            v31 = v32 - v33;
            if (v16)
            {
              goto LABEL_91;
            }
          }

          else
          {
            if (!v30)
            {
              LODWORD(v31) = BYTE6(v38);
              goto LABEL_74;
            }

            LODWORD(v31) = HIDWORD(v37) - v37;
            if (__OFSUB__(HIDWORD(v37), v37))
            {
              goto LABEL_92;
            }

            v31 = v31;
          }

          if ((v31 & 0x8000000000000000) != 0)
          {
            goto LABEL_81;
          }

          if (HIDWORD(v31))
          {
            goto LABEL_82;
          }

LABEL_74:
          if (HIDWORD(strm.total_out))
          {
            goto LABEL_83;
          }

          v34 = v31 >= LODWORD(strm.total_out);
          v35 = v31 - LODWORD(strm.total_out);
          if (!v34)
          {
            goto LABEL_84;
          }

          strm.avail_out = v35;
          deflate(&strm, 4);
          if (strm.avail_out)
          {
            goto LABEL_78;
          }
        }

        if (v23)
        {
          if (__OFSUB__(HIDWORD(v22), v22))
          {
            goto LABEL_90;
          }

          if (strm.total_out < HIDWORD(v22) - v22)
          {
            goto LABEL_61;
          }
        }

        else if (strm.total_out < BYTE6(v21))
        {
          goto LABEL_61;
        }

        goto LABEL_49;
      }

LABEL_78:
      deflateEnd(&strm);
      if ((strm.total_out & 0x8000000000000000) == 0)
      {
        sub_1B6AB8C20();
        v3 = v37;
        v36 = v38;
        sub_1B6994494(v37, v38);
        sub_1B6993C94(v3, v36);
        return v3;
      }

      goto LABEL_95;
    }

    strm.next_in = &v37;
    LODWORD(v17) = BYTE6(a2);
    goto LABEL_34;
  }

  if (a1 != a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_1B6994494(v3, a2);
  return v3;
}

uint64_t sub_1B69997EC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1B6AB8CB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6994494(a2, a3);
  sub_1B6AB8CC0();
  sub_1B69999B8();
  v10 = 0;
  while (1)
  {
    result = sub_1B6AB9B80();
    if (v15[15])
    {
      result = (*(v7 + 8))(v9, v6);
      v14 = *(a1 + 16);
      if (v14 != v10)
      {
        if (v10 < v14)
        {
          return 0;
        }

        goto LABEL_13;
      }

      return 1;
    }

    v12 = *(a1 + 16);
    if (v10 == v12)
    {
      (*(v7 + 8))(v9, v6);
      return 1;
    }

    if (v10 >= v12)
    {
      break;
    }

    v13 = *(a1 + 32 + v10++);
    if (v15[14] != v13)
    {
      (*(v7 + 8))(v9, v6);
      return 0;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

unint64_t sub_1B69999B8()
{
  result = qword_1EDBCBA88;
  if (!qword_1EDBCBA88)
  {
    sub_1B6AB8CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCBA88);
  }

  return result;
}

uint64_t *sub_1B6999A10(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v21 = *MEMORY[0x1E69E9840];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 == 2)
    {

      sub_1B6993C94(v5, v4);
      v19 = v5;
      v20 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1B6ABD8A0;
      sub_1B6993C94(0, 0xC000000000000000);
      sub_1B6AB8BC0();
      v10 = v19;
      v9 = v20;
      v11 = *(v19 + 16);
      v12 = *(v19 + 24);
      result = sub_1B6AB8900();
      if (result)
      {
        v13 = result;
        v14 = sub_1B6AB8930();
        v15 = v11 - v14;
        if (__OFSUB__(v11, v14))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        if (__OFSUB__(v12, v11))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
        }

        result = sub_1B6AB8920();
        v16 = *(a2 + 40);
        if (v16 < 0)
        {
          goto LABEL_19;
        }

        *(a2 + 24) = v13 + v15 + v16;
        *v3 = v10;
        v3[1] = v9 | 0x8000000000000000;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v18 = *(a2 + 40);
      if (v18 < 0)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      *(a2 + 24) = &v19 + v18;
    }
  }

  else
  {
    if (!v6)
    {
      result = sub_1B6993C94(v5, v4);
      v19 = v5;
      LOWORD(v20) = v4;
      BYTE2(v20) = BYTE2(v4);
      BYTE3(v20) = BYTE3(v4);
      BYTE4(v20) = BYTE4(v4);
      BYTE5(v20) = BYTE5(v4);
      BYTE6(v20) = BYTE6(v4);
      v7 = *(a2 + 40);
      if ((v7 & 0x8000000000000000) == 0)
      {
        *(a2 + 24) = &v19 + v7;
        v8 = v20 | ((WORD2(v20) | (BYTE6(v20) << 16)) << 32);
        *v3 = v19;
        v3[1] = v8;
        return result;
      }

      __break(1u);
      goto LABEL_16;
    }

    sub_1B6993C94(v5, v4);
    v19 = v5;
    v20 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1B6ABD8A0;
    sub_1B6993C94(0, 0xC000000000000000);
    result = sub_1B6999CA4(&v19, a2);
    v17 = v20 | 0x4000000000000000;
    *v3 = v19;
    v3[1] = v17;
  }

  return result;
}

uint64_t sub_1B6999CA4(int *a1, uint64_t a2)
{
  result = sub_1B6AB8BE0();
  v5 = *a1;
  if (a1[1] < v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1B6AB8900();
  if (result)
  {
    v6 = result;
    result = sub_1B6AB8930();
    v7 = __OFSUB__(v5, result);
    v8 = v5 - result;
    if (!v7)
    {
      result = sub_1B6AB8920();
      v9 = *(a2 + 40);
      if ((v9 & 0x8000000000000000) == 0)
      {
        *(a2 + 24) = v6 + v8 + v9;
      }

      goto LABEL_8;
    }

LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B6999D48(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1B6999DF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B6999DF4()
{
  if (!qword_1EDBC9BD0)
  {
    v0 = sub_1B6AB95D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC9BD0);
    }
  }
}

uint64_t sub_1B6999E44(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *))
{
  v7 = v6;
  v8 = a2;
  v9 = *v6;
  sub_1B699A1D4(0, a3, a4, a5);
  v37 = v8;
  result = sub_1B6AB9E80();
  v11 = result;
  if (*(v9 + 16))
  {
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = (*(v9 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v9 + 56) + 40 * v24;
      if (v37)
      {
        a6(v28, v39);
      }

      else
      {
        sub_1B6982544(v28, v39);
      }

      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v29 = -1 << *(v11 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v18 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v18 + 8 * v31);
          if (v35 != -1)
          {
            v19 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v30) & ~*(v18 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      result = (a6)(v39, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v7 = v6;
      goto LABEL_34;
    }

    v36 = 1 << *(v9 + 32);
    v7 = v6;
    if (v36 >= 64)
    {
      bzero((v9 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v36;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v7 = v11;
  return result;
}

unint64_t sub_1B699A11C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B6ABA0F0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1B699A1D4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1B697ED90(255, a3, a4);
    v5 = sub_1B6AB9EA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B699A23C()
{
  sub_1B6984DF8(v0 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, type metadata accessor for DiagnosticsConsentProvider);

  return swift_deallocClassInstance();
}

uint64_t sub_1B699A2C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B699A32C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B699A394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B699A480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1B6980E70(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1B699A5C4(v9, a2, a3, isUniquelyReferenced_nonNull_native, sub_1B69DEA40, sub_1B699A754, sub_1B699A784, sub_1B699A784);

    *v3 = v8;
  }

  else
  {
    sub_1B69E8690(a1, &unk_1EDBCC3A8, &qword_1EDBCC3B0, &protocol descriptor for DataEventStackType, sub_1B6994418);
    sub_1B6A96B74(a2, a3, v9);

    return sub_1B69E8690(v9, &unk_1EDBCC3A8, &qword_1EDBCC3B0, &protocol descriptor for DataEventStackType, sub_1B6994418);
  }

  return result;
}

void sub_1B699A5C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, void *), uint64_t (*a8)(uint64_t, uint64_t))
{
  v12 = v8;
  v17 = *v8;
  v18 = sub_1B6993940(a2, a3);
  v20 = v17[2];
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v19;
  v25 = v17[3];
  if (v25 < v23 || (a4 & 1) == 0)
  {
    if (v25 >= v23 && (a4 & 1) == 0)
    {
      v26 = v18;
      a5();
      v18 = v26;
      goto LABEL_8;
    }

    a6(v23, a4 & 1);
    v18 = sub_1B6993940(a2, a3);
    if ((v24 & 1) != (v27 & 1))
    {
LABEL_16:
      sub_1B6ABA190();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v28 = *v12;
  if (v24)
  {
    v29 = (v28[7] + 40 * v18);
    __swift_destroy_boxed_opaque_existential_1(v29);

    a7(a1, v29);
  }

  else
  {
    sub_1B699A788(v18, a2, a3, a1, v28, a8);
  }
}

uint64_t sub_1B699A788(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a5[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = a6(a4, a5[7] + 40 * a1);
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t sub_1B699A7FC@<X0>(uint64_t a1@<X8>)
{
  sub_1B6988078(0, &qword_1EDBCCC40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider____lazy_storage___baseURL;
  swift_beginAccess();
  sub_1B699AA2C(v1 + v9, v8);
  v10 = sub_1B6AB8BB0();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1B699AAC0(v8);
  v12 = *(v1 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_staticPathProvider + 24);
  v13 = *(v1 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_staticPathProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_staticPathProvider), v12);
  (*(v13 + 8))(v12, v13);
  (*(v11 + 16))(v6, a1, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_1B699AD30(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1B699AA2C(uint64_t a1, uint64_t a2)
{
  sub_1B6988078(0, &qword_1EDBCCC40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B699AAC0(uint64_t a1)
{
  sub_1B6988078(0, &qword_1EDBCCC40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B699AB90()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1B6AB8B20();
  v5[0] = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v5];

  if (v2)
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_1B6AB8A70();

  return swift_willThrow();
}

uint64_t sub_1B699AC80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL sub_1B699ACBC(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1B699AD30(uint64_t a1, uint64_t a2)
{
  sub_1B6988078(0, &qword_1EDBCCC40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B699ADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v45 = a3;
  v46 = a4;
  v14 = sub_1B6AB90F0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(*(v8 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v19 = v18;
  LOBYTE(v18) = sub_1B6AB9110();
  result = (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v44 = a5;
  v22 = type metadata accessor for PushEvent(0, a6, a7, v21);
  v23 = (a1 + v22[9]);
  v25 = *v23;
  v24 = v23[1];
  if (!sub_1B699ACBC(2u, a2) || (sub_1B69BEDE8(v25, v24, 0, 0, 1, &v47), v26 = v49, result = sub_1B6A23F44(&v47, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType), !v26))
  {
    swift_beginAccess();
    v27 = *(v8 + 128);
    if (*(v27 + 16))
    {

      v28 = sub_1B6993940(v25, v24);
      if (v29)
      {
        sub_1B6982544(*(v27 + 56) + 40 * v28, &v47);

        sub_1B697ED90(0, &qword_1EDBCC3B0, &protocol descriptor for DataEventStackType);
        type metadata accessor for DataEventStack(0, a6, a7, v30);
        if (swift_dynamicCast())
        {
          v32 = *(&v51 + 1);
          v31 = v51;
          v33 = v52;
LABEL_10:
          *&v51 = v31;
          *(&v51 + 1) = v32;
          v52 = v33;
          if (sub_1B699ACBC(1u, a2))
          {
            v35 = type metadata accessor for DataEventStack(0, a6, a7, v34);
            sub_1B6998ABC(v35, v36, v37, v38);
          }

          v39 = v22[11];
          v40 = *(a1 + v22[10]);
          v41 = *(a1 + v39);
          v42 = type metadata accessor for DataEventStack(0, a6, a7, v34);
          sub_1B6A25A5C(a1, a2, v40, v41, v45, v46, v44, v42);
          v49 = v42;
          v50 = &off_1F2E77398;
          v47 = v51;
          v48 = v52;
          swift_beginAccess();

          sub_1B699A480(&v47, v25, v24);
          swift_endAccess();
          sub_1B6A4EDB4(v25, v24);
          return sub_1B6A4F44C(v25, v24);
        }
      }

      else
      {
      }
    }

    v31 = sub_1B699A428(v25, v24, a6, a7);
    goto LABEL_10;
  }

  return result;
}

void sub_1B699B134(uint64_t a1)
{
  sub_1B6AB8DB0();
  if (v1 <= 0x3F)
  {
    sub_1B697EF74();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B699B1D0(uint64_t a1)
{
  result = sub_1B6AB8DB0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B699B284(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v182 = a5;
  v181 = a4;
  v196 = a3;
  v194 = a2;
  v191 = sub_1B6AB8BB0();
  v195 = *(v191 - 8);
  v8 = MEMORY[0x1EEE9AC00](v191);
  v192 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v180 = &v153 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1B69882EC(0, &unk_1EDBCAA60, MEMORY[0x1E69E7FA8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v178 = &v153 - v13;
  v158 = sub_1B6AB90F0();
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v156 = (&v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v174 = sub_1B6AB8E40();
  v172 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v154 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC(0);
  v171 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v173 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69882EC(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], v11);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v155 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v175 = &v153 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v176 = &v153 - v23;
  v24 = sub_1B6AB8F90();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v166 = v26;
  v167 = &v153 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for DiagnosticsConsentProvider(0);
  v27 = MEMORY[0x1EEE9AC00](v168);
  v159 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v177 = &v153 - v29;
  v190 = sub_1B6AB9980();
  v189 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v188 = (&v153 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v186 = sub_1B6AB9950();
  MEMORY[0x1EEE9AC00](v186);
  v187 = &v153 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_1B6AB9090();
  v164 = *(v165 - 8);
  v32 = MEMORY[0x1EEE9AC00](v165);
  v163 = &v153 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v185 = &v153 - v34;
  v193 = a1;
  sub_1B69A0068(a1, v6, &v203);
  v35 = v6[5];
  sub_1B6982544((v6 + 13), v202);
  sub_1B6982544((v6 + 8), &v201);
  sub_1B6986960(0);
  v36 = swift_allocObject();
  v37 = v36 + qword_1EDBCAD28;
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v24, qword_1EDBCFDA8);
  v169 = v25;
  v39 = *(v25 + 16);
  v170 = v24;
  v162 = v25 + 16;
  v161 = v39;
  v39(v37, v38, v24);
  type metadata accessor for UploadEndpoint();
  v40 = swift_allocObject();
  v200 = &unk_1F2E8AA48;
  v41 = swift_dynamicCastObjCProtocolConditional();
  if (v41)
  {
    v42 = v41;
  }

  else
  {
    v42 = v35;
  }

  *(v40 + 16) = v42;
  *(v40 + 24) = v41 != 0;
  *(v36 + 16) = v40;
  sub_1B6982544(v202, v36 + 40);
  *(v36 + 24) = 1885960807;
  *(v36 + 32) = 0xE400000000000000;
  sub_1B6982544(&v201, v36 + 80);
  *(v36 + 120) = 0;
  sub_1B6982544(&v201, &v199);
  v43 = swift_allocObject();
  sub_1B6980E70(&v199, v43 + 16);
  v184 = type metadata accessor for Lazy;
  sub_1B69882EC(0, qword_1EDBCBCC8, sub_1B699D1F0, type metadata accessor for Lazy);
  v44 = swift_allocObject();
  v45 = type metadata accessor for UnfairLock();
  *(v44 + 32) = 0u;
  *(v44 + 48) = 0u;
  *(v44 + 64) = 0;
  v46 = swift_allocObject();
  swift_unknownObjectRetain();
  v47 = swift_slowAlloc();
  *(v46 + 16) = v47;
  *v47 = 0;
  *(v46 + 24) = 0x10000;
  __swift_destroy_boxed_opaque_existential_1(&v201);
  __swift_destroy_boxed_opaque_existential_1(v202);
  *(v44 + 72) = v46;
  *(v44 + 80) = 1;
  *(v44 + 16) = sub_1B69BCE48;
  *(v44 + 24) = v43;
  *(v36 + 128) = v44;
  v48 = v6[4];
  v49 = v6[7];
  sub_1B6982544(&v203, v202);
  sub_1B6982544((v6 + 23), &v201);
  v183 = v6[6];
  v197 = v6;
  v50 = v6[28];
  v51 = type metadata accessor for UploadDropbox(0);
  v52 = swift_allocObject();
  *(v52 + 5) = MEMORY[0x1E69E7CC8];
  v53 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_currentSession;
  v54 = type metadata accessor for Session(0);
  (*(*(v54 - 8) + 56))(&v52[v53], 1, 1, v54);
  v55 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
  v56 = swift_allocObject();
  v57 = v49;
  v58 = v48;
  v59 = v50;
  v60 = swift_slowAlloc();
  *(v56 + 16) = v60;
  *v60 = 0;
  *(v56 + 24) = 0x10000;
  *&v52[v55] = v56;
  *(v52 + 2) = v58;
  *(v52 + 3) = v57;
  sub_1B6982544(v202, &v52[OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider]);
  sub_1B6982544(&v201, &v52[OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager]);
  *&v52[OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_contentType] = v183;
  *&v52[OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_transparencyLogging] = v59;
  sub_1B6982544(v202, &v199);
  v61 = swift_allocObject();
  *(v61 + 16) = v57;
  sub_1B6980E70(&v199, v61 + 24);
  sub_1B69882EC(0, &qword_1EDBCBCC0, type metadata accessor for UploadDropbox.Debugging, v184);
  v62 = swift_allocObject();
  v63 = *(*v62 + 96);
  v64 = type metadata accessor for UploadDropbox.Debugging(0);
  (*(*(v64 - 8) + 56))(&v62[v63], 1, 1, v64);
  v65 = *(*v62 + 104);
  v66 = swift_allocObject();
  v184 = v57;
  v67 = swift_slowAlloc();
  *(v66 + 16) = v67;
  *v67 = 0;
  *(v66 + 24) = 0x10000;
  __swift_destroy_boxed_opaque_existential_1(&v201);
  __swift_destroy_boxed_opaque_existential_1(v202);
  *&v62[v65] = v66;
  *(v62 + 2) = sub_1B69EC33C;
  *(v62 + 3) = v61;
  *&v62[*(*v62 + 112)] = 1;
  *(v52 + 4) = v62;
  v202[3] = v51;
  v202[4] = &off_1F2E7AC40;
  v202[0] = v52;
  type metadata accessor for UploadManager();
  v68 = swift_allocObject();
  v69 = __swift_mutable_project_boxed_opaque_existential_1(v202, v51);
  v183 = &v153;
  MEMORY[0x1EEE9AC00](v69);
  v71 = (&v153 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71);
  v73 = *v71;
  v68[7] = v51;
  v68[8] = &off_1F2E7AC40;
  v68[4] = v73;
  v68[10] = MEMORY[0x1E69E7CC8];
  v160 = v45;
  v74 = swift_allocObject();
  v75 = swift_slowAlloc();
  *(v74 + 16) = v75;
  *v75 = 0;
  *(v74 + 24) = 0x10000;
  v68[11] = v74;
  sub_1B6986438(0, &qword_1EDBCBB40, 0x1E69E9610);
  v76 = v185;
  sub_1B6AB9080();
  v201 = MEMORY[0x1E69E7CC0];
  sub_1B69852F0(&qword_1EDBCBB48, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  v77 = MEMORY[0x1E69E8030];
  sub_1B69882EC(0, &qword_1EDBCBB70, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1B69880DC(&qword_1EDBCBB68, &qword_1EDBCBB70, v77);
  sub_1B6AB9BE0();
  (*(v189 + 104))(v188, *MEMORY[0x1E69E8098], v190);
  v68[12] = sub_1B6AB99D0();
  v68[2] = v36;
  v68[3] = &off_1F2E76AB0;
  v68[9] = v184;
  __swift_destroy_boxed_opaque_existential_1(v202);
  v78 = v194;
  if (!v194)
  {
    v80 = v191;
    v81 = v195;
    v82 = v193;
LABEL_31:
    sub_1B69B4E4C();
    v142 = sub_1B6AB9040();
    v143 = v178;
    (*(*(v142 - 8) + 56))(v178, 1, 1, v142);
    v144 = _s12AppAnalytics11AccessQueueC6globalyAC8Dispatch0F3QoSV0G6SClassOSgFZ_0(v143);
    sub_1B69ADAB0(v143, &unk_1EDBCAA60, MEMORY[0x1E69E7FA8]);
    v145 = swift_allocObject();
    swift_weakInit();
    v146 = v180;
    (*(v81 + 16))(v180, v82, v80);
    v147 = (*(v81 + 80) + 24) & ~*(v81 + 80);
    v148 = (v179 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
    v149 = swift_allocObject();
    *(v149 + 16) = v145;
    (*(v81 + 32))(v149 + v147, v146, v80);
    *(v149 + v148) = v68;
    v150 = (v149 + ((v148 + 15) & 0xFFFFFFFFFFFFFFF8));
    v151 = v182;
    *v150 = v181;
    v150[1] = v151;

    sub_1B69ADB20(v144, sub_1B69EC348, v149);

    __swift_destroy_boxed_opaque_existential_1(&v203);
  }

  v79 = sub_1B6A6CC38();
  v83 = *(v79 + 16);
  v84 = v197;
  v189 = v79;
  if (v83)
  {

    v85 = sub_1B6AB8F80();
    v86 = sub_1B6AB9900();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 134217984;
      *(v87 + 4) = *(v189 + 16);

      _os_log_impl(&dword_1B697C000, v85, v86, "Will attempt to repair %ld batches", v87, 0xCu);
      MEMORY[0x1B8C99550](v87, -1, -1);
    }

    else
    {
    }
  }

  v190 = 0;
  v88 = v84[30];
  v188 = type metadata accessor for AccessQueue();
  v89 = objc_allocWithZone(v188);
  *&v89[OBJC_IVAR___AAAccessQueue_queue] = v88;
  v90 = v88;
  sub_1B6AB9050();
  v91 = OBJC_IVAR___AAAccessQueue__qos;
  swift_beginAccess();
  v92 = v76;
  v93 = v164;
  v94 = v163;
  v95 = v76;
  v96 = v165;
  (*(v164 + 16))(v163, v95, v165);
  sub_1B69882EC(0, qword_1EDBCB0E0, MEMORY[0x1E69E7FB0], type metadata accessor for Atomic);
  v97 = swift_allocObject();
  v98 = swift_allocObject();
  v99 = swift_slowAlloc();
  *(v98 + 16) = v99;
  *v99 = 0;
  *(v98 + 24) = 0x10000;
  (*(v93 + 8))(v92, v96);
  *(v97 + 2) = v98;
  (*(v93 + 32))(&v97[*(*v97 + 96)], v94, v96);
  *&v89[v91] = v97;
  swift_endAccess();
  v198.receiver = v89;
  v198.super_class = v188;
  v188 = objc_msgSendSuper2(&v198, sel_init);
  v100 = v167;
  v101 = v170;
  v161(v167, v197 + OBJC_IVAR____TtC12AppAnalytics12FlushManager_logger, v170);
  v102 = v169;
  v103 = (*(v169 + 80) + 16) & ~*(v169 + 80);
  v104 = swift_allocObject();
  (*(v102 + 32))(v104 + v103, v100, v101);
  v105 = v177;
  sub_1B6AB8E30();
  v106 = (v105 + *(v168 + 20));
  *v106 = sub_1B69EC3E8;
  v106[1] = v104;
  sub_1B698BF94(v78);
  v107 = qword_1EDBC9F60;

  if (v107 != -1)
  {
    swift_once();
  }

  v186 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v108 = v174;
  v109 = v173;
  v110 = v172;
  v187 = v202[0];
  if (v202[0])
  {
    v111 = *(v172 + 16);
    v112 = v176;
    v111(v176, v202[0] + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v174);
    v113 = *(v110 + 56);
    v113(v112, 0, 1, v108);
  }

  else
  {
    v113 = *(v172 + 56);
    v112 = v176;
    v113(v176, 1, 1, v174);
    v111 = *(v110 + 16);
  }

  v114 = v175;
  v111(v175, v177, v108);
  v113(v114, 0, 1, v108);
  v115 = *(v171 + 48);
  v116 = MEMORY[0x1E69695A8];
  sub_1B6994EC0(v112, v109, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  sub_1B6994EC0(v114, v109 + v115, &qword_1EDBCAF50, v116);
  v117 = *(v110 + 48);
  if (v117(v109, 1, v108) == 1)
  {
    v118 = MEMORY[0x1E69695A8];
    sub_1B69ADAB0(v114, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
    sub_1B69ADAB0(v112, &qword_1EDBCAF50, v118);
    v119 = v109;
    if (v117(v109 + v115, 1, v108) == 1)
    {
      sub_1B69ADAB0(v109, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
      v80 = v191;
      v120 = v190;
      v121 = v188;
LABEL_28:
      sub_1B69EA060(v189, v197, v194, v196);
      if (!v120)
      {

        v81 = v195;
        goto LABEL_30;
      }

      goto LABEL_35;
    }

    goto LABEL_23;
  }

  v122 = v155;
  sub_1B6994EC0(v109, v155, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  v119 = v109;
  if (v117(v109 + v115, 1, v108) == 1)
  {
    v123 = MEMORY[0x1E69695A8];
    sub_1B69ADAB0(v175, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
    sub_1B69ADAB0(v176, &qword_1EDBCAF50, v123);
    (*(v110 + 8))(v122, v108);
LABEL_23:
    sub_1B69EC4A4(v119, sub_1B6992BDC);
    v80 = v191;
    v124 = v159;
    v120 = v190;
    v121 = v188;
    goto LABEL_24;
  }

  v134 = v109 + v115;
  v135 = v154;
  (*(v110 + 32))(v154, v134, v108);
  sub_1B69852F0(&qword_1EDBCA470, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v136 = v122;
  v137 = sub_1B6AB92A0();
  v138 = *(v110 + 8);
  v138(v135, v108);
  v139 = MEMORY[0x1E69695A8];
  sub_1B69ADAB0(v175, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  sub_1B69ADAB0(v176, &qword_1EDBCAF50, v139);
  v138(v136, v108);
  sub_1B69ADAB0(v119, &qword_1EDBCAF50, v139);
  v80 = v191;
  v124 = v159;
  v120 = v190;
  v121 = v188;
  if (v137)
  {
    goto LABEL_28;
  }

LABEL_24:
  v190 = v68;
  sub_1B699A2C4(v177, v124, type metadata accessor for DiagnosticsConsentProvider);
  type metadata accessor for LazyDiagnosticStatus(0);
  v125 = swift_allocObject();
  *(v125 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v126 = *(v121 + OBJC_IVAR___AAAccessQueue_queue);
  v127 = v156;
  *v156 = v126;
  v128 = v121;
  v129 = v157;
  v130 = v158;
  (*(v157 + 104))(v127, *MEMORY[0x1E69E8020], v158);
  v131 = v126;
  v132 = sub_1B6AB9110();
  (*(v129 + 8))(v127, v130);
  if (v132)
  {
    sub_1B6980F64(v124, v125 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider);
    *(v125 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v128;
    v202[0] = v125;
    sub_1B69882EC(0, qword_1EDBC9F98, type metadata accessor for LazyDiagnosticStatus, MEMORY[0x1E69E6720]);
    v133 = v128;

    swift_task_localValuePush();
    sub_1B69EA060(v189, v197, v194, v196);
    swift_task_localValuePop();
    if (!v120)
    {
      v121 = v128;

      v81 = v195;
      v68 = v190;
LABEL_30:

      v140 = v194;
      v141 = v196;
      sub_1B69A3100(v194, v196);
      sub_1B69A3100(v140, v141);

      sub_1B69EC4A4(v177, type metadata accessor for DiagnosticsConsentProvider);
      v82 = v193;
      goto LABEL_31;
    }
  }

  else
  {
    __break(1u);
  }

LABEL_35:

  __break(1u);
  return result;
}

uint64_t sub_1B699D034()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B699D06C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B699D0AC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B699D0E4()
{
  v1 = sub_1B6AB8BB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

unint64_t sub_1B699D1F0()
{
  result = qword_1EDBCCB38[0];
  if (!qword_1EDBCCB38[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBCCB38);
  }

  return result;
}

uint64_t sub_1B699D254(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B6988350(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B699D2C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B6AB8BB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

void *sub_1B699D33C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_1B69E8EF8(0, a5, a6, MEMORY[0x1E69E6F90]);
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

void *sub_1B699D530(void *a1, int64_t a2, char a3)
{
  result = sub_1B699D33C(a1, a2, a3, *v3, &qword_1EDBCB628, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

uint64_t sub_1B699D580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1B697F028(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v44 - v7;
  v9 = type metadata accessor for Session(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6AB8BB0();
  v45 = *(v13 - 8);
  v46 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v44 - v17;
  swift_beginAccess();
  v19 = *(v2 + 40);
  if (*(v19 + 16) && (v20 = sub_1B6993940(a1, a2), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);
    swift_endAccess();
  }

  else
  {
    v44 = a1;
    swift_endAccess();
    v23 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_currentSession;
    swift_beginAccess();
    sub_1B69B596C(v3 + v23, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_1B698E840(v8, qword_1EDBCCC78, type metadata accessor for Session);
      v24 = *(v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
      v25 = *(v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v24);
      (*(v25 + 8))(v24, v25);
      v27 = v44;
      v26 = v45;
      v28 = v46;
    }

    else
    {
      sub_1B69B6BF4(v8, v12, type metadata accessor for Session);
      v30 = *(v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
      v29 = *(v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v30);
      (*(v29 + 8))(v30, v29);
      sub_1B6AB8B30();
      v26 = v45;
      v31 = v16;
      v28 = v46;
      (*(v45 + 8))(v31, v46);
      sub_1B69B6CC4(v12, type metadata accessor for Session);
      v27 = v44;
    }

    type metadata accessor for UploadDropboxFile(0);
    v22 = swift_allocObject();
    *(v22 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_eventCount) = -1;
    *(v22 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_byteSize) = 0;
    v32 = v22 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_state;
    *v32 = 0;
    *(v32 + 8) = 256;
    v33 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
    type metadata accessor for UnfairLock();
    v34 = swift_allocObject();
    v35 = swift_slowAlloc();
    *(v34 + 16) = v35;
    *v35 = 0;
    *(v34 + 24) = 0x10000;
    *(v22 + v33) = v34;
    v36 = (v22 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_userAgent);
    *v36 = 0;
    v36[1] = 0;
    v37 = v22 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_contentType;
    *v37 = 0;
    *(v37 + 8) = 1;
    v38 = (v22 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_groupName);
    *v38 = 0;
    v38[1] = 0;
    v39 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionStartDate;
    v40 = sub_1B6AB8DB0();
    (*(*(v40 - 8) + 56))(v22 + v39, 1, 1, v40);
    v41 = (v22 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionID);
    *v41 = 0;
    v41[1] = 0;
    *(v22 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_timestampConfiguration) = xmmword_1B6AC0320;
    *(v22 + 16) = v27;
    *(v22 + 24) = a2;

    sub_1B6AB8B30();
    (*(v26 + 8))(v18, v28);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = *(v3 + 40);
    *(v3 + 40) = 0x8000000000000000;
    sub_1B699DC84(v22, v27, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + 40) = v47;
    swift_endAccess();
  }

  return v22;
}

uint64_t type metadata accessor for UploadDropboxFile(uint64_t a1)
{
  result = qword_1EDBCB458;
  if (!qword_1EDBCB458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B699DB38(uint64_t a1)
{
  sub_1B6AB8BB0();
  if (v1 <= 0x3F)
  {
    sub_1B69867F8(319, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1B699DC84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B6993940(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B699DE00(v16, a4 & 1);
      v11 = sub_1B6993940(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1B6ABA190();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1B69DDE44();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_1B699DE00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1B69E0DB0(0, &qword_1EDBCAFE0, 255, type metadata accessor for UploadDropboxFile);
  v34 = v4;
  result = sub_1B6AB9E80();
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

      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
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

void sub_1B699E0D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  os_unfair_lock_lock_with_options();
  v4 = a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_state;
  if (*(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_state + 9))
  {
    sub_1B699E1A0(&v7);
    if (v1)
    {
      goto LABEL_8;
    }

    v5 = v7;
    v6 = v8;
    *v4 = v7;
    *(v4 + 8) = v6;
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *v4;
    if ((*(v4 + 8) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v5)
  {
    v7 = 1;
    v8 = 0;
    sub_1B699F100(a1, &v7);
  }

LABEL_8:
  os_unfair_lock_unlock(*(*(a1 + v3) + 16));
}

void sub_1B699E1A0(uint64_t a1@<X8>)
{
  v3 = sub_1B6AB9320();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1B699E9F0(0xD00000000000003ELL, 0x80000001B6ACD8E0, 8);
  if (!v1)
  {
    if (v5 >> 60 == 15)
    {
      *a1 = 1;
      *(a1 + 8) = 1;
      return;
    }

    v15 = v5;
    v16 = v4;
    sub_1B6AB9310();
    v73 = v16;
    v74 = v15;
    v17 = sub_1B6AB92F0();
    if (!v18)
    {
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v72 = qword_1EDBCCB28;
      v71 = sub_1B6AB98E0();
      sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1B6ABF500;
      v32 = sub_1B6AB8B80();
      v34 = v33;
      v35 = MEMORY[0x1E69E6158];
      *(v31 + 56) = MEMORY[0x1E69E6158];
      v36 = sub_1B698CEC0();
      *(v31 + 64) = v36;
      *(v31 + 32) = v32;
      *(v31 + 40) = v34;
      v37 = sub_1B6AB8C60();
      v38 = [v37 description];

      v39 = sub_1B6AB92E0();
      v41 = v40;

      *(v31 + 96) = v35;
      *(v31 + 104) = v36;
      *(v31 + 72) = v39;
      *(v31 + 80) = v41;
      sub_1B6AB8F70("Upload dropbox failed to decode UTF8 string for try number data for file %{public}@, data=%{public}@", 100, 2, &dword_1B697C000, v72, v71, v31);
      sub_1B69AE288(v73, v74);

      *a1 = 1;
      *(a1 + 8) = 1;
      return;
    }

    v19 = v18;
    v20 = HIBYTE(v18) & 0xF;
    v21 = v17 & 0xFFFFFFFFFFFFLL;
    if ((v18 & 0x2000000000000000) != 0)
    {
      v22 = HIBYTE(v18) & 0xF;
    }

    else
    {
      v22 = v17 & 0xFFFFFFFFFFFFLL;
    }

    v24 = v16;
    v23 = v15;
    if (!v22)
    {
LABEL_77:
      v56 = a1;
      v57 = v17;
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v58 = qword_1EDBCCB28;
      v59 = sub_1B6AB98E0();
      sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1B6ABF500;
      v61 = sub_1B6AB8B80();
      v63 = v62;
      v64 = MEMORY[0x1E69E6158];
      *(v60 + 56) = MEMORY[0x1E69E6158];
      v65 = sub_1B698CEC0();
      *(v60 + 32) = v61;
      *(v60 + 40) = v63;
      *(v60 + 96) = v64;
      *(v60 + 104) = v65;
      *(v60 + 64) = v65;
      *(v60 + 72) = v57;
      *(v60 + 80) = v19;
      sub_1B6AB8F70("Upload dropbox failed to parse integer from try number string for file %{public}@, string=%{public}@", 100, 2, &dword_1B697C000, v58, v59, v60);
      sub_1B69AE288(v73, v74);

      *v56 = 1;
      *(v56 + 8) = 1;
      return;
    }

    if ((v19 & 0x1000000000000000) != 0)
    {
      v66 = v17;

      v27 = sub_1B6AB1B98(v66, v19, 10);
      v68 = v67;

      v17 = v66;
      v24 = v16;
      v23 = v74;
      if (v68)
      {
        goto LABEL_77;
      }

      goto LABEL_81;
    }

    if ((v19 & 0x2000000000000000) != 0)
    {
      v76[0] = v17;
      v76[1] = v19 & 0xFFFFFFFFFFFFFFLL;
      if (v17 == 43)
      {
        if (v20)
        {
          v21 = v20 - 1;
          if (v20 != 1)
          {
            v27 = 0;
            v48 = v76 + 1;
            while (1)
            {
              v49 = *v48 - 48;
              if (v49 > 9)
              {
                break;
              }

              v50 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v50 + v49;
              if (__OFADD__(v50, v49))
              {
                break;
              }

              ++v48;
              if (!--v21)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_75;
        }

LABEL_86:
        __break(1u);
        return;
      }

      if (v17 != 45)
      {
        if (v20)
        {
          v27 = 0;
          v53 = v76;
          while (1)
          {
            v54 = *v53 - 48;
            if (v54 > 9)
            {
              break;
            }

            v55 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v55 + v54;
            if (__OFADD__(v55, v54))
            {
              break;
            }

            ++v53;
            if (!--v20)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_75;
      }

      if (v20)
      {
        v21 = v20 - 1;
        if (v20 != 1)
        {
          v27 = 0;
          v42 = v76 + 1;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 - v43;
            if (__OFSUB__(v44, v43))
            {
              break;
            }

            ++v42;
            if (!--v21)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }
    }

    else
    {
      if ((v17 & 0x1000000000000000) != 0)
      {
        v25 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v69 = v17;
        v25 = sub_1B6AB9D40();
        v17 = v69;
        v21 = v70;
        v24 = v16;
        v23 = v74;
      }

      v26 = *v25;
      if (v26 == 43)
      {
        if (v21 >= 1)
        {
          if (--v21)
          {
            v27 = 0;
            if (v25)
            {
              v45 = v25 + 1;
              while (1)
              {
                v46 = *v45 - 48;
                if (v46 > 9)
                {
                  goto LABEL_75;
                }

                v47 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_75;
                }

                v27 = v47 + v46;
                if (__OFADD__(v47, v46))
                {
                  goto LABEL_75;
                }

                ++v45;
                if (!--v21)
                {
                  goto LABEL_76;
                }
              }
            }

            goto LABEL_74;
          }

          goto LABEL_75;
        }

        goto LABEL_85;
      }

      if (v26 != 45)
      {
        if (v21)
        {
          v27 = 0;
          if (v25)
          {
            while (1)
            {
              v51 = *v25 - 48;
              if (v51 > 9)
              {
                goto LABEL_75;
              }

              v52 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_75;
              }

              v27 = v52 + v51;
              if (__OFADD__(v52, v51))
              {
                goto LABEL_75;
              }

              ++v25;
              if (!--v21)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_74;
        }

LABEL_75:
        v27 = 0;
        LOBYTE(v21) = 1;
LABEL_76:
        LOBYTE(v77) = v21;
        if (v21)
        {
          goto LABEL_77;
        }

LABEL_81:
        sub_1B69AE288(v24, v23);

        *a1 = v27;
        *(a1 + 8) = 0;
        return;
      }

      if (v21 >= 1)
      {
        if (--v21)
        {
          v27 = 0;
          if (v25)
          {
            v28 = v25 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_75;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_75;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_75;
              }

              ++v28;
              if (!--v21)
              {
                goto LABEL_76;
              }
            }
          }

LABEL_74:
          LOBYTE(v21) = 0;
          goto LABEL_76;
        }

        goto LABEL_75;
      }

      __break(1u);
    }

    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v77 = v1;
  v6 = v1;
  sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast())
  {
    if (!v76[2])
    {

      *a1 = 0;
      *(a1 + 8) = 1;
      return;
    }
  }

  v75 = a1;
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDBCCB28;
  v8 = sub_1B6AB98E0();
  sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B6ABF500;
  v10 = sub_1B6AB8B80();
  v12 = v11;
  v13 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v14 = sub_1B698CEC0();
  *(v9 + 64) = v14;
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v77 = v1;
  sub_1B6AB9DF0();
  *(v9 + 96) = v13;
  *(v9 + 104) = v14;
  *(v9 + 72) = 0;
  *(v9 + 80) = 0xE000000000000000;
  sub_1B6AB8F70("Upload dropbox failed to read file state for file %{public}@, error=%{public}@", 78, 2, &dword_1B697C000, v7, v8, v9);

  *v75 = 1;
  *(v75 + 8) = 1;
}

char *sub_1B699E9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v27 = sub_1B699EC00(a3);
  v28 = v9;
  v26[2] = v5;
  v26[3] = a1;
  v26[4] = a2;
  v26[5] = a3;
  v10 = &v27;
  if ((sub_1B699ECC0(sub_1B699F030, v26) & 0x8000000000000000) == 0)
  {
    v11 = sub_1B6AB8C40();
LABEL_3:
    v10 = v11;
LABEL_17:
    sub_1B6993C94(v27, v28);
    return v10;
  }

  v12 = MEMORY[0x1B8C977F0]();
  switch(v12)
  {
    case 93:
      v10 = 0;
      goto LABEL_17;
    case 34:
      sub_1B6AB8B80();
      v14 = sub_1B6AB9350();

      v15 = sub_1B6AB9350();
      v16 = getxattr((v14 + 32), (v15 + 32), 0, 0, 0, 0);

      if ((v16 & 0x8000000000000000) == 0)
      {
        v18 = v16;
        v10 = v5;
        v11 = sub_1B699E9F0(a1, a2, v18);
        if (v4)
        {
          goto LABEL_17;
        }

        goto LABEL_3;
      }

      break;
    case 2:
      sub_1B6A9204C();
      swift_allocError();
      v13[1] = 0;
      v13[2] = 0;
      *v13 = 0;
LABEL_16:
      swift_willThrow();
      goto LABEL_17;
    default:
      v19 = MEMORY[0x1B8C977F0]();
      v20 = MEMORY[0x1B8C977F0]();
      v17 = strerror(v20);
      if (v17)
      {
LABEL_15:
        v10 = sub_1B6AB93B0();
        v24 = v23;
        sub_1B6A9204C();
        swift_allocError();
        *v25 = v19;
        v25[1] = v10;
        v25[2] = v24;
        goto LABEL_16;
      }

      __break(1u);
      break;
  }

  v19 = MEMORY[0x1B8C977F0](v17);
  v21 = MEMORY[0x1B8C977F0]();
  result = strerror(v21);
  if (result)
  {
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B699EC00(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1B699ECA0(result);
    }

    else
    {
      sub_1B6AB8950();
      swift_allocObject();
      sub_1B6AB8910();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1B6AB8C00();
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

unint64_t sub_1B699ECA0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

char *sub_1B699ECC0(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19 = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_1B6993C94(v7, v6);
      *&v18 = v7;
      WORD4(v18) = v6;
      BYTE10(v18) = BYTE2(v6);
      BYTE11(v18) = BYTE3(v6);
      BYTE12(v18) = BYTE4(v6);
      BYTE13(v18) = BYTE5(v6);
      BYTE14(v18) = BYTE6(v6);
      result = a1(&v17, &v18, &v18 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = DWORD2(v18) | ((WORD6(v18) | (BYTE14(v18) << 16)) << 32);
      *v4 = v18;
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1B6993C94(v7, v6);
    *v4 = xmmword_1B6ABD8A0;
    sub_1B6993C94(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (sub_1B6AB8900() && __OFSUB__(v7, sub_1B6AB8930()))
      {
LABEL_22:
        __break(1u);
      }

      sub_1B6AB8950();
      swift_allocObject();
      v14 = sub_1B6AB88E0();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_1B69B1028(v7, v7 >> 32, a1);

      *v4 = v7;
      v4[1] = v12 | 0x4000000000000000;
      if (!v3)
      {
        return v15;
      }

      return result;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v8 == 2)
  {

    sub_1B6993C94(v7, v6);
    *&v18 = v7;
    *(&v18 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1B6ABD8A0;
    sub_1B6993C94(0, 0xC000000000000000);
    sub_1B6AB8BC0();
    v11 = *(&v18 + 1);
    result = sub_1B69B1028(*(v18 + 16), *(v18 + 24), a1);
    *v4 = v18;
    v4[1] = v11 | 0x8000000000000000;
  }

  else
  {
    *(&v18 + 7) = 0;
    *&v18 = 0;
    result = a1(&v17, &v18, &v18);
    if (!v3)
    {
      return v17;
    }
  }

  return result;
}

uint64_t sub_1B699F050@<X0>(void *a1@<X0>, size_t a3@<X5>, ssize_t *a4@<X8>)
{
  sub_1B6AB8B80();
  v7 = sub_1B6AB9350();

  v8 = sub_1B6AB9350();
  v9 = getxattr((v7 + 32), (v8 + 32), a1, a3, 0, 0);

  *a4 = v9;
  return result;
}

uint64_t sub_1B699F100(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = result + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_state;
  *v4 = *a2;
  *(v4 + 8) = v3;
  if ((v3 & 1) == 0)
  {
    v5 = result;
    sub_1B699F418();
    v6 = MEMORY[0x1E69E6530];
    v7 = sub_1B6AB9BB0();
    v9 = sub_1B699F46C(v7, v8);
    v11 = v10;
    sub_1B699FBE4(v9, v10, 0xD00000000000003ELL, 0x80000001B6ACD8E0);
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v12 = qword_1EDBCCB28;
    v13 = sub_1B6AB98D0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B6ABF500;
    v15 = MEMORY[0x1E69E65A8];
    *(v14 + 56) = v6;
    *(v14 + 64) = v15;
    *(v14 + 32) = v2;
    v17 = *(v5 + 16);
    v16 = *(v5 + 24);
    *(v14 + 96) = MEMORY[0x1E69E6158];
    *(v14 + 104) = sub_1B698CEC0();
    *(v14 + 72) = v17;
    *(v14 + 80) = v16;

    sub_1B6AB8F70("Upload dropbox set batch.closed.try-number attribute to %d for identifier=%@", 76, 2, &dword_1B697C000, v12, v13, v14);
    sub_1B6993C94(v9, v11);
  }

  return result;
}

unint64_t sub_1B699F418()
{
  result = qword_1EDBCB670[0];
  if (!qword_1EDBCB670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBCB670);
  }

  return result;
}

uint64_t sub_1B699F46C(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;
  sub_1B699F974();

  if (swift_dynamicCast())
  {
    sub_1B6980E70(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1B6AB89B0();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1B699F9D8(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1B6AB9D40();
  }

  sub_1B699FA64(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1B69D5FDC(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v34[2] = v39;
  v10 = sub_1B69D53BC(sub_1B69D634C, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1B6AB8C10();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1B69D5E18(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1B6AB93C0();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1B6AB9400();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1B6AB9D40();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1B69D5E18(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1B6AB93D0();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1B6AB8C30();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1B6AB8C30();
    sub_1B69AE288(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1B69AE288(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1B6994494(*&__src[0], *(&__src[0] + 1));

  sub_1B6993C94(v32, *(&v32 + 1));
  return v32;
}

unint64_t sub_1B699F974()
{
  result = qword_1EDBCA480;
  if (!qword_1EDBCA480)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBCA480);
  }

  return result;
}

uint64_t sub_1B699F9D8(uint64_t a1)
{
  sub_1B69D63D4(0, &qword_1EDBCA478, sub_1B699F974, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1B699FA64@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1B699FB2C(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1B6AB8950();
      swift_allocObject();
      v8 = sub_1B6AB88F0();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1B6AB8C00();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_1B699FB2C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
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

void sub_1B699FBE4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v38[19] = *MEMORY[0x1E69E9840];
  v38[5] = a3;
  v38[6] = a4;
  v38[7] = a1;
  v38[8] = a2;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v38, 0, 14);
      sub_1B6AB8B80();
      v15 = sub_1B6AB9350();

      v16 = sub_1B6AB9350();
      v17 = setxattr((v15 + 32), (v16 + 32), v38, 0, 0, 0);

      if ((v17 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v38[0] = a1;
      LOWORD(v38[1]) = a2;
      BYTE2(v38[1]) = BYTE2(a2);
      BYTE3(v38[1]) = BYTE3(a2);
      BYTE4(v38[1]) = BYTE4(a2);
      BYTE5(v38[1]) = BYTE5(a2);
      v8 = BYTE6(a2);
      sub_1B6AB8B80();
      v9 = sub_1B6AB9350();

      v10 = sub_1B6AB9350();
      v11 = setxattr((v9 + 32), (v10 + 32), v38, v8, 0, 0);

      if ((v11 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    v12 = a1;
    v13 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  v14 = sub_1B6A91EEC(v12, v13, sub_1B6A91EC8);
  if (v4)
  {
LABEL_19:

    __break(1u);
    return;
  }

  if ((v14 & 0x80000000) == 0)
  {
    return;
  }

LABEL_12:
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  v18 = qword_1EDBCCB28;
  v19 = sub_1B6AB98E0();
  sub_1B6A91F9C(0, &qword_1EDBCCC50, sub_1B6994A40);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B6ABD530;
  v21 = sub_1B6AB8B80();
  v23 = v22;
  v24 = MEMORY[0x1E69E6158];
  *(v20 + 56) = MEMORY[0x1E69E6158];
  v25 = sub_1B698CEC0();
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  *(v20 + 96) = v24;
  *(v20 + 104) = v25;
  *(v20 + 64) = v25;
  *(v20 + 72) = a3;
  *(v20 + 80) = a4;

  LODWORD(v38[0]) = MEMORY[0x1B8C977F0](v26);
  v27 = sub_1B6ABA080();
  *(v20 + 136) = v24;
  *(v20 + 144) = v25;
  *(v20 + 112) = v27;
  *(v20 + 120) = v28;
  sub_1B6AB8F70("Failed to set extended attribute, path=%{public}@, name=%{public}@, errno=%{public}@", 84, 2, &dword_1B697C000, v18, v19, v20);

  v29 = *MEMORY[0x1E696A798];
  v30 = MEMORY[0x1B8C977F0]();
  sub_1B6A91F9C(0, &qword_1EDBCB610, sub_1B69B4824);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6ABD890;
  *(inited + 32) = sub_1B6AB92E0();
  *(inited + 40) = v32;
  v33 = MEMORY[0x1B8C977F0]();
  if (!strerror(v33))
  {

    __break(1u);
    goto LABEL_19;
  }

  v34 = sub_1B6AB93B0();
  *(inited + 72) = v24;
  *(inited + 48) = v34;
  *(inited + 56) = v35;
  sub_1B69B4888(inited);
  swift_setDeallocating();
  sub_1B6A91FF0(inited + 32);
  v36 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v37 = sub_1B6AB91F0();

  [v36 initWithDomain:v29 code:v30 userInfo:v37];

  swift_willThrow();
}

uint64_t sub_1B69A0068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a3;
  v5 = sub_1B6AB8BB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v55 = &v51 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v54 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v51 - v14;
  v16 = sub_1B6AB8B00();
  v17 = *(v6 + 16);
  if (v16)
  {
    v53 = *(v6 + 16);
    v17(v15, a1, v5);
    v56 = a2;
    v18 = sub_1B6AB8F80();
    v19 = sub_1B6AB9900();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      LODWORD(v52) = v19;
      v21 = v20;
      v22 = swift_slowAlloc();
      *&v58[0] = v22;
      *v21 = 136446210;
      v51 = sub_1B6AB8AC0();
      v24 = v23;
      (*(v6 + 8))(v15, v5);
      v25 = sub_1B698F63C(v51, v24, v58);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1B697C000, v18, v52, "Flush manager attempting to flush sub-directory, url=%{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1B8C99550](v22, -1, -1);
      MEMORY[0x1B8C99550](v21, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v15, v5);
    }

    v36 = v54;
    v37 = a1;
    v51 = a1;
    v38 = v53;
    v53(v54, v37, v5);
    v39 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v52 = swift_allocObject();
    v40 = *(v6 + 32);
    v40(v52 + v39, v36, v5);
    v41 = v55;
    v38(v55, v51, v5);
    v42 = swift_allocObject();
    v40(v42 + v39, v41, v5);
    sub_1B6982544(v56 + 184, v58);
    v43 = type metadata accessor for StaticUploadDropboxPathProvider(0);
    v44 = swift_allocObject();
    v45 = *(v6 + 56);
    v45(v44 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider____lazy_storage___baseURL, 1, 1, v5);
    v45(v44 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider____lazy_storage___debugBaseURL, 1, 1, v5);
    v46 = (v44 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider_baseURLProvider);
    v47 = v52;
    *v46 = sub_1B699D2C4;
    v46[1] = v47;
    v48 = (v44 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider_debugURLProvider);
    *v48 = sub_1B69EC628;
    v48[1] = v42;
    result = sub_1B6980E70(v58, v44 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider_fileManager);
    v50 = v57;
    v57[3] = v43;
    v50[4] = &off_1F2E7D030;
    *v50 = v44;
  }

  else
  {
    v17(v9, a1, v5);
    v26 = sub_1B6AB8F80();
    v27 = sub_1B6AB9900();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v56 = a2;
      v30 = v29;
      *&v58[0] = v29;
      *v28 = 136446210;
      v31 = sub_1B6AB8AC0();
      v33 = v32;
      (*(v6 + 8))(v9, v5);
      v34 = sub_1B698F63C(v31, v33, v58);
      v35 = v57;

      *(v28 + 4) = v34;
      _os_log_impl(&dword_1B697C000, v26, v27, "Flush manager attempting to flush file, url=%{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      a2 = v56;
      MEMORY[0x1B8C99550](v30, -1, -1);
      MEMORY[0x1B8C99550](v28, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
      v35 = v57;
    }

    return sub_1B6982544(a2 + 144, v35);
  }

  return result;
}

uint64_t UploadDropboxFile.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_url;
  v2 = sub_1B6AB8BB0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1B69AD890(v0 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionStartDate, &qword_1EDBCCF40, MEMORY[0x1E6969530]);

  return swift_deallocClassInstance();
}

uint64_t AccessTracker.time<A>(_:submitAndRestartWithSession:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6AB90F0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v16 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v13 = v16;
    (*(v11 + 104))(v13, *MEMORY[0x1E69E8020], v10);
    v17 = v16;
    LOBYTE(v16) = sub_1B6AB9110();
    result = (*(v11 + 8))(v13, v10);
    if (v16)
    {
      v18 = *(v15 + 104);

      sub_1B6AB8DA0();
      sub_1B69A0AA0(a1, v18, v9, a2 & 1, v19, v20);

      return (*(v7 + 8))(v9, v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B69A0938(uint64_t a1)
{
  result = sub_1B6AB8DB0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B69A09A4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!(a2 >> 62))
  {
    return sub_1B698DB14(a3, a3);
  }

  if (a2 >> 62 == 1)
  {
    v3 = [swift_getObjCClassFromMetadata() eventName];
    v4 = sub_1B6AB92E0();
  }

  else
  {
    v4 = *(a1 + OBJC_IVAR___AARawEvent_name);
  }

  return v4;
}

uint64_t sub_1B69A0A44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1B69EDC48(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1B69A0AA0(void *a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v59 = a4;
  v58 = a3;
  v12 = type metadata accessor for Tracker.Timer(0);
  v60 = *(v12 - 8);
  v61 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v62 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A56C3C(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v57 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - v17;
  v19 = sub_1B6AB90F0();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(*(v7 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v22 = v23;
  (*(v20 + 104))(v22, *MEMORY[0x1E69E8020], v19);
  v24 = v23;
  LOBYTE(v23) = sub_1B6AB9110();
  result = (*(v20 + 8))(v22, v19);
  if (v23)
  {
    v56 = a1;
    v52 = a2;
    v54 = a5;
    v55 = a6;
    v26 = sub_1B69A09A4(a1, a2, a5);
    v28 = v27;
    swift_beginAccess();
    v53 = v7;
    v29 = *(v7 + 112);
    if (*(v29 + 16) && (, v30 = sub_1B6993940(v26, v28), v32 = v31, , (v32 & 1) != 0))
    {
      v33 = v60;
      sub_1B699A32C(*(v29 + 56) + *(v60 + 72) * v30, v18, type metadata accessor for Tracker.Timer);

      (*(v33 + 56))(v18, 0, 1, v61);
      return sub_1B6A5718C(v18, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
    }

    else
    {

      v34 = v61;
      v35 = *(v60 + 56);
      v35(v18, 1, 1, v61);
      sub_1B6A5718C(v18, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
      v36 = sub_1B6AB8DB0();
      v37 = v62;
      (*(*(v36 - 8) + 16))(v62, v58, v36);
      v38 = v55;
      v39 = v56;
      v40 = v52;
      v41 = v54;
      v42 = sub_1B69A09A4(v56, v52, v54);
      v44 = v43;
      v45 = v37;
      v46 = v57;
      sub_1B699A32C(v45, v57, type metadata accessor for Tracker.Timer);
      v35(v46, 0, 1, v34);
      swift_beginAccess();
      sub_1B69A0FE4(v46, v42, v44);
      swift_endAccess();
      if (v59)
      {
        v47 = sub_1B69A09A4(v39, v40, v41);
        v49 = v48;
        v63[3] = type metadata accessor for Tracker.RestartTimer(0, v41, v38, v50);
        v63[4] = &off_1F2E7AA40;
        v63[0] = v39;
        v63[1] = v40;
        swift_beginAccess();
        sub_1B6992B50(v39, v40);
        sub_1B69E1EC8(v63, v47, v49);
        swift_endAccess();
      }

      return sub_1B6984D38(v62, type metadata accessor for Tracker.Timer);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69A0FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B69E8EF8(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Tracker.Timer(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1B69E8244(a1, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
    sub_1B6A96FA4(a2, a3, v9);

    return sub_1B69E8244(v9, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  }

  else
  {
    sub_1B69E86F0(a1, v12, type metadata accessor for Tracker.Timer);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1B69A11E8(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

void sub_1B69A11E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1B6993940(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Tracker.Timer(0);
      sub_1B69E82B4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Tracker.Timer);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1B69DF54C();
    goto LABEL_7;
  }

  sub_1B69A1354(v15, a4 & 1);
  v21 = sub_1B6993940(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_1B6ABA190();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1B69A16E0(v12, a2, a3, a1, v18);
}

uint64_t sub_1B69A1354(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Tracker.Timer(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1B69E0DB0(0, &unk_1EDBCAA30, 255, type metadata accessor for Tracker.Timer);
  v40 = v4;
  result = sub_1B6AB9E80();
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
        sub_1B69E0FC0(v28, v41, type metadata accessor for Tracker.Timer);
      }

      else
      {
        sub_1B69E0F58(v28, v41, type metadata accessor for Tracker.Timer);
      }

      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
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
      result = sub_1B69E0FC0(v41, *(v9 + 56) + v27 * v17, type metadata accessor for Tracker.Timer);
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

uint64_t sub_1B69A16E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Tracker.Timer(0);
  result = sub_1B69E86F0(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for Tracker.Timer);
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

unint64_t sub_1B69A178C@<X0>(unint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  if (a2)
  {
    LOBYTE(v6) = *(a4 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity);
    result = *(a4 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity + 1);
LABEL_5:
    *a5 = a3;
    *(a5 + 8) = a6;
    *(a5 + 16) = v6 & 1;
    *(a5 + 17) = result;
    return result;
  }

  if (result < 4)
  {
    v6 = 0xEu >> (result & 0xF);
    goto LABEL_5;
  }

  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

void sub_1B69A1808()
{
  if (!qword_1EDBCBB98)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBCBB98);
    }
  }
}

char *sub_1B69A1870(char *result)
{
  v2 = result;
  if (*(v1 + 16))
  {
    v3 = 0;
LABEL_5:
    *v2 = v3;
    return result;
  }

  v4 = *(v1 + 8);
  if (*v1 <= v4)
  {
    result = sub_1B6983348(*v1, v4);
    v3 = 4;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_1B69A18C4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B6993940(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B69DDC84();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B69976F8(v16, a4 & 1);
    v11 = sub_1B6993940(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1B6ABA190();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    sub_1B69979CC(a1, v22);
  }

  else
  {
    sub_1B69A1A14(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1B69A1A14(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B69979CC(a4, (a5[7] + 32 * a1));
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

uint64_t sub_1B69A1A80()
{
  v1 = sub_1B6AB9030();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B6AB9090();
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6AB9000();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1B6AB90C0();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v40 = &v35 - v14;
  v15 = sub_1B6AB9A00();
  v16 = *(v15 - 8);
  result = MEMORY[0x1EEE9AC00](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + 40);
  if (v20 > 0.0)
  {
    v35 = v4;
    v36 = v5;
    v37 = v2;
    v38 = v1;
    v39 = v0;
    if (*(v0 + 48))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1B6AB9A30();
      swift_unknownObjectRelease();
    }

    sub_1B69A20B8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B69A2104(&qword_1EDBCBB38, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
    v21 = MEMORY[0x1E69E80B0];
    sub_1B69A214C(0, &qword_1EDBCBB60, MEMORY[0x1E69E80B0], MEMORY[0x1E69E62F8]);
    sub_1B6988140(&qword_1EDBCBB58, &qword_1EDBCBB60, v21);
    sub_1B6AB9BE0();
    v22 = sub_1B6AB9A10();
    (*(v16 + 8))(v19, v15);
    ObjectType = swift_getObjectType();
    sub_1B6AB90B0();
    v24 = v40;
    sub_1B6AB9100();
    v25 = v42;
    v26 = *(v41 + 8);
    v26(v13, v42);
    *v9 = 0;
    v28 = v43;
    v27 = v44;
    (*(v43 + 104))(v9, *MEMORY[0x1E69E7F28], v44);
    MEMORY[0x1B8C98300](v24, v9, ObjectType, v20);
    (*(v28 + 8))(v9, v27);
    v26(v24, v25);
    v29 = v39;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v31 = swift_allocObject();
    *(v31 + 16) = v20;
    *(v31 + 24) = Strong;
    aBlock[4] = sub_1B6A9AC38;
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B698E534;
    aBlock[3] = &block_descriptor_14;
    v32 = _Block_copy(aBlock);

    v33 = v45;
    sub_1B6AB9060();
    v34 = v35;
    sub_1B69A21B0();
    sub_1B6AB9A20();
    _Block_release(v32);

    (*(v37 + 8))(v34, v38);
    (*(v46 + 8))(v33, v36);

    sub_1B6AB9A40();
    *(v29 + 48) = v22;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B69A2080()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1B69A20B8()
{
  result = qword_1EDBCBB30;
  if (!qword_1EDBCBB30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBCBB30);
  }

  return result;
}

uint64_t sub_1B69A2104(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B69A214C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B69A21B0()
{
  sub_1B6AB9030();
  sub_1B69A2104(&qword_1EDBCCC70, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v0 = MEMORY[0x1E69E7F60];
  sub_1B69A214C(0, &qword_1EDBCBB90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B6988140(&qword_1EDBCBB80, &qword_1EDBCBB90, v0);
  return sub_1B6AB9BE0();
}

uint64_t sub_1B69A22AC(uint64_t a1, uint64_t a2, void *a3)
{
  v104 = a3;
  v109 = sub_1B6AB90F0();
  v6 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = (&v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks;
  swift_beginAccess();
  v113 = a1;
  v9 = *(a1 + v8);
  v10 = v3;
  v11 = v9 + 64;
  v12 = 1 << *(v9 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v9 + 64);
  v112 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_trackingConsent;
  v111 = a2 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter;
  v110 = (v12 + 63) >> 6;
  v107 = *MEMORY[0x1E69E8020];
  v105 = (v6 + 8);
  v106 = (v6 + 104);
  v115 = v9;

  v15 = 0;
  *&v16 = 136315138;
  v101 = v16;
  v103 = xmmword_1B6ABF500;
  v114 = v11;
  if (!v14)
  {
    goto LABEL_9;
  }

LABEL_8:
  while (2)
  {
    v117 = v15;
    v17 = v15;
LABEL_17:
    v20 = __clz(__rbit64(v14));
    v21 = (v14 - 1) & v14;
    v22 = v20 | (v17 << 6);
    v23 = (*(v115 + 48) + 16 * v22);
    v25 = *v23;
    v24 = v23[1];
    sub_1B6982544(*(v115 + 56) + 40 * v22, &v129);
    *&v135 = v25;
    *(&v135 + 1) = v24;
    sub_1B699A784(&v129, &v136);

    while (1)
    {
      v144 = v135;
      v145[0] = v136;
      v145[1] = v137;
      v146 = v138;
      if (!*(&v135 + 1))
      {
      }

      v116 = v21;

      sub_1B699A784(v145, v141);
      v26 = v142;
      v27 = v143;
      __swift_project_boxed_opaque_existential_1(v141, v142);
      (*(v27 + 24))(&v129, v26, v27);
      if (!*(&v129 + 1))
      {
        sub_1B6A0A674(&v129, &qword_1EDBCB490, &type metadata for AnyDataEventEntry);
        goto LABEL_7;
      }

      v137 = v131;
      v138 = v132;
      v139 = v133;
      v140 = v134;
      v135 = v129;
      v136 = v130;
      sub_1B6982544(&v136, v126);
      if (v139 == 1)
      {
        if (qword_1EDBC9F60 != -1)
        {
          swift_once();
        }

        sub_1B6ABA320();
        if (!v129)
        {
          goto LABEL_85;
        }

        v28 = *(*(v129 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) + OBJC_IVAR___AAAccessQueue_queue);
        v30 = v108;
        v29 = v109;
        *v108 = v28;
        (*v106)(v30, v107, v29);
        v31 = v28;
        LOBYTE(v28) = sub_1B6AB9110();
        (*v105)(v30, v29);
        if ((v28 & 1) == 0)
        {
          goto LABEL_84;
        }

        sub_1B69A5270(&v129);

        v11 = v114;
        if (v129 == 1)
        {
          if (qword_1EDBCAA70 != -1)
          {
            swift_once();
          }

          v32 = sub_1B6AB8F90();
          __swift_project_value_buffer(v32, qword_1EDBCFD80);
          sub_1B6A0A6D0(&v135, &v129);
          v33 = sub_1B6AB8F80();
          v34 = sub_1B6AB98E0();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            *&v123 = v36;
            *v35 = v101;
            v37 = v129;

            sub_1B69A6664(&v129);
            v38 = sub_1B698F63C(v37, *(&v37 + 1), &v123);

            *(v35 + 4) = v38;
            _os_log_impl(&dword_1B697C000, v33, v34, "Skipping session data for key: %s, because diagnostics consent is not given.", v35, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v36);
            v39 = v36;
            v11 = v114;
            MEMORY[0x1B8C99550](v39, -1, -1);
            v40 = v35;
LABEL_37:
            MEMORY[0x1B8C99550](v40, -1, -1);

            goto LABEL_75;
          }

          goto LABEL_74;
        }
      }

      v41 = *(v113 + v112);
      if (*(v41 + OBJC_IVAR___AATrackingConsent_consentEnforcement) != 1)
      {
        break;
      }

      if (BYTE1(v139) != 1)
      {
        break;
      }

      v42 = *(v41 + OBJC_IVAR___AATrackingConsent_consented);
      os_unfair_lock_lock((v42 + 20));
      v43 = *(v42 + 16);
      os_unfair_lock_unlock((v42 + 20));
      if (!v43)
      {
        break;
      }

      if (qword_1EDBCAA70 != -1)
      {
        swift_once();
      }

      v44 = sub_1B6AB8F90();
      __swift_project_value_buffer(v44, qword_1EDBCFD80);
      sub_1B6A0A6D0(&v135, &v129);
      v33 = sub_1B6AB8F80();
      v45 = sub_1B6AB98E0();
      if (os_log_type_enabled(v33, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *&v123 = v47;
        *v46 = v101;
        v48 = v129;

        sub_1B69A6664(&v129);
        v49 = sub_1B698F63C(v48, *(&v48 + 1), &v123);

        *(v46 + 4) = v49;
        _os_log_impl(&dword_1B697C000, v33, v45, "Skipping session data for key: %s, because tracking consent is not given.", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v47);
        v50 = v47;
        v11 = v114;
        MEMORY[0x1B8C99550](v50, -1, -1);
        v40 = v46;
        goto LABEL_37;
      }

LABEL_74:

      sub_1B69A6664(&v129);
LABEL_75:
      sub_1B69A6664(&v135);
      v14 = v116;
      __swift_destroy_boxed_opaque_existential_1(v126);
      __swift_destroy_boxed_opaque_existential_1(v141);
      v15 = v117;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (v110 <= v15 + 1)
      {
        v18 = v15 + 1;
      }

      else
      {
        v18 = v110;
      }

      v19 = v18 - 1;
      while (1)
      {
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_81;
        }

        if (v17 >= v110)
        {
          break;
        }

        v14 = *(v11 + 8 * v17);
        ++v15;
        if (v14)
        {
          v117 = v17;
          goto LABEL_17;
        }
      }

      v21 = 0;
      *&v138 = 0;
      v136 = 0u;
      v137 = 0u;
      v117 = v19;
      v135 = 0u;
    }

    v51 = v127;
    v52 = v128;
    __swift_project_boxed_opaque_existential_1(v126, v127);
    v53 = *(v111 + 8);
    v54 = *(v111 + 16);
    v55 = *(v111 + 17);
    LOBYTE(v129) = *v111;
    *(&v129 + 1) = v53;
    LOBYTE(v130) = v54;
    BYTE1(v130) = v55;
    v56 = v10;
    v57 = (*(v52 + 56))(&v129, v51, v52);
    if (v10)
    {
      __swift_destroy_boxed_opaque_existential_1(v126);
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v120 = qword_1EDBCCB28;
      LODWORD(v119) = sub_1B6AB98F0();
      sub_1B6A0A7A4(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v58 = swift_allocObject();
      *(v58 + 16) = v103;
      *&v129 = 0;
      *(&v129 + 1) = 0xE000000000000000;
      *&v123 = v10;
      sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
      sub_1B6AB9DF0();
      v60 = *(&v129 + 1);
      v59 = v129;
      v61 = MEMORY[0x1E69E6158];
      *(v58 + 56) = MEMORY[0x1E69E6158];
      v62 = sub_1B698CEC0();
      *(v58 + 64) = v62;
      *(v58 + 32) = v59;
      *(v58 + 40) = v60;
      *&v129 = 0;
      *(&v129 + 1) = 0xE000000000000000;
      sub_1B6AB9DF0();
      v63 = v129;
      *(v58 + 96) = v61;
      *(v58 + 104) = v62;
      *(v58 + 72) = v63;
      sub_1B6AB8F70("Your session data failed to serialize, you should fix this! error=%@, sessionData=%@", 84, 2, &dword_1B697C000, v120, v119, v58);

      sub_1B69A6664(&v135);
      v10 = 0;
      v11 = v114;
LABEL_7:
      __swift_destroy_boxed_opaque_existential_1(v141);
      v14 = v116;
      v15 = v117;
      if (v116)
      {
        continue;
      }

      goto LABEL_9;
    }

    break;
  }

  v102 = 0;
  v64 = sub_1B69FDE38(v57);

  v65 = v104;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v65;
  v147 = *v65;
  *v65 = 0x8000000000000000;
  v68 = v64 + 64;
  v69 = 1 << *(v64 + 32);
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  else
  {
    v70 = -1;
  }

  v71 = v70 & *(v64 + 64);
  v72 = (v69 + 63) >> 6;
  v118 = v64;

  v73 = 0;
  v119 = v72;
  while (2)
  {
    LODWORD(v120) = isUniquelyReferenced_nonNull_native;
    if (v71)
    {
      v75 = v73;
LABEL_59:
      v78 = __clz(__rbit64(v71));
      v71 &= v71 - 1;
      v79 = v78 | (v75 << 6);
      v80 = (*(v118 + 48) + 16 * v79);
      v82 = *v80;
      v81 = v80[1];
      sub_1B698FE74(*(v118 + 56) + 32 * v79, &v121);
      *&v123 = v82;
      *(&v123 + 1) = v81;
      sub_1B69979CC(&v121, &v124);

LABEL_60:
      v121 = v123;
      v122[0] = v124;
      v122[1] = v125;
      v83 = *(&v123 + 1);
      if (!*(&v123 + 1))
      {
        v130 = 0u;
        v131 = 0u;
        v129 = 0u;
LABEL_78:

        sub_1B69A6664(&v135);
        *v104 = v67;

        __swift_destroy_boxed_opaque_existential_1(v126);
        v10 = v102;
        v11 = v114;
        goto LABEL_7;
      }

      v84 = v121;
      sub_1B698FE74(v122, &v130);
      *&v129 = v84;
      *(&v129 + 1) = v83;

      sub_1B6A0BDA4(&v121, sub_1B69A1808);
      v85 = *(&v129 + 1);
      if (!*(&v129 + 1))
      {
        goto LABEL_78;
      }

      v86 = v68;
      v87 = v129;
      sub_1B69979CC(&v130, &v123);
      v89 = sub_1B6993940(v87, v85);
      v90 = v67[2];
      v91 = (v88 & 1) == 0;
      v92 = v90 + v91;
      if (__OFADD__(v90, v91))
      {
        goto LABEL_82;
      }

      v93 = v88;
      if (v67[3] >= v92)
      {
        if (v120)
        {
          if ((v88 & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          sub_1B69DDC84();
          if ((v93 & 1) == 0)
          {
            goto LABEL_69;
          }
        }
      }

      else
      {
        sub_1B69976F8(v92, v120 & 1);
        v94 = sub_1B6993940(v87, v85);
        if ((v93 & 1) != (v95 & 1))
        {
          goto LABEL_86;
        }

        v89 = v94;
        if ((v93 & 1) == 0)
        {
LABEL_69:
          v67 = v147;
          v147[(v89 >> 6) + 8] |= 1 << v89;
          v96 = (v67[6] + 16 * v89);
          *v96 = v87;
          v96[1] = v85;
          sub_1B69979CC(&v123, (v67[7] + 32 * v89));
          v97 = v67[2];
          v98 = __OFADD__(v97, 1);
          v99 = v97 + 1;
          if (v98)
          {
            goto LABEL_83;
          }

          v67[2] = v99;
          goto LABEL_48;
        }
      }

      v67 = v147;
      sub_1B698FE74(v147[7] + 32 * v89, &v121);
      __swift_destroy_boxed_opaque_existential_1(&v123);

      v74 = v67[7];
      __swift_destroy_boxed_opaque_existential_1((v74 + 32 * v89));
      sub_1B69979CC(&v121, (v74 + 32 * v89));
LABEL_48:
      isUniquelyReferenced_nonNull_native = 1;
      v68 = v86;
      v72 = v119;
      continue;
    }

    break;
  }

  if (v72 <= v73 + 1)
  {
    v76 = v73 + 1;
  }

  else
  {
    v76 = v72;
  }

  v77 = v76 - 1;
  while (1)
  {
    v75 = v73 + 1;
    if (__OFADD__(v73, 1))
    {
      break;
    }

    if (v75 >= v72)
    {
      v71 = 0;
      v124 = 0u;
      v125 = 0u;
      v73 = v77;
      v123 = 0u;
      goto LABEL_60;
    }

    v71 = *(v68 + 8 * v75);
    ++v73;
    if (v71)
    {
      v73 = v75;
      goto LABEL_59;
    }
  }

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
  result = sub_1B6ABA190();
  __break(1u);
  return result;
}

uint64_t sub_1B69A2EA0(uint64_t a1)
{
  v3 = sub_1B6AB90F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(*(v1 + 32) + OBJC_IVAR___AAAccessQueue_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = sub_1B6AB9110();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    result = swift_beginAccess();
    v10 = *(v1 + 48);
    v11 = *(v10 + 16);
    if (v11)
    {

      v12 = (v10 + 40);
      do
      {
        v13 = *v12;
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 32);
        swift_unknownObjectRetain();
        v15(a1, ObjectType, v13);
        swift_unknownObjectRelease();
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69A3050()
{
  if (*(v0 + 32))
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (qword_1EDBCAF40 != -1)
      {
        v3 = Strong;
        swift_once();
        Strong = v3;
      }

      [Strong flushWithCallbackQueue:qword_1EDBCAA10 completion:0];
    }
  }

  return sub_1B69A1A80();
}

uint64_t sub_1B69A3100(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

double sub_1B69A3110@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1B6993940(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B69DDC84();
      v10 = v12;
    }

    sub_1B69979CC((*(v10 + 56) + 32 * v8), a3);
    sub_1B69E5684(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *sub_1B69A31EC@<X0>(char *a1@<X8>)
{
  v2 = sub_1B6AB90F0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDBC9F60 != -1)
  {
    swift_once();
  }

  result = sub_1B6ABA320();
  if (!v11)
  {
    v9 = 2;
    goto LABEL_7;
  }

  v7 = *(*(v11 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) + OBJC_IVAR___AAAccessQueue_queue);
  *v5 = v7;
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8020], v2);
  v8 = v7;
  LOBYTE(v7) = sub_1B6AB9110();
  result = (*(v3 + 8))(v5, v2);
  if (v7)
  {
    sub_1B69A5270(&v10 + 7);

    v9 = HIBYTE(v10);
LABEL_7:
    *a1 = v9;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1B69A3378(_BYTE *a1@<X8>)
{
  v2 = sub_1B6AB8BB0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v6 = sub_1B6AB8F90();
  __swift_project_value_buffer(v6, qword_1EDBCFDA8);
  v7 = sub_1B6AB8F80();
  v8 = sub_1B6AB98D0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1B697C000, v7, v8, "Reading PublicEffectiveUserSettings", v9, 2u);
    MEMORY[0x1B8C99550](v9, -1, -1);
  }

  sub_1B6AB8AE0();
  v10 = sub_1B6AB8BD0();
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  sub_1B6AB8A40();
  swift_allocObject();
  sub_1B6AB8A30();
  sub_1B69A3794();
  sub_1B6AB8A20();
  sub_1B6993C94(v10, v12);

  v13 = v17[7];
  v14 = sub_1B6AB8F80();
  v15 = sub_1B6AB9900();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 67109120;
    *(v16 + 4) = v13;
    _os_log_impl(&dword_1B697C000, v14, v15, "Read PublicEffectiveUserSettings: %{BOOL}d", v16, 8u);
    MEMORY[0x1B8C99550](v16, -1, -1);
  }

  *a1 = v13 ^ 1;
}

unint64_t sub_1B69A3794()
{
  result = qword_1EDBC9EF0;
  if (!qword_1EDBC9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9EF0);
  }

  return result;
}

uint64_t sub_1B69A37E8(void *a1)
{
  sub_1B69A3990(0, &qword_1EDBC9B80, sub_1B69A39F0, &type metadata for EffectiveUserSettingsFile.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69A39F0();
  v9 = v8;
  sub_1B6ABA2A0();
  if (!v1)
  {
    sub_1B69A3AF4();
    sub_1B6AB9F90();
    (*(v5 + 8))(v7, v4);
    v9 = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9 & 1;
}

void sub_1B69A3990(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1B6AB9FC0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1B69A39F0()
{
  result = qword_1EDBC9F48;
  if (!qword_1EDBC9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F48);
  }

  return result;
}

unint64_t sub_1B69A3A48()
{
  result = qword_1EDBC9F38;
  if (!qword_1EDBC9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F38);
  }

  return result;
}

unint64_t sub_1B69A3AA0()
{
  result = qword_1EDBC9F40;
  if (!qword_1EDBC9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F40);
  }

  return result;
}

unint64_t sub_1B69A3AF4()
{
  result = qword_1EDBC9F18;
  if (!qword_1EDBC9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F18);
  }

  return result;
}

unint64_t sub_1B69A3B48()
{
  result = qword_1EDBC9EF8;
  if (!qword_1EDBC9EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9EF8);
  }

  return result;
}

uint64_t sub_1B69A3B9C(void *a1)
{
  sub_1B69A3990(0, &qword_1EDBC9B78, sub_1B69A3D44, &type metadata for EffectiveUserSettingsFile.RestrictedBools.CodingKeys);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69A3D44();
  v9 = v8;
  sub_1B6ABA2A0();
  if (!v1)
  {
    sub_1B69A3B48();
    sub_1B6AB9F90();
    (*(v5 + 8))(v7, v4);
    v9 = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9 & 1;
}

unint64_t sub_1B69A3D44()
{
  result = qword_1EDBC9F30;
  if (!qword_1EDBC9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F30);
  }

  return result;
}

unint64_t sub_1B69A3D9C()
{
  result = qword_1EDBC9F20;
  if (!qword_1EDBC9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F20);
  }

  return result;
}

unint64_t sub_1B69A3DF4()
{
  result = qword_1EDBC9F28;
  if (!qword_1EDBC9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F28);
  }

  return result;
}

uint64_t sub_1B69A3E48@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v13 = a2;
  sub_1B69A3990(0, &qword_1EDBC9B70, sub_1B69A3FE4, &type metadata for EffectiveUserSettingsFile.ValueBox.CodingKeys);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69A3FE4();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v13;
  v10 = sub_1B6AB9F60();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10 & 1;
  return result;
}

unint64_t sub_1B69A3FE4()
{
  result = qword_1EDBC9F10;
  if (!qword_1EDBC9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F10);
  }

  return result;
}

unint64_t sub_1B69A403C()
{
  result = qword_1EDBC9F00;
  if (!qword_1EDBC9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F00);
  }

  return result;
}

unint64_t sub_1B69A4094()
{
  result = qword_1EDBC9F08;
  if (!qword_1EDBC9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F08);
  }

  return result;
}

uint64_t sub_1B69A40E8(uint64_t a1)
{
  result = sub_1B6AB9B30();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B69A419C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B69A4218(a2, a3, a4);
  }

  return result;
}

void sub_1B69A4218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *(v3 + 32);
  v11 = *(v32 + OBJC_IVAR___AAAccessQueue_queue);
  *v10 = v11;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = v11;
  v13 = sub_1B6AB9110();
  (*(v8 + 8))(v10, v7);
  if ((v13 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    return;
  }

  if (!a2)
  {
    swift_beginAccess();
    v22 = *(v3 + 48);
    v23 = *(v22 + 16);

    if (!v23)
    {
LABEL_18:

      return;
    }

    v24 = 0;
    v25 = v22 + 32;
    while (v24 < *(v22 + 16))
    {
      v34 = &unk_1F2E868A0;
      if (swift_dynamicCastObjCProtocolConditional())
      {
        swift_getObjectType();
        v27 = qword_1EDBCAF40;
        swift_unknownObjectRetain();
        if (v27 != -1)
        {
          swift_once();
        }

        v26 = qword_1EDBCAA10;
        Flushable.flush(callbackQueue:completion:)(v26, 0, 0);

        swift_unknownObjectRelease();
      }

      ++v24;
      v25 += 16;
      if (v23 == v24)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v14 = dispatch_group_create();
  swift_beginAccess();
  v15 = *(*(v3 + 48) + 16);
  if (v15)
  {
    v29 = a1;
    v30 = a2;
    v31 = a3;

    v16 = 32;
    do
    {
      aBlock[6] = &unk_1F2E868A0;
      v17 = swift_dynamicCastObjCProtocolConditional();
      if (v17)
      {
        v18 = v17;
        swift_unknownObjectRetain();
        dispatch_group_enter(v14);
        v19 = swift_allocObject();
        *(v19 + 16) = v14;
        aBlock[4] = sub_1B69C8DA0;
        aBlock[5] = v19;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B698E534;
        aBlock[3] = &block_descriptor;
        v20 = _Block_copy(aBlock);
        v21 = v14;

        [v18 flushWithCallbackQueue:v32 completion:v20];
        _Block_release(v20);
        swift_unknownObjectRelease();
      }

      v16 += 16;
      --v15;
    }

    while (v15);

    a2 = v30;
    a3 = v31;
    a1 = v29;
  }

  sub_1B69877A4(a1, a2, a3);

  sub_1B69A3100(a2, a3);
}

uint64_t sub_1B69A45CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t objectdestroy_27Tm()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

id *DataEventType.toDict(dataEventFormatter:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v39 = a2;
  v43[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1B6AB8850();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6A3682C(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B6AB9E10();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = *a1;
  v14 = *(a1 + 1);
  v15 = a1[16];
  v16 = a1[17];
  sub_1B6AB88A0();
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    __break(1u);
  }

  (*(v11 + 32))(v13, v9, v10);
  v43[3] = &type metadata for TimeDurationGranularity;
  LOBYTE(v43[0]) = v15;
  BYTE1(v43[0]) = v16;
  v17 = v42;
  v18 = sub_1B6AB8880();
  sub_1B69A4BDC(v43, v13);
  v18(v42, 0);
  v19 = swift_allocObject();
  *(v19 + 16) = v35;
  *(v19 + 24) = v14;
  *(v19 + 32) = v15;
  *(v19 + 33) = v16;
  *v6 = sub_1B69C0864;
  v6[1] = v19;
  (*(v36 + 104))(v6, *MEMORY[0x1E6967FB8], v37);
  sub_1B6AB8860();
  v20 = v40;
  v21 = sub_1B6AB8870();
  if (!v20)
  {
    v24 = v21;
    v25 = v22;
    v26 = objc_opt_self();
    v27 = sub_1B6AB8C60();
    v42[0] = 0;
    v17 = [v26 JSONObjectWithData:v27 options:0 error:v42];

    v28 = v42[0];
    if (v17)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v43, v42);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v17 = v41;
        v29 = sub_1B6AB91F0();
        v30 = [v26 isValidJSONObject_];

        if (v30)
        {
          __swift_destroy_boxed_opaque_existential_1(v43);
          sub_1B6993C94(v24, v25);

          return v17;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v33 = v17;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v32 = 0;
      }

      swift_willThrow();
      sub_1B6993C94(v24, v25);

      __swift_destroy_boxed_opaque_existential_1(v43);
      return v17;
    }

    v31 = v28;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v24, v25);
  }

  return v17;
}

uint64_t sub_1B69A4BDC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1B69979CC(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_1B69A4D04(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_1B6AB9E10();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_1B69E8244(a1, &qword_1EB95AEB0, sub_1B69A536C);
    sub_1B6A96A98(a2, v9);
    v7 = sub_1B6AB9E10();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_1B69E8244(v9, &qword_1EB95AEB0, sub_1B69A536C);
  }

  return result;
}

_OWORD *sub_1B69A4D04(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B6AB9E10();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1B69A5E70(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1B69DE7CC();
      goto LABEL_7;
    }

    sub_1B69A4EDC(v17, a3 & 1);
    v23 = sub_1B69A5E70(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1B69A606C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1B6ABA190();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1(v21);

  return sub_1B69979CC(a1, v21);
}

uint64_t sub_1B69A4EDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1B6AB9E10();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1B69A52FC(0);
  v39 = v4;
  result = sub_1B6AB9E80();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_1B69979CC((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_1B698FE74(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_1B6AB9250();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_1B69979CC(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void sub_1B69A5270(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status;
  v4 = *(v1 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status);
  if (v4 == 2)
  {
    v5 = v1 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider;
    v6 = *(v5 + *(type metadata accessor for DiagnosticsConsentProvider(0) + 20));
    v6(&v8);
    v7 = v8;
    *(v1 + v3) = v8;
  }

  else
  {
    v7 = v4 & 1;
  }

  *a1 = v7;
}

void sub_1B69A52FC(uint64_t a1)
{
  if (!qword_1EDBC8DE0)
  {
    sub_1B6AB9E10();
    sub_1B69A536C();
    v1 = sub_1B6AB9EA0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBC8DE0);
    }
  }
}

unint64_t sub_1B69A536C()
{
  result = qword_1EDBC8DD0;
  if (!qword_1EDBC8DD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBC8DD0);
  }

  return result;
}

uint64_t sub_1B69A5404(uint64_t a1)
{
  v3 = sub_1B6AB90F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(*(v1 + 32) + OBJC_IVAR___AAAccessQueue_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = sub_1B6AB9110();
  result = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    result = swift_beginAccess();
    v10 = *(v1 + 48);
    v11 = *(v10 + 16);
    if (v11)
    {

      v12 = (v10 + 40);
      do
      {
        v13 = *v12;
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 40);
        swift_unknownObjectRetain();
        v15(a1, ObjectType, v13);
        (*(v13 + 56))(a1, 0, ObjectType, v13);
        swift_unknownObjectRelease();
        v12 += 2;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B69A55D8()
{
  if ((*(v0 + 32) & 2) != 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (qword_1EDBCAF40 != -1)
      {
        v2 = Strong;
        swift_once();
        Strong = v2;
      }

      [Strong flushWithCallbackQueue:qword_1EDBCAA10 completion:0];
    }
  }
}

uint64_t sub_1B69A5684@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B69A37E8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1B69A56E8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B69A3B9C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1B69A5748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a2;
  v34 = a3;
  v32 = a5;
  v9 = type metadata accessor for DataEventStack.Entry(255, a4, a5, a4);
  v10 = sub_1B6AB9B30();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v30[-v13];
  v15 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v30[-v16];
  v35 = a1;
  sub_1B6AB95D0();
  swift_getWitnessTable();
  sub_1B6AB9270();
  if ((*(v15 + 48))(v14, 1, v9) == 1)
  {
    result = (*(v11 + 8))(v14, v10);
    v19 = 0;
    v20 = 0;
    v21 = 0;
    *(a6 + 64) = 0;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  else
  {
    (*(v15 + 32))(v17, v14, v9);
    v22 = v32;
    *(a6 + 40) = a4;
    *(a6 + 48) = v22;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a6 + 16));
    (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v17, a4);
    v24 = *&v17[v9[9]];
    v25 = v17[v9[10]];
    v26 = v9[12];
    v31 = v17[v9[11]];
    LODWORD(v32) = v25;
    v19 = *&v17[v26];
    v20 = *&v17[v26 + 8];
    v21 = *&v17[v9[13]];
    v27 = *(v15 + 8);
    v28 = v34;

    result = v27(v17, v9);
    *a6 = v33;
    *(a6 + 8) = v28;
    *(a6 + 56) = v24;
    v29 = v31;
    *(a6 + 64) = v32;
    *(a6 + 65) = v29;
  }

  *(a6 + 72) = v19;
  *(a6 + 80) = v20;
  *(a6 + 88) = v21;
  return result;
}

_BYTE *sub_1B69A5A28(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1B69A5BF8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t SessionData.toDict(dataEventFormatter:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *v2;
  v8 = v2[1];
  LOBYTE(v14) = *a1;
  *(&v14 + 1) = v4;
  v15 = v5;
  v16 = v6;
  result = (*(*(a2 + 24) + 56))(&v14, *(a2 + 16));
  if (!v3)
  {
    v10 = result;
    sub_1B697EFC4();
    v18 = v11;
    *&v17 = v10;
    sub_1B69979CC(&v17, &v14);
    v12 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B69A18C4(&v14, v7, v8, isUniquelyReferenced_nonNull_native);
    return v12;
  }

  return result;
}

uint64_t LoggingEventProcessor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1B69A5E70(uint64_t a1)
{
  sub_1B6AB9E10();
  v2 = sub_1B6AB9250();

  return sub_1B69A5ED4(a1, v2);
}

unint64_t sub_1B69A5ED4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_1B6AB9E10();
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_1B6AB92A0();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

_OWORD *sub_1B69A606C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B6AB9E10();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1B69979CC(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

id sub_1B69A612C(int a1, unsigned int a2, double a3)
{
  v36 = a1;
  v41[4] = *MEMORY[0x1E69E9840];
  v37 = sub_1B6AB8850();
  v5 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6A3682C(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1B6AB9E10();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v35[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6AB88A0();
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    __break(1u);
  }

  v15 = a2;
  v16 = a2 >> 8;
  (*(v12 + 32))(v14, v10, v11);
  v41[3] = &type metadata for TimeDurationGranularity;
  LOBYTE(v41[0]) = v15 & 1;
  BYTE1(v41[0]) = v16;
  v17 = sub_1B6AB8880();
  sub_1B69A4BDC(v41, v14);
  v17(v40, 0);
  v18 = swift_allocObject();
  *(v18 + 16) = v36;
  *(v18 + 24) = a3;
  *(v18 + 32) = v15 & 1;
  *(v18 + 33) = v16;
  *v7 = sub_1B69C084C;
  v7[1] = v18;
  v20 = *(v5 + 104);
  v19 = (v5 + 104);
  v20(v7, *MEMORY[0x1E6967FB8], v37);
  sub_1B6AB8860();
  type metadata accessor for EventData(0);
  sub_1B6A4717C(&qword_1EDBCAAD0, type metadata accessor for EventData, &protocol conformance descriptor for EventData);
  v21 = v38;
  v22 = sub_1B6AB8870();
  if (!v21)
  {
    v25 = v22;
    v26 = v23;
    v27 = objc_opt_self();
    v28 = sub_1B6AB8C60();
    v40[0] = 0;
    v19 = [v27 JSONObjectWithData:v28 options:0 error:v40];

    v29 = v40[0];
    if (v19)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v41, v40);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v19 = v39;
        v30 = sub_1B6AB91F0();
        v31 = [v27 isValidJSONObject_];

        if (v31)
        {
          __swift_destroy_boxed_opaque_existential_1(v41);
          sub_1B6993C94(v25, v26);

          return v19;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v34 = v19;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v33 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v25, v26);
      __swift_destroy_boxed_opaque_existential_1(v41);
      return v19;
    }

    v32 = v29;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v25, v26);
  }

  return v19;
}

uint64_t KeyedEncodingContainer.encode<A>(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1B6AB9B30();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - v8;
  v12 = type metadata accessor for DiagnosticsConsentRequired(0, a4, v10, v11);
  sub_1B69A67E0(v12, v9);
  sub_1B6AB9FF0();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B69A67E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B69A31EC(&v9);
  if (v9 == 2 || (v9 & 1) != 0)
  {
    v5 = *(*(*(a1 + 16) - 8) + 56);

    return v5(a2, 1, 1);
  }

  else
  {
    v7 = sub_1B6AB9B30();
    v8 = *(*(v7 - 8) + 16);

    return v8(a2, v2, v7);
  }
}

uint64_t sub_1B69A68D0(uint64_t a1)
{
  result = sub_1B6AB8DB0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t HeartbeatEventService.Metadata.init(flushDate:identifier:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1B6AB8DB0();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for HeartbeatEventService.Metadata(0);
  v14 = (a6 + *(result + 20));
  *v14 = a2;
  v14[1] = a3;
  v15 = (a6 + *(result + 24));
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t type metadata accessor for HeartbeatEventService.Metadata(uint64_t a1)
{
  result = qword_1EDBC81F8;
  if (!qword_1EDBC81F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static HeartbeatEventService.sendHeartbeat<A>(client:debugFolderName:heartbeatValue:log:metadata:url:version:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v59 = a3;
  v56 = a8;
  v57 = a2;
  v51 = a6;
  v52 = a4;
  v58 = a5;
  v54 = a9;
  v55 = a1;
  v49 = a7;
  v50 = a10;
  v11 = *(a10 - 8);
  v12 = *(v11 + 64);
  v53 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v60 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HeartbeatEventService.Metadata(0);
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B6AB8BB0();
  v44 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6993390(0, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v42 - v19;
  v48 = &v42 - v19;
  v21 = sub_1B6AB9680();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  v22 = v16;
  v42 = v16;
  (*(v16 + 16))(&v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v49, v15);
  sub_1B69A70A4(v51, &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = v11;
  v23 = v50;
  (*(v11 + 16))(v60, v52, v50);
  v24 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v25 = (v17 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = (*(v47 + 80) + v26 + 8) & ~*(v47 + 80);
  v28 = (v14 + *(v11 + 80) + v27) & ~*(v11 + 80);
  v29 = (v12 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  v31 = v53;
  *(v30 + 4) = v23;
  *(v30 + 5) = v31;
  (*(v42 + 32))(&v30[v24], v45, v44);
  v32 = &v30[v25];
  v33 = v55;
  v34 = v54;
  *v32 = v56;
  v32[1] = v34;
  *&v30[v26] = v33;
  sub_1B69A7108(v46, &v30[v27]);
  (*(v43 + 32))(&v30[v28], v60, v23);
  v35 = v57;
  v36 = v58;
  *&v30[v29] = v58;
  v37 = &v30[(v29 + 15) & 0xFFFFFFFFFFFFFFF8];
  v38 = v59;
  *v37 = v35;
  v37[1] = v38;

  v39 = v33;
  v40 = v36;
  sub_1B6A6EE0C(0, 0, v48, &unk_1B6AC3FA8, v30);
}

uint64_t sub_1B69A6E34()
{
  v1 = *(v0 + 32);
  v16 = v1;
  v15 = sub_1B6AB8BB0();
  v2 = *(v15 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for HeartbeatEventService.Metadata(0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v1 - 8);
  v10 = *(v9 + 80);
  v14 = (v8 + *(v6 + 64) + v10) & ~v10;
  v17 = v3 | v7 | v10;
  v11 = (*(v9 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v15);

  v12 = sub_1B6AB8DB0();
  (*(*(v12 - 8) + 8))(v0 + v8, v12);

  (*(v9 + 8))(v0 + v14, v16);

  return MEMORY[0x1EEE6BDD0](v0, ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v17 | 7);
}

uint64_t sub_1B69A70A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartbeatEventService.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69A7108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartbeatEventService.Metadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69A716C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B6993390(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B69A71C8(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_1B6AB8BB0() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for HeartbeatEventService.Metadata(0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v16 = *(v1 + 16);
  v15 = *(v1 + 24);
  v13 = *(v1 + v6 + 8);
  v14 = *(v1 + v6);
  v10 = *(v1 + v7);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1B69AD75C;

  return sub_1B69A7404(a1, v16, v15, v1 + v5, v14, v13, v10, v1 + v9);
}

uint64_t sub_1B69A7404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 200) = v19;
  *(v8 + 208) = v20;
  *(v8 + 184) = v17;
  *(v8 + 192) = v18;
  *(v8 + 168) = v16;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 128) = a4;
  v9 = sub_1B6AB8AB0();
  *(v8 + 216) = v9;
  *(v8 + 224) = *(v9 - 8);
  *(v8 + 232) = swift_task_alloc();
  *(v8 + 240) = *(v19 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = type metadata accessor for HeartbeatEventService.Metadata(0);
  *(v8 + 264) = swift_task_alloc();
  v11 = type metadata accessor for RequestData(0, v19, v20, v10);
  *(v8 + 272) = v11;
  *(v8 + 280) = *(v11 - 8);
  *(v8 + 288) = swift_task_alloc();
  v12 = sub_1B6AB8BB0();
  *(v8 + 296) = v12;
  *(v8 + 304) = *(v12 - 8);
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  v13 = sub_1B6AB8810();
  *(v8 + 344) = v13;
  *(v8 + 352) = *(v13 - 8);
  *(v8 + 360) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B69A77E4, 0, 0);
}

uint64_t sub_1B69A76F8(uint64_t a1)
{
  result = type metadata accessor for HeartbeatEventService.Metadata(319);
  if (v3 <= 0x3F)
  {
    v6[38] = 0;
    v7 = result;
    v9.val[0] = *(a1 + 16);
    v9.val[1] = v9.val[0];
    v4 = v6;
    vst2q_f64(v4, v9);
    result = type metadata accessor for RequestData.EventData(319, v6);
    if (v5 <= 0x3F)
    {
      v6[39] = 0;
      v8 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B69A77A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B69A77E4()
{
  v1 = (v0 + 16);
  v24 = *(v0 + 288);
  v25 = *(v0 + 256);
  v2 = *(v0 + 240);
  v23 = *(v0 + 248);
  v21 = *(v0 + 264);
  v22 = *(v0 + 168);
  v20 = *(v0 + 160);
  v3 = *(v0 + 144);
  v4 = *(v0 + 136);
  v26 = *(v0 + 200);
  (*(*(v0 + 304) + 16))(*(v0 + 336), *(v0 + 128), *(v0 + 296));
  sub_1B6AB87D0();
  sub_1B6AB8790();
  MEMORY[0x1B8C97BE0](v4, v3);
  sub_1B6AB8800();

  sub_1B69992A4();
  sub_1B6AB8800();

  sub_1B6AB8800();
  sub_1B69A70A4(v20, v21);
  v28.val[0] = v26;
  v28.val[1] = v26;
  vst2q_f64(v1, v28);
  type metadata accessor for RequestData.EventData.Event(255, v0 + 16);
  sub_1B6ABA090();
  swift_allocObject();
  v5 = sub_1B6AB9530();
  v7 = v6;
  (*(v2 + 16))(v23, v22, *&v26.f64[0]);
  sub_1B69A7E28(v23, *&v26.f64[0], *&v26.f64[0], *&v26.f64[1], *&v26.f64[1], v7);
  sub_1B6AB95D0();
  sub_1B69A7108(v21, v24);
  *(v24 + *(type metadata accessor for RequestData(0, *&v26.f64[0], *&v26.f64[1], v8) + 36)) = v5;
  v9 = (v24 + *(v25 + 20));
  *(v0 + 368) = *v9;
  *(v0 + 376) = v9[1];
  sub_1B6AB8800();
  if (qword_1EDBC8230 != -1)
  {
    swift_once();
  }

  swift_getWitnessTable();
  v10 = sub_1B6AB8870();
  *(v0 + 384) = v10;
  *(v0 + 392) = v11;
  v12 = sub_1B69993A8(v10, v11);
  *(v0 + 400) = 0;
  *(v0 + 408) = v12;
  *(v0 + 416) = v13;
  v14 = v13;
  v15 = v12;
  v16 = swift_task_alloc();
  *(v0 + 424) = v16;
  *v16 = v0;
  v16[1] = sub_1B69AD3E4;
  v17 = *(v0 + 176);
  v18 = *(v0 + 152);

  return sub_1B69A92D4(v18, v15, v14, v17);
}

void sub_1B69A7D44(uint64_t a1)
{
  sub_1B69A7DCC();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B69A7DCC()
{
  if (!qword_1EDBCB668)
  {
    v0 = sub_1B6AB9240();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBCB668);
    }
  }
}

uint64_t sub_1B69A7E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v12 = sub_1B69A7EF8(&unk_1F2E74180);
  sub_1B69A8010();
  swift_arrayDestroy();
  *a6 = v12;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v13 = type metadata accessor for RequestData.EventData.Event(0, v15);
  return (*(*(a3 - 8) + 32))(a6 + *(v13 + 52), a1, a3);
}

unint64_t sub_1B69A7EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B6999350(0, &qword_1EDBCAFE8, MEMORY[0x1E69E6158]);
    v3 = sub_1B6AB9E90();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B6993940(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B69A8010()
{
  if (!qword_1EDBCB000)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBCB000);
    }
  }
}

uint64_t sub_1B69A806C()
{
  v0 = sub_1B6AB8850();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B6AB88A0();
  swift_allocObject();
  v4 = sub_1B6AB8890();
  *v3 = sub_1B69A89A8;
  v3[1] = 0;
  (*(v1 + 104))(v3, *MEMORY[0x1E6967FB8], v0);
  result = sub_1B6AB8860();
  qword_1EDBC8238 = v4;
  return result;
}

uint64_t sub_1B69A8174(void *a1, float64x2_t *a2, double a3, __n128 a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v19 = a2;
  v9 = a2[1];
  v10 = *&a2[1].f64[0];
  v20 = v9;
  v21 = a4;
  type metadata accessor for RequestData.CodingKeys(255, v10, *&v9.f64[1], a6);
  swift_getWitnessTable();
  v11 = sub_1B6ABA060();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6ABA2D0();
  v23[0] = 0;
  type metadata accessor for HeartbeatEventService.Metadata(0);
  sub_1B69A84B0(&qword_1EDBC8210, type metadata accessor for HeartbeatEventService.Metadata, &protocol conformance descriptor for HeartbeatEventService.Metadata);
  v16 = v22;
  sub_1B6ABA040();
  if (!v16)
  {
    v24 = *(v7 + SHIDWORD(v19[2].f64[0]));
    v23[39] = 1;
    v25.val[0] = v20;
    v25.val[1] = v20;
    v15 = v23;
    vst2q_f64(v15, v25);
    type metadata accessor for RequestData.EventData(0, v23);
    swift_getWitnessTable();
    sub_1B6ABA040();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1B69A8420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B69A8468(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B69A84B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1B69A8508(uint64_t a1)
{
  if (!qword_1EDBC8010)
  {
    sub_1B69A8764();
    v1 = sub_1B6ABA060();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBC8010);
    }
  }
}

uint64_t HeartbeatEventService.Metadata.encode(to:)(void *a1)
{
  sub_1B69A8508(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69A8764();
  sub_1B6ABA2D0();
  v9[15] = 0;
  sub_1B6AB8DB0();
  sub_1B69A84B0(&qword_1EDBCB5B0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1B6ABA040();
  if (!v1)
  {
    type metadata accessor for HeartbeatEventService.Metadata(0);
    v9[14] = 1;
    sub_1B6ABA000();
    v9[13] = 2;
    sub_1B6ABA000();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1B69A8764()
{
  result = qword_1EDBC8228;
  if (!qword_1EDBC8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8228);
  }

  return result;
}

unint64_t sub_1B69A87BC()
{
  result = qword_1EDBC8218;
  if (!qword_1EDBC8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8218);
  }

  return result;
}

unint64_t sub_1B69A8814()
{
  result = qword_1EDBC8220;
  if (!qword_1EDBC8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8220);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FlushManager.State(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for FlushManager.State(unsigned __int8 *a1, unsigned int a2)
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

void sub_1B69A89A8(uint64_t a1, void *a2)
{
  v3 = sub_1B6AB8F00();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6AB8DB0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8EC0();
  sub_1B6AB8E70();
  (*(v4 + 8))(v6, v3);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1B6ABA2B0();
  sub_1B6AB8D60();
  v12 = v11 * 1000.0;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v12 < 9.22337204e18)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_1B6ABA140();
    (*(v8 + 8))(v10, v7);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1B69A8BF0()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461446873756C66;
  }
}

uint64_t sub_1B69A8C64(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1B69A8C94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = a2;
  v14 = a5;
  v15 = a6;
  v13 = a4;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  type metadata accessor for RequestData.EventData.CodingKeys(255, &v18);
  swift_getWitnessTable();
  v8 = sub_1B6ABA060();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6ABA2D0();
  v22 = v16;
  v18 = a3;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  type metadata accessor for RequestData.EventData.Event(255, &v18);
  sub_1B6AB95D0();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B6ABA040();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B69A8F00(void *a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  v15 = *(a2 + 16);
  v11 = *(a2 + 24);
  v16 = v11;
  v12 = v3;
  v17 = v3;
  type metadata accessor for RequestData.EventData.Event.CodingKeys(255, &v15);
  swift_getWitnessTable();
  v4 = sub_1B6ABA060();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = v13;
  sub_1B6ABA2D0();
  v15 = *v8;
  v18 = 0;
  sub_1B69A7DCC();
  sub_1B69A923C();
  v9 = v14;
  sub_1B6ABA040();
  if (!v9)
  {
    LOBYTE(v15) = 1;
    sub_1B6ABA040();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1B69A90F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for SessionData(255, v5, v6, a4);
  WitnessTable = swift_getWitnessTable();
  v10 = *(type metadata accessor for PushEvent(0, v7, WitnessTable, v9) - 8);
  v11 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1B6998590(v4 + v11, *(v4 + v12), *(v4 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v4 + ((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

unint64_t sub_1B69A923C()
{
  result = qword_1EDBC8060;
  if (!qword_1EDBC8060)
  {
    sub_1B69A7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8060);
  }

  return result;
}

uint64_t sub_1B69A92D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B69A92F8, 0, 0);
}

uint64_t sub_1B69A92F8()
{
  v1 = v0[19];
  type metadata accessor for MescalSigner();
  v0[23] = swift_initStackObject();
  v2 = sub_1B6984F70(v1);
  v0[24] = v2;
  type metadata accessor for SHA1Base64SigningService();
  inited = swift_initStackObject();
  v0[25] = inited;
  *(inited + 16) = v2;
  *(inited + 24) = &off_1F2E755D0;
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_1B69AD21C;
  v6 = v0[20];
  v5 = v0[21];

  return sub_1B69A93E0(v6, v5);
}

uint64_t sub_1B69A93E0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B6998B8C, 0, 0);
}

uint64_t sub_1B69A9404(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v5 = a4;
  v6 = a3;
  v25[2] = *MEMORY[0x1E69E9840];
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
      v13 = sub_1B6AB8900();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1B6AB8930();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1B6AB8920();
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
  v13 = sub_1B6AB8900();
  if (v13)
  {
    v14 = sub_1B6AB8930();
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

  v17 = sub_1B6AB8920();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v8 = v23;
  }

  else
  {
    v8 = 0;
  }

  v9 = v13;
  a3 = v6;
  a4 = v5;
  a5 = v10;
LABEL_24:
  sub_1B69A961C(v9, v8, a3, a4, a5);
  return sub_1B6993C94(v6, v5);
}

unsigned __int8 *sub_1B69A961C(unsigned __int8 *result, uint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v6 = result;
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_13;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v8 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_18;
    }

    v8 = HIDWORD(a3) - a3;
LABEL_10:
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v8))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      LODWORD(v8) = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  LODWORD(v8) = BYTE6(a4);
LABEL_14:
  v11 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1B69E394C(0, *(v11 + 2), 0, v11);
  }

  *a5 = v11;
  return CC_SHA1(v6, v8, v11 + 32);
}

unint64_t sub_1B69A96F4(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1B699FB2C(a1, &a1[a2]);
  }

  sub_1B6AB8950();
  swift_allocObject();
  sub_1B6AB88F0();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1B6AB8C00();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1B69A97A4(unint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v45 = MEMORY[0x1E69E7CC0];
    sub_1B6994474(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
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
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_1B6AB8900();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_1B6AB8930();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_1B6AB8900();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_1B6AB8930();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_1B69990B4(0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1B6ABD890;
      *(v20 + 56) = MEMORY[0x1E69E7508];
      *(v20 + 64) = MEMORY[0x1E69E7558];
      *(v20 + 32) = v19;
      v21 = sub_1B6AB9300();
      v45 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_1B6994474((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

void sub_1B69A9B10()
{
  if (!qword_1EDBCAFF0)
  {
    v0 = sub_1B6AB95D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBCAFF0);
    }
  }
}

uint64_t DiagnosticsConsentRequired.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = sub_1B6AB9B30();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

uint64_t DiagnosticsConsentRequired.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB9B30();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t sub_1B69A9C80(char *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v60 = a3;
  v62 = a5;
  v63 = a2;
  v59 = a4;
  v56 = a1;
  v5 = sub_1B6AB90F0();
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = (&v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6AB8E40();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6987C8C(0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v49 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v49 - v24;
  if (qword_1EDBC9F60 != -1)
  {
    swift_once();
  }

  v61 = v16;
  v57 = v9;
  v51 = v20;
  v52 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v58 = v64;
  if (v64)
  {
    v26 = *(v11 + 16);
    v26(v25, v64 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v10);
    v27 = *(v11 + 56);
    v27(v25, 0, 1, v10);
  }

  else
  {
    v27 = *(v11 + 56);
    v27(v25, 1, 1, v10);
    v26 = *(v11 + 16);
  }

  v26(v23, v63, v10);
  v27(v23, 0, 1, v10);
  v28 = *(v14 + 48);
  v29 = v61;
  sub_1B699A394(v25, v61, sub_1B6987C8C);
  sub_1B699A394(v23, v29 + v28, sub_1B6987C8C);
  v30 = *(v11 + 48);
  if (v30(v29, 1, v10) == 1)
  {
    sub_1B6984DF8(v23, sub_1B6987C8C);
    sub_1B6984DF8(v25, sub_1B6987C8C);
    if (v30(v29 + v28, 1, v10) == 1)
    {
      sub_1B6984DF8(v29, sub_1B6987C8C);
LABEL_15:
      type metadata accessor for AccessTracker();
      v48 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v48[3] = 0;
      v48[4] = 0;
      v48[5] = sub_1B6A55214;
      v48[6] = 0;
      v59(v48);
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v49 = v25;
  v31 = v29;
  v32 = v29;
  v33 = v51;
  sub_1B699A394(v31, v51, sub_1B6987C8C);
  if (v30(v32 + v28, 1, v10) == 1)
  {
    sub_1B6984DF8(v23, sub_1B6987C8C);
    sub_1B6984DF8(v49, sub_1B6987C8C);
    (*(v11 + 8))(v33, v10);
    v29 = v32;
LABEL_11:
    sub_1B6984DF8(v29, sub_1B6992BDC);
    v34 = v57;
    goto LABEL_12;
  }

  v45 = v50;
  (*(v11 + 32))(v50, v32 + v28, v10);
  sub_1B6AAFDD0();
  v46 = sub_1B6AB92A0();
  v47 = *(v11 + 8);
  v47(v45, v10);
  sub_1B6984DF8(v23, sub_1B6987C8C);
  sub_1B6984DF8(v49, sub_1B6987C8C);
  v47(v33, v10);
  sub_1B6984DF8(v32, sub_1B6987C8C);
  v34 = v57;
  if (v46)
  {
    goto LABEL_15;
  }

LABEL_12:
  sub_1B699A394(v63, v34, type metadata accessor for DiagnosticsConsentProvider);
  type metadata accessor for LazyDiagnosticStatus(0);
  v35 = swift_allocObject();
  *(v35 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v37 = v55;
  v36 = v56;
  v38 = *&v56[OBJC_IVAR___AAAccessQueue_queue];
  v40 = v53;
  v39 = v54;
  *v53 = v38;
  (*(v39 + 104))(v40, *MEMORY[0x1E69E8020], v37);
  v41 = v38;
  LOBYTE(v38) = sub_1B6AB9110();
  result = (*(v39 + 8))(v40, v37);
  if (v38)
  {
    sub_1B6980F64(v34, v35 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider);
    *(v35 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v36;
    v64 = v35;
    sub_1B69930AC(0);
    v43 = v36;

    swift_task_localValuePush();
    type metadata accessor for AccessTracker();
    v44 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v44[3] = 0;
    v44[4] = 0;
    v44[5] = sub_1B6A55214;
    v44[6] = 0;
    v59(v44);

    swift_task_localValuePop();
LABEL_16:
  }

  __break(1u);
  return result;
}

uint64_t AccessTracker.push<A>(data:traits:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a4;
  v25 = a5;
  v22 = a2;
  v23 = a3;
  v21 = a1;
  v9 = type metadata accessor for PushEvent(0, a6, a7, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = sub_1B6AB90F0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v16 = v18;
    (*(v14 + 104))(v16, *MEMORY[0x1E69E8020], v13);
    v19 = v18;
    LOBYTE(v18) = sub_1B6AB9110();
    result = (*(v14 + 8))(v16, v13);
    if (v18)
    {
      sub_1B698D998(v21, a6, a7, v12);
      sub_1B699ADC4(v12, v22, v23, v24, v25, a6, a7);

      return (*(v10 + 8))(v12, v9);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B69AA650(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v6 = OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider;
  v7 = *(a1 + 88);

  return sub_1B69AA6C4(v7, a1 + v6, a1, a2, a3);
}

uint64_t objectdestroy_11Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t Tracker.chain(name:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a3;
  v34 = a4;
  v31 = a1;
  v32 = a2;
  v6 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 88);
  v10 = *(v4 + 96);
  v30 = *(v4 + 201);
  v11 = *(v4 + 104);
  v12 = *(v4 + OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock);

  os_unfair_lock_lock_with_options();
  v13 = *(v4 + 184);
  swift_beginAccess();
  v14 = *(v5 + 176);
  v36[0] = v13;

  sub_1B69979DC(v14);
  v29 = v36[0];
  os_unfair_lock_unlock(*(v12 + 16));
  v35 = *(v5 + 208);
  sub_1B699A32C(v5 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, v8, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v5 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager, v36);
  v15 = *(v5 + 32);
  type metadata accessor for Tracker(0);
  v16 = swift_allocObject();
  *(v16 + 80) = 0;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;
  swift_unknownObjectWeakInit();
  v17 = MEMORY[0x1E69E7CC8];
  *(v16 + 112) = MEMORY[0x1E69E7CC8];
  *(v16 + 120) = v17;
  *(v16 + 128) = v17;
  *(v16 + 136) = v17;
  *(v16 + 144) = v17;
  v18 = MEMORY[0x1E69E7CC0];
  *(v16 + 160) = v17;
  *(v16 + 168) = v18;
  *(v16 + 176) = v18;
  *(v16 + 192) = v18;
  *(v16 + 200) = 0;
  v19 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  type metadata accessor for UnfairLock();
  v20 = swift_allocObject();
  v21 = swift_slowAlloc();
  *(v20 + 16) = v21;
  *v21 = 0;
  *(v20 + 24) = 0x10000;
  *(v16 + v19) = v20;
  v22 = v32;
  *(v16 + 16) = v31;
  *(v16 + 24) = v22;
  *(v16 + 88) = v9;
  *(v16 + 96) = v10;
  *(v16 + 201) = v30;
  *(v16 + 104) = v11;
  *(v16 + 152) = v5;
  swift_unknownObjectWeakLoadStrong();
  *(v16 + 80) = *(v5 + 80);
  swift_unknownObjectWeakAssign();

  v23 = v9;
  v24 = v10;

  swift_unknownObjectRelease();
  *(v16 + 184) = v29;
  v25 = v34;
  *(v16 + 40) = v33;
  *(v16 + 48) = v25;
  *(v16 + 56) = 0;
  *(v16 + 64) = 0;

  *(v16 + 208) = v35;
  sub_1B699A32C(v8, v16 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v36, v16 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  *(v16 + 32) = v15;
  swift_unknownObjectRetain();
  v26 = v15;
  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v27 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE1C, v27);

    __swift_destroy_boxed_opaque_existential_1(v36);
    sub_1B6984D38(v8, type metadata accessor for DiagnosticsConsentProvider);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v36);
    sub_1B6984D38(v8, type metadata accessor for DiagnosticsConsentProvider);
  }

  return v16;
}

uint64_t sub_1B69AAAE4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t Tracker.whenSession(block:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = *(v2 + 88);
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = sub_1B6A560A8;
  v7[4] = v5;

  sub_1B69877A4(v6, sub_1B6A0ABEC, v7);
}

uint64_t sub_1B69AAC10()
{
  v1 = v0;
  v92 = v0[50];
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[42];
  v93 = v1[38];
  v91 = v1[37];
  v6 = v1[28];
  v5 = v1[29];
  v7 = v1[27];
  sub_1B6AB8800();

  sub_1B6AB8B50();
  v1[6] = v3;
  v1[7] = v2;
  v89 = *MEMORY[0x1E6968F68];
  v90 = *(v6 + 104);
  v90(v5);
  sub_1B69830D8();

  sub_1B6AB8BA0();
  v8 = v5;
  v9 = *(v6 + 8);
  v9(v8, v7);

  v10 = *(v93 + 8);
  v10(v4, v91);
  sub_1B6AB8C90();
  v11 = v1[52];
  if (v92)
  {
    v12 = v1[51];
    v13 = v1[44];
    v14 = v1[45];
    v15 = v10;
    v16 = v1[43];
    v17 = v1[41];
    v18 = v1[37];
    sub_1B6993C94(v1[48], v1[49]);
    sub_1B6993C94(v12, v11);
    v15(v17, v18);
    (*(v13 + 8))(v14, v16);
    (*(v1[35] + 8))(v1[36], v1[34]);

    v19 = v1[1];
    goto LABEL_20;
  }

  v88 = v9;
  sub_1B69990B4(0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B6ABF500;
  v21 = v11 >> 62;
  if ((v11 >> 62) > 1)
  {
    v22 = 0;
    if (v21 != 2)
    {
      goto LABEL_12;
    }

    v23 = *(v1[51] + 16);
    v24 = *(v1[51] + 24);
    v25 = __OFSUB__(v24, v23);
    v22 = v24 - v23;
    if (!v25)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_10:
    v26 = *(v1 + 102);
    v27 = *(v1 + 103);
    v25 = __OFSUB__(v27, v26);
    LODWORD(v22) = v27 - v26;
    if (v25)
    {
      __break(1u);
    }

    v22 = v22;
    goto LABEL_12;
  }

  if (v21)
  {
    goto LABEL_10;
  }

  v22 = BYTE6(v11);
LABEL_12:
  v28 = v10;
  v29 = v1[22];
  v30 = MEMORY[0x1E69E65A8];
  *(v20 + 56) = MEMORY[0x1E69E6530];
  *(v20 + 64) = v30;
  *(v20 + 32) = v22;
  v31 = v20;
  sub_1B69A84B0(&qword_1EDBC8838, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v32 = sub_1B6ABA080();
  v34 = v33;
  v31[12] = MEMORY[0x1E69E6158];
  v87 = sub_1B698CEC0();
  v31[13] = v87;
  v31[9] = v32;
  v31[10] = v34;
  v35 = sub_1B6AB9900();
  sub_1B6AB8F70("Wrote %lu bytes of heartbeat data to %{public}@. Sending heartbeat...", 69, 2, &dword_1B697C000, v29, v35, v31);

  if (qword_1EDBC8248 != -1)
  {
    swift_once();
  }

  v36 = v1[24];
  v37 = qword_1EDBC8250;
  v38 = sub_1B6AB87A0();
  v39 = sub_1B6AB8B20();
  v40 = [v37 uploadTaskWithRequest:v38 fromFile:v39];

  [v40 resume];
  if (v36)
  {
    v41 = v1[42];
    v42 = v1[37];
    v43 = v1[29];
    v44 = v1[27];
    v86 = v28;
    v46 = v1[23];
    v45 = v1[24];
    sub_1B6AB8B50();
    v1[8] = v46;
    v1[9] = v45;
    v28 = v86;
    (v90)(v43, *MEMORY[0x1E6968F58], v44);
    sub_1B6AB8BA0();
    v88(v43, v44);
    v86(v41, v42);
    v47 = [objc_opt_self() defaultManager];
    v48 = sub_1B6AB8B20();
    v1[14] = 0;
    v49 = [v47 createDirectoryAtURL:v48 withIntermediateDirectories:1 attributes:0 error:v1 + 14];

    v50 = v1[14];
    if (v49)
    {
      v51 = v1[47];
      v52 = v1[29];
      v53 = v1[27];
      v1[12] = v1[46];
      v1[13] = v51;
      (v90)(v52, v89, v53);

      v54 = v50;
      sub_1B6AB8BA0();
      v88(v52, v53);

      sub_1B6AB8C90();
      v74 = v1[51];
      v75 = v1[52];
      v77 = v1[48];
      v76 = v1[49];
      v79 = v1[39];
      v78 = v1[40];
      v80 = v1[37];
      v81 = v1[22];
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_1B6ABD890;
      v83 = sub_1B6ABA080();
      *(v82 + 56) = MEMORY[0x1E69E6158];
      *(v82 + 64) = v87;
      *(v82 + 32) = v83;
      *(v82 + 40) = v84;
      v85 = sub_1B6AB9900();
      sub_1B6AB8F70("Wrote debug heartbeat data to %{public}@", 40, 2, &dword_1B697C000, v81, v85, v82);
      sub_1B6993C94(v77, v76);

      sub_1B6993C94(v74, v75);
      v28 = v86;
      v86(v79, v80);
      v86(v78, v80);
    }

    else
    {
      v57 = v50;
      v58 = sub_1B6AB8A70();

      swift_willThrow();
      v59 = v1[51];
      v94 = v1[52];
      v61 = v1[48];
      v60 = v1[49];
      v62 = v1[22];
      v86(v1[40], v1[37]);
      v63 = sub_1B6AB98E0();
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1B6ABD890;
      v1[10] = 0;
      v1[11] = 0xE000000000000000;
      v1[15] = v58;
      sub_1B697ED90(0, &qword_1EDBCBB00, MEMORY[0x1E69E7280]);
      sub_1B6AB9DF0();
      v65 = v1[10];
      v66 = v1[11];
      *(v64 + 56) = MEMORY[0x1E69E6158];
      *(v64 + 64) = v87;
      *(v64 + 32) = v65;
      *(v64 + 40) = v66;
      sub_1B6AB8F70("Saw debugFolderName specified but failed to store heartbeat data for debugging with error %{public}@", 100, 2, &dword_1B697C000, v62, v63, v64);
      sub_1B6993C94(v61, v60);

      sub_1B6993C94(v59, v94);
    }
  }

  else
  {
    v55 = v1[51];
    v56 = v1[52];
    sub_1B6993C94(v1[48], v1[49]);
    sub_1B6993C94(v55, v56);
  }

  v68 = v1[44];
  v67 = v1[45];
  v69 = v1[43];
  v70 = v1[36];
  v72 = v1[34];
  v71 = v1[35];
  v28(v1[41], v1[37]);
  (*(v68 + 8))(v67, v69);
  (*(v71 + 8))(v70, v72);

  v19 = v1[1];
LABEL_20:

  return v19();
}

uint64_t Tracker.chain(name:identifier:dynamicDataIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v38 = a5;
  v39 = a6;
  v36 = a3;
  v37 = a4;
  v34 = a1;
  v35 = a2;
  v8 = type metadata accessor for DiagnosticsConsentProvider(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v6 + 88);
  v12 = *(v6 + 96);
  v33 = *(v6 + 201);
  v13 = *(v6 + 104);
  v14 = *(v6 + OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock);

  os_unfair_lock_lock_with_options();
  v15 = *(v6 + 184);
  swift_beginAccess();
  v16 = *(v7 + 176);
  v41[0] = v15;

  sub_1B69979DC(v16);
  v32 = v41[0];
  os_unfair_lock_unlock(*(v14 + 16));
  v40 = *(v7 + 208);
  sub_1B699A32C(v7 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, v10, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v7 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager, v41);
  v17 = *(v7 + 32);
  type metadata accessor for Tracker(0);
  v18 = swift_allocObject();
  *(v18 + 80) = 0;
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  swift_unknownObjectWeakInit();
  v19 = MEMORY[0x1E69E7CC8];
  *(v18 + 112) = MEMORY[0x1E69E7CC8];
  *(v18 + 120) = v19;
  *(v18 + 128) = v19;
  *(v18 + 136) = v19;
  *(v18 + 144) = v19;
  v20 = MEMORY[0x1E69E7CC0];
  *(v18 + 160) = v19;
  *(v18 + 168) = v20;
  *(v18 + 176) = v20;
  *(v18 + 192) = v20;
  *(v18 + 200) = 0;
  v21 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  type metadata accessor for UnfairLock();
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  *(v22 + 16) = v23;
  *v23 = 0;
  *(v22 + 24) = 0x10000;
  *(v18 + v21) = v22;
  v24 = v35;
  *(v18 + 16) = v34;
  *(v18 + 24) = v24;
  *(v18 + 88) = v11;
  *(v18 + 96) = v12;
  *(v18 + 201) = v33;
  *(v18 + 104) = v13;
  *(v18 + 152) = v7;
  swift_unknownObjectWeakLoadStrong();
  *(v18 + 80) = *(v7 + 80);
  swift_unknownObjectWeakAssign();

  v25 = v11;
  v26 = v12;

  swift_unknownObjectRelease();
  *(v18 + 184) = v32;
  v27 = v37;
  *(v18 + 40) = v36;
  *(v18 + 48) = v27;
  v28 = v39;
  *(v18 + 56) = v38;
  *(v18 + 64) = v28;

  *(v18 + 208) = v40;
  sub_1B699A32C(v10, v18 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v41, v18 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  *(v18 + 32) = v17;
  swift_unknownObjectRetain();
  v29 = v17;
  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v30 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v30);

    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_1B6984D38(v10, type metadata accessor for DiagnosticsConsentProvider);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_1B6984D38(v10, type metadata accessor for DiagnosticsConsentProvider);
  }

  return v18;
}