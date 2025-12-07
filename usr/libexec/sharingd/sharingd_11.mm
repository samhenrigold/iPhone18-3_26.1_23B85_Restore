uint64_t sub_1002A74CC()
{
  v1 = *(v0 + 48);
  sub_1002A9924(v1, *(v0 + 56));
  return v1;
}

id sub_1002A75C4()
{
  v1 = *(_s15MacApprovePhoneV20HandleRequestContextVMa(0) + 36);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationResponse) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1002A7634@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_100973538 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.UseApproveTokenForIncludingFirstAKSTokenInMessage;
  *(v6 + 64) = &off_10097BF10;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendResponseMessage;
  *(v6 + 104) = &off_10097C1B0;
  *a3 = v6;
  v7 = _s15MacApprovePhoneV20HandleRequestContextVMa(0);
  v8 = a3 + v7[7];
  *v8 = xmmword_1007F8A80;
  *(a3 + v7[9]) = 0;
  *(a3 + v7[10]) = 1;
  if ([a1 hasAksToken])
  {
    sub_1002A9938(a2 + 8, (a3 + 1));
    v9 = _s15MacApprovePhoneV18InitialLockContextVMa(0);
    sub_1002A985C(a2 + *(v9 + 24), a3 + v7[6], type metadata accessor for SDAuthenticationSessionMetrics);
    v10 = (a2 + *(v9 + 44));
    v11 = *v10;
    v12 = v10[1];
    v13 = *v8;
    v14 = *(v8 + 1);
    *v8 = *v10;
    *(v8 + 1) = v12;
    sub_1002A9924(v11, v12);
    sub_10028BCC0(v13, v14);
    result = [a1 aksToken];
    if (result)
    {
      v16 = result;
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      result = sub_1002A98C4(a2, _s15MacApprovePhoneV18InitialLockContextVMa);
      v20 = (a3 + v7[8]);
      *v20 = v17;
      v20[1] = v19;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v21 = sub_100010F88(1, 0xD000000000000028, 0x8000000100789B50);
    v23 = v22;
    sub_1000115C8();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    swift_willThrow();

    sub_1002A98C4(a2, _s15MacApprovePhoneV18InitialLockContextVMa);

    return sub_10028BCC0(*v8, *(v8 + 1));
  }

  return result;
}

uint64_t sub_1002A78B8(uint64_t a1)
{
  v2 = v1 + *(a1 + 32);
  v3 = *v2;
  sub_100294008(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_1002A7924(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a3(a1, a2);
  v4 = [v3 data];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    v7 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    return swift_willThrow();
  }
}

id sub_1002A79F8(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 32);
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = *(v2 + v4);
LABEL_5:
    v8 = v5;
    return v6;
  }

  result = [objc_allocWithZone(*a2) init];
  if (result)
  {
    *(v2 + v4) = result;
    v6 = result;
    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1002A7A78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_100973538 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.IncludeNextAKSTokenInMessage;
  *(v6 + 64) = &off_10097BEF8;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendTokenMessage;
  *(v6 + 104) = &off_10097C180;
  *a3 = v6;
  v7 = _s15MacApprovePhoneV21HandleResponseContextVMa(0);
  *(a3 + v7[8]) = 0;
  *(a3 + v7[9]) = 7;
  if ([a1 hasAksToken])
  {
    sub_1002A9938(a2 + 8, (a3 + 1));
    v8 = _s15MacApprovePhoneV24HandleUserApprovalResultVMa(0);
    sub_1002A985C(a2 + *(v8 + 28), a3 + v7[6], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 aksToken];
    if (result)
    {
      v10 = result;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = sub_1002A98C4(a2, _s15MacApprovePhoneV24HandleUserApprovalResultVMa);
      v14 = (a3 + v7[7]);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_100010F88(1, 0xD000000000000029, 0x8000000100789B80);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();

    sub_1002A98C4(a2, _s15MacApprovePhoneV24HandleUserApprovalResultVMa);
  }

  return result;
}

id sub_1002A7D08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973538 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.ConsumeAKSToken;
  *(v6 + 64) = &off_10097BEE0;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 104) = &off_10097C270;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 144) = &off_10097BB00;
  *a3 = v6;
  v7 = _s15MacApprovePhoneV18HandleTokenContextVMa(0);
  *(a3 + v7[8]) = 0;
  *(a3 + v7[9]) = 2;
  if ([a1 hasAksToken])
  {
    sub_1002A9938(a2 + 8, (a3 + 1));
    v8 = _s15MacApprovePhoneV20HandleRequestContextVMa(0);
    sub_1002A985C(a2 + *(v8 + 24), a3 + v7[6], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 aksToken];
    if (result)
    {
      v10 = result;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = sub_1002A98C4(a2, _s15MacApprovePhoneV20HandleRequestContextVMa);
      v14 = (a3 + v7[7]);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_100010F88(1, 0xD000000000000019, 0x8000000100789BB0);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();

    sub_1002A98C4(a2, _s15MacApprovePhoneV20HandleRequestContextVMa);
  }

  return result;
}

uint64_t sub_1002A7F44(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  v4 = (v3 + *(a1 + 28));
  v5 = *v4;
  a3(*v4, v4[1]);
  return v5;
}

uint64_t sub_1002A7FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), Class *a4)
{
  v4 = sub_1002A79F8(a3, a4);
  v5 = [v4 data];

  if (v5)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  else
  {
    v8 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    return swift_willThrow();
  }
}

uint64_t sub_1002A80C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_100973538 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 104) = &off_10097BB00;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    sub_1002A9938(a2 + 8, (a3 + 1));
    v7 = *(_s15MacApprovePhoneV21HandleResponseContextVMa(0) + 24);
    v8 = _s15MacApprovePhoneV25HandleConfirmationContextVMa(0);
    sub_1002A985C(a2 + v7, a3 + *(v8 + 24), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_1002A98C4(a2, _s15MacApprovePhoneV21HandleResponseContextVMa);
    *(a3 + *(v8 + 28)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_1002A98C4(a2, _s15MacApprovePhoneV21HandleResponseContextVMa);
  }

  return result;
}

void sub_1002A82AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v171 = a2;
  v164 = a3;
  v135 = _s15MacApprovePhoneV25HandleConfirmationContextVMa(0);
  __chkstk_darwin(v135);
  v139 = (&v134 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10028088C(&qword_100975888, &qword_1007F8BF8);
  __chkstk_darwin(v5 - 8);
  v144 = &v134 - v6;
  v136 = _s15MacApprovePhoneV18HandleTokenContextVMa(0);
  __chkstk_darwin(v136);
  v143 = (&v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10028088C(&qword_100975890, &qword_1007F8C00);
  __chkstk_darwin(v8 - 8);
  v150 = &v134 - v9;
  v145 = _s15MacApprovePhoneV21HandleResponseContextVMa(0);
  v142 = *(v145 - 8);
  v10 = __chkstk_darwin(v145);
  v137 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v138 = &v134 - v13;
  __chkstk_darwin(v12);
  v149 = (&v134 - v14);
  v15 = sub_10028088C(&qword_100975898, &qword_1007F8C08);
  __chkstk_darwin(v15 - 8);
  v156 = &v134 - v16;
  v151 = _s15MacApprovePhoneV20HandleRequestContextVMa(0);
  v148 = *(v151 - 8);
  v17 = __chkstk_darwin(v151);
  v140 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v141 = &v134 - v20;
  __chkstk_darwin(v19);
  v155 = (&v134 - v21);
  v22 = sub_10028088C(&qword_1009758A0, &qword_1007F8C10);
  __chkstk_darwin(v22 - 8);
  v163 = &v134 - v23;
  v24 = _s15MacApprovePhoneV18InitialLockContextVMa(0);
  v161 = *(v24 - 8);
  v162 = v24;
  v25 = __chkstk_darwin(v24);
  v153 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v154 = &v134 - v27;
  v157 = _s15MacApprovePhoneV24HandleUserApprovalResultVMa(0);
  v152 = *(v157 - 8);
  v28 = __chkstk_darwin(v157);
  v146 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v147 = &v134 - v31;
  __chkstk_darwin(v30);
  v160 = (&v134 - v32);
  v33 = sub_10028088C(&qword_1009758A8, &qword_1007F8C18);
  __chkstk_darwin(v33 - 8);
  v35 = &v134 - v34;
  v36 = _s15MacApprovePhoneV26HandleApprovePromptContextVMa(0);
  v165 = *(v36 - 8);
  v166 = v36;
  v37 = __chkstk_darwin(v36);
  v158 = &v134 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v159 = &v134 - v40;
  __chkstk_darwin(v39);
  v42 = (&v134 - v41);
  v43 = sub_10028088C(&qword_1009758B0, &unk_1007F8C20);
  __chkstk_darwin(v43 - 8);
  v45 = &v134 - v44;
  v46 = _s15MacApprovePhoneV17InitialKeyContextVMa(0);
  v47 = *(v46 - 8);
  v48 = __chkstk_darwin(v46);
  v50 = &v134 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v52 = &v134 - v51;
  sub_1002A9938(a1, v170);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &unk_1009757A0, off_1008C8D00);
  if (swift_dynamicCast())
  {
    v53 = v168;
    sub_1002A9938(v171, v170);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v54 = swift_dynamicCast();
    v55 = *(v47 + 56);
    if (!v54)
    {
      v55(v45, 1, 1, v46);
      sub_100005508(v45, &qword_1009758B0, &unk_1007F8C20);
      v70 = sub_100010F88(10, 0xD000000000000046, 0x8000000100789AA0);
      v72 = v71;
      sub_1000115C8();
      swift_allocError();
      *v73 = v70;
      *(v73 + 8) = v72;
      swift_willThrow();

      return;
    }

    v55(v45, 0, 1, v46);
    sub_1002A97F4(v45, v52, _s15MacApprovePhoneV17InitialKeyContextVMa);
    sub_1002A985C(v52, v50, _s15MacApprovePhoneV17InitialKeyContextVMa);
    v56 = v53;
    v57 = v167;
    sub_1002A6F48(v56, v50, v42);
    if (v57)
    {
      v58 = _s15MacApprovePhoneV17InitialKeyContextVMa;
      v59 = v52;
LABEL_33:
      sub_1002A98C4(v59, v58);

      return;
    }

    v95 = v164;
    v164[3] = v166;
    v95[4] = &off_1008D9988;
    v96 = sub_10002F604(v95);
    sub_1002A97F4(v42, v96, _s15MacApprovePhoneV26HandleApprovePromptContextVMa);

    v97 = _s15MacApprovePhoneV17InitialKeyContextVMa;
    v98 = v52;
    goto LABEL_43;
  }

  v60 = v171;
  sub_1002A9938(a1, v170);
  if (!swift_dynamicCast())
  {
    sub_1002A9938(a1, v170);
    sub_1000276B4(0, &qword_1009758B8, off_1008C8D48);
    if (swift_dynamicCast())
    {
      v74 = v168;
      sub_1002A9938(v60, v170);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      v76 = v162;
      v75 = v163;
      v77 = swift_dynamicCast();
      v78 = *(v161 + 56);
      if (v77)
      {
        v78(v75, 0, 1, v76);
        v79 = v154;
        sub_1002A97F4(v75, v154, _s15MacApprovePhoneV18InitialLockContextVMa);
        v80 = v153;
        sub_1002A985C(v79, v153, _s15MacApprovePhoneV18InitialLockContextVMa);
        v56 = v74;
        v81 = v155;
        v82 = v167;
        sub_1002A7634(v56, v80, v155);
        if (v82)
        {
          v83 = _s15MacApprovePhoneV18InitialLockContextVMa;
LABEL_32:
          v58 = v83;
          v59 = v79;
          goto LABEL_33;
        }

        v117 = v164;
        v164[3] = v151;
        v117[4] = &off_1008D99B8;
        v118 = sub_10002F604(v117);
        sub_1002A97F4(v81, v118, _s15MacApprovePhoneV20HandleRequestContextVMa);

        v119 = _s15MacApprovePhoneV18InitialLockContextVMa;
        goto LABEL_42;
      }

      v78(v75, 1, 1, v76);
      sub_100005508(v75, &qword_1009758A0, &qword_1007F8C10);
      v99 = "sult, message may be replayed";
      v100 = 0xD000000000000047;
    }

    else
    {
      sub_1002A9938(a1, v170);
      sub_1000276B4(0, &qword_1009758C0, off_1008C8D50);
      if (swift_dynamicCast())
      {
        v74 = v168;
        sub_1002A9938(v60, v170);
        sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
        v88 = v156;
        v89 = v157;
        v90 = swift_dynamicCast();
        v91 = *(v152 + 56);
        if (v90)
        {
          v91(v88, 0, 1, v89);
          v79 = v147;
          sub_1002A97F4(v88, v147, _s15MacApprovePhoneV24HandleUserApprovalResultVMa);
          v92 = v146;
          sub_1002A985C(v79, v146, _s15MacApprovePhoneV24HandleUserApprovalResultVMa);
          v56 = v74;
          v93 = v149;
          v94 = v167;
          sub_1002A7A78(v56, v92, v149);
          if (v94)
          {
            v83 = _s15MacApprovePhoneV24HandleUserApprovalResultVMa;
            goto LABEL_32;
          }

          v124 = v164;
          v164[3] = v145;
          v124[4] = &off_1008D99D0;
          v125 = sub_10002F604(v124);
          sub_1002A97F4(v93, v125, _s15MacApprovePhoneV21HandleResponseContextVMa);

          v119 = _s15MacApprovePhoneV24HandleUserApprovalResultVMa;
LABEL_42:
          v97 = v119;
          v98 = v79;
          goto LABEL_43;
        }

        v91(v88, 1, 1, v89);
        sub_100005508(v88, &qword_100975898, &qword_1007F8C08);
        v99 = ", message may be replayed";
        v100 = 0xD00000000000004DLL;
      }

      else
      {
        sub_1002A9938(a1, v170);
        sub_1000276B4(0, &qword_1009758C8, off_1008C8D58);
        if (swift_dynamicCast())
        {
          v74 = v168;
          sub_1002A9938(v60, v170);
          sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
          v101 = v150;
          v102 = v151;
          v103 = swift_dynamicCast();
          v104 = *(v148 + 56);
          if (v103)
          {
            v104(v101, 0, 1, v102);
            v79 = v141;
            sub_1002A97F4(v101, v141, _s15MacApprovePhoneV20HandleRequestContextVMa);
            v105 = v140;
            sub_1002A985C(v79, v140, _s15MacApprovePhoneV20HandleRequestContextVMa);
            v56 = v74;
            v106 = v143;
            v107 = v167;
            sub_1002A7D08(v56, v105, v143);
            if (v107)
            {
              v83 = _s15MacApprovePhoneV20HandleRequestContextVMa;
              goto LABEL_32;
            }

            v130 = v164;
            v164[3] = v136;
            v130[4] = &off_1008D99E8;
            v131 = sub_10002F604(v130);
            sub_1002A97F4(v106, v131, _s15MacApprovePhoneV18HandleTokenContextVMa);

            v119 = _s15MacApprovePhoneV20HandleRequestContextVMa;
            goto LABEL_42;
          }

          v104(v101, 1, 1, v102);
          sub_100005508(v101, &qword_100975890, &qword_1007F8C00);
          v99 = "t, message may be replayed";
          v100 = 0xD000000000000049;
        }

        else
        {
          sub_1002A9938(a1, v170);
          sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
          if (!swift_dynamicCast())
          {
            v120 = sub_100010F88(10, 0xD00000000000001FLL, 0x80000001007898F0);
            v122 = v121;
            sub_1000115C8();
            swift_allocError();
            *v123 = v120;
            *(v123 + 8) = v122;
            swift_willThrow();
            return;
          }

          v74 = v168;
          sub_1002A9938(v60, v170);
          sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
          v110 = v144;
          v111 = v145;
          v112 = swift_dynamicCast();
          v113 = *(v142 + 56);
          if (v112)
          {
            v113(v110, 0, 1, v111);
            v79 = v138;
            sub_1002A97F4(v110, v138, _s15MacApprovePhoneV21HandleResponseContextVMa);
            v114 = v137;
            sub_1002A985C(v79, v137, _s15MacApprovePhoneV21HandleResponseContextVMa);
            v56 = v74;
            v115 = v139;
            v116 = v167;
            sub_1002A80C4(v56, v114, v139);
            if (v116)
            {
              v83 = _s15MacApprovePhoneV21HandleResponseContextVMa;
              goto LABEL_32;
            }

            v132 = v164;
            v164[3] = v135;
            v132[4] = &off_1008D9A00;
            v133 = sub_10002F604(v132);
            sub_1002A97F4(v115, v133, _s15MacApprovePhoneV25HandleConfirmationContextVMa);

            v119 = _s15MacApprovePhoneV21HandleResponseContextVMa;
            goto LABEL_42;
          }

          v113(v110, 1, 1, v111);
          sub_100005508(v110, &qword_100975888, &qword_1007F8BF8);
          v99 = "Invalid message object received";
          v100 = 0xD00000000000004ALL;
        }
      }
    }

    v126 = sub_100010F88(10, v100, v99 | 0x8000000000000000);
    v128 = v127;
    sub_1000115C8();
    swift_allocError();
    *v129 = v126;
    *(v129 + 8) = v128;
    swift_willThrow();

    return;
  }

  v62 = v168;
  v61 = v169;
  sub_1002A9938(v60, v170);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  v63 = v166;
  v64 = swift_dynamicCast();
  v65 = *(v165 + 56);
  if (!v64)
  {
    v65(v35, 1, 1, v63);
    sub_100005508(v35, &qword_1009758A8, &qword_1007F8C18);
    v84 = sub_100010F88(10, 0xD00000000000004FLL, 0x8000000100789A50);
    v86 = v85;
    sub_1000115C8();
    swift_allocError();
    *v87 = v84;
    *(v87 + 8) = v86;
    swift_willThrow();
    goto LABEL_15;
  }

  v65(v35, 0, 1, v63);
  v66 = v159;
  sub_1002A97F4(v35, v159, _s15MacApprovePhoneV26HandleApprovePromptContextVMa);
  v67 = v158;
  sub_1002A985C(v66, v158, _s15MacApprovePhoneV26HandleApprovePromptContextVMa);
  sub_1002A9924(v62, v61);

  v68 = v160;
  v69 = v167;
  sub_1002A7294(v62, v61, v67, v160);
  if (v69)
  {
    sub_1002A98C4(v66, _s15MacApprovePhoneV26HandleApprovePromptContextVMa);
LABEL_15:
    sub_10028BCC0(v62, v61);

    return;
  }

  v108 = v164;
  v164[3] = v157;
  v108[4] = &off_1008D99A0;
  v109 = sub_10002F604(v108);
  sub_1002A97F4(v68, v109, _s15MacApprovePhoneV24HandleUserApprovalResultVMa);
  sub_10028BCC0(v62, v61);

  v97 = _s15MacApprovePhoneV26HandleApprovePromptContextVMa;
  v98 = v66;
LABEL_43:
  sub_1002A98C4(v98, v97);
}

uint64_t sub_1002A97F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A985C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A98C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002A9924(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100294008(result, a2);
  }

  return result;
}

