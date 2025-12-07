void sub_1003B1DBC(uint64_t a1, char a2)
{
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 184));
    sub_1000167BC();
    sub_1003674E4();
    v5[2] = sub_100366768;
    v5[3] = &unk_1004C2ED0;
    v5[4] = a1;
    v6 = a2;
    dispatch_sync(v4, v5);
  }
}

void sub_1003B1E34(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 184));
    sub_1000167BC();
    sub_1003674E4();
    v4 = v3;
    v5 = sub_1003673F8();
    dispatch_sync(v5, v6);
  }
}

void sub_1003B1EC0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 184));
    sub_1000167BC();
    sub_1003674E4();
    v4 = v3;
    v5 = sub_1003673F8();
    dispatch_sync(v5, v6);
  }
}

uint64_t sub_1003B1F4C(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = sub_1003C75C8(*(result + 24));

  if (!v2)
  {
    sub_1003DADB0(*(v1 + 24), *(v1 + 216));
  }

  v3 = sub_1003B85AC(*(v1 + 24));

  if (!v3)
  {
    sub_1003DAD80(*(v1 + 24), *(v1 + 48));
  }

  v4 = sub_1003B85B8(*(v1 + 24));

  if (!v4)
  {
    sub_1003DAD90(*(v1 + 24), *(v1 + 64));
  }

  if (*(v1 + 8) == 13)
  {
    v5 = sub_1003C75BC(*(v1 + 24));

    if (!v5)
    {
      sub_1003DADA0(*(v1 + 24), *(v1 + 160));
    }

    [*(v1 + 192) agreedKmlSharingVersion];
    if ([sub_100367538() doesVersion:? support:?])
    {
      v6 = sub_1003C7D40(*(v1 + 24));
      if (v6)
      {
LABEL_15:

        goto LABEL_16;
      }

      v7 = sub_1003C7D34(*(v1 + 24));

      if (v7)
      {
        v6 = objc_opt_new();
        sub_1003C7DD0(*(v1 + 24), v6);
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  sub_1003DAD74(*(v1 + 24), *(v1 + 98));
  sub_1003DAD28(*(v1 + 24), [*(v1 + 192) agreedKmlSharingVersion]);
  v8 = *(v1 + 8);
  v9 = 2;
  if (v8 <= 0x1F)
  {
    if (((1 << v8) & 0x80E00000) != 0)
    {
      v9 = 5;
    }

    else if (((1 << v8) & 0x1800) != 0)
    {
      v9 = 3;
    }

    else if (v8 == 13)
    {
      v9 = 4;
    }
  }

  v10 = *(v1 + 24);

  return sub_1003C7DEC(v10, v9);
}

id sub_1003B2100(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = v1[24];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1003B2160(uint64_t a1)
{
  if (a1)
  {
    v3 = KmlLogger();
    if (sub_100057AEC(v3))
    {
      v4 = *(a1 + 216);
      [v4 UTF8String];

      sub_1003672C0();
      sub_1003672B0();
      sub_100367358();
      _os_log_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }

    sub_1003B18E8(a1);
  }
}

void sub_1003B2240(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!a1)
  {
    goto LABEL_33;
  }

  if (sub_1003DACE0(*(a1 + 24)))
  {
    v18 = sub_1003ACF68(*(a1 + 24));
    v19 = [v18 isEqualToString:v15];

    if (v19)
    {
      v18 = sub_1003AD0FC(*(a1 + 24));
      v20 = [v18 isEqual:v14];

      if (v20)
      {
        goto LABEL_5;
      }

      v64 = KmlLogger();
      if (sub_1003674CC(v64))
      {
        v65 = *(a1 + 216);
        v66 = [v65 UTF8String];
        v67 = sub_1003AD0FC(*(a1 + 24));
        *v140 = 136315906;
        sub_1003672F0();
        sub_100367320();
        v141 = v66;
        v142 = 2112;
        v143 = v68;
        sub_100367310();
        _os_log_impl(v69, v70, v71, v72, v73, 0x26u);
      }
    }

    else
    {
      v32 = KmlLogger();
      if (sub_1003674CC(v32))
      {
        v33 = *(a1 + 216);
        v34 = [v33 UTF8String];

        *v140 = 136315906;
        sub_1003672F0();
        sub_100367320();
        v141 = v34;
        v142 = 2112;
        v143 = v15;
        sub_100367310();
        _os_log_impl(v35, v36, v37, v38, v39, 0x26u);
      }
    }

    goto LABEL_32;
  }

LABEL_5:
  v21 = [NSString stringWithFormat:@"Message for - %@", *(a1 + 216)];
  kmlUtilLogLargeData();

  v22 = a4 == 2 || a4 == 7;
  v23 = &unk_100409000;
  if (!v22)
  {
    if (a4 != 5)
    {
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  v21 = (a1 + 32);
  if (*(a1 + 32) && *(a1 + 152))
  {
    v24 = KmlLogger();
    if (sub_1003674CC(v24))
    {
      v25 = *(a1 + 216);
      v26 = [v25 UTF8String];

      *v140 = 136315650;
      sub_1003672F0();
      sub_100367320();
      v141 = v26;
      sub_100367310();
      _os_log_impl(v27, v28, v29, v30, v31, 0x1Cu);
    }

    if (!sub_1003DACE0(*(a1 + 24)))
    {
      goto LABEL_33;
    }

LABEL_32:
    sub_1003CD134(*(a1 + 120), v15);
    goto LABEL_33;
  }

  v40 = objc_alloc_init(KeySigningRequest);
  sub_1003BAE64(v40, *(a1 + 192));
  if ((sub_1003BA7E4(v40, v13) & 1) == 0)
  {
    v41 = KmlLogger();
    if (sub_1003674CC(v41))
    {
      v42 = *(a1 + 216);
      v43 = [v42 UTF8String];

      *v140 = 136315650;
      sub_1003672F0();
      sub_100367320();
      v141 = v43;
      sub_100367310();
      _os_log_impl(v44, v45, v46, v47, v48, 0x1Cu);
    }

    if (sub_1003DACE0(*(a1 + 24)))
    {
      sub_1003CD134(*(a1 + 120), v15);
    }

LABEL_23:

    goto LABEL_33;
  }

  v74 = sub_1003C75EC(*(a1 + 24));
  if (v74)
  {
    v130 = v74;
    v123 = sub_1003C22E0(*(a1 + 24));

    if (v123)
    {
      v132 = *(a1 + 24);
      v93 = sub_1003C22E0(v132);
      sub_1003DADFC(v132, v93 - 1);
      v133 = sub_1003AF3D8(v40);

      if (v133 && (v134 = [NSString alloc], sub_1003AF3D8(v40), v125 = objc_claimAutoreleasedReturnValue(), [v125 value], v120 = objc_claimAutoreleasedReturnValue(), v135 = objc_msgSend(v134, "initWithData:encoding:", v120, 4), v120, v125, v135))
      {
        v127 = sub_1003C75EC(*(a1 + 24));
        v121 = [v127 isEqualToString:v135];

        if (v121)
        {
          v128 = KmlLogger();
          if (os_log_type_enabled(v128, OS_LOG_TYPE_INFO))
          {
            v118 = *(a1 + 216);
            v122 = [v118 UTF8String];

            *v140 = 136315650;
            sub_1003672F0();
            sub_100367320();
            v141 = v122;
            sub_100367454(&_mh_execute_header, v128, v117, "%s : %i : %s : Passcode verified. Ok to continue", v140);
          }

          goto LABEL_36;
        }
      }

      else
      {
        v135 = 0;
      }

      v94 = KmlLogger();
      if (sub_1003674CC(v94))
      {
        v95 = *(a1 + 216);
        v96 = [v95 UTF8String];

        *v140 = 136315650;
        sub_1003672F0();
        sub_100367320();
        v141 = v96;
        sub_100367310();
        _os_log_impl(v97, v98, v99, v100, v101, 0x1Cu);
      }

      if (sub_1003C22E0(*(a1 + 24)))
      {
        v107 = KmlLogger();
        if (sub_1003674CC(v107))
        {
          v108 = *(a1 + 216);
          v126 = [v108 UTF8String];
          v109 = sub_1003C22E0(*(a1 + 24));

          *v140 = 136315906;
          sub_1003672F0();
          *&v140[7] = 776;
          v140[9] = 2080;
          v141 = v126;
          v142 = v110;
          LODWORD(v143) = v109;
          sub_100367310();
          _os_log_impl(v111, v112, v113, v114, v115, 0x22u);
        }

        sub_1003B42C8(a1);
        WeakRetained = objc_loadWeakRetained((a1 + 232));
        [WeakRetained handlePasscodeRetryRequestedForInvitation:*(a1 + 216)];
      }

      else
      {
        v102 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        v146 = NSLocalizedDescriptionKey;
        v103 = [NSString stringWithUTF8String:KmlErrorString()];
        v147 = v103;
        v104 = [NSDictionary dictionaryWithObjects:&v147 forKeys:&v146 count:1];
        v105 = [NSError errorWithDomain:v102 code:118 userInfo:v104];
        v106 = *(a1 + 128);
        *(a1 + 128) = v105;

        sub_1003B18E8(a1);
      }

      goto LABEL_23;
    }
  }

LABEL_36:
  objc_storeStrong((a1 + 32), v40);
  v75 = [v16 uppercaseString];
  v76 = *(a1 + 160);
  *(a1 + 160) = v75;

  v77 = kmlUtilDataForHexString();
  v78 = *(a1 + 152);
  *(a1 + 152) = v77;

  objc_storeStrong((a1 + 80), a7);
  v79 = KmlLogger();
  if (sub_1003674CC(v79))
  {
    v80 = *(a1 + 216);
    v119 = [v80 UTF8String];
    v124 = *(a1 + 160);
    v131 = *(a1 + 80);

    *v140 = 136316162;
    sub_1003672F0();
    sub_100367320();
    v141 = v119;
    v142 = 2112;
    v143 = v124;
    v144 = 2112;
    v145 = v131;
    sub_100367310();
    _os_log_impl(v81, v82, v83, v84, v85, 0x30u);
  }

  sub_1003B49C8(a1);
  v23 = &unk_100409000;
  if (a4 == 5)
  {
LABEL_25:
    v49 = v23;
    v50 = KmlLogger();
    if (sub_1003674CC(v50))
    {
      v51 = *(a1 + 216);
      v52 = [v51 UTF8String];

      *v140 = v49[277];
      sub_1003672F0();
      sub_100367320();
      v141 = v52;
      sub_100367310();
      _os_log_impl(v53, v54, v55, v56, v57, 0x1Cu);
    }

    v58 = [[KmlCancelMessage alloc] initWithData:v13];
    v129 = v58;
    if (v58)
    {
      v86 = [v58 kmlCode];
      if (v86 == 105)
      {
        v87 = 102;
      }

      else
      {
        v87 = v86;
      }

      v59 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v138 = NSLocalizedDescriptionKey;
      v60 = [NSString stringWithUTF8String:KmlErrorString()];
      v139 = v60;
      v61 = [NSDictionary dictionaryWithObjects:&v139 forKeys:&v138 count:1];
      v62 = v59;
      v63 = v87;
    }

    else
    {
      v59 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v136 = NSLocalizedDescriptionKey;
      v60 = [NSString stringWithUTF8String:KmlErrorString()];
      v137 = v60;
      v61 = [NSDictionary dictionaryWithObjects:&v137 forKeys:&v136 count:1];
      v62 = v59;
      v63 = 102;
    }

    v88 = [NSError errorWithDomain:v62 code:v63 userInfo:v61];
    v89 = *(a1 + 128);
    *(a1 + 128) = v88;

    v90 = objc_loadWeakRetained((a1 + 200));
    if (v90)
    {
      v91 = [[DAShareInitiatorResult alloc] initFailureResultWithResponse:0 error:*(a1 + 128)];
      v92 = objc_loadWeakRetained((a1 + 200));
      [v92 handleInitiatorMessageResult:v91];
    }

    sub_1003B18E8(a1);
  }

LABEL_33:
}

void sub_1003B2CA8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v7 = *(a1 + 8);
  v8 = KmlLogger();
  v9 = sub_100057AEC(v8);
  if (v7 >= a2)
  {
    if (!v9)
    {
LABEL_92:

      return;
    }

LABEL_18:
    v29 = *(a1 + 216);
    v30 = [v29 UTF8String];

    sub_100367248();
    sub_1003672A0();
    v197 = v30;
    sub_1003672D0();
    _os_log_impl(v31, v32, v33, v34, v35, 0x1Cu);
    goto LABEL_92;
  }

  if (v9)
  {
    v7 = *(a1 + 216);
    v3 = [v7 UTF8String];
    v10 = *(a1 + 8);

    sub_100367248();
    sub_1003672A0();
    v197 = v3;
    v198 = 2048;
    v199 = v10;
    v200 = 2048;
    v201 = a2;
    sub_1003672D0();
    _os_log_impl(v11, v12, v13, v14, v15, 0x30u);
  }

  v16 = *(a1 + 8);
  *(a1 + 8) = a2;
  *(a1 + 16) = v16;
  if (!(!v18 & v17))
  {
    switch(a2)
    {
      case 11:
        v36 = KmlLogger();
        if (sub_100057AEC(v36))
        {
          v37 = *(a1 + 216);
          [v37 UTF8String];

          sub_100367248();
          sub_100367278();
          sub_1003672D0();
          _os_log_impl(v38, v39, v40, v41, v42, 0x1Cu);
        }

        sub_1003C7DEC(*(a1 + 24), 3);
        WeakRetained = objc_loadWeakRetained((a1 + 232));
        [WeakRetained handleSentInvitationWithIdentifier:*(a1 + 216)];
        goto LABEL_92;
      case 12:
        v43 = KmlLogger();
        if (sub_100057AEC(v43))
        {
          v44 = *(a1 + 216);
          [v44 UTF8String];

          sub_100367248();
          sub_100367278();
          sub_1003672D0();
          _os_log_impl(v45, v46, v47, v48, v49, 0x1Cu);
        }

        KmlSignpostLogger();
        objc_claimAutoreleasedReturnValue();
        sub_100367344();
        if (!(!v18 & v17) && os_signpost_enabled(WeakRetained))
        {
          *buf = 0;
          sub_100367330();
          _os_signpost_emit_with_name_impl(v50, v51, v52, v53, v54, v55, v56, 2u);
        }

        v57 = [NSString stringWithFormat:@"SignedResponse - %@", *(a1 + 216)];
        kmlUtilLogLargeData();

        if (sub_1003DACE0(*(a1 + 24)))
        {
          v58 = *(a1 + 120);
          v59 = sub_1003ACF68(*(a1 + 24));
          *(a1 + 144) = sub_10037E34C(v58, v59);

          v60 = *(a1 + 120);
          v61 = *(a1 + 40);
          v62 = *(a1 + 216);
          v63 = *(a1 + 160);
          v64 = sub_1003AD0FC(*(a1 + 24));
          v65 = sub_1003ACF68(*(a1 + 24));
          v66 = sub_1003C7D28(*(a1 + 24));
          sub_1003CD23C(v60, v61, 0, 0, v62, v63, v64, v65, v66, 3);

          return;
        }

        WeakRetained = [[DACarKeyGenericCrossPlatformSharingData alloc] initWithSharingIdentifier:*(a1 + 216) friendKeyIdentifier:0 sharingMessageType:3 message:*(a1 + 40)];
        if (sub_1003F6F5C(v145) && (v146 = objc_opt_new(), v147 = [v146 pretendBindingAttestationUsed], v146, v147))
        {
          v148 = KmlLogger();
          if (os_log_type_enabled(v148, OS_LOG_TYPE_DEBUG))
          {
            v149 = *(a1 + 216);
            v150 = [v149 UTF8String];

            sub_100367248();
            sub_1003672A0();
            v197 = v150;
            _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEBUG, "%s : %i : %s : Pretending binding attestation was used", buf, 0x1Cu);
          }
        }

        else if (!*(a1 + 80))
        {
          v174 = 0;
          goto LABEL_87;
        }

        v175 = sub_100399BE8(KmlEndpointManager, *(a1 + 104));
        v176 = sub_1003DF2B8([KmlBindingAttestation alloc], *(a1 + 80));
        v177 = sub_1003BA3D0(v176);
        if (v177)
        {
          v178 = [*(a1 + 104) anonymizedDsid];
          *(a1 + 144) = [v178 isEqualToData:v177];
        }

        if (v175)
        {
          v174 = sub_10037E49C(*(a1 + 120));
        }

        else if (*(a1 + 144))
        {
          v174 = @"NON_OWNER_INTRA_ACCOUNT_IDS";
        }

        else
        {
          v174 = @"NON_OWNER_INTER_ACCOUNT_IDS";
        }

LABEL_87:
        v180 = [DACarKeyAdditionalCrossPlatformSharingData alloc];
        v181 = sub_1003AD0FC(*(a1 + 24));
        sub_1003C7D28(*(a1 + 24));
        v182 = [sub_100367544() initWithSharingSessionUUID:? bindingAttestation:? targetDeviceType:? initiatorIdsPseudonym:?];

        v183 = [[DACarKeySharingMessage alloc] initWithGenericCrossPlatformSharingData:WeakRetained additionalData:v182 privateData:0];
        v184 = +[KmlClientReporterFactory getReporter];
        v185 = sub_1003AF3D8(*(a1 + 24));
        sub_100367558(v185);

        v186 = objc_loadWeakRetained((a1 + 200));
        if (v186)
        {
          v187 = [[DAShareInitiatorResult alloc] initInviteAcceptedResultWithResponse:v183];
          v188 = objc_loadWeakRetained((a1 + 200));
          [v188 handleInitiatorMessageResult:v187];
        }

        v189 = KmlLogger();
        if (os_log_type_enabled(v189, OS_LOG_TYPE_INFO))
        {
          v190 = *(a1 + 216);
          v191 = [v190 UTF8String];

          sub_100367248();
          sub_1003672A0();
          v197 = v191;
          sub_100367454(&_mh_execute_header, v189, v192, "%s : %i : %s : We don't get send results for cross-platform. Sharing is successful from our perspective.", buf);
        }

        sub_1003B18E8(a1);
        break;
      case 13:
        v91 = KmlLogger();
        if (sub_100057AEC(v91))
        {
          v92 = *(a1 + 216);
          v7 = [v92 UTF8String];
          v93 = *(a1 + 160);

          sub_100367248();
          sub_100367278();
          v198 = 2112;
          v199 = v93;
          sub_1003672D0();
          _os_log_impl(v94, v95, v96, v97, v98, 0x26u);
        }

        WeakRetained = +[KmlClientReporterFactory getReporter];
        [WeakRetained sharingCompleteForInvitationIdentifier:*(a1 + 216) friendKeyIdentifier:*(a1 + 160) status:0];
        sub_1003ACF68(*(a1 + 24));
        objc_claimAutoreleasedReturnValue();
        v99 = sub_10036746C();
        sub_10037E34C(v99, v7);

        sub_1003CCFD8(*(a1 + 120), *(a1 + 216));
        v100 = objc_loadWeakRetained((a1 + 232));
        sub_100367478(v100);
        goto LABEL_82;
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
        return;
      case 21:
        v101 = KmlLogger();
        if (sub_100057AEC(v101))
        {
          v102 = *(a1 + 216);
          [v102 UTF8String];

          sub_100367248();
          sub_100367278();
          sub_1003672D0();
          _os_log_impl(v103, v104, v105, v106, v107, 0x1Cu);
        }

        KmlSignpostLogger();
        objc_claimAutoreleasedReturnValue();
        sub_100367344();
        if (!(!v18 & v17) && os_signpost_enabled(WeakRetained))
        {
          v108 = *(a1 + 128);
          *buf = 138412290;
          v196 = v108;
          sub_100367330();
          _os_signpost_emit_with_name_impl(v109, v110, v111, v112, v113, v114, v115, 0xCu);
        }

        [SESTapToRadar requestTapToRadarKML:@"Owner failed to send invitation" client:@"KMLSendInvitationError"];
        v116 = a1;
        goto LABEL_73;
      case 22:
        v131 = KmlLogger();
        if (sub_100057AEC(v131))
        {
          v132 = *(a1 + 216);
          [v132 UTF8String];

          sub_100367248();
          sub_100367278();
          sub_1003672D0();
          _os_log_impl(v133, v134, v135, v136, v137, 0x1Cu);
        }

        KmlSignpostLogger();
        objc_claimAutoreleasedReturnValue();
        sub_100367344();
        if (!(!v18 & v17) && os_signpost_enabled(WeakRetained))
        {
          *buf = 0;
          sub_100367330();
          _os_signpost_emit_with_name_impl(v138, v139, v140, v141, v142, v143, v144, 2u);
        }

        sub_1003B4268(a1);
        return;
      case 23:
        v117 = KmlLogger();
        if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          v118 = *(a1 + 216);
          v7 = [v118 UTF8String];

          sub_100367248();
          sub_100367278();
          _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_ERROR, "%s : %i : %s : Error while sharing key.", buf, 0x1Cu);
        }

        KmlSignpostLogger();
        objc_claimAutoreleasedReturnValue();
        sub_100367344();
        if (!(!v18 & v17) && os_signpost_enabled(v117))
        {
          v119 = *(a1 + 128);
          *buf = 138412290;
          v196 = v119;
          sub_100367330();
          _os_signpost_emit_with_name_impl(v120, v121, v122, v123, v124, v125, v126, 0xCu);
        }

        WeakRetained = +[KmlClientReporterFactory getReporter];
        [WeakRetained sharingCompleteForInvitationIdentifier:*(a1 + 216) friendKeyIdentifier:0 status:*(a1 + 128)];
        sub_1003ACF68(*(a1 + 24));
        objc_claimAutoreleasedReturnValue();
        v127 = sub_10036746C();
        sub_10037E34C(v127, v7);

        sub_1003CCFD8(*(a1 + 120), *(a1 + 216));
        v128 = objc_loadWeakRetained((a1 + 232));
        sub_100367478(v128);

        v129 = sub_1003DACE0(*(a1 + 24));
        v130 = *(a1 + 24);
        if (v129)
        {
          sub_1003ACF68(v130);
        }

        else
        {
          sub_1003BFE98(v130);
        }

        objc_claimAutoreleasedReturnValue();
        v179 = sub_10036746C();
        *(a1 + 144) = sub_10037E34C(v179, v7);
LABEL_82:

        sub_1003B3AD8(a1);
        goto LABEL_92;
      default:
        JUMPOUT(0);
    }

    goto LABEL_92;
  }

  if (a2 == 31)
  {
    v89 = KmlLogger();
    if (!sub_100057AEC(v89))
    {
      goto LABEL_92;
    }

    goto LABEL_18;
  }

  if (a2 == 3)
  {
    v67 = KmlLogger();
    if (sub_100057AEC(v67))
    {
      v69 = *(a1 + 216);
      [v69 UTF8String];

      sub_100367248();
      sub_100367278();
      sub_1003672D0();
      _os_log_impl(v70, v71, v72, v73, v74, 0x1Cu);
    }

    KmlSignpostLogger();
    objc_claimAutoreleasedReturnValue();
    sub_100367344();
    if (!(!v18 & v17) && os_signpost_enabled(WeakRetained))
    {
      *buf = 0;
      sub_100367330();
      _os_signpost_emit_with_name_impl(v75, v76, v77, v78, v79, v80, v81, 2u);
    }

    v82 = *(a1 + 120);
    v83 = *(a1 + 224);
    v84 = sub_1003C7D1C(*(a1 + 24));
    v85 = *(a1 + 216);
    v86 = sub_1003AD0FC(*(a1 + 24));
    v87 = sub_1003ACF68(*(a1 + 24));
    v88 = sub_1003C7D28(*(a1 + 24));
    sub_1003CD23C(v82, v83, v84, 0, v85, 0, v86, v87, v88, 1);

    return;
  }

  if (a2 != 2)
  {
    return;
  }

  v19 = *(a1 + 216);
  if (!v19)
  {
    v151 = KmlLogger();
    if (sub_100057AEC(v151))
    {
      v152 = *(a1 + 216);
      [v152 UTF8String];

      sub_100367248();
      sub_100367278();
      sub_1003672D0();
      _os_log_impl(v153, v154, v155, v156, v157, 0x1Cu);
    }

    v158 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v193 = NSLocalizedDescriptionKey;
    v159 = [NSString stringWithUTF8String:KmlErrorString()];
    v194 = v159;
    [NSDictionary dictionaryWithObjects:&v194 forKeys:&v193 count:1];
    objc_claimAutoreleasedReturnValue();
    v160 = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
    sub_100367578(v160);

    v116 = a1;
    goto LABEL_73;
  }

  sub_1003CCDC4(*(a1 + 120), a1, v19);
  v20 = sub_1003DACE0(*(a1 + 24));
  v21 = KmlLogger();
  v22 = sub_100057AEC(v21);
  if (!v20)
  {
    if (v22)
    {
      v161 = *(a1 + 216);
      [v161 UTF8String];

      sub_100367248();
      sub_100367278();
      sub_1003672D0();
      _os_log_impl(v162, v163, v164, v165, v166, 0x1Cu);
    }

    v167 = KmlLogger();
    if (sub_100057AEC(v167))
    {
      v168 = *(a1 + 216);
      [v168 UTF8String];

      sub_100367248();
      sub_100367278();
      sub_1003672D0();
      _os_log_impl(v169, v170, v171, v172, v173, 0x1Cu);
    }

    v116 = a1;
LABEL_73:
    sub_1003B18E8(v116);
    return;
  }

  if (v22)
  {
    v23 = *(a1 + 216);
    [v23 UTF8String];

    sub_100367248();
    sub_100367278();
    sub_1003672D0();
    _os_log_impl(v24, v25, v26, v27, v28, 0x1Cu);
  }

  sub_1003CD1B8(*(a1 + 120), *(a1 + 216));
}

void sub_1003B3AD8(uint64_t a1)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 232));
    v56 = [WeakRetained getTotalNumberOfSharedKeys];

    v3 = +[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 192) agreedKmlSharingVersion], 768);
    v59 = [*(a1 + 104) readerInfo];
    v4 = [[KmlRoutingInformation alloc] initWithReaderInformation:v59];
    v5 = [*(a1 + 168) readerSupportsNfc];
    if ([*(a1 + 168) readerSupportsUwb])
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_1003C75EC(*(a1 + 24));
    v8 = v7 != 0;

    v9 = 2 * v8;
    v10 = *(a1 + 24);
    if (v3)
    {
      if (sub_1003DACD4(v10) == 2)
      {
        v11 = v9 | 4;
      }

      else
      {
        v11 = v9;
      }

      v12 = sub_1003DACD4(*(a1 + 24));
      v13 = v11 | 8;
      if (v12 != 1)
      {
        v13 = v11;
      }
    }

    else
    {
      v13 = v9 | sub_1003DAC98(v10);
    }

    v53 = v13;
    v14 = *(a1 + 120);
    v15 = sub_1003ACF68(*(a1 + 24));
    LODWORD(v14) = sub_10037E34C(v14, v15);

    if (v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v4)
    {
      v17 = [v4 manufacturer];
      v62 = [v17 copy];

      v18 = [v4 brand];
      v61 = [v18 copy];

      v19 = [v4 regionString];
      v60 = [v19 copy];
    }

    else
    {
      v20 = KmlLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v66 = "[KmlOwnerSharingSession reportSharingEventToCA]";
        v67 = 1024;
        v68 = 1202;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s : %i : No routing info available", buf, 0x12u);
      }

      v60 = @"Unknown";
      v61 = @"Unknown";
      v62 = @"Unknown";
    }

    v21 = v5;
    v22 = *(a1 + 128);
    if (v22)
    {
      v23 = *(a1 + 16);
      v24 = [v22 code];
    }

    else
    {
      v24 = 0;
      v23 = *(a1 + 8);
    }

    v58 = v4;
    v25 = sub_1003BA3F8(*(a1 + 24));
    if (!v25)
    {
      if (sub_1003DACD4(*(a1 + 24)) == 2)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }
    }

    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 192) agreedKmlVehicleVersion], 768))
    {
      v26 = 0x80;
    }

    else
    {
      v26 = 0;
    }

    v27 = [*(a1 + 104) configuration];
    [v27 opt2];
    v50 = kmlUtilKeyClassOriginBitmap();

    v28 = [*(a1 + 192) ourSupportedFrameworkVersionsAsCAString];
    v63[0] = @"destination";
    v55 = [NSNumber numberWithUnsignedInt:v16];
    v64[0] = v55;
    v64[1] = &off_1004DCB28;
    v63[1] = @"type";
    v63[2] = @"targetDeviceType";
    v52 = [NSNumber numberWithInteger:sub_1003C7D28(*(a1 + 24))];
    v64[2] = v52;
    v63[3] = @"step";
    v51 = [NSNumber numberWithInteger:v23];
    v64[3] = v51;
    v64[4] = v60;
    v63[4] = @"dataCenterCode";
    v63[5] = @"manufacturer";
    v64[5] = v62;
    v64[6] = v61;
    v63[6] = @"brand";
    v63[7] = @"transportSupported";
    v49 = [NSNumber numberWithUnsignedInteger:v6 | v21];
    v64[7] = v49;
    v63[8] = @"totalSharedKeysForOwnerKey";
    v57 = [NSNumber numberWithInteger:v56];
    v64[8] = v57;
    v63[9] = @"status";
    v48 = [NSNumber numberWithUnsignedInt:v24];
    v64[9] = v48;
    v63[10] = @"inviteCancelReason";
    v29 = *(a1 + 136);
    if (v29)
    {
      v30 = [v29 code];
    }

    else
    {
      v30 = 0;
    }

    v47 = [NSNumber numberWithInteger:v30];
    v64[10] = v47;
    v63[11] = @"activationOption";
    v54 = [NSNumber numberWithUnsignedInteger:v53];
    v64[11] = v54;
    v63[12] = @"sharingTransport";
    v46 = [NSNumber numberWithInteger:v25];
    v64[12] = v46;
    v63[13] = @"pinAttempts";
    v31 = sub_1003DACB0(*(a1 + 24));
    v45 = [NSNumber numberWithUnsignedInteger:v31 - sub_1003C22E0(*(a1 + 24))];
    v64[13] = v45;
    v63[14] = @"appleToApple";
    v32 = [NSNumber numberWithInt:*(a1 + 80) != 0];
    v43 = v32;
    v33 = &stru_1004D9380;
    if (v28)
    {
      v33 = v28;
    }

    v64[14] = v32;
    v64[15] = v33;
    v63[15] = @"senderSupportedFrameworkVersions";
    v63[16] = @"receiverSupportedFrameworkVersions";
    v34 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%04X", [*(a1 + 192) agreedKmlSharingVersion]);
    v64[16] = v34;
    v63[17] = @"attestationChainLength";
    v35 = [NSNumber numberWithUnsignedChar:*(a1 + 97)];
    v64[17] = v35;
    v63[18] = @"certificateChainLength";
    sub_1003DAC8C(*(a1 + 24));
    [sub_100367538() numberWithUnsignedChar:?];
    v36 = v44 = v28;
    v64[18] = v36;
    v63[19] = @"accountRole";
    v37 = [NSNumber numberWithUnsignedInteger:sub_1003BA3D0(*(a1 + 24))];
    v64[19] = v37;
    v63[20] = @"isIntraAccountShare";
    v38 = [NSNumber numberWithBool:*(a1 + 144)];
    v64[20] = v38;
    v64[21] = &off_1004DCB40;
    v63[21] = @"wasUserAuthRequired";
    v63[22] = @"mailboxVersion";
    v39 = [NSNumber numberWithUnsignedChar:v26];
    v64[22] = v39;
    v63[23] = @"frameworkVersion";
    v40 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [*(a1 + 192) agreedKmlSharingVersion]);
    v64[23] = v40;
    v64[24] = &off_1004DCB58;
    v63[24] = @"accessProfile";
    v63[25] = @"keyClassOriginBitmap";
    v41 = [NSNumber numberWithUnsignedChar:v50];
    v64[25] = v41;
    v42 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:26];

    sub_100368DC8(KmlAnalyticsLogger, v42);
  }
}

