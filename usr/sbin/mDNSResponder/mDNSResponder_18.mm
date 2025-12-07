void _dnssec_fetch_key_records(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (*(v1 + 48))
  {
    return;
  }

  if (dnssec_obj_validation_manager_contains_possibly_unsigned_rrset(*(v1 + 32), *(v1 + 40)))
  {
    if (!*(v1 + 112))
    {

      dnssec_obj_validation_manager_start_insecure_validation(v1, a1);
    }

    return;
  }

  v55 = 0;
  if (*(v1 + 56) && *(v1 + 72) != 1)
  {
    return;
  }

  *buf = 0;
  v3 = *(v1 + 32);
  if (!v3 || *(v3 + 40) == 3 || !*(v3 + 32))
  {
    v4 = 0;
    goto LABEL_17;
  }

  v4 = dnssec_obj_rrset_copy_signer_name(v3, buf);
  v5 = *buf;
  if (!*buf || *buf == -6727)
  {
LABEL_17:
    v8 = *(v1 + 40);
    if (v8 && *(v8 + 40) != 3 && *(v8 + 32))
    {
      v7 = dnssec_obj_rrset_copy_signer_name(v8, buf);
      v5 = *buf;
      if (*buf && *buf != -6727)
      {
        v6 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      v7 = 0;
    }

    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = v7;
    }

    if (v6)
    {
      v5 = 0;
      ++*v6;
      *buf = 0;
    }

    else
    {
      v5 = -6745;
      *buf = -6745;
    }

    goto LABEL_29;
  }

  v6 = 0;
  v7 = 0;
LABEL_29:
  v55 = v5;
  if (v4)
  {
    ref_count_obj_release(v4);
  }

  if (v7)
  {
    ref_count_obj_release(v7);
  }

  v9 = v55;
  if (v55)
  {
    v17 = 0;
    goto LABEL_121;
  }

  v10 = *(v1 + 32);
  if (!v10)
  {
    goto LABEL_42;
  }

  if (dnssec_obj_rrset_get_rr_type(v10) == 43 && !ref_count_obj_compare(*(v1 + 16), v6, 1))
  {
    v17 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount && mDNSLogCategory_DNSSEC != mDNSLogCategory_State)
    {
      v17 = mDNSLogCategory_DNSSEC_redacted;
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_ERROR))
      {
        v52 = *(v1 + 24);
        if (v6)
        {
          v53 = *(v6 + 24);
          v54 = *(v6 + 16);
        }

        else
        {
          v53 = 0;
          v54 = 0;
        }

        goto LABEL_149;
      }

LABEL_150:
      v17 = 0;
      v9 = -88993;
      goto LABEL_116;
    }

LABEL_144:
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v52 = *(v1 + 24);
      if (v6)
      {
        v53 = *(v6 + 24);
        v54 = *(v6 + 16);
      }

      else
      {
        v53 = 0;
        v54 = 0;
      }

LABEL_149:
      *buf = 67109891;
      v58 = v52;
      v59 = 2160;
      *v60 = 1752392040;
      *&v60[8] = 1040;
      *&v60[10] = v53;
      v61 = 2101;
      *v62 = v54;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[Q%u] Unable to continue the trust chain validation since DS is self-signed - name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x22u);
      goto LABEL_150;
    }

    goto LABEL_150;
  }

  v11 = *(v1 + 32);
  if (v11)
  {
    if (dnssec_obj_rrset_is_dnskey(v11))
    {
      v12 = 43;
    }

    else
    {
      v12 = 48;
    }

    rr_class = dnssec_obj_rrset_get_rr_class(*(v1 + 32));
  }

  else
  {
LABEL_42:
    v14 = *(v1 + 40);
    if (!v14)
    {
      v17 = 0;
      v9 = -6745;
      goto LABEL_116;
    }

    rr_class = dnssec_obj_rrset_get_rr_class(v14);
    v12 = 48;
  }

  v15 = *(v1 + 56);
  if (!v15 || *(v1 + 72) != 1)
  {
    v17 = 0;
    goto LABEL_81;
  }

  if (*(v15 + 342) != v12 || *(v15 + 344) != rr_class)
  {
    v17 = 0;
    v9 = -6700;
    goto LABEL_116;
  }

  v16 = dnssec_obj_domain_name_create_with_labels((v15 + 376), 0, &v55);
  v17 = v16;
  v9 = v55;
  if (v55)
  {
LABEL_121:
    *(v1 + 48) = 3;
    *(v1 + 52) = v9;
LABEL_122:
    if (!v6)
    {
      goto LABEL_124;
    }

    goto LABEL_123;
  }

  *(v1 + 72) = 0;
  v18 = ref_count_obj_compare(v16, v6, 1);
  v19 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v20 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v20 = 1;
  }

  v21 = v20;
  if (v18)
  {
    if (v21)
    {
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
      {
        if (v6)
        {
          v22 = *(v6 + 24);
          v23 = *(v6 + 16);
        }

        else
        {
          v22 = 0;
          v23 = 0;
        }

        v31 = *(v1 + 24);
        if (v17)
        {
          v32 = *(v17 + 24);
          v33 = *(v17 + 16);
        }

        else
        {
          v32 = 0;
          v33 = 0;
        }

LABEL_79:
        *buf = 67110915;
        v58 = v31;
        v59 = 2160;
        *v60 = 1752392040;
        *&v60[8] = 1040;
        *&v60[10] = v22;
        v61 = 2101;
        *v62 = v23;
        *&v62[8] = 2160;
        *&v62[10] = 1752392040;
        *&v62[18] = 1040;
        v63 = v32;
        v64 = 2101;
        v65 = v33;
        v66 = 1024;
        v67 = v12;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[Q%u] New validation key requestor replaces the old one - new name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, old name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d", buf, 0x42u);
      }
    }

    else
    {
      v19 = mDNSLogCategory_DNSSEC_redacted;
      if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
      {
        if (v6)
        {
          v22 = *(v6 + 24);
          v23 = *(v6 + 16);
        }

        else
        {
          v22 = 0;
          v23 = 0;
        }

        v31 = *(v1 + 24);
        if (v17)
        {
          v32 = *(v17 + 24);
          v33 = *(v17 + 16);
        }

        else
        {
          v32 = 0;
          v33 = 0;
        }

        goto LABEL_79;
      }
    }

    _dnssec_obj_validation_manager_reset_validation_key_requestor(v1);
LABEL_81:
    if (v12 != 43)
    {
      goto LABEL_105;
    }

    v34 = **(v6 + 16);
    v35 = *(a1 + 48);
    v36 = *(v1 + 120);
    if (!v36)
    {
      v37 = *(a1 + 56);
      if (v37)
      {
        *(v1 + 128) = 0;
        v38 = (v37 + 16);
        do
        {
          v38 = *v38;
          if (!v38)
          {
            v36 = 0;
            v43 = -6727;
LABEL_96:
            v55 = v43;
            *(v1 + 120) = v36;
            *(v1 + 140) = 0;
            *(v1 + 144) = 0;
            goto LABEL_97;
          }
        }

        while (ref_count_obj_compare(*(*(v38[2] + 16) + 16), v6, 1));
        v39 = 0;
        v40 = v38;
        do
        {
          ++v39;
          v40 = v40[1];
        }

        while (v40);
        if (v39)
        {
          if (!(v39 >> 61))
          {
            v36 = malloc_type_calloc(v39, 8uLL, 0xC1522D87uLL);
            if (v36)
            {
              v41 = *(v1 + 128);
              do
              {
                v42 = v38[2];
                v36[v41] = v42;
                ++*v42;
                ++v41;
                v38 = v38[1];
              }

              while (v38);
              v43 = 0;
              *(v1 + 128) = v41;
              goto LABEL_96;
            }
          }
        }

        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_97:
    if (v35 == 1)
    {
      if (v36)
      {
        goto LABEL_131;
      }
    }

    else
    {
      if (v35)
      {
        v9 = -6735;
        goto LABEL_116;
      }

      if (v36)
      {
        if (*(v1 + 144))
        {
          if (!v34)
          {
LABEL_102:
            v9 = -6754;
            goto LABEL_116;
          }

LABEL_105:
          v56 = 0;
          if (*(v1 + 64))
          {
            v9 = -6709;
            goto LABEL_116;
          }

          started = _dnssec_obj_validation_manager_start_sub_query(v6, rr_class, v12, 0x200000, a1, _dnssec_query_key_record_result_reply, &v56);
          *(v1 + 56) = started;
          v9 = v56;
          if (v56)
          {
LABEL_116:
            v55 = v9;
            goto LABEL_121;
          }

          v45 = started;
          v46 = mDNSLogCategory_DNSSEC;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
            {
              goto LABEL_120;
            }

            v47 = *(v1 + 24);
            v48 = bswap32(*(v45 + 170)) >> 16;
            if (v6)
            {
              v49 = *(v6 + 24);
              v50 = *(v6 + 16);
            }

            else
            {
              v49 = 0;
              v50 = 0;
            }
          }

          else
          {
            v46 = mDNSLogCategory_DNSSEC_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
            {
              goto LABEL_120;
            }

            v47 = *(v1 + 24);
            v48 = bswap32(*(v45 + 170)) >> 16;
            if (v6)
            {
              v49 = *(v6 + 24);
              v50 = *(v6 + 16);
            }

            else
            {
              v49 = 0;
              v50 = 0;
            }
          }

          *buf = 67110403;
          v58 = v47;
          v59 = 1024;
          *v60 = v48;
          *&v60[4] = 2160;
          *&v60[6] = 1752392040;
          v61 = 1040;
          *v62 = v49;
          *&v62[4] = 2101;
          *&v62[6] = v50;
          *&v62[14] = 1024;
          *&v62[16] = v12;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "[Q%u->SubQ%u] Start to query validated key records to validate the RRSet - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d", buf, 0x2Eu);
LABEL_120:
          v9 = v56;
          v55 = v56;
          if (!v56)
          {
            goto LABEL_122;
          }

          goto LABEL_121;
        }

        goto LABEL_131;
      }
    }

    if (!v34)
    {
      goto LABEL_102;
    }

    goto LABEL_105;
  }

  if (v21)
  {
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
    {
      goto LABEL_131;
    }

    v24 = *(v1 + 24);
    if (v17)
    {
      v25 = *(v17 + 24);
      v26 = *(v17 + 16);
    }

    else
    {
      v25 = 0;
      v26 = 0;
    }

    *buf = 67110147;
    v58 = v24;
    v59 = 2160;
    *v60 = 1752392040;
    *&v60[8] = 1040;
    *&v60[10] = v25;
    v61 = 2101;
    *v62 = v26;
    *&v62[8] = 1024;
    *&v62[10] = v12;
    v51 = v19;
  }

  else
  {
    v27 = mDNSLogCategory_DNSSEC_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
    {
      goto LABEL_131;
    }

    v28 = *(v1 + 24);
    if (v17)
    {
      v29 = *(v17 + 24);
      v30 = *(v17 + 16);
    }

    else
    {
      v29 = 0;
      v30 = 0;
    }

    *buf = 67110147;
    v58 = v28;
    v59 = 2160;
    *v60 = 1752392040;
    *&v60[8] = 1040;
    *&v60[10] = v29;
    v61 = 2101;
    *v62 = v30;
    *&v62[8] = 1024;
    *&v62[10] = v12;
    v51 = v27;
  }

  _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "[Q%u] The existing validation key requestor can still be reused - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d", buf, 0x28u);
LABEL_131:
  v55 = 0;
  if (v6)
  {
LABEL_123:
    ref_count_obj_release(v6);
  }

LABEL_124:
  if (v17)
  {
    ref_count_obj_release(v17);
  }
}

void _dnssec_make_validation_progress(uint64_t a1)
{
  if (*(a1 + 48))
  {
    return;
  }

  LODWORD(v76) = 0;
  *buf = 0;
  v77 = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3 != 4 && v3 != 2)
    {
      goto LABEL_21;
    }

    v6 = (a1 + 40);
    v5 = *(a1 + 40);
    if (!v5)
    {
      if (!*(a1 + 112))
      {
        goto LABEL_20;
      }

LABEL_18:
      v9 = 0;
      v10 = 0;
      v11 = *(a1 + 88) != 0;
      goto LABEL_24;
    }
  }

  else
  {
    v6 = (a1 + 40);
    v5 = *(a1 + 40);
    if (!v5)
    {
LABEL_21:
      v9 = 0;
LABEL_22:
      v10 = 0;
LABEL_23:
      v11 = 0;
      goto LABEL_24;
    }
  }

  v7 = *(v5 + 40);
  if (v7 != 4 && v7 != 2)
  {
    goto LABEL_21;
  }

  if (*(a1 + 112))
  {
    goto LABEL_18;
  }

  if (!v2)
  {
LABEL_34:
    v15 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_35;
  }

LABEL_20:
  if (*(v2 + 44))
  {
    goto LABEL_21;
  }

  if (!dnssec_obj_rrset_is_dnskey(v2))
  {
    v19 = *(a1 + 56);
    if (!v19)
    {
      goto LABEL_21;
    }

    if (*(v19 + 342) != 48)
    {
      goto LABEL_21;
    }

    v20 = *(a1 + 64);
    if (!v20 || !*(v20 + 32))
    {
      goto LABEL_21;
    }

    v9 = dnssec_obj_rrset_copy_dnskeys(v20, &v77, &v76);
    if (v76)
    {
      goto LABEL_22;
    }

    v15 = v77;
    v10 = 0;
    if (!dnssec_obj_rrset_matches_dnskey_key_tag(*(a1 + 32), v9, v77))
    {
      goto LABEL_23;
    }

LABEL_35:
    v16 = *v6;
    if (*v6)
    {
      v17 = *(a1 + 56);
      if (!v17)
      {
        goto LABEL_23;
      }

      if (*(v17 + 342) != 48)
      {
        goto LABEL_23;
      }

      if (*(v16 + 44))
      {
        goto LABEL_23;
      }

      v18 = *(a1 + 64);
      if (!v18 || !*(v18 + 32))
      {
        goto LABEL_23;
      }

      if (!v9)
      {
        v9 = dnssec_obj_rrset_copy_dnskeys(*(a1 + 64), &v77, &v76);
        if (v76)
        {
          goto LABEL_23;
        }

        v16 = *v6;
        v15 = v77;
      }

      if (!dnssec_obj_rrset_matches_dnskey_key_tag(v16, v9, v15))
      {
        goto LABEL_23;
      }
    }

    v11 = 1;
LABEL_24:
    v12 = *buf;
    if (*buf)
    {
      goto LABEL_25;
    }

LABEL_63:
    if (!v10)
    {
      goto LABEL_65;
    }

    goto LABEL_64;
  }

  if (*(a1 + 128))
  {
    if (*(a1 + 140) || (*(a1 + 144) & 1) != 0)
    {
      goto LABEL_21;
    }

    goto LABEL_34;
  }

  v21 = *(a1 + 56);
  if (!v21)
  {
    goto LABEL_21;
  }

  if (*(v21 + 342) != 43)
  {
    goto LABEL_21;
  }

  v22 = *(a1 + 64);
  if (!v22 || !*(v22 + 32))
  {
    goto LABEL_21;
  }

  v10 = dnssec_obj_rrset_copy_dses_with_supported_algorithm(v22, buf, &v76);
  if (v76 == -6727)
  {
    goto LABEL_61;
  }

  if (v76)
  {
    v9 = 0;
    goto LABEL_23;
  }

  v12 = *buf;
  if (dnssec_obj_rrset_matches_ds_key_tag(*(*(a1 + 32) + 24), v10, *buf))
  {
LABEL_61:
    v15 = 0;
    v9 = 0;
    goto LABEL_35;
  }

  v9 = 0;
  v11 = 0;
  if (!v12)
  {
    goto LABEL_63;
  }

LABEL_25:
  v13 = 0;
  do
  {
    v14 = v10[v13];
    if (v14)
    {
      ref_count_obj_release(v14);
      v10[v13] = 0;
    }

    ++v13;
  }

  while (v13 < v12);
LABEL_64:
  free(v10);
LABEL_65:
  v23 = v77;
  if (v77)
  {
    v24 = 0;
    do
    {
      v25 = v9[v24];
      if (v25)
      {
        ref_count_obj_release(v25);
        v9[v24] = 0;
      }

      ++v24;
    }

    while (v24 < v23);
  }

  else if (!v9)
  {
    goto LABEL_73;
  }

  free(v9);
LABEL_73:
  if (!v11)
  {
    return;
  }

  v76 = 0;
  v77 = 0;
  v26 = *(a1 + 48);
  if (v26)
  {
    v27 = 0;
    v28 = 0;
    v29 = *(a1 + 52);
LABEL_76:
    v78 = v29;
    goto LABEL_77;
  }

  v34 = *(a1 + 32);
  if (v34)
  {
    v35 = v34[10];
    if (v35 != 2 && v35 != 4)
    {
      v27 = 0;
      v28 = 0;
      v26 = 0;
      v29 = -6745;
      goto LABEL_76;
    }
  }

  v78 = -6745;
  v37 = *(a1 + 112);
  if (v37)
  {
    v38 = *(a1 + 88);
    if (!v38)
    {
      if (v37 != 3)
      {
        v27 = 0;
        v28 = 0;
        v26 = 0;
        v78 = 0;
        goto LABEL_77;
      }

      goto LABEL_99;
    }

    if (*v38 != 240 || (v39 = *(v38 + 7)) == 0 || *(v39 + 32) != 1 || (v40 = *(a1 + 16), dnssec_obj_resource_record_member_get_validation_result(v39) != 1) || !resource_record_get_insecure_validation_usable(v38))
    {
LABEL_99:
      v27 = 0;
      v28 = 0;
      v44 = -6700;
LABEL_100:
      v78 = v44;
      goto LABEL_207;
    }

    *buf = 0;
    v41 = dnssec_obj_domain_name_create_with_labels(*(v38 + 4), 0, buf);
    v42 = v41;
    if (*buf)
    {
      if (v41)
      {
        ref_count_obj_release(v41);
      }

      goto LABEL_99;
    }

    if (ref_count_obj_compare(v40, v41, 1))
    {
      is_sub_domain_of = dnssec_obj_domain_name_is_sub_domain_of(*(v40 + 16), v42[2]);
      ref_count_obj_release(v42);
      if (!is_sub_domain_of)
      {
        goto LABEL_99;
      }
    }

    else if (v42)
    {
      ref_count_obj_release(v42);
    }

    v67 = *(a1 + 32);
    if (v67)
    {
      *(v67 + 44) = 2;
    }

    v68 = *(a1 + 40);
    if (v68)
    {
      *(v68 + 44) = 2;
    }

    v28 = 0;
    v27 = 0;
    goto LABEL_196;
  }

  v48 = *(a1 + 64);
  if (v48)
  {
    v49 = *(v48 + 32) == 0;
    v50 = *(v48 + 44);
    if (v50 == 3)
    {
LABEL_114:
      v27 = 0;
      v28 = 0;
      v44 = -6709;
      goto LABEL_100;
    }
  }

  else
  {
    v50 = 0;
    v49 = 1;
  }

  if (!v34)
  {
    goto LABEL_134;
  }

  v51 = v34[10];
  if (v51 != 4 && v51 != 2)
  {
    goto LABEL_134;
  }

  v52 = v34[11];
  if (v52)
  {
    v53 = 0;
    v27 = 0;
    v28 = 0;
    v78 = v34[12];
LABEL_123:
    if (v52 == 3)
    {
      goto LABEL_207;
    }

    v54 = 0;
    goto LABEL_135;
  }

  if (dnssec_obj_rrset_is_non_dnskey(v34))
  {
    if (!v49)
    {
      if (v50 == 1)
      {
        v28 = dnssec_obj_rrset_copy_dnskeys(*(a1 + 64), &v77, &v78);
        if (!v78)
        {
          v53 = v77;
          v52 = dnssec_obj_rrset_validate_with_dnskeys(*(a1 + 32), v28, v77, &v78);
          v27 = 0;
          goto LABEL_123;
        }

        v27 = 0;
LABEL_229:
        v26 = 0;
        goto LABEL_77;
      }

      goto LABEL_186;
    }

    goto LABEL_134;
  }

  v55 = *(a1 + 128);
  if (!v55 || (v56 = *(a1 + 120)) == 0 || (*(a1 + 144) & 1) != 0)
  {
    if (!v49)
    {
      if (v50 == 1)
      {
        v27 = dnssec_obj_rrset_copy_dses_with_supported_algorithm(*(a1 + 64), &v76, &v78);
        if (v78 != -6727)
        {
          if (!v78)
          {
            v52 = dnssec_obj_rrset_validate_with_dses_or_trust_anchors(*(a1 + 32), v27, v76, 0, 0, &v78);
            v53 = 0;
            v28 = 0;
            goto LABEL_123;
          }

          v28 = 0;
          goto LABEL_229;
        }

LABEL_188:
        v53 = 0;
        v28 = 0;
        *(*(a1 + 32) + 44) = 2;
        v52 = 2;
        v54 = 1;
        goto LABEL_135;
      }

LABEL_186:
      if (v50 != 2)
      {
        goto LABEL_114;
      }

      v27 = 0;
      goto LABEL_188;
    }

LABEL_134:
    v53 = 0;
    v54 = 0;
    v28 = 0;
    v27 = 0;
    v52 = 0;
    goto LABEL_135;
  }

  v74 = *(a1 + 32);
  v75 = dnssec_obj_rrset_validate_with_dses_or_trust_anchors(v74, 0, 0, v56, v55, &v78);
  if (v75 == 3)
  {
    if (!*(v74 + 56))
    {
      *(v74 + 44) = 0;
    }

    v27 = 0;
    v28 = 0;
    *(a1 + 144) = 1;
    goto LABEL_207;
  }

  v52 = v75;
  v53 = 0;
  v54 = 0;
  v28 = 0;
  v27 = 0;
LABEL_135:
  v57 = *(a1 + 40);
  if (!v57)
  {
    goto LABEL_144;
  }

  v58 = v57[10];
  if (v58 != 4 && v58 != 2)
  {
    goto LABEL_144;
  }

  v59 = v57[11];
  if (!v59)
  {
    if (!v49)
    {
      if (v50 != 1)
      {
        if (v50 == 2)
        {
          *(v57 + 11) = 2;
LABEL_196:
          v78 = 0;
          v60 = 2;
          goto LABEL_197;
        }

        v66 = -6709;
        goto LABEL_171;
      }

      if (!v28)
      {
        v28 = dnssec_obj_rrset_copy_dnskeys(*(a1 + 64), &v77, &v78);
        if (v78)
        {
          v60 = 0;
          if (!v54)
          {
            goto LABEL_206;
          }

LABEL_197:
          v69 = mDNSLogCategory_DNSSEC;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
            {
LABEL_202:
              v70 = *(a1 + 24);
              *buf = 67109376;
              *&buf[4] = v70;
              v80 = 1026;
              v81 = v60;
              _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_INFO, "[Q%u] A new RRSet has been validated, scheduling cache update - result: %{public, mdns:dnssec_result}u", buf, 0xEu);
            }
          }

          else
          {
            v69 = mDNSLogCategory_DNSSEC_redacted;
            if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
            {
              goto LABEL_202;
            }
          }

          v71 = dword_10016D258;
          if (dword_10016D258 <= 1)
          {
            v71 = 1;
          }

          dword_10016D2B8 = v71;
LABEL_206:
          v26 = v60;
          if (v60 != 3)
          {
            goto LABEL_77;
          }

LABEL_207:
          v72 = mDNSLogCategory_DNSSEC;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
          {
            if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
            {
LABEL_212:
              v73 = *(a1 + 24);
              *buf = 67109376;
              *&buf[4] = v73;
              v80 = 1024;
              v81 = v78;
              _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_INFO, "[Q%u] Bogus RRSet failed DNSSEC validation - error: %d", buf, 0xEu);
            }
          }

          else
          {
            v72 = mDNSLogCategory_DNSSEC_redacted;
            if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
            {
              goto LABEL_212;
            }
          }

          v26 = 3;
          goto LABEL_77;
        }

        v57 = *(a1 + 40);
        v53 = v77;
      }

      v59 = dnssec_obj_rrset_validate_with_dnskeys(v57, v28, v53, &v78);
      goto LABEL_140;
    }

LABEL_144:
    v59 = 0;
    goto LABEL_145;
  }

  v78 = v57[12];
LABEL_140:
  if (v59 == 3)
  {
    goto LABEL_141;
  }

LABEL_145:
  v78 = 0;
  if (v52 != 2 && v59 != 2)
  {
    v61 = *(a1 + 40);
    if (v61)
    {
      *buf = 0;
      denial_of_existence = dnssec_obj_rrset_get_denial_of_existence(v61, buf);
      if (*buf)
      {
        v78 = *buf;
LABEL_141:
        v60 = 3;
        if (!v54)
        {
          goto LABEL_206;
        }

        goto LABEL_197;
      }

      v63 = *(denial_of_existence + 16);
      v78 = 0;
      v64 = *(a1 + 32);
      if (v64)
      {
        if (v52 == 1 && v59 == 1)
        {
          if (!dnssec_obj_rrset_is_wildcard_answer(v64) || v63 != 5)
          {
            goto LABEL_170;
          }

LABEL_167:
          v78 = 0;
          v60 = 1;
          goto LABEL_197;
        }

        if (v52 && v59)
        {
          goto LABEL_170;
        }

        goto LABEL_173;
      }

      if (!v63 || v63 == 2)
      {
        goto LABEL_170;
      }

      if (v63 == 5)
      {
        v60 = 0;
        v26 = 0;
        v78 = -6745;
        if (v54)
        {
          goto LABEL_197;
        }

        goto LABEL_77;
      }

      if (!v59)
      {
        goto LABEL_173;
      }

      if (v59 == 1)
      {
        goto LABEL_167;
      }
    }

    else
    {
      v65 = *(a1 + 32);
      if (v65)
      {
        if (!dnssec_obj_rrset_is_non_wildcard_answer(v65) || !v52)
        {
LABEL_173:
          v78 = -6745;
          v60 = 0;
          v26 = 0;
          if (v54)
          {
            goto LABEL_197;
          }

          goto LABEL_77;
        }

        if (v52 == 1)
        {
          goto LABEL_167;
        }
      }
    }

LABEL_170:
    v66 = -6736;
LABEL_171:
    v78 = v66;
    if ((v54 & 1) == 0)
    {
      goto LABEL_207;
    }

    v60 = 3;
    goto LABEL_197;
  }

  v60 = 2;
  v26 = 2;
  if (v54)
  {
    goto LABEL_197;
  }

LABEL_77:
  v30 = v78;
  *(a1 + 48) = v26;
  *(a1 + 52) = v30;
  v31 = v77;
  if (v77)
  {
    v32 = 0;
    do
    {
      v33 = v28[v32];
      if (v33)
      {
        ref_count_obj_release(v33);
        v28[v32] = 0;
      }

      ++v32;
    }

    while (v32 < v31);
    goto LABEL_102;
  }

  if (v28)
  {
LABEL_102:
    free(v28);
  }

  v45 = v76;
  if (v76)
  {
    v46 = 0;
    do
    {
      v47 = v27[v46];
      if (v47)
      {
        ref_count_obj_release(v47);
        v27[v46] = 0;
      }

      ++v46;
    }

    while (v46 < v45);
  }

  else if (!v27)
  {
    return;
  }

  free(v27);
}

void _dnssec_query_key_record_result_reply(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned int a4)
{
  v6 = *(a3 + 2);
  if (v6 != 5 || *a3 == 240)
  {
    if (*(a2 + 144))
    {
      if (a4 <= 1)
      {
        v7 = *(a2 + 176);
        if (v6 == 48 || v6 == 43)
        {
          v8 = *(a3 + 7);
          if (v8)
          {
            if (dnssec_obj_resource_record_member_get_validation_result(v8) - 3 >= 0xFFFFFFFE)
            {
              v44 = 0;
              v9 = dnssec_obj_domain_name_create_with_labels(*(a3 + 4), 0, &v44);
              if (v44)
              {
                goto LABEL_110;
              }

              v10 = *(v7 + 24);
              v11 = mDNSLogCategory_DNSSEC;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
              {
                if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_21;
                }

                v12 = bswap32(*(v10 + 340)) >> 16;
                v13 = *a3 != 240;
                if (v9)
                {
                  v14 = *(v9 + 6);
                  v15 = v9[2];
                }

                else
                {
                  v14 = 0;
                  v15 = 0;
                }
              }

              else
              {
                v11 = mDNSLogCategory_DNSSEC_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_21;
                }

                v12 = bswap32(*(v10 + 340)) >> 16;
                v13 = *a3 != 240;
                if (v9)
                {
                  v14 = *(v9 + 6);
                  v15 = v9[2];
                }

                else
                {
                  v14 = 0;
                  v15 = 0;
                }
              }

              v16 = *(a3 + 2);
              v17 = *(a3 + 6);
              *buf = 67110915;
              *v46 = v12;
              *&v46[4] = 1024;
              *&v46[6] = v13;
              LOWORD(v47) = 1024;
              *(&v47 + 2) = a4;
              HIWORD(v47) = 2160;
              *v48 = 1752392040;
              *&v48[8] = 1040;
              LODWORD(v49) = v14;
              WORD2(v49) = 2101;
              *(&v49 + 6) = v15;
              HIWORD(v49) = 1024;
              v50 = v16;
              v51 = 1024;
              v52 = v17;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[Q%u] DNSSEC secure record changes - %{mdns:pos/neg}d, %{mdns:addrmv}d, qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, qtype: %{mdns:rrtype}d, rd_len: %u.", buf, 0x3Au);
LABEL_21:
              v18 = *(v7 + 64);
              if (a4)
              {
                if (!*(v18 + 112))
                {
                  v19 = *(a3 + 2);
                  if (v19 == 43 || v19 == 48)
                  {
                    *buf = 0;
                    v20 = *(v18 + 64);
                    if (v20)
                    {
                      v21 = 0;
                      ++*v20;
                    }

                    else
                    {
                      v37 = dnssec_obj_domain_name_create_with_labels(*(a3 + 4), 1, buf);
                      v21 = v37;
                      if (*buf)
                      {
                        v20 = 0;
                        if (!v37)
                        {
LABEL_76:
                          if (v20)
                          {
                            ref_count_obj_release(v20);
                          }

                          v44 = *buf;
                          if (*buf == -6730)
                          {
                            v38 = mDNSLogCategory_DNSSEC;
                            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
                            {
                              if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEBUG))
                              {
                                goto LABEL_110;
                              }
                            }

                            else
                            {
                              v38 = mDNSLogCategory_DNSSEC_redacted;
                              if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEBUG))
                              {
                                goto LABEL_110;
                              }
                            }

                            v39 = bswap32(*(v10 + 340)) >> 16;
                            *buf = 67109120;
                            *v46 = v39;
                            v40 = "[Q%u] Getting duplicate secure record add event due to possible primary DNSSEC question change";
                            goto LABEL_91;
                          }

                          if (*buf)
                          {
                            goto LABEL_110;
                          }

LABEL_109:
                          _dnssec_make_validation_progress(*(v7 + 64));
                          goto LABEL_110;
                        }

LABEL_75:
                        ref_count_obj_release(v21);
                        goto LABEL_76;
                      }

                      v20 = dnssec_obj_rrset_create(v37, *(v18 + 136), buf);
                      if (*buf)
                      {
LABEL_74:
                        if (!v21)
                        {
                          goto LABEL_76;
                        }

                        goto LABEL_75;
                      }
                    }

                    *buf = dnssec_obj_rrset_add_rr(v20, a3);
                    if (!*buf && !*(v18 + 64))
                    {
                      if (v20)
                      {
                        ++*v20;
                      }

                      *(v18 + 64) = v20;
                    }

                    goto LABEL_74;
                  }

                  v34 = mDNSLogCategory_DNSSEC;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
                  {
                    if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_58;
                    }
                  }

                  else
                  {
                    v34 = mDNSLogCategory_DNSSEC_redacted;
                    if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
                    {
LABEL_58:
                      *buf = 136447234;
                      *v46 = "validated_key->rrtype == kDNSRecordType_DNSKEY || validated_key->rrtype == kDNSRecordType_DS";
                      *&v46[8] = 2082;
                      v47 = "";
                      *v48 = 2082;
                      *&v48[2] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec.c";
                      LOWORD(v49) = 1024;
                      *(&v49 + 2) = 387;
                      WORD3(v49) = 2048;
                      *(&v49 + 1) = 0;
LABEL_96:
                      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
                    }
                  }

LABEL_97:
                  v44 = -6756;
                  goto LABEL_110;
                }
              }

              else
              {
                dnssec_obj_validation_manager_remove_validated_cache(*(v7 + 64));
                v18 = *(v7 + 64);
                if (!*(v18 + 112))
                {
                  v31 = *(a3 + 2);
                  if (v31 == 43 || v31 == 48)
                  {
                    v32 = dnssec_obj_rrset_remove_rr(*(v18 + 64), a3);
                    if (!v32)
                    {
                      v33 = *(v18 + 64);
                      if (!v33[4] && v33)
                      {
                        ref_count_obj_release(v33);
                        *(v18 + 64) = 0;
                      }

                      *(v18 + 48) = 0xFFFFE5C200000000;
                      *(v18 + 140) = 0;
                      *(v18 + 144) = 0;
                      v44 = 0;
                      goto LABEL_110;
                    }

                    v44 = v32;
                    if (v32 == -6727)
                    {
                      v38 = mDNSLogCategory_DNSSEC;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
                      {
                        if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_DEBUG))
                        {
                          goto LABEL_110;
                        }
                      }

                      else
                      {
                        v38 = mDNSLogCategory_DNSSEC_redacted;
                        if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_DEBUG))
                        {
                          goto LABEL_110;
                        }
                      }

                      v43 = bswap32(*(v10 + 340)) >> 16;
                      *buf = 67109120;
                      *v46 = v43;
                      v40 = "[Q%u] Added secure record not found due to possible primary DNSSEC question change";