uint64_t sub_1002A9938(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1002A99C4(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788, &protocol descriptor for SDAuthenticationAKSSessionProtocol);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002A9AAC(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788, &protocol descriptor for SDAuthenticationAKSSessionProtocol);
    if (v2 <= 0x3F)
    {
      sub_1002A6C44(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SDAuthenticationSessionMetrics(319);
        if (v4 <= 0x3F)
        {
          sub_1002A6C94(319, &unk_1009759E8, &qword_1009758B8, off_1008C8D48);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1002A9BF4(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788, &protocol descriptor for SDAuthenticationAKSSessionProtocol);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics(319);
      if (v3 <= 0x3F)
      {
        sub_1002A6C44(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_1002A6C94(319, &unk_100975A90, &qword_1009758C0, off_1008C8D50);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1002A9DB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, void *a6)
{
  sub_1002A6B2C(319);
  if (v9 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788, &protocol descriptor for SDAuthenticationAKSSessionProtocol);
    if (v10 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics(319);
      if (v11 <= 0x3F)
      {
        sub_1002A6C94(319, a4, a5, a6);
        if (v12 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1002A9EB8(unint64_t *a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1002A9F78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SDAuthenticationSessionMetrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002AA01C(uint64_t a1)
{
  sub_1002A6B2C(319);
  if (v1 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788, &protocol descriptor for SDAuthenticationAKSSessionProtocol);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1002AA0E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x674179627261656ELL;
  v3 = 0xEB00000000746E65;
  v4 = a1;
  v5 = 0xD000000000000010;
  v6 = 0x80000001007888E0;
  if (a1 != 5)
  {
    v5 = 0x65756C4265726F63;
    v6 = 0xED000068746F6F74;
  }

  v7 = 0x4274726F70706172;
  v8 = 0xE900000000000054;
  if (a1 != 3)
  {
    v7 = 0x4174726F70706172;
    v8 = 0xEB000000004C4457;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6C61636F4C736469;
  if (a1 != 1)
  {
    v10 = 0x7265746E49736469;
    v9 = 0xEB0000000074656ELL;
  }

  if (!a1)
  {
    v10 = 0x674179627261656ELL;
    v9 = 0xEB00000000746E65;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = 0xE800000000000000;
        if (v11 != 0x6C61636F4C736469)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v3 = 0xEB0000000074656ELL;
        if (v11 != 0x7265746E49736469)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v3 = 0x80000001007888E0;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v3 = 0xED000068746F6F74;
        if (v11 != 0x65756C4265726F63)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v3 = 0xE900000000000054;
      if (v11 != 0x4274726F70706172)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0x4174726F70706172;
    v3 = 0xEB000000004C4457;
  }

  if (v11 != v2)
  {
LABEL_36:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v3)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_1002AA338(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00726569666974;
  v3 = 0x6E65644965736163;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x69666E6F4363666ELL;
    }

    else
    {
      v5 = 0x69746C754D7369;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000067;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x444955557462;
    }

    else
    {
      v5 = 0x6E65644965736163;
    }

    if (v4)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xEE00726569666974;
    }
  }

  v7 = 0x69666E6F4363666ELL;
  v8 = 0xE900000000000067;
  if (a2 != 2)
  {
    v7 = 0x69746C754D7369;
    v8 = 0xE700000000000000;
  }

  if (a2)
  {
    v3 = 0x444955557462;
    v2 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t sub_1002AA484(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000065646F43;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000019;
    }

    else
    {
      v5 = 0x655270756B6F6F6CLL;
    }

    if (v3 == 2)
    {
      v4 = 0x8000000100788100;
    }

    else
    {
      v4 = 0xED000073746C7573;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xEF6567617373654DLL;
    }

    else
    {
      v4 = 0xEC00000065646F43;
    }

    v5 = 0x65736E6F70736572;
  }

  v6 = 0xD000000000000019;
  v7 = 0x8000000100788100;
  if (a2 != 2)
  {
    v6 = 0x655270756B6F6F6CLL;
    v7 = 0xED000073746C7573;
  }

  if (a2)
  {
    v2 = 0xEF6567617373654DLL;
  }

  if (a2 <= 1u)
  {
    v8 = 0x65736E6F70736572;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v5 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_1002AA5D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF4449656C707041;
  v3 = 0x7265766965636552;
  v4 = a1;
  v5 = 0x80000001007884C0;
  v6 = 0xD000000000000013;
  if (a1 != 4)
  {
    v5 = 0x80000001007884E0;
  }

  if (a1 == 3)
  {
    v6 = 0xD000000000000010;
    v7 = 0x80000001007884A0;
  }

  else
  {
    v7 = v5;
  }

  v8 = 0x8000000100788460;
  v9 = 0xD000000000000015;
  if (a1 == 1)
  {
    v9 = 0xD000000000000010;
  }

  else
  {
    v8 = 0x8000000100788480;
  }

  if (a1)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x7265766965636552;
  }

  if (!v4)
  {
    v8 = 0xEF4449656C707041;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v10 = v6;
    v11 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        v2 = 0x80000001007884C0;
      }

      else
      {
        v2 = 0x80000001007884E0;
      }

      v3 = 0xD000000000000013;
      goto LABEL_29;
    }

    v2 = 0x80000001007884A0;
LABEL_25:
    v3 = 0xD000000000000010;
    goto LABEL_29;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      v2 = 0x8000000100788480;
      v3 = 0xD000000000000015;
      goto LABEL_29;
    }

    v2 = 0x8000000100788460;
    goto LABEL_25;
  }

LABEL_29:
  if (v10 == v3 && v11 == v2)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t sub_1002AA758(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000004449;
  v3 = 0x726566736E617254;
  v4 = a1;
  v5 = 0xE600000000000000;
  v6 = 0x656C646E6148;
  v7 = 0x7461446472614356;
  if (a1 == 4)
  {
    v8 = 0xE900000000000061;
  }

  else
  {
    v7 = 0xD000000000000011;
    v8 = 0x80000001007886E0;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x6D614E6E65766947;
  v10 = 0xE900000000000065;
  if (a1 != 1)
  {
    v9 = 0x656D614E6C6C7546;
    v10 = 0xE800000000000000;
  }

  if (!a1)
  {
    v9 = 0x726566736E617254;
    v10 = 0xEA00000000004449;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x656C646E6148)
      {
        goto LABEL_32;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE900000000000061;
      if (v11 != 0x7461446472614356)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v2 = 0x80000001007886E0;
      if (v11 != 0xD000000000000011)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE900000000000065;
        if (v11 != 0x6D614E6E65766947)
        {
          goto LABEL_32;
        }

        goto LABEL_29;
      }

      v2 = 0xE800000000000000;
      v3 = 0x656D614E6C6C7546;
    }

    if (v11 != v3)
    {
LABEL_32:
      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_33;
    }
  }

LABEL_29:
  if (v12 != v2)
  {
    goto LABEL_32;
  }

  v13 = 1;
LABEL_33:

  return v13 & 1;
}

uint64_t sub_1002AA934(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000004449;
  v3 = 0x726566736E617254;
  v4 = a1;
  v5 = 0x73507265646E6553;
  v6 = 0xEF6D796E6F647565;
  if (a1 != 5)
  {
    v5 = 0x75507265646E6553;
    v6 = 0xEF6E656B6F546873;
  }

  v7 = 0xE400000000000000;
  v8 = 1635017028;
  if (a1 != 3)
  {
    v8 = 0x6F4364616F6C7055;
    v7 = 0xEE006574656C706DLL;
  }

  if (a1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x7479426C61746F54;
  v10 = 0xEA00000000007365;
  if (a1 != 1)
  {
    v9 = 0x2D746E65746E6F43;
    v10 = 0xEC00000065707954;
  }

  if (!a1)
  {
    v9 = 0x726566736E617254;
    v10 = 0xEA00000000004449;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEA00000000007365;
        if (v11 != 0x7479426C61746F54)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEC00000065707954;
        if (v11 != 0x2D746E65746E6F43)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xEF6D796E6F647565;
        if (v11 != 0x73507265646E6553)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v2 = 0xEF6E656B6F546873;
        if (v11 != 0x75507265646E6553)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v2 = 0xE400000000000000;
      if (v11 != 1635017028)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v3 = 0x6F4364616F6C7055;
    v2 = 0xEE006574656C706DLL;
  }

  if (v11 != v3)
  {
LABEL_36:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v2)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}

uint64_t sub_1002AABA4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000044496E6FLL;
  v3 = a1;
  if (a1 <= 2u)
  {
    v10 = 0x80000001007885E0;
    v11 = 0xD000000000000017;
    if (a1 == 1)
    {
      v11 = 0xD000000000000011;
    }

    else
    {
      v10 = 0x80000001007887B0;
    }

    if (a1)
    {
      v8 = v11;
    }

    else
    {
      v8 = 0xD000000000000014;
    }

    if (v3)
    {
      v9 = v10;
    }

    else
    {
      v9 = 0x8000000100788580;
    }
  }

  else
  {
    v4 = 0x8000000100788800;
    v5 = 0xD000000000000015;
    if (a1 == 5)
    {
      v5 = 0xD000000000000011;
    }

    else
    {
      v4 = 0x8000000100788820;
    }

    v6 = 0x80000001007887E0;
    if (a1 == 3)
    {
      v7 = 0x6973736553534449;
    }

    else
    {
      v7 = 0xD000000000000011;
    }

    if (a1 == 3)
    {
      v6 = 0xEC00000044496E6FLL;
    }

    if (a1 <= 4u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v3 <= 4)
    {
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v2 = 0x8000000100788580;
      if (v8 != 0xD000000000000014)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    if (a2 != 1)
    {
      v2 = 0x80000001007887B0;
      if (v8 != 0xD000000000000017)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v12 = "ReceiverModelName";
    goto LABEL_40;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      if (v8 != 0x6973736553534449)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v12 = "ReceiverPseudonym";
LABEL_40:
    v2 = (v12 - 32) | 0x8000000000000000;
    if (v8 != 0xD000000000000011)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (a2 == 5)
  {
    v12 = "ReceiverPushToken";
    goto LABEL_40;
  }

  v2 = 0x8000000100788820;
  if (v8 != 0xD000000000000015)
  {
LABEL_45:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_46;
  }

LABEL_43:
  if (v9 != v2)
  {
    goto LABEL_45;
  }

  v13 = 1;
LABEL_46:

  return v13 & 1;
}

uint64_t sub_1002AADAC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0x69447349656C6946;
  v5 = 0xEF79726F74636572;
  if (a1 != 5)
  {
    v4 = 0xD000000000000019;
    v5 = 0x8000000100788880;
  }

  v6 = 0xE800000000000000;
  v7 = 0x657A6953656C6946;
  if (a1 != 3)
  {
    v7 = 0x506D6F42656C6946;
    v6 = 0xEB00000000687461;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x65707954656C6946;
  if (a1 != 1)
  {
    v9 = 0x54627553656C6946;
    v8 = 0xEB00000000657079;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x656D614E656C6946;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x656D614E656C6946)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x65707954656C6946)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v13 = 0x54627553656C6946;
    v14 = 6647929;
    goto LABEL_34;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x657A6953656C6946)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v13 = 0x506D6F42656C6946;
    v14 = 6845537;
LABEL_34:
    v12 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v10 != v13)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

  if (a2 == 5)
  {
    v12 = 0xEF79726F74636572;
    if (v10 != 0x69447349656C6946)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0x8000000100788880;
    if (v10 != 0xD000000000000019)
    {
LABEL_39:
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_40;
    }
  }

LABEL_37:
  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v15 = 1;
LABEL_40:

  return v15 & 1;
}

uint64_t sub_1002AB004(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006465;
  v3 = 0x7472617453746F6ELL;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x6572676F72506E69;
    }

    else
    {
      v5 = 0x7472617453746F6ELL;
    }

    if (v4)
    {
      v6 = 0xEA00000000007373;
    }

    else
    {
      v6 = 0xEA00000000006465;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6574656C706D6F63;
    v6 = 0xE900000000000064;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x64656C696166;
    }

    else
    {
      v5 = 1885956979;
    }

    if (v4 == 3)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  v7 = 0x6574656C706D6F63;
  v8 = 0xE900000000000064;
  v9 = 0xE600000000000000;
  v10 = 0x64656C696166;
  if (a2 != 3)
  {
    v10 = 1885956979;
    v9 = 0xE400000000000000;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 0x6572676F72506E69;
    v2 = 0xEA00000000007373;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_1002AB178()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100975CC0);
  v1 = sub_10000C4AC(v0, qword_100975CC0);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002AB240()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 2;
  *(v0 + 120) = 0;
  type metadata accessor for SDAuthenticationBioArmUnarmedDevices(0);
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0u;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = 0;
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_streamContinuation;
  v3 = sub_10028088C(&qword_100975E78, &qword_1007F90E8);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyInfoScanner) = 0;
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyActionScanner) = 0;
  *(v0 + 128) = v1;
  return v0;
}

uint64_t sub_1002AB32C()
{

  if (*(v0 + 160))
  {
    sub_10000C60C((v0 + 136));
  }

  sub_100005508(v0 + 176, &qword_100982080, &unk_1007FDD30);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

void sub_1002AB3B8(uint64_t a1)
{
  v49 = a1;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v51 = (v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v5 - 8);
  v50 = v43 - v6;
  v7 = sub_10028088C(&qword_100975E20, &unk_1007FCB90);
  v48 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v43 - v8;
  v10 = sub_10028088C(&qword_100975E28, &qword_1007F9060);
  __chkstk_darwin(v10);
  v11 = sub_10028088C(&qword_100975E30, &qword_1007F9068);
  __chkstk_darwin(v11);
  v12 = SFDeviceClassCodeGet();
  if (v12 == 1)
  {
    swift_beginAccess();
    if (*(v1 + 160))
    {
      sub_1002A9938(v1 + 136, &v55);
      if (*(&v56 + 1))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v31 = *(v1 + 152);
      v55 = *(v1 + 136);
      v56 = v31;
      v57 = *(v1 + 168);
      if (*(&v31 + 1))
      {
LABEL_4:
        sub_10000C60C(&v55);
        if (*(v1 + 160))
        {
          goto LABEL_5;
        }

        goto LABEL_25;
      }
    }

    v45 = v3;
    v46 = v2;
    v47 = v1;
    if (qword_100973540 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_10000C4AC(v32, qword_100975CC0);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "BioArmInitiator: Creating device stream", v35, 2u);
    }

    v1 = v47;
    v43[0] = *(v47 + 128);
    *(&v56 + 1) = sub_10028088C(&qword_100975E38, &qword_1007F9070);
    v44 = &protocol conformance descriptor for AsyncCompactMapSequence<A, B>;
    v57 = sub_100011630(&qword_100975E40, &qword_100975E38, &qword_1007F9070, &protocol conformance descriptor for AsyncCompactMapSequence<A, B>);
    v43[1] = sub_10002F604(&v55);
    sub_1000276B4(0, &unk_10097CA20, CBDevice_ptr);
    (*(v48 + 104))(v9, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v7);

    AsyncStream.init(_:bufferingPolicy:_:)();
    sub_100011630(&qword_100975E48, &qword_100975E28, &qword_1007F9060, &protocol conformance descriptor for AsyncStream<A>);
    AsyncCompactMapSequence.init(_:transform:)();
    sub_10028088C(&qword_100975E50, &qword_1007F9078);
    sub_100011630(&qword_100975E58, &qword_100975E30, &qword_1007F9068, v44);
    AsyncCompactMapSequence.init(_:transform:)();

    swift_beginAccess();
    v36 = *(&v56 + 1);
    if (*(v1 + 160))
    {
      sub_10000C60C((v1 + 136));
    }

    v3 = v45;
    v2 = v46;
    if (v36)
    {
      sub_1000121F8(&v55, v1 + 136);
    }

    else
    {
      v37 = v56;
      *(v1 + 136) = v55;
      *(v1 + 152) = v37;
      *(v1 + 168) = v57;
    }

    swift_endAccess();
    if (*(v1 + 160))
    {
LABEL_5:
      sub_1002A9938(v1 + 136, &v52);
      if (*(&v53 + 1))
      {
LABEL_6:
        sub_1000121F8(&v52, &v55);
        v13 = type metadata accessor for TaskPriority();
        v14 = v50;
        (*(*(v13 - 8) + 56))(v50, 1, 1, v13);
        sub_1002A9938(&v55, &v52);
        v15 = v51;
        (*(v3 + 16))(v51, v49, v2);
        v17 = sub_1002AF520(&qword_100975E60, v16, _s19UnlockClassCManagerCMa, &unk_1007F9024);
        v18 = v3;
        v19 = (*(v3 + 80) + 72) & ~*(v3 + 80);
        v20 = v2;
        v21 = swift_allocObject();
        *(v21 + 16) = v1;
        *(v21 + 24) = v17;
        sub_1000121F8(&v52, v21 + 32);
        (*(v18 + 32))(v21 + v19, v15, v20);
        *(v21 + ((v4 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
        swift_retain_n();
        sub_1002B3098(0, 0, v14, &unk_1007F9088, v21);

        sub_10000C60C(&v55);
        return;
      }

      goto LABEL_26;
    }

LABEL_25:
    v38 = *(v1 + 152);
    v52 = *(v1 + 136);
    v53 = v38;
    v54 = *(v1 + 168);
    if (*(&v38 + 1))
    {
      goto LABEL_6;
    }

LABEL_26:
    if (qword_100973540 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_10000C4AC(v39, qword_100975CC0);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "BioArmInitiator: device stream is nil. This shouldn't happen", v42, 2u);
    }

    return;
  }

  v22 = v12;
  if (qword_100973540 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000C4AC(v23, qword_100975CC0);
  v51 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v55 = v26;
    *v25 = 136315138;
    sub_1002AF3D0(v22);
    v27 = String.init(cString:)();
    v29 = sub_10000C4E4(v27, v28, &v55);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v51, v24, "BioArmInitiator: Not iPhone. Got %s instead", v25, 0xCu);
    sub_10000C60C(v26);
  }

  else
  {
    v30 = v51;
  }
}

void sub_1002ABCDC(int a1)
{
  v76 = type metadata accessor for UUID();
  v3 = *(v76 - 8);
  __chkstk_darwin(v76);
  v75 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!SFDeviceIsRealityDevice())
  {
    return;
  }

  v5 = objc_opt_self();
  v6 = [v5 sharedMonitor];
  if (!v6)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = [v6 defaultWiFiDevice];

  v70 = v3;
  v71 = v1;
  LODWORD(v74) = a1;
  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v77, 0, sizeof(v77));
  }

  sub_100005508(v77, &unk_1009746F0, &qword_1007F90B0);
  v9 = objc_opt_self();
  v10 = [v9 standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 BOOLForKey:v11];

  sub_1002AF1FC(v13);
  v15 = v14;
  v16 = [v9 standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 BOOLForKey:v17];

  if (v18)
  {
    if (qword_100973540 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_100975CC0);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "pretendClassDUntilNextBioArm is set", v22, 2u);
    }
  }

  v23 = sub_10005CF6C();
  v24 = [v5 sharedMonitor];
  if (!v24)
  {
    goto LABEL_58;
  }

  v25 = v24;
  LODWORD(v26) = v15 | v12;
  LODWORD(v27) = v23 ^ 1 | v18;
  v28 = v8 != 0;
  v29 = [v24 screenOn];

  LODWORD(v30) = v28 & v26 & v27;
  if (v29)
  {
    LODWORD(v31) = 1;
    LODWORD(v32) = v28 & v26 & v27;
  }

  else
  {
    LODWORD(v32) = v30 & v74;
    LODWORD(v31) = v74 & 1;
  }

  if (qword_100973540 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v33 = type metadata accessor for Logger();
    sub_10000C4AC(v33, qword_100975CC0);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 67110400;
      *(v36 + 4) = v30;
      *(v36 + 8) = 1024;
      *(v36 + 10) = v8 != 0;
      *(v36 + 14) = 1024;
      *(v36 + 16) = v26 & 1;
      *(v36 + 20) = 1024;
      *(v36 + 22) = v27 & 1;
      *(v36 + 26) = 1024;
      *(v36 + 28) = v74 & 1;
      *(v36 + 32) = 1024;
      *(v36 + 34) = v31;
      _os_log_impl(&_mh_execute_header, v34, v35, "Advertising for Unlock Class C: %{BOOL}d (wifiDeviceLoaded: %{BOOL}d, enabled: %{BOOL}d, inClassD: %{BOOL}d, ignoreScreenState: %{BOOL}d, screen on: %{BOOL}d", v36, 0x26u);
    }

    if (qword_100973C50 != -1)
    {
      swift_once();
    }

    v37 = qword_1009A10A8;
    v8 = v70;
    v38 = v71;
    if (!qword_1009A10A8)
    {
      break;
    }

    if (v30)
    {
      v39 = 8;
    }

    else
    {
      v39 = 0;
    }

    v40 = objc_opt_self();
    v41 = v37;
    v42 = [v40 sharedNearbyAgent];
    [v42 unlockUpdateAdvertising:v39 mask:8];

    if (!v32)
    {
      goto LABEL_52;
    }

    v43 = *(v38 + 120);
    if (v43)
    {
      if (*(v43 + 16))
      {
        goto LABEL_52;
      }
    }

    v73 = objc_opt_self();
    v44 = [v73 sharedTransport];
    if (!v44)
    {
      goto LABEL_59;
    }

    v45 = v44;
    v46 = [v44 enabledAutoUnlockDevices];

    if (!v46)
    {
      goto LABEL_60;
    }

    sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
    sub_10002764C();
    v47 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = sub_1002AF074(v47, v48);

    v30 = *&v41[OBJC_IVAR____TtC16DaemoniOSLibrary23SDAuthenticationManager_queue];
    if ((v49 & 0x8000000000000000) != 0 || (v49 & 0x4000000000000000) != 0)
    {
      v26 = _CocoaArrayWrapper.endIndex.getter();
      if (!v26)
      {
LABEL_50:
        v64 = v30;

        v32 = _swiftEmptyArrayStorage;
LABEL_51:
        type metadata accessor for SDAuthenticationNearbyActionAdvertiser();
        v65 = swift_allocObject();
        *(v65 + 40) = 0;
        v66 = [objc_allocWithZone(SFService) init];
        *(v65 + 24) = v66;
        [v66 setDispatchQueue:v30];

        *(v65 + 32) = v32;
        *(v65 + 16) = 0;
        *(v38 + 120) = v65;

        sub_10033AAB8();

LABEL_52:

        return;
      }
    }

    else
    {
      v26 = *(v49 + 16);
      if (!v26)
      {
        goto LABEL_50;
      }
    }

    v74 = v49;
    v69 = v41;
    *&v77[0] = _swiftEmptyArrayStorage;
    v68 = v30;
    v50 = v30;
    sub_10028FBDC(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v27 = 0;
    v32 = *&v77[0];
    v51 = v74;
    v72 = v74 & 0xC000000000000001;
    v52 = (v8 + 8);
    while (1)
    {
      v31 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v72)
      {
        v53 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v27 >= *(v51 + 16))
        {
          goto LABEL_47;
        }

        v53 = *(v51 + 8 * v27 + 32);
      }

      v54 = v53;
      v55 = [v73 sharedTransport];
      if (!v55)
      {
        goto LABEL_55;
      }

      v56 = v55;
      v57 = [v54 uniqueID];
      v58 = [v56 bluetoothIDForIDSID:v57];

      if (!v58)
      {
        goto LABEL_56;
      }

      v59 = v75;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v60 = UUID.uuidString.getter();
      v30 = v61;

      (*v52)(v59, v76);
      *&v77[0] = v32;
      v8 = v32[2];
      v62 = v32[3];
      if (v8 >= v62 >> 1)
      {
        sub_10028FBDC((v62 > 1), v8 + 1, 1);
        v32 = *&v77[0];
      }

      v32[2] = v8 + 1;
      v63 = &v32[2 * v8];
      v63[4] = v60;
      v63[5] = v30;
      ++v27;
      v51 = v74;
      if (v31 == v26)
      {

        v38 = v71;
        v30 = v68;
        v41 = v69;
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }
}

void sub_1002AC4E4()
{
  out_token = 0;
  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v0 = static OS_dispatch_queue.main.getter();
  v1 = swift_allocObject();
  swift_weakInit();
  v10 = sub_1002AF7BC;
  v11 = v1;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1006935D4;
  v9 = &unk_1008D9AB8;
  v2 = _Block_copy(&v6);

  notify_register_dispatch("postUnlockKeyRequestNotification", &out_token, v0, v2);
  _Block_release(v2);

  v3 = static OS_dispatch_queue.main.getter();
  v4 = swift_allocObject();
  swift_weakInit();
  v10 = sub_1002AF7F4;
  v11 = v4;
  v6 = _NSConcreteStackBlock;
  v7 = 1107296256;
  v8 = sub_1006935D4;
  v9 = &unk_1008D9AE0;
  v5 = _Block_copy(&v6);

  notify_register_dispatch("triggerStateChange", &out_token, v3, v5);
  _Block_release(v5);
}