void sub_1003B4268(uint64_t a1)
{
  if (a1)
  {
    sub_1003673A0();
    v4 = 3221225472;
    v5 = sub_1003676B8;
    v6 = &unk_1004C08D8;
    v7 = v1;
    dispatch_async(v2, block);
  }
}

void sub_1003B42C8(uint64_t a1)
{
  if (a1)
  {
    sub_1003673A0();
    v4 = 3221225472;
    v5 = sub_100366EA8;
    v6 = &unk_1004C08D8;
    v7 = v1;
    dispatch_async(v2, block);
  }
}

id *sub_1003B4328(id *a1)
{
  v2 = a1;
  if (a1)
  {
    v3 = [KmlDeviceConfigurationData alloc];
    [v2[13] deviceConfiguration];
    objc_claimAutoreleasedReturnValue();
    v4 = [sub_100367434() initWithData:?];

    [v2[13] bleIntroKey];
    objc_claimAutoreleasedReturnValue();
    [sub_100367434() setDeviceBtIntroKey:?];

    v5 = [v4 readerBtIdAddress];

    if (!v5)
    {
      [v2[13] bleAddress];
      objc_claimAutoreleasedReturnValue();
      [sub_100367434() setReaderBtIdAddress:?];
    }

    v6 = sub_1003B85A0(v2[3]);
    v7 = kmlUtilGetDckIdFromSlotId();

    v8 = [v2[13] bleOOBMasterKey];
    v9 = kmlUtilGetOOBKey();
    [v4 setDeviceBtOOBKey:v9];

    if (v2[1] == 1)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v2 = [v4 supportedRadiosAsDataForTarget:v10];
  }

  return v2;
}

void sub_1003B4460(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v4 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  if (([*(a1 + 168) isFriendImmoTokenOrSlotOnline] & 1) == 0)
  {
    v1 = KmlTlv;
    sub_1003B85A0(*(a1 + 24));
    objc_claimAutoreleasedReturnValue();
    [sub_1003674FC() TLVWithTag:4 value:v2];
    objc_claimAutoreleasedReturnValue();
    [sub_10036746C() addObject:KmlTlv];
  }

  v41 = 0;
  [KmlTlv TLVWithTag:215 unsignedChar:0];
  objc_claimAutoreleasedReturnValue();
  [sub_1003674F0() addObject:v1];

  if (sub_1003DAC98(*(a1 + 24)) && [*(a1 + 168) sharingPasswordRequired])
  {
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v2 = *(a1 + 216);
      v7 = [v2 UTF8String];

      v44 = 136315650;
      v45 = "[KmlOwnerSharingSession saveEntitlements]";
      sub_1003674B0();
      v46 = 1040;
      sub_100367520();
      v47 = v7;
      sub_100367454(&_mh_execute_header, v6, v8, "%s : %i : %s : activation option is required", &v44);
    }

    v41 = 1;
    v9 = sub_1003C75E0(*(a1 + 24));
    if (![v9 length])
    {
      goto LABEL_15;
    }

    v2 = sub_1003C75D4(*(a1 + 24));
    if (![v2 length])
    {
LABEL_14:

LABEL_15:
      goto LABEL_16;
    }

    v10 = [*(a1 + 168) sharingPasswordLength];

    if (v10)
    {
      v11 = KmlLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 216);
        v13 = [v12 UTF8String];

        v44 = 136315650;
        v45 = "[KmlOwnerSharingSession saveEntitlements]";
        sub_1003674B0();
        v46 = 1043;
        sub_100367520();
        v47 = v13;
        sub_100367454(&_mh_execute_header, v11, v14, "%s : %i : %s : VEP can be an activation option for v1 shares", &v44);
      }

      v9 = sub_1003C75E0(*(a1 + 24));
      v2 = [KmlTlv TLVWithTag:4 value:v9];
      [v4 addObject:v2];
      goto LABEL_14;
    }
  }

LABEL_16:
  [NSData dataWithBytes:&v41 length:1];
  objc_claimAutoreleasedReturnValue();
  [sub_1003674FC() TLVWithTag:1 value:v2];
  objc_claimAutoreleasedReturnValue();
  [sub_10036746C() addObject:KmlTlv];

  if ([*(a1 + 168) isFriendImmoTokenOrSlotOnline])
  {
    [*(a1 + 104) readerIdentifier];
    objc_claimAutoreleasedReturnValue();
    [sub_1003674FC() TLVWithTag:4 value:v2];
    objc_claimAutoreleasedReturnValue();
    [sub_10036746C() addObject:KmlTlv];

    [*(a1 + 104) readerIdentifier];
    objc_claimAutoreleasedReturnValue();
    [sub_1003674FC() TLVWithTag:77 value:v2];
    objc_claimAutoreleasedReturnValue();
    [sub_1003674F0() addObject:KmlTlv];
  }

  [*(a1 + 104) slotIdentifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1003674FC() TLVWithTag:130 value:v2];
  objc_claimAutoreleasedReturnValue();
  [sub_1003674F0() addObject:KmlTlv];

  v15 = +[NSMutableData data];
  [v15 appendData:*(a1 + 56)];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = v4;
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v37 + 1) + 8 * i) asData];
        [v15 appendData:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v18);
  }

  v22 = [KmlTlv TLVWithTag:48 value:v15];
  v23 = [v22 asData];
  v24 = *(a1 + 48);
  *(a1 + 48) = v23;

  v25 = +[NSMutableData data];
  [v25 appendData:*(a1 + 72)];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v5;
  v27 = [v26 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v33 + 1) + 8 * j) asData];
        [v25 appendData:v31];
      }

      v28 = [v26 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v28);
  }

  v32 = *(a1 + 64);
  *(a1 + 64) = v25;
}

void sub_1003B49C8(uint64_t a1)
{
  if (a1)
  {
    v4 = KmlLogger();
    if (sub_100057AEC(v4))
    {
      v5 = *(a1 + 216);
      [v5 UTF8String];
      v2 = sub_1003ACF68(*(a1 + 32));
      v6 = kmlUtilHexStringFromData();
      sub_100367364();
      sub_10036725C();
      v123 = v7;
      sub_100367300();
      _os_log_impl(v8, v9, v10, v11, v12, 0x26u);
    }

    v13 = KmlVersions;
    [*(a1 + 192) agreedKmlSharingVersion];
    if ([sub_100367538() doesVersion:? support:?])
    {
      sub_1003B528C(a1);
      v14 = KmlLogger();
      if (sub_100057AEC(v14))
      {
        v15 = *(a1 + 216);
        [v15 UTF8String];
        v2 = kmlUtilHexStringFromData();
        sub_100367364();
        sub_10036725C();
        v123 = v16;
        sub_100367300();
        _os_log_impl(v17, v18, v19, v20, v21, 0x26u);
      }

      v22 = 64;
    }

    else
    {
      v13 = KmlLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v23 = *(a1 + 216);
        [v23 UTF8String];
        v2 = kmlUtilHexStringFromData();
        sub_100367364();
        sub_10036725C();
        v123 = v24;
        sub_100367300();
        _os_log_impl(v25, v26, v27, v28, v29, 0x26u);
      }

      v22 = 48;
    }

    v113 = *(a1 + v22);
    if ((*(a1 + 96) & 1) != 0 || (sub_1003C7D34(*(a1 + 24)), v30 = objc_claimAutoreleasedReturnValue(), v30, v30))
    {
      v34 = [*(a1 + 104) publicKeyIdentifier];
      v35 = kmlUtilHexStringFromData();

      v36 = sub_1003AD0FC(*(a1 + 24));
      v112 = kmlUtilUUIDToData();

      v111 = v35;
      if (*(a1 + 96) == 1)
      {
        v37 = KmlLogger();
        if (sub_100057AEC(v37))
        {
          v38 = *(a1 + 216);
          v39 = [v38 UTF8String];

          sub_100367364();
          v120 = 847;
          v121 = 2080;
          v122 = v39;
          sub_100367300();
          _os_log_impl(v40, v41, v42, v43, v44, 0x1Cu);
        }

        v45 = SESEndpointPreAuthorizeWithSession();
      }

      else
      {
        v45 = 0;
      }

      v110 = sub_1003AAA6C(*(a1 + 32));
      v108 = [v110 value];
      v109 = sub_1003AAA78(*(a1 + 32));
      v46 = [v109 value];
      v47 = sub_1003AD0FC(*(a1 + 32));
      v48 = [v47 value];
      v49 = sub_1003ACF68(*(a1 + 32));
      v50 = *(a1 + 80);
      v51 = sub_1003DAC74(*(a1 + 24));
      v52 = sub_1003B9198(*(a1 + 24));
      sub_1003C7D34(*(a1 + 24));
      v107 = v114 = v45;
      WORD1(v106) = v52;
      LOWORD(v106) = v51;
      v105 = v50;
      v53 = v111;
      v54 = SESEndPointAuthorizeWithSession();
      v55 = v45;
      v56 = v45;
      v57 = v55;

      v58 = *(a1 + 112);
      *(a1 + 112) = v54;

      v59 = v57;
      if (v57)
      {
        v87 = KmlLogger();
        if (sub_100057AEC(v87))
        {
          v88 = *(a1 + 216);
          v46 = [v88 UTF8String];

          v117 = 136315906;
          v118 = "[KmlOwnerSharingSession signTheRequest]";
          v119 = 1024;
          sub_10036725C();
          v123 = v57;
          sub_100367300();
          _os_log_impl(v89, v90, v91, v92, v93, 0x26u);
        }

        v94 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        [v57 userInfo];
        objc_claimAutoreleasedReturnValue();
        v95 = [sub_1003674F0() errorWithDomain:v94 code:204 userInfo:v46];
        sub_100367578(v95);

        sub_1003B18E8(a1);
      }

      else
      {
        v60 = [NSData alloc];
        [*(a1 + 104) mailboxMapping];
        objc_claimAutoreleasedReturnValue();
        v61 = [sub_100367434() initWithData:?];

        v62 = KmlLogger();
        if (sub_100057AEC(v62))
        {
          v63 = *(a1 + 216);
          v46 = [v63 UTF8String];
          v64 = kmlUtilHexStringFromData();
          sub_1003673E4();
          sub_10036725C();
          v123 = v65;
          sub_100367300();
          _os_log_impl(v66, v67, v68, v69, v70, 0x26u);
        }

        v71 = sub_1003B4328(a1);
        v72 = KmlLogger();
        if (sub_100057AEC(v72))
        {
          v73 = *(a1 + 216);
          v46 = [v73 UTF8String];
          v74 = kmlUtilHexStringFromData();
          sub_1003673E4();
          sub_10036725C();
          v123 = v75;
          sub_100367300();
          _os_log_impl(v76, v77, v78, v79, v80, 0x26u);
        }

        v81 = sub_1003B55A0(a1);
        kmlUtilLogLargeData();
        v82 = objc_alloc_init(SharingSignedResponse);
        sub_1003BA3E8(v82, *(a1 + 192));
        v83 = *(a1 + 112);
        v84 = sub_1003DACBC(*(a1 + 24));
        v85 = sub_1003B91A4(&v82->super.isa, v83, v61, v71, v84, v81);
        v86 = *(a1 + 40);
        *(a1 + 40) = v85;

        v59 = sub_1003B5C88(a1);
        if (v59)
        {
          v96 = KmlLogger();
          if (sub_100057AEC(v96))
          {
            v97 = *(a1 + 216);
            v46 = [v97 UTF8String];

            sub_1003673E4();
            sub_10036725C();
            v123 = v59;
            sub_100367300();
            _os_log_impl(v98, v99, v100, v101, v102, 0x26u);
          }

          v103 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          [v59 userInfo];
          objc_claimAutoreleasedReturnValue();
          v104 = [sub_1003674F0() errorWithDomain:v103 code:204 userInfo:v46];
          sub_100367578(v104);
        }

        sub_1003B18E8(a1);

        v53 = v111;
      }
    }

    else
    {
      v31 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v115[0] = NSLocalizedDescriptionKey;
      v32 = [NSString stringWithUTF8String:KmlErrorString()];
      v115[1] = NSLocalizedFailureReasonErrorKey;
      v116[0] = v32;
      v116[1] = @"Missing user auth";
      [NSDictionary dictionaryWithObjects:v116 forKeys:v115 count:2];
      objc_claimAutoreleasedReturnValue();
      v33 = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
      sub_100367578(v33);

      sub_1003B18E8(a1);
    }
  }
}

void sub_1003B528C(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  location = (a1 + 64);
  v2 = [KmlTlv TLVsWithData:*(a1 + 64)];
  v3 = +[NSMutableData data];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = v5;
  v7 = *v27;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v27 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v26 + 1) + 8 * i);
      if ([v9 tag] != 215)
      {
        v17 = [v9 asData];
        [v3 appendData:v17];
        goto LABEL_21;
      }

      v10 = sub_1003DACD4(*(a1 + 24));
      switch(v10)
      {
        case 2:
          v19 = KmlLogger();
          if (sub_100367508(v19))
          {
            *v30 = 136315394;
            sub_100367444();
            v12 = sub_100367378();
            v16 = "%s : %i : OSP required for this share";
LABEL_18:
            _os_log_impl(v12, v13, v14, v16, v15, 0x12u);
          }

LABEL_19:

          break;
        case 1:
          v18 = KmlLogger();
          if (sub_100367508(v18))
          {
            *v30 = 136315394;
            sub_100367444();
            v12 = sub_100367378();
            v16 = "%s : %i : Bring other key required for this share";
            goto LABEL_18;
          }

          goto LABEL_19;
        case 0:
          v11 = KmlLogger();
          if (sub_100367508(v11))
          {
            *v30 = 136315394;
            sub_100367444();
            v12 = sub_100367378();
            v16 = "%s : %i : No second factor required for this share";
            goto LABEL_18;
          }

          goto LABEL_19;
      }

      v17 = [KmlTlv TLVWithTag:215 unsignedChar:sub_1003DACD4(*(a1 + 24))];
      v20 = [v17 asData];
      [v3 appendData:v20];

LABEL_21:
    }

    v6 = [v4 countByEnumeratingWithState:&v26 objects:v32 count:16];
  }

  while (v6);
LABEL_23:

  objc_storeStrong(location, v3);
  v21 = KmlLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = kmlUtilHexStringFromData();
    *v30 = 136315650;
    sub_100367444();
    *&v30[7] = 1102;
    v30[9] = 2112;
    v31 = v23;
    sub_100367454(&_mh_execute_header, v21, v24, "%s : %i : Rebuilt V3 Entitlements: %@", v30);
  }
}

id sub_1003B55A0(uint64_t a1)
{
  if (!a1 || !+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 192) agreedKmlSharingVersion], 768))
  {
    v22 = 0;
    goto LABEL_16;
  }

  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 216);
    v4 = [v3 UTF8String];

    v77 = 136315650;
    v78 = "[KmlOwnerSharingSession getAttestationPackageList]";
    sub_1003674B0();
    v80 = 937;
    sub_100367520();
    v82 = v4;
    sub_100367454(&_mh_execute_header, v2, v5, "%s : %i : %s : Let's check for additional attestation packages to send", &v77);
  }

  v6 = [KmlMailboxMappingData alloc];
  v7 = [*(a1 + 104) mailboxMapping];
  v8 = [v6 initWithData:v7 preferredVersion:{objc_msgSend(*(a1 + 192), "agreedKmlSharingVersion")}];

  [v8 mailboxEndOffset];
  [v8 signalingBitmapOffset];
  v9 = [*(a1 + 104) publicKeyIdentifier];
  v10 = kmlUtilHexStringFromData();

  [v8 signalingBitmapOffset];
  v75 = 0;
  v11 = SESEndPointGetPrivateData();
  v12 = 0;
  if (v12)
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 216);
      v15 = [v14 UTF8String];

      v77 = 136315906;
      v78 = "[KmlOwnerSharingSession getAttestationPackageList]";
      sub_1003674B0();
      v80 = 950;
      sub_100367520();
      v82 = v15;
      v83 = 2112;
      *v84 = v12;
      sub_10036752C();
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 38;
LABEL_13:
      _os_log_impl(v16, v17, v20, v18, v19, v21);
    }
  }

  else
  {
    kmlUtilLogLargeData();
    v23 = *[v11 bytes];
    if ([v8 isKeyAttestationSetByDeviceInSignalingBitmap:v23] && objc_msgSend(*(a1 + 168), "maxOfflineAttestationCount") > 1)
    {
      v29 = [*(a1 + 168) maxOfflineAttestationCount];
      v30 = [v8 attestationPackageLength] * v29;
      v31 = [v8 mailboxEndOffset];
      if ((v31 - [v8 keyAttestationStartOffset]) >= v30)
      {
        v64 = v10;
        *(a1 + 97) = 0;
        v22 = +[NSMutableData data];
        v39 = [v8 keyAttestationStartOffset];
        v40 = [v8 signalingBitmapOffset];
        v65 = v8;
        v68 = [v8 attestationPackageLength];
        if ([*(a1 + 168) maxOfflineAttestationCount] >= 2)
        {
          v41 = 0;
          v67 = v39 - v40;
          v66 = v11;
          while (1)
          {
            v42 = [v11 subdataWithRange:{(v67 + v41 * v68), v68}];
            v43 = [KmlTlv TLVsWithData:v42];
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            v44 = v43;
            v45 = [v44 countByEnumeratingWithState:&v71 objects:v76 count:16];
            if (!v45)
            {
              break;
            }

            v46 = v45;
            v69 = v42;
            v47 = 0;
            v48 = *v72;
            v70 = v41;
            v49 = v41 + 48;
            do
            {
              for (i = 0; i != v46; i = i + 1)
              {
                if (*v72 != v48)
                {
                  objc_enumerationMutation(v44);
                }

                v51 = *(*(&v71 + 1) + 8 * i);
                if ([v51 tag] == 32565)
                {
                  v52 = [v51 asData];
                  v53 = [KmlTlv TLVWithTag:v49 value:v52];

                  v54 = [v53 asData];
                  [v22 appendData:v54];

                  ++*(a1 + 97);
                  v47 = 1;
                }
              }

              v46 = [v44 countByEnumeratingWithState:&v71 objects:v76 count:16];
            }

            while (v46);

            v11 = v66;
            if (v47)
            {
              v41 = v70 + 1;
              if (([*(a1 + 168) maxOfflineAttestationCount] - 1) > (v70 + 1))
              {
                continue;
              }
            }

            goto LABEL_38;
          }
        }

LABEL_38:
        v13 = KmlLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v55 = *(a1 + 216);
          v56 = [v55 UTF8String];
          v57 = *(a1 + 97);

          v77 = 136315906;
          v78 = "[KmlOwnerSharingSession getAttestationPackageList]";
          sub_1003674B0();
          *(v58 + 14) = 996;
          v81 = 2080;
          *(v58 + 20) = v56;
          v83 = v59;
          *(v58 + 30) = v57;
          sub_10036752C();
          _os_log_impl(v60, v61, OS_LOG_TYPE_INFO, v62, v63, 0x22u);
        }

        v10 = v64;
        v8 = v65;
      }

      else
      {
        v13 = KmlLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v32 = *(a1 + 216);
          v33 = [v32 UTF8String];

          LODWORD(v32) = [v8 mailboxEndOffset];
          v34 = [v8 keyAttestationStartOffset];
          v77 = 136316162;
          v78 = "[KmlOwnerSharingSession getAttestationPackageList]";
          v79 = 1024;
          v80 = 964;
          v81 = 2080;
          v82 = v33;
          v83 = 1024;
          *v84 = v30;
          *&v84[4] = 1024;
          *&v84[6] = v32 - v34;
          sub_10036752C();
          _os_log_impl(v35, v36, OS_LOG_TYPE_ERROR, v37, v38, 0x28u);
        }

        v22 = 0;
      }

      v12 = 0;
      goto LABEL_15;
    }

    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 216);
      v25 = [v24 UTF8String];
      v26 = [*(a1 + 168) maxOfflineAttestationCount];

      v77 = 136316162;
      v78 = "[KmlOwnerSharingSession getAttestationPackageList]";
      sub_1003674B0();
      v80 = 958;
      v81 = 2080;
      v82 = v25;
      v83 = v27;
      *v84 = v23;
      *&v84[4] = v27;
      *&v84[6] = v26;
      sub_10036752C();
      v20 = OS_LOG_TYPE_INFO;
      v21 = 40;
      goto LABEL_13;
    }
  }

  v22 = 0;
LABEL_15:

LABEL_16:

  return v22;
}