LABEL_91:
                      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, v40, buf, 8u);
                    }

LABEL_110:
                    if (v9)
                    {
                      ref_count_obj_release(v9);
                    }

                    return;
                  }

                  v34 = mDNSLogCategory_DNSSEC;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
                  {
                    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_97;
                    }
                  }

                  else
                  {
                    v34 = mDNSLogCategory_DNSSEC_redacted;
                    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
                    {
                      goto LABEL_97;
                    }
                  }

                  *buf = 136447234;
                  *v46 = "validated_key->rrtype == kDNSRecordType_DNSKEY || validated_key->rrtype == kDNSRecordType_DS";
                  *&v46[8] = 2082;
                  v47 = "";
                  *v48 = 2082;
                  *&v48[2] = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec.c";
                  LOWORD(v49) = 1024;
                  *(&v49 + 2) = 397;
                  WORD3(v49) = 2048;
                  *(&v49 + 1) = 0;
                  goto LABEL_96;
                }
              }

              if (*a3 == 240 && (v22 = *(a3 + 7)) != 0 && *(v22 + 32) == 1 && dnssec_obj_resource_record_member_get_validation_result(v22) == 1)
              {
                if (*(a3 + 2) == 43)
                {
                  if (a4 != 1)
                  {
                    *(v18 + 48) = 0xFFFFE5C200000000;
                    _dnssec_obj_validation_manager_reset_validation_key_requestor(v18);
                    _dnssec_obj_validation_manager_reset_insecure_validation(v18);
                    goto LABEL_107;
                  }

                  if (resource_record_get_insecure_validation_usable(a3))
                  {
                    v23 = mDNSLogCategory_DNSSEC;
                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
                      {
                        v24 = *(v18 + 24);
                        v25 = bswap32(*(*(v18 + 80) + 340)) >> 16;
                        v26 = *(a3 + 4);
                        if (v26)
                        {
                          v35 = *(a3 + 4);
                          while (1)
                          {
                            if (!v35 || (v36 = *v35, v36 > 0x3F))
                            {
LABEL_66:
                              v29 = 257;
                              goto LABEL_102;
                            }

                            if (!*v35)
                            {
                              break;
                            }

                            v35 += v36 + 1;
                            if (&v35[-v26] >= 256)
                            {
                              goto LABEL_66;
                            }
                          }

                          v29 = (v35 - v26 + 1);
                        }

                        else
                        {
                          v29 = 0;
                        }

                        goto LABEL_102;
                      }
                    }

                    else
                    {
                      v23 = mDNSLogCategory_DNSSEC_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
                      {
                        v24 = *(v18 + 24);
                        v25 = bswap32(*(*(v18 + 80) + 340)) >> 16;
                        v26 = *(a3 + 4);
                        if (v26)
                        {
                          v27 = *(a3 + 4);
                          while (1)
                          {
                            if (!v27 || (v28 = *v27, v28 > 0x3F))
                            {
LABEL_44:
                              v29 = 257;
                              goto LABEL_102;
                            }

                            if (!*v27)
                            {
                              break;
                            }

                            v27 += v28 + 1;
                            if (&v27[-v26] >= 256)
                            {
                              goto LABEL_44;
                            }
                          }

                          v29 = (v27 - v26 + 1);
                        }

                        else
                        {
                          v29 = 0;
                        }

LABEL_102:
                        v41 = *(a3 + 2);
                        *buf = 67110403;
                        *v46 = v24;
                        *&v46[4] = 1024;
                        *&v46[6] = v25;
                        strcpy(&v47, "p\bhash");
                        HIBYTE(v47) = 0;
                        *v48 = 68157440;
                        *&v48[4] = v29;
                        *&v48[8] = 2101;
                        *&v49 = v26;
                        WORD4(v49) = 1024;
                        *(&v49 + 10) = v41;
                        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[Q%u->SubQ%u] Insecure validation complete, scheduling cache update - insecure zone: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, ttl: %u", buf, 0x2Eu);
                      }
                    }

                    *(v18 + 88) = a3;
                    v42 = dword_10016D258;
                    if (dword_10016D258 <= 1)
                    {
                      v42 = 1;
                    }

                    dword_10016D2B8 = v42;
LABEL_106:
                    if (a4)
                    {
                      goto LABEL_109;
                    }

LABEL_107:
                    if (dnssec_obj_validation_manager_contains_possibly_unsigned_rrset(*(v18 + 32), *(v18 + 40)))
                    {
                      dnssec_obj_validation_manager_start_insecure_validation(v18, v7);
                    }

                    goto LABEL_109;
                  }

                  v30 = -90021;
                }

                else
                {
                  v30 = -6756;
                }
              }

              else
              {
                v30 = -6736;
              }

              _dnssec_obj_validation_manager_fail_insecure_validation(v18, v30);
              goto LABEL_106;
            }
          }
        }
      }
    }
  }
}

void _query_record_with_insecure_validation_reply(uint64_t a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (*(a2 + 144))
  {
    v18 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v67 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v67 = 1;
    }

    if (v67)
    {
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      v18 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    *buf = 136447234;
    *v74 = "!dns_question_is_dnssec_requestor(question)";
    *&v74[8] = 2082;
    *&v74[10] = "";
    *&v74[18] = 2082;
    *&v75 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec.c";
    WORD4(v75) = 1024;
    *(&v75 + 10) = 330;
    HIWORD(v75) = 2048;
    v76 = 0;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", buf, 0x30u);
    return;
  }

  v7 = *(a3 + 2);
  if (v7 != 5 && v7 != 43)
  {
    v18 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v19 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      v18 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    *buf = 136447234;
    *v74 = "answer->rrtype == kDNSRecordType_DS || answer->rrtype == kDNSRecordType_CNAME";
    *&v74[8] = 2082;
    *&v74[10] = "";
    *&v74[18] = 2082;
    *&v75 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec.c";
    WORD4(v75) = 1024;
    *(&v75 + 10) = 331;
    HIWORD(v75) = 2048;
    v76 = 0;
    goto LABEL_26;
  }

  v8 = *(a2 + 176);
  v9 = *(v8 + 64);
  if (!*(v9 + 112))
  {
    v18 = mDNSLogCategory_DNSSEC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v68 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
    }

    else
    {
      v68 = 1;
    }

    if (v68)
    {
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      v18 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    *buf = 136447234;
    *v74 = "_insecure_validation_in_progress(dnssec_context)";
    *&v74[8] = 2082;
    *&v74[10] = "";
    *&v74[18] = 2082;
    *&v75 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec.c";
    WORD4(v75) = 1024;
    *(&v75 + 10) = 334;
    HIWORD(v75) = 2048;
    v76 = 0;
    goto LABEL_26;
  }

  if (*(v9 + 96) != a2)
  {
    v18 = mDNSLogCategory_DNSSEC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    else
    {
      v18 = mDNSLogCategory_DNSSEC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT))
      {
        return;
      }
    }

    *buf = 136447234;
    *v74 = "_is_insecure_validation_question(dnssec_context, question)";
    *&v74[8] = 2082;
    *&v74[10] = "";
    *&v74[18] = 2082;
    *&v75 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec.c";
    WORD4(v75) = 1024;
    *(&v75 + 10) = 335;
    HIWORD(v75) = 2048;
    v76 = 0;
    goto LABEL_26;
  }

  if (v7 == 5)
  {
    return;
  }

  v10 = *(v8 + 24);
  v11 = mDNSLogCategory_DNSSEC;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
  {
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
    {
      goto LABEL_47;
    }

    v21 = bswap32(*(v10 + 340));
    v22 = bswap32(*(a2 + 340));
    v14 = *(a3 + 4);
    if (v14)
    {
      v23 = *(a3 + 4);
      while (1)
      {
        if (!v23 || (v24 = *v23, v24 > 0x3F))
        {
LABEL_34:
          v17 = 257;
          goto LABEL_38;
        }

        if (!*v23)
        {
          break;
        }

        v23 += v24 + 1;
        if (&v23[-v14] >= 256)
        {
          goto LABEL_34;
        }
      }

      v17 = (v23 - v14 + 1);
    }

    else
    {
      v17 = 0;
    }

LABEL_38:
    v25 = HIWORD(v21);
    v26 = HIWORD(v22);
    v27 = *a3 != 240;
    v28 = a4 != 0;
    v29 = *(a3 + 3);
    v30 = v29 + 5;
    if (v29 + 5) < 6 && ((0x2Du >> v30))
    {
      LODWORD(v29) = dword_10010DFD0[v30];
    }
  }

  else
  {
    v11 = mDNSLogCategory_DNSSEC_redacted;
    if (!os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
    {
      goto LABEL_47;
    }

    v12 = bswap32(*(v10 + 340));
    v13 = bswap32(*(a2 + 340));
    v14 = *(a3 + 4);
    if (v14)
    {
      v15 = *(a3 + 4);
      while (1)
      {
        if (!v15 || (v16 = *v15, v16 > 0x3F))
        {
LABEL_16:
          v17 = 257;
          goto LABEL_43;
        }

        if (!*v15)
        {
          break;
        }

        v15 += v16 + 1;
        if (&v15[-v14] >= 256)
        {
          goto LABEL_16;
        }
      }

      v17 = (v15 - v14 + 1);
    }

    else
    {
      v17 = 0;
    }

LABEL_43:
    v25 = HIWORD(v12);
    v26 = HIWORD(v13);
    v27 = *a3 != 240;
    v28 = a4 != 0;
    v29 = *(a3 + 3);
    v31 = v29 + 5;
    if (v29 + 5) < 6 && ((0x2Du >> v31))
    {
      LODWORD(v29) = dword_10010DFE8[v31];
    }
  }

  v32 = a3[2];
  v33 = *(a3 + 2);
  *buf = 67111427;
  *v74 = v25;
  *&v74[4] = 1024;
  *&v74[6] = v26;
  *&v74[10] = 2160;
  *&v74[12] = 1752392040;
  LOWORD(v75) = 1040;
  *(&v75 + 2) = v17;
  WORD3(v75) = 2101;
  *(&v75 + 1) = v14;
  LOWORD(v76) = 1024;
  *(&v76 + 2) = v27;
  HIWORD(v76) = 1024;
  v77 = v28;
  v78 = 1024;
  v79 = v29;
  v80 = 1024;
  v81 = v32;
  v82 = 1024;
  v83 = v33;
  _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[Q%u->SubQ%u] DS denial lookup record changes - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P, %{mdns:pos/neg}d, %{mdns:addrmv}d, interface index: %d, mortality: %{mdns:mortality}d, ttl: %u", buf, 0x46u);
LABEL_47:
  v34 = *(v8 + 64);
  v71 = 0;
  if (*(v34 + 112) != 1)
  {
    v36 = 0;
    v63 = 0;
    v66 = 0;
    v50 = -6709;
    goto LABEL_109;
  }

  if (*(a3 + 7) || a4 != 1)
  {
    v36 = 0;
    goto LABEL_131;
  }

  if (*(a3 + 2) != 43)
  {
    v36 = 0;
    v63 = 0;
    v66 = 0;
    v50 = -6756;
    goto LABEL_109;
  }

  v35 = *(v34 + 16);
  v36 = *(v34 + 104);
  if (v36)
  {
    ++*v36;
  }

  if (*a3 == 240)
  {
    v37 = *(v8 + 24);
    if (!ref_count_obj_compare(v35, v36, 1) && *(v37 + 342) == 43)
    {
      v38 = mDNSLogCategory_DNSSEC;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_ERROR))
        {
          v39 = bswap32(*(v37 + 340)) >> 16;
          if (v35)
          {
            v40 = *(v35 + 24);
            v41 = *(v35 + 16);
          }

          else
          {
            v40 = 0;
            v41 = 0;
          }

          goto LABEL_107;
        }
      }

      else
      {
        v38 = mDNSLogCategory_DNSSEC_redacted;
        if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_ERROR))
        {
          v39 = bswap32(*(v37 + 340)) >> 16;
          if (v35)
          {
            v40 = *(v35 + 24);
            v41 = *(v35 + 16);
          }

          else
          {
            v40 = 0;
            v41 = 0;
          }

LABEL_107:
          *buf = 67109891;
          *v74 = v39;
          *&v74[4] = 2160;
          *&v74[6] = 1752392040;
          *&v74[14] = 1040;
          *&v74[16] = v40;
          LOWORD(v75) = 2101;
          *(&v75 + 2) = v41;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "[Q%u] The discovered possible denial of existence for DS record points back to the current question itself, insecure delegation validation fails due to possible missing RRSIG of the original response - qname: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x22u);
        }
      }

      v63 = 0;
      v66 = 0;
      v50 = -90020;
LABEL_109:
      v71 = v50;
      goto LABEL_110;
    }

    v48 = *(*(v34 + 96) + 344);
    if (v36)
    {
      ++*v36;
    }

    _dnssec_obj_validation_manager_stop_negative_ds_query(v34);
    *(v34 + 112) = 2;
    if (*(v34 + 80))
    {
      v50 = -6709;
    }

    else
    {
      v72 = 0;
      started = _dnssec_obj_validation_manager_start_sub_query(v36, v48, 43, 2101248, v8, _dnssec_query_key_record_result_reply, &v72);
      *(v34 + 80) = started;
      v50 = v72;
      if (!v72)
      {
        v51 = started;
        v52 = mDNSLogCategory_DNSSEC;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_DNSSEC == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_INFO))
          {
            v53 = *(v34 + 24);
            v54 = bswap32(*(v51 + 170)) >> 16;
            if (v36)
            {
              v55 = *(v36 + 24);
              v56 = *(v36 + 16);
            }

            else
            {
              v55 = 0;
              v56 = 0;
            }

            goto LABEL_96;
          }
        }

        else
        {
          v52 = mDNSLogCategory_DNSSEC_redacted;
          if (os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_INFO))
          {
            v53 = *(v34 + 24);
            v54 = bswap32(*(v51 + 170)) >> 16;
            if (v36)
            {
              v55 = *(v36 + 24);
              v56 = *(v36 + 16);
            }

            else
            {
              v55 = 0;
              v56 = 0;
            }

LABEL_96:
            *buf = 67110147;
            *v74 = v53;
            *&v74[4] = 1024;
            *&v74[6] = v54;
            *&v74[10] = 2160;
            *&v74[12] = 1752392040;
            LOWORD(v75) = 1040;
            *(&v75 + 2) = v55;
            WORD3(v75) = 2101;
            *(&v75 + 1) = v56;
            _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "[Q%u->SubQ%u] Possible DS denial found, starting secure DS denial query - DS name: %{sensitive, mask.hash, mdnsresponder:domain_name}.*P", buf, 0x28u);
          }
        }

        v63 = 0;
        v66 = v36;
        goto LABEL_98;
      }
    }

    v63 = 0;
    v71 = v50;
    v66 = v36;
LABEL_110:
    _dnssec_obj_validation_manager_fail_insecure_validation(v34, v50);
    if (!v36)
    {
      goto LABEL_100;
    }

    goto LABEL_99;
  }

  if (!dnssec_obj_domain_name_is_sub_domain_of(*(v35 + 16), *(v36 + 16)))
  {
LABEL_131:
    v63 = 0;
    v66 = 0;
    v50 = -6736;
    goto LABEL_109;
  }

  v42 = *(v35 + 16);
  v43 = *v42;
  if (*v42)
  {
    v44 = 0;
    v45 = *(v35 + 16);
    do
    {
      ++v44;
      v46 = v45 + v43;
      v47 = *(v46 + 1);
      v45 = v46 + 1;
      v43 = v47;
    }

    while (v47);
  }

  else
  {
    v44 = 0;
  }

  v57 = *(v36 + 16);
  v58 = *v57;
  if (*v57)
  {
    v59 = -1;
    do
    {
      v60 = &v57[v58];
      v61 = v60[1];
      v57 = v60 + 1;
      v58 = v61;
      ++v59;
    }

    while (v61);
    v62 = -2 - v59;
  }

  else
  {
    v62 = -1;
  }

  v63 = dnssec_obj_domain_name_copy_parent_domain(v42, v44 + v62, &v71);
  v50 = v71;
  if (v71)
  {
    goto LABEL_141;
  }

  _dnssec_obj_validation_manager_stop_negative_ds_query(v34);
  v64 = _dnssec_obj_validation_manager_start_negative_ds_query(v34, v63, v8);
  v71 = v64;
  if (v64)
  {
    v50 = v64;
LABEL_141:
    v66 = 0;
    goto LABEL_110;
  }

  if (v63)
  {
    ++*v63;
  }

  v65 = *(v34 + 104);
  if (v65)
  {
    ref_count_obj_release(v65);
  }

  v66 = 0;
  *(v34 + 104) = v63;
LABEL_98:
  v71 = 0;
  if (v36)
  {
LABEL_99:
    ref_count_obj_release(v36);
  }

LABEL_100:
  if (v63)
  {
    ref_count_obj_release(v63);
  }

  if (v66)
  {
    ref_count_obj_release(v66);
  }
}

void _dnssec_obj_resource_record_member_finalize(uint64_t result)
{
  if (!*(result + 32) && (*(result + 40) & 1) == 0)
  {
    v2 = *(result + 48);
    if (v2)
    {
      ref_count_obj_release(v2);
      *(result + 48) = 0;
    }
  }
}

_DWORD *_dnssec_obj_resource_record_member_new()
{
  result = malloc_type_calloc(1uLL, 0x38uLL, 0xB7BBD98FuLL);
  if (result)
  {
    v1 = result;
    v2 = &_dnssec_obj_resource_record_member_kind;
    *(result + 1) = &_dnssec_obj_resource_record_member_kind;
    do
    {
      v3 = v2[2];
      if (v3)
      {
        v3(v1);
      }

      v2 = *v2;
    }

    while (v2);
    ++*v1;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t dnssec_obj_resource_record_member_get_validation_result(uint64_t a1)
{
  if (*(a1 + 32) == 1)
  {
    return *(a1 + 40);
  }

  v2 = mDNSLogCategory_DNSSEC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v3 = mDNSLogCategory_DNSSEC == mDNSLogCategory_State;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC, OS_LOG_TYPE_FAULT);
    if (result)
    {
LABEL_12:
      v4 = 136447234;
      v5 = "me->aware_type == dnssec_aware_rr_validated";
      v6 = 2082;
      v7 = "";
      v8 = 2082;
      v9 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSMacOSX/dnssec_v2/dnssec_objs/dnssec_obj_resource_record_member.c";
      v10 = 1024;
      v11 = 210;
      v12 = 2048;
      v13 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v4, 0x30u);
      return 0;
    }
  }

  else
  {
    v2 = mDNSLogCategory_DNSSEC_redacted;
    result = os_log_type_enabled(mDNSLogCategory_DNSSEC_redacted, OS_LOG_TYPE_FAULT);
    if (result)
    {
      goto LABEL_12;
    }
  }

  return result;
}

void mrcs_prefs_set_shared_assist_cache_enable(int a1)
{
  os_unfair_lock_lock(&g_public_lock);
  if (a1)
  {
    v2 = &kCFBooleanTrue;
  }

  else
  {
    v2 = &kCFBooleanFalse;
  }

  plist = _mrcs_prefs_get_plist();
  if (plist)
  {
    v4 = plist;
    v5 = *v2;
    Value = CFDictionaryGetValue(plist, @"shared-assist-cache.enable");
    if (v5)
    {
      if (Value && CFEqual(v5, Value))
      {
        goto LABEL_30;
      }

      CFDictionarySetValue(v4, @"shared-assist-cache.enable", v5);
    }

    else
    {
      if (!Value)
      {
        goto LABEL_30;
      }

      CFDictionaryRemoveValue(v4, @"shared-assist-cache.enable");
    }

    error = 0;
    plist_file_path = _mrcs_prefs_create_plist_file_path();
    if (!plist_file_path)
    {
      goto LABEL_30;
    }

    v8 = plist_file_path;
    v9 = CFWriteStreamCreateWithFile(0, plist_file_path);
    if (!v9)
    {
      if (_mrcs_prefs_log_s_once != -1)
      {
        dispatch_once(&_mrcs_prefs_log_s_once, &__block_literal_global_6554);
      }

      v12 = _mrcs_prefs_log_s_log;
      if (os_log_type_enabled(_mrcs_prefs_log_s_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v19 = v8;
        _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "Failed to create write stream -- path: %{public}@", buf, 0xCu);
      }

      goto LABEL_29;
    }

    v10 = v9;
    if (CFWriteStreamOpen(v9))
    {
      if (!CFPropertyListWrite(v4, v10, kCFPropertyListBinaryFormat_v1_0, 0, &error))
      {
        if (_mrcs_prefs_log_s_once != -1)
        {
          dispatch_once(&_mrcs_prefs_log_s_once, &__block_literal_global_6554);
        }

        v11 = _mrcs_prefs_log_s_log;
        if (os_log_type_enabled(_mrcs_prefs_log_s_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543618;
          v19 = v8;
          v20 = 2114;
          v21 = error;
          _os_log_fault_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "Failed to write plist to file -- path: %{public}@, error: %{public}@", buf, 0x16u);
        }
      }

      CFWriteStreamClose(v10);
    }

    else
    {
      if (_mrcs_prefs_log_s_once != -1)
      {
        dispatch_once(&_mrcs_prefs_log_s_once, &__block_literal_global_6554);
      }

      v13 = _mrcs_prefs_log_s_log;
      if (os_log_type_enabled(_mrcs_prefs_log_s_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v19 = v8;
        _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Failed to open write stream -- path: %{public}@", buf, 0xCu);
      }
    }

    CFRelease(v8);
    CFRelease(v10);
    v8 = error;
    if (error)
    {
LABEL_29:
      CFRelease(v8);
    }
  }

LABEL_30:
  os_unfair_lock_unlock(&g_public_lock);
  v14 = notify_post("com.apple.mrcs.prefs-changed.ahared-assist-cache");
  if (v14)
  {
    v15 = v14;
    if (_mrcs_prefs_log_s_once != -1)
    {
      dispatch_once(&_mrcs_prefs_log_s_once, &__block_literal_global_6554);
    }

    v16 = _mrcs_prefs_log_s_log;
    if (os_log_type_enabled(_mrcs_prefs_log_s_log, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446466;
      v19 = "com.apple.mrcs.prefs-changed.ahared-assist-cache";
      v20 = 1024;
      LODWORD(v21) = v15;
      _os_log_fault_impl(&_mh_execute_header, v16, OS_LOG_TYPE_FAULT, "Failed to post notification -- name: %{public}s, status: %u", buf, 0x12u);
    }
  }
}

uint64_t _mrcs_prefs_get_plist()
{
  if (_mrcs_prefs_get_plist_s_plist)
  {
    return _mrcs_prefs_get_plist_s_plist;
  }

  error = 0;
  plist_file_path = _mrcs_prefs_create_plist_file_path();
  if (!plist_file_path)
  {
    _mrcs_prefs_get_plist_s_plist = 0;
LABEL_36:
    _mrcs_prefs_get_plist_s_plist = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!_mrcs_prefs_get_plist_s_plist)
    {
      if (_mrcs_prefs_log_s_once != -1)
      {
        dispatch_once(&_mrcs_prefs_log_s_once, &__block_literal_global_6554);
      }

      v13 = _mrcs_prefs_log_s_log;
      if (os_log_type_enabled(_mrcs_prefs_log_s_log, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v13, OS_LOG_TYPE_FAULT, "Failed to allocate empty dictionary for plist", buf, 2u);
      }
    }

    return _mrcs_prefs_get_plist_s_plist;
  }

  v2 = plist_file_path;
  v3 = CFReadStreamCreateWithFile(0, plist_file_path);
  if (v3)
  {
    v4 = v3;
    if (CFReadStreamOpen(v3))
    {
      v5 = CFPropertyListCreateWithStream(0, v4, 0, 1uLL, 0, &error);
      if (v5)
      {
        v6 = v5;
        v7 = CFGetTypeID(v5);
        if (v7 == CFDictionaryGetTypeID())
        {
          v8 = 0;
          goto LABEL_31;
        }

        if (_mrcs_prefs_log_s_once != -1)
        {
          dispatch_once(&_mrcs_prefs_log_s_once, &__block_literal_global_6554);
        }

        v12 = _mrcs_prefs_log_s_log;
        if (os_log_type_enabled(_mrcs_prefs_log_s_log, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543362;
          v16 = v2;
          _os_log_fault_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "plist read from file is not a dictionary -- path: %{public}@", buf, 0xCu);
        }

        v8 = v6;
      }

      else
      {
        if (_mrcs_prefs_log_s_once != -1)
        {
          dispatch_once(&_mrcs_prefs_log_s_once, &__block_literal_global_6554);
        }

        v11 = _mrcs_prefs_log_s_log;
        if (os_log_type_enabled(_mrcs_prefs_log_s_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v16 = v2;
          v17 = 2114;
          v18 = error;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to create plist from file -- path: %{public}@, error: %{public}@", buf, 0x16u);
        }

        v8 = 0;
      }

      v6 = 0;
LABEL_31:
      CFReadStreamClose(v4);
      CFRelease(v2);
      CFRelease(v4);
      v4 = v8;
      if (!v8)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

    if (_mrcs_prefs_log_s_once != -1)
    {
      dispatch_once(&_mrcs_prefs_log_s_once, &__block_literal_global_6554);
    }

    v10 = _mrcs_prefs_log_s_log;
    if (os_log_type_enabled(_mrcs_prefs_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v16 = v2;
      _os_log_debug_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Failed to open read stream -- path: %{public}@", buf, 0xCu);
    }

    CFRelease(v2);
    v6 = 0;
  }

  else
  {
    if (_mrcs_prefs_log_s_once != -1)
    {
      dispatch_once(&_mrcs_prefs_log_s_once, &__block_literal_global_6554);
    }

    v9 = _mrcs_prefs_log_s_log;
    if (os_log_type_enabled(_mrcs_prefs_log_s_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v2;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to create read stream -- path: %{public}@", buf, 0xCu);
    }

    v6 = 0;
    v4 = v2;
  }

LABEL_32:
  CFRelease(v4);
LABEL_33:
  if (error)
  {
    CFRelease(error);
  }

  _mrcs_prefs_get_plist_s_plist = v6;
  if (!v6)
  {
    goto LABEL_36;
  }

  return _mrcs_prefs_get_plist_s_plist;
}

CFURLRef _mrcs_prefs_create_plist_file_path()
{
  bzero(__s1, 0x400uLL);
  if (!confstr(65537, __s1, 0x400uLL))
  {
    if (*__error())
    {
      v2 = *__error();
      if (!v2)
      {
        goto LABEL_2;
      }
    }

    else
    {
      v2 = -6700;
    }

    if (_mrcs_prefs_log_s_once != -1)
    {
      dispatch_once(&_mrcs_prefs_log_s_once, &__block_literal_global_6554);
    }

    v9 = _mrcs_prefs_log_s_log;
    if (!os_log_type_enabled(_mrcs_prefs_log_s_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    *buf = 134217984;
    v12 = v2;
    v4 = "Failed to get temp directory -- error %{mdns:err}ld";
    v5 = v9;
    v6 = 12;
LABEL_22:
    _os_log_fault_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, v4, buf, v6);
    return 0;
  }

LABEL_2:
  v0 = strnlen(__s1, 0x400uLL);
  if (!v0)
  {
    if (_mrcs_prefs_log_s_once != -1)
    {
      dispatch_once(&_mrcs_prefs_log_s_once, &__block_literal_global_6554);
    }

    v3 = _mrcs_prefs_log_s_log;
    if (!os_log_type_enabled(_mrcs_prefs_log_s_log, OS_LOG_TYPE_FAULT))
    {
      return 0;
    }

    *buf = 0;
    v4 = "Temp directory path is empty";
    v5 = v3;
    v6 = 2;
    goto LABEL_22;
  }

  if (__s1[v0 - 1] == 47)
  {
    v1 = CFStringCreateWithFormat(0, 0, @"%s%s", __s1, "mrcs_prefs.plist");
  }

  else
  {
    v1 = CFStringCreateWithFormat(0, 0, @"%s/%s", __s1, "mrcs_prefs.plist");
  }

  if (!v1)
  {
    return 0;
  }

  v7 = v1;
  v8 = CFURLCreateWithFileSystemPath(0, v1, kCFURLPOSIXPathStyle, 0);
  CFRelease(v7);
  return v8;
}

id _mdns_heuristics_log()
{
  if (_mdns_heuristics_log_s_once != -1)
  {
    dispatch_once(&_mdns_heuristics_log_s_once, &__block_literal_global_43_6615);
  }

  v1 = _mdns_heuristics_log_s_log;

  return v1;
}

void ___mdns_heuristics_log_block_invoke(id a1)
{
  _mdns_heuristics_log_s_log = os_log_create("com.apple.mdns", "heuristics");

  _objc_release_x1();
}

id getHeuristicsQueue()
{
  if (getHeuristicsQueue_onceToken != -1)
  {
    dispatch_once(&getHeuristicsQueue_onceToken, &__block_literal_global_47);
  }

  v1 = getHeuristicsQueue_queue;

  return v1;
}

void __dns_heuristics_report_resolution_failure_block_invoke(uint64_t a1)
{
  v2 = _mdns_heuristics_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v6 = 138412546;
    v7 = v3;
    v8 = 1024;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "dns_heuristics_report_resolution_failure %@ %d", &v6, 0x12u);
  }

  v5 = objc_autoreleasePoolPush();
  [DNSHeuristics reportResolutionFailure:*(a1 + 32) isTimeout:*(a1 + 40)];
  objc_autoreleasePoolPop(v5);
}

void __getHeuristicsQueue_block_invoke(id a1)
{
  getHeuristicsQueue_queue = dispatch_queue_create("DNSHeuristicsQueue", 0);

  _objc_release_x1();
}

void __dns_heuristics_report_resolution_success_block_invoke(id a1)
{
  v1 = _mdns_heuristics_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "dns_heuristics_report_resolution_success", v3, 2u);
  }

  v2 = objc_autoreleasePoolPush();
  [DNSHeuristics updateHeuristicState:1 isTimeout:0];
  objc_autoreleasePoolPop(v2);
}

void __mhc_bpf_open_block_invoke(uint64_t a1, xpc_object_t object)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    v6 = -1;
    v7 = -6700;
    goto LABEL_12;
  }

  v8 = _mdns_xpc_dictionary_get_object(object, "bpf_fd", &_xpc_type_fd);
  if (v8)
  {
    v9 = xpc_fd_dup(v8);
    if ((v9 & 0x80000000) == 0)
    {
      v6 = v9;
      v7 = 0;
      goto LABEL_12;
    }

    v10 = -6700;
  }

  else
  {
    v10 = -6712;
  }

  int64_limited = _mdns_xpc_dictionary_get_int64_limited(object, "error", 0xFFFFFFFF80000000, 0x7FFFFFFFLL, 0);
  if (int64_limited)
  {
    v7 = int64_limited;
  }

  else
  {
    v7 = v10;
  }

  v6 = -1;
LABEL_12:
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = ___mhc_bpf_open_reply_handler_block_invoke;
  v14[3] = &unk_100153280;
  v14[4] = _Block_copy(v5);
  v15 = v6;
  v16 = v7;
  dispatch_async(v4, v14);
  v12 = *(a1 + 40);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    _Block_release(v13);
  }
}