uint64_t sub_1002AC700()
{
  if (qword_100973540 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975CC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "postUnlockKeyRequestNotification by command line", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1002AC878, Strong, 0);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1002AC878()
{
  sub_1002AC8E0();

  v1 = *(v0 + 8);

  return v1();
}

void sub_1002AC8E0()
{
  v1 = [objc_opt_self() sharedMonitor];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  v3 = [v1 deviceKeyBagLocked];

  if (!v3)
  {
    if (qword_100973540 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_10000C4AC(v8, qword_100975CC0);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_13;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "not posting request to unlock phone because device is already unlocked";
    goto LABEL_12;
  }

  if (*(v0 + 216))
  {
    if (qword_100973540 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100975CC0);
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v5))
    {
      goto LABEL_13;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "not posting request to unlock phone because notification has already been posted";
LABEL_12:
    _os_log_impl(&_mh_execute_header, oslog, v5, v7, v6, 2u);

LABEL_13:

    return;
  }

  v9 = v0;
  if (qword_100973540 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000C4AC(v10, qword_100975CC0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Posting request to unlock phone", v13, 2u);
  }

  v14 = [objc_opt_self() sharedManager];
  [v14 showRequestToUnlockNotification];

  *(v9 + 216) = 1;
}

uint64_t sub_1002ACBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a2;

  sub_1002B3098(0, 0, v8, a4, v10);
}

uint64_t sub_1002ACCCC()
{
  if (qword_100973540 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975CC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "triggerStateChange by command line", v4, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1002ACE44, Strong, 0);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1002ACE44()
{
  sub_100017200();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002ACEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100005C04;

  return sub_1002ACF48(a5);
}

uint64_t sub_1002ACF48(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_10028088C(&qword_100975E70, &unk_1007F90A0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = _s7RequestVMa(0);
  v2[12] = v4;
  v5 = *(v4 - 8);
  v2[13] = v5;
  v2[14] = *(v5 + 64);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[17] = v6;
  v2[18] = *(v6 - 8);
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_1002AD0E0, v1, 0);
}

uint64_t sub_1002AD0E0()
{
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  v1 = qword_1009A10A8;
  *(v0 + 160) = qword_1009A10A8;
  if (v1)
  {
    v3 = *(v0 + 144);
    v2 = *(v0 + 152);
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 120);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v9 = *(v0 + 56);
    v10 = v1;
    UUID.init()();
    (*(v3 + 16))(v5, v2, v4);
    sub_1002A9938(v9, v5 + v8[5]);
    v11 = v5 + v8[6];
    *v11 = xmmword_1007F4EE0;
    *(v11 + 16) = 0u;
    *(v11 + 32) = 0u;
    *(v11 + 48) = 0;
    *(v5 + v8[7]) = 0;
    UUID.uuidString.getter();
    *(v0 + 184) = 0;
    sub_1002AF568(v5, v6);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    sub_1002AF5CC(v6, v13 + v12);
    v14 = v10;
    withProgressTask<A, B>(_:initialProgress:operation:)();

    v15 = swift_task_alloc();
    *(v0 + 168) = v15;
    *v15 = v0;
    v15[1] = sub_1002AD370;
    v16 = *(v0 + 72);

    return SFProgressTask.finalValue.getter(v0 + 185, v16);
  }

  else
  {

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1002AD370()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_1002AD594;
  }

  else
  {
    v4 = sub_1002AD49C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002AD49C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  sub_1002ADA0C(4uLL);

  (*(v7 + 8))(v6, v8);
  sub_1002AF630(v5);
  (*(v4 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1002AD594()
{
  v1 = v0[22];
  v2 = v0[20];
  v11 = v0[19];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[9];
  sub_1002A9938(v0[7], (v0 + 2));
  sub_1002ADDA8(4uLL, (v0 + 2), v1);

  sub_100005508((v0 + 2), &qword_100982080, &unk_1007FDD30);
  (*(v6 + 8))(v7, v8);
  sub_1002AF630(v5);
  (*(v4 + 8))(v11, v3);

  v9 = v0[1];

  return v9();
}

void sub_1002AD6C8(uint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973C50 != -1)
  {
    swift_once();
  }

  if (qword_1009A10A8)
  {
    if ((a1 - 3) > 0x14)
    {
      v7 = 0;
    }

    else
    {
      v7 = byte_1007F90FA[a1 - 3];
    }

    v8 = *(v1 + 112);
    v14 = qword_1009A10A8;
    if (sub_10000D2C0(v7, v8))
    {
      sub_1002AD8D4();
      v9 = sub_100693628()[2];

      if (v9)
      {
        Date.init()();
        sub_1002AB3B8(v6);

        (*(v4 + 8))(v6, v3);
        return;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = String._bridgeToObjectiveC()();
      v11 = String._bridgeToObjectiveC()();

      sub_10001ED70(0, v10, v11);
    }

    v12 = v14;
  }
}

uint64_t sub_1002AD8D4()
{
  v1 = v0;
  if (qword_100973540 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000C4AC(v2, qword_100975CC0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "BioArmInitiator: Stopping device stream", v5, 2u);
  }

  sub_100342E84();

  swift_beginAccess();
  if (*(v1 + 160))
  {
    sub_10000C60C((v1 + 136));
  }

  *(v1 + 168) = 0;
  *(v1 + 152) = 0u;
  *(v1 + 136) = 0u;
  return swift_endAccess();
}

void sub_1002ADA0C(unint64_t a1)
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 0x17)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0xFE0000) != 0)
  {
    v7 = 0x6E556E6F69736976;
    v8 = 0xEF534F696B636F6CLL;
    goto LABEL_14;
  }

  if (((1 << a1) & 0x7E00) != 0)
  {
    v7 = 0x646F4D7473657567;
    v8 = 0xEF6B636F6C6E5565;
    goto LABEL_14;
  }

  if (((1 << a1) & 0x1E0) != 0)
  {
    v7 = 0x636F6C6E5563616DLL;
    v8 = 0xEE00656E6F68506BLL;
  }

  else
  {
LABEL_8:
    if (a1 - 3 >= 2)
    {
      v7 = 0x6E776F6E6B6E75;
    }

    else
    {
      v7 = 0x6C436B636F6C6E75;
    }

    if (a1 - 3 >= 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = 0xEC00000043737361;
    }
  }

LABEL_14:
  v9 = 0xE700000000000000;
  v10 = *(v1 + 112);
  v11 = 0x6C436B636F6C6E75;
  v12 = 0xEC00000043737361;
  v13 = 0x646F4D7473657567;
  v14 = 0xEF6B636F6C6E5565;
  if (v10 != 3)
  {
    v13 = 0x6E556E6F69736976;
    v14 = 0xEF534F696B636F6CLL;
  }

  if (v10 != 2)
  {
    v11 = v13;
    v12 = v14;
  }

  v15 = 0x636F6C6E5563616DLL;
  if (*(v1 + 112))
  {
    v9 = 0xEE00656E6F68506BLL;
  }

  else
  {
    v15 = 0x6E776F6E6B6E75;
  }

  if (*(v1 + 112) <= 1u)
  {
    v16 = v15;
  }

  else
  {
    v16 = v11;
  }

  if (*(v1 + 112) <= 1u)
  {
    v17 = v9;
  }

  else
  {
    v17 = v12;
  }

  if (v7 == v16 && v8 == v17)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      return;
    }
  }

  if (a1 == 3)
  {
    sub_100017200();
    sub_1002AD8D4();
    Date.init()();
    sub_1002AB3B8(v6);
    (*(v4 + 8))(v6, v3);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = String._bridgeToObjectiveC()();
    v20 = String._bridgeToObjectiveC()();

    sub_10001ED70(1, v19, v20);
  }

  else if (a1 == 4)
  {
    Date.init()();
    sub_1002AB3B8(v6);
    (*(v4 + 8))(v6, v3);
    if (*(v1 + 120))
    {

      sub_10033B470();
    }

    sub_1002ABCDC(0);
  }
}

uint64_t sub_1002ADDA8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 0x17)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0xFE0000) != 0)
  {
    v12 = 0x6E556E6F69736976;
    v13 = 0xEF534F696B636F6CLL;
    goto LABEL_14;
  }

  if (((1 << a1) & 0x7E00) != 0)
  {
    v12 = 0x646F4D7473657567;
    v13 = 0xEF6B636F6C6E5565;
    goto LABEL_14;
  }

  if (((1 << a1) & 0x1E0) != 0)
  {
    v12 = 0x636F6C6E5563616DLL;
    v13 = 0xEE00656E6F68506BLL;
  }

  else
  {
LABEL_8:
    if (a1 - 3 >= 2)
    {
      v12 = 0x6E776F6E6B6E75;
    }

    else
    {
      v12 = 0x6C436B636F6C6E75;
    }

    if (a1 - 3 >= 2)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = 0xEC00000043737361;
    }
  }

LABEL_14:
  v14 = 0xE700000000000000;
  v15 = *(v4 + 112);
  v16 = 0x6C436B636F6C6E75;
  v17 = 0xEC00000043737361;
  v18 = 0x646F4D7473657567;
  v19 = 0xEF6B636F6C6E5565;
  if (v15 != 3)
  {
    v18 = 0x6E556E6F69736976;
    v19 = 0xEF534F696B636F6CLL;
  }

  if (v15 != 2)
  {
    v16 = v18;
    v17 = v19;
  }

  v20 = 0x636F6C6E5563616DLL;
  if (*(v4 + 112))
  {
    v14 = 0xEE00656E6F68506BLL;
  }

  else
  {
    v20 = 0x6E776F6E6B6E75;
  }

  if (*(v4 + 112) <= 1u)
  {
    v21 = v20;
  }

  else
  {
    v21 = v16;
  }

  if (*(v4 + 112) <= 1u)
  {
    v22 = v14;
  }

  else
  {
    v22 = v17;
  }

  if (v12 == v21 && v13 == v22)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      return result;
    }
  }

  v36 = a3;
  swift_errorRetain();
  sub_10028088C(&unk_10097A930, &unk_1007F9050);
  type metadata accessor for SFAuthenticationErrorCode(0);
  if (swift_dynamicCast())
  {
    v25 = v35;
    v26 = 0;
    v27 = 0xE000000000000000;
LABEL_36:
    v28 = sub_100010F88(v25, v26, v27);
    goto LABEL_37;
  }

  v35 = a3;
  swift_errorRetain();
  if (!swift_dynamicCast())
  {
    v36 = 0;
    v37 = 0xE000000000000000;
    v35 = a3;
    _print_unlocked<A, B>(_:_:)();
    v26 = v36;
    v27 = v37;
    v25 = 10;
    goto LABEL_36;
  }

  v28 = v36;
LABEL_37:

  if (v28 == 22)
  {
    sub_1002AC8E0();
    swift_beginAccess();
    sub_1002AF360(a2, v4 + 176);
    swift_endAccess();
  }

  sub_10000FF90(a2, &v36, &qword_100982080, &unk_1007FDD30);
  v29 = v38;
  if (v38)
  {
    v30 = v39;
    sub_10002CDC0(&v36, v38);
    v31 = (*(v30 + 8))(v29, v30);
    v33 = v32;
    sub_10000C60C(&v36);
    if (v33)
    {
      if (v28 == 24 || v28 == 9)
      {
        if (*(*(v4 + 128) + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyInfoScanner))
        {
          swift_beginAccess();

          sub_10046DAAC(&v35, v31, v33);
          swift_endAccess();
        }
      }

      else if (*(*(v4 + 128) + OBJC_IVAR____TtC16DaemoniOSLibrary36SDAuthenticationBioArmUnarmedDevices_nearbyInfoScanner))
      {
        swift_beginAccess();

        sub_10036DB18(v31, v33);
        swift_endAccess();
      }
    }
  }

  else
  {
    sub_100005508(&v36, &qword_100982080, &unk_1007FDD30);
  }

  static Date.distantPast.getter();
  sub_1002AB3B8(v11);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1002AE314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v8 = type metadata accessor for Date();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v9 = sub_10028088C(&qword_100975E50, &qword_1007F9078);
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  sub_10028088C(&qword_100975E68, &qword_1007F9090);
  v6[24] = swift_task_alloc();

  return _swift_task_switch(sub_1002AE4A0, a6, 0);
}

uint64_t sub_1002AE4A0()
{
  if (qword_100973540 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[25] = sub_10000C4AC(v1, qword_100975CC0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "BioArmInitiator: Waiting to arm next device...", v4, 2u);
  }

  v5 = v0[12];

  v6 = v5[3];
  v7 = sub_10002CDC0(v5, v6);
  v8 = *(v6 - 8);
  v9 = swift_task_alloc();
  (*(v8 + 16))(v9, v7, v6);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  sub_10002F604(v0 + 2);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  v11 = sub_1002AF520(&qword_100975E60, v10, _s19UnlockClassCManagerCMa, &unk_1007F9024);
  v0[26] = v11;
  v12 = v0[14];
  sub_10002F5B4((v0 + 2), v0[5]);
  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = sub_1002AE758;
  v14 = v0[24];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v14, v12, v11);
}

uint64_t sub_1002AE758()
{
  v2 = *v1;

  if (!v0)
  {
    v4 = *(v2 + 112);

    return _swift_task_switch(sub_1002AE868, v4, 0);
  }

  return result;
}

uint64_t sub_1002AE868()
{
  v56 = v0;
  v1 = v0[24];
  v2 = v0[18];
  v3 = (*(v0[19] + 48))(v1, 1, v2);
  v4 = v0[23];
  if (v3 == 1)
  {
    sub_10000C60C(v0 + 2);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v7 = *(v0[16] + 32);
    v8 = *(v2 + 48);
    v7(v0[23], v1, v0[15]);
    sub_1000121F8((v1 + v8), v4 + v8);
    if (static Date.> infix(_:_:)())
    {
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "BioArmInitiator: Processing unarmed device!", v11, 2u);
      }

      v13 = v0[22];
      v12 = v0[23];
      v14 = v0[18];
      v15 = v0[15];
      v16 = v0[16];

      sub_10000FF90(v12, v13, &qword_100975E50, &qword_1007F9078);
      sub_1000121F8((v13 + *(v14 + 48)), (v0 + 7));
      (*(v16 + 8))(v13, v15);
      v17 = swift_task_alloc();
      v0[28] = v17;
      *v17 = v0;
      v17[1] = sub_1002AEE90;

      return sub_1002ACF48((v0 + 7));
    }

    else
    {
      v18 = v0[23];
      v19 = v0[20];
      sub_10000FF90(v18, v0[21], &qword_100975E50, &qword_1007F9078);
      sub_10000FF90(v18, v19, &qword_100975E50, &qword_1007F9078);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      v22 = os_log_type_enabled(v20, v21);
      v23 = v0[23];
      if (v22)
      {
        v25 = v0[21];
        v24 = v0[22];
        v26 = v0[18];
        v48 = v26;
        v49 = v0[20];
        v53 = v0[16];
        v50 = v0[17];
        v51 = v0[15];
        v54 = v0[23];
        v27 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *v27 = 136315394;
        v28 = (v25 + *(v26 + 48));
        v30 = v28[3];
        v29 = v28[4];
        sub_10002CDC0(v28, v30);
        v52 = v21;
        v31 = (*(v29 + 8))(v30, v29);
        if (v32)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0xD000000000000015;
        }

        if (v32)
        {
          v34 = v32;
        }

        else
        {
          v34 = 0x8000000100789F30;
        }

        sub_100005508(v25, &qword_100975E50, &qword_1007F9078);
        v35 = sub_10000C4E4(v33, v34, &v55);

        *(v27 + 4) = v35;
        *(v27 + 12) = 2080;
        sub_10000FF90(v49, v24, &qword_100975E50, &qword_1007F9078);
        v36 = *(v48 + 48);
        v7(v50, v24, v51);
        sub_10000C60C((v24 + v36));
        sub_1002AF520(&qword_100983290, 255, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v37 = dispatch thunk of CustomStringConvertible.description.getter();
        v39 = v38;
        (*(v53 + 8))(v50, v51);
        sub_100005508(v49, &qword_100975E50, &qword_1007F9078);
        v40 = sub_10000C4E4(v37, v39, &v55);

        *(v27 + 14) = v40;
        _os_log_impl(&_mh_execute_header, v20, v52, "BioArmInitiator: Skipping %s since it was yielded before %s", v27, 0x16u);
        swift_arrayDestroy();

        v41 = v54;
      }

      else
      {
        v42 = v0[20];
        v43 = v0[21];

        sub_100005508(v42, &qword_100975E50, &qword_1007F9078);
        sub_100005508(v23, &qword_100975E50, &qword_1007F9078);
        v41 = v43;
      }

      sub_100005508(v41, &qword_100975E50, &qword_1007F9078);
      v44 = v0[26];
      v45 = v0[14];
      sub_10002F5B4((v0 + 2), v0[5]);
      v46 = swift_task_alloc();
      v0[27] = v46;
      *v46 = v0;
      v46[1] = sub_1002AE758;
      v47 = v0[24];

      return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v47, v45, v44);
    }
  }
}

uint64_t sub_1002AEE90()
{
  v1 = *(*v0 + 112);

  return _swift_task_switch(sub_1002AEFA0, v1, 0);
}

uint64_t sub_1002AEFA0()
{
  v1 = v0[23];
  sub_10000C60C(v0 + 7);
  sub_100005508(v1, &qword_100975E50, &qword_1007F9078);
  sub_10000C60C(v0 + 2);

  v2 = v0[1];

  return v2();
}

void *sub_1002AF074(uint64_t *a1, __n128 a2)
{
  v2 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v4 = sub_10029434C(a2);

    v2 = sub_100027B24(&v6, (v4 + 32), v3, v2);
    sub_100027D64(v6);
    if (v2 == v3)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v3 = v2[2];
    if (!v3)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v4;
}

void sub_1002AF124(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10028088C(&qword_1009750C0, &qword_1007F90F0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1002AF1FC(uint64_t a1)
{
  if (SFDeviceClassCodeGet() == 1 || !SFDeviceIsRealityDevice())
  {
    return;
  }

  v1 = objc_opt_self();
  v2 = [v1 sharedManager];
  if (!v2)
  {
    __break(1u);
    goto LABEL_12;
  }

  v3 = v2;
  [v2 updateLocalLTK];

  v4 = [v1 sharedManager];
  if (!v4)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = v4;
  [v4 loadRemoteLTKsIfNeeded];

  v6 = [objc_opt_self() sharedTransport];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  v8 = [v6 enabledAutoUnlockDevices];

  if (!v8)
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_1000276B4(0, &qword_100974F60, SFAutoUnlockDevice_ptr);
  sub_10002764C();
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v9 & 0xC000000000000001) != 0)
  {
    __CocoaSet.count.getter();
  }
}

uint64_t sub_1002AF360(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100982080, &unk_1007FDD30);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

const char *sub_1002AF3D0(unsigned int a1)
{
  if (a1 > 8)
  {
    return "?";
  }

  else
  {
    return off_1008D9B58[a1];
  }
}

uint64_t sub_1002AF3FC(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100005C00;

  return sub_1002AE314(a1, v6, v7, v1 + 32, v1 + v5, v8);
}