id *sub_1003B5C88(id *a1)
{
  v3 = a1;
  if (a1)
  {
    if ([a1[21] isFriendImmoTokenOrSlotOnline])
    {
      v4 = KmlLogger();
      if (sub_100057AEC(v4))
      {
        v5 = v3[27];
        [v5 UTF8String];

        v19[0] = 136315650;
        sub_1003672C0();
        sub_10036728C();
        sub_100367358();
        _os_log_impl(v6, v7, v8, v9, v10, 0x1Cu);
      }

      v3 = 0;
LABEL_10:

      goto LABEL_11;
    }

    v11 = sub_100388B10(KmlSharingManager);
    v12 = v3[13];
    sub_1003DAC80(v3[3]);
    v13 = sub_100367538();
    v15 = sub_100388EEC(v13, v12, v14);

    if (v15)
    {
      v16 = KmlLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = v3[27];
        v2 = [v17 UTF8String];

        v19[0] = 136315906;
        sub_1003672C0();
        sub_1003672B0();
        sub_100367418();
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s : %i : %s : Error while setting signaling bitmap %@", v19, 0x26u);
      }

      v1 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      [v15 userInfo];
      objc_claimAutoreleasedReturnValue();
      v3 = [sub_10036746C() errorWithDomain:v1 code:204 userInfo:v2];

      goto LABEL_10;
    }

    v3 = 0;
  }

LABEL_11:

  return v3;
}

id *sub_1003B5E9C(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 25, a2);
  }

  return result;
}

id *sub_1003B5EAC(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 26, a2);
  }

  return result;
}

uint64_t sub_1003B5EBC(uint64_t result)
{
  if (result)
  {
    return *(result + 224);
  }

  return result;
}

void sub_1003B5EC8(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 8);
  }
}

id *sub_1003B5EDC(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = KmlKeyDataTransmitter;
    v14 = objc_msgSendSuper2(&v18, "init");
    a1 = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
      objc_storeStrong(a1 + 4, a5);
      v15 = +[NSMutableData data];
      v16 = a1[5];
      a1[5] = v15;

      *(a1 + 12) = 0;
    }
  }

  return a1;
}

id sub_1003B5FE0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (![*(a1 + 40) length])
  {
    v11 = sub_1003C8F2C(v6);
    v12 = KmlLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v56 = "[KmlKeyDataTransmitter handleGetDataCommand:error:]";
      v57 = 1024;
      v58 = 65;
      v59 = 1024;
      LODWORD(v60) = v11;
      sub_10036BEE4();
      _os_log_impl(v13, v14, v15, v16, v17, 0x18u);
    }

    v18 = KmlLogger();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v11 == 211)
    {
      if (v19)
      {
        sub_10036BED0();
        v58 = 80;
        sub_10036BEE4();
        _os_log_impl(v34, v35, v36, v37, v38, 0x12u);
      }

      v39 = *(a1 + 40);
      v40 = [*(a1 + 32) dataUsingEncoding:4];
      v41 = [KmlTlv TLVWithTag:211 value:v40];
      v42 = [v41 asData];
      [v39 appendData:v42];
    }

    else
    {
      switch(v11)
      {
        case 32548:
          if (v19)
          {
            sub_10036BED0();
            v58 = 76;
            sub_10036BEE4();
            _os_log_impl(v43, v44, v45, v46, v47, 0x12u);
          }

          v32 = *(a1 + 40);
          v33 = *(a1 + 24);
          break;
        case 32546:
          if (v19)
          {
            sub_10036BED0();
            v58 = 72;
            sub_10036BEE4();
            _os_log_impl(v27, v28, v29, v30, v31, 0x12u);
          }

          v32 = *(a1 + 40);
          v33 = *(a1 + 16);
          break;
        case 32544:
          if (v19)
          {
            sub_10036BED0();
            v58 = 68;
            sub_10036BEE4();
            _os_log_impl(v48, v49, v50, v51, v52, 0x12u);
          }

          v32 = *(a1 + 40);
          v33 = *(a1 + 8);
          break;
        default:
          if (v19)
          {
            sub_10036BED0();
            v58 = 84;
            sub_10036BEE4();
            _os_log_impl(v20, v21, v22, v23, v24, 0x12u);
          }

          v25 = sub_10037814C(KmlApduResponse, 34922, 0);
          goto LABEL_16;
      }

      [v32 appendData:v33];
    }

    v25 = sub_1003B6460(a1);
LABEL_16:
    a1 = v25;
    goto LABEL_17;
  }

  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = sub_1003C8DD8(v6);
    *buf = 136315650;
    v56 = "[KmlKeyDataTransmitter handleGetDataCommand:error:]";
    v57 = 1024;
    v58 = 55;
    v59 = 2112;
    v60 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : KeyDataTransmitter: Received GET_DATA (%@) while we are expecting GET_RESPONSE", buf, 0x1Cu);
  }

  a1 = sub_10037814C(KmlApduResponse, 34153, 0);
  if (a3)
  {
    v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v10 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v54 = v10;
    [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    objc_claimAutoreleasedReturnValue();
    *a3 = [sub_10036BEF4() errorWithDomain:? code:? userInfo:?];
  }

LABEL_17:

  return a1;
}

id *sub_1003B6460(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = 239 * *(a1 + 12);
    if ([a1[5] length] <= v2)
    {
      v1 = sub_10037814C(KmlApduResponse, 144, 0);
    }

    else
    {
      v3 = 239 * *(v1 + 12) + 239;
      v4 = [v1[5] length];
      v5 = v1[5];
      if (v4 <= v3)
      {
        [v5 length];
        v11 = [v1[5] subdataWithRange:?];
        v7 = [v11 copy];

        [v1[5] setLength:0];
        *(v1 + 12) = 0;
        v10 = 144;
      }

      else
      {
        v6 = [v5 subdataWithRange:{239 * *(v1 + 12), 239}];
        v7 = [v6 copy];

        v8 = *(v1 + 12);
        *(v1 + 12) = v8 + 1;
        v9 = 24832;
        if ([v1[5] length] < 239 * v8 + 478)
        {
          v9 = (17 * *(v1 + 48) + [v1[5] length]) | 0x6100;
        }

        v10 = __rev16(v9);
      }

      v1 = sub_1003781BC(KmlApduResponse, v10, v7);
    }
  }

  return v1;
}

id *sub_1003B65D4(id *a1, void *a2, void *a3)
{
  v6 = a2;
  if (a1)
  {
    if ([a1[5] length])
    {
      a1 = sub_1003B6460(a1);
    }

    else
    {
      v7 = KmlLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        sub_10036BED0();
        v18 = 96;
        sub_10036BEE4();
        _os_log_impl(v8, v9, v10, v11, v12, 0x12u);
      }

      a1 = sub_10037814C(KmlApduResponse, 34153, 0);
      if (a3)
      {
        v13 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v14 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
        v17 = v14;
        [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
        objc_claimAutoreleasedReturnValue();
        *a3 = [sub_10036BEF4() errorWithDomain:? code:? userInfo:?];
      }
    }
  }

  return a1;
}

id *sub_1003B6790(id *a1, void *a2, void *a3, NSObject *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = KmlDataExchangeManager;
    a1 = objc_msgSendSuper2(&v26, "init");
    if (a1)
    {
      v12 = KmlLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        sub_10036DC9C();
        v28 = 95;
        sub_10036DC0C(&_mh_execute_header, v12, v13, "%s : %i : let's init", v27);
      }

      a1[1] = 0;
      a1[2] = 0;
      if (v10)
      {
        v14 = [v10 copy];
      }

      else
      {
        v14 = 0;
      }

      v15 = a1[4];
      a1[4] = v14;

      a1[5] = 0;
      objc_storeWeak(a1 + 14, v9);
      v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v17 = dispatch_queue_create("com.apple.sesd.kml.dxmanager", v16);
      v18 = a1[8];
      a1[8] = v17;

      v19 = sub_1003D8E40([KmlSecureChannel alloc], 0);
      v20 = a1[3];
      a1[3] = v19;

      objc_storeStrong(a1 + 10, a5);
      v21 = sub_1003C9114([KmlCommandHandler alloc], a1[3], a1[4], a4, a1[10]);
      v22 = a1[9];
      a1[9] = v21;

      a1[18] = a4;
      *(a1 + 96) = -1;
      a1[13] = 0xFFFF;
      v23 = KmlLogger();
      if (sub_10036DC64(v23))
      {
        sub_10036DC9C();
        v28 = 115;
        sub_10036DC0C(&_mh_execute_header, a4, v24, "%s : %i : ready to roll", v27);
      }
    }
  }

  return a1;
}

void sub_1003B69C4(uint64_t a1)
{
  if (a1)
  {
    sub_1003673C4();
    v4[1] = 3221225472;
    v4[2] = sub_10036BF20;
    v4[3] = &unk_1004C2B00;
    v4[4] = v1;
    v4[5] = v2;
    dispatch_async(v3, v4);
  }
}

void sub_1003B6A28(uint64_t a1, id WeakRetained)
{
  if (a1)
  {
    v5 = KmlLogger();
    if (sub_10036DCF8(v5))
    {
      sub_10036DBDC();
      v112 = 136;
      v113 = 2048;
      v114 = v6;
      v115 = 2048;
      v116 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Current state %ld, new state %ld", buf, 0x26u);
    }

    v7 = *(a1 + 8);
    *(a1 + 8) = WeakRetained;
    *(a1 + 16) = v7;
    switch(WeakRetained)
    {
      case 1uLL:
        v8 = *(a1 + 144);
        if (v8 >= 2)
        {
          if (v8 != 2)
          {
            goto LABEL_56;
          }

          v9 = sub_100379110(KmlPairingTransportFactory, a1);
        }

        else
        {
          v9 = sub_1003790B0(KmlPairingTransportFactory, a1);
        }

        v95 = *(a1 + 88);
        *(a1 + 88) = v9;

LABEL_56:
        [*(a1 + 88) startSession];
        break;
      case 2uLL:
        v44 = KmlLogger();
        if (!sub_100057AEC(v44))
        {
          goto LABEL_41;
        }

        sub_10036DB64();
        v112 = 159;
        goto LABEL_40;
      case 3uLL:
        v36 = KmlLogger();
        if (!sub_100057AEC(v36))
        {
          goto LABEL_41;
        }

        sub_10036DB64();
        v112 = 164;
        goto LABEL_40;
      case 4uLL:
        v37 = KmlLogger();
        if (!sub_100057AEC(v37))
        {
          goto LABEL_41;
        }

        sub_10036DB64();
        v112 = 169;
        goto LABEL_40;
      case 5uLL:
        WeakRetained = objc_loadWeakRetained((a1 + 112));
        [WeakRetained handlePairingDidStart];

        v17 = KmlLogger();
        if (sub_100057AEC(v17))
        {
          sub_10036DB64();
          v112 = 177;
          sub_1003672D0();
          _os_log_impl(v18, v19, v20, v21, v22, 0x12u);
        }

        sub_1003D8EDC(*(a1 + 24));
        v23 = sub_1003BA3DC(*(a1 + 24));
        v24 = *(a1 + 120);
        *(a1 + 120) = v23;

        v25 = sub_1003C7D1C(*(a1 + 24));
        v26 = *(a1 + 128);
        *(a1 + 128) = v25;

        v27 = sub_1003BFE98(*(a1 + 24));
        v28 = *(a1 + 136);
        *(a1 + 136) = v27;

        v29 = KmlLogger();
        if (!sub_100057AEC(v29))
        {
          goto LABEL_41;
        }

        sub_10036DB64();
        v112 = 183;
        goto LABEL_40;
      case 6uLL:
        v47 = KmlLogger();
        if (sub_100057AEC(v47))
        {
          sub_10036DB64();
          v112 = 188;
          sub_1003672D0();
          _os_log_impl(v48, v49, v50, v51, v52, 0x12u);
        }

        [*(a1 + 88) readApdu];
        [*(a1 + 88) pauseSession];
        return;
      case 7uLL:
        v53 = KmlLogger();
        if (sub_100057AEC(v53))
        {
          sub_10036DB64();
          v112 = 194;
          sub_1003672D0();
          _os_log_impl(v54, v55, v56, v57, v58, 0x12u);
        }

        v16 = objc_loadWeakRetained((a1 + 112));
        [v16 handleRemoteConfigurationReceived];
        goto LABEL_45;
      case 8uLL:
        v38 = KmlLogger();
        if (sub_100057AEC(v38))
        {
          sub_10036DB64();
          v112 = 199;
          sub_1003672D0();
          _os_log_impl(v39, v40, v41, v42, v43, 0x12u);
        }

        [*(a1 + 88) resumeSessionWithTimeout];
        return;
      case 9uLL:
        v65 = KmlLogger();
        if (!sub_100057AEC(v65))
        {
          goto LABEL_41;
        }

        sub_10036DB64();
        v112 = 204;
        goto LABEL_40;
      case 0xAuLL:
        v30 = KmlLogger();
        if (sub_100057AEC(v30))
        {
          sub_10036DB64();
          v112 = 209;
          sub_1003672D0();
          _os_log_impl(v31, v32, v33, v34, v35, 0x12u);
        }

        [*(a1 + 88) readApdu];
        [*(a1 + 88) endSession];
        return;
      case 0xBuLL:
        v59 = KmlLogger();
        if (sub_100057AEC(v59))
        {
          sub_10036DB64();
          v112 = 215;
          sub_1003672D0();
          _os_log_impl(v60, v61, v62, v63, v64, 0x12u);
        }

        v16 = objc_loadWeakRetained((a1 + 112));
        [v16 handleKeysExchangeDoneWaitForMailboxes];
        goto LABEL_45;
      case 0xCuLL:
        v10 = KmlLogger();
        if (sub_100057AEC(v10))
        {
          sub_10036DB64();
          v112 = 221;
          sub_1003672D0();
          _os_log_impl(v11, v12, v13, v14, v15, 0x12u);
        }

        v16 = objc_loadWeakRetained((a1 + 112));
        [v16 handleMailboxConfigurationDone];
        goto LABEL_45;
      case 0xDuLL:
        v96 = KmlLogger();
        if (sub_100057AEC(v96))
        {
          sub_10036DB64();
          v112 = 226;
          sub_1003672D0();
          _os_log_impl(v97, v98, v99, v100, v101, 0x12u);
        }

        [*(a1 + 88) reset];
        v102 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v109 = NSLocalizedDescriptionKey;
        v103 = [NSString stringWithUTF8String:KmlErrorString()];
        v110 = v103;
        v104 = [NSDictionary dictionaryWithObjects:&v110 forKeys:&v109 count:1];
        v105 = [NSError errorWithDomain:v102 code:8 userInfo:v104];
        v106 = *(a1 + 48);
        *(a1 + 48) = v105;

        sub_1003B69C4(a1);
        return;
      case 0xEuLL:
        v82 = KmlLogger();
        if (sub_100057AEC(v82))
        {
          sub_10036DBDC();
          sub_10036DCB0();
          sub_1003672D0();
          _os_log_impl(v83, v84, v85, v86, v87, 0x1Cu);
        }

        v88 = objc_loadWeakRetained((a1 + 112));
        [v88 handleFirstPostPairingTransactionEndResult:*(a1 + 48)];

        [*(a1 + 88) reset];
        return;
      case 0xFuLL:
        [*(a1 + 88) reset];
        v46 = objc_loadWeakRetained((a1 + 112));
        [v46 handleProbingCompletionWithBrandCode:*(a1 + 104) error:*(a1 + 48)];
        goto LABEL_52;
      case 0x10uLL:
        v45 = KmlLogger();
        if (!sub_100057AEC(v45))
        {
          goto LABEL_41;
        }

        sub_10036DB64();
        v112 = 244;
LABEL_40:
        sub_1003672D0();
        _os_log_impl(v66, v67, v68, v69, v70, 0x12u);
LABEL_41:

        [*(a1 + 88) readApdu];
        return;
      case 0x11uLL:
        v89 = KmlLogger();
        if (sub_100057AEC(v89))
        {
          sub_10036DBDC();
          sub_10036DCB0();
          sub_1003672D0();
          _os_log_impl(v90, v91, v92, v93, v94, 0x1Cu);
        }

        [*(a1 + 88) pairingEndedWithResult:*(a1 + 48)];
        [*(a1 + 88) reset];
        v46 = objc_loadWeakRetained((a1 + 112));
        [v46 handlePairingTransportSessionFailedWithError:*(a1 + 48)];
LABEL_52:

        return;
      case 0x12uLL:
        v71 = KmlLogger();
        if (sub_100057AEC(v71))
        {
          sub_10036DB64();
          v112 = 256;
          sub_1003672D0();
          _os_log_impl(v72, v73, v74, v75, v76, 0x12u);
        }

        v77 = *(a1 + 88);
        v78 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v79 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
        v108 = v79;
        v80 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
        v81 = [NSError errorWithDomain:v78 code:1 userInfo:v80];
        [v77 pairingEndedWithResult:v81];

        [*(a1 + 88) reset];
        v16 = objc_loadWeakRetained((a1 + 112));
        [v16 handleOwnerPairingCancellationWithResult:1];
LABEL_45:

        return;
      default:
        return;
    }
  }
}

uint64_t sub_1003B72D4(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 64));
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    sub_10036DBBC();
    v12 = 3221225472;
    v13 = sub_10036C068;
    v14 = &unk_1004C24F8;
    v15 = v1;
    v16 = v2;
    dispatch_sync(v3, block);
    if (*(v18 + 24) == 1)
    {
      sub_100057A60();
      v7 = 3221225472;
      v8 = sub_10036DD10;
      v9 = &unk_1004C08D8;
      v10 = v1;
      dispatch_async(v4, v6);
      LOBYTE(v1) = *(v18 + 24);
    }

    else
    {
      LOBYTE(v1) = 0;
    }

    _Block_object_dispose(&v17, 8);
  }

  return v1 & 1;
}

void sub_1003B73CC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = *(a1 + 64);
    sub_100057A60();
    v15 = 3221225472;
    v16 = sub_10036C084;
    v17 = &unk_1004C2780;
    v18 = a1;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    v22 = v12;
    dispatch_async(v13, block);
  }
}

void sub_1003B74C4(uint64_t a1)
{
  if (a1)
  {
    sub_10036DB40();
    sub_10036DC58();
    sub_10036DBF0(v1, v2, v3, v4, v5, sub_10036C158, &unk_1004C08D8, v6);
  }
}

void sub_1003B7514(uint64_t a1)
{
  if (a1)
  {
    sub_10036DB40();
    sub_10036DC58();
    sub_10036DBF0(v1, v2, v3, v4, v5, sub_10036C27C, &unk_1004C08D8, v6);
  }
}

void sub_1003B7564(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a1 + 40) = a2;
    if (a2 == 7)
    {
      v4 = KmlLogger();
      if (sub_100057AEC(v4))
      {
        sub_10036DB8C();
        v8 = 457;
        sub_10036DBA0(&_mh_execute_header, v5, v6, "%s : %i : Reporting key creation error in get data, needs transport session established.", v7);
      }

      sub_1003B69C4(a1);
    }

    else
    {

      sub_1003B69C4(a1);
    }
  }
}

id *sub_1003B765C(id *a1)
{
  if (a1)
  {
    a1 = a1[7];
    v1 = vars8;
  }

  return a1;
}

id *sub_1003B768C(id *a1)
{
  if (a1)
  {
    a1 = [a1[11] getSecureElementSession];
    v1 = vars8;
  }

  return a1;
}

void sub_1003B76C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 64);
    sub_1000167BC();
    v5[1] = 3221225472;
    v5[2] = sub_10036C48C;
    v5[3] = &unk_1004C22F0;
    v5[4] = a1;
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

uint64_t sub_1003B7750(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 64));
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    sub_10036DBBC();
    v11 = 3221225472;
    v12 = sub_10036C598;
    v13 = &unk_1004C24F8;
    v14 = a1;
    v15 = v4;
    dispatch_sync(v5, block);
    if (*(v17 + 24) == 1)
    {
      v6 = *(a1 + 64);
      sub_1000167BC();
      v8[1] = 3221225472;
      v8[2] = sub_10036C670;
      v8[3] = &unk_1004C22F0;
      v8[4] = a1;
      v9 = v3;
      dispatch_async(v6, v8);

      LOBYTE(a1) = *(v17 + 24);
    }

    else
    {
      LOBYTE(a1) = 0;
    }

    _Block_object_dispose(&v16, 8);
  }

  return a1 & 1;
}

void sub_1003B7870(uint64_t a1)
{
  if (a1)
  {
    sub_10036DB40();
    sub_10036DC58();
    sub_10036DBF0(v1, v2, v3, v4, v5, sub_10036C67C, &unk_1004C08D8, v6);
  }
}

uint64_t sub_1003B78C0(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 64));
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 1;
    sub_1003673C4();
    v5[1] = 3221225472;
    v5[2] = sub_10036C780;
    v5[3] = &unk_1004C24F8;
    v5[4] = v1;
    v5[5] = v2;
    dispatch_sync(v3, v5);
    if (*(v7 + 24) == 1)
    {
      sub_1003B69C4(v1);
      LOBYTE(v1) = *(v7 + 24);
    }

    else
    {
      LOBYTE(v1) = 0;
    }

    _Block_object_dispose(&v6, 8);
  }

  return v1 & 1;
}

void sub_1003B7988(uint64_t a1)
{
  if (a1)
  {
    sub_10036DB40();
    sub_10036DC58();
    sub_10036DBF0(v1, v2, v3, v4, v5, sub_10036DD54, &unk_1004C08D8, v6);
  }
}

void sub_1003B79D8(uint64_t a1)
{
  if (a1)
  {
    sub_10036DB40();
    sub_10036DC58();
    sub_10036DBF0(v1, v2, v3, v4, v5, sub_10036C7A4, &unk_1004C08D8, v6);
  }
}

void sub_1003B7A28(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = *(a1 + 64);
    sub_1000167BC();
    v10[1] = 3221225472;
    v10[2] = sub_10036C7B0;
    v10[3] = &unk_1004D1AD8;
    v14 = a3;
    v11 = v7;
    v12 = a1;
    v13 = v8;
    dispatch_async(v9, v10);
  }
}

uint64_t sub_1003B7AE4(uint64_t result)
{
  if (result)
  {
    return (*(result + 16) << 16) | (*(result + 96) << 8) | [*(result + 88) stepForAnalytics];
  }

  return result;
}

void sub_1003B7B2C(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v41 = 1;
    if (v5)
    {
      v7 = [KmlApduRequest alloc];
      v8 = [v6 bytes];
      v9 = [v6 length];
      v10 = *(a1 + 24);
      v40 = 0;
      v2 = sub_1003C8714(&v7->super.isa, v8, v9, v10, &v40);
      v11 = v40;
      if (sub_1003C90F0(v2))
      {
        v3 = CertificationLogging;
        v12 = sub_1003AF3D8(v2);
        v13 = sub_1003BA3C4(v2);
        [CertificationLogging logEncryptedAPDU:v12 decrypted:v13];
      }

      v14 = KmlLogger();
      if (sub_10036DC64(v14))
      {
        v15 = sub_1003C8DD8(v2);
        sub_10036DCC4();
        v45 = 479;
        v46 = 2112;
        v47 = v16;
        sub_10036DC24();
        _os_log_impl(v17, v18, v19, v20, v21, 0x1Cu);
      }

      if (v11)
      {
        v22 = KmlLogger();
        if (sub_10036DC64(v22))
        {
          [v11 code];
          sub_10036DCC4();
          v45 = 482;
          v46 = 2048;
          v47 = v23;
          sub_10036DC24();
          _os_log_impl(v24, v25, v26, v27, v28, 0x1Cu);
        }

        v29 = sub_10037814C(KmlApduResponse, bswap32([v11 code]) >> 16, 0);
      }

      else
      {
        if (*(a1 + 40))
        {
          v39[1] = 0;
          v29 = sub_1003B7E58(a1, v2, &v41);
          v38 = 0;
        }

        else
        {
          v39[0] = 0;
          v29 = sub_1003B810C(a1, v2, &v41, v39);
          v38 = v39[0];
        }

        v11 = v38;
      }

      if (sub_1003C8DA4(v2))
      {
        v30 = *(a1 + 24);
      }

      else
      {
        v30 = 0;
      }

      v37 = sub_1003C78C8(v29, v30);
      [*(a1 + 88) sendApdu:v37];
      if (v41 == 1)
      {
        [*(a1 + 88) readApdu];
      }
    }

    else
    {
      v31 = KmlLogger();
      if (sub_100057AEC(v31))
      {
        v42 = 136315394;
        v43 = "[KmlDataExchangeManager handleReceivedAPDU:]";
        v44 = 1024;
        v45 = 470;
        sub_1003672D0();
        _os_log_impl(v32, v33, v34, v35, v36, 0x12u);
      }
    }
  }
}