void _mhc_common_reply_handler(_xpc_connection_s *a1, void *a2, xpc_object_t object, void (**a4)(void, void))
{
  if (xpc_get_type(object) == &_xpc_type_error)
  {
    string = xpc_dictionary_get_string(a2, "command");
    if (_mhc_log_s_once != -1)
    {
      dispatch_once(&_mhc_log_s_once, &__block_literal_global_5_6670);
    }

    v9 = _mhc_log_s_log;
    if (os_log_type_enabled(_mhc_log_s_log, OS_LOG_TYPE_ERROR))
    {
      if (!string)
      {
        string = "<NO COMMAND>";
      }

      *buf = 136446722;
      v12 = string;
      v13 = 2114;
      v14 = a1;
      v15 = 2082;
      v16 = xpc_dictionary_get_string(object, _xpc_error_key_description);
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}s request received error reply -- connection: %{public}@, error: %{public}s", buf, 0x20u);
    }
  }

  if (object == &_xpc_error_connection_interrupted)
  {
    if (_mhc_queue_s_once != -1)
    {
      dispatch_once(&_mhc_queue_s_once, &__block_literal_global_14);
    }

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 0x40000000;
    handler[2] = ___mhc_common_reply_handler_block_invoke;
    handler[3] = &unk_100153258;
    handler[5] = a1;
    handler[6] = a2;
    handler[4] = a4;
    xpc_connection_send_message_with_reply(a1, a2, _mhc_queue_s_queue, handler);
  }

  else
  {
    if (a1)
    {
      xpc_connection_cancel(a1);
      xpc_release(a1);
    }

    if (a2)
    {
      xpc_release(a2);
    }

    if (a4)
    {
      (a4)[2](a4, object);
      _Block_release(a4);
    }
  }
}

void ___mhc_create_connection_block_invoke(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_error)
  {
    if (_mhc_log_s_once != -1)
    {
      dispatch_once(&_mhc_log_s_once, &__block_literal_global_5_6670);
    }

    v4 = _mhc_log_s_log;
    if (os_log_type_enabled(_mhc_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2082;
      string = xpc_dictionary_get_string(object, _xpc_error_key_description);
      v6 = "Connection received error event -- connnection: %{public}@, error: %{public}s";
      goto LABEL_11;
    }
  }

  else
  {
    if (_mhc_log_s_once != -1)
    {
      dispatch_once(&_mhc_log_s_once, &__block_literal_global_5_6670);
    }

    v4 = _mhc_log_s_log;
    if (os_log_type_enabled(_mhc_log_s_log, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v8 = 138543618;
      v9 = v5;
      v10 = 2112;
      string = object;
      v6 = "Connection received unexpected event -- connection: %{public}@, event: %@";
LABEL_11:
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, v6, &v8, 0x16u);
    }
  }
}

void ___mhc_bpf_open_reply_handler_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 32);
  if (v2)
  {

    _Block_release(v2);
  }
}

void BindDPSocket(uint64_t a1, int a2, int a3)
{
  v18 = 1;
  if (a3 == 1 && setsockopt(a1, 0xFFFF, 4, &v18, 4u))
  {
    v5 = *__error();
    v6 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v7 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      if (a2 == 2)
      {
        v8 = "IPv4";
      }

      else
      {
        v8 = "IPv6";
      }

      goto LABEL_22;
    }

    v6 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
    {
      if (a2 == 2)
      {
        v8 = "IPv4";
      }

      else
      {
        v8 = "IPv6";
      }

LABEL_22:
      v13 = strerror(v5);
      *v19 = 136446978;
      *&v19[4] = v8;
      *&v19[12] = 1024;
      *&v19[14] = a1;
      *&v19[18] = 1024;
      *&v19[20] = v5;
      LOWORD(v20[0]) = 2082;
      *(v20 + 2) = v13;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "BindDPSocket: setsockopt SO_REUSEADDR failed for %{public}s %d errno %d (%{public}s)", v19, 0x22u);
    }
  }

  else if (a2 == 2)
  {
    *v19 = 889192960;
    *&v19[8] = 0;
    if (bind(a1, v19, 0x10u))
    {
      v9 = mDNSLogCategory_Default;
      __error();
      v10 = __error();
      strerror(*v10);
      LogMsgWithLevel(v9, OS_LOG_TYPE_DEFAULT, "BindDPSocket: bind %d errno %d (%s)");
    }
  }

  else
  {
    if (setsockopt(a1, 41, 27, &v18, 4u) < 0)
    {
      v11 = "DPFBindSocket: setsockopt IPV6_V6ONLY %d errno %d (%s)";
    }

    else
    {
      *v19 = 889200128;
      *&v19[8] = 0;
      v20[0] = 0;
      *&v19[16] = 0;
      if (!bind(a1, v19, 0x1Cu))
      {
        return;
      }

      v11 = "BindDPSocket: bind6 %d errno %d (%s)";
    }

    v14 = mDNSLogCategory_Default;
    v15 = *__error();
    v16 = __error();
    v17 = strerror(*v16);
    LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, v11, a1, v15, v17);
  }
}

uint64_t SetupUDPProxySocket(int a1, uint64_t a2, int a3)
{
  v22 = 1;
  *(a2 + 8) = mDNSStorage;
  *(a2 + 80) = 0;
  if (a3 == 2)
  {
    v5 = 16;
  }

  else
  {
    v5 = 48;
  }

  if (a3 == 2)
  {
    v6 = 24;
  }

  else
  {
    v6 = 56;
  }

  if (a3 != 2)
  {
    if (a3 != 30)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "SetupUDPProxySocket: wrong family %d");
      return 0xFFFFFFFFLL;
    }

    v11 = setsockopt(a1, 41, 61, &v22, 4u);
    if ((v11 & 0x80000000) != 0)
    {
      v8 = v11;
      v17 = mDNSLogCategory_Default;
      __error();
      v18 = __error();
      strerror(*v18);
      LogMsgWithLevel(v17, OS_LOG_TYPE_DEFAULT, "SetupUDPProxySocket: IPV6_RECVPKTINFO %d errno %d (%s)");
      return v8;
    }

    v8 = setsockopt(a1, 41, 37, &v22, 4u);
    if ((v8 & 0x80000000) != 0)
    {
      v19 = mDNSLogCategory_Default;
      __error();
      v20 = __error();
      strerror(*v20);
      LogMsgWithLevel(v19, OS_LOG_TYPE_DEFAULT, "SetupUDPProxySocket: IPV6_RECVHOPLIMIT %d errno %d (%s)");
      return v8;
    }

LABEL_14:
    v12 = fcntl(a1, 3, 0);
    if ((fcntl(a1, 4, v12 | 4u) & 0x80000000) == 0)
    {
      v13 = (a2 + v6);
      *(a2 + v5) = a1;
      *v13 = myKQSocketCallBack;
      v13[1] = a2;
      v13[2] = "UDP Proxy packet reception";
      KQueueSet(a1, 1u, -1, (a2 + v6));
      return v8;
    }

    v16 = mDNSLogCategory_Default;
    __error();
    LogMsgWithLevel(v16, OS_LOG_TYPE_DEFAULT, "SetupUDPProxySocket: fnctl failed %d");
    return 0xFFFFFFFFLL;
  }

  v7 = setsockopt(a1, 0, 7, &v22, 4u);
  if ((v7 & 0x80000000) != 0)
  {
    v8 = v7;
    v14 = mDNSLogCategory_Default;
    __error();
    v15 = __error();
    strerror(*v15);
    LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, "SetupUDPProxySocket: IP_RECVDSTADDR %d errno %d (%s)");
    return v8;
  }

  v8 = setsockopt(a1, 0, 20, &v22, 4u);
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  v9 = mDNSLogCategory_Default;
  __error();
  v10 = __error();
  strerror(*v10);
  LogMsgWithLevel(v9, OS_LOG_TYPE_DEFAULT, "SetupUDPProxySocket: IP_RECVIF %d errno %d (%s)");
  return v8;
}

uint64_t SetupTCPProxySocket(int a1, uint64_t a2)
{
  v4 = listen(a1, 100);
  if (v4)
  {
    v5 = mDNSLogCategory_Default;
    v6 = *__error();
    v7 = __error();
    v8 = strerror(*v7);
    LogMsgWithLevel(v5, OS_LOG_TYPE_DEFAULT, "SetupTCPProxySocket: listen %d errno %d (%s)", a1, v6, v8);
  }

  else
  {
    v9 = fcntl(a1, 3, 0);
    fcntl(a1, 4, v9 | 4u);
    *(a2 + 16) = a1;
    *(a2 + 24) = ProxyTCPAccept;
    *(a2 + 32) = a2;
    *(a2 + 40) = "TCP Accept";
    *(a2 + 72) = mDNSStorage;
    KQueueSet(a1, 1u, -1, (a2 + 24));
  }

  return v4;
}

uint64_t ProxyTCPAccept(int a1, uint64_t a2, uint64_t a3)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0;
  v17 = 0u;
  v5 = "ProxyTCPAccept: IP_RECVIF %d errno %d (%s)";
  v15 = 0x8000000001;
  while (1)
  {
    result = accept(a1, &v16, &v15 + 1);
    if (result == -1)
    {
      return result;
    }

    v7 = result;
    v8 = malloc_type_calloc(1uLL, 0x68uLL, 0xAFD6116FuLL);
    if (!v8)
    {
      __break(1u);
    }

    v9 = v8;
    v8[4] = -1;
    *(v8 + 9) = *(a3 + 72);
    v10 = fcntl(v7, 3, 0);
    fcntl(v7, 4, v10 | 4u);
    if (v16.sa_family == 2)
    {
      if (setsockopt(v7, 0, 20, &v15, 4u))
      {
        goto LABEL_10;
      }
    }

    else if (setsockopt(v7, 41, 61, &v15, 4u))
    {
      v5 = "ProxyTCPAccept: IP_RECVPKTINFO %d errno %d (%s)";
LABEL_10:
      v11 = mDNSLogCategory_Default;
      v12 = *__error();
      v13 = __error();
      v14 = strerror(*v13);
      LogMsgWithLevel(v11, OS_LOG_TYPE_DEFAULT, v5, v7, v12, v14, v15, *&v16.sa_len, *&v16.sa_data[6], v17, v18, v19, v20, v21, v22, v23);
      mDNSPlatformDisposeProxyContext(v9);
      return close(v7);
    }

    v9[4] = v7;
    *(v9 + 3) = ProxyTCPSocketCallBack;
    *(v9 + 4) = v9;
    *(v9 + 5) = "TCP Proxy packet reception";
    *(v9 + 65) = 1;
    *(v9 + 9) = *(a3 + 72);
    KQueueSet(v7, 1u, -1, v9 + 6);
  }
}

void mDNSPlatformDisposeProxyContext(_DWORD *a1)
{
  if (a1)
  {
    v2 = a1[4];
    if ((v2 & 0x80000000) == 0)
    {
      close(v2);
      a1[4] = -1;
    }

    v3 = *(a1 + 11);
    if (v3)
    {
      free(v3);
    }

    free(a1);
  }
}

void ProxyTCPSocketCallBack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  memset(v60, 0, sizeof(v60));
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  memset(v53, 0, sizeof(v53));
  memset(v52, 0, 20);
  memset(v51, 0, 20);
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  memset(v26, 0, sizeof(v26));
  v25 = 424;
  LOBYTE(v24) = 0;
  v5 = *(a3 + 100);
  if (v5 >= 2)
  {
    v8 = *(a3 + 88);
  }

  else
  {
    v6 = mDNSPlatformReadTCP(a3, (a3 + v5 + 96), 2 - v5, &v24);
    if (v6 < 0 || v24)
    {
      v14 = mDNSLogCategory_Default;
      v13 = "ProxyTCPRead: attempt to read message length failed";
      goto LABEL_18;
    }

    v7 = *(a3 + 100) + v6;
    *(a3 + 100) = v7;
    if (v7 <= 1)
    {
      LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyTCPRead: nread %d, n %d");
      return;
    }

    v15 = __rev16(*(a3 + 96));
    *(a3 + 96) = v15;
    if (v15 <= 0xB)
    {
      v12 = mDNSLogCategory_Default;
      v20 = v15;
      v13 = "ProxyTCPRead: Message length too short (%d bytes)";
      goto LABEL_16;
    }

    v8 = malloc_type_malloc(v15, 0xBB04097BuLL);
    if (!v8)
    {
      __break(1u);
      return;
    }

    *(a3 + 88) = v8;
    LODWORD(v5) = *(a3 + 100);
  }

  v9 = mDNSPlatformReadTCP(a3, &v8[(v5 - 2)], *(a3 + 96) - (v5 - 2), &v24);
  if ((v9 & 0x8000000000000000) == 0 && !v24)
  {
    v10 = *(a3 + 100) + v9;
    *(a3 + 100) = v10;
    if (v10 - 2 != *(a3 + 96))
    {
      return;
    }

    KQueueSet(a1, 2u, -1, (a3 + 24));
    memset(v53, 0, sizeof(v53));
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    memset(v60, 0, sizeof(v60));
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v24 = 128;
    if (getsockname(a1, v53, &v24) < 0)
    {
      v16 = mDNSLogCategory_Default;
      v21 = a1;
      v23 = *__error();
      v17 = "ProxyTCPReceive: getsockname(fd=%d) errno %d";
    }

    else
    {
      if ((getpeername(a1, v60, &v24) & 0x80000000) == 0)
      {
        if (getsockopt(a1, 6, 512, v26, &v25))
        {
          v11 = mDNSLogCategory_Default;
          __error();
          LogMsgWithLevel(v11, OS_LOG_TYPE_DEFAULT, "ProxyTCPReceive: getsockopt for TCP_INFO failed (fd=%d) errno %d");
          return;
        }

        v18 = SHIDWORD(v27);
        if (v60[0].sa_family == 30)
        {
          LODWORD(v52[0]) = 6;
          *(v52 + 4) = *&v60[0].sa_data[6];
          v19 = *v60[0].sa_data;
          LODWORD(v51[0]) = 6;
          *(v51 + 4) = *&v53[0].sa_data[6];
          if (mDNS_LoggingEnabled)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyTCPReceive received IPv6 packet(len %d) from %#-15a to %#-15a on skt %d %s ifindex %d");
          }

          goto LABEL_36;
        }

        if (v60[0].sa_family == 2)
        {
          LODWORD(v52[0]) = 4;
          HIDWORD(v52[0]) = *&v60[0].sa_data[2];
          v19 = *v60[0].sa_data;
          LODWORD(v51[0]) = 4;
          HIDWORD(v51[0]) = *&v53[0].sa_data[2];
          if (mDNS_LoggingEnabled)
          {
            LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyTCPReceive received IPv4 packet(len %d) from %#-15a to %#-15a on skt %d %s ifindex %d");
          }

LABEL_36:
          (*(**(a3 + 72) + 984))(a3, *(a3 + 88), *(a3 + 88) + *(a3 + 96), v52, v19, v51, 13568, v18, a3);
          return;
        }

        LogMsgWithLevel(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT, "ProxyTCPReceive from is unknown address family %d");
LABEL_28:
        mDNSPlatformDisposeProxyContext(a3);
        return;
      }

      v16 = mDNSLogCategory_Default;
      v21 = a1;
      v23 = *__error();
      v17 = "ProxyTCPReceive: getpeername(fd=%d) errno %d";
    }

    LogMsgWithLevel(v16, OS_LOG_TYPE_DEFAULT, v17, v21, v23);
    goto LABEL_28;
  }

  v12 = mDNSLogCategory_Default;
  v20 = v9;
  v22 = v24;
  v13 = "ProxyTCPRead: read failure n %d, closed %d";
LABEL_16:
  v14 = v12;
LABEL_18:
  LogMsgWithLevel(v14, OS_LOG_TYPE_DEFAULT, v13, v20, v22);

  mDNSPlatformDisposeProxyContext(a3);
}

const __SCPreferences *_mdns_system_create_locked_prefs(int *a1)
{
  v2 = SCPreferencesCreateWithAuthorization(kCFAllocatorDefault, @"com.apple.mDNSResponder", 0, kSCPreferencesUseEntitlementAuthorization);
  if (v2)
  {
    goto LABEL_4;
  }

  if (!SCError())
  {
    v4 = -6700;
LABEL_14:
    if (mdns_system_log_s_once != -1)
    {
      dispatch_once(&mdns_system_log_s_once, &__block_literal_global_6901);
    }

    v7 = mdns_system_log_s_log;
    if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      v10 = v4;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "SCPreferencesCreateWithAuthorization failed: %{mdns:err}ld", &v9, 0xCu);
    }

    v5 = 0;
    goto LABEL_25;
  }

  v3 = SCError();
  if (v3)
  {
    v4 = v3;
    goto LABEL_14;
  }

LABEL_4:
  if (SCPreferencesLock(v2, 0))
  {
    v4 = 0;
    goto LABEL_8;
  }

  if (SCError())
  {
    v4 = SCError();
    if (!v4)
    {
LABEL_8:
      v5 = 0;
      if (!a1)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v4 = -6700;
  }

  if (mdns_system_log_s_once != -1)
  {
    dispatch_once(&mdns_system_log_s_once, &__block_literal_global_6901);
  }

  v8 = mdns_system_log_s_log;
  if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v9 = 134217984;
    v10 = v4;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "SCPreferencesLock failed: %{mdns:err}ld", &v9, 0xCu);
  }

  v5 = v2;
LABEL_25:
  v2 = 0;
  if (a1)
  {
LABEL_9:
    *a1 = v4;
  }

LABEL_10:
  if (v5)
  {
    CFRelease(v5);
  }

  return v2;
}

uint64_t _mdns_system_commit_and_apply_prefs(const __SCPreferences *a1)
{
  if (!SCPreferencesCommitChanges(a1))
  {
    if (SCError())
    {
      v2 = SCError();
      if (!v2)
      {
        goto LABEL_4;
      }

      v3 = v2;
    }

    else
    {
      v3 = 4294960596;
    }

    if (mdns_system_log_s_once != -1)
    {
      dispatch_once(&mdns_system_log_s_once, &__block_literal_global_6901);
    }

    v4 = mdns_system_log_s_log;
    if (!os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
    {
      return v3;
    }

    v7 = 134217984;
    v8 = v3;
    v5 = "SCPreferencesCommitChanges failed: %{mdns:err}ld";
LABEL_20:
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, v5, &v7, 0xCu);
    return v3;
  }

LABEL_4:
  if (SCPreferencesApplyChanges(a1))
  {
    return 0;
  }

  if (SCError())
  {
    v3 = SCError();
    if (!v3)
    {
      return v3;
    }
  }

  else
  {
    v3 = 4294960596;
  }

  if (mdns_system_log_s_once != -1)
  {
    dispatch_once(&mdns_system_log_s_once, &__block_literal_global_6901);
  }

  v4 = mdns_system_log_s_log;
  if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v7 = 134217984;
    v8 = v3;
    v5 = "SCPreferencesApplyChanges failed: %{mdns:err}ld";
    goto LABEL_20;
  }

  return v3;
}

void _mdns_system_unlock_and_forget_prefs(const __SCPreferences **a1)
{
  v1 = *a1;
  if (*a1)
  {
    *a1 = 0;
    if (!SCPreferencesUnlock(v1))
    {
      if (!SCError())
      {
        v3 = -6700;
        goto LABEL_7;
      }

      v2 = SCError();
      if (v2)
      {
        v3 = v2;
LABEL_7:
        if (mdns_system_log_s_once != -1)
        {
          dispatch_once(&mdns_system_log_s_once, &__block_literal_global_6901);
        }

        v4 = mdns_system_log_s_log;
        if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
        {
          v5 = 134217984;
          v6 = v3;
          _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "SCPreferencesUnlock failed: %{mdns:err}ld", &v5, 0xCu);
        }
      }
    }

    CFRelease(v1);
  }
}

char *mdns_system_interface_index_to_name(unsigned int a1)
{
  *v9 = 0;
  v10 = 0;
  v11 = 0;
  v2 = if_indextoname(a1, v9);
  if (v2)
  {
    result = strdup(v2);
    if (result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (!*__error())
  {
LABEL_7:
    v4 = -6700;
    goto LABEL_8;
  }

  v4 = *__error();
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  if (mdns_system_log_s_once != -1)
  {
    dispatch_once(&mdns_system_log_s_once, &__block_literal_global_6901);
  }

  v5 = mdns_system_log_s_log;
  if (os_log_type_enabled(mdns_system_log_s_log, OS_LOG_TYPE_ERROR))
  {
    v6[0] = 67109376;
    v6[1] = a1;
    v7 = 2048;
    v8 = v4;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "if_indextoname() for %u failed: %{darwin.errno}ld", v6, 0x12u);
  }

  return 0;
}

uint64_t mdns_system_pid_to_uuid(int a1, unsigned __int8 *a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  if (proc_pidinfo(a1, 17, 1uLL, v4, 56) != 56)
  {
    return 4294960596;
  }

  if (a2)
  {
    uuid_copy(a2, v4);
  }

  return 0;
}

uint64_t mdns_system_pid_to_name(int a1, uint64_t a2)
{
  v6 = 0u;
  memset(v7, 0, sizeof(v7));
  if (proc_pidinfo(a1, 13, 1uLL, &v6, 64) != 64)
  {
    return 0;
  }

  if (!a2)
  {
    __break(1u);
  }

  v3 = 0;
  while (1)
  {
    v4 = *(v7 + v3);
    *(a2 + v3) = v4;
    if (!v4)
    {
      break;
    }

    if (++v3 == 15)
    {
      *(a2 + 15) = 0;
      return a2;
    }
  }

  return a2;
}

void _mdns_push_server_finalize(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    os_release(v2);
    a1[6] = 0;
  }

  v3 = a1[8];
  if (v3)
  {
    CFRelease(v3);
    a1[8] = 0;
  }

  v4 = a1[9];
  if (v4)
  {
    CFRelease(v4);
    a1[9] = 0;
  }

  v5 = a1[7];
  if (v5)
  {
    free(v5);
    a1[7] = 0;
  }
}

void *_mdns_push_server_copy_description(uint64_t a1, int a2, char a3)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v6 = mdns_string_builder_create();
  if (v6)
  {
    v7 = v6;
    if (a2)
    {
      appended = mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1);
      *(v22 + 6) = appended;
      if (appended)
      {
        goto LABEL_13;
      }
    }

    if (CFArrayGetCount(*(a1 + 64)) >= 1)
    {
      v20[0] = 0;
      v20[1] = v20;
      v20[2] = 0x2000000000;
      v20[3] = "addresses: {";
      v9 = *(a1 + 64);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 0x40000000;
      v18[2] = ___mdns_push_server_copy_description_block_invoke;
      v18[3] = &unk_1001533E0;
      v18[5] = v20;
      v18[6] = v7;
      v18[4] = &v21;
      v19 = a3;
      mdns_cfarray_enumerate(v9, v18);
      v10 = mdns_string_builder_append_formatted(v7, "}");
      *(v22 + 6) = v10;
      _Block_object_dispose(v20, 8);
      if (v10)
      {
        goto LABEL_13;
      }
    }

    if (*(a1 + 48))
    {
      v11 = mdns_string_builder_append_formatted(v7, "srv name: ");
      *(v22 + 6) = v11;
      if (v11)
      {
        goto LABEL_13;
      }

      v12 = mdns_string_builder_append_description(v7, *(a1 + 48), a3);
      *(v22 + 6) = v12;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    v13 = mdns_string_builder_append_formatted(v7, ", ");
    *(v22 + 6) = v13;
    if (v13)
    {
      goto LABEL_13;
    }

    v14 = *(a1 + 56);
    if (!v14)
    {
      v14 = "";
    }

    v15 = mdns_string_builder_append_formatted(v7, "interface: %s/%u", v14, *(a1 + 96));
    *(v22 + 6) = v15;
    if (v15)
    {
LABEL_13:
      v16 = 0;
    }

    else
    {
      v16 = mdns_string_builder_copy_string(v7);
    }

    os_release(v7);
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v21, 8);
  return v16;
}

BOOL ___mdns_push_server_copy_description_block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 32) + 8) + 24) = mdns_string_builder_append_description_with_prefix(*(a1 + 48), *(*(*(a1 + 40) + 8) + 24), a2, *(a1 + 56));
  *(*(*(a1 + 40) + 8) + 24) = ", ";
  return *(*(*(a1 + 32) + 8) + 24) == 0;
}

void *mdns_push_server_create()
{
  v0 = _os_object_alloc();
  v1 = v0;
  if (v0)
  {
    v2 = &_mdns_push_server_kind;
    *(v0 + 16) = &_mdns_push_server_kind;
    do
    {
      v3 = v2[2];
      if (v3)
      {
        v3(v1);
      }

      v2 = *v2;
    }

    while (v2);
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
    v1[8] = Mutable;
    if (!Mutable || (v5 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks), (v1[9] = v5) == 0))
    {
      os_release(v1);
      return 0;
    }
  }

  return v1;
}

void mdns_push_server_set_srv_name(uint64_t a1, void *object)
{
  if ((*(a1 + 103) & 1) == 0)
  {
    os_retain(object);
    v4 = *(a1 + 48);
    if (v4)
    {
      os_release(v4);
    }

    *(a1 + 48) = object;
  }
}

uint64_t mdns_push_server_create_subscriber(void *a1)
{
  v2 = _os_object_alloc();
  v3 = v2;
  if (v2)
  {
    v4 = &_mdns_subscriber_kind;
    *(v2 + 16) = &_mdns_subscriber_kind;
    do
    {
      v5 = v4[2];
      if (v5)
      {
        v5(v3);
      }

      v4 = *v4;
    }

    while (v4);
    *(v3 + 128) = atomic_fetch_add_explicit(&mdns_push_server_create_subscriber_s_last_id, 1uLL, memory_order_relaxed) + 1;
    os_retain(a1);
    v6 = *(v3 + 64);
    if (v6)
    {
      os_release(v6);
    }

    *(v3 + 64) = a1;
    if (_mdns_domain_name_get_root_s_once != -1)
    {
      dispatch_once(&_mdns_domain_name_get_root_s_once, &__block_literal_global_10);
    }

    v7 = _mdns_domain_name_get_root_s_root;
    *(v3 + 88) = _mdns_domain_name_get_root_s_root;
    if (v7)
    {
      *(v3 + 142) = 1;
    }

    else
    {
      os_release(v3);
      return 0;
    }
  }

  return v3;
}

void _mdns_subscriber_handle_timeout(void *a1)
{
  v1 = a1[3];
  if (v1)
  {
    v3 = a1[14];
    os_retain(a1);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = ___mdns_subscriber_handle_timeout_block_invoke;
    v4[3] = &unk_100153590;
    v4[4] = v3;
    v4[5] = a1;
    dispatch_async(v1, v4);
  }
}

void ___mdns_subscriber_handle_timeout_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  os_release(v2);
}

void _mdns_subscriber_handle_new_time_limit_ms(void *a1, int a2)
{
  if (_mdns_push_notifications_log_s_once != -1)
  {
    dispatch_once(&_mdns_push_notifications_log_s_once, &__block_literal_global_6956);
  }

  v4 = _mdns_push_notifications_log_s_log;
  if (os_log_type_enabled(_mdns_push_notifications_log_s_log, OS_LOG_TYPE_INFO))
  {
    v5 = a1[16];
    v10 = 134218240;
    v11 = v5;
    v12 = 1024;
    v13 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "[Sub%llu] Resetting time limit to %u ms", &v10, 0x12u);
  }

  v6 = mdns_client_activate_time_limit_timer(a1);
  if (v6)
  {
    v7 = v6;
    if (_mdns_push_notifications_log_s_once != -1)
    {
      dispatch_once(&_mdns_push_notifications_log_s_once, &__block_literal_global_6956);
    }

    v8 = _mdns_push_notifications_log_s_log;
    if (os_log_type_enabled(_mdns_push_notifications_log_s_log, OS_LOG_TYPE_ERROR))
    {
      v9 = a1[16];
      v10 = 134218240;
      v11 = v9;
      v12 = 1024;
      v13 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[Sub%llu] Failed to activate time limit timer for the subscriber, delivering timeout event immediately - error: %{darwin.errno}d", &v10, 0x12u);
    }

    _mdns_subscriber_handle_timeout(a1);
  }
}