uint64_t sub_1002AF520(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1002AF568(uint64_t a1, uint64_t a2)
{
  v4 = _s7RequestVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AF5CC(uint64_t a1, uint64_t a2)
{
  v4 = _s7RequestVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AF630(uint64_t a1)
{
  v2 = _s7RequestVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002AF68C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C04;

  return sub_1002ACEAC(a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_1002AF74C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100982080, &unk_1007FDD30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AF82C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002ACCAC(a1, v4, v5, v6);
}

uint64_t sub_1002AF8E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002AC6E0(a1, v4, v5, v6);
}

uint64_t sub_1002AF99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1000106E0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_100011170(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_100005508(a1, &unk_1009746F0, &qword_1007F90B0);
    sub_1002D298C(a2, a3, v9);

    return sub_100005508(v9, &unk_1009746F0, &qword_1007F90B0);
  }

  return result;
}

uint64_t sub_1002AFA94(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100578B14(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for SFAirDrop.TransferIdentifier();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_100570848(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1002D2338(&type metadata accessor for SFAirDrop.TransferIdentifier, &qword_1009762B8, &qword_1007F9428);
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1002D5F50(v11, v13, &type metadata accessor for SFAirDrop.TransferIdentifier, &qword_10097F350, &type metadata accessor for SFAirDrop.TransferIdentifier, &protocol conformance descriptor for SFAirDrop.TransferIdentifier);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for SFAirDrop.TransferIdentifier();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1002AFCBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1002D6398(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_100578D1C(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_100005508(a1, &qword_100976180, &unk_1007F9300);
    sub_1002D2AD4(a2, a3, v9);

    return sub_100005508(v9, &qword_100976180, &unk_1007F9300);
  }

  return result;
}

uint64_t sub_1002AFDB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_100578F48(a1, a2, isUniquelyReferenced_nonNull_native);
    v7 = type metadata accessor for UUID();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v20;
  }

  else
  {
    v9 = sub_10000EBD4(a2);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v2;
      v21 = *v3;
      if (!v12)
      {
        sub_1002CE548();
        v13 = v21;
      }

      v14 = *(v13 + 48);
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 8);
      v17(v14 + *(v16 + 72) * v11, v15);

      sub_1002D42C0(v11, v13);
      result = (v17)(a2, v15);
      *v3 = v13;
    }

    else
    {
      v18 = type metadata accessor for UUID();
      v19 = *(*(v18 - 8) + 8);

      return v19(a2, v18);
    }
  }

  return result;
}

uint64_t sub_1002AFF74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10028088C(&unk_1009761A0, &unk_1007F9320);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SFClientIdentity();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_100005508(a1, &unk_1009761A0, &unk_1007F9320);
    sub_1002D2B80(a2, a3, v9);

    return sub_100005508(v9, &unk_1009761A0, &unk_1007F9320);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1005792F0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1002B014C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10028088C(&unk_100976430, &unk_1007F9640);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_100005508(a1, &unk_100976430, &unk_1007F9640);
    sub_1002D3850(a2, a3, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation, sub_1002CE818, v9);

    return sub_100005508(v9, &unk_100976430, &unk_1007F9640);
  }

  else
  {
    sub_10000CA10(a1, v12, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_1005794F8(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1002B0370(uint64_t a1, uint64_t a2)
{
  v5 = sub_10028088C(&unk_10097F330, &qword_1007F9410);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for NWEndpoint();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100005508(a1, &unk_10097F330, &qword_1007F9410);
    sub_1002D2D28(a2, v7);
    v12 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100005508(v7, &unk_10097F330, &qword_1007F9410);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100579714(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for SFAirDrop.TransferIdentifier();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1002B059C(uint64_t a1, uint64_t a2)
{
  v5 = sub_10028088C(&unk_1009762C0, &unk_1007F9430);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SFAirDropReceive.Transfer();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100005508(a1, &unk_1009762C0, &unk_1007F9430);
    sub_1002D2F14(a2, v7);
    v12 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100005508(v7, &unk_1009762C0, &unk_1007F9430);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_100579950(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for SFAirDrop.TransferIdentifier();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1002B07F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a5, uint64_t *a6)
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v21;
  }

  else
  {
    v16 = sub_100012854(a2, a3);
    v18 = v17;

    if (v18)
    {
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v22 = *v7;
      if (!v19)
      {
        sub_1002D13CC(a5, a6);
        v20 = v22;
      }

      result = sub_1002D533C(v16, v20);
      *v7 = v20;
    }
  }

  return result;
}

uint64_t sub_1002B0958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10028088C(&qword_1009763E0, &qword_1007F95D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_100005508(a1, &qword_1009763E0, &qword_1007F95D0);
    sub_1002D3850(a2, a3, type metadata accessor for SDAirDropDiscoveredEndpoint, type metadata accessor for SDAirDropDiscoveredEndpoint, type metadata accessor for SDAirDropDiscoveredEndpoint, sub_1002CEC98, v9);

    return sub_100005508(v9, &qword_1009763E0, &qword_1007F95D0);
  }

  else
  {
    sub_10000CA10(a1, v12, type metadata accessor for SDAirDropDiscoveredEndpoint);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_100579DF0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1002B0B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_10057A00C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_100012854(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1002CEEF0();
        v16 = v18;
      }

      result = sub_1002D45F8(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1002B0C84(uint64_t a1, uint64_t a2)
{
  v5 = sub_10028088C(&qword_100976468, &qword_1007F9738);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_10028088C(&qword_100976470, &qword_1007F9740);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100005508(a1, &qword_100976468, &qword_1007F9738);
    sub_1002D3100(a2, v7);
    v12 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100005508(v7, &qword_100976468, &qword_1007F9738);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_10057A1E4(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for SFAirDrop.TransferIdentifier();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1002B0EB8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10028088C(&qword_1009762A8, &qword_1007F9418);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SDAirDropLegacySessionLogger.Transfer(0);
  __chkstk_darwin(v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_100005508(a1, &qword_1009762A8, &qword_1007F9418);
    sub_1002D32B8(a2, v7);
    v12 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100005508(v7, &qword_1009762A8, &qword_1007F9418);
  }

  else
  {
    sub_10000CA10(a1, v10, type metadata accessor for SDAirDropLegacySessionLogger.Transfer);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_10057A3F4(v10, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for SFAirDrop.TransferIdentifier();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1002B1100(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a5, uint64_t *a6)
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v13 = type metadata accessor for UUID();
    result = (*(*(v13 - 8) + 8))(a3, v13);
    *v6 = v28;
  }

  else
  {
    v17 = sub_10000EBD4(a3);
    if (v18)
    {
      v19 = v17;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v6;
      v29 = *v7;
      if (!v20)
      {
        sub_1002CF98C(a5, a6);
        v21 = v29;
      }

      v22 = *(v21 + 48);
      v23 = type metadata accessor for UUID();
      v24 = *(v23 - 8);
      v25 = *(v24 + 8);
      v25(v22 + *(v24 + 72) * v19, v23);
      swift_unknownObjectRelease();
      sub_1002D5A9C(v19, v21);
      result = (v25)(a3, v23);
      *v7 = v21;
    }

    else
    {
      v26 = type metadata accessor for UUID();
      v27 = *(*(v26 - 8) + 8);

      return v27(a3, v26);
    }
  }

  return result;
}

uint64_t sub_1002B12F0(uint64_t a1, uint64_t a2)
{
  v5 = sub_10028088C(&qword_100976460, &qword_1007F9730);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for SFAirDropSend.Transfer();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v9 + 48))(a1, 1, v8) == 1)
  {
    sub_100005508(a1, &qword_100976460, &qword_1007F9730);
    sub_1002D3468(a2, v7);
    v12 = type metadata accessor for SFAirDrop.TransferIdentifier();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100005508(v7, &qword_100976460, &qword_1007F9730);
  }

  else
  {
    (*(v9 + 32))(v11, a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v2;
    sub_10057A688(v11, a2, isUniquelyReferenced_nonNull_native);
    v15 = type metadata accessor for SFAirDrop.TransferIdentifier();
    result = (*(*(v15 - 8) + 8))(a2, v15);
    *v2 = v17;
  }

  return result;
}

uint64_t sub_1002B1544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10028088C(&qword_10097A7F0, &unk_1007FB600);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_100005508(a1, &qword_10097A7F0, &unk_1007FB600);
    sub_1002D3654(a2, a3, v9);

    return sub_100005508(v9, &qword_10097A7F0, &unk_1007FB600);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10057A8EC(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1002B171C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10028088C(&unk_100976320, &qword_100810410);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for RegistrationState(0);
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_100005508(a1, &unk_100976320, &qword_100810410);
    sub_1002D3850(a2, a3, type metadata accessor for RegistrationState, type metadata accessor for RegistrationState, type metadata accessor for RegistrationState, sub_1002D0350, v9);

    return sub_100005508(v9, &unk_100976320, &qword_100810410);
  }

  else
  {
    sub_10000CA10(a1, v12, type metadata accessor for RegistrationState);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10057ACD4(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1002B1940(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1 == 2)
  {
    v6 = sub_100012854(a2, a3);
    v8 = v7;

    if (v8)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v4;
      v15 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002D1ED0(&unk_100974720, &unk_10080B0A0);
        v11 = v15;
      }

      result = sub_1002D518C(v6, v11);
      *v4 = v11;
    }
  }

  else
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v4;
    sub_10057B284(a1 & 1, a2, a3, v14);

    *v4 = v16;
  }

  return result;
}

uint64_t sub_1002B1A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_10057B4A0(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = sub_100012854(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_1002D0FD0(&qword_100976390, &qword_1007F9580);
        v14 = v16;
      }

      result = sub_1002D533C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_1002B1B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10028088C(&qword_1009763B8, &qword_1007F95A8);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_10028088C(&qword_1009763C0, &qword_1007F95B0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_100005508(a1, &qword_1009763B8, &qword_1007F95A8);
    sub_1002D39D4(a2, a3, v9);

    return sub_100005508(v9, &qword_1009763B8, &qword_1007F95A8);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10057B6B8(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1002B1D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10028088C(&qword_1009763D0, &unk_1007F95C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for NWBrowser.Result();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_100005508(a1, &qword_1009763D0, &unk_1007F95C0);
    sub_1002D3B5C(a2, a3, v9);

    return sub_100005508(v9, &qword_1009763D0, &unk_1007F95C0);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    sub_10057BABC(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

uint64_t sub_1002B1F78(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a6, uint64_t *a7)
{
  v8 = v7;
  if (a2)
  {
    v13 = sub_100012854(a3, a4);
    v15 = v14;

    if (v15)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v8;
      v22 = *v8;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1002D153C(a6, a7);
        v18 = v22;
      }

      result = sub_1002D533C(v13, v18);
      *v8 = v18;
    }
  }

  else
  {
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v7;
    a5(a1, a3, a4, v21);

    *v7 = v23;
  }

  return result;
}

uint64_t sub_1002B20D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a5, uint64_t *a6)
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v21;
  }

  else
  {
    v16 = sub_100012854(a2, a3);
    v18 = v17;

    if (v18)
    {
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v7;
      v22 = *v7;
      if (!v19)
      {
        sub_1002D196C(a5, a6);
        v20 = v22;
      }

      result = sub_1002D533C(v16, v20);
      *v7 = v20;
    }
  }

  return result;
}

uint64_t sub_1002B2214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    sub_10057C0D4(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    v9 = type metadata accessor for UUID();
    result = (*(*(v9 - 8) + 8))(a3, v9);
    *v3 = v22;
  }

  else
  {
    v11 = sub_10000EBD4(a3);
    if (v12)
    {
      v13 = v11;
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v3;
      v23 = *v4;
      if (!v14)
      {
        sub_1002D1C3C();
        v15 = v23;
      }

      v16 = *(v15 + 48);
      v17 = type metadata accessor for UUID();
      v18 = *(v17 - 8);
      v19 = *(v18 + 8);
      v19(v16 + *(v18 + 72) * v13, v17);

      sub_1002D5A9C(v13, v15);
      result = (v19)(a3, v17);
      *v4 = v15;
    }

    else
    {
      v20 = type metadata accessor for UUID();
      v21 = *(*(v20 - 8) + 8);

      return v21(a3, v20);
    }
  }

  return result;
}

Swift::Int sub_1002B23E0(uint64_t a1, uint64_t a2, Swift::UInt a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_10057C47C(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = sub_10057091C(a3);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_1002D2028();
        v13 = v15;
      }

      result = sub_1002D5DBC(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

uint64_t sub_1002B24B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_10057C5DC(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_100012854(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_1002D2190();
        v16 = v18;
      }

      swift_unknownObjectRelease();
      result = sub_1002D45F8(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_1002B25E0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t *a4, uint64_t *a5)
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    a3(a1, a2, isUniquelyReferenced_nonNull_native);
    v11 = type metadata accessor for UUID();
    result = (*(*(v11 - 8) + 8))(a2, v11);
    *v5 = v26;
  }

  else
  {
    v15 = sub_10000EBD4(a2);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v5;
      v27 = *v6;
      if (!v18)
      {
        sub_1002D2338(&type metadata accessor for UUID, a4, a5);
        v19 = v27;
      }

      v20 = *(v19 + 48);
      v21 = type metadata accessor for UUID();
      v22 = *(v21 - 8);
      v23 = *(v22 + 8);
      v23(v20 + *(v22 + 72) * v17, v21);

      sub_1002D5F50(v17, v19, &type metadata accessor for UUID, &qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = (v23)(a2, v21);
      *v6 = v19;
    }

    else
    {
      v24 = type metadata accessor for UUID();
      v25 = *(*(v24 - 8) + 8);

      return v25(a2, v24);
    }
  }

  return result;
}

uint64_t sub_1002B2844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000FF90(a3, v22 - v9, &qword_100976160, &qword_1007F8770);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100005508(v10, &qword_100976160, &qword_1007F8770);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      sub_10028088C(&qword_100976168, &qword_1007F92F0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100005508(a3, &qword_100976160, &qword_1007F8770);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005508(a3, &qword_100976160, &qword_1007F8770);
  sub_10028088C(&qword_100976168, &qword_1007F92F0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1002B2B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v10 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v10 - 8);
  v12 = v24 - v11;
  sub_10000FF90(a3, v24 - v11, &qword_100976160, &qword_1007F8770);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100005508(v12, &qword_100976160, &qword_1007F8770);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = String.utf8CString.getter() + 32;
      a6(0);

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100005508(a3, &qword_100976160, &qword_1007F8770);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005508(a3, &qword_100976160, &qword_1007F8770);
  a6(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1002B2DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_10000FF90(a3, v23 - v10, &qword_100976160, &qword_1007F8770);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005508(v11, &qword_100976160, &qword_1007F8770);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_100005508(a3, &qword_100976160, &qword_1007F8770);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005508(a3, &qword_100976160, &qword_1007F8770);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1002B3098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000FF90(a3, v25 - v10, &qword_100976160, &qword_1007F8770);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005508(v11, &qword_100976160, &qword_1007F8770);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100005508(a3, &qword_100976160, &qword_1007F8770);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005508(a3, &qword_100976160, &qword_1007F8770);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1002B3398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000FF90(a3, v25 - v10, &qword_100976160, &qword_1007F8770);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005508(v11, &qword_100976160, &qword_1007F8770);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10028088C(&qword_100976168, &qword_1007F92F0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100005508(a3, &qword_100976160, &qword_1007F8770);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005508(a3, &qword_100976160, &qword_1007F8770);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10028088C(&qword_100976168, &qword_1007F92F0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1002B36AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000FF90(a3, v25 - v10, &qword_100976160, &qword_1007F8770);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005508(v11, &qword_100976160, &qword_1007F8770);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_100005508(a3, &qword_100976160, &qword_1007F8770);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005508(a3, &qword_100976160, &qword_1007F8770);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1002B39A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_10000FF90(a3, v25 - v10, &qword_100976160, &qword_1007F8770);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100005508(v11, &qword_100976160, &qword_1007F8770);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      sub_10028088C(&qword_100976378, &qword_1007F9560);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_100005508(a3, &qword_100976160, &qword_1007F8770);

      return v22;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005508(a3, &qword_100976160, &qword_1007F8770);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  sub_10028088C(&qword_100976378, &qword_1007F9560);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1002B3CB8()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100975E80);
  v1 = sub_10000C4AC(v0, qword_100975E80);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NSString sub_1002B3D80()
{
  result = String._bridgeToObjectiveC()();
  qword_1009A0648 = result;
  return result;
}

NSString sub_1002B3DB8()
{
  result = String._bridgeToObjectiveC()();
  qword_1009A0650 = result;
  return result;
}

NSString sub_1002B3DF0()
{
  result = String._bridgeToObjectiveC()();
  qword_1009A0658 = result;
  return result;
}

uint64_t sub_1002B3E28()
{
  v1 = sub_10028088C(&qword_100976138, qword_1007F92B8);
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - v2;
  v4 = type metadata accessor for SDNearFieldTap(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_processingTap;
  swift_beginAccess();
  sub_10000FF90(v0 + v8, v3, &qword_100976138, qword_1007F92B8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100005508(v3, &qword_100976138, qword_1007F92B8);
  }

  else
  {
    sub_10000CA10(v3, v7, type metadata accessor for SDNearFieldTap);
    result = [objc_opt_self() sharedMonitor];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = [result deviceKeyBagLocked];

    if (v11)
    {
      if (v7[*(v4 + 48)] == 1)
      {
        sub_1002D6414(v7, type metadata accessor for SDNearFieldTap);
        return 1;
      }

      v12 = *&v7[*(v4 + 24) + 8];

      sub_1002D6414(v7, type metadata accessor for SDNearFieldTap);
      if (v12)
      {

        return 1;
      }
    }

    else
    {
      sub_1002D6414(v7, type metadata accessor for SDNearFieldTap);
    }
  }

  return 0;
}

uint64_t sub_1002B409C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t (*sub_1002B4114(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return sub_1002B41B8;
}

void sub_1002B41B8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

void sub_1002B4220()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_notificationCenter];
  [v2 addObserver:v1 selector:"keyBagLockStateChangeWithNotification:" name:@"com.apple.sharingd.KeyBagLockStatusChanged" object:0];
  [v2 addObserver:v1 selector:"handleAirDropAllowedChanged" name:@"com.apple.sharingd.AirDropAllowedChanged" object:0];
  [v2 addObserver:v1 selector:"handleWifiStateChanged" name:@"com.apple.sharingd.WirelessPowerChanged" object:0];
  [v2 addObserver:v1 selector:"screenStateChangedWithNotification:" name:@"com.apple.sharingd.ScreenStateChanged" object:0];
  [v2 addObserver:v1 selector:"handleSystemUIChanged" name:@"com.apple.sharingd.SystemUIChanged" object:0];
  sub_1000276B4(0, &qword_100976418, NSDistributedNotificationCenter_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [ObjCClassFromMetadata defaultCenter];
  if (qword_100973558 != -1)
  {
    swift_once();
  }

  [v4 addObserver:v1 selector:? name:? object:?];

  v5 = [ObjCClassFromMetadata defaultCenter];
  if (qword_100973560 != -1)
  {
    swift_once();
  }

  [v5 addObserver:v1 selector:? name:? object:?];

  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v6, v1, sub_1002C1308, BYSetupAssistantExitedDarwinNotification, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  out_token = 0;
  v7 = [SFNotificationAirDropNearbySharingChanged UTF8String];
  sub_1000276B4(0, &qword_10097A620, OS_dispatch_queue_ptr);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11[4] = sub_1002D8120;
  v11[5] = v9;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1006935D4;
  v11[3] = &unk_1008DA180;
  v10 = _Block_copy(v11);

  notify_register_dispatch(v7, &out_token, v8, v10);
  _Block_release(v10);
}

id sub_1002B45A4()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_notificationCenter] removeObserver:v0];
  sub_1000276B4(0, &qword_100976418, NSDistributedNotificationCenter_ptr);
  v2 = [swift_getObjCClassFromMetadata() defaultCenter];
  [v2 removeObserver:v0];

  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v3, v0);

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, "dealloc");
}

void sub_1002B4888(void (*a1)(char *, char *, uint64_t))
{
  v2 = v1;
  v4 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v5 = __chkstk_darwin(v4 - 8);
  v134 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v133 = &v128 - v8;
  v9 = __chkstk_darwin(v7);
  v11 = &v128 - v10;
  __chkstk_darwin(v9);
  v142 = &v128 - v12;
  v13 = type metadata accessor for UUID();
  v145 = *(v13 - 8);
  v146 = v13;
  v14 = __chkstk_darwin(v13);
  v132 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v128 - v17;
  v19 = __chkstk_darwin(v16);
  v136 = &v128 - v20;
  v21 = __chkstk_darwin(v19);
  v135 = &v128 - v22;
  v23 = __chkstk_darwin(v21);
  v130 = &v128 - v24;
  v25 = __chkstk_darwin(v23);
  v143 = &v128 - v26;
  v27 = __chkstk_darwin(v25);
  v138 = &v128 - v28;
  __chkstk_darwin(v27);
  v141 = &v128 - v29;
  v30 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v31 = __chkstk_darwin(v30 - 8);
  v33 = &v128 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v31);
  v36 = &v128 - v35;
  __chkstk_darwin(v34);
  v38 = &v128 - v37;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  v40 = sub_10000C4AC(v39, qword_100975E80);
  v139 = a1;
  sub_10000FF90(a1, v38, &unk_100976120, &qword_1007F9260);
  v144 = v40;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  v43 = os_log_type_enabled(v41, v42);
  v140 = v2;
  v131 = v18;
  if (v43)
  {
    v129 = v11;
    v137 = v33;
    v44 = swift_slowAlloc();
    v46 = v145;
    v45 = v146;
    v47 = v44;
    v48 = swift_slowAlloc();
    v148[0] = v48;
    *v47 = 136315138;
    sub_10000FF90(v38, v36, &unk_100976120, &qword_1007F9260);
    if ((*(v46 + 48))(v36, 1, v45) == 1)
    {
      sub_100005508(v36, &unk_100976120, &qword_1007F9260);
      v49 = 0xEA00000000004449;
      v50 = 0x20746E6572727563;
    }

    else
    {
      v50 = UUID.uuidString.getter();
      v49 = v51;
      (*(v46 + 8))(v36, v45);
    }

    sub_100005508(v38, &unk_100976120, &qword_1007F9260);
    v52 = sub_10000C4E4(v50, v49, v148);

    *(v47 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v41, v42, "SDAirDropNearFieldService: requested end nearby sharing interaction:%s", v47, 0xCu);
    sub_10000C60C(v48);

    v2 = v140;
    v33 = v137;
    v11 = v129;
  }

  else
  {

    sub_100005508(v38, &unk_100976120, &qword_1007F9260);
  }

  v53 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_pendingNearbySharingInteraction;
  swift_beginAccess();
  sub_10000FF90(v2 + v53, v11, &unk_100975F60, &unk_1007F91B0);
  v54 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v55 = *(v54 - 8);
  v56 = *(v55 + 6);
  if (v56(v11, 1, v54) == 1)
  {
    swift_getKeyPath();
    v137 = v54;
    swift_getKeyPath();
    v57 = v142;
    static Published.subscript.getter();
    v54 = v137;

    if (v56(v11, 1, v54) != 1)
    {
      sub_100005508(v11, &unk_100975F60, &unk_1007F91B0);
    }
  }

  else
  {
    v57 = v142;
    (*(v55 + 4))(v142, v11, v54);
    (*(v55 + 7))(v57, 0, 1, v54);
  }

  if (v56(v57, 1, v54) == 1)
  {
    sub_100005508(v57, &unk_100975F60, &unk_1007F91B0);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "SDAirDropNearFieldService: ignoring request to end request nearby sharing interaction, no current interaction", v60, 2u);
    }
  }

  else
  {
    v61 = v138;
    SFAirDrop.NearbySharingInteraction.id.getter();
    v142 = v55;
    (*(v55 + 1))(v57, v54);
    v63 = v145;
    v62 = v146;
    v64 = *(v145 + 32);
    v65 = v141;
    v64(v141, v61, v146);
    sub_10000FF90(v139, v33, &unk_100976120, &qword_1007F9260);
    v66 = *(v63 + 48);
    if (v66(v33, 1, v62) == 1)
    {
      v67 = v143;
      v68 = v146;
      (*(v63 + 16))(v143, v65, v146);
      v69 = v66(v33, 1, v68);
      v70 = v67;
      if (v69 != 1)
      {
        sub_100005508(v33, &unk_100976120, &qword_1007F9260);
      }
    }

    else
    {
      v70 = v143;
      v64(v143, v33, v146);
    }

    v71 = static UUID.== infix(_:_:)();
    v72 = *(v63 + 16);
    if (v71)
    {
      v73 = v130;
      v139 = *(v63 + 16);
      v72(v130, v70, v146);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      v76 = os_log_type_enabled(v74, v75);
      v137 = v54;
      if (v76)
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v147[0] = v78;
        *v77 = 136315138;
        sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v79 = v146;
        v80 = dispatch thunk of CustomStringConvertible.description.getter();
        v82 = v81;
        v138 = *(v145 + 8);
        (v138)(v73, v79);
        v83 = sub_10000C4E4(v80, v82, v147);

        *(v77 + 4) = v83;
        _os_log_impl(&_mh_execute_header, v74, v75, "SDAirDropNearFieldService: end nearby sharing interaction:%s", v77, 0xCu);
        sub_10000C60C(v78);

        v70 = v143;
      }

      else
      {

        v138 = *(v145 + 8);
        (v138)(v73, v146);
      }

      v104 = v140;
      sub_1004AB1D0(v70);
      v105 = *(v142 + 7);
      v106 = v133;
      v107 = v137;
      v105(v133, 1, 1, v137);
      swift_beginAccess();
      sub_10000C788(v106, v104 + v53, &unk_100975F60, &unk_1007F91B0);
      swift_endAccess();
      v105(v106, 1, 1, v107);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10000FF90(v106, v134, &unk_100975F60, &unk_1007F91B0);
      v104;
      static Published.subscript.setter();
      sub_100005508(v106, &unk_100975F60, &unk_1007F91B0);
      v108 = v135;
      v109 = v139;
      v139(v135, v70, v146);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v113 = swift_slowAlloc();
        v147[0] = v113;
        *v112 = 136315138;
        sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v114 = v146;
        v115 = dispatch thunk of CustomStringConvertible.description.getter();
        v116 = v114;
        v118 = v117;
        v119 = v108;
        v120 = v138;
        (v138)(v119, v116);
        v121 = sub_10000C4E4(v115, v118, v147);

        *(v112 + 4) = v121;
        _os_log_impl(&_mh_execute_header, v110, v111, "SDAirDropNearFieldService: Removing all assertions for nearby sharing interaction:%s", v112, 0xCu);
        sub_10000C60C(v113);

        v109 = v139;
      }

      else
      {

        v124 = v108;
        v120 = v138;
        (v138)(v124, v146);
      }

      v125 = v136;
      v126 = v143;
      v127 = v146;
      v109(v136, v143, v146);
      swift_beginAccess();
      sub_1002AFDB4(0, v125);
      swift_endAccess();
      sub_1002BB85C();
      v120(v126, v127);
      v120(v141, v127);
    }

    else
    {
      v84 = v131;
      v85 = v146;
      v72(v131, v70, v146);
      v86 = v132;
      v72(v132, v65, v85);
      v87 = Logger.logObject.getter();
      v88 = v65;
      v89 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v87, v89))
      {
        v90 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v147[0] = v144;
        *v90 = 136315394;
        sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v91 = v86;
        v92 = v146;
        v93 = dispatch thunk of CustomStringConvertible.description.getter();
        v94 = v84;
        v95 = v92;
        v97 = v96;
        v98 = *(v145 + 8);
        v98(v94, v95);
        v99 = sub_10000C4E4(v93, v97, v147);

        *(v90 + 4) = v99;
        *(v90 + 12) = 2080;
        v100 = dispatch thunk of CustomStringConvertible.description.getter();
        v102 = v101;
        v98(v91, v95);
        v103 = sub_10000C4E4(v100, v102, v147);

        *(v90 + 14) = v103;
        _os_log_impl(&_mh_execute_header, v87, v89, "SDAirDropNearFieldService: ignoring request to end nearby sharing interaction:%s currentID:%s", v90, 0x16u);
        swift_arrayDestroy();

        v98(v143, v95);
        v98(v141, v95);
      }

      else
      {

        v122 = v146;
        v123 = *(v145 + 8);
        v123(v86, v146);
        v123(v84, v122);
        v123(v70, v122);
        v123(v88, v122);
      }
    }
  }
}