id sub_1003B7E58(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = a2;
  if (a1)
  {
    switch(*(a1 + 40))
    {
      case 0:
        v21 = KmlLogger();
        if (!sub_10036DCF8(v21))
        {
          goto LABEL_6;
        }

        sub_10036DB78();
        v30 = 577;
        v9 = "%s : %i : Strangely not expecting a command to communicate error";
        goto LABEL_5;
      case 1:
      case 2:
      case 3:
      case 4:
      case 6:
      case 8:
        v7 = KmlLogger();
        if (sub_10036DCF8(v7))
        {
          sub_10036DB78();
          v30 = 605;
          v9 = "%s : %i : We should never expect one of these commands when waiting for reporting error.";
LABEL_5:
          sub_10036DC0C(&_mh_execute_header, a3, v8, v9, v29);
        }

LABEL_6:

        goto LABEL_7;
      case 5:
        v15 = KmlLogger();
        if (sub_10036DC64(v15))
        {
          sub_10036DB78();
          v30 = 592;
          sub_10036DC0C(&_mh_execute_header, v3, v16, "%s : %i : Expecting OpControlFlow", v29);
        }

        if (!sub_1003C8D2C(v6))
        {
          goto LABEL_7;
        }

        v17 = sub_10036DC7C();
        v12 = sub_1003B810C(v17, v18, v19, v20);
        LOBYTE(a3->isa) = 0;
        goto LABEL_26;
      case 7:
        v22 = KmlLogger();
        if (sub_10036DC64(v22))
        {
          sub_10036DB78();
          v30 = 580;
          sub_10036DC0C(&_mh_execute_header, v3, v23, "%s : %i : Expecting Select followed by Get Data", v29);
        }

        if (sub_1003C8C7C(v6))
        {
          sub_1003C922C(*(a1 + 72));
          v24 = sub_10036DC7C();
          v12 = sub_1003B810C(v24, v25, v26, v27);
          if (v12)
          {
            break;
          }

          goto LABEL_7;
        }

        if (!sub_1003C8CC0(v6))
        {
          goto LABEL_7;
        }

        v12 = sub_10037814C(KmlApduResponse, 100, 0);
LABEL_26:
        v28 = sub_10036DC90();
        sub_1003B69C4(v28);
        if (!v12)
        {
LABEL_7:
          v10 = KmlLogger();
          if (sub_10036DCF8(v10))
          {
            sub_10036DB78();
            v30 = 610;
            sub_10036DC0C(&_mh_execute_header, a3, v11, "%s : %i : Did not receive expected command", v29);
          }

          v12 = sub_10037814C(KmlApduResponse, 34153, 0);
          v13 = sub_10036DC90();
          sub_1003B69C4(v13);
          break;
        }

        break;
      default:
        goto LABEL_7;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_1003B810C(uint64_t a1, void *a2, _BYTE *a3, id *a4)
{
  if (!a1)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = sub_1003C9978(*(a1 + 72), a2, a4);
  if (*a4)
  {
    if (*(a1 + 8) == 4)
    {
      v13 = KmlLogger();
      if (sub_10036DC64(v13))
      {
        v14 = *a4;
        v43 = 136315650;
        v44 = "[KmlDataExchangeManager handleIncomingCommand:continueReading:error:]";
        v45 = 1024;
        v46 = 507;
        v47 = 2112;
        v48 = v14;
        sub_10036DC24();
        _os_log_impl(v15, v16, v17, v18, v19, 0x1Cu);
      }

      objc_storeStrong((a1 + 48), *a4);
      if (sub_1003BA3DC(*(a1 + 72)) != 5 || sub_1003C7D1C(*(a1 + 72)) != 3)
      {
        *a3 = 1;
        *(a1 + 40) = 5;
        v28 = a1;
        goto LABEL_36;
      }

      *(a1 + 96) = sub_1003CC8AC(*(a1 + 72));
    }

    else
    {
      objc_storeStrong((a1 + 48), *a4);
      v20 = KmlLogger();
      if (sub_10036DC64(v20))
      {
        v21 = sub_1003BA3DC(*(a1 + 72));
        [*a4 code];
        v43 = 136315906;
        sub_10036DC30();
        v46 = 520;
        v47 = 2048;
        v48 = v21;
        v49 = 2048;
        v50 = v22;
        sub_10036DC24();
        _os_log_impl(v23, v24, v25, v26, v27, 0x26u);
      }
    }

    *a3 = 0;
    v28 = sub_10036DC90();
LABEL_36:
    sub_1003B69C4(v28);
    goto LABEL_7;
  }

  switch(sub_1003BA3DC(*(a1 + 72)))
  {
    case 0:
    case 4:
    case 7:
    case 8:
      v9 = KmlLogger();
      if (sub_100057AEC(v9))
      {
        v43 = 136315394;
        sub_10036DC30();
        v46 = 564;
        sub_10036DBA0(&_mh_execute_header, v10, v11, "%s : %i : No state change needed.", &v43);
      }

      break;
    case 1:
      v28 = a1;
      goto LABEL_36;
    case 2:
      if (!*(a1 + 32))
      {
        *(a1 + 104) = sub_1003C7D34(*(a1 + 72));
        *a3 = 0;
      }

      v28 = a1;
      goto LABEL_36;
    case 3:
      v28 = a1;
      goto LABEL_36;
    case 5:
    case 6:
      if (sub_1003C7D1C(*(a1 + 72)) == 2)
      {
        if (*(a1 + 8) == 9)
        {
          v29 = sub_1003CC848(*(a1 + 72));
          v30 = *(a1 + 56);
          *(a1 + 56) = v29;

          v28 = a1;
          goto LABEL_36;
        }

        v31 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v32 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
        v42 = v32;
        v33 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v34 = [NSError errorWithDomain:v31 code:14 userInfo:v33];
        v35 = *(a1 + 48);
        *(a1 + 48) = v34;

        v36 = sub_10036DC90();
        sub_1003B69C4(v36);
        v37 = KmlLogger();
        if (sub_100057AEC(v37))
        {
          v43 = 136315394;
          sub_10036DC30();
          v46 = 538;
          sub_10036DBA0(&_mh_execute_header, v38, v39, "%s : %i : Remote Reader sent end message in wrong state. Treating it as abort, stop reading.", &v43);
        }

        *a3 = 0;
        v40 = sub_10037814C(KmlApduResponse, 32874, 0);

        v8 = v40;
      }

      else if (sub_1003C7D1C(*(a1 + 72)) == 4 && *(a1 + 8) == 5)
      {
        sub_1003B69C4(a1);
        sub_1003C922C(*(a1 + 72));
      }

      break;
    default:
      break;
  }

LABEL_7:

  return v8;
}

id *sub_1003B8584(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 14, a2);
  }

  return result;
}

uint64_t sub_1003B8594(uint64_t result)
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

uint64_t sub_1003B85A0(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t sub_1003B85AC(uint64_t result)
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

uint64_t sub_1003B85B8(uint64_t result)
{
  if (result)
  {
    return *(result + 144);
  }

  return result;
}

void sub_1003B85C4(uint64_t a1, void *a2, void *a3, id a4)
{
  v60 = a2;
  if (a1)
  {
    v9 = +[NSMutableArray array];
    v10 = +[NSMutableArray array];
    *(a1 + 9) = 1;
    [NSData dataWithBytes:a1 + 9 length:1];
    objc_claimAutoreleasedReturnValue();
    v11 = [sub_10036EF94() TLVWithTag:? value:?];
    sub_10036EF64(v11);

    *(a1 + 10) = 0;
    [NSData dataWithBytes:a1 + 10 length:1];
    objc_claimAutoreleasedReturnValue();
    v12 = [sub_10036EF94() TLVWithTag:? value:?];
    sub_10036EF64(v12);

    *(a1 + 8) = a3;
    v13 = [sub_10036EF80() dataWithBytes:? length:?];
    [a3 TLVWithTag:10 value:v13];
    objc_claimAutoreleasedReturnValue();
    [sub_10036EF54() addObject:?];

    v14 = [sub_10036EF80() dataWithBytes:? length:?];
    v15 = [a3 TLVWithTag:208 value:v14];
    [v10 addObject:v15];

    if ([*(a1 + 40) keyRoleToShare] != 0xFFFF)
    {
      v16 = KmlLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [*(a1 + 40) keyRoleToShare];
        *buf = 136315650;
        v72 = "[SharingKeyConfig createKeyConfigWithFriendlyName:profile:keyRole:]";
        v73 = 1024;
        v74 = 45;
        v75 = 1024;
        LODWORD(v76) = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s : %i : Over riding key role based on profile to :%02x", buf, 0x18u);
      }

      a4 = [*(a1 + 40) keyRoleToShare];
    }

    *(a1 + 12) = a4;
    v18 = [KmlTlv TLVWithTag:213 unsignedShort:a4];
    [v10 addObject:v18];

    kmlUtilTimeNow();
    objc_claimAutoreleasedReturnValue();
    [sub_10036EFA8() TLVWithTag:? value:?];
    objc_claimAutoreleasedReturnValue();
    [sub_10036EF54() addObject:?];

    v59 = v18;
    v19 = [KmlTlv TLVWithTag:81 value:v18];
    [v10 addObject:v19];

    kmlUtilInfiniteTime();
    objc_claimAutoreleasedReturnValue();
    v20 = [sub_10036EFA8() TLVWithTag:? value:?];
    sub_10036EF64(v20);

    v58 = v18;
    v21 = [KmlTlv TLVWithTag:82 value:v18];
    [v10 addObject:v21];

    objc_storeStrong((a1 + 32), a2);
    v22 = KmlLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 32);
      *buf = 136315650;
      v72 = "[SharingKeyConfig createKeyConfigWithFriendlyName:profile:keyRole:]";
      v73 = 1024;
      v74 = 64;
      v75 = 2112;
      v76 = v25;
      sub_10036EFBC(&_mh_execute_header, v23, v24, "%s : %i : Friendly name: %@");
    }

    v26 = KmlLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [*(a1 + 32) dataUsingEncoding:4];
      *buf = 136315650;
      v72 = "[SharingKeyConfig createKeyConfigWithFriendlyName:profile:keyRole:]";
      v73 = 1024;
      v74 = 65;
      v75 = 2112;
      v76 = v27;
      sub_10036EFBC(&_mh_execute_header, v28, v29, "%s : %i : Friendly name as UTF8 encoded data: %@");
    }

    v30 = *(a1 + 32);
    if (v30)
    {
      v31 = [v30 dataUsingEncoding:4];
      v32 = [KmlTlv TLVWithTag:12 value:v31];
      [v9 addObject:v32];

      v33 = [*(a1 + 32) dataUsingEncoding:4];
      v34 = [KmlTlv TLVWithTag:211 value:v33];
      [v10 addObject:v34];
    }

    v35 = +[NSMutableData data];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v36 = v9;
    v37 = [v36 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v66;
      do
      {
        for (i = 0; i != v38; i = i + 1)
        {
          if (*v66 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [*(*(&v65 + 1) + 8 * i) asData];
          [v35 appendData:v41];
        }

        v38 = [v36 countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v38);
    }

    v42 = [KmlTlv TLVWithTag:48 value:v35];
    v43 = [v42 asData];
    v44 = [KmlTlv TLVWithTag:32560 value:v43];
    v45 = *(a1 + 16);
    *(a1 + 16) = v44;

    v46 = +[NSMutableData data];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v47 = v10;
    v48 = [v47 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v62;
      do
      {
        for (j = 0; j != v49; j = j + 1)
        {
          if (*v62 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = [*(*(&v61 + 1) + 8 * j) asData];
          [v46 appendData:v52];
        }

        v49 = [v47 countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v49);
    }

    v53 = objc_opt_new();
    v54 = [v53 useOldKeyConfigTag];

    if (v54)
    {
      v55 = 32526;
    }

    else
    {
      v55 = 32572;
    }

    v56 = [KmlTlv TLVWithTag:v55 value:v46];
    v57 = *(a1 + 24);
    *(a1 + 24) = v56;
  }
}

BOOL sub_1003B8C54(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = &swift_cvw_destroy_ptr;
  v5 = [KmlTlv TLVsWithData:a2];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v56;
    v2 = 32560;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v56 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v55 + 1) + 8 * i);
        if ([v10 tag] == 32560)
        {
          objc_storeStrong((a1 + 16), v10);
        }

        if ([v10 tag] == 32526 || objc_msgSend(v10, "tag") == 32572)
        {
          objc_storeStrong((a1 + 24), v10);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v55 objects:v68 count:16];
    }

    while (v7);
  }

  v11 = *(a1 + 16);
  v12 = v11 != 0;
  if (v11)
  {
    v13 = [*(a1 + 16) value];
    v14 = [KmlTlv TLVsWithData:v13];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v51 objects:v67 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v52;
      v42 = *v52;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v52 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v2 = *(*(&v51 + 1) + 8 * j);
          if ([v2 tag] == 48)
          {
            v20 = v4[276];
            v21 = [v2 value];
            v22 = [v20 TLVsWithData:v21];

            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v2 = v22;
            v23 = [v2 countByEnumeratingWithState:&v47 objects:v66 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v48;
              while (2)
              {
                for (k = 0; k != v24; k = k + 1)
                {
                  if (*v48 != v25)
                  {
                    objc_enumerationMutation(v2);
                  }

                  v27 = *(*(&v47 + 1) + 8 * k);
                  if ([v27 tag] == 12)
                  {
                    v28 = [NSString alloc];
                    v29 = [v27 value];
                    v30 = [v28 initWithData:v29 encoding:4];
                    v31 = *(a1 + 32);
                    *(a1 + 32) = v30;

                    v32 = KmlLogger();
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                    {
                      v33 = *(a1 + 32);
                      *buf = 136315650;
                      v61 = "[SharingKeyConfig parseKeyConfigFromData:]";
                      v62 = 1024;
                      v63 = 131;
                      v64 = 2112;
                      v65 = v33;
                      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s : %i : Friendly name sent by owner: %@", buf, 0x1Cu);
                    }

                    goto LABEL_36;
                  }
                }

                v24 = [v2 countByEnumeratingWithState:&v47 objects:v66 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

            v4 = &swift_cvw_destroy_ptr;
            v18 = v42;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v51 objects:v67 count:16];
      }

      while (v17);
    }

LABEL_36:

    [*(a1 + 24) value];
    objc_claimAutoreleasedReturnValue();
    v34 = [sub_10036EF54() TLVsWithData:?];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v35 = v34;
    v36 = [v35 countByEnumeratingWithState:&v43 objects:v59 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v44;
      do
      {
        for (m = 0; m != v37; m = m + 1)
        {
          if (*v44 != v38)
          {
            objc_enumerationMutation(v35);
          }

          v40 = *(*(&v43 + 1) + 8 * m);
          if ([v40 tag] == 213)
          {
            *(a1 + 12) = [v40 valueAsUnsignedShort];
          }

          else if ([v40 tag] == 208)
          {
            *(a1 + 8) = [v40 valueAsUnsignedChar];
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v43 objects:v59 count:16];
      }

      while (v37);
    }

    v12 = 1;
  }

  else
  {
    v15 = KmlLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v61 = "[SharingKeyConfig parseKeyConfigFromData:]";
      v62 = 1024;
      v63 = 113;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : %i : KSInvitationData: No invitation TLV found", buf, 0x12u);
    }
  }

  return v12;
}

uint64_t sub_1003B918C(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t sub_1003B9198(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

id *sub_1003B91A4(id *a1, uint64_t a2, void *a3, void *a4, int a5, void *a6)
{
  HIDWORD(v70) = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (a1)
  {
    [a1 setEpAuthResponse:a2];
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [a1 epAuthResponse];
      v15 = [v14 endPointAttestationData];
      v16 = kmlUtilHexStringFromData();
      sub_10036F0C4();
      sub_10036F0E4();
      sub_10036F104(&_mh_execute_header, v17, v18, "%s : %i : SignedData: Auth Response Object - Attestation = %@", v19, v20, v21, v22, v69, v70);
    }

    v23 = KmlLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [a1 epAuthResponse];
      v25 = [v24 encryptedData];
      v26 = kmlUtilHexStringFromData();
      sub_10036F0C4();
      sub_10036F0E4();
      sub_10036F104(&_mh_execute_header, v27, v28, "%s : %i : SignedData: Auth Response Object - encryptedData = %@", v29, v30, v31, v32, v69, v70);
    }

    v33 = KmlLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [a1 epAuthResponse];
      v35 = [v34 encryptionPublicKeyData];
      v36 = kmlUtilHexStringFromData();
      sub_10036F0C4();
      sub_10036F0E4();
      sub_10036F104(&_mh_execute_header, v37, v38, "%s : %i : SignedData: Auth Response Object - encryptionPublicKey = %@", v39, v40, v41, v42, v69, v70);
    }

    v43 = +[NSMutableData data];
    v44 = [a1 epAuthResponse];
    v45 = [v44 endPointAttestationData];
    v46 = sub_1003B9684(a1, v45);

    [v43 appendData:v46];
    if ([v12 length] && +[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", objc_msgSend(a1[10], "agreedKmlSharingVersion"), 768))
    {
      v47 = KmlLogger();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        sub_10036F0C4();
        v74 = 44;
        sub_10036DC0C(&_mh_execute_header, v47, v48, "%s : %i : Add additional attestation packages", &v71);
      }

      [v43 appendData:v12];
    }

    v49 = v10;
    [v43 appendData:v10];
    v50 = [a1 epAuthResponse];
    v51 = [v50 encryptedData];

    if (v51)
    {
      v52 = [a1 epAuthResponse];
      v53 = [v52 encryptedData];
      v54 = [KmlTlv TLVWithTag:74 value:v53];
      v55 = a1[2];
      a1[2] = v54;

      v56 = [a1[2] asData];
      sub_10036F154(v56);

      v57 = [a1 epAuthResponse];
      v58 = [v57 encryptionPublicKeyData];
      v59 = [KmlTlv TLVWithTag:151 value:v58];
      v60 = a1[3];
      a1[3] = v59;

      v61 = [a1[3] asData];
      sub_10036F154(v61);
    }

    v62 = v11;
    [v43 appendData:v11];
    if (HIDWORD(v70))
    {
      v63 = KmlLogger();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        v71 = 136315394;
        v72 = "[SharingSignedResponse createdSignedResponseWithEndpointAuthResponse:mailboxMappingData:supportedRadiosData:mockRefreshInstanceCA:additionalAttestationPackages:]";
        v73 = 1024;
        v74 = 63;
        sub_10036DC0C(&_mh_execute_header, v63, v64, "%s : %i : Adding mock refrehs instance CA", &v71);
      }

      v65 = kmlUtilGetMockInstanceCAData();
      [v43 appendData:v65];
    }

    v66 = [KmlTlv TLVWithTag:32562 value:v43];
    v67 = a1[5];
    a1[5] = v66;

    a1 = [a1[5] asData];
  }

  else
  {
    v49 = v10;
    v62 = v11;
  }

  return a1;
}

id sub_1003B9684(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = [KmlTlv TLVsWithData:v4];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v34 + 1) + 8 * i);
          v10 = [v9 tag];
          v11 = (a1 + 8);
          if (v10 != 32549)
          {
            v12 = [v9 tag];
            v11 = (a1 + 48);
            if (v12 != 158)
            {
              continue;
            }
          }

          objc_storeStrong(v11, v9);
        }

        v7 = [v5 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v7);
    }

    v13 = *(a1 + 8);
    if (v13 && *(a1 + 48))
    {
      v14 = [v13 value];
      v15 = [KmlTlv TLVsWithData:v14];
      v16 = [NSMutableArray arrayWithArray:v15];

      [v16 addObject:*(a1 + 48)];
      v17 = +[NSMutableData data];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v31;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v22 = [*(*(&v30 + 1) + 8 * i) asData];
            [v17 appendData:v22];
          }

          v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v20);
      }

      v23 = [KmlTlv TLVWithTag:32549 value:v17];
      v24 = +[NSMutableData data];
      v25 = [v23 asData];
      sub_10036F154(v25);

      v26 = [*(a1 + 48) asData];
      [v24 appendData:v26];
    }

    else
    {
      v27 = KmlLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v39 = 136315394;
        v40 = "[SharingSignedResponse getBackwardsCompatibleAttestationDataFrom:]";
        v41 = 1024;
        v42 = 178;
        sub_10036DC0C(&_mh_execute_header, v27, v28, "%s : %i : Attestation Data incomplete", &v39);
      }

      v24 = v4;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

uint64_t sub_1003B99F4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    return v2;
  }

  v3 = [KmlTlv TLVsWithData:a2];
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v177 = 136315394;
    sub_10036F170();
    *(v5 + 14) = 75;
    sub_10036DC0C(&_mh_execute_header, v4, v6, "%s : %i : Looking for signed response TLV", v177);
  }

  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v173 objects:v181 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v174;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v174 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v173 + 1) + 8 * i);
        if ([v12 tag] == 32562)
        {
          objc_storeStrong((v2 + 40), v12);
          goto LABEL_14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v173 objects:v181 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  if (!*(v2 + 40))
  {
    v15 = KmlLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v177 = 136315394;
      sub_10036F170();
      *(v160 + 14) = 84;
      sub_10036DC0C(&_mh_execute_header, v15, v161, "%s : %i : No signed response TLV found", v177);
    }

    v2 = 0;
    goto LABEL_78;
  }

  v164 = v7;
  v13 = [*(v2 + 40) value];
  v14 = [KmlTlv TLVsWithData:v13];

  v167 = +[NSMutableDictionary dictionary];
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v169 objects:v180 count:16];
  if (!v16)
  {
    goto LABEL_65;
  }

  v18 = v16;
  v19 = *v170;
  *&v17 = 136315394;
  v168 = v17;
  *&v17 = 136315650;
  v165 = v17;
  do
  {
    v20 = 0;
    do
    {
      if (*v170 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v21 = *(*(&v169 + 1) + 8 * v20);
      if ([v21 tag] == 32549)
      {
        v95 = KmlLogger();
        v96 = sub_10036F124(v95);
        if (v96)
        {
          sub_10036F0AC(v96, v97, v98, v99, v100, v101, v102, v103, v163, v164, v165, *(&v165 + 1), v166, v167, v168);
          sub_10036F0F8(v104);
          sub_10036F0D8();
          _os_log_impl(v105, v106, v107, "%s : %i : Found Key Attestation TLV", v108, 0x12u);
        }

        sub_1003BA1A0(v2, v21);
      }

      else
      {
        if ([v21 tag] == 74)
        {
          v22 = KmlLogger();
          v23 = sub_10036F124(v22);
          if (v23)
          {
            sub_10036F0AC(v23, v24, v25, v26, v27, v28, v29, v30, v163, v164, v165, *(&v165 + 1), v166, v167, v168);
            sub_10036F0F8(v31);
            sub_10036F0D8();
            _os_log_impl(v32, v33, v34, "%s : %i : Found encrypted confidential mailbox TLV", v35, 0x12u);
          }

          v36 = (v2 + 16);
LABEL_37:
          objc_storeStrong(v36, v21);
          goto LABEL_38;
        }

        if ([v21 tag] == 151)
        {
          v37 = KmlLogger();
          v38 = sub_10036F124(v37);
          if (v38)
          {
            sub_10036F0AC(v38, v39, v40, v41, v42, v43, v44, v45, v163, v164, v165, *(&v165 + 1), v166, v167, v168);
            sub_10036F0F8(v46);
            sub_10036F0D8();
            _os_log_impl(v47, v48, v49, "%s : %i : Found Owner Encryption Key TLV", v50, 0x12u);
          }

          v36 = (v2 + 24);
          goto LABEL_37;
        }

        if ([v21 tag] == 69)
        {
          v51 = KmlLogger();
          v52 = sub_10036F124(v51);
          if (v52)
          {
            sub_10036F0AC(v52, v53, v54, v55, v56, v57, v58, v59, v163, v164, v165, *(&v165 + 1), v166, v167, v168);
            sub_10036F0F8(v60);
            sub_10036F0D8();
            _os_log_impl(v61, v62, v63, "%s : %i : Found KTS receipt TLV", v64, 0x12u);
          }

          v36 = (v2 + 32);
          goto LABEL_37;
        }

        if ([v21 tag] == 158)
        {
          v65 = KmlLogger();
          v66 = sub_10036F124(v65);
          if (v66)
          {
            sub_10036F0AC(v66, v67, v68, v69, v70, v71, v72, v73, v163, v164, v165, *(&v165 + 1), v166, v167, v168);
            sub_10036F0F8(v74);
            sub_10036F0D8();
            _os_log_impl(v75, v76, v77, "%s : %i : Found owner Signature TLV", v78, 0x12u);
          }

          v36 = (v2 + 48);
          goto LABEL_37;
        }

        if ([v21 tag] == 32589)
        {
          v79 = KmlLogger();
          v80 = sub_10036F124(v79);
          if (v80)
          {
            sub_10036F0AC(v80, v81, v82, v83, v84, v85, v86, v87, v163, v164, v165, *(&v165 + 1), v166, v167, v168);
            sub_10036F0F8(v88);
            sub_10036F0D8();
            _os_log_impl(v89, v90, v91, "%s : %i : Found mailbox mapping TLV", v92, 0x12u);
          }

          v93 = [v21 asData];
          v94 = *(v2 + 56);
          *(v2 + 56) = v93;
LABEL_51:

          goto LABEL_38;
        }

        if ([v21 tag] == 32585)
        {
          v109 = KmlLogger();
          v110 = sub_10036F124(v109);
          if (v110)
          {
            sub_10036F0AC(v110, v111, v112, v113, v114, v115, v116, v117, v163, v164, v165, *(&v165 + 1), v166, v167, v168);
            sub_10036F0F8(v118);
            sub_10036F0D8();
            _os_log_impl(v119, v120, v121, "%s : %i : Found SupportedRadios TLV", v122, 0x12u);
          }

          v123 = [v21 value];
          v94 = *(v2 + 64);
          *(v2 + 64) = v123;
          goto LABEL_51;
        }

        if ([v21 tag] == 32546)
        {
          v124 = KmlLogger();
          v125 = sub_10036F124(v124);
          if (v125)
          {
            sub_10036F0AC(v125, v126, v127, v128, v129, v130, v131, v132, v163, v164, v165, *(&v165 + 1), v166, v167, v168);
            sub_10036F0F8(v133);
            sub_10036F0D8();
            _os_log_impl(v134, v135, v136, "%s : %i : Found refreshed instance CA", v137, 0x12u);
          }

          v138 = [v21 value];
          v13 = [KmlTlv TLVWithTag:32547 value:v138];

          v139 = [v13 asData];
          v140 = *(v2 + 72);
          *(v2 + 72) = v139;

LABEL_63:
          goto LABEL_38;
        }

        if ([v21 tag] == 48 || objc_msgSend(v21, "tag") == 49 || objc_msgSend(v21, "tag") == 50 || objc_msgSend(v21, "tag") == 51)
        {
          v141 = KmlLogger();
          if (sub_10036F124(v141))
          {
            [v21 tag];
            sub_10036F13C();
            *(v142 + 14) = 122;
            v178 = v143;
            v179 = v144;
            sub_10036F0D8();
            _os_log_impl(v145, v146, v147, "%s : %i : Found additional attestation TLV with Tag (%02X)", v148, 0x18u);
          }

          v13 = [v21 value];
          v149 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v21 tag]);
          [v167 setObject:v13 forKeyedSubscript:v149];

          goto LABEL_63;
        }
      }

LABEL_38:
      v20 = v20 + 1;
    }

    while (v18 != v20);
    v150 = [v15 countByEnumeratingWithState:&v169 objects:v180 count:16];
    v18 = v150;
  }

  while (v150);
LABEL_65:

  if (*(v2 + 8) && *(v2 + 48) && *(v2 + 56))
  {
    v151 = v167;
    if ([v167 count])
    {
      v152 = v167;
      v13 = *(v2 + 88);
      *(v2 + 88) = v152;
      v2 = 1;
      v7 = v164;
      goto LABEL_73;
    }

    v2 = 1;
    v7 = v164;
  }

  else
  {
    v153 = KmlLogger();
    if (sub_10036F124(v153))
    {
      sub_10036F13C();
      *(v154 + 14) = 131;
      sub_10036F0D8();
      _os_log_impl(v155, v156, v157, v158, v159, 0x12u);
    }

    v2 = 0;
    v7 = v164;
    v151 = v167;
LABEL_73:
  }