void _mdns_subscriber_invalidate(uint64_t a1)
{
  *(a1 + 142) = 4;
  v2 = *(a1 + 64);
  v29 = 0;
  v3 = _mdns_subscriber_list_remove((v2 + 24), a1, &v29);
  if (v3)
  {
    if (v29 != 1)
    {
      goto LABEL_15;
    }
  }

  else
  {
    _mdns_subscriber_list_remove((v2 + 32), a1, &v29);
  }

  v4 = v3 ^ 1;
  v5 = *(v2 + 40);
  v6 = *(a1 + 128);
  if (v5)
  {
    if (_mdns_push_notifications_log_s_once != -1)
    {
      dispatch_once(&_mdns_push_notifications_log_s_once, &__block_literal_global_6956);
    }

    v7 = _mdns_push_notifications_log_s_log;
    if (os_log_type_enabled(_mdns_push_notifications_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(v5 + 40);
      v9 = *(v2 + 102);
      *buf = 134219522;
      *&buf[4] = v6;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      *&buf[22] = 2112;
      v31 = v2;
      *v32 = 2112;
      *&v32[2] = a1;
      *&v32[10] = 1024;
      *v33 = v4;
      *&v33[4] = 1024;
      v34 = v29;
      v35 = 1024;
      v36 = v9;
      v10 = "[Sub%llu->DSO%llu] Subscriber removed -- server: %@, subscriber: %@, pending: %{mdns:yesno}d, duplicate: %{mdns:yesno}d, session ready: %{mdns:yesno}d";
      v11 = v7;
      v12 = 60;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }
  }

  else
  {
    if (_mdns_push_notifications_log_s_once != -1)
    {
      dispatch_once(&_mdns_push_notifications_log_s_once, &__block_literal_global_6956);
    }

    v13 = _mdns_push_notifications_log_s_log;
    if (os_log_type_enabled(_mdns_push_notifications_log_s_log, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v2 + 102);
      *buf = 134219266;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v2;
      *&buf[22] = 2112;
      v31 = a1;
      *v32 = 1024;
      *&v32[2] = v4;
      *&v32[6] = 1024;
      *&v32[8] = v29;
      *v33 = 1024;
      *&v33[2] = v14;
      v10 = "[Sub%llu] Subscriber removed -- server: %@, subscriber: %@, pending: %{mdns:yesno}d, duplicate: %{mdns:yesno}d, session ready: %{mdns:yesno}d";
      v11 = v13;
      v12 = 50;
      goto LABEL_14;
    }
  }

LABEL_15:
  if (*(a1 + 140))
  {
    if ((v29 & 1) == 0)
    {
      v15 = *(v2 + 40);
      if (v15)
      {
        if (*(v2 + 102) == 1)
        {
          v16 = *(a1 + 128);
          if (_mdns_push_notifications_log_s_once != -1)
          {
            dispatch_once(&_mdns_push_notifications_log_s_once, &__block_literal_global_6956);
          }

          v17 = _mdns_push_notifications_log_s_log;
          if (os_log_type_enabled(_mdns_push_notifications_log_s_log, OS_LOG_TYPE_DEFAULT))
          {
            v18 = *(v15 + 40);
            *buf = 134218754;
            *&buf[4] = v16;
            *&buf[12] = 2048;
            *&buf[14] = v18;
            *&buf[22] = 2112;
            v31 = v2;
            *v32 = 2112;
            *&v32[2] = a1;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[Sub%llu->DSO%llu] Subscriber removed and unsubscribing from the session -- server: %@, subscriber: %@", buf, 0x2Au);
          }

          v19 = _os_object_alloc();
          v20 = v19;
          if (v19)
          {
            v21 = &_mdns_dso_unsubscribe_message_builder_kind;
            *(v19 + 16) = &_mdns_dso_unsubscribe_message_builder_kind;
            do
            {
              v22 = v21[2];
              if (v22)
              {
                v22(v20);
              }

              v21 = *v21;
            }

            while (v21);
          }

          v20[14] = 0;
          v20[16] = *(a1 + 140);
          message = mdns_dso_message_builder_create_message(v20);
          mdns_dso_session_send(*(v2 + 40), message[3]);
          os_release(message);
          os_release(v20);
          v24 = *(v2 + 40);
          if ((*(v24[2] + 104))(v24))
          {
            os_retain(v24);
            if (_mdns_dso_session_queue_s_once != -1)
            {
              dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
            }

            *buf = _NSConcreteStackBlock;
            *&buf[8] = 0x40000000;
            *&buf[16] = __mdns_dso_session_remove_activity_block_invoke;
            v31 = &__block_descriptor_tmp_4_6131;
            *v32 = v24;
            dispatch_async(_mdns_dso_session_queue_s_queue, buf);
          }
        }
      }
    }

    *(a1 + 140) = 0;
  }

  v25 = *(a1 + 96);
  if (v25)
  {
    dispatch_source_cancel(*(a1 + 96));
    dispatch_release(v25);
    *(a1 + 96) = 0;
  }

  mdns_client_deactivate_time_limit_timer(a1);
  v26 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v26)
  {
    v27 = *(a1 + 24);
    if (v27)
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 0x40000000;
      v28[2] = ___mdns_subscriber_invalidate_block_invoke;
      v28[3] = &unk_100153568;
      v28[4] = v26;
      dispatch_async(v27, v28);
    }

    _Block_release(v26);
  }
}

uint64_t _mdns_subscriber_list_remove(void *a1, void *a2, _BYTE *a3)
{
  v4 = *a1;
  if (!*a1)
  {
    goto LABEL_5;
  }

  v6 = a1;
  while ((_mdns_subscriber_equal(v4, a2) & 1) == 0)
  {
    v6 = v4 + 9;
    v4 = v4[9];
    if (!v4)
    {
      goto LABEL_5;
    }
  }

  if (v4 != a2)
  {
    do
    {
      v8 = v4;
      v4 = v4[10];
      if (v4)
      {
        v9 = v4 == a2;
      }

      else
      {
        v9 = 1;
      }
    }

    while (!v9);
    if (v4)
    {
      v8[10] = a2[10];
LABEL_18:
      LOBYTE(v4) = 1;
      goto LABEL_19;
    }

LABEL_5:
    result = 0;
    if (!a3)
    {
      return result;
    }

    goto LABEL_6;
  }

  v10 = a2[10];
  if (v10)
  {
    *v6 = v10;
    *(v10 + 72) = a2[9];
    goto LABEL_18;
  }

  LOBYTE(v4) = 0;
  *v6 = a2[9];
LABEL_19:
  a2[9] = 0;
  a2[10] = 0;
  os_release(a2);
  result = 1;
  if (a3)
  {
LABEL_6:
    *a3 = v4;
  }

  return result;
}

uint64_t _mdns_subscriber_equal(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 136) == *(a2 + 136) && *(a1 + 138) == *(a2 + 138))
  {
    return _mdns_domain_name_equal(*(a1 + 88), *(a2 + 88));
  }

  return 0;
}

uint64_t _mdns_subscriber_match(uint64_t a1, unsigned __int8 *a2, int a3, int a4)
{
  if (*(a1 + 136) == a3 && *(a1 + 138) == a4)
  {
    return DomainNameEqual(*(*(a1 + 88) + 24), a2);
  }

  else
  {
    return 0;
  }
}

void _mdns_subscriber_activate(void *object)
{
  v2 = object[8];
  v45 = 0;
  if ((_mdns_subscriber_list_insert_conditionally((v2 + 24), object, 0, &v45) & 1) == 0)
  {
    _mdns_subscriber_list_insert_conditionally((v2 + 32), object, 1, 0);
  }

  if (!*(v2 + 40))
  {
    v3 = _os_object_alloc();
    v4 = v3;
    if (v3)
    {
      v5 = &_mdns_dso_client_session_kind;
      *(v3 + 16) = &_mdns_dso_client_session_kind;
      do
      {
        v6 = v5[2];
        if (v6)
        {
          v6(v4);
        }

        v5 = *v5;
      }

      while (v5);
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
      *(v4 + 152) = Mutable;
      if (!Mutable)
      {
        v4 = 0;
      }
    }

    if (CFArrayGetCount(*(v2 + 64)) < 1)
    {
      v9 = *(v2 + 48);
      if (v9 && (*(v4 + 124) & 1) == 0)
      {
        *(v4 + 136) = v9;
        os_retain(v9);
      }
    }

    else
    {
      v8 = *(v2 + 64);
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 0x40000000;
      v44[2] = ___mdns_push_server_add_subscriber_block_invoke;
      v44[3] = &__block_descriptor_tmp_20_6967;
      v44[4] = v4;
      mdns_cfarray_enumerate(v8, v44);
    }

    Count = CFArrayGetCount(*(v2 + 72));
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; i != v11; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v2 + 72), i);
        if ((*(v4 + 124) & 1) == 0)
        {
          v14 = ValueAtIndex;
          if (*(v4 + 160) || (v15 = CFArrayCreateMutable(kCFAllocatorDefault, 1, &kCFTypeArrayCallBacks), (*(v4 + 160) = v15) != 0))
          {
            v16 = SecCertificateCreateWithData(kCFAllocatorDefault, v14);
            if (v16)
            {
              v17 = v16;
              CFArrayAppendValue(*(v4 + 160), v16);
              CFRelease(v17);
            }
          }
        }
      }
    }

    if ((*(v4 + 124) & 1) == 0)
    {
      *(v4 + 208) = *(v2 + 96);
    }

    if (_mdns_push_notifications_queue_s_once != -1)
    {
      dispatch_once(&_mdns_push_notifications_queue_s_once, &__block_literal_global_37);
    }

    if ((*(v4 + 124) & 1) == 0)
    {
      v18 = _mdns_push_notifications_queue_s_queue;
      v19 = *(v4 + 48);
      if (v19)
      {
        dispatch_release(v19);
      }

      *(v4 + 48) = v18;
      dispatch_retain(v18);
      if ((*(v4 + 124) & 1) == 0)
      {
        *(v4 + 116) = vdup_n_s32(0x3A98u);
        *(v4 + 212) = 1;
      }
    }

    os_retain(v2);
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 0x40000000;
    aBlock[2] = ___mdns_push_server_add_subscriber_block_invoke_2;
    aBlock[3] = &__block_descriptor_tmp_23_6968;
    aBlock[4] = v2;
    aBlock[5] = v4;
    if ((*(v4 + 124) & 1) == 0)
    {
      v20 = _Block_copy(aBlock);
      v21 = *(v4 + 200);
      if (v21)
      {
        _Block_release(v21);
      }

      *(v4 + 200) = v20;
    }

    if (*(v2 + 88) && *(v2 + 80) && (*(v4 + 124) & 1) == 0)
    {
      *(v4 + 215) = 1;
    }

    *(v2 + 40) = v4;
    os_retain(v4);
    v22 = *(v2 + 40);
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 0x40000000;
    v42[2] = ___mdns_push_server_add_subscriber_block_invoke_4;
    v42[3] = &__block_descriptor_tmp_25_6969;
    v42[4] = v2;
    if ((*(v22 + 124) & 1) == 0)
    {
      v23 = _Block_copy(v42);
      v24 = *(v22 + 64);
      if (v24)
      {
        _Block_release(v24);
      }

      *(v22 + 64) = v23;
      v25 = *(v2 + 40);
      if ((*(v25 + 124) & 1) == 0)
      {
        if (*(v25 + 48))
        {
          if (*(v25 + 64))
          {
            v26 = *(v25 + 16);
            if (!(*(v26 + 56))(*(v2 + 40)))
            {
              if (_mdns_dso_session_log_s_once != -1)
              {
                dispatch_once(&_mdns_dso_session_log_s_once, &__block_literal_global_6069);
              }

              v27 = _mdns_dso_session_log_s_log;
              if (os_log_type_enabled(_mdns_dso_session_log_s_log, OS_LOG_TYPE_DEFAULT))
              {
                v28 = *(v25 + 40);
                *buf = 134218242;
                v47 = v28;
                v48 = 2112;
                v49 = v25;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[DSO%llu] DSO session start -- session: %@", buf, 0x16u);
              }

              v29 = (*(v26 + 48))(v25);
              *(v25 + 24) = mdns_get_monotonic_time_ns();
              if (!v29)
              {
                *(v25 + 124) = 1;
              }
            }
          }
        }
      }
    }
  }

  _mdns_push_server_send_pending_subscribe_requests(v2);
  if (!v45)
  {
    v37 = *(v2 + 40);
    v38 = object[16];
    if (v37)
    {
      if (_mdns_push_notifications_log_s_once != -1)
      {
        dispatch_once(&_mdns_push_notifications_log_s_once, &__block_literal_global_6956);
      }

      v39 = _mdns_push_notifications_log_s_log;
      if (!os_log_type_enabled(_mdns_push_notifications_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v40 = *(v37 + 40);
      *buf = 134218754;
      v47 = v38;
      v48 = 2048;
      v49 = v40;
      v50 = 2112;
      v51 = v2;
      v52 = 2112;
      v53 = object;
      v34 = "[Sub%llu->DSO%llu] New subscription added to the session -- server: %@, subscriber: %@";
      v35 = v39;
      v36 = 42;
    }

    else
    {
      if (_mdns_push_notifications_log_s_once != -1)
      {
        dispatch_once(&_mdns_push_notifications_log_s_once, &__block_literal_global_6956);
      }

      v41 = _mdns_push_notifications_log_s_log;
      if (!os_log_type_enabled(_mdns_push_notifications_log_s_log, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134218498;
      v47 = v38;
      v48 = 2112;
      v49 = v2;
      v50 = 2112;
      v51 = object;
      v34 = "[Sub%llu] New subscription added to the session -- server: %@, subscriber: %@";
      v35 = v41;
      v36 = 32;
    }

LABEL_70:
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, v34, buf, v36);
    return;
  }

  if (_mdns_push_notifications_log_s_once != -1)
  {
    dispatch_once(&_mdns_push_notifications_log_s_once, &__block_literal_global_6956);
  }

  v30 = _mdns_push_notifications_log_s_log;
  if (os_log_type_enabled(_mdns_push_notifications_log_s_log, OS_LOG_TYPE_DEFAULT))
  {
    v31 = object[16];
    v32 = *(v45 + 128);
    v33 = *(v2 + 40);
    if (v33)
    {
      v33 = v33[5];
    }

    *buf = 134219010;
    v47 = v31;
    v48 = 2048;
    v49 = v32;
    v50 = 2048;
    v51 = v33;
    v52 = 2112;
    v53 = v2;
    v54 = 2112;
    v55 = object;
    v34 = "[DupSub%llu->Sub%llu->DSO%llu] Existing subscription in the session -- server: %@, subscriber: %@";
    v35 = v30;
    v36 = 52;
    goto LABEL_70;
  }
}

uint64_t _mdns_subscriber_list_insert_conditionally(uint64_t *a1, _WORD *object, char a3, uint64_t *a4)
{
  v7 = *a1;
  if (*a1)
  {
    while (1)
    {
      v8 = v7;
      if (_mdns_subscriber_equal(v7, object))
      {
        break;
      }

      v7 = *(v8 + 72);
      if (!v7)
      {
        a1 = (v8 + 72);
        goto LABEL_5;
      }
    }

    object[70] = *(v8 + 140);
    v13 = v8;
    do
    {
      v14 = v13;
      v13 = *(v13 + 80);
    }

    while (v13);
    a1 = (v14 + 80);
    v9 = 1;
LABEL_12:
    *a1 = object;
    os_retain(object);
    v10 = v8;
    v11 = v9;
    if (!a4)
    {
      return v11;
    }

    goto LABEL_7;
  }

LABEL_5:
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  if (a3)
  {
    goto LABEL_12;
  }

  if (a4)
  {
LABEL_7:
    *a4 = v10;
  }

  return v11;
}

uint64_t ___mdns_push_server_add_subscriber_block_invoke(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 124) & 1) == 0)
  {
    CFArrayAppendValue(*(v2 + 152), a2);
  }

  return 1;
}

void ___mdns_push_server_add_subscriber_block_invoke_2(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 40);
  if (v7 != v5)
  {
LABEL_2:
    if (a2 != 5)
    {
      return;
    }

    v6 = *(a1 + 32);
    goto LABEL_4;
  }

  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      *(v6 + 100) = 0;
      v11 = *(v6 + 24);
      if (v11)
      {
        v12 = (v6 + 32);
        do
        {
          v13 = v12;
          v14 = *v12;
          v12 = (*v12 + 72);
        }

        while (v14);
        *v13 = v11;
        os_retain(v11);
        v15 = *(v6 + 24);
        if (v15)
        {
          os_release(v15);
          *(v6 + 24) = 0;
        }
      }

      for (i = *(v6 + 32); i; i = *(i + 72))
      {
        v17 = i;
        do
        {
          *(v17 + 140) = 0;
          v17 = *(v17 + 80);
        }

        while (v17);
        *(i + 142) = 1;
      }

      goto LABEL_2;
    }

    if (a2 == 2)
    {
      v9 = *(v6 + 88);
      if (v9)
      {
        v10 = *(v6 + 80);
        if (v10)
        {
          v18[0] = _NSConcreteStackBlock;
          v18[1] = 0x40000000;
          v18[2] = ___mdns_push_server_add_subscriber_block_invoke_3;
          v18[3] = &unk_100153458;
          v18[4] = v9;
          v19 = a3;
          dispatch_async(v10, v18);
        }
      }
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        *(v6 + 102) = 1;

        _mdns_push_server_send_pending_subscribe_requests(v6);
        break;
      case 4:
        if (v7)
        {
          mdns_dso_session_invalidate(v7);
          os_release(*(*(a1 + 32) + 40));
          *(*(a1 + 32) + 40) = 0;
          v6 = *(a1 + 32);
        }

        *(v6 + 102) = 0;
        break;
      case 5:
LABEL_4:
        os_release(v6);
        v8 = *(a1 + 40);

        os_release(v8);
        return;
      default:
        return;
    }
  }
}

void ___mdns_push_server_add_subscriber_block_invoke_4(uint64_t a1, NSObject *a2)
{
  v2 = *(a1 + 32);
  v3 = mdns_message_create_with_dispatch_data(a2, 0);
  if (v3)
  {
    v4 = v3;
    v5 = *(v3 + 2);
    if (!v5)
    {
      goto LABEL_99;
    }

    v6 = *(v3 + 2);
    while (v6 != &_mdns_dso_message_kind)
    {
      v6 = *v6;
      if (!v6)
      {
        goto LABEL_99;
      }
    }

    if (*(v5 + 28))
    {
      if (*(v5 + 28) != 3)
      {
        goto LABEL_99;
      }

      while (v5 != &_mdns_dso_push_message_kind)
      {
        v5 = *v5;
        if (!v5)
        {
          v7 = 0;
          goto LABEL_34;
        }
      }

      v7 = v3;
LABEL_34:
      Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks);
      if (!Mutable)
      {
        goto LABEL_99;
      }

      v26 = Mutable;
      v56 = v2;
      v27 = CFSetCreateMutable(kCFAllocatorDefault, 0, &mdns_domain_name_cf_set_callbacks);
      v57 = v4;
      if (v27)
      {
        v28 = v27;
        v29 = 0;
        v30 = *(v7 + 5);
        v58 = *(v7 + 4);
        if (v30 < 0xC)
        {
          v31 = 0;
        }

        else
        {
          v31 = 0;
          if ((v30 & 0xFFFFFFFFFFFFFFFCLL) != 0xC)
          {
            v32 = __rev16(*(v58 + 14));
            if ((v30 - 16) >= v32)
            {
              v31 = (v58 + 16);
            }

            else
            {
              v31 = 0;
            }

            if ((v30 - 16) >= v32)
            {
              v29 = v32;
            }

            else
            {
              v29 = 0;
            }
          }
        }

        v33 = &v31[v29];
        handler[0] = v31;
        if (v31 < &v31[v29])
        {
          v34 = 0;
          v4 = 0;
          while (1)
          {
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v77 = 0u;
            v78 = 0u;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            memset(buf, 0, sizeof(buf));
            v66 = 0;
            v67 = 0;
            __src = 0;
            *v65 = 0;
            if (_DNSMessageExtractRecordEx(v58, v30, v31, buf, &v67 + 1, &v67, &v66, &__src, v65, 0, 0, 0, 0, handler))
            {
              goto LABEL_77;
            }

            v31 = handler[0];
            if (handler[0] > v33)
            {
              goto LABEL_77;
            }

            if (v66 >= -2)
            {
              if (v34)
              {
                os_release(v34);
              }

              v34 = mdns_domain_name_create_with_labels(buf, 0);
              if (!v34)
              {
                goto LABEL_77;
              }

              Value = CFSetGetValue(v28, v34);
              if (!Value)
              {
                CFSetAddValue(v28, v34);
                Value = v34;
              }

              if (v4)
              {
                free(v4);
              }

              v36 = *v65;
              if (*v65)
              {
                v37 = v26;
                v38 = v28;
                v11 = __src;
                v39 = HIWORD(v67);
                size[0] = 0;
                if (DNSMessageExtractRData(v58, v30, __src, *v65, HIWORD(v67), 0, 0, 0, size) || !size[0])
                {
                  goto LABEL_76;
                }

                v40 = malloc_type_calloc(1uLL, size[0], 0x7926AB5BuLL);
                if (!v40)
                {
                  __break(1u);
LABEL_107:
                  dispatch_once(&_mdns_push_notifications_log_s_once, &__block_literal_global_6956);
LABEL_104:
                  v55 = _mdns_push_notifications_log_s_log;
                  if (os_log_type_enabled(_mdns_push_notifications_log_s_log, OS_LOG_TYPE_FAULT))
                  {
                    *buf = 67109120;
                    *&buf[4] = v11;
                    _os_log_fault_impl(&_mh_execute_header, v55, OS_LOG_TYPE_FAULT, "Unexpected DSO response message ID: %u", buf, 8u);
                  }

                  goto LABEL_99;
                }

                v4 = v40;
                if (DNSMessageExtractRData(v58, v30, v11, v36, v39, v40, size[0], 0, 0))
                {
                  free(v4);
LABEL_76:
                  v4 = 0;
                  v28 = v38;
                  v26 = v37;
LABEL_77:
                  v44 = v26;
                  v26 = 0;
LABEL_78:
                  v45 = v56;
                  if (v34)
                  {
                    os_release(v34);
                  }

                  CFRelease(v28);
                  if (v4)
                  {
                    free(v4);
                  }

                  v4 = v57;
                  if (v44)
                  {
LABEL_83:
                    CFRelease(v44);
                  }

                  if (!v26)
                  {
                    goto LABEL_99;
                  }

                  v47 = v45[3];
                  if (!v47)
                  {
LABEL_98:
                    CFRelease(v26);
                    v4 = v57;
                    goto LABEL_99;
                  }

                  while (2)
                  {
                    __src = 0;
                    p_src = &__src;
                    v63 = 0x2000000000;
                    v64 = 0;
                    *buf = _NSConcreteStackBlock;
                    *&buf[8] = 0x40000000;
                    *&buf[16] = ___mdns_subscriber_process_change_notifications_block_invoke;
                    *&buf[24] = &unk_1001534C0;
                    *&v69 = &__src;
                    *(&v69 + 1) = v47;
                    v48 = mdns_cfarray_enumerate(v26, buf);
                    if (v48)
                    {
                      v49 = p_src;
                      if (p_src[3])
                      {
                        if (*(v47 + 96) || (v50 = *(v47 + 24)) == 0)
                        {
LABEL_92:
                          __swp(v48, (v47 + 104));
                          if (v48)
                          {
                            CFRelease(v48);
                            v49 = p_src;
                          }

                          v49[3] = 0;
                          dispatch_source_merge_data(*(v47 + 96), 1uLL);
                        }

                        else
                        {
                          v51 = dispatch_source_create(&_dispatch_source_type_data_or, 0, 0, v50);
                          *(v47 + 96) = v51;
                          if (v51)
                          {
                            os_retain(v47);
                            v52 = *(v47 + 96);
                            size[0] = _NSConcreteStackBlock;
                            size[1] = 0x40000000;
                            size[2] = ___mdns_subscriber_process_change_notifications_block_invoke_2;
                            size[3] = &__block_descriptor_tmp_28_6975;
                            size[4] = v47;
                            dispatch_source_set_event_handler(v52, size);
                            v53 = *(v47 + 96);
                            handler[0] = _NSConcreteStackBlock;
                            handler[1] = 0x40000000;
                            handler[2] = ___mdns_subscriber_process_change_notifications_block_invoke_3;
                            handler[3] = &__block_descriptor_tmp_29_6976;
                            handler[4] = v47;
                            dispatch_source_set_cancel_handler(v53, handler);
                            dispatch_activate(*(v47 + 96));
                            v49 = p_src;
                            goto LABEL_92;
                          }
                        }
                      }
                    }

                    v54 = p_src[3];
                    if (v54)
                    {
                      CFRelease(v54);
                      p_src[3] = 0;
                    }

                    _Block_object_dispose(&__src, 8);
                    v47 = *(v47 + 72);
                    if (!v47)
                    {
                      goto LABEL_98;
                    }

                    continue;
                  }
                }

                v41 = size[0];
                v28 = v38;
                v26 = v37;
              }

              else
              {
                v41 = 0;
                v4 = 0;
              }

              v42 = mdns_resource_record_create(Value, SHIWORD(v67), v67, v66, v4, v41);
              if (!v42)
              {
                goto LABEL_77;
              }

              v43 = v42;
              CFArrayAppendValue(v26, v42);
              os_release(v43);
              v31 = handler[0];
            }

            if (v31 >= v33)
            {
              v44 = 0;
              goto LABEL_78;
            }
          }
        }

        v44 = v27;
      }

      else
      {
        v44 = v26;
        v26 = 0;
      }

      v45 = v56;
      goto LABEL_83;
    }

    v8 = *(v3 + 4);
    v9 = *(v4 + 5);
    if (v8)
    {
      v10 = v9 >= 0xC;
    }

    else
    {
      v10 = 0;
    }

    if (v10 && v8[1] < 0 && __rev16(*v8))
    {
      LODWORD(v11) = __rev16(*_mdns_dso_message_get_header(v8, v9));
      if (!v11)
      {
        if (_mdns_push_notifications_log_s_once != -1)
        {
          goto LABEL_107;
        }

        goto LABEL_104;
      }

      v13 = v2 + 4;
      v12 = v2[4];
      if (v12)
      {
        if (*(v12 + 140) != v11)
        {
          do
          {
            v14 = v12;
            v12 = *(v12 + 72);
            if (!v12)
            {
              goto LABEL_99;
            }
          }

          while (*(v12 + 140) != v11);
          v13 = (v14 + 72);
        }

        if ((*(_mdns_dso_message_get_header(*(v4 + 4), *(v4 + 5)) + 3) & 0xF) == 0)
        {
          *v13 = *(v12 + 72);
          *(v12 + 72) = 0;
          v15 = v2 + 3;
          do
          {
            v16 = v15;
            v17 = *v15;
            v15 = (*v15 + 72);
          }

          while (v17);
          *v16 = v12;
          os_retain(v12);
          v18 = v2[5];
          v19 = *(v12 + 128);
          if (v18)
          {
            if (_mdns_push_notifications_log_s_once != -1)
            {
              dispatch_once(&_mdns_push_notifications_log_s_once, &__block_literal_global_6956);
            }

            v20 = _mdns_push_notifications_log_s_log;
            if (!os_log_type_enabled(_mdns_push_notifications_log_s_log, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_74;
            }

            v21 = *(v18 + 40);
            *buf = 134218240;
            *&buf[4] = v19;
            *&buf[12] = 2048;
            *&buf[14] = v21;
            v22 = "[Sub%llu->DSO%llu] Subscription is now active.";
            v23 = v20;
            v24 = 22;
          }

          else
          {
            if (_mdns_push_notifications_log_s_once != -1)
            {
              dispatch_once(&_mdns_push_notifications_log_s_once, &__block_literal_global_6956);
            }

            v46 = _mdns_push_notifications_log_s_log;
            if (!os_log_type_enabled(_mdns_push_notifications_log_s_log, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_74;
            }

            *buf = 134217984;
            *&buf[4] = v19;
            v22 = "[Sub%llu] Subscription is now active.";
            v23 = v46;
            v24 = 12;
          }

          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
LABEL_74:
          *(v12 + 142) = 3;
          os_release(v12);
        }
      }
    }

LABEL_99:
    os_release(v4);
  }
}

void _mdns_push_server_send_pending_subscribe_requests(uint64_t a1)
{
  if (!*(a1 + 40))
  {
    return;
  }

  if (*(a1 + 102) != 1)
  {
    return;
  }

  v2 = *(a1 + 32);
  if (!v2)
  {
    return;
  }

  v3 = 0;
  do
  {
    if (*(v2 + 140))
    {
      goto LABEL_37;
    }

    v4 = *(a1 + 100);
    v5 = v4 + 1;
    while (v5 < 2u)
    {
LABEL_8:
      if (v4 == ++v5)
      {
        goto LABEL_38;
      }
    }

    v6 = *(a1 + 24);
    if (v6)
    {
      while (*(v6 + 140) != v5)
      {
        v6 = *(v6 + 72);
        if (!v6)
        {
          goto LABEL_13;
        }
      }

      goto LABEL_8;
    }

LABEL_13:
    v7 = *(a1 + 32);
    if (v7)
    {
      while (*(v7 + 140) != v5)
      {
        v7 = *(v7 + 72);
        if (!v7)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_8;
    }

LABEL_16:
    *(a1 + 100) = v5;
    if (!v3)
    {
      v8 = _os_object_alloc();
      v3 = v8;
      if (v8)
      {
        v9 = &_mdns_dso_subscribe_message_builder_kind;
        *(v8 + 16) = &_mdns_dso_subscribe_message_builder_kind;
        do
        {
          v10 = v9[2];
          if (v10)
          {
            v10(v3);
          }

          v9 = *v9;
        }

        while (v9);
        if (_mdns_domain_name_get_root_s_once != -1)
        {
          dispatch_once(&_mdns_domain_name_get_root_s_once, &__block_literal_global_10);
        }

        v11 = _mdns_domain_name_get_root_s_root;
        *(v3 + 32) = _mdns_domain_name_get_root_s_root;
        if (!v11)
        {
          os_release(v3);
          v3 = 0;
        }
      }
    }

    *(v3 + 28) = v5;
    v12 = *(v2 + 88);
    if (v12)
    {
      os_retain(*(v2 + 88));
    }

    v13 = *(v3 + 32);
    if (v13)
    {
      os_release(v13);
    }

    *(v3 + 32) = v12;
    *(v3 + 40) = *(v2 + 136);
    message = mdns_dso_message_builder_create_message(v3);
    mdns_dso_session_send(*(a1 + 40), message[3]);
    v15 = *(a1 + 40);
    if ((*(v15[2] + 104))(v15))
    {
      os_retain(v15);
      if (_mdns_dso_session_queue_s_once != -1)
      {
        dispatch_once(&_mdns_dso_session_queue_s_once, &__block_literal_global_67);
      }

      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = __mdns_dso_session_add_activity_block_invoke;
      block[3] = &__block_descriptor_tmp_3_6130;
      block[4] = v15;
      dispatch_async(_mdns_dso_session_queue_s_queue, block);
    }

    os_release(message);
    v16 = v2;
    do
    {
      *(v16 + 140) = v5;
      v16 = *(v16 + 80);
    }

    while (v16);
    *(v2 + 142) = 2;
LABEL_37:
    v2 = *(v2 + 72);
  }

  while (v2);
LABEL_38:
  if (v3)
  {

    os_release(v3);
  }
}

uint64_t ___mdns_subscriber_process_change_notifications_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = *(a2 + 40);
  if (v5 < -1)
  {
    if (v5 != -2)
    {
      return 1;
    }

    if (*(a2 + 56))
    {
      return 1;
    }

    v10 = *(a2 + 54);
    if (v10 != 255)
    {
      if (v10 != *(v4 + 138))
      {
        return 1;
      }

      v12 = *(a2 + 52);
      if (v12 != 255 && v12 != *(v4 + 136))
      {
        return 1;
      }
    }
  }

  else
  {
    v6 = *(v4 + 138);
    if (v6 != 255 && *(a2 + 54) != v6)
    {
      return 1;
    }

    v8 = *(v4 + 136);
    v9 = v8 == 255 || *(a2 + 52) == v8;
    if (!v9 || (_mdns_domain_name_equal(*(a2 + 24), *(v4 + 88)) & 1) == 0)
    {
      return 1;
    }
  }

  result = *(*(*(a1 + 32) + 8) + 24);
  if (result || (*(*(*(a1 + 32) + 8) + 24) = CFArrayCreateMutable(kCFAllocatorDefault, 0, &mdns_cfarray_callbacks), (result = *(*(*(a1 + 32) + 8) + 24)) != 0))
  {
    CFArrayAppendValue(result, a2);
    return 1;
  }

  return result;
}

uint64_t ___mdns_subscriber_process_change_notifications_block_invoke_2(uint64_t result)
{
  __swp(v1, (*(result + 32) + 104));
  if (v1)
  {
    v2 = result;
    v3 = *(result + 32);
    v4 = *(v3 + 120);
    if (v4)
    {
      CFRelease(v4);
      *(*(v2 + 32) + 120) = 0;
      v3 = *(v2 + 32);
    }

    *(v3 + 120) = v1;
    result = *(*(v2 + 32) + 112);
    if (result)
    {
      v5 = *(result + 16);

      return v5();
    }
  }

  return result;
}

void _mdns_subscriber_set_query(uint64_t a1, void *object, __int16 a3, __int16 a4)
{
  if (object)
  {
    os_retain(object);
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    os_release(v8);
  }

  *(a1 + 88) = object;
  *(a1 + 136) = a3;
  *(a1 + 138) = a4;
}

uint64_t _mdns_subscriber_get_internal_queue()
{
  if (_mdns_push_notifications_queue_s_once != -1)
  {
    dispatch_once(&_mdns_push_notifications_queue_s_once, &__block_literal_global_37);
  }

  return _mdns_push_notifications_queue_s_queue;
}

void _mdns_subscriber_finalize(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    os_release(v2);
    *(a1 + 64) = 0;
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    os_release(v3);
    *(a1 + 88) = 0;
  }

  __swp(v3, (a1 + 104));
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 120);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 120) = 0;
  }
}