void sub_1002B5838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v74 = a2;
  v75 = a3;
  v73 = a1;
  v5 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v6 = __chkstk_darwin(v5 - 8);
  v68 = v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v71 = v56 - v8;
  v9 = type metadata accessor for UUID();
  v63 = *(v9 - 8);
  v64 = v9;
  __chkstk_darwin(v9);
  v70 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v66 = *(v11 - 8);
  v67 = v11;
  __chkstk_darwin(v11);
  v65 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v69 = v56 - v19;
  __chkstk_darwin(v18);
  v21 = v56 - v20;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_10000C4AC(v22, qword_100975E80);
  v61 = *(v14 + 16);
  v62 = v14 + 16;
  (v61)(v21, v75, v13);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v72 = v3;
    v60 = v26;
    v78[0] = v26;
    *v25 = 136315138;
    sub_100005358(&qword_100976270, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = v17;
    v29 = v14;
    v31 = v30;
    v32 = *(v29 + 8);
    v32(v21, v13);
    v33 = sub_10000C4E4(v27, v31, v78);
    v14 = v29;
    v17 = v28;

    *(v25 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v23, v24, "SDAirDropNearFieldService: connected… for interactionType:%s", v25, 0xCu);
    sub_10000C60C(v60);
    v4 = v72;
  }

  else
  {

    v32 = *(v14 + 8);
    v32(v21, v13);
  }

  v34 = sub_1002B4114(v78);
  v36 = v35;
  v37 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  if ((*(*(v37 - 8) + 48))(v36, 1, v37))
  {
    (v34)(v78, 0);
  }

  else
  {
    (v61)(v69, v75, v13);
    v38 = type metadata accessor for SDNearFieldTap(0);
    v72 = v4;
    v39 = v38;
    v40 = *(v38 + 60);
    v62 = v14;
    v59 = v36;
    v41 = v63;
    v60 = v32;
    v42 = *(v63 + 2);
    v43 = v73;
    v44 = v64;
    v42(v70, v73 + v40, v64);
    v45 = v71;
    v42(v71, v43 + v39[14], v44);
    v61 = v17;
    v46 = *(v41 + 7);
    v46(v45, 0, 1, v44);
    v47 = (v43 + v39[13]);
    v48 = v47[1];
    v57 = *v47;
    v63 = v34;
    v49 = v68;
    v42(v68, v74, v44);
    v46(v49, 0, 1, v44);
    v50 = v39[7];
    v51 = (v43 + v39[6]);
    v52 = v51[1];
    v64 = *v51;
    v56[0] = v52;
    v58 = *(v43 + v50);
    v56[1] = *(v43 + v39[8]);
    sub_100294008(v57, v48);

    v32 = v60;
    v17 = v61;
    v14 = v62;
    v53 = v65;
    SFAirDrop.NearbySharingInteraction.ConnectionContext.init(type:transactionIdentifier:bonjourListenerUUID:publicKey:endpointIdentifier:contactIdentifier:deviceName:deviceModel:accountID:isSameAccount:)();
    (*(v66 + 104))(v53, enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:), v67);
    SFAirDrop.NearbySharingInteraction.state.setter();
    (v63)(v78, 0);
  }

  (*(v14 + 104))(v17, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.meet(_:), v13);
  sub_100005358(&qword_100976260, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v78[0] == v76 && v78[1] == v77)
  {
    v32(v17, v13);
  }

  else
  {
    v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v32(v17, v13);

    if ((v54 & 1) == 0)
    {
      return;
    }
  }

  v55 = type metadata accessor for SDNearFieldTap(0);
  sub_1002B6074(v74, (*(v73 + *(v55 + 44)) & 1) == 0, v73 + *(v55 + 60));
}

void sub_1002B6074(uint64_t a1, int a2, uint64_t a3)
{
  v46 = a3;
  v51 = a2;
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v50 = &v41 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v49 = &v41 - v12;
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_100975E80);
  v44 = *(v7 + 16);
  v44(v14, a1, v6);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v48 = v7;
  v45 = a1;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = v7;
    v21 = v19;
    v41 = swift_slowAlloc();
    v52 = v41;
    *v21 = 67109378;
    *(v21 + 4) = v51 & 1;
    *(v21 + 8) = 2080;
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v42 = v8;
    v24 = v23;
    v25 = v20;
    v10 = v43;
    (*(v25 + 8))(v14, v6);
    v26 = sub_10000C4E4(v22, v24, &v52);
    v8 = v42;

    *(v21 + 10) = v26;
    LOBYTE(v26) = v51;
    _os_log_impl(&_mh_execute_header, v16, v17, "SDAirDropNearFieldService: start NameDrop flow {isActive: %{BOOL}d endpointIdentifier: %s}", v21, 0x12u);
    sub_10000C60C(v41);

    v27 = v49;
    if ((v26 & 1) == 0)
    {
      return;
    }
  }

  else
  {

    (*(v7 + 8))(v14, v6);
    v27 = v49;
    if ((v51 & 1) == 0)
    {
      return;
    }
  }

  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v50, 1, 1, v28);
  v29 = v44;
  v44(v27, v45, v6);
  v29(v10, v46, v6);
  v30 = qword_1009735E0;
  v31 = v47;
  v32 = v10;
  if (v30 != -1)
  {
    swift_once();
  }

  v33 = static AirDropActor.shared;
  v34 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v35 = v48;
  v36 = *(v48 + 80);
  v37 = (v36 + 40) & ~v36;
  v38 = (v8 + v36 + v37) & ~v36;
  v39 = swift_allocObject();
  *(v39 + 2) = v33;
  *(v39 + 3) = v34;
  *(v39 + 4) = v31;
  v40 = *(v35 + 32);
  v40(&v39[v37], v27, v6);
  v40(&v39[v38], v32, v6);

  sub_1002B3098(0, 0, v50, &unk_1007F93E0, v39);
}

BOOL sub_1002B656C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  if (!v3)
  {
    return 0;
  }

  v4 = [v3 currentApplicationLabel];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = type metadata accessor for SDNearFieldTap(0);
  sub_10001229C();
  if (StringProtocol.contains<A>(_:)())
  {
  }

  else
  {
    v7 = StringProtocol.contains<A>(_:)();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = *(a1 + *(v6 + 68));
  return v8 != 2 && (v8 & 1) == 0;
}