LABEL_78:
  return v2;
}

void sub_1003BA1A0(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 value];
    v4 = [KmlTlv TLVsWithData:v3];

    v5 = +[NSMutableData data];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v20;
      *&v8 = 136315394;
      v18 = v8;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          if ([v12 tag] == 158)
          {
            v13 = KmlLogger();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = v18;
              v24 = "[SharingSignedResponse parseKeyAttestationTLV:]";
              v25 = 1024;
              v26 = 217;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : Found owner Signature TLV in KeyAttestationTlv", buf, 0x12u);
            }

            v14 = v12;
            v15 = *(a1 + 48);
            *(a1 + 48) = v14;
          }

          else
          {
            v15 = [v12 asData];
            [v5 appendData:v15];
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v9);
    }

    v16 = [KmlTlv TLVWithTag:32549 value:v5];
    v17 = *(a1 + 8);
    *(a1 + 8) = v16;
  }
}

uint64_t sub_1003BA3C4(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t sub_1003BA3D0(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t sub_1003BA3DC(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void sub_1003BA3E8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

uint64_t sub_1003BA3F8(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

id sub_1003BA404(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    [a1 setEndpoint:a2];
    v10 = [a1 endpoint];
    v11 = [v10 certificates];

    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [KmlTlv TLVWithTag:32544 value:v12];
    v14 = *(a1 + 8);
    *(a1 + 8) = v13;

    v15 = [v11 objectAtIndexedSubscript:1];
    v16 = [KmlTlv TLVWithTag:32546 value:v15];
    v17 = *(a1 + 16);
    *(a1 + 16) = v16;

    v18 = [v11 objectAtIndexedSubscript:2];
    v19 = [KmlTlv TLVWithTag:32548 value:v18];
    v20 = *(a1 + 24);
    *(a1 + 24) = v19;

    objc_storeStrong((a1 + 32), a3);
    if (v9)
    {
      v21 = [v9 dataUsingEncoding:4];
      v22 = [KmlTlv TLVWithTag:24383 value:v21];
      v23 = *(a1 + 48);
      *(a1 + 48) = v22;
    }

    a1 = sub_1003BA5BC(a1);
  }

  return a1;
}

id *sub_1003BA5BC(id *a1)
{
  v2 = a1;
  if (a1)
  {
    v3 = +[NSMutableData data];
    v4 = [v2[1] asData];
    sub_10036F258(v4);

    v5 = [v2[2] asData];
    sub_10036F258(v5);

    v6 = [v2[3] asData];
    sub_10036F258(v6);

    [v3 appendData:v2[4]];
    v7 = [KmlTlv TLVWithTag:32592 value:v2[4]];
    v8 = [v7 asData];
    [v3 appendData:v8];

    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [v2[7] agreedKmlSharingVersion], 768))
    {
      v9 = KmlLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v17 = 136315394;
        v18 = "[KeySigningRequest getSigningRequestTLVAsData]";
        v19 = 1024;
        v20 = 118;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : Add SharingInAChain version TLV", &v17, 0x12u);
      }

      v10 = [v2[7] getKmlSupportedVersionsTlvAsShareRecipient];
      v11 = [v10 asData];
      [v3 appendData:v11];
    }

    v12 = v2[6];
    if (v12)
    {
      v13 = [v12 asData];
      [v3 appendData:v13];
    }

    v14 = [KmlTlv TLVWithTag:32566 value:v3];
    v15 = v2[5];
    v2[5] = v14;

    v2 = [v2[5] asData];
  }

  return v2;
}

uint64_t sub_1003BA7E4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [KmlTlv TLVsWithData:a2];
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    sub_10036F224("[KeySigningRequest parseRequestFromData:]");
    v148 = 53;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : KeySigningData: Looking for signing request TLV", buf, 0x12u);
  }

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v141 objects:v146 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v142;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v142 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v141 + 1) + 8 * i);
        if ([v10 tag] == 32566)
        {
          objc_storeStrong((a1 + 40), v10);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v141 objects:v146 count:16];
    }

    while (v8);
  }

  v11 = *(a1 + 40);
  v12 = v11 != 0;
  if (v11)
  {
    HIDWORD(v136) = 1;
    v13 = [*(a1 + 40) value];
    v14 = [KmlTlv TLVsWithData:v13];

    v139 = 0u;
    v140 = 0u;
    v137 = 0u;
    v138 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v137 objects:v145 count:16];
    if (!v16)
    {
      goto LABEL_53;
    }

    v17 = v16;
    v18 = *v138;
    while (1)
    {
      v19 = 0;
      do
      {
        if (*v138 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v137 + 1) + 8 * v19);
        if ([v20 tag] == 32544)
        {
          v21 = KmlLogger();
          v22 = sub_100367508(v21);
          if (v22)
          {
            sub_10036F24C(v22, v23, v24, v25, v26, v27, v28, v29, v30, v135, v136, v31);
            sub_10036F224("[KeySigningRequest parseRequestFromData:]");
            sub_10036F234(68);
            sub_10036F240();
            _os_log_impl(v32, v33, v34, "%s : %i : KeySigningData: Found Ext. CA Cert TLV", v35, 0x12u);
          }

          v36 = v20;
          v37 = *(a1 + 8);
          *(a1 + 8) = v36;
          goto LABEL_46;
        }

        if ([v20 tag] == 32546)
        {
          v38 = KmlLogger();
          v39 = sub_100367508(v38);
          if (v39)
          {
            sub_10036F24C(v39, v40, v41, v42, v43, v44, v45, v46, v47, v135, v136, v48);
            sub_10036F224("[KeySigningRequest parseRequestFromData:]");
            sub_10036F234(71);
            sub_10036F240();
            _os_log_impl(v49, v50, v51, "%s : %i : KeySigningData: Found Instance CA Cert TLV", v52, 0x12u);
          }

          v53 = v20;
          v37 = *(a1 + 16);
          *(a1 + 16) = v53;
          goto LABEL_46;
        }

        if ([v20 tag] == 32548)
        {
          v54 = KmlLogger();
          v55 = sub_100367508(v54);
          if (v55)
          {
            sub_10036F24C(v55, v56, v57, v58, v59, v60, v61, v62, v63, v135, v136, v64);
            sub_10036F224("[KeySigningRequest parseRequestFromData:]");
            sub_10036F234(74);
            sub_10036F240();
            _os_log_impl(v65, v66, v67, "%s : %i : KeySigningData: Found Endpoint Cert TLV", v68, 0x12u);
          }

          v69 = v20;
          v37 = *(a1 + 24);
          *(a1 + 24) = v69;
          goto LABEL_46;
        }

        if ([v20 tag] == 32550)
        {
          v70 = KmlLogger();
          v71 = sub_100367508(v70);
          if (v71)
          {
            sub_10036F24C(v71, v72, v73, v74, v75, v76, v77, v78, v79, v135, v136, v80);
            sub_10036F224("[KeySigningRequest parseRequestFromData:]");
            sub_10036F234(77);
            sub_10036F240();
            _os_log_impl(v81, v82, v83, "%s : %i : KeySigningData: Found Endpoint Encryption Key Attestation Data", v84, 0x12u);
          }

          v85 = [v20 asData];
LABEL_35:
          v37 = *(a1 + 32);
          *(a1 + 32) = v85;
          goto LABEL_46;
        }

        if ([v20 tag] == 32592 && !*(a1 + 32))
        {
          v118 = KmlLogger();
          v119 = sub_100367508(v118);
          if (v119)
          {
            sub_10036F24C(v119, v120, v121, v122, v123, v124, v125, v126, v127, v135, v136, v128);
            sub_10036F224("[KeySigningRequest parseRequestFromData:]");
            sub_10036F234(80);
            sub_10036F240();
            _os_log_impl(v129, v130, v131, "%s : %i : KeySigningData: Getting Encryption Key Attestation data from Custom TLV", v132, 0x12u);
          }

          v85 = [v20 value];
          goto LABEL_35;
        }

        if ([v20 tag] == 24383)
        {
          v86 = KmlLogger();
          v87 = sub_100367508(v86);
          if (v87)
          {
            sub_10036F24C(v87, v88, v89, v90, v91, v92, v93, v94, v95, v135, v136, v96);
            sub_10036F224("[KeySigningRequest parseRequestFromData:]");
            sub_10036F234(83);
            sub_10036F240();
            _os_log_impl(v97, v98, v99, "%s : %i : KeySigningData: Found Passcode TLV", v100, 0x12u);
          }

          v101 = v20;
          v37 = *(a1 + 48);
          *(a1 + 48) = v101;
        }

        else
        {
          if ([v20 tag] != 85)
          {
            goto LABEL_47;
          }

          v102 = KmlLogger();
          v103 = sub_100367508(v102);
          if (v103)
          {
            sub_10036F24C(v103, v104, v105, v106, v107, v108, v109, v110, v111, v135, v136, v112);
            sub_10036F224("[KeySigningRequest parseRequestFromData:]");
            sub_10036F234(86);
            sub_10036F240();
            _os_log_impl(v113, v114, v115, "%s : %i : Found Recipient Framework version TLV", v116, 0x12u);
          }

          i = *(a1 + 56);
          v37 = [v20 asData];
          v117 = [i updateSupportedFrameworkVersionsForSharing:v37];
        }

LABEL_46:

LABEL_47:
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v133 = [v15 countByEnumeratingWithState:&v137 objects:v145 count:16];
      v17 = v133;
      if (!v133)
      {
LABEL_53:

        v12 = HIDWORD(v136);
        goto LABEL_56;
      }
    }
  }

  v15 = KmlLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    sub_10036F224("[KeySigningRequest parseRequestFromData:]");
    v148 = 61;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : %i : KeySigningData: No signing request TLV found", buf, 0x12u);
  }

LABEL_56:

  return v12;
}

id *sub_1003BADDC(id *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = [a2 dataUsingEncoding:4];
    v5 = [KmlTlv TLVWithTag:24383 value:v4];
    v6 = v3[6];
    v3[6] = v5;

    a1 = sub_1003BA5BC(v3);
    v2 = vars8;
  }

  return a1;
}

void sub_1003BAE64(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

uint64_t sub_1003BAE74(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    v50 = 0;
    goto LABEL_108;
  }

  v4 = &swift_cvw_destroy_ptr;
  [KmlTlv TLVsWithData:v3];
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v5 = v128 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v125 objects:v153 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v126;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v126 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v125 + 1) + 8 * i);
        if ([v10 tag] == 32555)
        {
          objc_storeStrong((a1 + 80), v10);
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v125 objects:v153 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v11 = *(a1 + 80);
  if (!v11)
  {
    v48 = KmlLogger();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_10036F470("[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]", 4.8151e-34);
      v148 = 62;
      sub_10036F500(&_mh_execute_header, v48, v49, "%s : %i : Share initiator cert chain not found", &v146);
    }

    v50 = 0;
    goto LABEL_107;
  }

  v12 = [v11 value];
  j = [KmlTlv TLVsWithData:v12];

  v14 = objc_opt_new();
  v15 = *(a1 + 64);
  *(a1 + 64) = v14;

  if (![j count])
  {
    v51 = KmlLogger();
    if (sub_10004F844(v51))
    {
      sub_10036F470("[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]", 4.8151e-34);
      v148 = 71;
      sub_10036F4E4(&_mh_execute_header, v52, v53, "%s : %i : Missing cert sets", &v146);
    }

    HIBYTE(v130) = 0;
    goto LABEL_106;
  }

  v112 = a1;
  [j sortedArrayUsingComparator:&stru_1004D1BC0];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v16 = v124 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v121 objects:v152 count:16];
  v110 = v16;
  if (!v17)
  {
    v47 = 0;
    v46 = -48;
LABEL_51:

    if ([v47 count])
    {
      if ([*(v112 + 64) count] == v46)
      {
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v64 = v47;
        v65 = [v64 countByEnumeratingWithState:&v113 objects:&v131 count:{16, j, v5, v3}];
        if (!v65)
        {
LABEL_88:

          v78 = v64;
          if ([*(v112 + 64) count])
          {
            v79 = [*(v112 + 64) lastObject];
            v80 = [v79 value];
            v81 = *(v112 + 72);
            *(v112 + 72) = v80;
          }

          else
          {
            v102 = *(v112 + 56);
            v79 = *(v112 + 72);
            *(v112 + 72) = v102;
          }

          sub_10036F644();

          v103 = KmlLogger();
          if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
          {
            sub_10036F470("[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]", 4.8151e-34);
            v148 = 158;
            sub_10036DC0C(&_mh_execute_header, v103, v104, "%s : %i : Sucessfully parsed sharing initiator cert chain from data", &v146);
          }

          HIBYTE(v130) = 1;
          v86 = v110;
          v47 = v78;
          goto LABEL_105;
        }

        v66 = v65;
        v67 = 0;
        j = *v114;
LABEL_55:
        v68 = 0;
        while (1)
        {
          if (*v114 != j)
          {
            objc_enumerationMutation(v64);
          }

          v3 = *(*(&v113 + 1) + 8 * v68);
          if ([v3 tag] != 32544)
          {
            break;
          }

          v69 = [v3 value];
          v70 = *(v112 + 40);
          *(v112 + 40) = v69;

LABEL_74:
          if (v66 == ++v68)
          {
            v77 = [v64 countByEnumeratingWithState:&v113 objects:&v131 count:16];
            v66 = v77;
            if (!v77)
            {
              goto LABEL_88;
            }

            goto LABEL_55;
          }
        }

        if ([v3 tag] == 32546 || objc_msgSend(v3, "tag") == 32578)
        {
          v71 = [v3 value];
          v5 = v112;
          v72 = *(v112 + 48);
          *(v112 + 48) = v71;

          if (v67)
          {
            if (*(v112 + 9) != 1)
            {
              goto LABEL_66;
            }

            if ([v3 tag] == 32546)
            {
              goto LABEL_100;
            }

            if ((*(v112 + 9) & 1) == 0)
            {
LABEL_66:
              if ([v3 tag] == 32578)
              {
LABEL_100:
                v47 = v64;
                v94 = KmlLogger();
                if (sub_10036F548(v94))
                {
                  v146 = 136315394;
                  v147 = "[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]";
                  sub_10036F4D8();
                  *(v95 + 14) = 139;
                  goto LABEL_102;
                }

                goto LABEL_103;
              }
            }

            goto LABEL_73;
          }

          v73 = [v3 tag] == 32578;
        }

        else
        {
          if ([v3 tag] != 32548)
          {
            [v3 tag];
            sub_10036F650();
            if (!v73)
            {
              goto LABEL_74;
            }
          }

          v75 = [v3 value];
          v5 = v112;
          v76 = *(v112 + 56);
          *(v112 + 56) = v75;

          if (v67)
          {
            if (*(v112 + 9) != 1)
            {
              goto LABEL_84;
            }

            if ([v3 tag] == 32548)
            {
              goto LABEL_113;
            }

            if ((*(v112 + 9) & 1) == 0)
            {
LABEL_84:
              [v3 tag];
              sub_10036F650();
              if (v73)
              {
LABEL_113:
                v47 = v64;
                v105 = KmlLogger();
                if (sub_10036F548(v105))
                {
                  v146 = 136315394;
                  v147 = "[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]";
                  sub_10036F4D8();
                  *(v106 + 14) = 150;
LABEL_102:
                  sub_10036F4C8();
                  _os_log_impl(v96, v97, v98, v99, v100, 0x12u);
                }

LABEL_103:
                sub_10036F644();

                HIBYTE(v130) = 0;
                goto LABEL_104;
              }
            }

            goto LABEL_73;
          }

          [v3 tag];
          sub_10036F650();
        }

        v74 = v73;
        v5[9] = v74;
LABEL_73:
        v67 = 1;
        goto LABEL_74;
      }

      v88 = KmlLogger();
      if (!sub_10036F548(v88))
      {
LABEL_99:

        HIBYTE(v130) = 0;
LABEL_104:
        v86 = v110;
        goto LABEL_105;
      }

      sub_10036F470("[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]", 4.8151e-34);
      v148 = 122;
    }

    else
    {
      v87 = KmlLogger();
      if (!sub_10036F548(v87))
      {
        goto LABEL_99;
      }

      sub_10036F470("[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]", 4.8151e-34);
      v148 = 117;
    }

    sub_10036F4C8();
    _os_log_impl(v89, v90, v91, v92, v93, 0x12u);
    goto LABEL_99;
  }

  v18 = v17;
  v107 = j;
  v108 = v5;
  v109 = v3;
  v5 = 0;
  v111 = 0;
  v19 = *v122;
LABEL_16:
  v20 = 0;
  while (1)
  {
    if (*v122 != v19)
    {
      objc_enumerationMutation(v16);
    }

    v3 = *(*(&v121 + 1) + 8 * v20);
    if ([v3 tag] < 0x30 || objc_msgSend(v3, "tag") > 0x3E)
    {
      goto LABEL_39;
    }

    if ([v3 tag] == v5)
    {
      v54 = KmlLogger();
      if (!sub_10036F548(v54))
      {
        goto LABEL_93;
      }

      [v3 tag];
      v146 = 136315650;
      v147 = "[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]";
      sub_10036F4D8();
      *(v55 + 14) = 91;
      v149 = v56;
      v150 = v57;
      sub_10036F4C8();
      v63 = 24;
      goto LABEL_92;
    }

    if ([v3 tag] != 48)
    {
      break;
    }

    v21 = v4[276];
    v22 = [v3 value];
    v23 = [v21 TLVsWithData:v22];

    v111 = v23;
LABEL_38:

    v5 = [v3 tag];
LABEL_39:
    if (++v20 == v18)
    {
      v18 = [v16 countByEnumeratingWithState:&v121 objects:v152 count:16];
      if (!v18)
      {
        v46 = v5 - 48;
        sub_10036F644();
        v47 = v111;
        goto LABEL_51;
      }

      goto LABEL_16;
    }
  }

  if ([v3 tag] - v5 == 1)
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v24 = v4[276];
    v25 = [v3 value];
    v22 = [v24 TLVsWithData:v25];

    v34 = sub_10036F65C(v26, v27, v28, v29, v30, v31, v32, v33, v107, v108, v109, v110, v111, v112, v113, *(&v113 + 1), v114, *(&v114 + 1), v115, *(&v115 + 1), v116, *(&v116 + 1), 0, 0, 0, 0, 0, 0, 0, 0, v121, *(&v121 + 1), v122, *(&v122 + 1), v123, *(&v123 + 1), v124, *(&v124 + 1), v125, *(&v125 + 1), v126, *(&v126 + 1), v127, *(&v127 + 1), v128, *(&v128 + 1), v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
    if (v34)
    {
      v35 = v34;
      v36 = *v118;
      while (2)
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v118 != v36)
          {
            objc_enumerationMutation(v22);
          }

          v37 = *(*(&v117 + 1) + 8 * j);
          if ([v37 tag] != 32548)
          {
            [v37 tag];
            sub_10036F650();
            if (!v73)
            {
              continue;
            }
          }

          [*(v112 + 64) addObject:v37];
          goto LABEL_36;
        }

        v35 = sub_10036F65C(v38, v39, v40, v41, v42, v43, v44, v45, v107, v108, v109, v110, v111, v112, v113, *(&v113 + 1), v114, *(&v114 + 1), v115, *(&v115 + 1), v116, *(&v116 + 1), v117, *(&v117 + 1), v118, *(&v118 + 1), v119, *(&v119 + 1), v120, *(&v120 + 1), v121, *(&v121 + 1), v122, *(&v122 + 1), v123, *(&v123 + 1), v124, *(&v124 + 1), v125, *(&v125 + 1), v126, *(&v126 + 1), v127, *(&v127 + 1), v128, *(&v128 + 1), v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
        if (v35)
        {
          continue;
        }

        break;
      }

LABEL_36:
      v16 = v110;
    }

    v4 = &swift_cvw_destroy_ptr;
    goto LABEL_38;
  }

  v82 = KmlLogger();
  if (!sub_10036F548(v82))
  {
    goto LABEL_93;
  }

  [v3 tag];
  v146 = 136315906;
  v147 = "[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]";
  sub_10036F4D8();
  *(v83 + 14) = 100;
  v149 = v84;
  v150 = v5;
  v151 = v84;
  *(v83 + 26) = v85;
  sub_10036F4C8();
  v63 = 30;
LABEL_92:
  _os_log_impl(v58, v59, v60, v61, v62, v63);
LABEL_93:
  sub_10036F644();

  HIBYTE(v130) = 0;
  v86 = v110;

  v47 = v111;
LABEL_105:

LABEL_106:
  v50 = HIBYTE(v130);
LABEL_107:

LABEL_108:
  return v50;
}

id sub_1003BB820(uint64_t a1)
{
  v2 = a1;
  if (a1)
  {
    v3 = +[NSMutableData data];
    v4 = +[NSMutableData data];
    if ([*(v2 + 40) length])
    {
      v5 = [KmlTlv TLVWithTag:32544 value:*(v2 + 40)];
      v6 = [v5 asData];
      sub_10036F5A8(v6);
    }

    if ([*(v2 + 48) length])
    {
      if (*(v2 + 9))
      {
        v7 = 32578;
      }

      else
      {
        v7 = 32546;
      }

      v8 = [KmlTlv TLVWithTag:v7 value:*(v2 + 48)];
      v9 = [v8 asData];
      sub_10036F5A8(v9);
    }

    if ([*(v2 + 56) length])
    {
      if (*(v2 + 9))
      {
        v10 = 32580;
      }

      else
      {
        v10 = 32548;
      }

      v11 = [KmlTlv TLVWithTag:v10 value:*(v2 + 56)];
      v12 = [v11 asData];
      sub_10036F5A8(v12);

      v30 = v3;
      v29 = [KmlTlv TLVWithTag:48 value:v3];
      v13 = [v29 asData];
      [v4 appendData:v13];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v14 = *(v2 + 64);
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        v18 = 49;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v31 + 1) + 8 * i);
            if (v18 >= 0x3Fu)
            {
              v21 = KmlLogger();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v37 = "[SharingInitiatorCertChain certChainAsData]";
                v38 = 1024;
                v39 = 191;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s : %i : There are too many certificate sets in the cert chain", buf, 0x12u);
              }
            }

            v22 = [v20 asData];
            v23 = [KmlTlv TLVWithTag:v18 value:v22];

            v24 = [v23 asData];
            [v4 appendData:v24];

            ++v18;
          }

          v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v16);
      }

      v25 = [KmlTlv TLVWithTag:32555 value:v4];
      v2 = [v25 asData];

      v26 = v29;
      v3 = v30;
    }

    else
    {
      v26 = KmlLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v37 = "[SharingInitiatorCertChain certChainAsData]";
        v38 = 1024;
        v39 = 180;
        sub_10036F500(&_mh_execute_header, v26, v27, "%s : %i : Endpoint cert is required to create cert chain", buf);
      }

      v2 = 0;
    }
  }

  return v2;
}

uint64_t sub_1003BBBD8(uint64_t a1)
{
  if (a1)
  {
    return ([*(a1 + 64) count] + 1);
  }

  else
  {
    return 0;
  }
}

NSObject *sub_1003BBC0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 64);
    if (v4 && [(objc_class *)v4 count]>= 0xE)
    {
      v5 = KmlLogger();
      if (sub_10036F5DC(v5))
      {
        sub_10036DB8C();
        v13 = 212;
        v7 = "%s : %i : Maximum number of certs in chain reached, can't share further";
LABEL_10:
        sub_10036F500(&_mh_execute_header, a1, v6, v7, v12);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    if (![v3 length])
    {
      v10 = KmlLogger();
      if (sub_10036F5DC(v10))
      {
        sub_10036DB8C();
        v13 = 217;
        v7 = "%s : %i : Empty endpoint cert supplied";
        goto LABEL_10;
      }

LABEL_11:

      a1 = 0;
      goto LABEL_12;
    }

    v8 = *(a1 + 64);
    v9 = [KmlTlv TLVWithTag:32548 value:v3];
    [(objc_class *)v8 addObject:v9];

    a1 = 1;
  }

LABEL_12:

  return a1;
}

uint64_t sub_1003BBD64(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (!a1)
  {
    v18 = 0;
    goto LABEL_24;
  }

  v8 = SecCertificateCreateWithData(0, *(a1 + 72));
  v9 = v8;
  if (v8)
  {
    v10 = SecCertificateCopyKey(v8);
    if (v10)
    {
      v11 = v10;
      if (SecKeyIsAlgorithmSupported(v10, kSecKeyOperationTypeVerify, kSecKeyAlgorithmECDSASignatureMessageRFC4754SHA256))
      {
        error = 0;
        if (SecKeyVerifySignature(v11, kSecKeyAlgorithmECDSASignatureMessageRFC4754SHA256, v6, v7, &error))
        {
          v12 = KmlLogger();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            sub_10036BED0();
            v41 = 265;
            sub_10036F584();
            sub_10036DC0C(v13, v14, v15, v16, v17);
          }

          v18 = 1;
          goto LABEL_22;
        }

        v30 = error;
        v31 = KmlLogger();
        if (sub_10036F5C4(v31))
        {
          v39 = 136315650;
          v40 = "[SharingInitiatorCertChain verifyAttestationPackage:withSignature:]";
          sub_10036F4A8();
          sub_10036F460();
          v42 = v30;
          sub_10036F584();
          sub_10036F590(v32, v33, v34, v35, v36);
        }
      }

      else
      {
        v24 = KmlLogger();
        if (sub_10036F5C4(v24))
        {
          sub_10036BED0();
          v41 = 261;
          sub_10036F584();
          sub_10036F500(v25, v26, v27, v28, v29);
        }
      }

      v18 = 0;
LABEL_22:
      CFRelease(v11);
      goto LABEL_23;
    }

    v23 = KmlLogger();
    if (sub_10004F844(v23))
    {
      sub_10036BED0();
      v41 = 239;
      v22 = "%s : %i : Unable to retrieve public key from cert";
      goto LABEL_13;
    }
  }

  else
  {
    v19 = KmlLogger();
    if (sub_10004F844(v19))
    {
      sub_10036BED0();
      v41 = 232;
      v22 = "%s : %i : Invalid last endpoint cert";
LABEL_13:
      sub_10036F4E4(&_mh_execute_header, v20, v21, v22, &v39);
    }
  }

  v18 = 0;
LABEL_23:

LABEL_24:
  return v18;
}