void *_mdns_subscriber_copy_description(uint64_t a1, int a2, int a3)
{
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (!a2 || !mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1))
  {
    v9 = *(a1 + 88);
    if (v9)
    {
      if (a3)
      {
        v10 = (v9 + 16);
        while (1)
        {
          v10 = *v10;
          if (!v10)
          {
            break;
          }

          v11 = v10[3];
          if (v11)
          {
            v12 = v11();
            goto LABEL_14;
          }
        }

        v12 = 0;
LABEL_14:
        v13 = "«REDACTED»";
        if (v12)
        {
          v13 = v12;
        }
      }

      else
      {
        v12 = 0;
        v13 = *(v9 + 40);
      }
    }

    else
    {
      v12 = 0;
      v13 = "«NO NAME»";
    }

    if (mdns_string_builder_append_formatted(v7, "name: %s, type: ", v13))
    {
      goto LABEL_34;
    }

    v14 = DNSRecordTypeValueToString(*(a1 + 136)) ? mdns_string_builder_append_formatted(v7, "%s") : mdns_string_builder_append_formatted(v7, "TYPE%u");
    if (v14 || mdns_string_builder_append_formatted(v7, ", class: "))
    {
      goto LABEL_34;
    }

    v15 = *(a1 + 138);
    v16 = "ANY";
    if (v15 != 255)
    {
      v16 = 0;
    }

    if (v15 == 1)
    {
      v16 = "IN";
    }

    if (v16 ? mdns_string_builder_append_formatted(v7, "%s") : mdns_string_builder_append_formatted(v7, "CLASS%u"))
    {
LABEL_34:
      v8 = 0;
      if (!v12)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v8 = mdns_string_builder_copy_string(v7);
      if (!v12)
      {
        goto LABEL_32;
      }
    }

    free(v12);
    goto LABEL_32;
  }

  v8 = 0;
LABEL_32:
  os_release(v7);
  return v8;
}

void mdns_push_server_invalidate(_BYTE *a1)
{
  a1[103] = 1;
  os_retain(a1);
  if (_mdns_push_notifications_queue_s_once != -1)
  {
    dispatch_once(&_mdns_push_notifications_queue_s_once, &__block_literal_global_37);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = __mdns_push_server_invalidate_block_invoke;
  block[3] = &__block_descriptor_tmp_2_6996;
  block[4] = a1;
  dispatch_async(_mdns_push_notifications_queue_s_queue, block);
}

void __mdns_push_server_invalidate_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 40))
  {
    mdns_dso_session_invalidate(*(v2 + 40));
    os_release(*(*(a1 + 32) + 40));
    *(*(a1 + 32) + 40) = 0;
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 88);
  if (v3)
  {
    v4 = *(v2 + 80);
    if (v4)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 0x40000000;
      block[2] = __mdns_push_server_invalidate_block_invoke_2;
      block[3] = &unk_100153318;
      block[4] = v3;
      dispatch_async(v4, block);
      v2 = *(a1 + 32);
    }
  }

  if (*(v2 + 80))
  {
    dispatch_release(*(v2 + 80));
    *(*(a1 + 32) + 80) = 0;
    v2 = *(a1 + 32);
  }

  if (*(v2 + 88))
  {
    _Block_release(*(v2 + 88));
    v2 = *(a1 + 32);
    *(v2 + 88) = 0;
  }

  os_release(v2);
}

void mdns_subscriber_set_event_handler(uint64_t a1, void *aBlock)
{
  if ((*(a1 + 61) & 1) == 0)
  {
    if (aBlock)
    {
      v3 = _Block_copy(aBlock);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(a1 + 112);
    if (v4)
    {
      _Block_release(v4);
    }

    *(a1 + 112) = v3;
  }
}

uint64_t mdns_memcmp_us_ascii_case_insensitive(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    while (1)
    {
      v4 = *a1++;
      v3 = v4;
      v5 = v4 + 32;
      v6 = v4 - 65 >= 0x1A;
      v8 = *a2++;
      v7 = v8;
      if (!v6)
      {
        v3 = v5;
      }

      if (v7 - 65 < 0x1A)
      {
        v7 += 32;
      }

      if (v3 < v7)
      {
        return -1;
      }

      if (v3 > v7)
      {
        break;
      }

      if (!--a3)
      {
        return 0;
      }
    }

    return 1;
  }

  else
  {
    return 0;
  }
}

void mDNSPlatformGetDNSRoutePolicy(uint64_t a1)
{
  *(a1 + 280) = -1;
  if (!*(a1 + 340) || (*(a1 + 244) & 0x80000000) != 0)
  {
    goto LABEL_142;
  }

  bzero(hostname, 0x3F1uLL);
  v2 = a1 + 376;
  ConvertDomainNameToCString_withescape((a1 + 376), hostname);
  host = nw_endpoint_create_host(hostname, "0");
  if (host)
  {
    v4 = host;
    v5 = nw_parameters_create();
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 136);
      if (v7 == -4 || v7 == -5 || v7 == -3 || v7 == -1 || v7 == -2 || v7 == 0)
      {
        v13 = 0;
      }

      else
      {
        v13 = *(a1 + 136);
      }

      if (v13)
      {
        v14 = nw_interface_create_with_index();
        if (v14)
        {
          v15 = v14;
          nw_parameters_require_interface(v6, v14);
          nw_release(v15);
          goto LABEL_64;
        }

        v30 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_64;
          }
        }

        else
        {
          v30 = mDNSLogCategory_Default_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_64;
          }
        }

        v31 = bswap32(*(a1 + 340));
        *buf = 67109376;
        *&buf[4] = HIWORD(v31);
        LOWORD(v90) = 1024;
        *(&v90 + 2) = v13;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[Q%u] mDNSPlatformGetDNSRoutePolicy: nw_interface_create_with_index() returned NULL for index %u", buf, 0xEu);
      }

LABEL_64:
      nw_parameters_set_uid();
      if (*(a1 + 244))
      {
        nw_parameters_set_pid();
        *buf = 0;
        *&v90 = 0;
        v32 = mdns_system_pid_to_uuid(*(a1 + 244), buf);
        v33 = v32 != 0;
        if (!v32)
        {
          nw_parameters_set_e_proc_uuid();
        }
      }

      else
      {
        nw_parameters_set_e_proc_uuid();
        v33 = 0;
      }

      evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
      if (evaluator_for_endpoint)
      {
        v35 = evaluator_for_endpoint;
        nw_release(v4);
        nw_release(v6);
        v36 = nw_path_evaluator_copy_path();
        if (v36)
        {
          v37 = v36;
          if (nw_path_get_status(v36) == nw_path_status_satisfied)
          {
            flow_divert_unit = nw_path_get_flow_divert_unit();
            if (!flow_divert_unit)
            {
              v60 = nw_path_copy_scoped_interface();
              if (!v60)
              {
                goto LABEL_154;
              }

              v61 = v60;
              index = nw_interface_get_index(v60);
              *(a1 + 136) = index;
              nw_release(v61);
              if (index == v13)
              {
                goto LABEL_154;
              }

              v63 = mDNSLogCategory_Default;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
              {
                if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_154;
                }
              }

              else
              {
                v63 = mDNSLogCategory_Default_redacted;
                if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_154;
                }
              }

              v83 = bswap32(*(a1 + 340));
              *buf = 67109632;
              *&buf[4] = HIWORD(v83);
              LOWORD(v90) = 1024;
              *(&v90 + 2) = v13;
              WORD3(v90) = 1024;
              DWORD2(v90) = index;
              v84 = "[Q%u] mDNSPlatformGetDNSRoutePolicy: DNS Route Policy has changed the scoped ifindex from [%u] to [%u]";
              v85 = v63;
              v86 = 20;
LABEL_153:
              _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, v84, buf, v86);
              goto LABEL_154;
            }

            v39 = flow_divert_unit;
            *(a1 + 280) = flow_divert_unit;
            v40 = mDNSLogCategory_Default;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
            {
              if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_DEFAULT))
              {
                v41 = bswap32(*(a1 + 340)) >> 16;
                v64 = (a1 + 376);
                while (1)
                {
                  if (!v64 || (v65 = *v64, v65 > 0x3F))
                  {
LABEL_129:
                    v44 = 257;
                    goto LABEL_152;
                  }

                  if (!*v64)
                  {
                    break;
                  }

                  v64 += v65 + 1;
                  if (&v64[-v2] >= 256)
                  {
                    goto LABEL_129;
                  }
                }

                v44 = (v64 - v2 + 1);
                goto LABEL_152;
              }
            }

            else
            {
              v40 = mDNSLogCategory_Default_redacted;
              if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_DEFAULT))
              {
                v41 = bswap32(*(a1 + 340)) >> 16;
                v42 = (a1 + 376);
                while (1)
                {
                  if (!v42 || (v43 = *v42, v43 > 0x3F))
                  {
LABEL_80:
                    v44 = 257;
                    goto LABEL_152;
                  }

                  if (!*v42)
                  {
                    break;
                  }

                  v42 += v43 + 1;
                  if (&v42[-v2] >= 256)
                  {
                    goto LABEL_80;
                  }
                }

                v44 = (v42 - v2 + 1);
LABEL_152:
                *buf = 67110147;
                *&buf[4] = v41;
                LOWORD(v90) = 2160;
                *(&v90 + 2) = 1752392040;
                WORD5(v90) = 1040;
                HIDWORD(v90) = v44;
                *v91 = 2101;
                *&v91[2] = a1 + 376;
                v92 = 1024;
                LODWORD(v93) = v39;
                v84 = "[Q%u] mDNSPlatformGetDNSRoutePolicy: Query for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P service ID is set ->service_ID:[%d] ";
                v85 = v40;
                v86 = 40;
                goto LABEL_153;
              }
            }
          }

          else if (!v33 && nw_path_get_status(v37) == nw_path_status_unsatisfied && nw_path_get_reason() != 3)
          {
            v55 = 1;
LABEL_160:
            nw_release(v37);
            goto LABEL_161;
          }

LABEL_154:
          if (!*(a1 + 652))
          {
            uuid_clear((a1 + 360));
            *buf = 0;
            *&v90 = buf;
            *(&v90 + 1) = 0x2000000000;
            *v91 = 0;
            v87[0] = 0;
            v87[1] = v87;
            v87[2] = 0x2000000000;
            v88 = 0;
            nw_path_enumerate_resolver_configs();
            if (*(v90 + 24))
            {
              nw_resolver_config_get_identifier();
            }

            _Block_object_dispose(v87, 8);
            _Block_object_dispose(buf, 8);
            if (!uuid_is_null((a1 + 360)))
            {
              Querier_RegisterPathResolver(a1 + 360);
            }
          }

          v55 = 0;
          goto LABEL_160;
        }

        v50 = mDNSLogCategory_Default;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
          {
            v51 = bswap32(*(a1 + 340)) >> 16;
            v58 = (a1 + 376);
            while (1)
            {
              if (!v58 || (v59 = *v58, v59 > 0x3F))
              {
LABEL_116:
                v54 = 257;
                goto LABEL_146;
              }

              if (!*v58)
              {
                break;
              }

              v58 += v59 + 1;
              if (&v58[-v2] >= 256)
              {
                goto LABEL_116;
              }
            }

            v54 = (v58 - v2 + 1);
            goto LABEL_146;
          }
        }

        else
        {
          v50 = mDNSLogCategory_Default_redacted;
          if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
          {
            v51 = bswap32(*(a1 + 340)) >> 16;
            v52 = (a1 + 376);
            while (1)
            {
              if (!v52 || (v53 = *v52, v53 > 0x3F))
              {
LABEL_98:
                v54 = 257;
                goto LABEL_146;
              }

              if (!*v52)
              {
                break;
              }

              v52 += v53 + 1;
              if (&v52[-v2] >= 256)
              {
                goto LABEL_98;
              }
            }

            v54 = (v52 - v2 + 1);
LABEL_146:
            v79 = DNSTypeName(*(a1 + 342));
            v80 = *(a1 + 244);
            v81 = *(a1 + 248);
            v82 = *(a1 + 280);
            *buf = 67110915;
            *&buf[4] = v51;
            LOWORD(v90) = 2160;
            *(&v90 + 2) = 1752392040;
            WORD5(v90) = 1040;
            HIDWORD(v90) = v54;
            *v91 = 2101;
            *&v91[2] = a1 + 376;
            v92 = 2082;
            v93 = v79;
            v94 = 1024;
            v95 = v80;
            v96 = 1024;
            v97 = v81;
            v98 = 1024;
            v99 = v82;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "[Q%u] mDNSPlatformGetDNSRoutePolicy: Query for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s), PID[%d], EUID[%u], ServiceID[%d] path is NULL", buf, 0x3Eu);
          }
        }

        v55 = 0;
LABEL_161:
        nw_release(v35);
        goto LABEL_143;
      }

      v45 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
        {
          v46 = bswap32(*(a1 + 340)) >> 16;
          v56 = (a1 + 376);
          while (1)
          {
            if (!v56 || (v57 = *v56, v57 > 0x3F))
            {
LABEL_109:
              v49 = 257;
              goto LABEL_139;
            }

            if (!*v56)
            {
              break;
            }

            v56 += v57 + 1;
            if (&v56[-v2] >= 256)
            {
              goto LABEL_109;
            }
          }

          v49 = (v56 - v2 + 1);
          goto LABEL_139;
        }
      }

      else
      {
        v45 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
        {
          v46 = bswap32(*(a1 + 340)) >> 16;
          v47 = (a1 + 376);
          while (1)
          {
            if (!v47 || (v48 = *v47, v48 > 0x3F))
            {
LABEL_89:
              v49 = 257;
              goto LABEL_139;
            }

            if (!*v47)
            {
              break;
            }

            v47 += v48 + 1;
            if (&v47[-v2] >= 256)
            {
              goto LABEL_89;
            }
          }

          v49 = (v47 - v2 + 1);
LABEL_139:
          v75 = DNSTypeName(*(a1 + 342));
          v76 = *(a1 + 244);
          v77 = *(a1 + 248);
          v78 = *(a1 + 280);
          *buf = 67110915;
          *&buf[4] = v46;
          LOWORD(v90) = 2160;
          *(&v90 + 2) = 1752392040;
          WORD5(v90) = 1040;
          HIDWORD(v90) = v49;
          *v91 = 2101;
          *&v91[2] = a1 + 376;
          v92 = 2082;
          v93 = v75;
          v94 = 1024;
          v95 = v76;
          v96 = 1024;
          v97 = v77;
          v98 = 1024;
          v99 = v78;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "[Q%u] mDNSPlatformGetDNSRoutePolicy: Query for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s), PID[%d], EUID[%u], ServiceID[%d] evaluator is NULL", buf, 0x3Eu);
        }
      }

      nw_release(v4);
      v74 = v6;
      goto LABEL_141;
    }

    v21 = mDNSLogCategory_Default;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
      {
        v22 = bswap32(*(a1 + 340)) >> 16;
        v28 = (a1 + 376);
        while (1)
        {
          if (!v28 || (v29 = *v28, v29 > 0x3F))
          {
LABEL_57:
            v25 = 257;
            goto LABEL_135;
          }

          if (!*v28)
          {
            break;
          }

          v28 += v29 + 1;
          if (&v28[-v2] >= 256)
          {
            goto LABEL_57;
          }
        }

        v25 = (v28 - v2 + 1);
        goto LABEL_135;
      }
    }

    else
    {
      v21 = mDNSLogCategory_Default_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
      {
        v22 = bswap32(*(a1 + 340)) >> 16;
        v23 = (a1 + 376);
        while (1)
        {
          if (!v23 || (v24 = *v23, v24 > 0x3F))
          {
LABEL_43:
            v25 = 257;
            goto LABEL_135;
          }

          if (!*v23)
          {
            break;
          }

          v23 += v24 + 1;
          if (&v23[-v2] >= 256)
          {
            goto LABEL_43;
          }
        }

        v25 = (v23 - v2 + 1);
LABEL_135:
        v70 = DNSTypeName(*(a1 + 342));
        v71 = *(a1 + 244);
        v72 = *(a1 + 248);
        v73 = *(a1 + 280);
        *buf = 67110915;
        *&buf[4] = v22;
        LOWORD(v90) = 2160;
        *(&v90 + 2) = 1752392040;
        WORD5(v90) = 1040;
        HIDWORD(v90) = v25;
        *v91 = 2101;
        *&v91[2] = a1 + 376;
        v92 = 2082;
        v93 = v70;
        v94 = 1024;
        v95 = v71;
        v96 = 1024;
        v97 = v72;
        v98 = 1024;
        v99 = v73;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "[Q%u] mDNSPlatformGetDNSRoutePolicy: Query for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s), PID[%d], EUID[%u], ServiceID[%d] parameters is NULL", buf, 0x3Eu);
      }
    }

    v74 = v4;
LABEL_141:
    nw_release(v74);
    goto LABEL_142;
  }

  v16 = mDNSLogCategory_Default;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
    {
      v17 = bswap32(*(a1 + 340)) >> 16;
      v26 = (a1 + 376);
      while (1)
      {
        if (!v26 || (v27 = *v26, v27 > 0x3F))
        {
LABEL_50:
          v20 = 257;
          goto LABEL_132;
        }

        if (!*v26)
        {
          break;
        }

        v26 += v27 + 1;
        if (&v26[-v2] >= 256)
        {
          goto LABEL_50;
        }
      }

      v20 = (v26 - v2 + 1);
      goto LABEL_132;
    }
  }

  else
  {
    v16 = mDNSLogCategory_Default_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
    {
      v17 = bswap32(*(a1 + 340)) >> 16;
      v18 = (a1 + 376);
      while (1)
      {
        if (!v18 || (v19 = *v18, v19 > 0x3F))
        {
LABEL_34:
          v20 = 257;
          goto LABEL_132;
        }

        if (!*v18)
        {
          break;
        }

        v18 += v19 + 1;
        if (&v18[-v2] >= 256)
        {
          goto LABEL_34;
        }
      }

      v20 = (v18 - v2 + 1);
LABEL_132:
      v66 = DNSTypeName(*(a1 + 342));
      v67 = *(a1 + 244);
      v68 = *(a1 + 248);
      v69 = *(a1 + 280);
      *buf = 67110915;
      *&buf[4] = v17;
      LOWORD(v90) = 2160;
      *(&v90 + 2) = 1752392040;
      WORD5(v90) = 1040;
      HIDWORD(v90) = v20;
      *v91 = 2101;
      *&v91[2] = a1 + 376;
      v92 = 2082;
      v93 = v66;
      v94 = 1024;
      v95 = v67;
      v96 = 1024;
      v97 = v68;
      v98 = 1024;
      v99 = v69;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[Q%u] mDNSPlatformGetDNSRoutePolicy: Query for %{sensitive, mask.hash, mdnsresponder:domain_name}.*P (%{public}s), PID[%d], EUID[%u], ServiceID[%d] host is NULL", buf, 0x3Eu);
    }
  }

LABEL_142:
  v55 = 0;
LABEL_143:
  *(a1 + 655) = v55;
}

uint64_t __mDNSPlatformGetDNSRoutePolicy_block_invoke(void *a1, uint64_t a2)
{
  allow_failover = nw_resolver_config_get_allow_failover();
  v5 = nw_resolver_config_get_class();
  if (v5 && (!allow_failover || !*(a1[6] + 643)))
  {
    v6 = *(a1[4] + 8);
    if (*(v6 + 24) - 1 >= v5)
    {
      *(v6 + 24) = v5;
      *(*(a1[5] + 8) + 24) = a2;
    }
  }

  return 1;
}

void _dnssec_obj_trust_anchor_finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    ref_count_obj_release(v2);
    *(a1 + 16) = 0;
  }
}

uint64_t _dnssec_obj_trust_anchor_compare(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 28) == *(a2 + 28))
  {
    return 2 * (ref_count_obj_compare(*(a1 + 16), *(a2 + 16), 1) != 0);
  }

  else
  {
    return 2;
  }
}

void *dnssec_obj_trust_anchor_create_with_ds_data(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __chkstk_darwin(a1, a2, a3, a4, a5, a6, a7, a8);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v29 = 0;
  v30[0] = v18;
  v30[1] = v19;
  v30[2] = v20;
  v30[3] = 2;
  bzero(&v33, 0xFDCuLL);
  v21 = v15[1];
  v31 = *v15;
  v32 = v21;
  v22 = dnssec_obj_rr_ds_create(v17, 1, v30, 36, 1, &v29);
  v23 = v22;
  v24 = v29;
  if (v29)
  {
    v26 = 0;
  }

  else if (v22)
  {
    result = malloc_type_calloc(1uLL, 0x20uLL, 0xB7BBD98FuLL);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v26 = result;
    v27 = &_dnssec_obj_trust_anchor_kind;
    result[1] = &_dnssec_obj_trust_anchor_kind;
    do
    {
      v28 = v27[2];
      if (v28)
      {
        v28(v26);
      }

      v27 = *v27;
    }

    while (v27);
    v24 = 0;
    ++*v26;
    v26[2] = v23;
    ++*v23;
    *(v26 + 6) = v13;
    *(v26 + 7) = v11;
    v29 = 0;
  }

  else
  {
    v26 = 0;
    v24 = -6728;
    v29 = -6728;
  }

  if (v9)
  {
    *v9 = v24;
  }

  if (v23)
  {
    ref_count_obj_release(v23);
  }

  return v26;
}

size_t mdns_snprintf_add(char **a1, uint64_t a2, const char *a3, ...)
{
  va_start(va, a3);
  if (a1)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 0;
  }

  if (a1)
  {
    v5 = a2 - v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = vsnprintf(v4, v5, a3, va);
  v7 = v6;
  if ((v6 & 0x80000000) == 0 && v5)
  {
    if (v5 <= v6)
    {
      v6 = strlen(v4);
    }

    else
    {
      v6 = v6;
    }

    *a1 = &v4[v6];
  }

  return v7;
}

void mdns_replace_string(void **a1, char *__s1)
{
  if (__s1)
  {
    v3 = strdup(__s1);
    if (v3)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = 0;
LABEL_5:
  if (*a1)
  {
    free(*a1);
  }

  *a1 = v3;
}

__uint64_t mdns_get_monotonic_time_ns()
{
  v0 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (!v0 && (!*__error() || *__error()))
  {
    return 1;
  }

  return v0;
}

void _mdns_message_finalize(uint64_t a1)
{
  *(a1 + 32) = 0;
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_release(v2);
    *(a1 + 24) = 0;
  }
}