uint64_t sub_1002B66B0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController;
  result = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  if (!result)
  {
    return result;
  }

  v5 = v1;
  v6 = &selRef_createWiFiRequest;
  v7 = [result currentApplicationLabel];
  if (v7)
  {
    v8 = v7;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = type metadata accessor for SDNearFieldTap(0);
    sub_10001229C();
    if (StringProtocol.contains<A>(_:)())
    {

      v6 = &selRef_createWiFiRequest;
    }

    else
    {
      v10 = StringProtocol.contains<A>(_:)();

      v6 = &selRef_createWiFiRequest;
      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v11 = *(a1 + *(v9 + 68));
    if (v11 != 2 && (v11 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_8:
  result = *(v5 + v3);
  if (result)
  {
    result = [result v6[11]];
    if (result)
    {
      v12 = result;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = (a1 + *(type metadata accessor for SDNearFieldTap(0) + 40));
      v17 = *v16 == 0xD000000000000013 && 0x800000010078A3E0 == v16[1];
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (type metadata accessor for SFAirDropClient(), v18._countAndFlagsBits = static SFAirDropClient.nearFieldApplicationLabel.getter(), v19 = String.hasPrefix(_:)(v18), , v19))
      {
        v20 = v13 == 0xD000000000000013 && 0x800000010078A3E0 == v15;
        if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 0;
        }

        type metadata accessor for SFAirDropClient();
        v21._countAndFlagsBits = static SFAirDropClient.nearFieldApplicationLabel.getter();
        v22 = String.hasPrefix(_:)(v21);

        if (v22)
        {
          return 0;
        }
      }

      else
      {
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_1002B6938(uint64_t a1)
{
  result = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  if (!result)
  {
    return result;
  }

  v4 = a1;
  result = [result currentApplicationLabel];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v6 == 0xD00000000000001BLL && 0x800000010078A530 == v8)
  {

    return 1;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    return 1;
  }

  v11 = (v4 + *(type metadata accessor for SDNearFieldTap(0) + 40));
  if (*v11 == 0xD00000000000001BLL && 0x800000010078A530 == v11[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1002B6A58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_10028088C(&qword_1009762D8, &qword_100807790);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_1002B6938(a1);
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v10 = static NSUserDefaults.airdrop.getter();
  SFAirDropUserDefaults.boopInteractionTypeOverride.getter();

  v11 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) != 1)
  {
    return (*(v12 + 32))(a2, v8, v11);
  }

  sub_100005508(v8, &qword_1009762D8, &qword_100807790);
  if ((v9 & 1) == 0)
  {
    v15 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController;
    v16 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
    if (v16)
    {
      v17 = &selRef_createWiFiRequest;
      v18 = [v16 currentApplicationLabel];
      if (v18)
      {
        v19 = v18;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v20._object = 0x800000010078A550;
        v20._countAndFlagsBits = 0xD000000000000015;
        v17 = &selRef_createWiFiRequest;
        LOBYTE(v19) = String.hasPrefix(_:)(v20);

        if ((v19 & 1) != 0 || (type metadata accessor for SDNearFieldTap(0), v21._object = 0x800000010078A550, v21._countAndFlagsBits = 0xD000000000000015, String.hasPrefix(_:)(v21)))
        {
          v13 = &enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.DDUI(_:);
          return (*(v12 + 104))(a2, *v13, v11);
        }
      }

      v22 = *(v3 + v15);
      if (v22)
      {
        v23 = [v22 v17[11]];
        if (v23)
        {
          v24 = v23;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          type metadata accessor for SFAirDropClient();
          v25._countAndFlagsBits = static SFAirDropClient.nearFieldApplicationLabel.getter();
          v26 = String.hasPrefix(_:)(v25);

          if (v26 || (type metadata accessor for SDNearFieldTap(0), v27._countAndFlagsBits = static SFAirDropClient.nearFieldApplicationLabel.getter(), v28 = String.hasPrefix(_:)(v27), , v28))
          {
            if (!sub_1002B656C(a1))
            {
              v13 = &enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.airDrop(_:);
              return (*(v12 + 104))(a2, *v13, v11);
            }
          }
        }
      }
    }

    if (sub_1002B66B0(a1))
    {
      v13 = &enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.generic(_:);
    }

    else if (sub_1002D6D98(a1))
    {
      v13 = &enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.meet(_:);
    }

    else
    {
      v29 = type metadata accessor for SDNearFieldTap(0);
      if ((*(a1 + *(v29 + 48)) & 1) != 0 || *(a1 + *(v29 + 24) + 8))
      {
        v13 = &enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.share(_:);
      }

      else
      {
        v13 = &enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.unknown(_:);
      }
    }

    return (*(v12 + 104))(a2, *v13, v11);
  }

  v13 = &enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.peerPayment(_:);
  return (*(v12 + 104))(a2, *v13, v11);
}

uint64_t sub_1002B6DBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDrop.NearbySharingDiscovery.PollingType();
  v92 = *(v4 - 8);
  v93 = v4;
  v5 = __chkstk_darwin(v4);
  v90 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v77 - v7;
  v9 = type metadata accessor for UUID();
  v88 = *(v9 - 8);
  v89 = v9;
  __chkstk_darwin(v9);
  v80 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10028088C(&unk_1009761A0, &unk_1007F9320);
  __chkstk_darwin(v11 - 8);
  v85 = &v77 - v12;
  v13 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v14 = __chkstk_darwin(v13 - 8);
  v86 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v79 = (&v77 - v16);
  v17 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  __chkstk_darwin(v17 - 8);
  v83 = &v77 - v18;
  v19 = type metadata accessor for SFClientIdentity();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_10000C4AC(v27, qword_100975E80);
  v28 = *(v24 + 16);
  v94 = a1;
  v28(v26, a1, v23);
  v29 = *(v20 + 16);
  v87 = a2;
  v81 = v29;
  v82 = v20 + 16;
  v29(v22, a2, v19);
  v30 = Logger.logObject.getter();
  v31 = v20;
  v32 = static os_log_type_t.default.getter();
  v33 = os_log_type_enabled(v30, v32);
  v91 = v8;
  v84 = v19;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v97[0] = v78;
    *v34 = 136315394;
    v77 = v31;
    v35 = SFAirDrop.NearbySharingDiscovery.Request.applicationLabel.getter();
    v37 = v36;
    (*(v24 + 8))(v26, v23);
    v38 = sub_10000C4E4(v35, v37, v97);

    *(v34 + 4) = v38;
    *(v34 + 12) = 2080;
    sub_100005358(&qword_1009761E8, &type metadata accessor for SFClientIdentity, &protocol conformance descriptor for SFClientIdentity);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v41 = v40;
    v42 = v77;
    (*(v77 + 8))(v22, v19);
    v43 = sub_10000C4E4(v39, v41, v97);

    *(v34 + 14) = v43;
    _os_log_impl(&_mh_execute_header, v30, v32, "SDAirDropNearFieldService: start active nearby sharing discovery: %s for client: %s", v34, 0x16u);
    swift_arrayDestroy();

    v44 = v42;
  }

  else
  {

    (*(v31 + 8))(v22, v19);
    (*(v24 + 8))(v26, v23);
    v44 = v31;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v45 = v83;
  v46 = v95;
  static Published.subscript.getter();

  v47 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v48 = (*(*(v47 - 8) + 48))(v45, 1, v47);
  sub_100005508(v45, &unk_100975F60, &unk_1007F91B0);
  v50 = v88;
  v49 = v89;
  if (v48 != 1)
  {
    v51 = v79;
    (*(v88 + 56))(v79, 1, 1, v89);
    sub_1002B4888(v51);
    sub_100005508(v51, &unk_100976120, &qword_1007F9260);
  }

  v52 = SFAirDrop.NearbySharingDiscovery.Request.applicationLabel.getter();
  v54 = v53;
  v55 = v84;
  v56 = v85;
  v81(v85, v87, v84);
  (*(v44 + 56))(v56, 0, 1, v55);
  swift_beginAccess();
  sub_1002AFF74(v56, v52, v54);
  swift_endAccess();
  v57 = v86;
  SFClientIdentity.connectionID.getter();
  if ((*(v50 + 48))(v57, 1, v49) == 1)
  {
    sub_100005508(v57, &unk_100976120, &qword_1007F9260);
  }

  else
  {
    v58 = v80;
    (*(v50 + 32))(v80, v57, v49);
    v59 = SFAirDrop.NearbySharingDiscovery.Request.applicationLabel.getter();
    v61 = v60;
    v62 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbyDiscoveryLabelForConnectionID;
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v96 = *(v46 + v62);
    *(v46 + v62) = 0x8000000000000000;
    sub_100579114(v59, v61, v58, isUniquelyReferenced_nonNull_native);
    *(v46 + v62) = v96;
    swift_endAccess();
    (*(v50 + 8))(v58, v49);
  }

  v65 = v91;
  v64 = v92;
  SFAirDrop.NearbySharingDiscovery.Request.pollingType.getter();
  v66 = v90;
  v67 = v93;
  (*(v64 + 16))(v90, v65, v93);
  v68 = (*(v64 + 88))(v66, v67);
  if (v68 == enum case for SFAirDrop.NearbySharingDiscovery.PollingType.automatic(_:))
  {
    v69 = 0;
LABEL_17:
    (*(v64 + 8))(v65, v67);
    v70 = SFAirDrop.NearbySharingDiscovery.Request.applicationLabel.getter();
    v72 = v71;
    v73 = SFAirDrop.NearbySharingDiscovery.Request.publicKey.getter();
    v75 = v74;
    sub_10002887C(v69, v70, v72, 1, v73, v74);
    sub_10028BCC0(v73, v75);
  }

  if (v68 == enum case for SFAirDrop.NearbySharingDiscovery.PollingType.passive(_:))
  {
    v69 = 1;
    goto LABEL_17;
  }

  if (v68 == enum case for SFAirDrop.NearbySharingDiscovery.PollingType.full(_:))
  {
    v69 = 2;
    goto LABEL_17;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1002B7794(uint64_t a1)
{
  v119 = a1;
  v118 = sub_10028088C(&unk_100987030, &qword_1007F9330);
  __chkstk_darwin(v118);
  v96 = &v91 - v1;
  v125 = type metadata accessor for SFAirDrop.NearbySharingAssertion();
  v93 = *(v125 - 8);
  __chkstk_darwin(v125);
  v126 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10028088C(&qword_1009761D0, &qword_1007F9338);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v100 = &v91 - v7;
  v8 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v123 = &v91 - v13;
  v14 = __chkstk_darwin(v12);
  v16 = (&v91 - v15);
  __chkstk_darwin(v14);
  v18 = (&v91 - v17);
  v122 = type metadata accessor for UUID();
  v97 = *(v122 - 8);
  v19 = __chkstk_darwin(v122);
  v108 = (&v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v91 = (&v91 - v21);
  v22 = type metadata accessor for SFClientIdentity();
  v23 = *(v22 - 1);
  v24 = __chkstk_darwin(v22);
  v116 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v91 - v26;
  if (qword_100973548 != -1)
  {
LABEL_43:
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  sub_10000C4AC(v28, qword_100975E80);
  v23[2](v27, v119, v22);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  v31 = os_log_type_enabled(v29, v30);
  v109 = v11;
  v101 = v6;
  v117 = v22;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    v127 = v124;
    *v32 = 136315138;
    sub_100005358(&qword_1009761E8, &type metadata accessor for SFClientIdentity, &protocol conformance descriptor for SFClientIdentity);
    v33 = v30;
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v115 = v23[1];
    (v115)(v27, v22);
    v37 = sub_10000C4E4(v34, v36, &v127);

    *(v32 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v29, v33, "SDAirDropNearFieldService: Requested stop active nearby sharing discovery for client: %s", v32, 0xCu);
    sub_10000C60C(v124);
  }

  else
  {

    v115 = v23[1];
    (v115)(v27, v22);
  }

  SFClientIdentity.connectionID.getter();
  v38 = v97;
  v39 = (v97 + 48);
  v40 = *(v97 + 48);
  v41 = v122;
  v42 = v40(v18, 1, v122);
  v11 = v96;
  if (v42 == 1)
  {
    return sub_100005508(v18, &unk_100976120, &qword_1007F9260);
  }

  v114 = v39;
  v44 = *(v38 + 32);
  v22 = v91;
  v105 = v38 + 32;
  v104 = v44;
  v44(v91, v18, v41);
  v45 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbyDiscoveryLabelForConnectionID;
  v46 = v106;
  swift_beginAccess();
  v47 = *(v46 + v45);
  if (*(v47 + 16) && (v48 = sub_10000EBD4(v22), (v49 & 1) != 0))
  {
    v50 = *(v47 + 56) + 16 * v48;
    v51 = *v50;
    v52 = *(v50 + 8);
    swift_endAccess();

    sub_1002B857C(v51, v52);

    swift_beginAccess();
    sub_1002B8CE8(v22);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  v53 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_assertionsByNearbySharingInteractionID;
  v54 = v106;
  swift_beginAccess();
  v55 = *(v54 + v53);
  v56 = *(v55 + 64);
  v98 = v55 + 64;
  v57 = 1 << *(v55 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v103 = v58 & v56;
  v92 = (v57 + 63) >> 6;
  v94 = v97 + 16;
  v112 = (v23 + 1);
  v113 = v93 + 16;
  v110 = (v97 + 8);
  v111 = (v93 + 8);
  v95 = v55;

  v59 = 0;
  v23 = &unk_100976120;
  v6 = v101;
  v27 = v100;
  v107 = v40;
  while (1)
  {
    v60 = v103;
    if (v103)
    {
      v102 = v59;
      v61 = v59;
      goto LABEL_26;
    }

    v62 = v92 <= v59 + 1 ? v59 + 1 : v92;
    v63 = v62 - 1;
    do
    {
      v61 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v61 >= v92)
      {
        v18 = &qword_1009761D8;
        v22 = &qword_1007F9340;
        v90 = sub_10028088C(&qword_1009761D8, &qword_1007F9340);
        (*(*(v90 - 8) + 56))(v6, 1, 1, v90);
        v103 = 0;
        v102 = v63;
        goto LABEL_27;
      }

      v60 = *(v98 + 8 * v61);
      ++v59;
    }

    while (!v60);
    v102 = v61;
LABEL_26:
    v103 = (v60 - 1) & v60;
    v64 = __clz(__rbit64(v60)) | (v61 << 6);
    v65 = v95;
    v66 = v108;
    v67 = v122;
    (*(v97 + 16))(v108, *(v95 + 48) + *(v97 + 72) * v64, v122);
    v68 = *(*(v65 + 56) + 8 * v64);
    v22 = &qword_1007F9340;
    v69 = sub_10028088C(&qword_1009761D8, &qword_1007F9340);
    v70 = *(v69 + 48);
    v71 = v101;
    v72 = v67;
    v18 = &qword_1009761D8;
    v104(v101, v66, v72);
    *&v71[v70] = v68;
    v6 = v71;
    (*(*(v69 - 8) + 56))(v71, 0, 1, v69);

    v27 = v100;
    v40 = v107;
    v23 = &unk_100976120;
    v11 = v96;
LABEL_27:
    sub_1002D7130(v6, v27);
    v73 = sub_10028088C(&qword_1009761D8, &qword_1007F9340);
    if ((*(*(v73 - 8) + 48))(v27, 1, v73) == 1)
    {
      break;
    }

    v74 = *&v27[*(v73 + 48)];
    v75 = *(v74 + 16);
    if (v75)
    {
      v76 = (*(v93 + 80) + 32) & ~*(v93 + 80);
      v99 = *&v27[*(v73 + 48)];
      v77 = v74 + v76;
      v78 = *(v93 + 72);
      v120 = *(v93 + 16);
      v121 = v78;
      while (1)
      {
        v124 = v75;
        v120(v126, v77, v125);
        v79 = v116;
        SFAirDrop.NearbySharingAssertion.client.getter();
        SFClientIdentity.connectionID.getter();
        (v115)(v79, v117);
        v18 = v16;
        v80 = v123;
        SFClientIdentity.connectionID.getter();
        v81 = *(v118 + 48);
        sub_10000FF90(v18, v11, &unk_100976120, &qword_1007F9260);
        sub_10000FF90(v80, &v11[v81], &unk_100976120, &qword_1007F9260);
        v82 = v11;
        v83 = v11;
        v84 = v122;
        v22 = v114;
        if (v40(v82, 1, v122) == 1)
        {
          break;
        }

        v85 = v40;
        v86 = v109;
        sub_10000FF90(v83, v109, &unk_100976120, &qword_1007F9260);
        if (v85(v83 + v81, 1, v84) == 1)
        {
          sub_100005508(v123, &unk_100976120, &qword_1007F9260);
          v16 = v18;
          sub_100005508(v18, &unk_100976120, &qword_1007F9260);
          (*v110)(v86, v84);
          v40 = v107;
LABEL_31:
          sub_100005508(v83, &unk_100987030, &qword_1007F9330);
          v11 = v83;
          goto LABEL_32;
        }

        v22 = v108;
        v104(v108, (v83 + v81), v84);
        sub_100005358(&qword_1009761E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v87 = dispatch thunk of static Equatable.== infix(_:_:)();
        v88 = v84;
        v89 = *v110;
        (*v110)(v22, v88);
        sub_100005508(v123, &unk_100976120, &qword_1007F9260);
        sub_100005508(v18, &unk_100976120, &qword_1007F9260);
        v89(v109, v88);
        v16 = v18;
        sub_100005508(v83, &unk_100976120, &qword_1007F9260);
        v40 = v107;
        v11 = v83;
        if (v87)
        {
          goto LABEL_38;
        }

LABEL_32:
        (*v111)(v126, v125);
        v77 += v121;
        v75 = (v124 - 1);
        if (v124 == 1)
        {

          v27 = v100;
          goto LABEL_15;
        }
      }

      sub_100005508(v80, &unk_100976120, &qword_1007F9260);
      sub_100005508(v18, &unk_100976120, &qword_1007F9260);
      v16 = v18;
      if (v40((v83 + v81), 1, v84) == 1)
      {
        sub_100005508(v83, &unk_100976120, &qword_1007F9260);
        v11 = v83;
LABEL_38:
        v22 = v108;
        SFAirDrop.NearbySharingAssertion.id.getter();
        sub_1002B8EF4(v22);
        (*v110)(v22, v122);
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_15:
    (*v110)(v27, v122);
    v6 = v101;
    v59 = v102;
  }

  (*v110)(v91, v122);
}

void sub_1002B857C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v6 - 8);
  v8 = (v41 - v7);
  v9 = sub_10028088C(&unk_1009761A0, &unk_1007F9320);
  __chkstk_darwin(v9 - 8);
  v11 = v41 - v10;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_100975E80);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v42[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_10000C4E4(a1, a2, v42);
    _os_log_impl(&_mh_execute_header, v13, v14, "SDAirDropNearFieldService: Requested stop active nearby sharing discovery: %s", v15, 0xCu);
    sub_10000C60C(v16);
  }

  v17 = *(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  if (v17)
  {
    v41[0] = v17;
    v18 = [v41[0] currentApplicationLabel];
    if (v18)
    {
      v19 = v18;
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = type metadata accessor for SFClientIdentity();
      (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
      swift_beginAccess();

      sub_1002AFF74(v11, v20, v22);
      swift_endAccess();
      if (v20 == a1 && v22 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v42[0] = v20, v42[1] = v22, v41[1] = a1, v41[2] = a2, sub_10001229C(), (StringProtocol.contains<A>(_:)() & 1) != 0))
      {
        sub_10002887C(*(v3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_defaultPollingType), 0xD000000000000013, 0x800000010078A3E0, 0, 0, 0xF000000000000000);

        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v42[0] = v27;
          *v26 = 136315138;
          v28 = sub_10000C4E4(v20, v22, v42);

          *(v26 + 4) = v28;
          _os_log_impl(&_mh_execute_header, v24, v25, "SDAirDropNearFieldService: stop active nearby sharing discovery: %s", v26, 0xCu);
          sub_10000C60C(v27);
        }

        else
        {
        }

        v36 = type metadata accessor for UUID();
        (*(*(v36 - 8) + 56))(v8, 1, 1, v36);
        sub_1002B4888(v8);

        sub_100005508(v8, &unk_100976120, &qword_1007F9260);
        return;
      }

      v32 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v32, v38))
      {

        goto LABEL_18;
      }

      v39 = swift_slowAlloc();
      v42[0] = swift_slowAlloc();
      *v39 = 136315394;
      *(v39 + 4) = sub_10000C4E4(a1, a2, v42);
      *(v39 + 12) = 2080;
      v40 = sub_10000C4E4(v20, v22, v42);

      *(v39 + 14) = v40;
      _os_log_impl(&_mh_execute_header, v32, v38, "SDAirDropNearFieldService: stop nearby sharing discovery for application label: %s failed because active application label is not matching: %s", v39, 0x16u);
      swift_arrayDestroy();
LABEL_17:

LABEL_18:

      goto LABEL_19;
    }

    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_10000C4E4(a1, a2, v42);
      _os_log_impl(&_mh_execute_header, v32, v33, "SDAirDropNearFieldService: missing current application label. Ignore request to to stop active nearby sharing discovery for: %s", v34, 0xCu);
      sub_10000C60C(v35);
      goto LABEL_17;
    }
  }

  else
  {

    v41[0] = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41[0], v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v42[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_10000C4E4(a1, a2, v42);
      _os_log_impl(&_mh_execute_header, v41[0], v29, "SDAirDropNearFieldService: Near field controller not start. Fail to stop active nearby sharing discovery for: %s", v30, 0xCu);
      sub_10000C60C(v31);

LABEL_19:

      return;
    }
  }

  v37 = v41[0];
}

uint64_t sub_1002B8CE8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10000EBD4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1002D0A80(&type metadata accessor for UUID, &qword_1009761F0, &qword_1007F9348);
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 16 * v5);
  sub_1002D4ED8(v5, v7, &type metadata accessor for UUID, &qword_100976170, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  *v2 = v7;
  return v10;
}

uint64_t sub_1002B8E2C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_10000EBD4(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1002D270C();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 8))(v8 + *(*(v9 - 8) + 72) * v5, v9);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1002D42C0(v5, v7);
  *v2 = v7;
  return v10;
}

void sub_1002B8EF4(void *a1)
{
  v133 = a1;
  v1 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v1 - 8);
  v123 = (&v117 - v2);
  v3 = type metadata accessor for SFAirDrop.NearbySharingAssertion();
  v125 = *(v3 - 8);
  v126 = v3;
  __chkstk_darwin(v3);
  v124 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v130 = *(v5 - 8);
  __chkstk_darwin(v5);
  v128 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v117 - v8;
  v10 = type metadata accessor for UUID();
  v131 = *(v10 - 8);
  v132 = v10;
  v11 = __chkstk_darwin(v10);
  v129 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v127 = &v117 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v117 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v117 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v117 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v117 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v117 - v28;
  __chkstk_darwin(v27);
  v31 = &v117 - v30;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v32 = v5;

  v33 = v130;
  if (!(*(v130 + 48))(v9, 1, v32))
  {
    v129 = v26;
    v119 = v23;
    v120 = v17;
    v121 = v20;
    v49 = v127;
    v48 = v128;
    (*(v33 + 16))(v128, v9, v32);
    sub_100005508(v9, &unk_100975F60, &unk_1007F91B0);
    SFAirDrop.NearbySharingInteraction.id.getter();
    (*(v33 + 8))(v48, v32);
    v50 = v131;
    v51 = v132;
    (*(v131 + 32))(v31, v29, v132);
    v52 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_assertionsByNearbySharingInteractionID;
    v53 = v134;
    swift_beginAccess();
    v54 = *(v53 + v52);
    v55 = *(v54 + 16);
    v122 = v31;
    if (v55)
    {
      v56 = sub_10000EBD4(v31);
      v57 = v133;
      if (v58)
      {
        v136 = *(*(v54 + 56) + 8 * v56);
        v59 = v136;
        v60 = swift_endAccess();
        __chkstk_darwin(v60);
        *(&v117 - 2) = v57;

        v61 = sub_1002CCF70(sub_1002CDE20, (&v117 - 4), v59, &type metadata accessor for SFAirDrop.NearbySharingAssertion);
        if ((v62 & 1) == 0)
        {
          v130 = v61;
          if (qword_100973548 != -1)
          {
            swift_once();
          }

          v63 = type metadata accessor for Logger();
          sub_10000C4AC(v63, qword_100975E80);
          v64 = *(v50 + 16);
          v65 = v129;
          v127 = (v50 + 16);
          v128 = v64;
          (v64)(v129, v57, v51);
          v66 = Logger.logObject.getter();
          v67 = v51;
          v68 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v66, v68))
          {
            v69 = swift_slowAlloc();
            v117 = swift_slowAlloc();
            v135[0] = v117;
            *v69 = 136315138;
            v70 = v69;
            sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v71 = dispatch thunk of CustomStringConvertible.description.getter();
            v72 = v50;
            v74 = v73;
            v118 = *(v72 + 8);
            v118(v65, v67);
            v75 = sub_10000C4E4(v71, v74, v135);
            v50 = v72;

            *(v70 + 1) = v75;
            _os_log_impl(&_mh_execute_header, v66, v68, "SDAirDropNearFieldService: Releasing assertion:%s", v70, 0xCu);
            sub_10000C60C(v117);

            v57 = v133;

            v76 = v118;
          }

          else
          {

            v76 = *(v50 + 8);
            v76(v65, v67);
          }

          v91 = v67;
          v93 = v125;
          v92 = v126;
          v94 = v124;
          sub_1002CD0EC(v130, v124);
          (*(v93 + 8))(v94, v92);
          v133 = v136;
          if (!v136)
          {
            v76(v122, v91);
            return;
          }

          if (v133[2])
          {
            v76(v122, v91);
          }

          else
          {
            v95 = v119;
            v96 = v128;
            (v128)(v119, v57, v91);
            v97 = v121;
            (v96)(v121, v122, v91);
            v98 = Logger.logObject.getter();
            v99 = static os_log_type_t.default.getter();
            v100 = os_log_type_enabled(v98, v99);
            v118 = v76;
            if (v100)
            {
              v101 = swift_slowAlloc();
              v131 = swift_slowAlloc();
              v135[0] = v131;
              *v101 = 136315394;
              sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              LODWORD(v130) = v99;
              v102 = dispatch thunk of CustomStringConvertible.description.getter();
              v103 = v50;
              v104 = v91;
              v106 = v105;
              v132 = (v103 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v76(v95, v104);
              v107 = sub_10000C4E4(v102, v106, v135);
              v91 = v104;
              v50 = v103;

              *(v101 + 4) = v107;
              *(v101 + 12) = 2080;
              v108 = v121;
              v109 = dispatch thunk of CustomStringConvertible.description.getter();
              v111 = v110;
              v76(v108, v91);
              v112 = sub_10000C4E4(v109, v111, v135);

              *(v101 + 14) = v112;
              _os_log_impl(&_mh_execute_header, v98, v130, "SDAirDropNearFieldService: No more assertions:%s for nearby sharing interaction:%s", v101, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              v132 = (v50 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v76(v97, v91);
              v76(v95, v91);
            }

            v113 = v122;
            v114 = v123;
            v115 = v120;
            v116 = v128;
            (v128)(v120, v122, v91);
            swift_beginAccess();
            sub_1002AFDB4(0, v115);
            swift_endAccess();
            (v116)(v114, v113, v91);
            (*(v50 + 56))(v114, 0, 1, v91);
            sub_1002B4888(v114);
            sub_100005508(v114, &unk_100976120, &qword_1007F9260);
            v118(v113, v91);
          }

LABEL_21:

          return;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    else
    {
      swift_endAccess();
      v57 = v133;
    }

    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    sub_10000C4AC(v77, qword_100975E80);
    (*(v50 + 16))(v49, v57, v51);
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = v50;
      v82 = swift_slowAlloc();
      v135[0] = v82;
      *v80 = 136315138;
      sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v83 = dispatch thunk of CustomStringConvertible.description.getter();
      v84 = v49;
      v85 = v51;
      v87 = v86;
      v88 = *(v81 + 8);
      v88(v84, v85);
      v89 = sub_10000C4E4(v83, v87, v135);

      *(v80 + 4) = v89;
      _os_log_impl(&_mh_execute_header, v78, v79, "SDAirDropNearFieldService: Failed to release nearby sharing assertion %s because we don't have any active assertions for it.", v80, 0xCu);
      sub_10000C60C(v82);

      v88(v122, v85);
    }

    else
    {

      v90 = *(v50 + 8);
      v90(v49, v51);
      v90(v122, v51);
    }

    goto LABEL_21;
  }

  v35 = v131;
  v34 = v132;
  sub_100005508(v9, &unk_100975F60, &unk_1007F91B0);
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for Logger();
  sub_10000C4AC(v36, qword_100975E80);
  v37 = v35;
  v38 = v129;
  (*(v35 + 16))(v129, v133, v34);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v135[0] = v42;
    *v41 = 136315138;
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v43 = dispatch thunk of CustomStringConvertible.description.getter();
    v44 = v37;
    v46 = v45;
    (*(v44 + 8))(v38, v34);
    v47 = sub_10000C4E4(v43, v46, v135);

    *(v41 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v39, v40, "SDAirDropNearFieldService: Failed to release assertion:%s because there is no active nearby sharing interaction", v41, 0xCu);
    sub_10000C60C(v42);
  }

  else
  {

    (*(v35 + 8))(v38, v34);
  }
}

void sub_1002B9D54()
{
  v1 = v0;
  v2 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v2 - 8);
  v4 = (&v11 - v3);
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000C4AC(v5, qword_100975E80);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "SDAirDropNearFieldService: stop", v8, 2u);
  }

  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_1002B4888(v4);
  sub_100005508(v4, &unk_100976120, &qword_1007F9260);
  sub_1002B9FB8(1);
  v10 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController) = 0;
}

void sub_1002B9F08(void *a1, uint64_t a2)
{
  v4 = String._bridgeToObjectiveC()();
  type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = UUID._bridgeToObjectiveC()().super.isa;
  [a1 startPolling:a2 applicationLabel:v4 pkData:isa bonjourListenerUUID:v6];
}

uint64_t sub_1002B9FB8(char a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  result = __chkstk_darwin(v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  if (v12)
  {
    v15[1] = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_queue);
    v16 = result;
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = a1 & 1;
    aBlock[4] = sub_1002D71A0;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100011678;
    aBlock[3] = &unk_1008D9DC0;
    v14 = _Block_copy(aBlock);
    v15[0] = v12;
    static DispatchQoS.unspecified.getter();
    v17 = _swiftEmptyArrayStorage;
    sub_100005358(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
    sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v11, v16);
  }

  return result;
}

uint64_t sub_1002BA2B0()
{
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000C4AC(v0, qword_100975E80);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "SDAirDropNearFieldService: restart", v3, 2u);
  }

  sub_1002B9D54();

  return sub_1000286E8(0, 1, 0, 0);
}

void sub_1002BA3B4()
{
  v0 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v0 - 8);
  v116 = &v95 - v1;
  v114 = type metadata accessor for SFPlatform();
  v112 = *(v114 - 8);
  __chkstk_darwin(v114);
  v111 = &v95 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for DispatchTime();
  v113 = *(v115 - 8);
  v3 = __chkstk_darwin(v115);
  v109 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v110 = &v95 - v5;
  v106 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin(v106);
  v107 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v8 = __chkstk_darwin(v7 - 8);
  v100 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v103 = &v95 - v10;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v105 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v99 = &v95 - v16;
  v17 = __chkstk_darwin(v15);
  v102 = &v95 - v18;
  v104 = v19;
  __chkstk_darwin(v17);
  v21 = &v95 - v20;
  v22 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v22 - 8);
  v24 = &v95 - v23;
  v25 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  isa = v29[-1].isa;
  v118 = v29;
  __chkstk_darwin(v29);
  v31 = &v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v32 = static NSUserDefaults.airdrop.getter();
  v33 = SFAirDropUserDefaults.boopToActionEnabled.getter();

  if (v33)
  {
    SFAirDrop.NearbySharingInteraction.PresenceContext.init()();
    (*(v26 + 104))(v28, enum case for SFAirDrop.NearbySharingInteraction.State.presenceDetected(_:), v25);
    (*(v12 + 56))(v24, 1, 1, v11);
    SFAirDrop.NearbySharingInteraction.init(state:id:)();
    v101 = v21;
    SFAirDrop.NearbySharingInteraction.id.getter();
    v34 = [objc_opt_self() sharedMonitor];
    if (v34)
    {
      v35 = v34;
      v36 = v11;
      v37 = [v34 deviceKeyBagLocked];

      v98 = v31;
      v38 = v102;
      if (v37)
      {
        v39 = v101;
        if (qword_100973548 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_10000C4AC(v40, qword_100975E80);
        v41 = *(v12 + 16);
        v97 = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v41(v38, v39, v11);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          aBlock[0] = v45;
          *v44 = 136315138;
          sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v46 = dispatch thunk of CustomStringConvertible.description.getter();
          v48 = v47;
          (*(v12 + 8))(v38, v11);
          v49 = sub_10000C4E4(v46, v48, aBlock);

          *(v44 + 4) = v49;
          _os_log_impl(&_mh_execute_header, v42, v43, "SDAirDropNearFieldService: begin pending nearby sharing interaction:%s", v44, 0xCu);
          sub_10000C60C(v45);
          v31 = v98;
        }

        else
        {

          (*(v12 + 8))(v38, v11);
        }

        v36 = v11;
        v68 = isa;
        v67 = v118;
        v69 = v103;
        (*(isa + 2))(v103, v31, v118);
        (*(v68 + 7))(v69, 0, 1, v67);
        v70 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_pendingNearbySharingInteraction;
        v71 = v108;
        swift_beginAccess();
        sub_10000C788(v69, v71 + v70, &unk_100975F60, &unk_1007F91B0);
        swift_endAccess();
        v72 = v101;
      }

      else
      {
        v54 = v101;
        if (qword_100973548 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_10000C4AC(v55, qword_100975E80);
        v56 = *(v12 + 16);
        v97 = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v57 = v99;
        v102 = v56;
        (v56)(v99, v54, v11);
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          aBlock[0] = v61;
          *v60 = 136315138;
          sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
          v62 = dispatch thunk of CustomStringConvertible.description.getter();
          v63 = v57;
          v65 = v64;
          (*(v12 + 8))(v63, v11);
          v66 = sub_10000C4E4(v62, v65, aBlock);

          *(v60 + 4) = v66;
          _os_log_impl(&_mh_execute_header, v58, v59, "SDAirDropNearFieldService: begin nearby sharing interaction:%s", v60, 0xCu);
          sub_10000C60C(v61);
          v31 = v98;
        }

        else
        {

          (*(v12 + 8))(v57, v11);
        }

        v74 = isa;
        v73 = v118;
        v75 = v103;
        (*(isa + 2))(v103, v31, v118);
        (*(v74 + 7))(v75, 0, 1, v73);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10000FF90(v75, v100, &unk_100975F60, &unk_1007F91B0);
        v71 = v108;
        v76 = v108;
        static Published.subscript.setter();
        sub_100005508(v75, &unk_100975F60, &unk_1007F91B0);
        v72 = v101;
        v41 = v102;
      }

      v96 = v36;
      sub_1002BB374();
      v77 = v105;
      v41(v105, v72, v36);
      v78 = (*(v12 + 80) + 24) & ~*(v12 + 80);
      v79 = swift_allocObject();
      *(v79 + 16) = v71;
      (*(v12 + 32))(v79 + v78, v77, v36);
      aBlock[4] = sub_1002D7904;
      aBlock[5] = v79;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100011678;
      aBlock[3] = &unk_1008D9F28;
      _Block_copy(aBlock);
      v119 = _swiftEmptyArrayStorage;
      sub_100005358(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v80 = v71;
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      type metadata accessor for DispatchWorkItem();
      swift_allocObject();
      v81 = DispatchWorkItem.init(flags:block:)();

      v82 = v72;
      v83 = v109;
      static DispatchTime.now()();
      v84 = v111;
      static SFPlatform.watchOS.getter();
      static SFPlatform.isPlatform(_:)();
      (*(v112 + 8))(v84, v114);
      v85 = v110;
      + infix(_:_:)();
      v86 = *(v113 + 8);
      v87 = v115;
      v86(v83, v115);
      OS_dispatch_queue.asyncAfter(deadline:execute:)();
      v86(v85, v87);
      *&v80[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_cancelNearbySharingInteractionWorkItem] = v81;

      sub_1002CB084(v82);
      v88 = type metadata accessor for TaskPriority();
      v89 = v116;
      (*(*(v88 - 8) + 56))(v116, 1, 1, v88);
      v90 = qword_1009735E0;
      v91 = v80;
      if (v90 != -1)
      {
        swift_once();
      }

      v92 = static AirDropActor.shared;
      v93 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
      v94 = swift_allocObject();
      v94[2] = v92;
      v94[3] = v93;
      v94[4] = v91;

      sub_1002B2DEC(0, 0, v89, &unk_1007F9460, v94, &type metadata for () + 8);

      (*(v12 + 8))(v82, v96);
      (*(isa + 1))(v98, v118);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_100973548 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_10000C4AC(v50, qword_100975E80);
    v118 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v118, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v118, v51, "SDAirDropNearFieldService: Boop To Action is disabled on beginNearbySharingInteraction", v52, 2u);
    }

    v53 = v118;
  }
}