BOOL sub_1003BBFF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    v38 = 0;
    goto LABEL_65;
  }

  v4 = SecCertificateCreateWithData(0, *(a1 + 56));
  if (!v4)
  {
    v36 = KmlLogger();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_100367248();
      v92 = 278;
      sub_10036F500(&_mh_execute_header, v36, v37, "%s : %i : Invalid endpoint cert", buf);
    }

    v38 = 0;
    goto LABEL_64;
  }

  sub_10036F638();
  SecCertificateCopyCommonName(v4, v5);
  v6 = cf;
  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    sub_100367248();
    sub_10036F484();
    v94 = cf;
    sub_100367454(&_mh_execute_header, v7, v8, "%s : %i : Received endpointCommonName): %@", buf);
  }

  v9 = SecCertificateGetAuthorityKeyID();
  v10 = KmlLogger();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = kmlUtilHexStringFromData();
    sub_100367248();
    sub_10036F484();
    v94 = v12;
    sub_100367454(&_mh_execute_header, v10, v13, "%s : %i : Endpoint certificateAuthorityKeyID=%@", buf);
  }

  if (v9)
  {
    v86 = objc_opt_new();
    [v86 addObject:v4];
    if (*(a1 + 9) == 1)
    {
      v85 = sub_1003BC798(a1, v4);
      v14 = *(a1 + 24);
      *(a1 + 24) = v85;
    }

    else
    {
      v14 = KmlLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        sub_100367248();
        v92 = 300;
        sub_10036F620();
        sub_10036DC0C(v15, v16, v17, v18, v19);
      }
    }

    v20 = *(a1 + 48);
    if (v20)
    {
      v21 = SecCertificateCreateWithData(0, v20);
      if (!v21)
      {
        v64 = KmlLogger();
        if (sub_10036F5C4(v64))
        {
          sub_100367248();
          v92 = 308;
          sub_10036F62C();
          sub_10036F500(v65, v66, v67, v68, v69);
        }

        v88 = 0;
        goto LABEL_62;
      }

      v22 = v21;
      sub_10036F638();
      SecCertificateCopyCommonName(v23, v24);
      v25 = KmlLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        sub_10036F4B4();
        sub_10036DCB0();
        sub_10036F620();
        sub_100367454(v26, v27, v28, v29, v30);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      [v86 addObject:v22];
      v31 = SecCertificateGetAuthorityKeyID();

      v32 = KmlLogger();
      if (sub_10036F124(v32))
      {
        v33 = kmlUtilHexStringFromData();
        *buf = 136315650;
        v90 = "[SharingInitiatorCertChain isFirstSharerCertChainTrustedForManufacturer:]";
        v91 = 1024;
        sub_10036F484();
        v94 = v34;
        sub_100367454(&_mh_execute_header, v9, v35, "%s : %i : Intermediate certificateAuthorityKeyID=%@", buf);
      }
    }

    else
    {
      v31 = v9;
    }

    v39 = *(a1 + 40);
    if (v39)
    {
      v40 = SecCertificateCreateWithData(0, v39);
      if (!v40)
      {
        v78 = KmlLogger();
        if (sub_10004F844(v78))
        {
          sub_100367248();
          v92 = 328;
          sub_10036F4E4(&_mh_execute_header, v79, v80, "%s : %i : Invalid ext CA cert", buf);
        }

        v88 = 0;
        v9 = v31;
        goto LABEL_62;
      }

      v41 = v40;
      sub_10036F638();
      SecCertificateCopyCommonName(v42, v43);
      v44 = KmlLogger();
      if (sub_10036F124(v44))
      {
        sub_10036F4B4();
        sub_10036DCB0();
        sub_100367454(&_mh_execute_header, v9, v45, "%s : %i : Ext CA certificate CommonName: %@", buf);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      [v86 addObject:v41];
      v9 = SecCertificateGetAuthorityKeyID();

      v46 = KmlLogger();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = kmlUtilHexStringFromData();
        sub_100367248();
        sub_10036F484();
        v94 = v48;
        sub_10036F620();
        sub_100367454(v49, v50, v51, v52, v53);
      }
    }

    else
    {
      v9 = v31;
    }

    v54 = objc_opt_new();
    v55 = [v54 getRootCertificateFor:v3 keyId:v9];

    if (v55)
    {
      v56 = SecCertificateCreateWithData(0, v55);
      if (v56)
      {
        sub_10036F638();
        SecCertificateCopyCommonName(v56, v57);
        v58 = KmlLogger();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          sub_10036F4B4();
          sub_10036DCB0();
          sub_100367454(&_mh_execute_header, v58, v59, "%s : %i : Root certificate CommonName: %@", buf);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v60 = SecCertificateCopyIssuerSummary();
        v61 = KmlLogger();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v90 = "[SharingInitiatorCertChain isFirstSharerCertChainTrustedForManufacturer:]";
          v91 = 1024;
          sub_10036F484();
          v94 = v60;
          sub_100367454(&_mh_execute_header, v61, v62, "%s : %i : rootCert certificateIssuer=%@", buf);
        }

        v63 = sub_100396990(KmlEndpointCreationConfig, v56, v86);
        v6 = cf;
      }

      else
      {
        v60 = KmlLogger();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          sub_100367248();
          v92 = 374;
          sub_10036DC0C(&_mh_execute_header, v60, v81, "%s : %i : Root certificate is nil", buf);
        }

        v63 = 0;
      }

      v82 = KmlLogger();
      if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
      {
        v83 = @"NO";
        *buf = 136315906;
        v90 = "[SharingInitiatorCertChain isFirstSharerCertChainTrustedForManufacturer:]";
        v91 = 1024;
        if (v63)
        {
          v83 = @"YES";
        }

        v92 = 377;
        v93 = 2112;
        v94 = v3;
        v95 = 2112;
        v96 = v83;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_INFO, "%s : %i : Verified that first sharer cert is signed by %@ : %@", buf, 0x26u);
      }

      v88 = v63;
    }

    else
    {
      v70 = KmlLogger();
      if (sub_10036F548(v70))
      {
        v71 = kmlUtilHexStringFromData();
        sub_100367248();
        sub_10036F484();
        v94 = v72;
        sub_10036F620();
        sub_10036F590(v73, v74, v75, v76, v77);
      }

      v88 = 0;
    }

LABEL_62:
    goto LABEL_63;
  }

  v88 = 0;
LABEL_63:

  v38 = v88;
LABEL_64:

LABEL_65:
  return v38;
}

id sub_1003BC798(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = SecCertificateCopyExtensionValue();
    v3 = KmlLogger();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = kmlUtilHexStringFromData();
      v26 = 136315650;
      v27 = "[SharingInitiatorCertChain getServiceProviderForCert:]";
      sub_10036F4A8();
      sub_10036F460();
      v28 = v5;
      sub_10036F5F4(&_mh_execute_header, v3, v6, "%s : %i : Extension: %@", &v26);
    }

    v7 = [KmlTlv TLVsWithData:v2];
    if ([v7 count])
    {
      v8 = [v7 objectAtIndexedSubscript:0];
      v9 = [v8 value];
    }

    else
    {
      v9 = 0;
    }

    v10 = [KmlTlv TLVsWithData:v9];
    [v10 count];
    v11 = KmlLogger();
    if (sub_10036F5C4(v11))
    {
      [v10 count];
      v26 = 136315906;
      v27 = "[SharingInitiatorCertChain getServiceProviderForCert:]";
      sub_10036F4A8();
      sub_10036F460();
      v28 = @"No";
      v29 = 2048;
      v30 = v12;
      sub_10036F584();
      _os_log_impl(v13, v14, OS_LOG_TYPE_ERROR, v15, v16, 0x26u);
    }

    v17 = KmlLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = kmlUtilHexStringFromData();
      v26 = 136315650;
      v27 = "[SharingInitiatorCertChain getServiceProviderForCert:]";
      sub_10036F4A8();
      sub_10036F460();
      v28 = v19;
      sub_10036F584();
      sub_10036F5F4(v20, v21, v22, v23, v24);
    }
  }

  return 0;
}

uint64_t sub_1003BCA70(NSObject *a1, void *a2, NSObject *a3, NSObject **a4)
{
  v7 = a2;
  if (!a1)
  {
    v34 = 0;
    goto LABEL_62;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (sub_1003F6F5C(v8))
  {
    v9 = objc_opt_new();
    v10 = [v9 disableFleetKeyStrictShareInitCertChainValidation];
    v11 = [v9 disablePrivateKeyStrictShareInitCertChainValidation];
    v12 = [v9 disableOptTwoShareInitCertChainValidation];
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  v70 = 0;
  v13 = sub_1003BD1A4(a1, a3, v7, &v70);
  v14 = v70;
  if ((v13 & 1) == 0)
  {
    v15 = KmlLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      sub_100367390();
      v74 = 413;
      sub_10036F500(&_mh_execute_header, v15, v16, "%s : %i : Unable to verify option two settings for cert chain", buf);
    }

    if (!v12)
    {
      goto LABEL_58;
    }

    v17 = KmlLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      sub_100367390();
      v74 = 415;
      sub_10036F560();
      _os_log_impl(v18, v19, OS_LOG_TYPE_DEBUG, v20, v21, 0x12u);
    }
  }

  isa = a1[10].isa;
  v23 = KmlLogger();
  v24 = v23;
  if (isa)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      sub_100367390();
      v74 = 436;
      sub_10036F560();
      sub_10036DC0C(v37, v38, v39, v40, v41);
    }

    if (!sub_1003BBFF4(a1, v7))
    {
      v42 = KmlLogger();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        sub_100367390();
        sub_10036F60C();
        sub_10036F560();
        sub_10036F590(v43, v44, v45, v46, v47);
      }

      if ((kmlUtilIsFleetKey() & 1) != 0 || ((kmlUtilIsFleetKey() | v11) & 1) == 0)
      {
        if (!a4)
        {
          goto LABEL_60;
        }

        if (kmlUtilIsFleetKey())
        {
          v48 = 224;
        }

        else
        {
          v48 = 227;
        }

        v35 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        v71 = NSLocalizedDescriptionKey;
        v49 = [NSString stringWithUTF8String:KmlErrorString()];
        v72 = v49;
        v50 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        *a4 = [NSError errorWithDomain:v35 code:v48 userInfo:v50];

        goto LABEL_25;
      }

      v51 = KmlLogger();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        sub_100367390();
        sub_10036F60C();
        sub_10036F560();
        sub_10036F5F4(v52, v53, v54, v55, v56);
      }
    }

    sub_1003BD764(a1);
    v69 = v14;
    v57 = sub_1003BD998(a1, &v69);
    v58 = v69;

    if ((v57 & 1) == 0)
    {
      v59 = KmlLogger();
      if (sub_10036F5DC(v59))
      {
        *buf = 136315394;
        sub_100367390();
        v74 = 457;
        sub_10036F500(&_mh_execute_header, v14, v60, "%s : %i : Unable to verify first cert set service provider", buf);
      }

      if (a4)
      {
        v61 = v58;
        v34 = 0;
        *a4 = v58;
      }

      else
      {
        v34 = 0;
      }

      v14 = v58;
      goto LABEL_61;
    }

    v68 = v58;
    v62 = sub_1003BDDCC(a1, &v68);
    v14 = v68;

    if (v62)
    {
LABEL_49:
      v30 = KmlLogger();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      *buf = 136315394;
      sub_100367390();
      v74 = 477;
      v31 = "%s : %i : Successfully verified cert chain!";
      v32 = v30;
      v33 = OS_LOG_TYPE_INFO;
      goto LABEL_21;
    }

    v63 = KmlLogger();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      sub_100367390();
      v74 = 465;
      sub_10036F500(&_mh_execute_header, v63, v64, "%s : %i : Unable to verify service providers in cert chain", buf);
    }

    if (v10 & 1 | ((kmlUtilIsFleetKey() & 1) == 0) && ((kmlUtilIsFleetKey() | v11) & 1) != 0)
    {
      v65 = KmlLogger();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        sub_100367390();
        v74 = 473;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "%s : %i : Continuing to validate despite failing to validate intermediate cert service providers", buf, 0x12u);
      }

      goto LABEL_49;
    }

LABEL_58:
    if (a4)
    {
      v66 = v14;
      v34 = 0;
      *a4 = v14;
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    sub_100367390();
    v74 = 425;
    sub_10036F560();
    sub_10036F500(v25, v26, v27, v28, v29);
  }

  if (kmlUtilIsFleetKey() & 1) != 0 || ((v11 ^ 1))
  {
    if (a4)
    {
      v35 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v75[0] = NSLocalizedDescriptionKey;
      v36 = [NSString stringWithUTF8String:KmlErrorString()];
      v75[1] = NSLocalizedFailureReasonErrorKey;
      v76[0] = v36;
      v76[1] = @"Missing sharing initiator cert chain";
      [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:2];
      objc_claimAutoreleasedReturnValue();
      *a4 = [sub_10036F56C() errorWithDomain:? code:? userInfo:?];

LABEL_25:
    }

LABEL_60:
    v34 = 0;
    goto LABEL_61;
  }

  v30 = KmlLogger();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    sub_100367390();
    v74 = 427;
    v31 = "%s : %i : Ignoring missing cert chain and returning that cert chain is valid";
    v32 = v30;
    v33 = OS_LOG_TYPE_DEBUG;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v32, v33, v31, buf, 0x12u);
  }

LABEL_22:

  v34 = 1;
LABEL_61:

LABEL_62:
  return v34;
}

uint64_t sub_1003BD1A4(uint64_t a1, NSObject *a2, void *a3, uint64_t a4)
{
  v8 = a3;
  if (!a1)
  {
    a4 = 0;
    goto LABEL_12;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v9 = *(a1 + 9);
  if (v9 == kmlUtilIsFleetKey())
  {
    v15 = sub_1003BE1AC(a1);
    v12 = v15;
    if (!v15)
    {
      v22 = KmlLogger();
      if (sub_10004F844(v22))
      {
        sub_10036BED0();
        v54 = 499;
        sub_10036F4E4(&_mh_execute_header, v23, v24, "%s : %i : Unable to retrieve optionTwo from cert chain", &v52);
      }

      if (!a4)
      {
        goto LABEL_11;
      }

      a2 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v58[0] = NSLocalizedDescriptionKey;
      v13 = [NSString stringWithUTF8String:KmlErrorString()];
      v58[1] = NSLocalizedFailureReasonErrorKey;
      v59[0] = v13;
      v59[1] = @"Unable to retrieve optionTwo from last endpoint cert";
      v20 = v59;
      v21 = v58;
LABEL_23:
      [NSDictionary dictionaryWithObjects:v20 forKeys:v21 count:2];
      objc_claimAutoreleasedReturnValue();
      *a4 = [sub_10036F56C() errorWithDomain:? code:? userInfo:?];

      goto LABEL_9;
    }

    [v15 unsignedCharValue];
    IsFleetKey = kmlUtilIsFleetKey();
    if (IsFleetKey != kmlUtilIsFleetKey())
    {
      v17 = KmlLogger();
      if (sub_10004F844(v17))
      {
        sub_10036BED0();
        v54 = 505;
        sub_10036F4E4(&_mh_execute_header, v18, v19, "%s : %i : OptionTwo from endpoint and cert chain disagree on key being a fleet key", &v52);
      }

      if (!a4)
      {
        goto LABEL_11;
      }

      a2 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v56[0] = NSLocalizedDescriptionKey;
      v13 = [NSString stringWithUTF8String:KmlErrorString()];
      v56[1] = NSLocalizedFailureReasonErrorKey;
      v57[0] = v13;
      v57[1] = @"OptionTwo from endpoint and cert chain disagree on key being a fleet key";
      v20 = v57;
      v21 = v56;
      goto LABEL_23;
    }

    if (kmlUtilIsFleetKey())
    {
      v25 = KmlLogger();
      if (sub_10036F124(v25))
      {
        sub_10036BED0();
        v54 = 514;
        sub_10036F518(&_mh_execute_header, v26, v27, "%s : %i : We have received an invitation for a fleet vehicle", v28, v29, v30, v31, v50, v51);
      }

      a2 = objc_opt_new();
      v51 = 0;
      v32 = [a2 fleetManufacturerAllowListWithError:&v51];
      v13 = v51;
      if (v13 || ([v32 containsObject:v8] & 1) == 0)
      {
        v46 = KmlLogger();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v52 = 136315650;
          v53 = "[SharingInitiatorCertChain verifyOptionTwoSettings:forManufacturer:withError:]";
          sub_10036F4A8();
          sub_10036F460();
          v55 = v8;
          sub_10036F590(&_mh_execute_header, v46, v47, "%s : %i : %@ is not in allow list for fleet cars", &v52);
        }

        if (a4)
        {
          v48 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          v49 = [v13 userInfo];
          *a4 = [NSError errorWithDomain:v48 code:223 userInfo:v49];
        }

        goto LABEL_9;
      }
    }

    else
    {
      if (!kmlUtilIsServerIssuedKey())
      {
        goto LABEL_34;
      }

      v33 = KmlLogger();
      if (sub_10036F124(v33))
      {
        sub_10036BED0();
        v54 = 530;
        sub_10036F518(&_mh_execute_header, v34, v35, "%s : %i : We have received an invitation for private car from server", v36, v37, v38, v39, v50, v51);
      }
    }

LABEL_34:
    a2 = KmlLogger();
    a4 = 1;
    if (os_log_type_enabled(a2, OS_LOG_TYPE_INFO))
    {
      sub_10036BED0();
      v54 = 534;
      sub_10036F518(&_mh_execute_header, v40, v41, "%s : %i : Successfully verified option two settings for cert chain", v42, v43, v44, v45, v50, v51);
    }

    goto LABEL_10;
  }

  v10 = KmlLogger();
  if (sub_10036F5DC(v10))
  {
    sub_10036BED0();
    v54 = 489;
    sub_10036F500(&_mh_execute_header, a1, v11, "%s : %i : Origin of first cert set does not agree with option two settings", &v52);
  }

  if (a4)
  {
    v12 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v60[0] = NSLocalizedDescriptionKey;
    a2 = [NSString stringWithUTF8String:KmlErrorString()];
    v60[1] = NSLocalizedFailureReasonErrorKey;
    v61[0] = a2;
    v61[1] = @"Origin of first cert set does not agree with option two settings";
    v13 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
    *a4 = [NSError errorWithDomain:v12 code:105 userInfo:v13];
LABEL_9:

    a4 = 0;
LABEL_10:

LABEL_11:
  }

LABEL_12:

  return a4;
}

void sub_1003BD764(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = *(a1 + 32);
    *(a1 + 32) = v2;

    *(a1 + 8) = 0;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = *(a1 + 64);
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v20;
      *&v6 = 136315650;
      v18 = v6;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          v11 = [v10 value];
          v12 = SecCertificateCreateWithData(0, v11);

          if ([v10 tag] == 32548)
          {
            ++*(a1 + 8);
          }

          else if ([v10 tag] == 32580)
          {
            v15 = sub_1003BC798(a1, v12);
            if (v15)
            {
              v16 = v15;
            }

            else
            {
              v16 = @"NIL_SERVICE_PROVIDER";
            }

            [*(a1 + 32) addObject:v16];
          }

          else
          {
            v13 = KmlLogger();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = [v10 tag];
              *buf = v18;
              v24 = "[SharingInitiatorCertChain prepareAdditionalCertsForValidation]";
              v25 = 1024;
              v26 = 557;
              v27 = 1024;
              v28 = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s : %i : Unexpected Tag: 0x%x in cert chain", buf, 0x18u);
            }
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v17 = [v4 countByEnumeratingWithState:&v19 objects:v29 count:16];
        v7 = v17;
      }

      while (v17);
    }
  }
}

uint64_t sub_1003BD998(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  if (a2)
  {
    *a2 = 0;
  }

  if ((*(a1 + 9) & 1) == 0)
  {
    v5 = KmlLogger();
    v3 = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      sub_10036F494();
      v41 = 630;
      sub_10036DC0C(&_mh_execute_header, v5, v16, "%s : %i : First sharer is not server, no service provider to verify", &v38);
    }

    goto LABEL_27;
  }

  if (*(a1 + 24))
  {
    v5 = objc_opt_new();
    v35 = 0;
    v6 = [v5 fleetServiceProviderAllowListWithError:&v35];
    v7 = v35;
    if (v7)
    {
      v8 = KmlLogger();
      if (sub_10036F5C4(v8))
      {
        sub_10036F494();
        v41 = 646;
        sub_10036F62C();
        sub_10036F500(v9, v10, v11, v12, v13);
      }

      if (!v3)
      {
        goto LABEL_26;
      }

      v14 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v15 = [v7 userInfo];
      *v3 = [sub_10036F538() errorWithDomain:? code:? userInfo:?];
    }

    else
    {
      v21 = [v6 containsObject:*(a1 + 24)];
      v22 = KmlLogger();
      v14 = v22;
      if (v21)
      {
        v3 = 1;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          sub_10036F494();
          v41 = 662;
          sub_10036F62C();
          sub_10036DC0C(v23, v24, v25, v26, v27);
        }

        goto LABEL_25;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v38 = 136315650;
        v39 = "[SharingInitiatorCertChain verifyFirstCertServiceProviderWithError:]";
        v40 = 1024;
        sub_10036DCB0();
        sub_10036F62C();
        sub_10036F590(v28, v29, v30, v31, v32);
      }

      if (!v3)
      {
        goto LABEL_26;
      }

      v14 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v36 = NSLocalizedDescriptionKey;
      v15 = [NSString stringWithUTF8String:KmlErrorString()];
      v37 = v15;
      v33 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      *v3 = [sub_10036F538() errorWithDomain:? code:? userInfo:?];
    }

    v3 = 0;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v17 = KmlLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_10036F494();
    v41 = 635;
    sub_10036F500(&_mh_execute_header, v17, v18, "%s : %i : First sharer server endpoint cert missing service provider extension", &v38);
  }

  if (v3)
  {
    v5 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v42 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:KmlErrorString()];
    v43 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    *v3 = [NSError errorWithDomain:v5 code:225 userInfo:v20];

    v3 = 0;
LABEL_27:
  }

  return v3;
}

uint64_t sub_1003BDDCC(NSObject *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  if (a2)
  {
    *a2 = 0;
  }

  if (![(objc_class *)a1[4].isa count])
  {
    v4 = KmlLogger();
    v2 = 1;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v31 = 136315394;
      sub_100367444();
      v32 = 673;
      sub_10036DC0C(&_mh_execute_header, v4, v11, "%s : %i : No additional service providers in cert chain, nothing to verify", v31);
    }

    goto LABEL_29;
  }

  v4 = objc_opt_new();
  v28 = 0;
  v5 = [v4 fleetServiceProviderAllowListWithError:&v28];
  v6 = v28;
  if (v6)
  {
    v7 = KmlLogger();
    if (sub_10036F5C4(v7))
    {
      *v31 = 136315394;
      sub_100367444();
      v32 = 681;
      sub_10036F500(&_mh_execute_header, a1, v8, "%s : %i : Unable to retrieve fleet server allowlist", v31);
    }

    if (!v2)
    {
      goto LABEL_28;
    }

    v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v10 = [v6 userInfo];
    *v2 = [sub_10036F538() errorWithDomain:? code:? userInfo:?];

LABEL_26:
    v2 = 0;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = a1[4].isa;
    v12 = [(objc_class *)v9 countByEnumeratingWithState:&v24 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
LABEL_14:
      v15 = 0;
      while (1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        if (([v5 containsObject:{v16, v24}] & 1) == 0)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [(objc_class *)v9 countByEnumeratingWithState:&v24 objects:v35 count:16];
          if (v13)
          {
            goto LABEL_14;
          }

          goto LABEL_20;
        }
      }

      v18 = KmlLogger();
      if (sub_10036F548(v18))
      {
        *v31 = 136315650;
        sub_100367444();
        v32 = 691;
        v33 = 2112;
        v34 = v16;
        sub_10036F590(&_mh_execute_header, v13, v19, "%s : %i : %@ (additional sharer) is not in allow list for fleet car service provider", v31);
      }

      if (v2)
      {
        v20 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        v29 = NSLocalizedDescriptionKey;
        v21 = [NSString stringWithUTF8String:KmlErrorString()];
        v30 = v21;
        v22 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        *v2 = [NSError errorWithDomain:v20 code:225 userInfo:v22];

        goto LABEL_26;
      }
    }

    else
    {
LABEL_20:

      v9 = KmlLogger();
      v2 = 1;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v31 = 136315394;
        sub_100367444();
        v32 = 700;
        sub_10036DC0C(&_mh_execute_header, v9, v17, "%s : %i : Successfully verified additional service providers in cert chain", v31);
      }
    }
  }

LABEL_28:
LABEL_29:

  return v2;
}

id sub_1003BE1AC(uint64_t a1)
{
  if (a1)
  {
    v2 = SecCertificateCreateWithData(0, *(a1 + 72));
    if (v2)
    {
      v3 = SecCertificateCopyExtensionValue();
      v4 = KmlLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = kmlUtilHexStringFromData();
        *buf = 136315650;
        v22 = "[SharingInitiatorCertChain getOptionTwoForCertData:]";
        sub_10036F4A8();
        sub_10036F460();
        v24 = v6;
        sub_10036F5F4(&_mh_execute_header, v4, v7, "%s : %i : Extension: %@", buf);
      }

      v8 = [KmlTlv TLVsWithData:v3];
      if ([v8 count])
      {
        v9 = [v8 objectAtIndexedSubscript:0];
        v10 = [v9 value];
      }

      else
      {
        v10 = 0;
      }

      v13 = [KmlTlv TLVsWithData:v10];
      [v13 count];
      v14 = KmlLogger();
      if (sub_10036F548(v14))
      {
        [v13 count];
        *buf = 136315906;
        v22 = "[SharingInitiatorCertChain getOptionTwoForCertData:]";
        sub_10036F4A8();
        sub_10036F460();
        v24 = @"No";
        v25 = 2048;
        v26 = v15;
        _os_log_impl(&_mh_execute_header, &swift_cvw_destroy_ptr, OS_LOG_TYPE_ERROR, "%s : %i : Endpoint certificate extension invalid: Marked Critical (%@), sequenceCount(%lu)", buf, 0x26u);
      }

      v16 = KmlLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = kmlUtilHexStringFromData();
        *buf = 136315650;
        v22 = "[SharingInitiatorCertChain getOptionTwoForCertData:]";
        sub_10036F4A8();
        sub_10036F460();
        v24 = v18;
        sub_10036F5F4(&_mh_execute_header, v16, v19, "%s : %i : Extension: %@", buf);
      }
    }

    else
    {
      v11 = KmlLogger();
      if (sub_10036F5DC(v11))
      {
        sub_10036BED0();
        v23 = 594;
        sub_10036F500(&_mh_execute_header, v1, v12, "%s : %i : Unable to retrieve endpoint cert", buf);
      }
    }
  }

  return 0;
}