char *_mdns_message_copy_description(uint64_t a1, uint64_t a2, int a3)
{
  v16 = 0;
  result = *(a1 + 32);
  if (result)
  {
    v5 = a3;
    v6 = *(a1 + 48) ? 36 : 4;
    v7 = a3 ? v6 | 8 : v6;
    DNSMessageToString(result, *(a1 + 40), v7, &v16);
    result = v16;
    if (!v16 && (v5 & 1) == 0)
    {
      if (*(a1 + 48))
      {
        v8 = 12;
      }

      else
      {
        v8 = 0;
      }

      v9 = *(a1 + 40);
      if (v9 < v8)
      {
        return 0;
      }

      v10 = v9 - v8;
      if ((v9 - v8) < 0)
      {
        return 0;
      }

      else
      {
        v11 = *(a1 + 32);
        result = malloc_type_malloc((2 * v10) | 1, 0x1CF66A92uLL);
        if (result)
        {
          v12 = result;
          if (v9 != v8)
          {
            v13 = (v11 + v8);
            v14 = result;
            do
            {
              v15 = *v13++;
              *v14 = a0123456789abcd_0[v15 >> 4];
              v12 = v14 + 2;
              v14[1] = a0123456789abcd_0[v15 & 0xF];
              v14 += 2;
              --v10;
            }

            while (v10);
          }

          *v12 = 0;
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}

_BYTE *mdns_message_create_with_dispatch_data(NSObject *a1, char a2)
{
  v42 = 0;
  buffer_ptr = 0;
  v3 = dispatch_data_create_map(a1, &buffer_ptr, &v42);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v6 = v42;
  v5 = buffer_ptr;
  if (buffer_ptr)
  {
    v7 = v42 >= 0xC;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && (*(buffer_ptr + 2) & 0x78) == 0x30 && !__rev16(*(buffer_ptr + 2)) && !__rev16(*(buffer_ptr + 3)) && !__rev16(*(buffer_ptr + 4)) && !__rev16(*(buffer_ptr + 5)) && ((*(buffer_ptr + 2) & 0x80) == 0 || __rev16(*buffer_ptr)))
  {
    v8 = 0;
    v9 = buffer_ptr + 12;
    v10 = buffer_ptr + v42;
    while (v9 < v10)
    {
      if ((v10 - v9) >= 4)
      {
        v11 = __rev16(*(v9 + 1));
        v12 = v10 - (v9 + 4);
        v9 += v11 + 4;
        ++v8;
        if (v12 >= v11)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    if ((*(buffer_ptr + 2) & 0x80) != 0 || v8)
    {
      v18 = &off_1001538D0;
      v19 = 6;
      while (!(*v18)(v5, v6))
      {
        v18 += 2;
        if (!--v19)
        {
          goto LABEL_35;
        }
      }

      v14 = 0;
      v23 = *(v18 + 4);
      if (v23 <= 2)
      {
        if (!*(v18 + 4))
        {
LABEL_35:
          v20 = _os_object_alloc();
          v14 = v20;
          if (!v20)
          {
            goto LABEL_30;
          }

          v21 = &_mdns_dso_unspecified_message_kind;
          *(v20 + 16) = &_mdns_dso_unspecified_message_kind;
          do
          {
            v22 = v21[2];
            if (v22)
            {
              v22(v14);
            }

            v21 = *v21;
          }

          while (v21);
          goto LABEL_26;
        }

        if (v23 == 1)
        {
          v39 = _os_object_alloc();
          v14 = v39;
          if (!v39)
          {
            goto LABEL_30;
          }

          v40 = &_mdns_dso_keepalive_message_kind;
          *(v39 + 16) = &_mdns_dso_keepalive_message_kind;
          do
          {
            v41 = v40[2];
            if (v41)
            {
              v41(v14);
            }

            v40 = *v40;
          }

          while (v40);
        }

        else
        {
          if (v23 != 2)
          {
            goto LABEL_30;
          }

          v27 = _os_object_alloc();
          v14 = v27;
          if (!v27)
          {
            goto LABEL_30;
          }

          v28 = &_mdns_dso_retry_delay_message_kind;
          *(v27 + 16) = &_mdns_dso_retry_delay_message_kind;
          do
          {
            v29 = v28[2];
            if (v29)
            {
              v29(v14);
            }

            v28 = *v28;
          }

          while (v28);
        }
      }

      else if (*(v18 + 4) > 4u)
      {
        if (v23 == 5)
        {
          v36 = _os_object_alloc();
          v14 = v36;
          if (!v36)
          {
            goto LABEL_30;
          }

          v37 = &_mdns_dso_unsubscribe_message_kind;
          *(v36 + 16) = &_mdns_dso_unsubscribe_message_kind;
          do
          {
            v38 = v37[2];
            if (v38)
            {
              v38(v14);
            }

            v37 = *v37;
          }

          while (v37);
        }

        else
        {
          if (v23 != 6)
          {
            goto LABEL_30;
          }

          v30 = _os_object_alloc();
          v14 = v30;
          if (!v30)
          {
            goto LABEL_30;
          }

          v31 = &_mdns_dso_reconfirm_message_kind;
          *(v30 + 16) = &_mdns_dso_reconfirm_message_kind;
          do
          {
            v32 = v31[2];
            if (v32)
            {
              v32(v14);
            }

            v31 = *v31;
          }

          while (v31);
        }
      }

      else if (v23 == 3)
      {
        v33 = _os_object_alloc();
        v14 = v33;
        if (!v33)
        {
          goto LABEL_30;
        }

        v34 = &_mdns_dso_push_message_kind;
        *(v33 + 16) = &_mdns_dso_push_message_kind;
        do
        {
          v35 = v34[2];
          if (v35)
          {
            v35(v14);
          }

          v34 = *v34;
        }

        while (v34);
      }

      else
      {
        if (v23 != 4)
        {
          goto LABEL_30;
        }

        v24 = _os_object_alloc();
        v14 = v24;
        if (!v24)
        {
          goto LABEL_30;
        }

        v25 = &_mdns_dso_subscribe_message_kind;
        *(v24 + 16) = &_mdns_dso_subscribe_message_kind;
        do
        {
          v26 = v25[2];
          if (v26)
          {
            v26(v14);
          }

          v25 = *v25;
        }

        while (v25);
      }

      goto LABEL_26;
    }
  }

LABEL_21:
  v13 = _os_object_alloc();
  v14 = v13;
  if (v13)
  {
    v15 = &_mdns_message_kind;
    *(v13 + 16) = &_mdns_message_kind;
    do
    {
      v16 = v15[2];
      if (v16)
      {
        v16(v14);
      }

      v15 = *v15;
    }

    while (v15);
LABEL_26:
    if (a2)
    {
      v14[48] = 1;
    }

    if (_mdns_message_set_msg_data(v14, v4))
    {
      os_release(v14);
      v14 = 0;
    }
  }

LABEL_30:
  dispatch_release(v4);
  return v14;
}

uint64_t _mdns_message_set_msg_data(void *a1, dispatch_data_t data)
{
  v8 = 0;
  buffer_ptr = 0;
  if (data)
  {
    v3 = dispatch_data_create_map(data, &buffer_ptr, &v8);
    if (!v3)
    {
      return 4294960568;
    }
  }

  else
  {
    v8 = 0;
    buffer_ptr = 0;
    v3 = &_dispatch_data_empty;
  }

  v5 = a1[3];
  if (v5)
  {
    dispatch_release(v5);
  }

  result = 0;
  v6 = v8;
  v7 = buffer_ptr;
  a1[3] = v3;
  a1[4] = v7;
  a1[5] = v6;
  return result;
}

BOOL _mdns_dso_reconfirm_message_validator(unsigned __int16 *a1, unint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2 >= 0xC)
    {
      result = 0;
      if ((a1[1] & 0x80000000) == 0 && !__rev16(*a1))
      {
        if ((a2 & 0xFFFFFFFFFFFFFFFCLL) == 0xC)
        {
          return 0;
        }

        result = 0;
        v4 = a1 + 8;
        if (a1 != -16)
        {
          v5 = __rev16(a1[7]);
          if ((a2 - 16) >= v5)
          {
            if (__rev16(a1[6]) == 67 && (v4 + v5) > v4)
            {
              v6 = a1 + 8;
              while (1)
              {
                v7 = *v6;
                if (!*v6)
                {
                  break;
                }

                if (v7 > 0x3F)
                {
                  return 0;
                }

                result = 0;
                v8 = v7 + 1;
                v9 = (v6 + v7 + 1);
                if (v4 + v5 - v6 >= v8)
                {
                  v6 = v9;
                  if (v9 - v4 < 256)
                  {
                    continue;
                  }
                }

                return result;
              }

              v10 = v6 - v4 + 1;
              if (v6 - v4 != 0xFFFF)
              {
                return v5 > v10 && v5 - v10 > 3;
              }
            }

            return 0;
          }
        }
      }
    }
  }

  return result;
}

BOOL _mdns_dso_unsubscribe_message_validator(unsigned __int16 *a1, unint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2 >= 0xC)
    {
      result = 0;
      if ((a1[1] & 0x80000000) == 0 && !__rev16(*a1))
      {
        if ((a2 & 0xFFFFFFFFFFFFFFFCLL) == 0xC)
        {
          return 0;
        }

        else
        {
          result = 0;
          if (a1 != -16)
          {
            v4 = __rev16(a1[7]);
            if ((a2 - 16) >= v4)
            {
              return __rev16(a1[6]) == 66 && v4 == 2;
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL _mdns_dso_subscribe_message_validator(unsigned __int16 *a1, unint64_t a2)
{
  result = 0;
  if (a1)
  {
    if (a2 >= 0xC)
    {
      result = 0;
      if ((a1[1] & 0x80000000) == 0)
      {
        if (__rev16(*a1))
        {
          if ((a2 & 0xFFFFFFFFFFFFFFFCLL) == 0xC)
          {
            return 0;
          }

          result = 0;
          v4 = a1 + 8;
          if (a1 == -16)
          {
            return result;
          }

          v5 = __rev16(a1[7]);
          if ((a2 - 16) < v5)
          {
            return result;
          }

          if (__rev16(a1[6]) != 64 || (v4 + v5) <= v4)
          {
            return 0;
          }

          v6 = a1 + 8;
          while (1)
          {
            v7 = *v6;
            if (!*v6)
            {
              break;
            }

            if (v7 > 0x3F)
            {
              return 0;
            }

            result = 0;
            v8 = v7 + 1;
            v9 = (v6 + v7 + 1);
            if (v4 + v5 - v6 >= v8)
            {
              v6 = v9;
              if (v9 - v4 < 256)
              {
                continue;
              }
            }

            return result;
          }

          v10 = (v6 - v4) + 1;
          v11 = v5 - (v6 - v4 + 1);
          v13 = v5 > v10 && v11 == 4;
          return (v10 & 0x10000) == 0 && v13;
        }
      }
    }
  }

  return result;
}

BOOL _mdns_dso_push_message_validator(unsigned __int16 *a1, unint64_t a2)
{
  if (a2 > 0x3FFE)
  {
    return 0;
  }

  v14[7] = v2;
  v14[8] = v3;
  result = 0;
  if (a1)
  {
    if (a2 >= 0xC)
    {
      result = 0;
      if ((a1[1] & 0x80000000) == 0 && !__rev16(*a1))
      {
        if ((a2 & 0x3FFC) == 0xC)
        {
          return 0;
        }

        v7 = __rev16(a1[7]);
        if (a2 - 16 < v7)
        {
          return 0;
        }

        result = 0;
        v8 = (a1 + 8);
        if (a1 != -16 && __rev16(a1[6]) == 65)
        {
          v9 = &v8[v7];
          v14[0] = a1 + 8;
          if (v8 < &v8[v7])
          {
            v10 = 0;
            while (1)
            {
              v13 = 0;
              v12 = 0;
              v11 = 0;
              if (_DNSMessageExtractRecordEx(a1, a2, v8, 0, &v13 + 1, &v13, &v12, 0, &v11, 0, 0, 0, 0, v14))
              {
                return 0;
              }

              v8 = v14[0];
              if (v14[0] > v9)
              {
                return 0;
              }

              if ((v12 & 0x80000000) == 0)
              {
                break;
              }

              if (v12 == -2)
              {
                if (v11)
                {
                  return 0;
                }
              }

              else if (v12 == -1)
              {
                break;
              }

LABEL_17:
              ++v10;
              if (v14[0] >= v9)
              {
                return v10 != 0;
              }
            }

            if (HIWORD(v13) == 255 || v13 == 255)
            {
              return 0;
            }

            goto LABEL_17;
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t _mdns_dso_retry_delay_message_validator(unsigned __int16 *a1, unint64_t a2)
{
  v2 = 0;
  if (a1)
  {
    if (a2 >= 0x14)
    {
      v2 = 0;
      if ((a1[1] & 0x80000000) == 0 && !__rev16(*a1))
      {
        if ((a2 & 0xFFFFFFFFFFFFFFFCLL) == 0xC || (v3 = __rev16(a1[7]), (a2 - 16) < v3))
        {
          v7 = 0;
          v6 = 0;
        }

        else
        {
          v4 = __rev16(a1[6]);
          v6 = a1 != -16 && v4 == 2;
          v7 = v3 == 4;
        }

        return v7 & v6;
      }
    }
  }

  return v2;
}

BOOL _mdns_dso_keepalive_message_validator(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x18 && (a2 & 0xFFFFFFFFFFFFFFFCLL) != 0xC && (v2 = __rev16(*(a1 + 14)), (a2 - 16) >= v2) && ((v3 = __rev16(*(a1 + 12)), v2 == 8) ? (v4 = a1 == -16) : (v4 = 1), !v4 ? (v5 = v3 == 1) : (v5 = 0), v5))
  {
    return bswap32(*(a1 + 20)) >> 4 > 0x270;
  }

  else
  {
    return 0;
  }
}

uint64_t mdns_query_message_create()
{
  v0 = _os_object_alloc();
  v1 = v0;
  if (v0)
  {
    v2 = &_mdns_query_message_kind;
    *(v0 + 16) = &_mdns_query_message_kind;
    do
    {
      v3 = v2[2];
      if (v3)
      {
        v3(v1);
      }

      v2 = *v2;
    }

    while (v2);
    *(v1 + 48) = 1;
    if (_mdns_message_set_msg_data(v1, 0))
    {
      goto LABEL_11;
    }

    if (_mdns_domain_name_get_root_s_once != -1)
    {
      dispatch_once(&_mdns_domain_name_get_root_s_once, &__block_literal_global_10);
    }

    v4 = _mdns_domain_name_get_root_s_root;
    *(v1 + 56) = _mdns_domain_name_get_root_s_root;
    if (!v4)
    {
LABEL_11:
      os_release(v1);
      return 0;
    }
  }

  return v1;
}

void _mdns_query_message_finalize(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    os_release(v2);
    *(a1 + 56) = 0;
  }
}

void mdns_query_message_set_qname(uint64_t a1, void *object)
{
  if ((*(a1 + 70) & 0x20) == 0)
  {
    if (object)
    {
      os_retain(object);
    }

    v4 = *(a1 + 56);
    if (v4)
    {
      os_release(v4);
    }

    *(a1 + 56) = object;
  }
}

uint64_t mdns_query_message_construct(uint64_t a1)
{
  v2 = *(a1 + 70);
  memset(v32, 0, sizeof(v32));
  v3 = *(*(a1 + 56) + 24);
  v4 = *(a1 + 68);
  v5 = *(a1 + 64);
  v6 = *(a1 + 66);
  *(v32 + 6) = 0;
  WORD5(v32[0]) = 0;
  LOBYTE(v32[0]) = HIBYTE(v4);
  BYTE1(v32[0]) = v4;
  BYTE2(v32[0]) = 1;
  BYTE3(v32[0]) = __rbit32(v2 & 3) >> 26;
  WORD2(v32[0]) = 256;
  v7 = v3;
  v8 = *v3;
  if (*v3)
  {
    v7 = v3;
    do
    {
      v9 = &v7[v8];
      v10 = v9[1];
      v7 = v9 + 1;
      v8 = v10;
    }

    while (v10);
  }

  v11 = v7 - v3;
  v12 = v11 + 1;
  if ((v11 + 1) > 0x100)
  {
    return 4294960553;
  }

  memcpy((v32 | 0xC), v3, v11 + 1);
  v13 = (v32 | 0xC) + v12;
  *v13 = HIBYTE(v5);
  *(v13 + 1) = v5;
  *(v13 + 2) = HIBYTE(v6);
  *(v13 + 3) = v6;
  v14 = (v13 + 4);
  v15 = v13 + 4 - v32;
  if ((v2 & 0x1C) == 0 && !*(a1 + 71))
  {
    v19 = v14 - v32;
    goto LABEL_31;
  }

  if (v15 > 0x200)
  {
    return 4294960553;
  }

  *((v32 | 0xC) + v12 + 11) = 0;
  *v14 = 0;
  *(v13 + 5) = 141568;
  if ((v2 & 4) != 0)
  {
    *(v13 + 11) = 0x80;
  }

  v16 = v15 + 11;
  WORD5(v32[0]) = 256;
  v17 = *(a1 + 71);
  if (!v17)
  {
    v19 = v15 + 11;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  v18 = *(a1 + 72);
  v19 = v15 + ((v18 + 7) >> 3) + 19;
  v20 = 4294960553;
  if (v19 <= v16 || v19 > 0x200)
  {
    return v20;
  }

  v21 = v32 + v16;
  bzero(v32 + v16, v19 - v16);
  *(v13 + 13) = bswap32(v32 + v19 - v13 - 15) >> 16;
  *v21 = 2048;
  v21[4] = 0;
  v22 = v32 + v19 - (v21 + 4);
  v21[2] = HIBYTE(v22);
  v21[3] = v22;
  v21[5] = v17;
  v21[6] = v18;
  v21[7] = 0;
  v23 = v21 + 8;
  if (v18 >= 8)
  {
    memcpy(v23, (a1 + 73), v18 >> 3);
  }

  if ((v18 & 7) != 0)
  {
    *(v23 + (v18 >> 3)) = *(v23 + (v18 >> 3)) & ~(-1 << (8 - (v18 & 7))) | *(a1 + 73 + (v18 >> 3)) & (-1 << (8 - (v18 & 7)));
  }

  if ((v2 & 0x10) != 0)
  {
LABEL_21:
    if (v19 <= 0x1FA)
    {
      v20 = 4294960554;
      if (v19 <= v15 || v19 - v15 < 0xB)
      {
        return v20;
      }

      v24 = v32 + v19;
      v19 += 6;
      *(v13 + 13) = bswap32(v32 + v19 - v13 - 15) >> 16;
      *v24 = 33558272;
      *(v24 + 2) = 0;
      if ((v2 & 8) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_25;
    }

    return 4294960553;
  }

LABEL_18:
  if ((v2 & 8) != 0)
  {
LABEL_25:
    v25 = (v19 + 131) & 0xFFFFFFFFFFFFFF80;
    v20 = 4294960553;
    v26 = v25 - v19;
    if (v25 <= v19)
    {
      return v20;
    }

    if (v25 > 0x200)
    {
      return v20;
    }

    v20 = 4294960554;
    if (v19 <= v15 || v19 - v15 < 0xB)
    {
      return v20;
    }

    v27 = v32 + v19;
    bzero(v27, v26);
    *(v13 + 13) = bswap32(v32 + v25 - v13 - 15) >> 16;
    *v27 = 3072;
    v28 = v32 + v25 - v27 - 4;
    v27[2] = HIBYTE(v28);
    v27[3] = v28;
    v19 = v25;
  }

LABEL_31:
  v29 = dispatch_data_create(v32, v19, 0, 0);
  if (!v29)
  {
    return 4294960568;
  }

  v30 = v29;
  v20 = _mdns_message_set_msg_data(a1, v29);
  dispatch_release(v30);
  if (!v20)
  {
    *(a1 + 70) |= 0x20u;
  }

  return v20;
}

uint64_t _mdns_dso_message_get_header(uint64_t result, unint64_t a2)
{
  if (a2 < 0xC || !result)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

BOOL mdns_dso_message_is_unidirectional(unsigned __int16 *a1, unint64_t a2)
{
  if (!a1 || a2 < 0xC)
  {
    return 0;
  }

  v2 = *(a1 + 2);
  v3 = __rev16(*a1);
  v4 = v2 >= 0 && v3 == 0;
  result = v4;
  if (v2 < 0 && !v3)
  {
    return 0;
  }

  return result;
}

void _mdns_extended_dns_error_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    xpc_release(v2);
    *(a1 + 24) = 0;
  }
}

void *_mdns_extended_dns_error_copy_description(uint64_t a1, int a2, int a3)
{
  v6 = mdns_string_builder_create();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (a2 && mdns_string_builder_append_formatted(v6, "<%s: %p>: ", *(*(a1 + 16) + 8), a1) || mdns_string_builder_append_formatted(v7, "code: %u", *(a1 + 32)) || (v9 = *(a1 + 32), v9 <= 0x18) && mdns_string_builder_append_formatted(v7, " (%s)", off_100152710[v9]) || mdns_string_builder_append_formatted(v7, ", extra-text: ") || (!a3 ? ((v11 = *(a1 + 24)) == 0 || !xpc_string_get_string_ptr(v11) ? (appended = mdns_string_builder_append_formatted(v7, "«EXTRA TEXT»")) : (appended = mdns_string_builder_append_formatted(v7, "'%s'"))) : (appended = mdns_string_builder_append_formatted(v7, "«REDACTED»", v13)), appended))
  {
    v8 = 0;
  }

  else
  {
    v8 = mdns_string_builder_copy_string(v7);
  }

  os_release(v7);
  return v8;
}

BOOL type_bit_maps_check_length(uint64_t a1, unsigned int a2)
{
  v2 = a1;
  v3 = a1 + a2;
  for (i = a1 + 1; i < v3; i = v5 + 3)
  {
    v5 = *(v2 + 1) + v2;
    v2 = v5 + 2;
  }

  if (v2 != v3)
  {
    v7 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v8 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        return v2 == v3;
      }
    }

    else
    {
      v7 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        return v2 == v3;
      }
    }

    v10 = 136447234;
    v11 = "ptr == ptr_limit";
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
    v16 = 1024;
    v17 = 42;
    v18 = 2048;
    v19 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v10, 0x30u);
  }

  return v2 == v3;
}

uint64_t rdata_parser_type_bit_maps_cover_dns_type(unsigned __int8 *a1, int a2, unsigned int a3)
{
  v3 = &a1[a2];
  if (a1 + 1 >= v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = a1[1];
      v6 = &a1[v5 + 2];
      if (v6 > v3)
      {
        break;
      }

      v7 = 8 * v5;
      if (a3 >> 8 == *a1 && v7 > a3)
      {
        v4 |= ((1 << (~a3 & 7)) & a1[(a3 >> 3) + 2]) != 0;
      }

      a1 = v6;
    }

    while (v6 + 1 < v3);
  }

  return v4 & 1;
}

uint64_t rdata_parser_ds_get_digest_length(unsigned int a1)
{
  if (a1 <= 3)
  {
    v3 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v4 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    else
    {
      v3 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    v6 = 136447234;
    v7 = "rdata_len >= offsetof(rdata_ds_t, digest)";
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
    v12 = 1024;
    v13 = 351;
    v14 = 2048;
    v15 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v6, 0x30u);
    return 0;
  }

  return (a1 - 4);
}

BOOL rdata_parser_rrsig_check_validity(uint64_t a1, unsigned int a2)
{
  if (a2 <= 0x13)
  {
    v11 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v13 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      result = os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v11 = mDNSLogCategory_Default_redacted;
      result = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT);
      if (!result)
      {
        return result;
      }
    }

    v14 = 136447234;
    v15 = "rdata_len >= min_rdata_len_rrsig";
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
    v20 = 1024;
    v21 = 474;
    v22 = 2048;
    v23 = 0;
    goto LABEL_22;
  }

  v2 = *(a1 + 18);
  if (*(a1 + 18))
  {
    v3 = a1 + a2;
    v4 = a1 + 18;
    while (!v3 || v4 + v2 + 1 <= v3)
    {
      v5 = v2 + v4;
      v6 = *(v5 + 1);
      v4 = v5 + 1;
      v2 = v6;
      if (!v6)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    v4 = a1 + 18;
LABEL_9:
    v7 = v4 - (a1 + 18);
    v8 = __CFADD__(v7, 1);
    v9 = v7 + 1;
    if (!v8)
    {
      if (v9 < a2 - 18)
      {
        return 1;
      }

      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        v11 = mDNSLogCategory_Default;
        result = os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT);
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v11 = mDNSLogCategory_Default_redacted;
        result = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT);
        if (!result)
        {
          return result;
        }
      }

      v14 = 136447234;
      v15 = "signer_name_len < rdata_len - offsetof(rdata_rrsig_t, signer_name)";
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
      v20 = 1024;
      v21 = 481;
      v22 = 2048;
      v23 = 0;
      goto LABEL_22;
    }
  }

  v11 = mDNSLogCategory_Default;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v12 = mDNSLogCategory_Default == mDNSLogCategory_State;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    result = os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT);
    if (result)
    {
LABEL_21:
      v14 = 136447234;
      v15 = "signer_name_len >= 1";
      v16 = 2082;
      v17 = "";
      v18 = 2082;
      v19 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
      v20 = 1024;
      v21 = 479;
      v22 = 2048;
      v23 = 0;
LABEL_22:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v14, 0x30u);
      return 0;
    }
  }

  else
  {
    v11 = mDNSLogCategory_Default_redacted;
    result = os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT);
    if (result)
    {
      goto LABEL_21;
    }
  }

  return result;
}

uint64_t rdata_parser_dnskey_get_public_key_size(unsigned int a1)
{
  if (a1 <= 3)
  {
    v3 = mDNSLogCategory_Default;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v4 = mDNSLogCategory_Default == mDNSLogCategory_State;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    else
    {
      v3 = mDNSLogCategory_Default_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_FAULT))
      {
        return 0;
      }
    }

    v6 = 136447234;
    v7 = "rdata_len >= offsetof(rdata_dnskey_t, public_key)";
    v8 = 2082;
    v9 = "";
    v10 = 2082;
    v11 = "/Library/Caches/com.apple.xbs/Sources/mDNSResponder/mDNSShared/dns_objects/utilities/rdata_parser.c";
    v12 = 1024;
    v13 = 539;
    v14 = 2048;
    v15 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_FAULT, "AssertMacros: %{public}s, %{public}s file: %{public}s, line: %d, value: %ld", &v6, 0x30u);
    return 0;
  }

  return (a1 - 4);
}

void dnssd_analytics_update_dns_query_info(int a1, int a2, int a3, unsigned int a4, unsigned int a5, int a6)
{
  if (a2)
  {
    v7 = 3;
    if (a2 == 1)
    {
      v7 = 1;
    }

    v8 = 2 * (a2 != 1);
    if (a1)
    {
      v8 = v7;
    }

    v9 = (&s_dns_analytics + 104 * v8);
    if (v9)
    {
      switch(a3)
      {
        case 1:
          v14 = 4;
          break;
        case 65:
          v14 = 10;
          break;
        case 28:
          v14 = 7;
          break;
        default:
          return;
      }

      v15 = &v9->i64[v14];
      v16.i64[0] = vdupq_n_s64(1uLL).u64[0];
      v16.i64[1] = a5;
      *v9 = vaddq_s64(*v9, v16);
      *v15 += a4;
      v17 = 2;
      if (a6)
      {
        v17 = 1;
      }

      ++v15[v17];
      v18 = mDNSLogCategory_Analytics;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Analytics == mDNSLogCategory_State)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Analytics, OS_LOG_TYPE_DEBUG))
        {
          return;
        }
      }

      else
      {
        v18 = mDNSLogCategory_Analytics_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Analytics_redacted, OS_LOG_TYPE_DEBUG))
        {
          return;
        }
      }

      v19[0] = 67110144;
      v19[1] = a1;
      v20 = 1024;
      v21 = a3;
      v22 = 1024;
      v23 = a4;
      v24 = 1024;
      v25 = a5;
      v26 = 1024;
      v27 = a6;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "dnssd_analytics_update_dns_query_info cell %d qtype %d queries %u latency %u pos %d", v19, 0x20u);
    }
  }
}

void __dnssd_analytics_init_block_invoke(id a1)
{
  dnssd_analytics_init_sAnalyticsQueue = dispatch_queue_create("com.apple.mDNSResponder.analytics-reporting-queue", 0);
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v1, XPC_ACTIVITY_REPEATING, 1);
  xpc_dictionary_set_BOOL(v1, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  xpc_dictionary_set_int64(v1, XPC_ACTIVITY_DELAY, XPC_ACTIVITY_INTERVAL_1_DAY);
  xpc_dictionary_set_int64(v1, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_5_MIN);
  xpc_dictionary_set_string(v1, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
  xpc_activity_register("com.apple.mDNSResponder.analytics.daily", v1, &__block_literal_global_6);
  if (v1)
  {

    xpc_release(v1);
  }
}

void __dnssd_analytics_init_block_invoke_2(id a1, _xpc_activity_s *a2)
{
  if (xpc_activity_should_defer(a2))
  {
    v3 = xpc_activity_set_state(a2, 3);
    v4 = mDNSLogCategory_Analytics;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v5 = mDNSLogCategory_Analytics == mDNSLogCategory_State;
    }

    else
    {
      v5 = 1;
    }

    v6 = v5;
    if (v3)
    {
      if (v6)
      {
        if (!os_log_type_enabled(mDNSLogCategory_Analytics, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v16 = 0;
        v7 = "com.apple.mDNSResponder.analytics.daily: Asked to defer";
        v8 = &v16;
      }

      else
      {
        v4 = mDNSLogCategory_Analytics_redacted;
        if (!os_log_type_enabled(mDNSLogCategory_Analytics_redacted, OS_LOG_TYPE_DEFAULT))
        {
          return;
        }

        v15 = 0;
        v7 = "com.apple.mDNSResponder.analytics.daily: Asked to defer";
        v8 = &v15;
      }

      v9 = v4;
      v10 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_28;
    }

    if (v6)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Analytics, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v14 = 0;
      v7 = "com.apple.mDNSResponder.analytics.daily: Asked to defer but failed to set state";
      v8 = &v14;
    }

    else
    {
      v4 = mDNSLogCategory_Analytics_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Analytics_redacted, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 0;
      v7 = "com.apple.mDNSResponder.analytics.daily: Asked to defer but failed to set state";
      v8 = buf;
    }
  }

  else
  {
    dispatch_async(dnssd_analytics_init_sAnalyticsQueue, &__block_literal_global_10_7388);
    if (xpc_activity_set_state(a2, 5))
    {
      return;
    }

    v4 = mDNSLogCategory_Analytics;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Analytics == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Analytics, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v12 = 0;
      v7 = "com.apple.mDNSResponder.analytics.daily: Analytics XPC_ACTIVITY_STATE_DONE failed";
      v8 = &v12;
    }

    else
    {
      v4 = mDNSLogCategory_Analytics_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Analytics_redacted, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v11 = 0;
      v7 = "com.apple.mDNSResponder.analytics.daily: Analytics XPC_ACTIVITY_STATE_DONE failed";
      v8 = &v11;
    }
  }

  v9 = v4;
  v10 = OS_LOG_TYPE_ERROR;
LABEL_28:
  _os_log_impl(&_mh_execute_header, v9, v10, v7, v8, 2u);
}

void __dnssd_analytics_init_block_invoke_7(id a1)
{
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  mDNS_Lock_(mDNSStorage, "dnssd_analytics_init_block_invoke", 729);
  if (sCacheRequest_UnicastHitCount)
  {
    _post_cache_request_count(1, 0, sCacheRequest_UnicastHitCount, v1);
    sCacheRequest_UnicastHitCount = 0;
  }

  if (sCacheRequest_UnicastMissCount)
  {
    _post_cache_request_count(1, 1, sCacheRequest_UnicastMissCount, v1);
    sCacheRequest_UnicastMissCount = 0;
  }

  if (sCacheRequest_MulticastHitCount)
  {
    _post_cache_request_count(0, 0, sCacheRequest_MulticastHitCount, v1);
    sCacheRequest_MulticastHitCount = 0;
  }

  if (sCacheRequest_MulticastMissCount)
  {
    _post_cache_request_count(0, 1, sCacheRequest_MulticastMissCount, v1);
    sCacheRequest_MulticastMissCount = 0;
  }

  if (__PAIR128__(sCacheUsage_MulticastMissCount, sCacheUsage_MulticastHitCount) != 0)
  {
    _post_cache_usage_counts_for_type(0, sCacheUsage_MulticastHitCount, sCacheUsage_MulticastMissCount, v1);
    sCacheUsage_MulticastHitCount = 0;
    sCacheUsage_MulticastMissCount = 0;
  }

  if (__PAIR128__(sCacheUsage_UnicastMissCount, sCacheUsage_UnicastHitCount) != 0)
  {
    _post_cache_usage_counts_for_type(1, sCacheUsage_UnicastHitCount, sCacheUsage_UnicastMissCount, v1);
    sCacheUsage_UnicastHitCount = 0;
    sCacheUsage_UnicastMissCount = 0;
  }

  v2 = 0;
  v3 = &s_dns_analytics;
  do
  {
    if (*v3)
    {
      v4 = off_100153BE8[v2];
      *buf = _NSConcreteStackBlock;
      v5 = v2 >= 2 ? "encrypted" : "standard";
      v12 = 0x40000000;
      v13 = ___post_dns_analytic_block_invoke;
      v14 = &__block_descriptor_tmp_80_7395;
      v15 = v4;
      v16 = v5;
      v17 = v3;
      if ((analytics_send_event_lazy() & 1) == 0)
      {
        v6 = mDNSLogCategory_Analytics;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Analytics == mDNSLogCategory_State)
        {
          if (!os_log_type_enabled(mDNSLogCategory_Analytics, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_25;
          }
        }

        else
        {
          v6 = mDNSLogCategory_Analytics_redacted;
          if (!os_log_type_enabled(mDNSLogCategory_Analytics_redacted, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_25;
          }
        }

        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "com.apple.mDNSResponder.dnsqueryinfo: Analytic not posted", v10, 2u);
      }
    }

LABEL_25:
    ++v2;
    v3 = (v3 + 104);
  }

  while (v2 != 4);
  xmmword_100178D50 = 0u;
  unk_100178D60 = 0u;
  xmmword_100178D30 = 0u;
  unk_100178D40 = 0u;
  xmmword_100178D10 = 0u;
  unk_100178D20 = 0u;
  xmmword_100178CF0 = 0u;
  unk_100178D00 = 0u;
  xmmword_100178CD0 = 0u;
  unk_100178CE0 = 0u;
  xmmword_100178CB0 = 0u;
  unk_100178CC0 = 0u;
  xmmword_100178C90 = 0u;
  unk_100178CA0 = 0u;
  xmmword_100178C70 = 0u;
  unk_100178C80 = 0u;
  xmmword_100178C50 = 0u;
  unk_100178C60 = 0u;
  xmmword_100178C30 = 0u;
  unk_100178C40 = 0u;
  xmmword_100178C10 = 0u;
  *&qword_100178C20 = 0u;
  xmmword_100178BF0 = 0u;
  *&qword_100178C00 = 0u;
  s_dns_analytics = 0u;
  unk_100178BE0 = 0u;
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v7 = mDNSLogCategory_Analytics;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Analytics == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Analytics, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
LABEL_33:
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "com.apple.mDNSResponder.unicastassist: Analytic not posted", buf, 2u);
      }
    }

    else
    {
      v7 = mDNSLogCategory_Analytics_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Analytics_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        goto LABEL_33;
      }
    }
  }

  sUnicastAssist_UnicastCount = 0;
  sUnicastAssist_MulticastCount = 0;
  sNonUnicastAssist_UnicastCount = 0;
  sNonUnicastAssist_MulticastCount = 0;
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v8 = mDNSLogCategory_Analytics;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Analytics == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_Analytics, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
LABEL_41:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "com.apple.mDNSResponder.unicastassist_presence: Analytic not posted", buf, 2u);
      }
    }

    else
    {
      v8 = mDNSLogCategory_Analytics_redacted;
      if (os_log_type_enabled(mDNSLogCategory_Analytics_redacted, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        goto LABEL_41;
      }
    }
  }

  sUAPresence_Count_enabled = 0;
  sUAPresence_Count_assert = 0;
  sUAPresence_Count_assert_addrs = 0;
  sUAPresence_Count_assert_hashes = 0;
  sUAPresence_Count_update = 0;
  sUAPresence_Count_update_devices = 0;
  sUAPresence_Count_update_devices_old = 0;
  sUAPresence_Count_update_devices_invalid = 0;
  sUAPresence_Count_update_devices_missing = 0;
  sUAPresence_Count_addrs = 0;
  sUAPresence_Count_addrs_invalid = 0;
  sUAPresence_Count_qhashes = 0;
  sUAPresence_Count_qhashes_found_multicast = 0;
  sUAPresence_Count_qhashes_found_unicast = 0;
  sUAPresence_Count_qhashes_not_found = 0;
  v9 = mDNSLogCategory_Analytics;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Analytics == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_Analytics, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