uint64_t sub_1002BB374()
{
  v1 = v0;
  v2 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v32 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v32 - v13;
  v15 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_activeAirDropTransactionID;
  swift_beginAccess();
  sub_10000FF90(v1 + v15, v7, &unk_100976120, &qword_1007F9260);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_100005508(v7, &unk_100976120, &qword_1007F9260);
  }

  v33 = v15;
  (*(v9 + 32))(v14, v7, v8);
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000C4AC(v17, qword_100975E80);
  (*(v9 + 16))(v12, v14, v8);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v34 = v5;
  v35 = v14;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v36[0] = v32;
    *v21 = 136315138;
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v24 = v23;
    v25 = *(v9 + 8);
    v25(v12, v8);
    v26 = sub_10000C4E4(v22, v24, v36);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "SDAirDropNearFieldService finish existing AirDrop connection for transaction:%s", v21, 0xCu);
    sub_10000C60C(v32);

    v27 = v25;
  }

  else
  {

    v27 = *(v9 + 8);
    v27(v12, v8);
  }

  v28 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAirDropConnectionTimeoutWorkItem;
  v29 = v33;
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAirDropConnectionTimeoutWorkItem))
  {

    dispatch thunk of DispatchWorkItem.cancel()();
  }

  *(v1 + v28) = 0;

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10047F040(v35);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v30 = v35;
    sub_10035F618(v35);
    v27(v30, v8);
    swift_unknownObjectRelease();
  }

  else
  {
    v27(v35, v8);
  }

  v31 = v34;
  (*(v9 + 56))(v34, 1, 1, v8);
  swift_beginAccess();
  sub_10000C788(v31, v1 + v29, &unk_100976120, &qword_1007F9260);
  return swift_endAccess();
}

void sub_1002BB85C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS();
  v89 = *(v2 - 8);
  v90 = v2;
  __chkstk_darwin(v2);
  v88 = v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10028088C(&qword_100976130, &qword_1007F92B0);
  __chkstk_darwin(v4 - 8);
  v82 = (v78 - v5);
  v84 = type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0);
  v93 = *(v84 - 8);
  v6 = *(v93 + 64);
  v7 = __chkstk_darwin(v84);
  v86 = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = v78 - v9;
  v11 = __chkstk_darwin(v8);
  v83 = v78 - v12;
  __chkstk_darwin(v11);
  v94 = v78 - v13;
  v14 = sub_10028088C(&qword_100976138, qword_1007F92B8);
  __chkstk_darwin(v14 - 8);
  v16 = v78 - v15;
  v80 = type metadata accessor for DispatchTime();
  v79 = *(v80 - 8);
  v17 = __chkstk_darwin(v80);
  v19 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v78 - v20;
  v92 = type metadata accessor for DispatchWorkItemFlags();
  v87 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v23 - 8);
  v25 = v78 - v24;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v85 = v10;
  v26 = type metadata accessor for Logger();
  v81 = sub_10000C4AC(v26, qword_100975E80);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "SDAirDropNearFieldService: stop services.", v29, 2u);
  }

  v30 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_activeAirDropTransactionID;
  swift_beginAccess();
  sub_10000FF90(&v1[v30], v25, &unk_100976120, &qword_1007F9260);
  v31 = type metadata accessor for UUID();
  LODWORD(v30) = (*(*(v31 - 8) + 48))(v25, 1, v31);
  sub_100005508(v25, &unk_100976120, &qword_1007F9260);
  if (v30 != 1)
  {
    v32 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAirDropConnectionTimeoutWorkItem;
    if (!*&v1[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearbySharingAirDropConnectionTimeoutWorkItem])
    {
      if (sub_1002B3E28())
      {
        v33 = swift_allocObject();
        *(v33 + 16) = v1;
        v100 = sub_1002CDEA4;
        v101 = v33;
        aBlock = _NSConcreteStackBlock;
        v97 = 1107296256;
        v98 = sub_100011678;
        v99 = &unk_1008D9CD0;
        v78[1] = _Block_copy(&aBlock);
        v95 = _swiftEmptyArrayStorage;
        v78[0] = sub_100005358(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        v78[2] = v1;
        sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
        sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        type metadata accessor for DispatchWorkItem();
        swift_allocObject();
        v34 = DispatchWorkItem.init(flags:block:)();

        *&v1[v32] = v34;

        static DispatchTime.now()();
        + infix(_:_:)();
        v35 = v79[1];
        v36 = v19;
        v37 = v80;
        v35(v36, v80);
        OS_dispatch_queue.asyncAfter(deadline:execute:)();

        v35(v21, v37);
      }

      else
      {
        sub_1002BB374();
      }
    }
  }

  v38 = type metadata accessor for SDNearFieldTap(0);
  (*(*(v38 - 8) + 56))(v16, 1, 1, v38);
  v39 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_processingTap;
  swift_beginAccess();
  sub_10000C788(v16, &v1[v39], &qword_100976138, qword_1007F92B8);
  swift_endAccess();
  v40 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController];
  if (v40)
  {
    v41 = v40;
    v42 = [v41 currentTransaction];
    if (v42)
    {
      v79 = v41;
      v80 = v42;
      v43 = v84;
      v44 = *(v84 + 24);
      v45 = v94;
      UUID.init()();
      v46 = sub_1001BBEF4(kSecAttrKeyTypeECSECPrimeRandom, 256);
      v47 = sub_1001BC0FC(v46);
      v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;

      v51 = (v45 + *(v43 + 20));
      *v51 = v48;
      v51[1] = v50;
      *(v45 + v44) = v46;
      v52 = v82;
      sub_1002D7388(v45, v82, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
      (*(v93 + 56))(v52, 0, 1, v43);
      v53 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_localExchangePayload;
      swift_beginAccess();
      sub_10000C788(v52, &v1[v53], &qword_100976130, &qword_1007F92B0);
      swift_endAccess();
      v54 = v83;
      sub_1002D7388(v45, v83, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
      v55 = v85;
      sub_1002D7388(v45, v85, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v81 = v31;
        v60 = v59;
        v82 = swift_slowAlloc();
        aBlock = v82;
        *v58 = 138412546;
        isa = Data._bridgeToObjectiveC()().super.isa;
        sub_1002D6414(v54, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
        *(v58 + 4) = isa;
        v62 = v60;
        *v60 = isa;
        *(v58 + 12) = 2080;
        sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v63 = dispatch thunk of CustomStringConvertible.description.getter();
        v65 = v64;
        sub_1002D6414(v55, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
        v66 = sub_10000C4E4(v63, v65, &aBlock);

        *(v58 + 14) = v66;
        _os_log_impl(&_mh_execute_header, v56, v57, "SDAirDropNearFieldService: Updating public key: %@ listener ID: %s", v58, 0x16u);
        sub_100005508(v62, &qword_100975400, &qword_1007F65D0);

        sub_10000C60C(v82);
      }

      else
      {

        sub_1002D6414(v55, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
        sub_1002D6414(v54, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
      }

      v85 = *&v1[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_queue];
      v67 = v94;
      v68 = v86;
      sub_1002D7388(v94, v86, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
      v69 = (*(v93 + 80) + 32) & ~*(v93 + 80);
      v70 = swift_allocObject();
      v71 = v79;
      v72 = v80;
      *(v70 + 16) = v79;
      *(v70 + 24) = v72;
      sub_10000CA10(v68, v70 + v69, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
      v100 = sub_1002CDE40;
      v101 = v70;
      aBlock = _NSConcreteStackBlock;
      v97 = 1107296256;
      v98 = sub_100011678;
      v99 = &unk_1008D9C80;
      v73 = _Block_copy(&aBlock);
      v74 = v71;
      swift_unknownObjectRetain();
      v75 = v88;
      static DispatchQoS.unspecified.getter();
      v95 = _swiftEmptyArrayStorage;
      sub_100005358(&qword_100976140, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_10028088C(&unk_1009765A0, &qword_1007F97B0);
      sub_100011630(&qword_100976150, &unk_1009765A0, &qword_1007F97B0, &protocol conformance descriptor for [A]);
      v77 = v91;
      v76 = v92;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v73);

      swift_unknownObjectRelease();
      (*(v87 + 8))(v77, v76);
      (*(v89 + 8))(v75, v90);
      sub_1002D6414(v67, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    }

    else
    {
    }
  }
}

uint64_t sub_1002BC5BC(uint64_t a1)
{
  v1 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_1007F92D8;
  *(v6 + 24) = v5;
  sub_10028088C(&qword_100976168, &qword_1007F92F0);
  static Task<>.noThrow(priority:operation:)();

  return sub_100005508(v3, &qword_100976160, &qword_1007F8770);
}

uint64_t sub_1002BC728(uint64_t a1)
{
  *(v1 + 40) = a1;
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v2 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002BC7C4, v2, 0);
}

uint64_t sub_1002BC7C4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1002BB374();
  }

  v2 = *(v0 + 8);

  return v2(Strong == 0);
}

uint64_t sub_1002BC854(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1002BC940;

  return v5();
}

uint64_t sub_1002BC940(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1 & 1;
  v4 = *(v6 + 8);

  return v4();
}

void sub_1002BCA54(void *a1, uint64_t a2)
{
  type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = UUID._bridgeToObjectiveC()().super.isa;
  [a1 invalidateTransaction:a2 updatedPkData:isa bonjourListenerUUID:v5];
}

uint64_t sub_1002BCAE4(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v3[17] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v3[20] = *(v5 + 64);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  sub_10028088C(&qword_100976130, &qword_1007F92B0);
  v3[28] = swift_task_alloc();
  v6 = type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0);
  v3[29] = v6;
  v7 = *(v6 - 8);
  v3[30] = v7;
  v3[31] = *(v7 + 64);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v3[35] = v8;
  v9 = *(v8 - 8);
  v3[36] = v9;
  v3[37] = *(v9 + 64);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v10 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v3[41] = v10;
  v3[42] = *(v10 - 8);
  v3[43] = swift_task_alloc();
  sub_10028088C(&qword_100976138, qword_1007F92B8);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v11 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v3[46] = v11;
  v3[47] = *(v11 - 8);
  v3[48] = swift_task_alloc();
  sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v12 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v3[51] = v12;
  v3[52] = *(v12 - 8);
  v3[53] = swift_task_alloc();
  v13 = type metadata accessor for SDNearFieldTap(0);
  v3[54] = v13;
  v14 = *(v13 - 8);
  v3[55] = v14;
  v3[56] = *(v14 + 64);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v15 = static AirDropActor.shared;
  v3[60] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002BCFB4, v15, 0);
}

uint64_t sub_1002BCFB4()
{
  v216 = v0;
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 472);
  v2 = *(v0 + 112);
  v3 = type metadata accessor for Logger();
  *(v0 + 488) = sub_10000C4AC(v3, qword_100975E80);
  sub_1002D7388(v2, v1, type metadata accessor for SDNearFieldTap);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 472);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v215[0] = v9;
    *v8 = 136315138;
    v10 = sub_1004E85E0();
    v12 = v11;
    sub_1002D6414(v7, type metadata accessor for SDNearFieldTap);
    v13 = sub_10000C4E4(v10, v12, v215);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "SDAirDropNearFieldService: handle tap:%s", v8, 0xCu);
    sub_10000C60C(v9);
  }

  else
  {

    sub_1002D6414(v7, type metadata accessor for SDNearFieldTap);
  }

  v14 = *(v0 + 408);
  v15 = *(v0 + 416);
  v16 = *(v0 + 392);
  v17 = *(v0 + 128);
  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_pendingNearbySharingInteraction;
  swift_beginAccess();
  sub_10000FF90(v17 + v18, v16, &unk_100975F60, &unk_1007F91B0);
  v19 = *(v15 + 48);
  if (v19(v16, 1, v14) == 1)
  {
    v20 = *(v0 + 408);
    v21 = *(v0 + 392);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v19(v21, 1, v20) != 1)
    {
      sub_100005508(*(v0 + 392), &unk_100975F60, &unk_1007F91B0);
    }
  }

  else
  {
    v22 = *(v0 + 408);
    v23 = *(v0 + 416);
    v24 = *(v0 + 400);
    (*(v23 + 32))(v24, *(v0 + 392), v22);
    (*(v23 + 56))(v24, 0, 1, v22);
  }

  v25 = *(v0 + 400);
  v26 = *(v0 + 408);
  if (v19(v25, 1, v26) == 1)
  {
    sub_100005508(v25, &unk_100975F60, &unk_1007F91B0);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "SDAirDropNearFieldService: handling tap while we don't have a current nearbySharingInteraction.", v29, 2u);
    }

    goto LABEL_28;
  }

  v31 = *(v0 + 376);
  v30 = *(v0 + 384);
  v32 = *(v0 + 368);
  (*(*(v0 + 416) + 32))(*(v0 + 424), v25, v26);
  SFAirDrop.NearbySharingInteraction.state.getter();
  v33 = SFAirDrop.NearbySharingInteraction.State.isConnected.getter();
  (*(v31 + 8))(v30, v32);
  if (v33)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v36 = os_log_type_enabled(v34, v35);
    v38 = *(v0 + 416);
    v37 = *(v0 + 424);
    v39 = *(v0 + 408);
    if (v36)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "SDAirDropNearFieldService: nearbySharingInteraction is already connected.";
LABEL_26:
      _os_log_impl(&_mh_execute_header, v34, v35, v41, v40, 2u);

      goto LABEL_27;
    }

    goto LABEL_27;
  }

  v42 = *(v0 + 432);
  v43 = *(v0 + 440);
  v44 = *(v0 + 360);
  v45 = *(v0 + 128);
  v46 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_processingTap;
  swift_beginAccess();
  sub_10000FF90(v45 + v46, v44, &qword_100976138, qword_1007F92B8);
  LODWORD(v42) = (*(v43 + 48))(v44, 1, v42);
  sub_100005508(v44, &qword_100976138, qword_1007F92B8);
  if (v42 != 1)
  {
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    v63 = os_log_type_enabled(v34, v35);
    v38 = *(v0 + 416);
    v37 = *(v0 + 424);
    v39 = *(v0 + 408);
    if (v63)
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      v41 = "SDAirDropNearFieldService: still handling previous tap.";
      goto LABEL_26;
    }

LABEL_27:

    (*(v38 + 8))(v37, v39);