uint64_t sub_1003BE4E8(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 9) = a2;
  }

  return result;
}

void sub_1003BE4F4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

id sub_1003BE504(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    objc_storeStrong((a1 + 40), a5);
    v12 = a2;
    sub_1003ADB68(*(a1 + 8), v12);

    sub_1003BE4F4(*(a1 + 8), *(a1 + 40));
    sub_1003ADB68(*(a1 + 16), *(a1 + 40));
    sub_1003AAB7C(*(a1 + 24), *(a1 + 40));
    v13 = +[NSMutableData data];
    v14 = *(a1 + 8);
    v15 = sub_1003B85A0(v10);
    sub_1003BF1B0(v14, v15);

    v16 = sub_1003AAA6C(*(a1 + 8));
    v17 = [v16 asData];
    sub_10036F7E4(v17);

    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 40) agreedKmlVehicleVersion], 768))
    {
      v18 = sub_1003AAA78(*(a1 + 8));
      v19 = [v18 asData];
      sub_10036F7E4(v19);
    }

    v20 = *(a1 + 16);
    v21 = sub_1003BA3DC(v10);
    v22 = sub_1003BA3C4(v10);
    v23 = sub_1003BA3D0(v10);
    sub_1003B85C4(v20, v21, v22, v23);

    v24 = sub_1003AAA78(*(a1 + 16));
    v25 = [v24 asData];
    sub_10036F7E4(v25);

    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 40) agreedKmlVehicleVersion], 768))
    {
      v26 = sub_1003AD0FC(*(a1 + 16));
      v27 = [v26 asData];
      sub_10036F7E4(v27);
    }

    v28 = sub_1003BFEA4(*(a1 + 8), v9, v10);
    [v13 appendData:v28];

    v30 = sub_1003BE7A8(a1, v29);
    if ([v30 length])
    {
      [v13 appendData:v30];
    }

    v31 = [KmlTlv TLVWithTag:32561 value:v13];
    v32 = *(a1 + 32);
    *(a1 + 32) = v31;

    a1 = [*(a1 + 32) asData];
  }

  return a1;
}

id sub_1003BE7A8(uint64_t a1, double a2)
{
  v3 = a1;
  if (a1)
  {
    if (sub_1003F6F5C(a2))
    {
      v5 = objc_opt_new();
      v6 = [v5 mockFleetEndpointCert];
      v7 = [v5 mockFleetIntermediateCert];
      v8 = [v5 mockFleetExtCaCert];
      v9 = ![v6 length] && !objc_msgSend(v7, "length") && objc_msgSend(v8, "length") == 0;

      if (sub_1003F6F5C(v10) && !v9)
      {
        v11 = KmlLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          sub_10036DB8C();
          v65 = 136;
          sub_10036F7C4(&_mh_execute_header, v12, v13, "%s : %i : Using mock certs for sharer cert chain", v14, v15, v16, v17);
        }

        if ([v6 length] && (objc_msgSend(v7, "length") || objc_msgSend(v8, "length")))
        {
          sub_1003BE4E8(*(v3 + 24), 1);
          sub_1003BAE64(*(v3 + 24), v6);
          if ([v7 length])
          {
            sub_1003BE4F4(*(v3 + 24), v7);
          }

          if ([v8 length])
          {
            sub_1003ADB68(*(v3 + 24), v8);
          }

          v18 = sub_1003BFE98(*(v3 + 8));
          v19 = [v18 readerInfo];

          v20 = [[KmlRoutingInformation alloc] initWithReaderInformation:v19];
          v21 = *(v3 + 24);
          v22 = [v20 manufacturer];
          v23 = sub_1003BBFF4(v21, v22);

          v2 = KmlLogger();
          if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
          {
            v24 = @"No";
            v63 = "[KeySharingInvitation getSharerCertChain]";
            v62 = 136315650;
            if (v23)
            {
              v24 = @"Yes";
            }

            v64 = 1024;
            v65 = 157;
            v66 = 2112;
            v67 = v24;
            _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Is the test cert chain trusted: %@", &v62, 0x1Cu);
          }

LABEL_34:

          v3 = sub_1003BB820(*(v3 + 24));
LABEL_40:

          goto LABEL_41;
        }

        v42 = KmlLogger();
        if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          goto LABEL_38;
        }

        sub_10036DB8C();
        v65 = 139;
        v43 = "%s : %i : Can't use mock certs for cert chain, missing certs";
        goto LABEL_37;
      }
    }

    else
    {
      sub_1003F6F5C(v4);
      v6 = 0;
      v7 = 0;
      v8 = 0;
    }

    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(v3 + 40) agreedKmlVehicleVersion], 768))
    {
      v25 = sub_1003BFE98(*(v3 + 8));
      v26 = sub_100399BE8(KmlEndpointManager, v25);

      if ((v26 & 1) != 0 || (sub_1003BFE98(*(v3 + 8)), v27 = objc_claimAutoreleasedReturnValue(), [v27 shareInitiatorCertificateChainData], v28 = objc_claimAutoreleasedReturnValue(), v2 = objc_msgSend(v28, "length"), v28, v27, !v2))
      {
        v44 = KmlLogger();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          sub_10036DB8C();
          v65 = 169;
          sub_10036F7C4(&_mh_execute_header, v45, v46, "%s : %i : Constructing initiator cert chain for owner key or migrated friend key", v47, v48, v49, v50);
        }

        sub_1003BE4E8(*(v3 + 24), 0);
        v51 = sub_1003BFE98(*(v3 + 8));
        v52 = [v51 certificates];
        [v52 objectAtIndexedSubscript:2];
        objc_claimAutoreleasedReturnValue();
        v53 = sub_10036F800();
        sub_1003BAE64(v53, v54);

        v55 = sub_1003BFE98(*(v3 + 8));
        v56 = [v55 certificates];
        [v56 objectAtIndexedSubscript:1];
        objc_claimAutoreleasedReturnValue();
        v57 = sub_10036F800();
        sub_1003BE4F4(v57, v58);

        v19 = sub_1003BFE98(*(v3 + 8));
        v20 = [v19 certificates];
        [v20 objectAtIndexedSubscript:0];
        objc_claimAutoreleasedReturnValue();
        v59 = sub_10036F800();
        sub_1003ADB68(v59, v60);
        goto LABEL_34;
      }

      v29 = *(v3 + 24);
      v30 = sub_1003BFE98(*(v3 + 8));
      v31 = [v30 shareInitiatorCertificateChainData];
      v32 = sub_1003BAE74(v29, v31);

      v33 = KmlLogger();
      v34 = v33;
      if (v32)
      {
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          sub_10036DB8C();
          v65 = 176;
          sub_10036F7C4(&_mh_execute_header, v35, v36, "%s : %i : Constructing initiator cert chain for friend key", v37, v38, v39, v40);
        }

        v41 = *(v3 + 24);
        v19 = sub_1003BFE98(*(v3 + 8));
        v20 = [v19 certificates];
        v2 = [v20 objectAtIndexedSubscript:2];
        sub_1003BBC0C(v41, v2);
        goto LABEL_34;
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10036DB8C();
        v65 = 179;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s : %i : Unable to parse sharing certificate chain from friend endpoint", &v62, 0x12u);
      }

LABEL_39:
      v3 = 0;
      goto LABEL_40;
    }

    v42 = KmlLogger();
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
LABEL_38:

      goto LABEL_39;
    }

    sub_10036DB8C();
    v65 = 160;
    v43 = "%s : %i : Return nil for v1 key";
LABEL_37:
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, v43, &v62, 0x12u);
    goto LABEL_38;
  }

LABEL_41:

  return v3;
}

uint64_t sub_1003BEDDC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    v4 = [KmlTlv TLVsWithData:a2];
    v5 = KmlLogger();
    if (sub_10036DCF8(v5))
    {
      sub_10036F790(4.8151e-34);
      v50 = 83;
      sub_10036F7A4(&_mh_execute_header, v6, v7, "%s : %i : KSInvitationData: Looking for invitation TLV");
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v9)
    {
      v2 = v9;
      v10 = *v46;
      do
      {
        for (i = 0; i != v2; i = (i + 1))
        {
          if (*v46 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v45 + 1) + 8 * i);
          if ([v12 tag] == 32561)
          {
            objc_storeStrong((v3 + 32), v12);
          }
        }

        v2 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v2);
    }

    v13 = *(v3 + 32);
    v14 = KmlLogger();
    v15 = sub_10036DCF8(v14);
    if (v13)
    {
      if (v15)
      {
        sub_10036F790(4.8151e-34);
        v50 = 95;
        sub_10036F7A4(&_mh_execute_header, v16, v17, "%s : %i : KSInvitationData: Looking for Endpoint Config and Device Config TLVs");
      }

      v18 = *(v3 + 8);
      v2 = *(v3 + 32);
      v19 = v18;
      v20 = [v2 value];
      v21 = sub_1003C042C(v19, v20);

      v22 = KmlLogger();
      v23 = sub_10036DCF8(v22);
      if (v21)
      {
        if (v23)
        {
          sub_10036F790(4.8151e-34);
          v50 = 101;
          sub_10036F7A4(&_mh_execute_header, v24, v25, "%s : %i : KSInvitationData: Looking for KeyConfig TLV");
        }

        v26 = *(v3 + 16);
        v2 = *(v3 + 32);
        v27 = v26;
        v28 = [v2 value];
        v29 = sub_1003B8C54(v27, v28);

        v30 = KmlLogger();
        v31 = sub_10036DCF8(v30);
        if (v29)
        {
          if (v31)
          {
            sub_10036F790(4.8151e-34);
            v50 = 107;
            sub_10036F7A4(&_mh_execute_header, v32, v33, "%s : %i : KSInvitationData: Looking for Server cert chain TLV");
          }

          v34 = *(v3 + 24);
          v35 = *(v3 + 32);
          v36 = v34;
          v37 = [v35 value];
          v38 = sub_1003BAE74(v36, v37);

          if (v38)
          {
            v3 = 1;
LABEL_33:

            return v3;
          }

          v2 = KmlLogger();
          v3 = 1;
          if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
          {
            sub_10036F790(4.8151e-34);
            v50 = 109;
            sub_10036F7A4(&_mh_execute_header, v43, v44, "%s : %i : KSInvitationData: No Cert chain TLV found");
          }

LABEL_32:

          goto LABEL_33;
        }

        if (v31)
        {
          sub_10036F790(4.8151e-34);
          v50 = 103;
          v41 = "%s : %i : KSInvitationData: No KeyConfig TLV found";
          goto LABEL_30;
        }

LABEL_31:
        v3 = 0;
        goto LABEL_32;
      }

      if (!v23)
      {
        goto LABEL_31;
      }

      sub_10036F790(4.8151e-34);
      v50 = 97;
      v41 = "%s : %i : KSInvitationData: No Endpoint Config TLV found";
    }

    else
    {
      if (!v15)
      {
        goto LABEL_31;
      }

      sub_10036F790(4.8151e-34);
      v50 = 91;
      v41 = "%s : %i : KSInvitationData: No invitation TLV found";
    }

LABEL_30:
    sub_10036F7A4(&_mh_execute_header, v39, v40, v41);
    goto LABEL_31;
  }

  return v3;
}

void sub_1003BF1B0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a1)
  {
    goto LABEL_75;
  }

  v5 = +[NSMutableData data];
  v6 = +[NSMutableData data];
  v7 = [*(a1 + 40) readerIdentifier];

  if (v7)
  {
    [*(a1 + 40) readerIdentifier];
    objc_claimAutoreleasedReturnValue();
    v8 = [sub_10036F8CC() TLVWithTag:77 value:v2];
    v9 = [v8 asData];

    sub_10036F960();
    [v6 appendData:v9];
  }

  v135 = v6;
  v136 = v5;
  v10 = [*(a1 + 40) configuration];
  v11 = [v10 opt1];

  v12 = [*(a1 + 40) configuration];
  v13 = [v12 opt2];

  v14 = KmlLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v161 = "[EndpointConfigForSharing createEndpointConfigWithSlotIdentifier:]";
    v162 = 1024;
    v163 = 36;
    v164 = 1024;
    v165 = v11;
    v166 = 1024;
    v167 = v13 & 0xFB;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %i : SiaC : options_1: %02x; options_2: %02x", buf, 0x1Eu);
  }

  v15 = [KmlTlv TLVWithTag:70 unsignedChar:v11];
  v16 = [v15 asData];
  [v6 appendData:v16];

  v17 = v6;
  v18 = [KmlTlv TLVWithTag:71 unsignedChar:v13 & 0xFB];
  v19 = [v18 asData];
  [v6 appendData:v19];

  v20 = v11 & 0xCF;
  v21 = v13 & 0xB3;
  v22 = KmlLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v161 = "[EndpointConfigForSharing createEndpointConfigWithSlotIdentifier:]";
    v162 = 1024;
    v163 = 50;
    v164 = 1024;
    v165 = v20;
    v166 = 1024;
    v167 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s : %i : V1 : options_1: %02x; options_2: %02x", buf, 0x1Eu);
  }

  v23 = [KmlTlv TLVWithTag:70 unsignedChar:v20];
  v24 = [v23 asData];
  v25 = v136;
  sub_10036F960();

  v26 = [KmlTlv TLVWithTag:71 unsignedChar:v21];
  v27 = [v26 asData];
  [v136 appendData:v27];

  v28 = [KmlTlv TLVWithTag:92 unsignedShort:256];
  v29 = [v28 asData];

  [v136 appendData:v29];
  v133 = v29;
  [v6 appendData:v29];
  v30 = [*(a1 + 40) readerPublicKey];

  if (v30)
  {
    [*(a1 + 40) readerPublicKey];
    objc_claimAutoreleasedReturnValue();
    v31 = [sub_10036F8CC() TLVWithTag:91 value:v29];
    v32 = [v31 asData];

    sub_10036F960();
    [v6 appendData:v32];
  }

  kmlUtilTimeNow();
  objc_claimAutoreleasedReturnValue();
  v33 = [sub_10036F8CC() TLVWithTag:81 value:v29];
  v34 = [v33 asData];

  sub_10036F960();
  v132 = v34;
  [v6 appendData:v34];
  kmlUtilInfiniteTime();
  objc_claimAutoreleasedReturnValue();
  v35 = [sub_10036F8CC() TLVWithTag:82 value:v29];
  v36 = [v35 asData];

  sub_10036F960();
  v131 = v36;
  [v6 appendData:v36];
  v37 = [*(a1 + 40) authorizedKeys];
  v38 = +[NSMutableData data];
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v39 = v37;
  v40 = [v39 countByEnumeratingWithState:&v153 objects:v159 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v154;
    do
    {
      for (i = 0; i != v41; i = i + 1)
      {
        if (*v154 != v42)
        {
          objc_enumerationMutation(v39);
        }

        [v38 appendData:*(*(&v153 + 1) + 8 * i)];
      }

      v41 = [v39 countByEnumeratingWithState:&v153 objects:v159 count:16];
    }

    while (v41);
  }

  if (v38)
  {
    v44 = [KmlTlv TLVWithTag:73 value:v38];
    v45 = [v44 asData];

    [v136 appendData:v45];
    [v6 appendData:v45];
  }

  v46 = [*(a1 + 40) confidentialMailBoxSize];
  v47 = bswap32([v46 unsignedIntValue]) >> 16;

  v152 = v47;
  v48 = [*(a1 + 40) privateMailBoxSize];
  v49 = bswap32([v48 unsignedIntValue]) >> 16;

  v151 = v49;
  v50 = KmlLogger();
  if (sub_10036F978(v50))
  {
    v49 = [*(a1 + 40) confidentialMailBoxSize];
    v51 = [v49 unsignedIntValue];
    *buf = 136315906;
    v161 = "[EndpointConfigForSharing createEndpointConfigWithSlotIdentifier:]";
    v162 = 1024;
    sub_10036F930(v51, 1024);
    sub_10036F920();
    _os_log_impl(v52, v53, v54, v55, v56, 0x1Eu);
  }

  v57 = KmlLogger();
  if (sub_10036F978(v57))
  {
    v49 = [*(a1 + 40) privateMailBoxSize];
    v58 = [v49 unsignedIntValue];
    *buf = 136315906;
    v161 = "[EndpointConfigForSharing createEndpointConfigWithSlotIdentifier:]";
    v162 = 1024;
    sub_10036F930(v58, 1024);
    sub_10036F920();
    _os_log_impl(v59, v60, v61, v62, v63, 0x1Eu);
  }

  [NSData dataWithBytes:&v152 length:2];
  objc_claimAutoreleasedReturnValue();
  v64 = [sub_10036F8CC() TLVWithTag:74 value:v49];

  v65 = [NSData dataWithBytes:&v151 length:2];
  v66 = [KmlTlv TLVWithTag:75 value:v65];

  v138 = v64;
  v137 = v66;
  v130 = [*(a1 + 40) mailboxSizesPlusAdditionalData];
  v67 = [KmlTlv TLVsWithData:?];
  v134 = a1;
  v129 = v67;
  if (![v67 count])
  {
    v93 = KmlLogger();
    if (sub_10036F978(v93))
    {
      *buf = 136315394;
      v161 = "[EndpointConfigForSharing createEndpointConfigWithSlotIdentifier:]";
      v162 = 1024;
      v163 = 133;
      sub_10036F920();
      _os_log_impl(v94, v95, v96, v97, v98, 0x12u);
    }

    v99 = v138;
    v100 = v137;
    v140 = v100;
    v71 = v99;
    if (v99)
    {
      goto LABEL_67;
    }

    goto LABEL_68;
  }

  v127 = v39;
  v128 = v4;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v68 = v67;
  v69 = [v68 countByEnumeratingWithState:&v147 objects:v158 count:16];
  if (!v69)
  {
    v139 = 0;
    v141 = 0;
    v71 = 0;
    goto LABEL_48;
  }

  v70 = v69;
  v139 = 0;
  v141 = 0;
  v71 = 0;
  v72 = *v148;
  do
  {
    for (j = 0; j != v70; j = j + 1)
    {
      if (*v148 != v72)
      {
        objc_enumerationMutation(v68);
      }

      v74 = *(*(&v147 + 1) + 8 * j);
      if ([v74 tag] == 74)
      {
        v75 = KmlLogger();
        if (sub_10036F124(v75))
        {
          sub_10036F990(4.8151e-34);
          sub_10036F8A0(v76);
          v78 = sub_10036F948(v77);
          _os_log_impl(v78, v79, v80, "%s : %i : Using conf mailbox size for V1 from data saved from Car", v81, 0x12u);
        }

        v82 = v74;
        v83 = v71;
        v71 = v82;
      }

      else if ([v74 tag] == 75)
      {
        v84 = KmlLogger();
        if (sub_10036F124(v84))
        {
          sub_10036F990(4.8151e-34);
          sub_10036F8A0(v85);
          v87 = sub_10036F948(v86);
          _os_log_impl(v87, v88, v89, "%s : %i : Using priv mailbox size for V1 from data saved from Car", v90, 0x12u);
        }

        v91 = v74;
        v83 = v141;
        v141 = v91;
      }

      else
      {
        if ([v74 tag] != 96)
        {
          continue;
        }

        v92 = [v74 value];
        v83 = v139;
        v139 = v92;
      }
    }

    v70 = [v68 countByEnumeratingWithState:&v147 objects:v158 count:16];
  }

  while (v70);
LABEL_48:

  v101 = v139;
  v99 = v138;
  v140 = v137;
  if (![v139 length])
  {
    goto LABEL_66;
  }

  v102 = [KmlTlv TLVsWithData:v139];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v103 = [v102 countByEnumeratingWithState:&v143 objects:v157 count:16];
  v99 = v138;
  v140 = v137;
  if (!v103)
  {
    goto LABEL_65;
  }

  v104 = v103;
  v105 = *v144;
  v99 = v138;
  v140 = v137;
  while (2)
  {
    v106 = 0;
    while (2)
    {
      if (*v144 != v105)
      {
        objc_enumerationMutation(v102);
      }

      v107 = *(*(&v143 + 1) + 8 * v106);
      if ([v107 tag] == 74)
      {
        v108 = KmlLogger();
        if (sub_10036F124(v108))
        {
          sub_10036F990(4.8151e-34);
          sub_10036F8A0(v109);
          *(v110 + 14) = 124;
          _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_INFO, "%s : %i : Using conf mailbox size for V3 from data saved from Car", buf, 0x12u);
        }

        v111 = v99;
        v99 = v107;
        goto LABEL_62;
      }

      if ([v107 tag] == 75)
      {
        v112 = KmlLogger();
        if (sub_10036F124(v112))
        {
          sub_10036F990(4.8151e-34);
          sub_10036F8A0(v113);
          *(v114 + 14) = 127;
          _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_INFO, "%s : %i : Using priv mailbox size for V3 from data saved from Car", buf, 0x12u);
        }

        v111 = v140;
        v140 = v107;
LABEL_62:

        v115 = v107;
      }

      if (v104 != ++v106)
      {
        continue;
      }

      break;
    }

    v104 = [v102 countByEnumeratingWithState:&v143 objects:v157 count:16];
    if (v104)
    {
      continue;
    }

    break;
  }

LABEL_65:

  v101 = v139;
LABEL_66:

  v39 = v127;
  v4 = v128;
  v17 = v135;
  v25 = v136;
  v100 = v141;
  if (v71)
  {
LABEL_67:
    v116 = [v71 asData];
    [v25 appendData:v116];
  }

LABEL_68:
  if (v100)
  {
    v117 = [v100 asData];
    [v25 appendData:v117];
  }

  if (v99)
  {
    v118 = [v99 asData];
    [v17 appendData:v118];
  }

  v142 = v100;
  if (v140)
  {
    v119 = [v140 asData];
    [v17 appendData:v119];
  }

  v120 = [KmlTlv TLVWithTag:78 value:v4, v127, v128];
  v121 = [v120 asData];
  sub_10036F960();

  v122 = [v120 asData];
  [v17 appendData:v122];

  v123 = [KmlTlv TLVWithTag:32551 value:v25];
  v124 = *(v134 + 8);
  *(v134 + 8) = v123;

  v125 = [KmlTlv TLVWithTag:32556 value:v17];
  v126 = *(v134 + 16);
  *(v134 + 16) = v125;

LABEL_75:
}

uint64_t sub_1003BFE98(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

id sub_1003BFEA4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (!a1)
  {
    v8 = 0;
    goto LABEL_38;
  }

  v8 = +[NSMutableData data];
  if (sub_1003DACE0(v7))
  {
    v9 = [*(a1 + 40) readerInfo];
    v10 = [v9 dataUsingEncoding:4];
    v11 = [KmlTlv TLVWithTag:89 value:v10];
    v12 = [v11 asData];
    sub_10036F8D8(v12);
  }

  else
  {
    v13 = [KmlRoutingInformation alloc];
    v14 = [*(a1 + 40) readerInfo];
    v9 = [v13 initWithReaderInformation:v14];

    v10 = [v9 getRoutingInformation];
    v11 = [v10 dataUsingEncoding:4];
    v3 = [KmlTlv TLVWithTag:89 value:v11];
    v15 = [v3 asData];
    [v8 appendData:v15];
  }

  v16 = [KmlDeviceConfigurationData alloc];
  v17 = [*(a1 + 40) deviceConfiguration];
  v18 = [v16 initWithData:v17];

  v19 = sub_10036F9BC();
  if (sub_10036F8F4(v19))
  {
    v20 = [*(a1 + 48) vehicleSupportedFrameworkVersionsTlvAsData];

    if (v20)
    {
      v21 = [*(a1 + 48) vehicleSupportedFrameworkVersionsTlvAsData];
      sub_10036F884(v21);
    }

    v22 = [*(a1 + 48) vehicleSupportedAppletVersionsTlvAsData];

    if (!v22)
    {
      goto LABEL_12;
    }

    v23 = [*(a1 + 48) vehicleSupportedAppletVersionsTlvAsData];
    sub_10036F884(v23);
  }

  else
  {
    v22 = [KmlTlv TLVWithTag:92 unsignedShort:256];
    v24 = [v22 asData];
    sub_10036F8B0(v24);
  }

LABEL_12:
  v25 = [v18 sharingConfigForFriendAsData];
  sub_10036F884(v25);

  if (v6)
  {
    [v8 appendData:v6];
  }

  v26 = [v18 confMailboxSettingAsData];
  v27 = [v26 length];

  if (v27)
  {
    v28 = [v18 confMailboxSettingAsData];
    v29 = [KmlTlv TLVWithTag:74 value:v28];
    v30 = [v29 asData];
    sub_10036F8D8(v30);
  }

  v31 = [v18 privateMailboxSettingAsData];
  v32 = [v31 length];

  if (v32)
  {
    v33 = [v18 privateMailboxSettingAsData];
    v34 = [KmlTlv TLVWithTag:75 value:v33];
    v35 = [v34 asData];
    sub_10036F8D8(v35);
  }

  v36 = [v18 additionalMailboxSettingAsData];
  v37 = [v36 length];

  if (v37)
  {
    v38 = [v18 additionalMailboxSettingAsData];
    sub_10036F884(v38);
  }

  if ([v18 sharingPasswordRequired])
  {
    if ((+[KmlTlv TLVWithTag:unsignedChar:](KmlTlv, "TLVWithTag:unsignedChar:", 215, 1), v39 = objc_claimAutoreleasedReturnValue(), [v39 asData], v40 = objc_claimAutoreleasedReturnValue(), sub_10036F8B0(v40), v37, v39, v41 = sub_10036F9BC(), sub_10036F8F4(v41)) && objc_msgSend(v18, "sharingPasswordLength") || (v43 = sub_10036F9BC(), (sub_10036F8F4(v43) & 1) == 0) && sub_1003DAC98(v7) && objc_msgSend(v18, "sharingPasswordLength") && (v39 = objc_msgSend(v18, "sharingPasswordLength"), sub_1003C75D4(v7), v37 = objc_claimAutoreleasedReturnValue(), v3 = objc_msgSend(v37, "length"), v37, v3 == v39))
    {
      v42 = [v18 sharingPasswordLengthAsData];
      sub_10036F884(v42);
    }
  }

  v44 = sub_10036F9BC();
  if (sub_10036F8F4(v44))
  {
    v45 = [*(a1 + 48) kmlSupportedVersionsTlvForShareInitiator];
    v46 = [v45 asData];
    sub_10036F8B0(v46);
  }

  v47 = sub_1003C75EC(v7);
  v48 = [v47 length];

  v49 = sub_1003C22E0(v7);
  if (v48 && v49)
  {
    v47 = [KmlTlv TLVWithTag:40727 unsignedChar:v49];
    v50 = [v47 asData];
    sub_10036F8D8(v50);

    v51 = [KmlTlv TLVWithTag:40728 unsignedChar:v48];
    v52 = [v51 asData];
    sub_10036F8B0(v52);
  }

  v53 = [v18 oemSpecificContentAsData];

  if (v53)
  {
    v54 = [v18 oemSpecificContentAsData];
    sub_10036F884(v54);
  }

  v55 = [*(a1 + 40) hupData];

  if (v55)
  {
    v56 = [*(a1 + 40) hupData];
    v57 = [KmlTlv TLVWithTag:40736 value:v56];
    v58 = [v57 asData];
    sub_10036F8B0(v58);
  }

  kmlUtilLogLargeData();

LABEL_38:

  return v8;
}