LABEL_48:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "com.apple.mDNSResponder.analytics.daily Complete", buf, 2u);
    }
  }

  else
  {
    v9 = mDNSLogCategory_Analytics_redacted;
    if (os_log_type_enabled(mDNSLogCategory_Analytics_redacted, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      goto LABEL_48;
    }
  }

  mDNS_Unlock_(mDNSStorage, "dnssd_analytics_init_block_invoke", 742);
  KQueueUnlock("Analytics Update");
}

void _post_cache_request_count(int a1, int a2, uint64_t a3, __n128 a4)
{
  v6 = _NSConcreteStackBlock;
  v7 = 0x40000000;
  v8 = ___post_cache_request_count_block_invoke;
  v9 = &__block_descriptor_tmp_60_7451;
  v11 = a1;
  v12 = a2;
  v10 = a3;
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v4 = mDNSLogCategory_Analytics;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Analytics == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Analytics, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *v5 = 0;
    }

    else
    {
      v4 = mDNSLogCategory_Analytics_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Analytics_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *v5 = 0;
    }

    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "com.apple.mDNSResponder.CacheUsage.request: Analytic not posted", v5, 2u);
  }
}

void _post_cache_usage_counts_for_type(int a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = _NSConcreteStackBlock;
  v7 = 0x40000000;
  v8 = ___post_cache_usage_counts_for_type_block_invoke;
  v9 = &__block_descriptor_tmp_64_7444;
  v12 = a1;
  v10 = a2;
  v11 = a3;
  if ((analytics_send_event_lazy() & 1) == 0)
  {
    v4 = mDNSLogCategory_Analytics;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Analytics == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_Analytics, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *v5 = 0;
    }

    else
    {
      v4 = mDNSLogCategory_Analytics_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_Analytics_redacted, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *v5 = 0;
    }

    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "com.apple.mDNSResponder.CacheUsage.entries: Analytic not posted", v5, 2u);
  }
}

xpc_object_t ___post_dns_analytic_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v2, "network", *(a1 + 32));
  xpc_dictionary_set_string(v2, "transport", *(a1 + 40));
  xpc_dictionary_set_uint64(v2, "latency_ms", *(*(a1 + 48) + 8) / **(a1 + 48));
  xpc_dictionary_set_uint64(v2, "query_bytes", *(*(a1 + 48) + 16));
  xpc_dictionary_set_uint64(v2, "reply_bytes", *(*(a1 + 48) + 24));
  xpc_dictionary_set_uint64(v2, "v4_queries", *(*(a1 + 48) + 32));
  xpc_dictionary_set_uint64(v2, "v4_reply_pos", *(*(a1 + 48) + 40));
  xpc_dictionary_set_uint64(v2, "v4_reply_neg", *(*(a1 + 48) + 48));
  xpc_dictionary_set_uint64(v2, "v6_queries", *(*(a1 + 48) + 56));
  xpc_dictionary_set_uint64(v2, "v6_reply_pos", *(*(a1 + 48) + 64));
  xpc_dictionary_set_uint64(v2, "v6_reply_neg", *(*(a1 + 48) + 72));
  xpc_dictionary_set_uint64(v2, "https_queries", *(*(a1 + 48) + 80));
  xpc_dictionary_set_uint64(v2, "https_reply_pos", *(*(a1 + 48) + 88));
  xpc_dictionary_set_uint64(v2, "https_reply_neg", *(*(a1 + 48) + 96));
  return v2;
}

void *__cdecl ___post_unicast_assist_presence_block_invoke(id a1)
{
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v1, "enabled", sUAPresence_Count_enabled);
  xpc_dictionary_set_uint64(v1, "assert", sUAPresence_Count_assert);
  xpc_dictionary_set_uint64(v1, "assert_addrs", sUAPresence_Count_assert_addrs);
  xpc_dictionary_set_uint64(v1, "assert_hashes", sUAPresence_Count_assert_hashes);
  xpc_dictionary_set_uint64(v1, "update", sUAPresence_Count_update);
  xpc_dictionary_set_uint64(v1, "update_devices", sUAPresence_Count_update_devices);
  xpc_dictionary_set_uint64(v1, "update_devices_old", sUAPresence_Count_update_devices_old);
  xpc_dictionary_set_uint64(v1, "update_devices_invalid", sUAPresence_Count_update_devices_invalid);
  xpc_dictionary_set_uint64(v1, "update_devices_missing", sUAPresence_Count_update_devices_missing);
  xpc_dictionary_set_uint64(v1, "addrs", sUAPresence_Count_addrs);
  xpc_dictionary_set_uint64(v1, "addrs_invalid", sUAPresence_Count_addrs_invalid);
  xpc_dictionary_set_uint64(v1, "qhashes", sUAPresence_Count_qhashes);
  xpc_dictionary_set_uint64(v1, "qhashes_found_multicast", sUAPresence_Count_qhashes_found_multicast);
  xpc_dictionary_set_uint64(v1, "qhashes_found_unicast", sUAPresence_Count_qhashes_found_unicast);
  xpc_dictionary_set_uint64(v1, "qhashes_not_found", sUAPresence_Count_qhashes_not_found);
  return v1;
}

void *__cdecl ___post_unicast_assist_block_invoke(id a1)
{
  v1 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v1, "unicast", sUnicastAssist_UnicastCount);
  xpc_dictionary_set_uint64(v1, "multicast", sUnicastAssist_MulticastCount);
  xpc_dictionary_set_uint64(v1, "non_unicast", sNonUnicastAssist_UnicastCount);
  xpc_dictionary_set_uint64(v1, "non_multicast", sNonUnicastAssist_MulticastCount);
  return v1;
}

void *___post_cache_usage_counts_for_type_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (*(a1 + 48))
  {
    v4 = "unicast";
  }

  else
  {
    v4 = "multicast";
  }

  xpc_dictionary_set_string(v2, "requestType", v4);
  xpc_dictionary_set_uint64(v3, "hitCount", *(a1 + 32));
  xpc_dictionary_set_uint64(v3, "missCount", *(a1 + 40));
  return v3;
}

void *___post_cache_request_count_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (*(a1 + 40))
  {
    v4 = "unicast";
  }

  else
  {
    v4 = "multicast";
  }

  xpc_dictionary_set_string(v2, "requestType", v4);
  if (*(a1 + 44))
  {
    v5 = "miss";
  }

  else
  {
    v5 = "hit";
  }

  xpc_dictionary_set_string(v3, "cacheState", v5);
  xpc_dictionary_set_uint64(v3, "requestCount", *(a1 + 32));
  return v3;
}

void *_mdns_dso_message_builder_copy_description(void *a1, int a2)
{
  v4 = mdns_string_builder_create();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a2 && mdns_string_builder_append_formatted(v4, "<%s: %p>: ", *(a1[2] + 8), a1))
  {
    v6 = 0;
  }

  else
  {
    v6 = mdns_string_builder_copy_string(v5);
  }

  os_release(v5);
  return v6;
}

_BYTE *mdns_dso_message_builder_create_message(uint64_t a1)
{
  v16 = 0;
  buffer = bswap32(*(a1 + 28)) >> 16;
  v2 = *(a1 + 16);
  v3 = *(a1 + 30) & 0xF;
  if (*(v2 + 56))
  {
    v4 = -80;
  }

  else
  {
    v4 = 48;
  }

  v14 = v4;
  v15 = v3;
  v5 = dispatch_data_create(&buffer, 0xCuLL, 0, 0);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(v2 + 48);
  if (v7)
  {
    v8 = v7(a1);
    if (!v8)
    {
      v11 = 0;
      goto LABEL_12;
    }

    v9 = v8;
    concat = dispatch_data_create_concat(v6, v8);
    dispatch_release(v6);
    if (!concat)
    {
      v11 = 0;
      v6 = v9;
LABEL_12:
      dispatch_release(v6);
      return v11;
    }

    v6 = concat;
  }

  else
  {
    v9 = 0;
  }

  v11 = mdns_message_create_with_dispatch_data(v6, *(a1 + 24));
  dispatch_release(v6);
  v6 = v9;
  if (v9)
  {
    goto LABEL_12;
  }

  return v11;
}

_DWORD *_mdns_dso_keepalive_message_builder_create_primary_tlv(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 0xCuLL, 0x76168CB3uLL);
  if (result)
  {
    v3 = result;
    *result = 134217984;
    v5 = *(a1 + 32);
    v4 = *(a1 + 36);
    *(result + 4) = HIBYTE(v5);
    *(result + 5) = BYTE2(v5);
    *(result + 6) = BYTE1(v5);
    *(result + 7) = v5;
    *(result + 8) = HIBYTE(v4);
    *(result + 9) = BYTE2(v4);
    *(result + 10) = BYTE1(v4);
    *(result + 11) = v4;
    result = dispatch_data_create(result, 0xCuLL, 0, _dispatch_data_destructor_free);
    if (!result)
    {
      free(v3);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *_mdns_dso_subscribe_message_builder_create_primary_tlv(uint64_t a1)
{
  result = 0;
  v3 = *(*(a1 + 32) + 32);
  v4 = v3 + 4;
  if (v3 < 0xFFFC)
  {
    v5 = (v3 + 4);
    v6 = v5 + 4;
    result = malloc_type_calloc(1uLL, v5 + 4, 0x9C7A23A6uLL);
    if (result)
    {
      v7 = result;
      *result = 0x4000;
      result[2] = HIBYTE(v4);
      result[3] = v4;
      if (v5 >= v3)
      {
        v8 = v3;
      }

      else
      {
        v8 = (v3 + 4);
      }

      if (v8)
      {
        memcpy(result + 4, *(*(a1 + 32) + 24), v8);
        v9 = v8 + 4;
      }

      else
      {
        v9 = 4;
      }

      if (v5 < v3)
      {
        goto LABEL_18;
      }

      __src[0] = bswap32(*(a1 + 40)) >> 16;
      __src[1] = bswap32(*(a1 + 42)) >> 16;
      v10 = v6 - v9;
      if (v6 != v9)
      {
        if (v10 >= 4)
        {
          v11 = 4;
        }

        else
        {
          v11 = v6 - v9;
        }

        memcpy(&v7[v9], __src, v11);
      }

      if (v10 < 4 || (result = dispatch_data_create(v7, v6, 0, _dispatch_data_destructor_free)) == 0)
      {
LABEL_18:
        free(v7);
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void _mdns_dso_subscribe_message_builder_finalize(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    os_release(v2);
    *(a1 + 32) = 0;
  }
}

_DWORD *_mdns_dso_unsubscribe_message_builder_create_primary_tlv(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 6uLL, 0xDD6CC934uLL);
  if (result)
  {
    v3 = result;
    *result = 33571328;
    *(result + 2) = bswap32(*(a1 + 32)) >> 16;
    result = dispatch_data_create(result, 6uLL, 0, _dispatch_data_destructor_free);
    if (!result)
    {
      free(v3);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void __init_log_utility_service_block_invoke(id a1, void *a2)
{
  type = xpc_get_type(a2);
  if (type == &_xpc_type_connection)
  {
    v8 = mDNSLogCategory_XPC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v9 = mDNSLogCategory_XPC == mDNSLogCategory_State;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_DEFAULT))
      {
LABEL_28:
        xpc_retain(a2);
        xpc_connection_set_target_queue(a2, log_utility_server_queue);
        *v13 = _NSConcreteStackBlock;
        *&v13[8] = 0x40000000;
        *&v13[16] = __accept_client_block_invoke;
        v14 = &__block_descriptor_tmp_3_7551;
        v15 = a2;
        xpc_connection_set_event_handler(a2, v13);
        xpc_connection_resume(a2);
        return;
      }

      *v13 = 134217984;
      *&v13[4] = a2;
    }

    else
    {
      v8 = mDNSLogCategory_XPC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_28;
      }

      *v13 = 134217984;
      *&v13[4] = a2;
    }

    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "C%p {action='receives connection'}", v13, 0xCu);
    goto LABEL_28;
  }

  v4 = mDNSLogCategory_XPC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v5 = mDNSLogCategory_XPC == mDNSLogCategory_State;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  if (type == &_xpc_type_error)
  {
    if (v6)
    {
      if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    else
    {
      v4 = mDNSLogCategory_XPC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_ERROR))
      {
        return;
      }
    }

    *v13 = 134218242;
    *&v13[4] = a2;
    *&v13[12] = 2082;
    *&v13[14] = xpc_dictionary_get_string(a2, _xpc_error_key_description);
    v7 = "C%p {xpc_error=\n%{public}s\n}";
    v10 = v4;
    v11 = 22;
  }

  else
  {
    if (v6)
    {
      if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *v13 = 134217984;
      *&v13[4] = a2;
      v7 = "C%p {error='receives unknown xpc request'}";
    }

    else
    {
      v4 = mDNSLogCategory_XPC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *v13 = 134217984;
      *&v13[4] = a2;
      v7 = "C%p {error='receives unknown xpc request'}";
    }

    v10 = v4;
    v11 = 12;
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v7, v13, v11);
}

void __accept_client_block_invoke(uint64_t a1, xpc_object_t object)
{
  if (xpc_get_type(object) != &_xpc_type_dictionary)
  {
    v4 = mDNSLogCategory_XPC;
    if (mDNS_SensitiveLoggingEnableCount)
    {
      v5 = mDNSLogCategory_XPC == mDNSLogCategory_State;
    }

    else
    {
      v5 = 1;
    }

    if (v5)
    {
      if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      v6 = *(a1 + 32);
      buf[0].st_dev = 134217984;
      *&buf[0].st_mode = v6;
    }

    else
    {
      v4 = mDNSLogCategory_XPC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:
        v12 = *(a1 + 32);
        if (v12)
        {
          goto LABEL_59;
        }

        return;
      }

      v11 = *(a1 + 32);
      buf[0].st_dev = 134217984;
      *&buf[0].st_mode = v11;
    }

    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "C%p {status='client closed the connection'}", buf, 0xCu);
    goto LABEL_19;
  }

  remote_connection = xpc_dictionary_get_remote_connection(object);
  v8 = mDNSLogCategory_XPC;
  if (mDNS_SensitiveLoggingEnableCount)
  {
    v9 = mDNSLogCategory_XPC == mDNSLogCategory_State;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_24;
    }

    buf[0].st_dev = 134217984;
    *&buf[0].st_mode = remote_connection;
    goto LABEL_23;
  }

  v8 = mDNSLogCategory_XPC_redacted;
  if (os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_DEFAULT))
  {
    buf[0].st_dev = 134217984;
    *&buf[0].st_mode = remote_connection;
LABEL_23:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "C%p {action='handling log utility request'}", buf, 0xCu);
  }

LABEL_24:
  reply = xpc_dictionary_create_reply(object);
  if (!reply)
  {
    v19 = mDNSLogCategory_XPC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      buf[0].st_dev = 134217984;
      *&buf[0].st_mode = remote_connection;
    }

    else
    {
      v19 = mDNSLogCategory_XPC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      buf[0].st_dev = 134217984;
      *&buf[0].st_mode = remote_connection;
    }

    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "C%p {error='cannot create reply response dictionary'}", buf, 0xCu);
    return;
  }

  v15 = reply;
  euid = xpc_connection_get_euid(remote_connection);
  pid = xpc_connection_get_pid(remote_connection);
  if (euid)
  {
    v18 = mDNSLogCategory_XPC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }
    }

    else
    {
      v18 = mDNSLogCategory_XPC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_45;
      }
    }

    buf[0].st_dev = 134218240;
    *&buf[0].st_mode = remote_connection;
    WORD2(buf[0].st_ino) = 1024;
    *(&buf[0].st_ino + 6) = pid;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "C%p {client_pid=%d,error='not running as root'}", buf, 0x12u);
LABEL_45:
    if (IsEntitled(remote_connection))
    {
      v23 = "Client must be running as root";
LABEL_57:
      xpc_dictionary_set_string(v15, "ErrorDescription", v23);
      v25 = 3;
      goto LABEL_58;
    }

LABEL_47:
    v24 = mDNSLogCategory_XPC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_DEFAULT))
      {
LABEL_55:
        buf[0].st_dev = 134218240;
        *&buf[0].st_mode = remote_connection;
        WORD2(buf[0].st_ino) = 1024;
        *(&buf[0].st_ino + 6) = pid;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "C%p {client_pid=%d,error='Client is missing entitlement'}", buf, 0x12u);
      }
    }

    else
    {
      v24 = mDNSLogCategory_XPC_redacted;
      if (os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_55;
      }
    }

    v23 = "Client is missing the entitlement";
    goto LABEL_57;
  }

  if (!IsEntitled(remote_connection))
  {
    goto LABEL_47;
  }

  if (!xpc_dictionary_get_uint64(object, "mDNSResponderStateDump"))
  {
    v26 = mDNSLogCategory_XPC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
    {
      if (os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_ERROR))
      {
        buf[0].st_dev = 134217984;
        *&buf[0].st_mode = remote_connection;
        goto LABEL_90;
      }
    }

    else
    {
      v26 = mDNSLogCategory_XPC_redacted;
      if (os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_ERROR))
      {
        buf[0].st_dev = 134217984;
        *&buf[0].st_mode = remote_connection;
LABEL_90:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "C%p {error='unknown log utility request from client'}", buf, 0xCu);
      }
    }

    xpc_dictionary_set_string(v15, "ErrorDescription", "unknown log utility request from client");
    v25 = 2;
    goto LABEL_58;
  }

  uint64 = xpc_dictionary_get_uint64(object, "mDNSResponderStateDump");
  bzero(__str, 0x400uLL);
  if (is_apple_internal_build_s_once != -1)
  {
    dispatch_once(&is_apple_internal_build_s_once, &__block_literal_global_6175);
  }

  if ((is_apple_internal_build_is_internal & 1) == 0 && !mdns_managed_defaults_get_BOOL_easy())
  {
    v23 = "State dump is currently disabled due to system privacy settings. To enable it, install the [mDNSResponder Logging Profile](https://developer.apple.com/bug-reporting/profiles-and-logs/?name=mdns) and restart your system.";
    goto LABEL_57;
  }

  v21 = xpc_dictionary_dup_fd(object, "mDNSResponderDumpFD");
  v118.tv_sec = 0;
  *&v118.tv_usec = 0;
  gettimeofday(&v118, 0);
  pthread_mutex_lock((mDNSStorage[0] + 616));
  *(mDNSStorage[0] + 680) = mDNSPlatformRawTime();
  if (uint64 == 3)
  {
    dump_state_to_fd(v21);
LABEL_42:
    v22 = 1;
    goto LABEL_244;
  }

  bzero(__s, 0x400uLL);
  v117 = uint64;
  v115 = v21;
  if ((snprintf(__str, 0x400uLL, "%s/%s", "/private/var/log/mDNSResponder", "mDNSResponder_state_dump") - 1024) <= 0xFFFFFC00)
  {
    v39 = mDNSLogCategory_XPC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_123;
      }
    }

    else
    {
      v39 = mDNSLogCategory_XPC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_123;
      }
    }

    buf[0].st_dev = 67109632;
    *&buf[0].st_mode = 1024;
    LOWORD(buf[0].st_ino) = 2048;
    *(&buf[0].st_ino + 2) = 30;
    HIWORD(buf[0].st_uid) = 2048;
    *&buf[0].st_gid = 24;
    v41 = "snprintf truncates the final string - full name buffer length: %u, directory name length: %zu, file name length: %zu";
    v42 = v39;
    v43 = 28;
    goto LABEL_105;
  }

  v27 = opendir("/private/var/log/mDNSResponder");
  if (!v27)
  {
    v40 = mDNSLogCategory_XPC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_123;
      }
    }

    else
    {
      v40 = mDNSLogCategory_XPC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_123;
      }
    }

    v44 = __error();
    v45 = strerror(*v44);
    buf[0].st_dev = 136446466;
    *&buf[0].st_mode = "/private/var/log/mDNSResponder";
    WORD2(buf[0].st_ino) = 2082;
    *(&buf[0].st_ino + 6) = v45;
    v41 = "State Dump: directory %{public}s cannot be opened, reason: %{public}s";
    v42 = v40;
    v43 = 22;
LABEL_105:
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, v41, buf, v43);
LABEL_123:
    v119.tv_sec = 0;
    *&v119.tv_usec = 0;
    memset(buf, 0, 56);
    memset(&v127, 0, 32);
    memset(v125, 0, sizeof(v125));
    gettimeofday(&v119, 0);
    localtime_r(&v119.tv_sec, buf);
    strftime(&v127, 0x20uLL, "%F_%H-%M-%S", buf);
    strftime(v125, 0x20uLL, "%z", buf);
    v55 = snprintf(__str, 0x400uLL, "%s/%s_%s-%06lu%s.txt", "/private/var/log/mDNSResponder", "mDNSResponder_state_dump", &v127, v119.tv_usec, v125);
    if ((v55 - 1024) > 0xFFFFFC00)
    {
      v56 = open(__str, 513, 420);
      if ((v56 & 0x80000000) == 0)
      {
        v57 = v56;
        dump_state_to_fd(v56);
        close(v57);
        if (uint64 != 2)
        {
          v22 = 1;
          goto LABEL_243;
        }

        memset(&v127, 0, sizeof(v127));
        bzero(buf, 0x400uLL);
        if (archive_write_new())
        {
          archive_write_add_filter_bzip2();
          archive_write_set_format_ustar();
          v58 = strlen(__str);
          v59 = v58 + 4;
          if (v58 + 4 >= 0x400)
          {
            v84 = mDNSLogCategory_XPC;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
            {
              if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_234;
              }
            }

            else
            {
              v84 = mDNSLogCategory_XPC_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_234;
              }
            }

            *v125 = 134218240;
            *&v125[4] = 1024;
            *&v125[12] = 2048;
            *&v125[14] = v59;
            v99 = "buffer is not large enough to hold the file name - buffer length: %zu, required length: %zu";
            v100 = v84;
            v101 = 22;
          }

          else
          {
            snprintf(buf, 0x400uLL, "%.*s%s", v58 - 3, __str, "tar.bz2");
            if (!archive_write_open_filename())
            {
              stat(__str, &v127);
              if (archive_entry_new())
              {
                strstr(__str, "mDNSResponder_state_dump");
                archive_entry_copy_stat();
                archive_entry_set_pathname();
                do
                {
                  v60 = archive_write_header();
                }

                while (v60 == -10);
                if (!v60)
                {
                  st_size = v127.st_size;
                  if ((v127.st_size - 0x100000000) < 0xFFFFFFFF00000001)
                  {
                    goto LABEL_233;
                  }

                  v62 = open(__str, 0);
                  if (v62 == -1)
                  {
                    goto LABEL_233;
                  }

                  v114 = v62;
                  v63 = mmap(0, st_size, 1, 2, v62, 0);
                  if (v63 != -1)
                  {
                    v64 = v63;
                    v65 = archive_write_data();
                    if (v65 == st_size)
                    {
                      munmap(v64, st_size);
                      close(v114);
                      archive_entry_free();
                      archive_write_close();
                      archive_write_free();
                      remove(__str, v66);
                      if (strlen(buf) <= 0x3FF)
                      {
                        v67 = 0;
                        v68 = __str;
                        v21 = v115;
                        while (1)
                        {
                          v69 = *(&buf[0].st_dev + v67);
                          v68->__pn_.__r_.__value_.__s.__data_[0] = v69;
                          if (!v69)
                          {
                            goto LABEL_42;
                          }

                          v68 = (v68 + 1);
                          if (++v67 == 1023)
                          {
                            v68->__pn_.__r_.__value_.__s.__data_[0] = 0;
                            goto LABEL_42;
                          }
                        }
                      }

LABEL_236:
                      __str[0].__pn_.__r_.__value_.__s.__data_[0] = 0;
                      v109 = mDNSLogCategory_XPC;
                      uint64 = v117;
                      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
                      {
                        if (os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_DEFAULT))
                        {
LABEL_241:
                          v110 = __error();
                          v111 = strerror(*v110);
                          buf[0].st_dev = 136315138;
                          *&buf[0].st_mode = v111;
                          _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "State Dump: Error happens when trying to compress the state dump, reason: %s", buf, 0xCu);
                        }
                      }

                      else
                      {
                        v109 = mDNSLogCategory_XPC_redacted;
                        if (os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_DEFAULT))
                        {
                          goto LABEL_241;
                        }
                      }

                      v22 = 0;
                      goto LABEL_243;
                    }

                    v90 = v65;
                    v91 = mDNSLogCategory_XPC;
                    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
                    {
                      if (os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_DEBUG))
                      {
LABEL_230:
                        *v125 = 134218240;
                        *&v125[4] = v90;
                        *&v125[12] = 1024;
                        *&v125[14] = st_size;
                        _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEBUG, "archive_write_data fails: amount_written(%ld) != (%u)", v125, 0x12u);
                      }
                    }

                    else
                    {
                      v91 = mDNSLogCategory_XPC_redacted;
                      if (os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_DEBUG))
                      {
                        goto LABEL_230;
                      }
                    }

                    munmap(v64, st_size);
                    goto LABEL_232;
                  }

                  v89 = mDNSLogCategory_XPC;
                  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
                  {
                    if (os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_DEBUG))
                    {
LABEL_228:
                      v107 = __error();
                      v108 = strerror(*v107);
                      *v125 = 136446210;
                      *&v125[4] = v108;
                      _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEBUG, "mmap fails: %{public}s", v125, 0xCu);
                    }
                  }

                  else
                  {
                    v89 = mDNSLogCategory_XPC_redacted;
                    if (os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_DEBUG))
                    {
                      goto LABEL_228;
                    }
                  }

LABEL_232:
                  close(v114);
                  goto LABEL_233;
                }

                v87 = mDNSLogCategory_XPC;
                if (mDNS_SensitiveLoggingEnableCount)
                {
                  v88 = mDNSLogCategory_XPC == mDNSLogCategory_State;
                }

                else
                {
                  v88 = 1;
                }

                if (v88)
                {
                  if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_DEBUG))
                  {
LABEL_233:
                    archive_entry_free();
                    archive_write_close();
                    goto LABEL_234;
                  }
                }

                else
                {
                  v87 = mDNSLogCategory_XPC_redacted;
                  if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_DEBUG))
                  {
                    goto LABEL_233;
                  }
                }

                v106 = archive_error_string();
                *v125 = 136446210;
                *&v125[4] = v106;
                _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEBUG, "archive_write_header fails: %{public}s", v125, 0xCu);
                goto LABEL_233;
              }

              v86 = mDNSLogCategory_XPC;
              if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
              {
                if (os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_DEBUG))
                {
LABEL_222:
                  v103 = __error();
                  v104 = strerror(*v103);
                  *v125 = 136446210;
                  *&v125[4] = v104;
                  _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEBUG, "archive_entry_new fails: %{public}s", v125, 0xCu);
                }
              }

              else
              {
                v86 = mDNSLogCategory_XPC_redacted;
                if (os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_222;
                }
              }

              archive_write_close();
              goto LABEL_234;
            }

            v85 = mDNSLogCategory_XPC;
            if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
            {
              if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_234;
              }
            }

            else
            {
              v85 = mDNSLogCategory_XPC_redacted;
              if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_234;
              }
            }

            v102 = archive_error_string();
            *v125 = 136446210;
            *&v125[4] = v102;
            v99 = "archive_write_open_filename fails: %{public}s";
            v100 = v85;
            v101 = 12;
          }

          _os_log_impl(&_mh_execute_header, v100, OS_LOG_TYPE_DEBUG, v99, v125, v101);
LABEL_234:
          archive_write_free();
          goto LABEL_235;
        }

        v81 = mDNSLogCategory_XPC;
        if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
        {
          if (os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_DEBUG))
          {
LABEL_204:
            v96 = archive_error_string();
            *v125 = 136446210;
            *&v125[4] = v96;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEBUG, "archive_write_new fails: %{public}s", v125, 0xCu);
          }
        }

        else
        {
          v81 = mDNSLogCategory_XPC_redacted;
          if (os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_204;
          }
        }

LABEL_235:
        remove(__str, v82);
        goto LABEL_236;
      }

      v72 = mDNSLogCategory_Default;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_Default == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_Default, OS_LOG_TYPE_ERROR))
        {
LABEL_154:
          v76 = __error();
          v77 = strerror(*v76);
          *v122 = 136446466;
          *v123 = __str;
          *&v123[8] = 2082;
          v124 = v77;
          v73 = "State Dump: file %{public}s cannot be opened, reason: %{public}s";
          v74 = v72;
          v75 = 22;
          goto LABEL_155;
        }
      }

      else
      {
        v72 = mDNSLogCategory_Default_redacted;
        if (os_log_type_enabled(mDNSLogCategory_Default_redacted, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_154;
        }
      }

LABEL_156:
      v78 = mDNSLogCategory_XPC;
      if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
      {
        if (os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf[0].st_dev) = 0;
          v79 = "create_new_state_dump_file fails";
          goto LABEL_214;
        }
      }

      else
      {
        v78 = mDNSLogCategory_XPC_redacted;
        if (os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf[0].st_dev) = 0;
          v79 = "create_new_state_dump_file fails";
          goto LABEL_214;
        }
      }

      goto LABEL_215;
    }

    v70 = v55;
    v71 = mDNSLogCategory_XPC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_156;
      }
    }

    else
    {
      v71 = mDNSLogCategory_XPC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_156;
      }
    }

    *v122 = 67109376;
    *v123 = v70;
    *&v123[4] = 1024;
    *&v123[6] = 1024;
    v73 = "State Dump: snprintf truncates the final string - minimal buffer size: %d, actual buffer size: %u";
    v74 = v71;
    v75 = 14;
LABEL_155:
    _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, v73, v122, v75);
    goto LABEL_156;
  }

  v28 = v27;
  v116 = 0;
  v29 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v30 = readdir(v28);
    if (!v30)
    {
      break;
    }

    v31 = v30;
    if (v30->d_namlen >= 0x19u)
    {
      d_name = v30->d_name;
      if (!strncmp(v30->d_name, "mDNSResponder_state_dump", 0x18uLL))
      {
        memset(buf, 0, 144);
        if ((snprintf(__str, 0x400uLL, "%s/%s", "/private/var/log/mDNSResponder", v31->d_name) - 1024) <= 0xFFFFFC00)
        {
          v46 = mDNSLogCategory_XPC;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_ERROR))
            {
              break;
            }
          }

          else
          {
            v46 = mDNSLogCategory_XPC_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_ERROR))
            {
              break;
            }
          }

          v48 = strlen(d_name);
          v127.st_dev = 67109632;
          *&v127.st_mode = 1024;
          LOWORD(v127.st_ino) = 2048;
          *(&v127.st_ino + 2) = 30;
          HIWORD(v127.st_uid) = 2048;
          *&v127.st_gid = v48;
          v49 = "snprintf truncates the final string - full name buffer length: %u, directory name length: %zu, file name length: %zu";
          v50 = v46;
          v51 = 28;