LABEL_28:

    v64 = *(v0 + 8);

    return v64();
  }

  v47 = *(v0 + 432);
  v48 = *(v0 + 112);
  v49 = *(v48 + *(v47 + 72));
  if (v49 != 2 && (v49 & 1) != 0)
  {
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v50, v51, "SDAirDropNearFieldService: tap application label not supported.", v52, 2u);
    }

    v53 = *(v0 + 128);

    v54 = *(v53 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
    if (v54)
    {
      v209 = *(v0 + 424);
      v55 = *(v0 + 408);
      v56 = *(v0 + 416);
      v57 = *(v0 + 336);
      v58 = *(v0 + 344);
      v59 = *(v0 + 328);
      v60 = v54;
      v61 = String._bridgeToObjectiveC()();
      v62 = [v60 supportsApplicationLabel:v61];

      *v58 = v62 ^ 1;
      (*(v57 + 104))(v58, enum case for SFAirDrop.NearbySharingInteraction.FailureType.unsupported(_:), v59);
      sub_1002BEF14(v58);

      (*(v57 + 8))(v58, v59);
      (*(v56 + 8))(v209, v55);
    }

    else
    {
      (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    }

    goto LABEL_28;
  }

  v66 = *(v0 + 440);
  v67 = *(v0 + 352);
  v68 = *(v0 + 240);
  v210 = *(v0 + 232);
  v198 = *(v0 + 320);
  v205 = *(v0 + 224);
  v69 = *(v0 + 128);
  sub_1002D7388(v48, v67, type metadata accessor for SDNearFieldTap);
  (*(v66 + 56))(v67, 0, 1, v47);
  swift_beginAccess();
  sub_10000C788(v67, v45 + v46, &qword_100976138, qword_1007F92B8);
  swift_endAccess();
  sub_1002B6A58(v48, v198);
  v70 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_localExchangePayload;
  swift_beginAccess();
  sub_10000FF90(v69 + v70, v205, &qword_100976130, &qword_1007F92B0);
  if ((*(v68 + 48))(v205, 1, v210) == 1)
  {
    v72 = *(v0 + 416);
    v71 = *(v0 + 424);
    v73 = *(v0 + 408);
    v74 = *(v0 + 224);
    (*(*(v0 + 288) + 8))(*(v0 + 320), *(v0 + 280));
    (*(v72 + 8))(v71, v73);
    sub_100005508(v74, &qword_100976130, &qword_1007F92B0);
    goto LABEL_28;
  }

  v75 = *(v0 + 272);
  v76 = *(v0 + 232);
  v77 = *(v0 + 216);
  v78 = *(v0 + 144);
  v79 = *(v0 + 152);
  v80 = *(v0 + 120);
  sub_10000CA10(*(v0 + 224), v75, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  v81 = *(v79 + 16);
  *(v0 + 496) = v81;
  *(v0 + 504) = (v79 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v81(v77, v80, v78);
  v82 = *(v75 + *(v76 + 24));
  *(v0 + 512) = v82;
  if (!v82)
  {
    v88 = *(v0 + 112);
    v89 = (v88 + *(*(v0 + 432) + 52));
    v90 = *v89;
    v91 = v89[1];
    v92 = v91 >> 62;
    if ((v91 >> 62) > 1)
    {
      if (v92 != 2)
      {
        goto LABEL_50;
      }

      v104 = *(v90 + 16);
      v103 = *(v90 + 24);
    }

    else
    {
      if (!v92)
      {
        if ((v91 & 0xFF000000000000) == 0)
        {
          goto LABEL_50;
        }

LABEL_53:
        v172 = *(v0 + 496);
        v191 = *(v0 + 464);
        v178 = *(v0 + 456);
        v185 = *(v0 + 448);
        v182 = *(v0 + 440);
        v115 = *(v0 + 312);
        v168 = *(v0 + 320);
        v213 = v115;
        v181 = *(v0 + 296);
        v117 = *(v0 + 280);
        v116 = *(v0 + 288);
        v173 = *(v0 + 304);
        v174 = v116;
        v118 = *(v0 + 264);
        v170 = *(v0 + 272);
        v201 = v118;
        v176 = *(v0 + 256);
        v184 = *(v0 + 248);
        v180 = *(v0 + 240);
        v119 = *(v0 + 208);
        v171 = *(v0 + 216);
        v120 = *(v0 + 200);
        v208 = *(v0 + 192);
        v175 = *(v0 + 184);
        v177 = *(v0 + 176);
        v183 = *(v0 + 160);
        v179 = *(v0 + 152);
        v195 = *(v0 + 144);
        v186 = *(v0 + 128);
        v187 = *(v0 + 112);
        v189 = *(v0 + 432);
        SFAirDrop.NearbySharingInteraction.id.getter();
        v169 = *(v116 + 16);
        v169(v115, v168, v117);
        sub_1002D7388(v88, v191, type metadata accessor for SDNearFieldTap);
        sub_1002D7388(v170, v118, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
        v172(v120, v119, v195);
        v172(v208, v171, v195);
        v169(v173, v115, v117);
        sub_1002D7388(v191, v178, type metadata accessor for SDNearFieldTap);
        sub_1002D7388(v118, v176, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
        v172(v175, v120, v195);
        v172(v177, v208, v195);
        v121 = (*(v174 + 80) + 16) & ~*(v174 + 80);
        v122 = (v181 + *(v182 + 80) + v121) & ~*(v182 + 80);
        v123 = (v185 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
        v124 = (*(v180 + 80) + v123 + 8) & ~*(v180 + 80);
        v125 = *(v179 + 80);
        v126 = (v184 + v125 + v124) & ~v125;
        v127 = (v183 + v125 + v126) & ~v125;
        v128 = swift_allocObject();
        (*(v174 + 32))(v128 + v121, v213, v117);
        sub_10000CA10(v191, v128 + v122, type metadata accessor for SDNearFieldTap);
        *(v128 + v123) = v186;
        sub_10000CA10(v201, v128 + v124, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
        v129 = *(v179 + 32);
        v129(v128 + v126, v120, v195);
        v129(v128 + v127, v208, v195);
        if (*(v187 + *(v189 + 64)))
        {
          v130 = *(v0 + 288);
          v188 = *(v0 + 456);
          v190 = *(v0 + 280);
          v131 = *(v0 + 256);
          v196 = *(v0 + 208);
          v202 = *(v0 + 304);
          v133 = *(v0 + 176);
          v132 = *(v0 + 184);
          v134 = *(v0 + 144);
          v192 = *(v0 + 112);
          v135 = *(*(v0 + 152) + 8);
          v136 = *(v0 + 128);
          v135(v133, v134);
          v214 = v135;
          v135(v132, v134);
          sub_1002D6414(v131, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
          sub_1002D6414(v188, type metadata accessor for SDNearFieldTap);
          v137 = v202;
          v203 = *(v130 + 8);
          v203(v137, v190);
          v138 = *&v136[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_singleBandManager];
          v139 = v136;

          sub_1004AC2D4(v192, v196, v138, v139, sub_1002D73F0, v128);
        }

        else
        {
          v140 = *(v0 + 128);
          (*(v0 + 496))(*(v0 + 168), *(v0 + 208), *(v0 + 144));
          v141 = v140;
          v142 = Logger.logObject.getter();
          v143 = static os_log_type_t.default.getter();
          v144 = os_log_type_enabled(v142, v143);
          v145 = *(v0 + 168);
          v147 = *(v0 + 144);
          v146 = *(v0 + 152);
          if (v144)
          {
            v148 = swift_slowAlloc();
            v149 = swift_slowAlloc();
            v215[0] = v149;
            *v148 = 136315138;
            sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v150 = dispatch thunk of CustomStringConvertible.description.getter();
            v152 = v151;
            v214 = *(v146 + 8);
            v214(v145, v147);
            v153 = sub_10000C4E4(v150, v152, v215);

            *(v148 + 4) = v153;
            _os_log_impl(&_mh_execute_header, v142, v143, "SDAirDropNearFieldService: Single band not required for Nearby Sharing Interaction:%s", v148, 0xCu);
            sub_10000C60C(v149);
          }

          else
          {

            v214 = *(v146 + 8);
            v214(v145, v147);
          }

          v154 = *(v0 + 456);
          v155 = *(v0 + 304);
          v156 = *(v0 + 288);
          v204 = *(v0 + 280);
          v157 = *(v0 + 256);
          v159 = *(v0 + 176);
          v158 = *(v0 + 184);
          v160 = *(v0 + 144);
          sub_1002BF3B8(v155, v154, *(v0 + 128), v157, v158, v159);

          v214(v159, v160);
          v214(v158, v160);
          sub_1002D6414(v157, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
          sub_1002D6414(v154, type metadata accessor for SDNearFieldTap);
          v161 = v204;
          v203 = *(v156 + 8);
          v203(v155, v161);
        }

        v162 = *(v0 + 416);
        v193 = *(v0 + 408);
        v197 = *(v0 + 424);
        v163 = *(v0 + 320);
        v165 = *(v0 + 272);
        v164 = *(v0 + 280);
        v166 = *(v0 + 216);
        v167 = *(v0 + 144);
        v214(*(v0 + 208), v167);
        v214(v166, v167);
        sub_1002D6414(v165, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
        v203(v163, v164);
        (*(v162 + 8))(v197, v193);
        goto LABEL_28;
      }

      v104 = v90;
      v103 = v90 >> 32;
    }

    if (v104 != v103)
    {
      goto LABEL_53;
    }

LABEL_50:
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "SDAirDropNearFieldService: Tap doesn't contain any public key data, this isn't supported", v107, 2u);
    }

    v108 = *(v0 + 416);
    v207 = *(v0 + 408);
    v212 = *(v0 + 424);
    v200 = *(v0 + 320);
    v110 = *(v0 + 280);
    v109 = *(v0 + 288);
    v111 = *(v0 + 272);
    v112 = *(v0 + 216);
    v114 = *(v0 + 144);
    v113 = *(v0 + 152);

    sub_1002C035C("SDAirDropNearFieldService: received unexpected Payload");
    (*(v113 + 8))(v112, v114);
    sub_1002D6414(v111, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    (*(v109 + 8))(v200, v110);
    (*(v108 + 8))(v212, v207);
    goto LABEL_28;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 520) = Strong;
  if (!Strong)
  {
    v93 = *(v0 + 136);
    (*(*(v0 + 152) + 56))(v93, 1, 1, *(v0 + 144));
    swift_unknownObjectRetain();
    sub_100005508(v93, &unk_100976120, &qword_1007F9260);
    v94 = Logger.logObject.getter();
    v95 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&_mh_execute_header, v94, v95, "SDAirDropNearFieldService: Failed to get endpoint UUID from tap", v96, 2u);
    }

    v97 = *(v0 + 416);
    v206 = *(v0 + 408);
    v211 = *(v0 + 424);
    v98 = *(v0 + 288);
    v194 = *(v0 + 280);
    v199 = *(v0 + 320);
    v99 = *(v0 + 272);
    v100 = *(v0 + 216);
    v102 = *(v0 + 144);
    v101 = *(v0 + 152);

    sub_1002C035C("SDAirDropNearFieldService: received unexpected Payload");
    swift_unknownObjectRelease();
    (*(v101 + 8))(v100, v102);
    sub_1002D6414(v99, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    (*(v98 + 8))(v199, v194);
    (*(v97 + 8))(v211, v206);
    goto LABEL_28;
  }

  swift_unknownObjectRetain();
  v84 = swift_task_alloc();
  *(v0 + 528) = v84;
  *v84 = v0;
  v84[1] = sub_1002BE3F8;
  v85 = *(v0 + 136);
  v87 = *(v0 + 112);
  v86 = *(v0 + 120);

  return sub_10047E734(v85, v86, v82, v87);
}

uint64_t sub_1002BE3F8()
{
  v1 = *(*v0 + 480);

  return _swift_task_switch(sub_1002BE508, v1, 0);
}

uint64_t sub_1002BE508()
{
  v114 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v2 + 56))(v3, 0, 1, v1);
  sub_100005508(v3, &unk_100976120, &qword_1007F9260);
  v4 = *(v0 + 112);
  v5 = (v4 + *(*(v0 + 432) + 52));
  v6 = *v5;
  v7 = v5[1];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2 || *(v6 + 16) == *(v6 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  if (!v8)
  {
    if ((v7 & 0xFF000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_7:
    v78 = *(v0 + 496);
    v97 = *(v0 + 464);
    v84 = *(v0 + 456);
    v91 = *(v0 + 448);
    v88 = *(v0 + 440);
    v9 = *(v0 + 312);
    v74 = *(v0 + 320);
    v110 = v9;
    v87 = *(v0 + 296);
    v11 = *(v0 + 280);
    v10 = *(v0 + 288);
    v79 = *(v0 + 304);
    v80 = v10;
    v12 = *(v0 + 264);
    v76 = *(v0 + 272);
    v103 = v12;
    v82 = *(v0 + 256);
    v90 = *(v0 + 248);
    v86 = *(v0 + 240);
    v13 = *(v0 + 208);
    v77 = *(v0 + 216);
    v14 = *(v0 + 200);
    v108 = *(v0 + 192);
    v81 = *(v0 + 184);
    v83 = *(v0 + 176);
    v89 = *(v0 + 160);
    v85 = *(v0 + 152);
    v100 = *(v0 + 144);
    v92 = *(v0 + 128);
    v93 = *(v0 + 112);
    v95 = *(v0 + 432);
    SFAirDrop.NearbySharingInteraction.id.getter();
    v75 = *(v10 + 16);
    v75(v9, v74, v11);
    sub_1002D7388(v4, v97, type metadata accessor for SDNearFieldTap);
    sub_1002D7388(v76, v12, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    v78(v14, v13, v100);
    v78(v108, v77, v100);
    v75(v79, v9, v11);
    sub_1002D7388(v97, v84, type metadata accessor for SDNearFieldTap);
    sub_1002D7388(v12, v82, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    v78(v81, v14, v100);
    v78(v83, v108, v100);
    v15 = (*(v80 + 80) + 16) & ~*(v80 + 80);
    v16 = (v87 + *(v88 + 80) + v15) & ~*(v88 + 80);
    v17 = (v91 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (*(v86 + 80) + v17 + 8) & ~*(v86 + 80);
    v19 = *(v85 + 80);
    v20 = (v90 + v19 + v18) & ~v19;
    v21 = (v89 + v19 + v20) & ~v19;
    v22 = swift_allocObject();
    (*(v80 + 32))(v22 + v15, v110, v11);
    sub_10000CA10(v97, v22 + v16, type metadata accessor for SDNearFieldTap);
    *(v22 + v17) = v92;
    sub_10000CA10(v103, v22 + v18, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    v23 = *(v85 + 32);
    v23(v22 + v20, v14, v100);
    v23(v22 + v21, v108, v100);
    if (*(v93 + *(v95 + 64)))
    {
      v24 = *(v0 + 288);
      v94 = *(v0 + 456);
      v96 = *(v0 + 280);
      v25 = *(v0 + 256);
      v101 = *(v0 + 208);
      v104 = *(v0 + 304);
      v27 = *(v0 + 176);
      v26 = *(v0 + 184);
      v28 = *(v0 + 144);
      v98 = *(v0 + 112);
      v29 = *(*(v0 + 152) + 8);
      v30 = *(v0 + 128);
      v29(v27, v28);
      v111 = v29;
      v29(v26, v28);
      sub_1002D6414(v25, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
      sub_1002D6414(v94, type metadata accessor for SDNearFieldTap);
      v31 = v104;
      v105 = *(v24 + 8);
      v105(v31, v96);
      v32 = *&v30[OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_singleBandManager];
      v33 = v30;

      sub_1004AC2D4(v98, v101, v32, v33, sub_1002D73F0, v22);
    }

    else
    {
      v44 = *(v0 + 128);
      (*(v0 + 496))(*(v0 + 168), *(v0 + 208), *(v0 + 144));
      v45 = v44;
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      v48 = os_log_type_enabled(v46, v47);
      v49 = *(v0 + 168);
      v51 = *(v0 + 144);
      v50 = *(v0 + 152);
      if (v48)
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v113 = v53;
        *v52 = 136315138;
        sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v54 = dispatch thunk of CustomStringConvertible.description.getter();
        v56 = v55;
        v111 = *(v50 + 8);
        v111(v49, v51);
        v57 = sub_10000C4E4(v54, v56, &v113);

        *(v52 + 4) = v57;
        _os_log_impl(&_mh_execute_header, v46, v47, "SDAirDropNearFieldService: Single band not required for Nearby Sharing Interaction:%s", v52, 0xCu);
        sub_10000C60C(v53);
      }

      else
      {

        v111 = *(v50 + 8);
        v111(v49, v51);
      }

      v58 = *(v0 + 456);
      v59 = *(v0 + 304);
      v60 = *(v0 + 288);
      v107 = *(v0 + 280);
      v61 = *(v0 + 256);
      v63 = *(v0 + 176);
      v62 = *(v0 + 184);
      v64 = *(v0 + 144);
      sub_1002BF3B8(v59, v58, *(v0 + 128), v61, v62, v63);

      v111(v63, v64);
      v111(v62, v64);
      sub_1002D6414(v61, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
      sub_1002D6414(v58, type metadata accessor for SDNearFieldTap);
      v65 = v107;
      v105 = *(v60 + 8);
      v105(v59, v65);
    }

    v66 = *(v0 + 416);
    v99 = *(v0 + 408);
    v102 = *(v0 + 424);
    v67 = *(v0 + 320);
    v69 = *(v0 + 272);
    v68 = *(v0 + 280);
    v70 = *(v0 + 216);
    v71 = *(v0 + 144);
    v111(*(v0 + 208), v71);
    v111(v70, v71);
    sub_1002D6414(v69, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
    v105(v67, v68);
    (*(v66 + 8))(v102, v99);
    goto LABEL_18;
  }

  if (v6 != v6 >> 32)
  {
    goto LABEL_7;
  }

LABEL_10:
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&_mh_execute_header, v34, v35, "SDAirDropNearFieldService: Tap doesn't contain any public key data, this isn't supported", v36, 2u);
  }

  v37 = *(v0 + 416);
  v109 = *(v0 + 408);
  v112 = *(v0 + 424);
  v106 = *(v0 + 320);
  v39 = *(v0 + 280);
  v38 = *(v0 + 288);
  v40 = *(v0 + 272);
  v41 = *(v0 + 216);
  v43 = *(v0 + 144);
  v42 = *(v0 + 152);

  sub_1002C035C("SDAirDropNearFieldService: received unexpected Payload");
  (*(v42 + 8))(v41, v43);
  sub_1002D6414(v40, type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload);
  (*(v38 + 8))(v106, v39);
  (*(v37 + 8))(v112, v109);
LABEL_18:

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_1002BEF14(uint64_t a1)
{
  v30 = a1;
  v1 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  __chkstk_darwin(v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_10000C4AC(v11, qword_100975E80);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "SDAirDropNearFieldService: near field interruption", v14, 2u);
  }

  v15 = sub_1002B4114(v32);
  v17 = v16;
  v18 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  if ((*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    (v15)(v32, 0);
    v19 = v30;
  }

  else
  {
    v19 = v30;
    (*(v2 + 16))(v10, v30, v1);
    (*(v8 + 104))(v10, enum case for SFAirDrop.NearbySharingInteraction.State.connectionInterrupted(_:), v7);
    SFAirDrop.NearbySharingInteraction.state.setter();
    (v15)(v32, 0);
  }

  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = v31;
  (*(v2 + 16))(v31, v19, v1);
  v23 = qword_1009735E0;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = static AirDropActor.shared;
  v25 = sub_100005358(&qword_100977C00, type metadata accessor for AirDropActor, &protocol conformance descriptor for AirDropActor);
  v26 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = v24;
  *(v27 + 3) = v25;
  *(v27 + 4) = v21;
  (*(v2 + 32))(&v27[v26], v22, v1);

  sub_1002B3098(0, 0, v6, &unk_1007F93D0, v27);
}

void sub_1002BF3B8(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v104 = a6;
  v100 = a5;
  v106 = a4;
  v113 = a2;
  v8 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v9 = __chkstk_darwin(v8 - 8);
  v98 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v99 = &v92 - v12;
  __chkstk_darwin(v11);
  v108 = &v92 - v13;
  v103 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v97 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v15 - 8);
  v105 = &v92 - v16;
  v112 = type metadata accessor for SDNearFieldTap(0);
  __chkstk_darwin(v112);
  v101 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v92 - v23;
  v25 = *(v19 + 104);
  v107 = enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.DDUI(_:);
  v110 = v25;
  v25(&v92 - v23);
  sub_100005358(&qword_100976260, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
  v111 = a1;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v114 == v117)
  {
    v26 = 1;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v109 = *(v19 + 8);
  v109(v24, v18);

  if ((v26 & 1) == 0)
  {
    goto LABEL_29;
  }

  v27._object = 0x800000010078A550;
  v27._countAndFlagsBits = 0xD000000000000015;
  v28 = String.hasPrefix(_:)(v27);
  v29 = *(a3 + OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_nearFieldController);
  if (!v29)
  {
    return;
  }

  v30 = [v29 currentApplicationLabel];
  if (!v30)
  {
    return;
  }

  LODWORD(v95) = v28;
  isa = a3;
  v31 = v30;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v32._object = 0x800000010078A550;
  v32._countAndFlagsBits = 0xD000000000000015;
  LOBYTE(v31) = String.hasPrefix(_:)(v32);

  if ((v31 & 1) != 0 && (v33._object = 0x800000010078A550, v33._countAndFlagsBits = 0xD000000000000015, String.hasPrefix(_:)(v33)))
  {
    a3 = isa;
    if ((*(v113 + *(v112 + 44)) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
    a3 = isa;
    if ((v95 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_10000C4AC(v34, qword_100975E80);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "SDAirDropNearFieldService: start DDUI server", v37, 2u);
  }

  v38 = *(v106 + *(type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0) + 24));
  if (!v38)
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "No identity to start server";
LABEL_56:
      _os_log_impl(&_mh_execute_header, v41, v42, v44, v43, 2u);
    }

LABEL_57:

    sub_1002C035C("SDAirDropNearFieldService: received unexpected Payload");
    return;
  }

  swift_unknownObjectRetain();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v40 = v112;
  v39 = v113;
  v95 = Data._bridgeToObjectiveC()().super.isa;
  if (*(v39 + *(v40 + 24) + 8))
  {
    v94 = String._bridgeToObjectiveC()();
  }

  else
  {
    v94 = 0;
  }

  if (*(v39 + *(v40 + 32) + 8))
  {
    v93 = String._bridgeToObjectiveC()();
  }

  else
  {
    v93 = 0;
  }

  if (*(v113 + *(v112 + 28) + 8))
  {
    v45 = String._bridgeToObjectiveC()();
  }

  else
  {
    v45 = 0;
  }

  v46 = isa;
  v47 = v95;
  v48 = v94;
  v49 = v93;
  v92 = v45;
  sub_1001BC200(v38, isa, v95, v94, v93, v45);
  swift_unknownObjectRelease();

LABEL_29:
  v50 = v113;
  v51 = (v113 + *(v112 + 40));
  if (*v51 == 0xD00000000000001BLL && 0x800000010078A530 == v51[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v52 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_airDropUISessionManager;
    swift_beginAccess();
    sub_1002A9938(a3 + v52, &v114);
    v53 = v115;
    v54 = v116;
    sub_10002CDC0(&v114, v115);
    (*(v54 + 80))(v50, v53, v54);
    sub_10000C60C(&v114);
  }

  v110(v22, enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.meet(_:), v18);
  sub_100005358(&qword_100976268, &type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType);
  v55 = dispatch thunk of static Equatable.== infix(_:_:)();
  v109(v22, v18);
  v56 = v112;
  if ((v55 & 1) != 0 && *(v113 + *(v112 + 44)) != 1)
  {
    goto LABEL_45;
  }

  v110(v22, v107, v18);
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v109(v22, v18);
  if (v57)
  {
    goto LABEL_45;
  }

  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  v59 = sub_10000C4AC(v58, qword_100975E80);
  v60 = v101;
  sub_1002D7388(v113, v101, type metadata accessor for SDNearFieldTap);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();
  v63 = os_log_type_enabled(v61, v62);
  v64 = v106;
  if (v63)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v110 = v59;
    v67 = v66;
    *&v114 = v66;
    *v65 = 136315138;
    type metadata accessor for UUID();
    sub_100005358(&qword_100978CE0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v70 = v69;
    sub_1002D6414(v60, type metadata accessor for SDNearFieldTap);
    v64 = v106;
    v71 = sub_10000C4E4(v68, v70, &v114);

    *(v65 + 4) = v71;
    _os_log_impl(&_mh_execute_header, v61, v62, "SDAirDropNearFieldService: begin listening for incoming AirDrop connection for transaction:%s", v65, 0xCu);
    sub_10000C60C(v67);
  }

  else
  {

    sub_1002D6414(v60, type metadata accessor for SDNearFieldTap);
  }

  v72 = *(v64 + *(type metadata accessor for SDAirDropNearFieldService.LocalExchangePayload(0) + 24));
  if (!v72)
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "No identity";
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  v73 = v56[15];
  v74 = type metadata accessor for UUID();
  v75 = *(v74 - 8);
  v76 = v113;
  v77 = v105;
  (*(v75 + 16))(v105, v113 + v73, v74);
  (*(v75 + 56))(v77, 0, 1, v74);
  v78 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_activeAirDropTransactionID;
  swift_beginAccess();
  swift_unknownObjectRetain();
  sub_10000C788(v77, a3 + v78, &unk_100976120, &qword_1007F9260);
  swift_endAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10035ED60(v76 + v73, v64, v72, *(v76 + v56[13]), *(v76 + v56[13] + 8));
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_45:
  v79 = [objc_opt_self() sharedMonitor];
  if (v79)
  {
    v80 = v79;
    v81 = [v79 deviceKeyBagLocked];

    v82 = v108;
    if (v81 && ((*(v113 + v56[12]) & 1) != 0 || *(v113 + v56[6] + 8)))
    {
      v83 = type metadata accessor for UUID();
      v84 = *(v83 - 8);
      v85 = v105;
      (*(v84 + 16))(v105, v100, v83);
      (*(v84 + 56))(v85, 0, 1, v83);
      sub_1002B4888(v85);
      sub_100005508(v85, &unk_100976120, &qword_1007F9260);
    }

    else
    {
      v86 = OBJC_IVAR____TtC16DaemoniOSLibrary25SDAirDropNearFieldService_pendingNearbySharingInteraction;
      swift_beginAccess();
      sub_10000FF90(a3 + v86, v82, &unk_100975F60, &unk_1007F91B0);
      v87 = v102;
      v88 = v103;
      if ((*(v102 + 48))(v82, 1, v103) == 1)
      {
        sub_100005508(v82, &unk_100975F60, &unk_1007F91B0);
      }

      else
      {
        v89 = v97;
        (*(v87 + 32))(v97, v82, v88);
        v90 = v99;
        (*(v87 + 16))(v99, v89, v88);
        v112 = *(v87 + 56);
        (v112)(v90, 0, 1, v88);
        swift_getKeyPath();
        swift_getKeyPath();
        sub_10000FF90(v90, v98, &unk_100975F60, &unk_1007F91B0);
        v91 = a3;
        static Published.subscript.setter();
        sub_100005508(v90, &unk_100975F60, &unk_1007F91B0);
        (*(v87 + 8))(v89, v88);
        (v112)(v90, 1, 1, v88);
        swift_beginAccess();
        sub_10000C788(v90, a3 + v86, &unk_100975F60, &unk_1007F91B0);
        swift_endAccess();
      }

      sub_1002B5838(v113, v104, v111);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002C031C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (a1)
  {
    return sub_1002C035C("SDAirDropNearFieldService: Failed to enforce single band mode");
  }

  else
  {
    return (a3)(0, a2);
  }
}

uint64_t sub_1002C035C(const char *a1)
{
  v2 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  __chkstk_darwin(v9 - 8);
  v11 = (&v19 - v10);
  if (qword_100973548 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000C4AC(v12, qword_100975E80);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, a1, v15, 2u);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_100005508(v8, &unk_100975F60, &unk_1007F91B0);
    v16 = 1;
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_100005508(v8, &unk_100975F60, &unk_1007F91B0);
    SFAirDrop.NearbySharingInteraction.id.getter();
    (*(v3 + 8))(v5, v2);
    v16 = 0;
  }

  v17 = type metadata accessor for UUID();
  (*(*(v17 - 8) + 56))(v11, v16, 1, v17);
  sub_1002B4888(v11);
  return sub_100005508(v11, &unk_100976120, &qword_1007F9260);
}

uint64_t sub_1002C06B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction.FailureType();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  sub_10028088C(&unk_100975F60, &unk_1007F91B0);
  v5[16] = swift_task_alloc();
  sub_10028088C(&unk_100976120, &qword_1007F9260);
  v5[17] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v9 = static AirDropActor.shared;
  v5[18] = static AirDropActor.shared;

  return _swift_task_switch(sub_1002C08D4, v9, 0);
}

uint64_t sub_1002C08D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v2 = v0[16];
    v3 = v0[13];
    v4 = v0[14];
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if ((*(v4 + 48))(v2, 1, v3))
    {
      sub_100005508(v0[16], &unk_100975F60, &unk_1007F91B0);
      v5 = 1;
    }

    else
    {
      v6 = v0[16];
      v8 = v0[14];
      v7 = v0[15];
      v9 = v0[13];
      (*(v8 + 16))(v7, v6, v9);
      sub_100005508(v6, &unk_100975F60, &unk_1007F91B0);
      SFAirDrop.NearbySharingInteraction.id.getter();
      (*(v8 + 8))(v7, v9);
      v5 = 0;
    }

    v10 = v0[17];
    v12 = v0[11];
    v11 = v0[12];
    v13 = v0[10];
    v14 = v0[6];
    v15 = type metadata accessor for UUID();
    (*(*(v15 - 8) + 56))(v10, v5, 1, v15);
    (*(v12 + 16))(v11, v14, v13);
    if ((*(v12 + 88))(v11, v13) == enum case for SFAirDrop.NearbySharingInteraction.FailureType.unsupported(_:))
    {
      static Clock<>.continuous.getter();
      v16 = swift_task_alloc();
      v0[20] = v16;
      *v16 = v0;
      v16[1] = sub_1002C0C28;

      return sub_10002ED10(5000000000000000000, 0, 0, 0, 1);
    }

    (*(v0[11] + 8))(v0[12], v0[10]);
    v18 = v0[19];
    v19 = v0[17];
    sub_1002B4888(v19);

    sub_100005508(v19, &unk_100976120, &qword_1007F9260);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1002C0C28()
{
  v2 = *v1;

  v3 = v2[18];
  v4 = v2[9];
  v5 = v2[8];
  v6 = v2[7];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = sub_1002D8BA4;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = sub_1002C0DD4;
  }

  return _swift_task_switch(v7, v3, 0);
}