uint64_t sub_1003C042C(id *a1, void *a2)
{
  v4 = a2;
  if (!a1)
  {
    v41 = 0;
    goto LABEL_36;
  }

  v54 = +[NSMutableArray array];
  v51 = v4;
  v5 = [KmlTlv TLVsWithData:v4];
  *v56 = 0u;
  v57 = 0u;
  *v58 = 0u;
  v59 = 0u;
  v6 = [v5 countByEnumeratingWithState:v56 objects:v66 count:16];
  if (!v6)
  {
    goto LABEL_23;
  }

  v8 = v6;
  v9 = *v57;
  *&v7 = 136315394;
  *v55 = v7;
  *&v7 = 136315650;
  *v52 = v7;
  do
  {
    v10 = 0;
    do
    {
      if (*v57 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v2 = *(v56[1] + 8 * v10);
      if ([v2 tag] == 32551)
      {
        v11 = KmlLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = v55[0];
          v61 = "[EndpointConfigForSharing parseEndpointCreationAndDeviceConfigsFromData:]";
          v62 = 1024;
          v63 = 272;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %i : Found endpoint config", buf, 0x12u);
        }

        v12 = a1 + 1;
LABEL_15:
        objc_storeStrong(v12, v2);
        goto LABEL_16;
      }

      if ([v2 tag] == 32556)
      {
        v13 = KmlLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = v55[0];
          v61 = "[EndpointConfigForSharing parseEndpointCreationAndDeviceConfigsFromData:]";
          v62 = 1024;
          v63 = 275;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : Found endpoint config for SiaC", buf, 0x12u);
        }

        v12 = a1 + 2;
        goto LABEL_15;
      }

      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 tag]);
      v15 = [&off_1004DC728 containsObject:v14];

      if (v15)
      {
        v16 = KmlLogger();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          [v2 tag];
          *buf = v52[0];
          sub_10036F910();
          v63 = 278;
          v64 = v17;
          v65 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s : %i : Found device config tag : 0x%x", buf, 0x18u);
        }

        [v54 addObject:v2];
      }

LABEL_16:
      v10 = v10 + 1;
    }

    while (v8 != v10);
    v19 = [v5 countByEnumeratingWithState:v56 objects:v66 count:16];
    v8 = v19;
  }

  while (v19);
LABEL_23:
  v20 = v54;
  if ([v54 count])
  {
    objc_storeStrong(a1 + 3, v54);
  }

  v21 = a1[1];
  if (v21 && (v2 = a1[3], v21, v2))
  {
    v22 = objc_alloc_init(KmlEndpointCreationConfig);
    v23 = a1[4];
    a1[4] = v22;

    v24 = a1[4];
    v25 = a1[1];
    v26 = v24;
    v27 = [sub_10036F8CC() value];
    sub_1003DBE38(v24, v27);

    if (a1[2])
    {
      v28 = KmlLogger();
      if (sub_10036F978(v28))
      {
        *buf = 136315394;
        sub_10036F910();
        v63 = 295;
        sub_10036F99C(&_mh_execute_header, v29, v30, "%s : %i : Apply SiaC overrides", v31, v32, v33, v34, v50, v4, v52[0], v52[1], v53, v54, v55[0], v55[1], v56[0], v56[1], v57, *(&v57 + 1), v58[0], v58[1], v59, *(&v59 + 1));
      }

      v35 = a1[4];
      v36 = a1[2];
      v37 = v35;
      v38 = [sub_10036F8CC() value];
      sub_1003DBED8(v35, v38);
    }

    v39 = a1[3];
    v40 = a1[4];
    sub_1003DC320(v40, v39);

    v41 = sub_1003DCB78(a1[4]);
  }

  else
  {
    v42 = KmlLogger();
    if (sub_10036F978(v42))
    {
      *buf = 136315394;
      sub_10036F910();
      v63 = 288;
      sub_10036F99C(&_mh_execute_header, v43, v44, "%s : %i : Missing endpoint config / device config", v45, v46, v47, v48, v50, v4, v52[0], v52[1], v53, v54, v55[0], v55[1], v56[0], v56[1], v57, *(&v57 + 1), v58[0], v58[1], v59, *(&v59 + 1));
    }

    v41 = 0;
    v4 = v51;
  }

LABEL_36:
  return v41;
}

void sub_1003C08D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, int a10, int a11, int a12, int a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1003722EC();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  if (v27)
  {
    a9.receiver = v27;
    a9.super_class = KmlNfcPairingTransport;
    v30 = objc_msgSendSuper2(&a9, "init");
    v31 = v30;
    if (v30)
    {
      [v30 setDelegate:v29];
      v32 = KmlLogger();
      if (sub_10036DCF8(v32))
      {
        sub_100372284();
        *(&a13 + 2) = 80;
        sub_10036DC0C(&_mh_execute_header, v23, v33, "%s : %i : let's init", &a10);
      }

      v34 = v31[4];
      v31[4] = 0;

      v35 = v31[5];
      v31[5] = 0;

      v36 = v31[6];
      v31[6] = 0;

      *(v31 + 56) = 0;
      v37 = v31[8];
      v31[8] = 0;

      v31[1] = 0;
      *(v31 + 4) = 0;
      v38 = +[NFHardwareManager sharedHardwareManager];
      v39 = v31[3];
      v31[3] = v38;

      v40 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v41 = dispatch_queue_create("com.apple.sesd.kml.readApdu", v40);
      v42 = v31[9];
      v31[9] = v41;

      v43 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v44 = dispatch_queue_create("com.apple.sesd.kml.nfcTransport", v43);
      v45 = v31[10];
      v31[10] = v44;

      v46 = v31[11];
      v31[11] = 0;

      v47 = v31[12];
      v31[12] = 0;

      *(v31 + 104) = 0;
      v48 = v31[14];
      v31[14] = 0;

      v49 = KmlLogger();
      if (sub_10036DCF8(v49))
      {
        sub_100372284();
        *(&a13 + 2) = 97;
        sub_10036DC0C(&_mh_execute_header, v43, v50, "%s : %i : ready to roll", &a10);
      }
    }
  }

  sub_1003722A4();
}

void sub_1003C0AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1003722EC();
  a23 = v28;
  a24 = v29;
  if (!v30)
  {
LABEL_6:
    sub_1003722A4();
    return;
  }

  sub_100372298();
  if (v31)
  {
    v32 = KmlLogger();
    if (sub_100057AEC(v32))
    {
      sub_10036BED0();
      *(&a14 + 2) = 507;
      sub_10036DBA0(&_mh_execute_header, v33, v34, "%s : %i : Transport not ready to create session", &a11);
    }

    v35 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    sub_10037225C();
    [sub_100372244() stringWithUTF8String:?];
    objc_claimAutoreleasedReturnValue();
    sub_100372278();
    sub_100372228();
    [v36 dictionaryWithObjects:? forKeys:? count:?];
    objc_claimAutoreleasedReturnValue();
    v37 = [sub_1003721D4() errorWithDomain:? code:? userInfo:?];

    v38 = [v24 delegate];
    [v38 handleSessionStartResult:v37];

    goto LABEL_6;
  }

  sub_1003722A4();

  sub_1003C11C4(v39, v40);
}

void sub_1003C0C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, int a11, int a12, uint64_t a13, NSErrorUserInfoKey a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1003722EC();
  a23 = v25;
  a24 = v26;
  if (v27)
  {
    sub_100372298();
    switch(v28)
    {
      case 2:
      case 6:
        v32 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        if (*(v24 + 104))
        {
          v33 = 23;
        }

        else
        {
          v33 = 24;
        }

        a14 = NSLocalizedDescriptionKey;
        v34 = [NSString stringWithUTF8String:KmlErrorString()];
        a15 = v34;
        v35 = [NSDictionary dictionaryWithObjects:&a15 forKeys:&a14 count:1];
        v36 = [NSError errorWithDomain:v32 code:v33 userInfo:v35];
        v37 = *(v24 + 64);
        *(v24 + 64) = v36;

        sub_1003C11C4(v24, 9);
        goto LABEL_6;
      case 3:
      case 7:
        sub_1003722A4();

        sub_1003C11C4(v38, v39);
        break;
      default:
        v29 = KmlLogger();
        if (sub_10036F978(v29))
        {
          sub_10036DB8C();
          *(&a12 + 2) = 522;
          sub_10037220C(&_mh_execute_header, v30, v31, "%s : %i : session is not running. Ignore request to end it", &a9);
        }

        goto LABEL_6;
    }
  }

  else
  {
LABEL_6:
    sub_1003722A4();
  }
}

void sub_1003C0E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1003722EC();
  a23 = v28;
  a24 = v29;
  if (!v30)
  {
LABEL_10:
    sub_1003722A4();
    return;
  }

  sub_100372298();
  if (v31 == 5)
  {
    v39 = KmlLogger();
    if (sub_100057AEC(v39))
    {
      sub_10036BED0();
      *(&a14 + 2) = 542;
      sub_10036DBA0(&_mh_execute_header, v40, v41, "%s : %i : Session already paused.", &a11);
    }

    v42 = [v24 delegate];
    [v42 handleSessionPauseResult:0];

    goto LABEL_10;
  }

  if (v31 != 3)
  {
    v32 = KmlLogger();
    if (sub_100057AEC(v32))
    {
      sub_10036BED0();
      *(&a14 + 2) = 546;
      sub_10036DBA0(&_mh_execute_header, v33, v34, "%s : %i : Transport not running to pause", &a11);
    }

    v35 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    sub_10037225C();
    [sub_100372244() stringWithUTF8String:?];
    objc_claimAutoreleasedReturnValue();
    sub_100372278();
    sub_100372228();
    [v36 dictionaryWithObjects:? forKeys:? count:?];
    objc_claimAutoreleasedReturnValue();
    v37 = [sub_1003721D4() errorWithDomain:? code:? userInfo:?];

    v38 = [v24 delegate];
    [v38 handleSessionPauseResult:v37];

    goto LABEL_10;
  }

  sub_1003722A4();

  sub_1003C11C4(v43, v44);
}

void sub_1003C1040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, int a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1003722EC();
  a23 = v28;
  a24 = v29;
  if (!v30)
  {
LABEL_6:
    sub_1003722A4();
    return;
  }

  sub_100372298();
  if (v31 != 5)
  {
    v32 = KmlLogger();
    if (sub_100057AEC(v32))
    {
      sub_10036BED0();
      *(&a14 + 2) = 531;
      sub_10036DBA0(&_mh_execute_header, v33, v34, "%s : %i : Transport not ready to resume session", &a11);
    }

    v35 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    sub_10037225C();
    [sub_100372244() stringWithUTF8String:?];
    objc_claimAutoreleasedReturnValue();
    sub_100372278();
    sub_100372228();
    [v36 dictionaryWithObjects:? forKeys:? count:?];
    objc_claimAutoreleasedReturnValue();
    v37 = [sub_1003721D4() errorWithDomain:? code:? userInfo:?];

    v38 = [v24 delegate];
    [v38 handleSessionResumeResult:v37];

    goto LABEL_6;
  }

  sub_1003722A4();

  sub_1003C11C4(v39, v40);
}

void sub_1003C11C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10037049C;
    v3[3] = &unk_1004C2B00;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

void sub_1003C1240(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8) == 11)
    {

      sub_1003C11C4(a1, 12);
    }

    else
    {
      v2 = KmlLogger();
      if (sub_10036F978(v2))
      {
        sub_10036DB8C();
        v6 = 498;
        sub_10037220C(&_mh_execute_header, v3, v4, "%s : %i : Transaction session is not running. Ignore request to end it", v5);
      }
    }
  }
}

void sub_1003C1324(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v32 = 0;
      v4 = [v3 readAPDU:&v32];
      v5 = v32;
      if (v4)
      {
        v6 = KmlLogger();
        if (sub_10036F124(v6))
        {
          sub_1003722B8();
          v36 = 436;
          v37 = 2112;
          v38 = v4;
          sub_1003722CC(&_mh_execute_header, v7, v8, "%s : %i : error reading APDU from active session: %@", v9, v10, v11, v12, v25, v26, v27, v28, v29, v30, v31, v32);
        }
      }

      v13 = KmlLogger();
      if (sub_10036F124(v13))
      {
        sub_1003722B8();
        v36 = 438;
        v37 = 2112;
        v38 = v5;
        sub_1003722CC(&_mh_execute_header, v14, v15, "%s : %i : Received APDU %@", v16, v17, v18, v19, v25, v26, v27, v28, v29, v30, v31, v32);
      }
    }

    else
    {
      v20 = KmlLogger();
      if (sub_10036F124(v20))
      {
        v33 = 136315394;
        v34 = "[KmlNfcPairingTransport readAPDU_sync]";
        v35 = 1024;
        v36 = 432;
        sub_10036DC0C(&_mh_execute_header, v1, v21, "%s : %i : No active hce session, nothing left to read", &v33);
      }

      v5 = 0;
      v4 = 0;
    }

    v22 = *(a1 + 80);
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_100370D88;
    v28 = &unk_1004C24A8;
    v29 = a1;
    v30 = v5;
    v31 = v4;
    v23 = v4;
    v24 = v5;
    dispatch_async(v22, &v25);
  }
}

void sub_1003C1530(uint64_t a1)
{
  if (a1)
  {
    v3 = [*(a1 + 40) stopEmulation];
    [*(a1 + 40) endSession];
    [*(a1 + 40) setDelegate:0];
    v4 = *(a1 + 40);
    *(a1 + 40) = 0;

    [*(a1 + 48) stopCardEmulation];
    [*(a1 + 48) endSession];
    [*(a1 + 48) setDelegate:0];
    v5 = *(a1 + 48);
    *(a1 + 48) = 0;

    v6 = *(a1 + 32);
    *(a1 + 32) = 0;

    sub_1003C1FBC(a1);
    sub_1003C2200(a1);
    v7 = KmlLogger();
    if (sub_100057AEC(v7))
    {
      sub_10036DB8C();
      v11 = 422;
      sub_10036DBA0(&_mh_execute_header, v8, v9, "%s : %i : Resetting state to ready", v10);
    }

    *(a1 + 8) = 0;
  }
}

void sub_1003C1648(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
    v5 = KmlLogger();
    if (sub_10036DCF8(v5))
    {
      v6 = *(v4 + 8);
      *buf = 136315906;
      v105 = "[KmlNfcPairingTransport setCurrentState_sync:]";
      v106 = 1024;
      v107 = 218;
      v108 = 2048;
      v109 = v6;
      v110 = 2048;
      v111 = a2;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Current state %ld, new state %ld", buf, 0x26u);
    }

    *(v4 + 16) = *(v4 + 8);
    *(v4 + 8) = a2;
    switch(a2)
    {
      case 0uLL:
        v7 = KmlLogger();
        if (!sub_10036F978(v7))
        {
          goto LABEL_26;
        }

        sub_10037218C();
        v107 = 224;
        v10 = "%s : %i : NFC Pairing transport is ready";
        goto LABEL_22;
      case 1uLL:
        v28 = KmlSignpostLogger();
        if (os_signpost_enabled(v28))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NfcHceSessionCreate", "", buf, 2u);
        }

        sub_100057A60();
        sub_100057B28();
        v99 = sub_1003705DC;
        v100 = &unk_1004D1BE8;
        v101 = v4;
        v30 = [v29 startSecureElementAndHCESession:&v97];
        v31 = *(v4 + 32);
        *(v4 + 32) = v30;

        v32 = KmlLogger();
        if (!sub_10036F978(v32))
        {
          goto LABEL_26;
        }

        sub_10037218C();
        v107 = 250;
        v10 = "%s : %i : Waiting for session start";
        goto LABEL_22;
      case 2uLL:
        v74 = KmlLogger();
        if (!sub_100057AEC(v74))
        {
          goto LABEL_43;
        }

        sub_10037218C();
        v107 = 255;
        v56 = "%s : %i : Starting Host Card Emulation";
        goto LABEL_42;
      case 3uLL:
        v21 = KmlLogger();
        if (sub_100057AEC(v21))
        {
          sub_10037218C();
          v107 = 260;
          sub_1003721B4(&_mh_execute_header, v22, v23, "%s : %i : Host Card Emulation session started", v24, v25, v26, v27, v96, v97, v98, v99, v100, v101, v102, v103);
        }

        v4 = [v4 delegate];
        [v4 handleSessionStartResult:0];
        goto LABEL_26;
      case 4uLL:
        v20 = KmlLogger();
        if (!sub_10036F978(v20))
        {
          goto LABEL_26;
        }

        sub_10037218C();
        v107 = 265;
        v10 = "%s : %i : We will pause Host Card Emulation session as soon as current session disconnects";
        goto LABEL_22;
      case 5uLL:
        v11 = KmlLogger();
        if (sub_100057AEC(v11))
        {
          sub_10037218C();
          v107 = 269;
          sub_1003721B4(&_mh_execute_header, v12, v13, "%s : %i : Host Card Emulation session paused", v14, v15, v16, v17, v96, v97, v98, v99, v100, v101, v102, v103);
        }

        v18 = [*(v4 + 40) stopEmulation];
        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_100372238();
        [v19 handleSessionPauseResult:?];
        goto LABEL_10;
      case 6uLL:
        v49 = KmlLogger();
        if (!sub_100057AEC(v49))
        {
          goto LABEL_43;
        }

        sub_10037218C();
        v107 = 275;
        v56 = "%s : %i : Resuming Host Card Emulation";
LABEL_42:
        sub_1003721B4(&_mh_execute_header, v50, v51, v56, v52, v53, v54, v55, v96, v97, v98, v99, v100, v101, v102, v103);
LABEL_43:

        sub_1003C1D1C(v4);
        break;
      case 7uLL:
        v34 = KmlLogger();
        if (sub_100057AEC(v34))
        {
          sub_10037218C();
          v107 = 279;
          sub_1003721B4(&_mh_execute_header, v35, v36, "%s : %i : Host Card Emulation session resumed", v37, v38, v39, v40, v96, v97, v98, v99, v100, v101, v102, v103);
        }

        v4 = [v4 delegate];
        [v4 handleSessionResumeResult:0];
        goto LABEL_26;
      case 8uLL:
        v33 = KmlLogger();
        if (!sub_10036F978(v33))
        {
          goto LABEL_26;
        }

        sub_10037218C();
        v107 = 283;
        v10 = "%s : %i : We will stop Host Card Emulation session as soon as current session disconnects";
LABEL_22:
        sub_10037220C(&_mh_execute_header, v8, v9, v10, buf);
LABEL_26:

        break;
      case 9uLL:
        v57 = KmlLogger();
        if (sub_100057AEC(v57))
        {
          sub_10037218C();
          v107 = 287;
          sub_1003721B4(&_mh_execute_header, v58, v59, "%s : %i : Host Card Emulation session stopped", v60, v61, v62, v63, v96, v97, v98, v99, v100, v101, v102, v103);
        }

        sub_1003C1530(v4);
        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_100372238();
        [v64 handleSessionEndResult:?];
        goto LABEL_10;
      case 0xAuLL:
        v41 = KmlLogger();
        if (sub_100057AEC(v41))
        {
          sub_10037218C();
          v107 = 293;
          sub_1003721B4(&_mh_execute_header, v42, v43, "%s : %i : Starting Loyalty and payment session", v44, v45, v46, v47, v96, v97, v98, v99, v100, v101, v102, v103);
        }

        sub_1003C1D68(v4, v48);
        return;
      case 0xBuLL:
        v66 = KmlLogger();
        if (sub_100057AEC(v66))
        {
          sub_10037218C();
          v107 = 298;
          sub_1003721B4(&_mh_execute_header, v67, v68, "%s : %i : Loyalty and payment session started", v69, v70, v71, v72, v96, v97, v98, v99, v100, v101, v102, v103);
        }

        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_100372238();
        [v73 handleTransactionStartResult:?];

        sub_1003C1EA0(v4);
        return;
      case 0xCuLL:
        v75 = KmlLogger();
        if (sub_100057AEC(v75))
        {
          sub_10037218C();
          v107 = 304;
          sub_1003721B4(&_mh_execute_header, v76, v77, "%s : %i : Stopping Host Card Emulation session", v78, v79, v80, v81, v96, v97, v98, v99, v100, v101, v102, v103);
        }

        [*(v4 + 48) stopCardEmulation];
        if (!*(v4 + 64))
        {
          v82 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v102 = NSLocalizedDescriptionKey;
          KmlErrorString();
          v83 = [sub_100372244() stringWithUTF8String:?];
          v103 = v83;
          v84 = [NSDictionary dictionaryWithObjects:&v103 forKeys:&v102 count:1];
          v85 = [NSError errorWithDomain:v82 code:24 userInfo:v84];
          v86 = *(v4 + 64);
          *(v4 + 64) = v85;
        }

        sub_1003C11C4(v4, 13);
        return;
      case 0xDuLL:
        v87 = KmlLogger();
        if (sub_100057AEC(v87))
        {
          sub_10037218C();
          v107 = 313;
          sub_1003721B4(&_mh_execute_header, v88, v89, "%s : %i : Transaction session stopped", v90, v91, v92, v93, v96, v97, v98, v99, v100, v101, v102, v103);
        }

        sub_1003C1530(v4);
        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_100372238();
        [v94 handleTransactionEndResult:?];
        goto LABEL_10;
      case 0xEuLL:
        sub_1003C1530(v4);
        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_100372238();
        [v95 handleSessionStartResult:?];
        goto LABEL_10;
      case 0xFuLL:
        sub_1003C1530(v4);
        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_100372238();
        [v65 handleTransactionStartResult:?];
LABEL_10:

        break;
      default:
        return;
    }
  }
}

void sub_1003C1D1C(uint64_t result)
{
  if (result)
  {
    v2 = [*(result + 40) startEmulation];

    sub_1003C209C(result);
  }
}

void sub_1003C1D68(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = KmlSignpostLogger();
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NfcLnPtxnSessionCreate", "", buf, 2u);
    }

    sub_100057A60();
    sub_100057B28();
    v16 = sub_100370DE4;
    v17 = &unk_1004D1C38;
    v18 = a1;
    v5 = [v4 startLoyaltyAndContactlessPaymentSession:v15];
    v6 = a1[4];
    a1[4] = v5;

    v7 = KmlLogger();
    if (sub_10036F978(v7))
    {
      sub_1003721A0();
      v20 = 489;
      sub_1003721EC(&_mh_execute_header, v8, v9, "%s : %i : Waiting for contactless session start", v10, v11, v12, v13, v14, v15[0], v15[1], v16, v17, v18);
    }
  }
}

void sub_1003C1EA0(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 88))
    {
      v2 = KmlLogger();
      if (sub_10036F978(v2))
      {
        sub_1003721A0();
        v17 = 335;
        v9 = "%s : %i : endTransactionTimer already running. Ignore another start";
LABEL_7:
        sub_1003721EC(&_mh_execute_header, v3, v4, v9, v5, v6, v7, v8, v12, block[0], block[1], v14, v15, v16);
      }
    }

    else
    {
      sub_100057A60();
      sub_100057B28();
      v14 = sub_10037088C;
      v15 = &unk_1004C08D8;
      v16 = v10;
      dispatch_async(&_dispatch_main_q, block);
      v11 = KmlLogger();
      if (sub_10036F978(v11))
      {
        sub_1003721A0();
        v17 = 348;
        v9 = "%s : %i : endTransactionTimer started";
        goto LABEL_7;
      }
    }
  }
}

void sub_1003C1FBC(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 88))
    {
      sub_100057A60();
      sub_100057B28();
      v12 = sub_1003709C0;
      v13 = &unk_1004C08D8;
      v14 = v2;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v3 = KmlLogger();
      if (sub_10036F978(v3))
      {
        sub_1003721A0();
        v15 = 354;
        sub_1003721EC(&_mh_execute_header, v4, v5, "%s : %i : endTransactionTimer is not running.", v6, v7, v8, v9, v10, block[0], block[1], v12, v13, v14);
      }
    }
  }
}

void sub_1003C209C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 104))
    {
      if (*(a1 + 96))
      {
        v2 = KmlLogger();
        if (sub_10036F978(v2))
        {
          sub_1003721A0();
          v18 = 373;
          v9 = "%s : %i : A hceSessionTimer already running. Ignore another start";
LABEL_10:
          sub_1003721EC(&_mh_execute_header, v3, v4, v9, v5, v6, v7, v8, v13, block[0], block[1], v15, v16, v17);
        }
      }

      else
      {
        sub_100057A60();
        sub_100057B28();
        v15 = sub_100370A98;
        v16 = &unk_1004C08D8;
        v17 = v11;
        dispatch_async(&_dispatch_main_q, block);
        v12 = KmlLogger();
        if (sub_10036F978(v12))
        {
          sub_1003721A0();
          v18 = 391;
          v9 = "%s : %i : hceSessionTimer started";
          goto LABEL_10;
        }
      }
    }

    else
    {
      v10 = KmlLogger();
      if (sub_10036F978(v10))
      {
        sub_1003721A0();
        v18 = 368;
        v9 = "%s : %i : A timeout was not requested for this hce session";
        goto LABEL_10;
      }
    }
  }
}