LABEL_119:
          _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, v49, &v127, v51);
          break;
        }

        if (stat(__str, buf))
        {
          v47 = mDNSLogCategory_XPC;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_ERROR))
            {
              break;
            }
          }

          else
          {
            v47 = mDNSLogCategory_XPC_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_ERROR))
            {
              break;
            }
          }

          v52 = __error();
          v53 = strerror(*v52);
          v127.st_dev = 136446210;
          *&v127.st_mode = v53;
          v49 = "State Dump: error when reading file properties - reason: %{public}s";
          v50 = v47;
          v51 = 12;
          goto LABEL_119;
        }

        tv_sec = buf[0].st_birthtimespec.tv_sec;
        if (v29 <= buf[0].st_birthtimespec.tv_sec)
        {
LABEL_87:
          ++v116;
        }

        else
        {
          d_namlen = v31->d_namlen;
          if (d_namlen <= 0x3FF)
          {
            v36 = __s;
            v37 = 1023;
            while (1)
            {
              v38 = *d_name;
              *v36 = v38;
              if (!v38)
              {
                break;
              }

              ++v36;
              ++d_name;
              if (!--v37)
              {
                *v36 = 0;
                break;
              }
            }

            v29 = tv_sec;
            goto LABEL_87;
          }

          v113 = buf[0].st_birthtimespec.tv_sec;
          v35 = mDNSLogCategory_XPC;
          if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
          {
            if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_81;
            }
          }

          else
          {
            v35 = mDNSLogCategory_XPC_redacted;
            if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_81;
            }
          }

          v127.st_dev = 141558787;
          *&v127.st_mode = 1752392040;
          WORD2(v127.st_ino) = 2085;
          *(&v127.st_ino + 6) = d_name;
          HIWORD(v127.st_gid) = 1024;
          v127.st_rdev = d_namlen;
          *(&v127.st_rdev + 2) = 1024;
          *(&v127.st_rdev + 6) = 1024;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "State Dump: filename is too long to be put into the buffer, ignoring the current file - file name to be copied: %{sensitive, mask.hash}s, length: %u, buffer length: %u", &v127, 0x22u);
LABEL_81:
          v29 = v113;
        }
      }
    }
  }

  closedir(v28);
  bzero(buf, 0x400uLL);
  if (v116 < 5u)
  {
    goto LABEL_123;
  }

  if ((snprintf(buf, 0x400uLL, "%s/%s", "/private/var/log/mDNSResponder", __s) - 1024) <= 0xFFFFFC00)
  {
    v80 = mDNSLogCategory_XPC;
    if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
    {
      if (!os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_208;
      }
    }

    else
    {
      v80 = mDNSLogCategory_XPC_redacted;
      if (!os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_208;
      }
    }

    v92 = strlen(__s);
    v127.st_dev = 134218496;
    *&v127.st_mode = 1024;
    WORD2(v127.st_ino) = 2048;
    *(&v127.st_ino + 6) = 30;
    HIWORD(v127.st_gid) = 2048;
    *&v127.st_rdev = v92;
    v93 = "State Dump: snprintf truncates the final string - buffer length: %zu, directory name length: %zu, old file name length: %zu";
    v94 = v80;
    v95 = 32;
    goto LABEL_207;
  }

  if (!remove(buf, v54))
  {
    goto LABEL_123;
  }

  v83 = mDNSLogCategory_XPC;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_206;
    }
  }

  else
  {
    v83 = mDNSLogCategory_XPC_redacted;
    if (os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_ERROR))
    {
LABEL_206:
      v97 = __error();
      v98 = strerror(*v97);
      v127.st_dev = 136446466;
      *&v127.st_mode = buf;
      WORD2(v127.st_ino) = 2082;
      *(&v127.st_ino + 6) = v98;
      v93 = "State Dump: file %{public}s cannot be deleted, reason: %{public}s";
      v94 = v83;
      v95 = 22;
LABEL_207:
      _os_log_impl(&_mh_execute_header, v94, OS_LOG_TYPE_ERROR, v93, &v127, v95);
    }
  }

LABEL_208:
  v78 = mDNSLogCategory_XPC;
  if (!mDNS_SensitiveLoggingEnableCount || mDNSLogCategory_XPC == mDNSLogCategory_State)
  {
    if (os_log_type_enabled(mDNSLogCategory_XPC, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0].st_dev) = 0;
      v79 = "remove_state_dump_if_too_many fails";
LABEL_214:
      _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEBUG, v79, buf, 2u);
    }
  }

  else
  {
    v78 = mDNSLogCategory_XPC_redacted;
    if (os_log_type_enabled(mDNSLogCategory_XPC_redacted, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0].st_dev) = 0;
      v79 = "remove_state_dump_if_too_many fails";
      goto LABEL_214;
    }
  }

LABEL_215:
  v22 = 0;
  uint64 = v117;
LABEL_243:
  v21 = v115;
LABEL_244:
  KQueueUnlock("State Dump");
  buf[0].st_ino = 0;
  *&buf[0].st_dev = 0;
  gettimeofday(buf, 0);
  v112 = timediff_ms(&buf[0].st_dev, &v118.tv_sec);
  if (v22)
  {
    xpc_dictionary_set_int64(v15, "mDNSResponderDumpTimeUsed", v112);
    if (uint64 != 3)
    {
      xpc_dictionary_set_string(v15, "mDNSResponderDumpFilePath", __str);
    }

    v25 = 0;
  }

  else
  {
    xpc_dictionary_set_string(v15, "ErrorDescription", "State dump fails");
    v25 = 3;
  }

  close(v21);
LABEL_58:
  xpc_dictionary_set_uint64(v15, "DaemonReplyStatusToClient", v25);
  xpc_connection_send_message(remote_connection, v15);
  v12 = v15;
LABEL_59:
  xpc_release(v12);
}

uint64_t timediff_ms(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 < *a2)
  {
    return -timediff_ms(a2, a1);
  }

  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if (v2 == v3 && v4 < v5)
  {
    return -timediff_ms(a2, a1);
  }

  v7 = v2 - v3;
  v8 = v4 + 1000000;
  if (v4 >= v5)
  {
    v8 = *(a1 + 2);
  }

  return (v8 - v5) / 1000 + 1000 * (v7 - (v4 < v5));
}

void __mdns_trust_checks_init_block_invoke(id a1)
{
  v1 = _mdns_trust_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Initializing Launch Services -- PENDING", v4, 2u);
  }

  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.dnssd.trust.init", v2);

  dispatch_async(v3, &__block_literal_global_4);
}

id _mdns_trust_log()
{
  if (_mdns_trust_log_s_once != -1)
  {
    dispatch_once(&_mdns_trust_log_s_once, &__block_literal_global_15_7671);
  }

  v1 = _mdns_trust_log_s_log;

  return v1;
}

void __mdns_trust_checks_init_block_invoke_2(id a1)
{
  v1 = _mdns_trust_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Initializing Launch Services -- START", buf, 2u);
  }

  atomic_store(1u, g_is_initialized);
  v2 = _mdns_trust_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Initializing Launch Services -- COMPLETE", v3, 2u);
  }
}

void ___mdns_trust_log_block_invoke(id a1)
{
  _mdns_trust_log_s_log = os_log_create("com.apple.mdns", "trust");

  _objc_release_x1();
}

uint64_t __mdns_trust_checks_local_network_access_policy_update_block_invoke(uint64_t a1, int a2)
{
  v4 = _mdns_trust_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = "denied";
    v6 = *(a1 + 32);
    if (a2)
    {
      v5 = "granted";
    }

    v8 = 136446466;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Local network alert policy status '%{public}s' for (%{public}@).", &v8, 0x16u);
  }

  return (*(*(a1 + 40) + 16))();
}

id mdns_trust_checks_check(_OWORD *a1, unsigned int a2, const char *a3, const char *a4, __int16 a5, char a6)
{
  context = objc_autoreleasePoolPush();
  v128 = 0u;
  v129 = 0u;
  v127 = 0u;
  v125 = a4;
  v126 = a1;
  v123 = a2;
  v124 = a3;
  WORD4(v129) = a5;
  BYTE11(v129) = 1;
  BYTE12(v129) = a6;
  DWORD2(v127) = 1;
  v12 = _os_object_alloc();
  v13 = v12;
  if (v12)
  {
    v14 = &_mdns_trust_state_kind;
    *(v12 + 16) = &_mdns_trust_state_kind;
    do
    {
      v15 = v14[2];
      if (v15)
      {
        v15(v13);
      }

      v14 = *v14;
    }

    while (v14);
    *&v127 = v13;
    v16 = atomic_load(g_is_initialized);
    if ((v16 & 1) == 0)
    {
      goto LABEL_158;
    }

    if (v123 != 2 || (BYTE12(v129) & 1) != 0)
    {
      goto LABEL_19;
    }

    memset(buf, 0, 256);
    if (!AppendDNSNameString(buf, v124))
    {
      goto LABEL_158;
    }

    v17 = buf[0];
    if (buf[0])
    {
      v18 = 0;
      v19 = buf;
      do
      {
        v20 = v19;
        v21 = v18;
        v22 = &v19[v17];
        v23 = v22[1];
        v19 = v22 + 1;
        v17 = v23;
        v18 = v20;
      }

      while (v23);
      if (SameDomainNameBytes(v20, "\x05local"))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v21 = 0;
    }

    if ((WORD4(v129) == 255 || WORD4(v129) == 12) && IsLocalDomain(buf))
    {
LABEL_19:
      v24 = objc_autoreleasePoolPush();
      *v135 = 0;
      v25 = v126[1];
      *buf = *v126;
      *&buf[16] = v25;
      v26 = [LSBundleRecord bundleRecordForAuditToken:buf error:v135, context];
      v27 = *v135;
      v28 = v27;
      if (!v26 && [v27 code] != -50 && objc_msgSend(v28, "code") != -10814)
      {
        v29 = _system_util_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v28;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "util_copy_trust_info bundleRecordForAuditToken %{public}@\n", buf, 0xCu);
        }
      }

      v30 = [v28 code];
      v31 = +[NSMutableDictionary dictionary];
      v32 = v26;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v32 effectiveBundleIdentifier];
      }

      else
      {
        [v32 bundleIdentifier];
      }
      v33 = ;

      if (v33)
      {
        [v31 setObject:v33 forKey:@"effective_bundle_id"];
      }

      v34 = [v32 infoDictionary];
      v35 = [v34 objectForKey:@"NSBonjourServices" ofClass:objc_opt_class()];

      if (v35)
      {
        [v31 setObject:v35 forKey:@"bonjour_services_array"];
      }

      v36 = [v32 SDKVersion];

      if (v36)
      {
        [v31 setObject:v36 forKey:@"sdk_build_version"];
      }

      v37 = [v32 executableURL];
      v38 = [v37 path];

      if (v38)
      {
        [v31 setObject:v38 forKey:@"executable_path"];
      }

      v39 = v32;
      v40 = v39;
      if (!v26 || [v39 developerType] == 1 || objc_msgSend(v40, "developerType") == -1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (objc_msgSend(v40, "bundleIdentifier"), v42 = objc_claimAutoreleasedReturnValue(), v43 = objc_msgSend(v42, "hasPrefix:", @"com.apple."), v42, (v43 & 1) != 0))
      {
        v41 = &__kCFBooleanTrue;
      }

      else
      {
        v41 = &__kCFBooleanFalse;
      }

      [v31 setObject:v41 forKey:@"is_apple_internal"];
      v44 = [v31 allKeys];
      v45 = [v44 count];

      if (v45)
      {
        Copy = CFDictionaryCreateCopy(kCFAllocatorDefault, v31);
      }

      else
      {
        Copy = 0;
      }

      objc_autoreleasePoolPop(v24);
      if (v30 != -10814 && v30 != -50 && v30)
      {
        v47 = _mdns_trust_log();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109378;
          *&buf[4] = v30;
          *&buf[8] = 2112;
          *&buf[10] = Copy;
          _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "_mdns_trust_load_trust_info util_copy_trust_info err %d info %@\n", buf, 0x12u);
        }
      }

      v48 = [(__CFDictionary *)Copy objectForKeyedSubscript:@"effective_bundle_id"];
      v49 = v48;
      v50 = *(v127 + 24);
      if (v48)
      {
        CFRetain(v48);
      }

      *(v127 + 24) = v49;
      if (v50)
      {
        CFRelease(v50);
      }

      v51 = [(__CFDictionary *)Copy objectForKeyedSubscript:@"bonjour_services_array"];
      v52 = v128;
      *&v128 = v51;

      v53 = [(__CFDictionary *)Copy objectForKeyedSubscript:@"sdk_build_version"];
      v54 = *(&v128 + 1);
      *(&v128 + 1) = v53;

      v55 = [(__CFDictionary *)Copy objectForKeyedSubscript:@"executable_path"];
      v56 = v129;
      *&v129 = v55;

      v57 = [(__CFDictionary *)Copy objectForKeyedSubscript:@"is_apple_internal"];
      v58 = [v57 BOOLValue];
      BYTE10(v129) = v58;

      if (v58)
      {
        *(v127 + 32) |= 2u;
        goto LABEL_158;
      }

      v59 = xpc_copy_entitlement_for_token();
      if (v59)
      {
        v60 = _mdns_trust_log();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          *buf = 136446210;
          *&buf[4] = "com.apple.developer.on-demand-install-capable";
          _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_INFO, "Entitlement '%{public}s' disallows request", buf, 0xCu);
        }

        BYTE11(v129) = 0;
        goto LABEL_132;
      }

      BYTE11(v129) = 1;
      v61 = xpc_copy_entitlement_for_token();
      if (v61 == &_xpc_BOOL_true)
      {
        v62 = objc_autoreleasePoolPush();
        if (objc_opt_class())
        {
          *v135 = 0;
          v63 = v126[1];
          *buf = *v126;
          *&buf[16] = v63;
          v64 = [DASession processAllowedWithAuditToken:buf error:v135];
          v65 = *v135;
          if (v65)
          {
            v66 = v65;
            v67 = _system_util_log();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              v85 = [v66 description];
              *buf = 138412290;
              *&buf[4] = v85;
              _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "DASession processAllowedWithAuditToken err %@", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v62);
          }

          else
          {
            objc_autoreleasePoolPop(v62);
          }

          if (v64)
          {

            v68 = v127;
            v69 = *(v127 + 32) | 4;
            goto LABEL_70;
          }
        }

        else
        {
          v86 = _system_util_log();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v86, OS_LOG_TYPE_ERROR, "DASession.class not available", buf, 2u);
          }

          objc_autoreleasePoolPop(v62);
        }

        v87 = _mdns_trust_log();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Media access not allowed with valid entitlment", buf, 2u);
        }
      }

      if ((*(v127 + 32) & 4) != 0 || !_os_feature_enabled_impl())
      {
        goto LABEL_132;
      }

      v88 = [NSString stringWithUTF8String:"14.0"];
      v89 = [*(&v128 + 1) compare:v88 options:64] > 1;

      if (!v125 || v89)
      {
        goto LABEL_132;
      }

      v91 = xpc_copy_entitlement_for_token();
      v92 = v91 == &_xpc_BOOL_true;

      BYTE11(v129) = v92;
      if (!v92)
      {
        v130 = 0u;
        v131 = 0u;
        v132 = 0u;
        v133 = 0u;
        v93 = v128;
        v94 = [v93 countByEnumeratingWithState:&v130 objects:v134 count:16];
        if (!v94)
        {
          goto LABEL_128;
        }

        v95 = *v131;
        do
        {
          for (i = 0; i != v94; i = i + 1)
          {
            if (*v131 != v95)
            {
              objc_enumerationMutation(v93);
            }

            v97 = [*(*(&v130 + 1) + 8 * i) UTF8String];
            v148 = 0u;
            v149 = 0u;
            v146 = 0u;
            v147 = 0u;
            v144 = 0u;
            v145 = 0u;
            v142 = 0u;
            v143 = 0u;
            v140 = 0u;
            v141 = 0u;
            v138 = 0u;
            v139 = 0u;
            v137 = 0u;
            *v135 = 0u;
            memset(v136, 0, sizeof(v136));
            memset(buf, 0, 256);
            if (AppendDNSNameString(buf, v125))
            {
              v135[0] = 0;
              if (AppendDNSNameString(v135, v97))
              {
                if (SameDomainNameBytes(buf, v135))
                {

                  BYTE11(v129) = 1;
                  goto LABEL_132;
                }
              }
            }
          }

          v94 = [v93 countByEnumeratingWithState:&v130 objects:v134 count:16];
        }

        while (v94);
LABEL_128:

        BYTE11(v129) = 0;
        v98 = _mdns_trust_log();
        if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
        {
          v120 = *(v127 + 24);
          *buf = 136446466;
          *&buf[4] = v125;
          *&buf[12] = 2114;
          *&buf[14] = v120;
          _os_log_error_impl(&_mh_execute_header, v98, OS_LOG_TYPE_ERROR, "App Info.plist(NSBonjourServices) does not allow '%{public}s' for (%{public}@)", buf, 0x16u);
        }

LABEL_132:
        if (BYTE11(v129) != 1)
        {
          goto LABEL_158;
        }

        v99 = *(v127 + 24);
        v122 = v129;
        if (objc_opt_class())
        {
          v100 = +[NEPathController copyAggregatePathRules];
          v137 = 0u;
          *v135 = 0u;
          memset(v136, 0, sizeof(v136));
          v101 = v100;
          v102 = [v101 countByEnumeratingWithState:v135 objects:buf count:16];
          if (v102)
          {
            v103 = **&v136[0];
LABEL_136:
            v104 = 0;
            while (1)
            {
              if (**&v136[0] != v103)
              {
                objc_enumerationMutation(v101);
              }

              if (v99)
              {
                v105 = *(*&v135[8] + 8 * v104);
                v106 = [v105 matchSigningIdentifier];
                if ([v106 isEqualToString:v99])
                {
                  v107 = [v105 matchPath];
                  if (!v107)
                  {

LABEL_149:
                    v110 = [v105 denyMulticast];
                    v111 = [v105 multicastPreferenceSet];

                    if ((v110 & 1) == 0)
                    {
                      goto LABEL_156;
                    }

                    if (v111)
                    {
                      v112 = 0;
                    }

                    else
                    {
                      v112 = 2;
                    }

                    DWORD2(v127) = v112;
                    v113 = _mdns_trust_log();
                    if (os_log_type_enabled(v113, OS_LOG_TYPE_INFO))
                    {
                      if (v123 > 2)
                      {
                        v114 = "<INVALID REQUEST>";
                      }

                      else
                      {
                        v114 = off_100153E28[v123];
                      }

                      v118 = v125;
                      if (!v125)
                      {
                        v118 = v124;
                      }

                      v119 = off_100153E40[DWORD2(v127)];
                      *buf = 136446979;
                      *&buf[4] = v114;
                      *&buf[12] = 2081;
                      *&buf[14] = v118;
                      *&buf[22] = 2082;
                      *&buf[24] = v119;
                      *&buf[32] = 2114;
                      *&buf[34] = v99;
                      _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_INFO, "Local network access to %{public}s(%{private}s) policy '%{public}s' for (%{public}@).", buf, 0x2Au);
                    }

LABEL_157:
                    goto LABEL_158;
                  }

                  v108 = [v105 matchPath];
                  v109 = [v108 isEqualToString:v122];

                  if (v109)
                  {
                    goto LABEL_149;
                  }
                }

                else
                {
                }
              }

              if (v102 == ++v104)
              {
                v102 = [v101 countByEnumeratingWithState:v135 objects:buf count:16];
                if (v102)
                {
                  goto LABEL_136;
                }

                break;
              }
            }
          }
        }

LABEL_156:

        DWORD2(v127) = 1;
        goto LABEL_157;
      }

      v68 = v127;
      v69 = *(v127 + 32) | 1;
LABEL_70:
      *(v68 + 32) = v69;
      goto LABEL_132;
    }

    if (!v21 || WORD4(v129) != 255 && WORD4(v129) != 12)
    {
      goto LABEL_158;
    }

    if (SameDomainNameBytes(v21, "\ain-addr\x04arpa"))
    {
      v70 = 0;
      memset(v135, 0, sizeof(v135));
      v71 = buf;
      v72 = 1;
      LODWORD(v134[0]) = 0;
      LODWORD(v130) = 0;
      do
      {
        *(v134 + 4 - v72) = 0;
        v73 = *v71;
        if ((v73 - 4) < 0xFFFFFFFD)
        {
          goto LABEL_158;
        }

        LOBYTE(v74) = 0;
        v75 = 0;
        ++v71;
        do
        {
          v76 = *v71;
          if ((v76 - 58) < 0xFFFFFFF6)
          {
            goto LABEL_158;
          }

          v74 = v76 + 10 * v74 - 48;
          if (v74 > 0xFF)
          {
            goto LABEL_158;
          }

          *(v134 + 4 - v72) = v74;
          if ((v75 & 1) == 0 && ++v70 > 4)
          {
            goto LABEL_158;
          }

          ++v71;
          v75 = 1;
          --v73;
        }

        while (v73);
        if (v72 != v70)
        {
          goto LABEL_158;
        }

        ++v72;
      }

      while (v72 != 5);
      LODWORD(v130) = v134[0];
      if (!SameDomainNameBytes(v71, "\ain-addr\x04arpa"))
      {
        goto LABEL_158;
      }

      inet_ntop(2, &v130, v135, 0x10u);
      is_local_address = _mdns_trust_checks_is_local_address(v135);
      goto LABEL_101;
    }

    if (!SameDomainNameBytes(v21, "\x03ip6\x04arpa"))
    {
      goto LABEL_158;
    }

    v78 = 0;
    *v135 = 0u;
    memset(v136, 0, 30);
    v134[0] = 0;
    v134[1] = 0;
    v79 = buf;
    do
    {
      v80 = v79;
      if (*v79 != 1)
      {
        goto LABEL_158;
      }

      v81 = v79[1];
      if ((v81 - 48) >= 0xA)
      {
        if ((v81 - 97) >= 6)
        {
          if ((v81 - 65) > 5)
          {
            goto LABEL_158;
          }

          v82 = -55;
        }

        else
        {
          v82 = -87;
        }
      }

      else
      {
        v82 = -48;
      }

      v83 = 15 - (v78 >> 1);
      v84 = v82 + v81;
      if (v78)
      {
        v84 = *(v134 + v83) | (16 * v84);
      }

      *(v134 + v83) = v84;
      ++v78;
      v79 = v80 + 2;
    }

    while (v78 != 32);
    if (SameDomainNameBytes(v80 + 2, "\x03ip6\x04arpa"))
    {
      inet_ntop(30, v134, v135, 0x2Eu);
      is_local_address = _mdns_trust_checks_is_local_address(v135);
LABEL_101:
      if ((is_local_address & 1) == 0)
      {
        goto LABEL_158;
      }

      goto LABEL_19;
    }

LABEL_158:
    v115 = v127;
    if (BYTE11(v129) == 1)
    {
      if (DWORD2(v127) == 1)
      {
        v116 = 1;
      }

      else
      {
        v116 = 2 * (DWORD2(v127) == 2);
      }
    }

    else
    {
      v116 = 3;
    }

    *(v127 + 36) = v116;
    v13 = v115;
    *&v127 = 0;
  }

  else
  {
    *&v127 = 0;
  }

  __destructor_8_s32_s48_s56_s64(&v123);
  objc_autoreleasePoolPop(context);
  return v13;
}

void sub_100107414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  __destructor_8_s32_s48_s56_s64(va);
  _Unwind_Resume(a1);
}

void __destructor_8_s32_s48_s56_s64(uint64_t a1)
{
  v2 = *(a1 + 64);
}

uint64_t _mdns_trust_checks_is_local_address(const char *a1)
{
  host = nw_endpoint_create_host(a1, "0");
  evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
  v3 = nw_path_evaluator_copy_path();
  is_direct = nw_path_is_direct();

  return is_direct;
}

void _mdns_dso_server_endpoint_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    nw_release(v2);
    *(a1 + 24) = 0;
  }
}

void *_mdns_dso_server_endpoint_copy_description(void *a1, int a2)
{
  v4 = mdns_string_builder_create();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (a2 && mdns_string_builder_append_formatted(v4, "<%s: %p>: ", *(a1[2] + 8), a1))
  {
    v6 = 0;
  }

  else
  {
    description = nw_endpoint_get_description();
    mdns_string_builder_append_formatted(v5, "[endpoint: %s", description);
    mdns_string_builder_append_formatted(v5, ", abort count: %zu", a1[4]);
    v8 = a1[5];
    if (v8)
    {
      v9 = v8 - mach_continuous_time();
      if (v9 >= 1)
      {
        v10 = mdns_ticks_to_milliseconds(v9);
        mdns_string_builder_append_formatted(v5, ", delayed retry in %llums", v10);
      }
    }

    mdns_string_builder_append_formatted(v5, "]");
    v6 = mdns_string_builder_copy_string(v5);
  }

  os_release(v5);
  return v6;
}

void _mdns_dso_server_endpoint_manager_finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 24) = 0;
  }
}

uint64_t _mdns_dso_server_endpoint_is_usable_now(uint64_t a1, _DWORD *a2, int *a3)
{
  v6 = *(a1 + 40);
  if (*(a1 + 32) >= 2uLL)
  {
    if (v6)
    {
      goto LABEL_7;
    }

    v7 = mach_continuous_time();
    if (mdns_mach_ticks_per_second_s_once != -1)
    {
      v12 = v7;
      dispatch_once(&mdns_mach_ticks_per_second_s_once, &__block_literal_global_3502);
      v7 = v12;
    }

    v6 = v7 + 3600 * mdns_mach_ticks_per_second_s_ticks_per_second;
    *(a1 + 40) = v6;
  }

  if (!v6)
  {
    result = 1;
    v9 = -1;
    if (a2)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

LABEL_7:
  v8 = mach_continuous_time() - *(a1 + 40);
  if (v8 >= 0)
  {
    v9 = 0;
    LODWORD(v6) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    result = 1;
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_16:
    *a2 = v6;
    goto LABEL_17;
  }

  v11 = mdns_ticks_to_milliseconds(-v8);
  result = 0;
  v9 = -1;
  if (v11 < 0xFFFFFFFF)
  {
    v9 = v11;
  }

  if (HIDWORD(v11))
  {
    LODWORD(v6) = -6737;
  }

  else
  {
    LODWORD(v6) = -6760;
  }

  if (a2)
  {
    goto LABEL_16;
  }

LABEL_17:
  if (a3)
  {
    *a3 = v9;
  }

  return result;
}

void ref_count_obj_release(void *a1)
{
  if ((*a1)-- == 1)
  {
    for (i = a1[1]; i; i = *i)
    {
      v5 = i[4];
      if (v5)
      {
        v5(a1);
      }
    }

    free(a1);
  }
}

uint64_t ref_count_obj_compare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if (v6 == *(a2 + 8))
  {
    while (v6)
    {
      v8 = v6[3];
      if (v8)
      {
        result = v8(a1, a2, a3);
        if (result != 3)
        {
          return result;
        }
      }

      v6 = *v6;
    }

    return 3;
  }

  else if (a3)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t _cache_item_get_tracker_state(uint64_t a1)
{
  if (*(a1 + 16))
  {
    DispositionRedactLogs = *(a1 + 32);
  }

  else
  {
    v2 = *(a1 + 8);
    AppInfo = NEHelperTrackerGetAppInfo();
    if (!AppInfo)
    {
      v9 = 0;
      *(a1 + 16) = 0;
      return v9;
    }

    v4 = AppInfo;
    memset(v15, 0, sizeof(v15));
    v5 = *(v2 + 128);
    v6 = v15;
    if (v5)
    {
      v6 = (v5 + 24);
    }

    v7 = v6[1];
    *atoken.val = *v6;
    *&atoken.val[4] = v7;
    NEHelperTrackerAppInfoSetAuditToken();
    if (!*(v2 + 128))
    {
      v11 = *(v2 + 244);
      if (v11)
      {
        v12 = *(v2 + 120);
        if (v12)
        {
          v13 = *(v12 + 40);
          *atoken.val = *(v12 + 24);
          *&atoken.val[4] = v13;
          v14 = audit_token_to_pid(&atoken);
          v11 = *(v2 + 244);
        }

        else
        {
          v14 = 0;
        }

        if (v14 != v11)
        {
          NEHelperTrackerAppInfoSetPID();
        }
      }

      else
      {
        if (_create_tracker_app_info_s_once != -1)
        {
          dispatch_once(&_create_tracker_app_info_s_once, &__block_literal_global_7755);
        }

        *atoken.val = *(v2 + 657);
        NEHelperTrackerAppInfoSetUUID();
      }
    }

    if (*(v2 + 654))
    {
      NEHelperTrackerAppInfoSetIsBrowser();
    }

    *(a1 + 16) = v4;
    DispositionRedactLogs = NEHelperTrackerGetDispositionRedactLogs();
    *(a1 + 32) = DispositionRedactLogs;
  }

  if (DispositionRedactLogs)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t resolved_cache_get_tracker_state(uint64_t a1, uint64_t *a2, uint64_t *a3, BOOL *a4, _BYTE *a5)
{
  if (!&_NEHelperTrackerGetAppInfo)
  {
    return 0;
  }

  v9 = &s_head_0;
  do
  {
    v9 = *v9;
    if (!v9)
    {
      return 0;
    }
  }

  while (v9[1] != a1);
  result = _cache_item_get_tracker_state(v9);
  if (result == 2)
  {
    if (a4)
    {
      *a4 = *(v9 + 8) == 3;
    }

    if (a2)
    {
      *a2 = NEHelperTrackerContextGetDomain();
    }

    if (a3)
    {
      *a3 = NEHelperTrackerContextGetDomainOwner();
    }

    if (a5)
    {
      *a5 = NEHelperTrackerContextCanBlockRequest();
    }

    return 2;
  }

  return result;
}

void resolved_cache_delete(uint64_t a1)
{
  if (&_NEHelperTrackerGetAppInfo)
  {
    v1 = &s_head_0;
    v2 = &s_head_0;
    while (1)
    {
      v2 = *v2;
      if (!v2)
      {
        break;
      }

      if (v2[1] == a1)
      {
        for (i = s_head_0; i != v2; i = *i)
        {
          v1 = i;
        }

        *v1 = *i;
        v4 = v2[5];
        if (v4)
        {
          CFRelease(v4);
          v2[5] = 0;
        }

        v5 = v2[6];
        if (v5)
        {
          CFRelease(v5);
          v2[6] = 0;
        }

        if (v2[2])
        {
          NEHelperTrackerFreeAppInfo();
        }

        free(v2);
        return;
      }
    }
  }
}