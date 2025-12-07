uint64_t sub_100155E54(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) identifier];
    v165 = [*(a1 + 40) serviceIdentifier];
    v164 = [*(a1 + 40) paymentHash];
    v161 = [*(a1 + 40) transactionDate];
    v3 = [*(a1 + 40) hasNotificationServiceData];
    v4 = [*(a1 + 40) hasTransactionSource];
    v158 = [*(a1 + 40) updateReasons];
    v160 = [*(a1 + 48) _updateCameExclusivelyFromCloudStore:?];
    v5 = [*(a1 + 48) passUniqueIdentifierForTransactionSourceIdentifier:*(a1 + 32)];
    v6 = [*(a1 + 48) paymentApplicationForTransactionSourceIdentifier:*(a1 + 32)];

    v162 = v5;
    if (v6)
    {
      v163 = [NSSet setWithObject:*(a1 + 32)];
    }

    else
    {
      v10 = [*(a1 + 48) transactionSourceIdentifiersAssociatedWithPassUniqueIdentifier:v5];
      v11 = [NSSet setWithObject:*(a1 + 32)];
      v163 = [v11 setByAddingObjectsFromSet:v10];
    }

    v12 = [*(a1 + 40) accountIdentifier];
    v13 = [*(a1 + 40) accountType];
    v14 = [*(a1 + 48) transactionSourceTypeForTransactionSourceIdentifier:*(a1 + 32)];
    v15 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 72);
      *buf = 134218754;
      *v205 = v16;
      *&v205[8] = 2114;
      *&v205[10] = v2;
      v206 = 2048;
      *v207 = v14;
      *&v207[8] = 2048;
      v208 = v13;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "will insert or update (%lu) transaction: %{public}@ source: %lu, %ld", buf, 0x2Au);
    }

    if ([v2 length])
    {
      v17 = [PaymentTransaction anyInDatabase:*(*(a1 + 48) + 8) withIdentifier:v2];
      v18 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v18)
        {
          *buf = 138543362;
          *v205 = v2;
          v19 = "Matched Transaction to Transaction with Identifier: %{public}@";
          v20 = v15;
          v21 = 12;
LABEL_20:
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
          goto LABEL_21;
        }

        goto LABEL_21;
      }

      if (v18)
      {
        *buf = 138543362;
        *v205 = v2;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could Not Match Transaction on Identifier: %{public}@", buf, 0xCu);
      }
    }

    if ([v165 length])
    {
      v17 = [PaymentTransaction anyInDatabase:*(*(a1 + 48) + 8) withServiceIdentifier:v165 forTransactionSourceIdentifier:*(a1 + 32)];
      v22 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v22)
        {
          v23 = *(a1 + 32);
          *buf = 138543618;
          *v205 = v165;
          *&v205[8] = 2112;
          *&v205[10] = v23;
          v19 = "Matched Transaction to Transaction with Service Identifier: %{public}@, transactionSourceIdentifier: %@";
          v20 = v15;
          v21 = 22;
          goto LABEL_20;
        }

LABEL_21:

        v24 = v164;
        goto LABEL_22;
      }

      if (v22)
      {
        v63 = *(a1 + 32);
        *buf = 138543618;
        *v205 = v165;
        *&v205[8] = 2112;
        *&v205[10] = v63;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could Not Match Transaction on Service Identifier: %{public}@, transactionSourceIdentifier: %@", buf, 0x16u);
      }
    }

    if ([v12 length] && v13)
    {
      v17 = [PaymentTransaction anyInDatabase:*(*(a1 + 48) + 8) withServiceIdentifier:v165 accountIdentifier:v12 accountType:v13];
      v64 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v64)
        {
          v65 = PKPaymentTransactionAccountTypeToString();
          *buf = 138543874;
          *v205 = v165;
          *&v205[8] = 2112;
          *&v205[10] = v12;
          v206 = 2114;
          *v207 = v65;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Matched Transaction to Transaction with Service Identifier: %{public}@, accountIdentifier: %@, accountType %{public}@", buf, 0x20u);
        }

        goto LABEL_21;
      }

      if (v64)
      {
        v71 = PKPaymentTransactionAccountTypeToString();
        *buf = 138543874;
        *v205 = v165;
        *&v205[8] = 2112;
        *&v205[10] = v12;
        v206 = 2114;
        *v207 = v71;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could Not Match Transaction on Service Identifier: %{public}@, accountIdentifier: %@, accountType %{public}@", buf, 0x20u);
      }
    }

    v24 = v164;
    if ([v164 length])
    {
      if (v4)
      {
        v72 = 2;
      }

      else
      {
        v72 = 1;
      }

      if (v3)
      {
        v73 = 2;
      }

      else
      {
        v73 = 1;
      }

      v17 = [PaymentTransaction anyInDatabase:*(*(a1 + 48) + 8) withPaymentHash:v164 withTransactionSource:v72 withNotificationServiceData:v73 transactionSourceIdentifiers:v163];
      v74 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      if (v17)
      {
        if (v74)
        {
          *buf = 138412290;
          *v205 = v164;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Matched Transaction to Transaction with Payment Hash: %@", buf, 0xCu);
        }

LABEL_22:
        v25 = *(a1 + 72);
        if (v25 >= 2)
        {
          if (v25 == 2)
          {
            if (v17)
            {
              v157 = v12;
              v50 = [v17 identifier];
              v27 = [v17 serviceIdentifier];
              v51 = [v17 paymentTransaction];
              v52 = *(a1 + 48);
              v173[0] = _NSConcreteStackBlock;
              v173[1] = 3221225472;
              v173[2] = sub_100158018;
              v173[3] = &unk_100848738;
              v174 = *(a1 + 32);
              v30 = v51;
              v175 = v30;
              [v52 dispatchDelegateCallback:v173];
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                *v205 = v50;
                *&v205[8] = 2114;
                *&v205[10] = v27;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Removing Existing Transaction with Identifier: %{public}@, serviceIdentifier: %{public}@", buf, 0x16u);
              }

              [v17 deleteFromDatabase];
              if ((v160 & 1) == 0)
              {
                WeakRetained = objc_loadWeakRetained((*(a1 + 48) + 72));
                v54 = [WeakRetained applePayContainer];
                v55 = v27;
                v56 = *(a1 + 32);
                v169[0] = _NSConcreteStackBlock;
                v169[1] = 3221225472;
                v169[2] = sub_100158024;
                v169[3] = &unk_10083DE10;
                v169[4] = *(a1 + 48);
                v170 = v30;
                v171 = v55;
                v172 = *(a1 + 32);
                v57 = v56;
                v27 = v55;
                [v54 canSyncTransactionFromCloudKitForTransactionSourceIdentifier:v57 completion:v169];
              }

              v58 = *(a1 + 48);
              v166[0] = _NSConcreteStackBlock;
              v166[1] = 3221225472;
              v166[2] = sub_10015812C;
              v166[3] = &unk_100848738;
              v167 = *(a1 + 32);
              v168 = v50;
              v42 = v50;
              [v58 dispatchDelegateCallback:v166];

              v7 = 0;
              v24 = v164;
              v43 = v162;
              v12 = v157;
              goto LABEL_173;
            }
          }

          else if (v25 == 3)
          {
            if (!v17)
            {
              v26 = [*(a1 + 40) merchant];
              v27 = [v26 name];

              v28 = [PaymentTransaction closestPendingTransactionInDatabase:*(*(a1 + 48) + 8) fromTransactionDate:v161 withNotificationServiceData:1 forMerchantName:v27 forTransactionSourceIdentifiers:v163];
              v17 = v28;
              if (!v28)
              {
                v7 = 0;
                v43 = v162;
                goto LABEL_175;
              }

              v29 = [v28 identifier];
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *v205 = v29;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Soft-Matched Transaction to Transaction with Identifier: %{public}@", buf, 0xCu);
              }
            }

            v27 = [v17 identifier];
            v30 = [v17 paymentTransaction];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v31 = *(a1 + 40);
              *buf = 138543618;
              *v205 = v27;
              *&v205[8] = 2112;
              *&v205[10] = v31;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Replacing Existing Transaction with Identifier: %{public}@ with Transaction: %@", buf, 0x16u);
            }

            [v17 replaceWithPaymentTransaction:*(a1 + 40)];
            v32 = [v17 paymentTransaction];
            v33 = *(*(a1 + 64) + 8);
            v34 = *(v33 + 40);
            *(v33 + 40) = v32;

            [*(*(*(a1 + 64) + 8) + 40) addUpdateReasons:v158];
            v35 = *(*(*(a1 + 64) + 8) + 40);
            if (!v35)
            {
              v7 = 0;
              v43 = v162;
LABEL_174:

LABEL_175:
              goto LABEL_176;
            }

            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *v205 = v27;
              *&v205[8] = 2112;
              *&v205[10] = v35;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Resulting Transaction with identifier %{public}@: %@", buf, 0x16u);
            }

            if ((v160 & 1) == 0 && ([*(*(*(a1 + 64) + 8) + 40) updateReasonIsInitialDownload] & 1) == 0)
            {
              v36 = *(a1 + 48);
              v202 = *(*(*(a1 + 64) + 8) + 40);
              [NSArray arrayWithObjects:&v202 count:1];
              v38 = v37 = v12;
              [v36 _updateCloudStoreWithTransactions:v38 transactionSourceIdentifier:*(a1 + 32)];

              v12 = v37;
            }

            v39 = *(a1 + 48);
            v176[0] = _NSConcreteStackBlock;
            v176[1] = 3221225472;
            v176[2] = sub_100158000;
            v176[3] = &unk_100848A20;
            v40 = *(a1 + 32);
            v41 = *(a1 + 64);
            v177 = v40;
            v179 = v41;
            v30 = v30;
            v178 = v30;
            [v39 dispatchDelegateCallback:v176];

            v7 = 0;
            v42 = v177;
            v43 = v162;
LABEL_173:

            goto LABEL_174;
          }

          v7 = 0;
          v43 = v162;
LABEL_176:

          goto LABEL_177;
        }

        v155 = v2;
        v156 = v12;
        if (v17)
        {
          LODWORD(v44) = 0;
          goto LABEL_41;
        }

        if (![*(a1 + 40) supportsFuzzyMatching])
        {
LABEL_197:
          if (*(a1 + 72) == 1)
          {
            v146 = 0;
            v153 = 0;
            v30 = 0;
            v27 = 0;
            v17 = 0;
            goto LABEL_150;
          }

          if (v3)
          {
            v124 = 1;
          }

          else
          {
            v124 = 2;
          }

          v99 = [Pass anyInDatabase:*(*(a1 + 48) + 8) withUniqueID:v162];
          v100 = [*(a1 + 48) paymentApplicationIdentifierForTransactionSourceIdentifier:*(a1 + 32)];
          v125 = *(a1 + 48);
          v126 = *(v125 + 8);
          v127 = [*(v125 + 64) secureElementIdentifiers];
          v128 = [PaymentApplication anyInDatabase:v126 withApplicationIdentifier:v100 secureElementIdentifiers:v127];

          v151 = v128;
          [v128 paymentNetworkIdentifier];
          v129 = PKMaxPaymentTransactionsForCredentialType();
          if (([v99 hasAssociatedPeerPaymentAccount] & 1) == 0)
          {
            v12 = v156;
            if ((PKDisableTransactionTableTruncation() & 1) == 0)
            {
              v130 = [v99 associatedAccountIdentifier];
              if (!v130)
              {
                v131 = 0;
                if ((PKTransactionsUnlimitedForCredentialType() & 1) == 0 && (v14 - 1) >= 3)
                {
                  if ([PaymentTransaction numberOfPaymentTransactionsInDatabase:*(*(a1 + 48) + 8) forTransactionSourceIdentifiers:v163 withNotificationServiceData:v124 newerThanDate:v161]>= v129)
                  {
                    v153 = 0;
                    v27 = 0;
                    v17 = 0;
                    v24 = v164;
LABEL_221:

                    v146 = 0;
                    v30 = 0;
LABEL_149:

                    v2 = v155;
LABEL_150:
                    v101 = *(*(*(a1 + 64) + 8) + 40);
                    if (!v101)
                    {
                      v102 = [v17 paymentTransaction];
                      v103 = *(*(a1 + 64) + 8);
                      v104 = *(v103 + 40);
                      *(v103 + 40) = v102;

                      v101 = *(*(*(a1 + 64) + 8) + 40);
                    }

                    [v101 addUpdateReasons:v158];
                    v7 = [v27 transactionArchive];
                    if (!v7)
                    {
                      v105 = PKLogFacilityTypeGetObject();
                      if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
                      {
                        v106 = *(*(*(a1 + 64) + 8) + 40);
                        *buf = 138543618;
                        *v205 = v2;
                        *&v205[8] = 2112;
                        *&v205[10] = v106;
                        _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "Error: There is no transaction archive for transaction with identifier %{public}@ %@", buf, 0x16u);
                      }
                    }

                    v107 = *(*(*(a1 + 64) + 8) + 40);
                    if (v107)
                    {
                      v159 = v27;
                      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543874;
                        *v205 = v2;
                        *&v205[8] = 2112;
                        *&v205[10] = v107;
                        v206 = 2112;
                        *v207 = v7;
                        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "resulting transaction for identifier %{public}@: %@ and archive: %@", buf, 0x20u);
                      }

                      if ((v146 | [*(*(*(a1 + 64) + 8) + 40) updateReasonIsInitialDownload] ^ 1) == 1)
                      {
                        v108 = [*(*(*(a1 + 64) + 8) + 40) hasCloudArchivableDeviceData];
                        v150 = [v30 isCloudArchivableDeviceDataEqual:*(*(*(a1 + 64) + 8) + 40)] ^ 1;
                        v109 = [v153 allArchiveLocationsWithType:0 areArchived:1];
                        v110 = [v7 allArchiveLocationsWithType:0 areArchived:1];
                        v111 = v110;
                        v147 = v109 & v110;
                        v112 = [*(*(*(a1 + 64) + 8) + 40) updateReasonIsInitialDownload];
                        if (v112)
                        {
                          v113 = v108;
                          v114 = 0;
                        }

                        else
                        {
                          v113 = v108;
                          if (((v160 ^ 1) & v108) == 1 && (v30 == 0) | v150 & 1)
                          {
                            v114 = 1;
                          }

                          else
                          {
                            v114 = v160 & (v147 ^ 1);
                          }
                        }

                        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138545922;
                          *v205 = v155;
                          *&v205[8] = 2114;
                          *&v205[10] = v165;
                          v206 = 1024;
                          *v207 = v114;
                          *&v207[4] = 1024;
                          *&v207[6] = v30 != 0;
                          LOWORD(v208) = 1024;
                          *(&v208 + 2) = v113;
                          HIWORD(v208) = 1024;
                          v209 = v150;
                          v210 = 1024;
                          v211 = v109;
                          v212 = 1024;
                          v213 = v111 & 1;
                          v214 = 1024;
                          v215 = v147;
                          v216 = 1024;
                          v217 = v160;
                          v218 = 1024;
                          v219 = v112;
                          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "should update cloud store for id %{public}@ service id %{public}@: %d (%d, %d, %d, %d, %d, %d, %d, %d)", buf, 0x4Cu);
                        }

                        v2 = v155;
                        v12 = v156;
                        v24 = v164;
                        if (v114)
                        {
                          v115 = *(a1 + 48);
                          v203 = *(*(*(a1 + 64) + 8) + 40);
                          v116 = [NSArray arrayWithObjects:&v203 count:1];
                          [v115 _updateCloudStoreWithTransactions:v116 transactionSourceIdentifier:*(a1 + 32)];

                          v12 = v156;
                        }
                      }

                      v117 = *(a1 + 48);
                      v180[0] = _NSConcreteStackBlock;
                      v180[1] = 3221225472;
                      v180[2] = sub_100157FE8;
                      v180[3] = &unk_100848A20;
                      v118 = *(a1 + 32);
                      v119 = *(a1 + 64);
                      v181 = v118;
                      v183 = v119;
                      v30 = v30;
                      v182 = v30;
                      [v117 dispatchDelegateCallback:v180];

                      v43 = v162;
                      v27 = v159;
                    }

                    else
                    {
                      v43 = v162;
                    }

                    v42 = v153;
                    goto LABEL_173;
                  }

                  v131 = 1;
                }

LABEL_207:
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  v132 = *(a1 + 40);
                  *buf = 138543618;
                  *v205 = v155;
                  *&v205[8] = 2112;
                  *&v205[10] = v132;
                  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Inserting New Transaction with identifier %{public}@: %@", buf, 0x16u);
                }

                v133 = v129;

                v134 = *(a1 + 80);
                if (v134)
                {
                  *v134 = 1;
                }

                v148 = [TransactionSource anyInDatabase:*(*(a1 + 48) + 8) withIdentifier:*(a1 + 32)];
                v17 = [PaymentTransaction insertPaymentTransaction:"insertPaymentTransaction:withTransactionSource:inDatabase:" withTransactionSource:*(a1 + 40) inDatabase:?];
                v27 = [v17 dbPaymentTransactionArchive];
                v153 = [v27 transactionArchive];
                [v27 updateWithTransactionArchive:*(a1 + 56)];
                if ([v99 associatedAccountFeatureIdentifier] != 4 || +[PKPaymentMessage canArchiveWithTransaction:](PKPaymentMessage, "canArchiveWithTransaction:", *(a1 + 40)) && (+[PaymentMessage paymentMessagesInDatabase:forPaymentPassUniqueIdentifier:](PaymentMessage, "paymentMessagesInDatabase:forPaymentPassUniqueIdentifier:", *(*(a1 + 48) + 8), v162), v135 = objc_claimAutoreleasedReturnValue(), v192[0] = _NSConcreteStackBlock, v192[1] = 3221225472, v192[2] = sub_100157E4C, v192[3] = &unk_1008489D0, v193 = *(a1 + 40), v136 = objc_msgSend(v135, "pk_hasObjectPassingTest:", v192), v193, v135, v136))
                {
                  [PaymentMessage archiveMessagesOfType:1 forPass:v99 inDatabase:*(*(a1 + 48) + 8)];
                }

                if ((v131 & *(a1 + 88)) == 1)
                {
                  v137 = objc_alloc_init(NSMutableSet);
                  v187[0] = _NSConcreteStackBlock;
                  v187[1] = 3221225472;
                  v187[2] = sub_100157E58;
                  v187[3] = &unk_1008489F8;
                  v138 = v163;
                  v139 = *(a1 + 48);
                  v188 = v138;
                  v189 = v139;
                  v191 = v133;
                  v140 = v137;
                  v190 = v140;
                  v141 = objc_retainBlock(v187);
                  (v141[2])(v141, 1, 1);
                  (v141[2])(v141, 1, 2);
                  (v141[2])(v141, 2, 0);
                  v142 = *(a1 + 48);
                  v184[0] = _NSConcreteStackBlock;
                  v184[1] = 3221225472;
                  v184[2] = sub_100157EDC;
                  v184[3] = &unk_100848738;
                  v185 = v140;
                  v186 = *(a1 + 32);
                  v143 = v140;
                  [v142 dispatchDelegateCallback:v184];
                  v24 = v164;
                  if (([v17 existsInDatabase] & 1) == 0)
                  {

                    v17 = 0;
                  }

                  v12 = v156;
                }

                else
                {
                  v24 = v164;
                  v12 = v156;
                }

                goto LABEL_221;
              }
            }
          }

          v131 = 0;
          goto LABEL_207;
        }

        v59 = [*(a1 + 48) passWithUniqueIdentifier:v162];
        v60 = [v59 paymentPass];

        v61 = v12;
        if ([v60 hasAssociatedPeerPaymentAccount])
        {
          v62 = [v24 length] == 0;
        }

        else
        {
          v75 = [v60 associatedAccountServiceAccountIdentifier];
          if (v75)
          {
            v62 = [v24 length] == 0;
          }

          else
          {
            v62 = 1;
          }
        }

        v121 = [*(a1 + 40) dpanIdentifier];
        v122 = [*(a1 + 40) altDSID];
        if (!v62)
        {
          LODWORD(v44) = 0;
          v17 = 0;
          v12 = v61;
          goto LABEL_196;
        }

        v154 = v122;
        if ([v121 length])
        {
          v44 = [*(a1 + 48) paymentApplicationWithDPANIdentifier:v121];

          v12 = v61;
          if (!v44)
          {
            goto LABEL_194;
          }
        }

        else
        {
          v12 = v61;
          if ([v154 length] && !PKAltDSIDIsCurrentUser())
          {
            LODWORD(v44) = 0;
LABEL_194:
            v17 = 0;
LABEL_195:
            v122 = v154;
LABEL_196:

            v2 = v155;
            v24 = v164;
            if (v17)
            {
LABEL_41:
              v45 = [v17 paymentTransaction];
              v46 = [PaymentTransactionArchive anyInDatabase:*(*(a1 + 48) + 8) forTransaction:v17];
              v152 = [v46 transactionArchive];
              v47 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                *v205 = v152;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Existing transaction archive %@", buf, 0xCu);
              }

              v48 = *(a1 + 56);
              if (v48)
              {
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v205 = v48;
                  _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Updating existing transaction archive with new archive %@", buf, 0xCu);
                }

                [v46 updateWithTransactionArchive:*(a1 + 56)];
              }

              v149 = [v46 transactionArchive];
              if (v160 & 1) != 0 || ![*(a1 + 40) hasCloudArchivableDeviceData] || (objc_msgSend(*(a1 + 40), "isCloudArchivableDeviceDataEqual:", v45))
              {
                v49 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
                if ((v158 & 0x10000) != 0)
                {
                  if (v49)
                  {
                    *buf = 138543618;
                    *v205 = v165;
                    *&v205[8] = 2114;
                    *&v205[10] = v2;
                    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "setting isArchived to NO because of upload-after-reset for transaction: %{public}@ service: %{public}@", buf, 0x16u);
                  }

                  [v149 updateArchiveLocationsWithType:0 isArchived:0];
                }

                else
                {
                  if (v49)
                  {
                    *buf = 138543618;
                    *v205 = v2;
                    *&v205[8] = 2114;
                    *&v205[10] = v165;
                    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "setting isArchived to YES on every matching location in the archive for transaction: %{public}@ service: %{public}@", buf, 0x16u);
                  }

                  [v149 updateTransactionArchiveLocationsWithArchive:v152 type:0 archived:1];
                }

                v146 = 0;
                if (!v44)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  *v205 = v2;
                  *&v205[8] = 2114;
                  *&v205[10] = v165;
                  _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "setting isArchived to NO because the local device data has changed for transaction: %{public}@ service: %{public}@", buf, 0x16u);
                }

                [v149 updateArchiveLocationsWithType:0 isArchived:0];
                v146 = 1;
                if (!v44)
                {
                  goto LABEL_79;
                }
              }

              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543618;
                *v205 = v2;
                *&v205[8] = 2114;
                *&v205[10] = v165;
                _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "marking transaction as fuzzy matched: %{public}@ service: %{public}@", buf, 0x16u);
              }

              [*(a1 + 40) setFuzzyMatched:1];
LABEL_79:
              v145 = v46;
              if (v45)
              {
                v66 = v160;
              }

              else
              {
                v66 = 0;
              }

              if (v66 == 1)
              {
                v67 = [v45 merchant];
                v68 = [*(a1 + 40) merchant];
                if ([v67 mapsDataIsFromLocalMatch] & 1) != 0 || (objc_msgSend(v67, "shouldIgnoreMapsMatches"))
                {
                  v69 = 0;
                  v70 = 0;
                }

                else
                {
                  v76 = [v67 mapsBrand];
                  v70 = [v76 identifier];

                  v77 = [v67 mapsMerchant];
                  v69 = [v77 identifier];
                }

                if ([v68 mapsDataIsFromLocalMatch] & 1) != 0 || (objc_msgSend(v68, "shouldIgnoreMapsMatches"))
                {
                  v78 = 0;
                  v79 = 0;
                }

                else
                {
                  v80 = [v68 mapsBrand];
                  v79 = [v80 identifier];

                  [v68 mapsMerchant];
                  v144 = v68;
                  v82 = v81 = v67;
                  v78 = [v82 identifier];

                  v67 = v81;
                  v68 = v144;
                }

                if (v70 == v79 && v69 == v78)
                {
                  if ([*(a1 + 40) requiresMerchantReprocessing])
                  {
                    v83 = 1;
                  }

                  else
                  {
                    v83 = [v45 requiresMerchantReprocessing];
                  }

                  v2 = v155;
                  v24 = v164;
                  [*(a1 + 40) setRequiresMerchantReprocessing:v83];
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 67109378;
                    *v205 = v83;
                    *&v205[4] = 2114;
                    *&v205[6] = v155;
                    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "maps data did not change, setting last reprocessing date: %d for transaction: %{public}@", buf, 0x12u);
                  }

                  if (v83)
                  {
                    v84 = *(a1 + 40);
                    v85 = [v45 lastMerchantReprocessingDate];
                    [v84 setLastMerchantReprocessingDate:v85];
                  }
                }

                else
                {
                  v2 = v155;
                  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    *v205 = v155;
                    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "maps data changed for transaction: %{public}@", buf, 0xCu);
                  }

                  [*(a1 + 40) setRequiresMerchantReprocessing:0];
                  [*(a1 + 40) setLastMerchantReprocessingDate:0];
                  v24 = v164;
                }
              }

              v86 = [*(a1 + 40) transactionStatus];
              v87 = [v45 transactionStatus];
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218498;
                *v205 = v87;
                *&v205[8] = 2048;
                *&v205[10] = v86;
                v206 = 2114;
                *v207 = v2;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "updating state from %ld to %ld for transaction: %{public}@", buf, 0x20u);
              }

              if (v45 && (v86 & 0xFFFFFFFFFFFFFFFDLL) == 1 && !v87)
              {
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543362;
                  *v205 = v2;
                  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "stated changed, will require merchant reprocessing for transaction: %{public}@", buf, 0xCu);
                }

                v88 = [*(a1 + 40) dpanIdentifier];
                if (!v88 || ([*(a1 + 48) paymentApplicationWithDPANIdentifier:v88], v89 = objc_claimAutoreleasedReturnValue(), v89, v89))
                {
                  [*(a1 + 40) setRequiresMerchantReprocessing:1];
                }
              }

              if (v86 == 1)
              {
                v90 = [v45 amount];
                if (v90)
                {

                  if ((v87 & 0xFFFFFFFFFFFFFFF7) == 0)
                  {
                    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138543362;
                      *v205 = v2;
                      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "updating amount added to auth for transaction: %{public}@", buf, 0xCu);
                    }

                    v91 = *(a1 + 40);
                    v92 = [v91 amount];
                    v93 = [v45 amount];
                    v94 = [v92 decimalNumberBySubtracting:v93];
                    [v91 setAmountAddedToAuth:v94];
                  }
                }
              }

              v95 = [v45 fkPaymentTransaction];
              v96 = [*(a1 + 40) fkPaymentTransaction];
              v97 = PKEqualObjects();

              if ((v97 & 1) == 0)
              {
                [*(a1 + 40) setNeedsSyncWithFinance:1];
              }

              [*(a1 + 40) setUpdateSequenceNumber:{objc_msgSend(v45, "updateSequenceNumber") + 1}];
              [v17 updateWithPaymentTransactionSource:*(a1 + 32)];
              v98 = *(*(a1 + 48) + 8);
              v194[0] = _NSConcreteStackBlock;
              v194[1] = 3221225472;
              v194[2] = sub_100157D14;
              v194[3] = &unk_1008489A8;
              v30 = v45;
              v195 = v30;
              v196 = *(a1 + 40);
              v197 = v2;
              v17 = v17;
              v198 = v17;
              v153 = v152;
              v199 = v153;
              v99 = v149;
              v200 = v99;
              v27 = v145;
              v201 = v27;
              sub_1005D4424(v98, v194);

              v100 = v195;
              v12 = v156;
              goto LABEL_149;
            }

            goto LABEL_197;
          }
        }

        v123 = [PaymentTransaction closestTransactionInDatabase:*(*(a1 + 48) + 8) fromTransaction:*(a1 + 40) forTransactionSourceIdentifiers:v163];
        v17 = v123;
        if (v123)
        {
          v44 = [v123 identifier];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *v205 = v44;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Fuzzy-Matched Transaction to Transaction with Identifier: %{public}@", buf, 0xCu);
          }

          LODWORD(v44) = 1;
        }

        else
        {
          LODWORD(v44) = 0;
        }

        goto LABEL_195;
      }

      if (v74)
      {
        *buf = 138412290;
        *v205 = v164;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Could Not Match Transaction on Payment Hash: %@", buf, 0xCu);
      }

      PKAnalyticsSendEvent();
    }

    v17 = 0;
    goto LABEL_22;
  }

  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 40) serviceIdentifier];
    v9 = *(a1 + 40);
    *buf = 138543618;
    *v205 = v8;
    *&v205[8] = 2112;
    *&v205[10] = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error: Cannot insert transaction with service ID %{public}@ with a nil transactionSourceIdentifier %@", buf, 0x16u);
  }

LABEL_177:

  return 1;
}

uint64_t sub_100157D14(uint64_t a1)
{
  v2 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v9 = 138412802;
    v10 = v3;
    v11 = 2112;
    v12 = v4;
    v13 = 2114;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating Existing Transaction: %@ with Transaction: %@ for identifier %{public}@", &v9, 0x20u);
  }

  [*(a1 + 56) updateWithPaymentTransaction:*(a1 + 40)];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 64);
    v7 = *(a1 + 72);
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating Existing Transaction Archive: %@ with Updated Transaction Archive: %@", &v9, 0x16u);
  }

  [*(a1 + 80) updateWithTransactionArchive:*(a1 + 72)];
  return 1;
}

void sub_100157E58(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [PaymentTransaction truncateEntitiesForTransactionSourceIdentifiers:a1[4] withNotificationServiceData:a2 suppressedFromUI:a3 inDatabase:*(a1[5] + 8) toCount:a1[7]];
  v4 = a1[6];
  v5 = [v6 allObjects];
  [v4 addObjectsFromArray:v5];
}

void sub_100157EDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 transactionSourceIdentifier:*(a1 + 40) didRemoveTransactionWithIdentifier:{*(*(&v9 + 1) + 8 * v8), v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void sub_100158024(void *a1, int a2)
{
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1[4] + 72));
    v11 = a1[5];
    v4 = [NSArray arrayWithObjects:&v11 count:1];
    [WeakRetained removeItems:v4 completion:0];
  }

  else
  {
    WeakRetained = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT))
    {
      v5 = a1[6];
      v6 = a1[7];
      v7 = 138543618;
      v8 = v5;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "PDApplePayCloudStoreContainer will not sync transaction from CloudKit with serviceIdentifier %{public}@ and transactionSourceIdentifier %@", &v7, 0x16u);
    }
  }
}

void sub_1001582FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100158318(uint64_t a1)
{
  v2 = [Pass anyInDatabase:*(*(a1 + 32) + 8) withUniqueID:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 transactionSourceIdentifier];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v7 = [TransactionSource insertTransactionSourceWithType:0 inDatabase:*(*(a1 + 32) + 8)];
      v8 = [v7 identifier];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      v11 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 40);
        v13 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138543618;
        v19 = v12;
        v20 = 2112;
        v21 = v13;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Pass %{public}@ did not have a transaction source, adding one now %@ and notifying the delegate that the pass has been updated", buf, 0x16u);
      }

      [v3 updateWithTransactionSourcePID:{objc_msgSend(v7, "persistentID")}];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1001584F0;
      v16[3] = &unk_1008486C0;
      v14 = *(a1 + 32);
      v17 = *(a1 + 40);
      [v14 dispatchDelegateCallback:v16];
    }
  }

  return 1;
}

void sub_1001589AC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

BOOL sub_1001589C8(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = a1[4];
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        v7 = 0;
        do
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v10 + 1) + 8 * v7) suppressBehavior] != a1[7])
          {
            v8 = [WeakRetained updateSuppressBehavior:? forPaymentTransaction:? sourceIdentifier:?];
          }

          v7 = v7 + 1;
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }
  }

  return WeakRetained != 0;
}

void sub_1001592AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [*(a1 + 32) objectForKeyedSubscript:*a4];
  [v7 setIsCloudKitArchived:{objc_msgSend(*(a4 + 8), "BOOLValue")}];
  [v7 setCloudKitMetadata:*(a4 + 16)];
  [v7 setIsCloudKitSecurelyArchived:{objc_msgSend(*(a4 + 24), "BOOLValue")}];
  [v7 setCloudKitSecureMetadata:*(a4 + 32)];
  v5 = _DateForSQLValue();
  [v7 setIngestedDate:v5];

  v6 = _DateForSQLValue();
  [v7 setModifiedDate:v6];

  [v7 setRevoked:{objc_msgSend(*(a4 + 56), "BOOLValue")}];
}

void sub_100159484(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [*(a1 + 32) cloudKitMetadata];

  if (v3)
  {
    [v7 udpateWithIsCloudKitArchived:1];
    v4 = [*(a1 + 32) cloudKitMetadata];
    [v7 udpateWithCloudKitMetadata:v4];
  }

  v5 = [*(a1 + 32) cloudKitSecureMetadata];

  if (v5)
  {
    [v7 udpateWithIsCloudKitSecurelyArchived:1];
    v6 = [*(a1 + 32) cloudKitSecureMetadata];
    [v7 udpateWithCloudKitSecureMetadata:v6];
  }
}

void sub_1001597B0(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = PKCloudStorePassesSyncContainerName;
  v4 = *(a1 + 32);
  v5 = v4;
  if (v4 == v3)
  {

LABEL_10:
    [v12 udpateWithIsCloudKitArchived:0];
    [v12 udpateWithCloudKitMetadata:0];
    goto LABEL_20;
  }

  if (v4)
  {
    v6 = v3 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
  }

  else
  {
    v7 = [v4 isEqualToString:v3];

    if (v7)
    {
      goto LABEL_10;
    }
  }

  v8 = PKCloudStorePassesSyncSecureContainerName;
  v9 = *(a1 + 32);
  v10 = v9;
  if (v9 == v8)
  {
  }

  else
  {
    if (v9 && v8)
    {
      v11 = [v9 isEqualToString:v8];

      if (v11)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    [v12 udpateWithIsCloudKitArchived:0];
    [v12 udpateWithCloudKitMetadata:0];
  }

LABEL_19:
  [v12 udpateWithIsCloudKitSecurelyArchived:0];
  [v12 udpateWithCloudKitSecureMetadata:0];
LABEL_20:
}

void sub_10015A640(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 paymentApplication];
  [v4 paymentPassWithUniqueIdentifier:v2 didUpdateDefaultPaymentApplication:v5];
}

void sub_10015B35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10015B374(void *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[5]);
  sqlite3_bind_int64(a2, 2, a1[6]);
  result = sub_10035E090(SQLiteDatabase, a2);
  if (result)
  {
    do
    {
      v5 = SQLiteCopyFoundationValueForStatementColumn(a2, 0);
      v6 = _DateForSQLValue();
      v7 = [v6 dateByAddingTimeInterval:-a1[7]];
      v8 = *(a1[4] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      result = sub_10035E090(SQLiteDatabase, a2);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t sub_10015BE00(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 32) bindToStatement:a2 bindingIndex:*(*(a1 + 80) + 8) + 24];
  if (*(a1 + 104) == 1)
  {
    v4 = *(*(a1 + 80) + 8);
    v5 = *(v4 + 24);
    *(v4 + 24) = v5 + 1;
    sqlite3_bind_text(a2, v5, [*(a1 + 40) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  }

  result = sub_10035E090(SQLiteDatabase, a2);
  if (result)
  {
    do
    {
      v7 = SQLiteCopyFoundationValueForStatementColumn(a2, 0);
      v8 = _DateForSQLValue();
      v9 = [v8 dateByAddingTimeInterval:-*(a1 + 88)];

      v10 = SQLiteCopyFoundationValueForStatementColumn(a2, 1);
      if ([v9 compare:*(a1 + 48)] == 1 && objc_msgSend(v9, "compare:", *(a1 + 56)) == -1)
      {
        v11 = objc_alloc_init(PKPaymentTransactionGroup);
        [v11 setStartDate:v9];
        if (*(a1 + 105))
        {
          [*(a1 + 64) nextStartOfYearFromDate:v9];
        }

        else
        {
          PKStartOfNextMonth();
        }
        v12 = ;
        [v11 setEndDate:v12];

        [v11 setTransactionCount:{objc_msgSend(v10, "integerValue")}];
        [v11 setType:*(a1 + 96)];
        [*(a1 + 72) setObject:v11 forKey:v9];
      }

      result = sub_10035E090(SQLiteDatabase, a2);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t sub_10015BFBC(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 64));
  result = sub_10035E090(SQLiteDatabase, a2);
  if (result)
  {
    do
    {
      v5 = SQLiteCopyFoundationValueForStatementColumn(a2, 0);
      v6 = _DateForSQLValue();
      v7 = [v6 dateByAddingTimeInterval:-*(a1 + 72)];

      v8 = SQLiteCopyFoundationValueForStatementColumn(a2, 1);
      if ([v7 compare:*(a1 + 32)] == 1 && objc_msgSend(v7, "compare:", *(a1 + 40)) == -1)
      {
        v9 = [*(a1 + 48) objectForKey:v7];
        if (v9)
        {
          v10 = v9;
          [v9 setTransactionCount:{objc_msgSend(v9, "transactionCount") + objc_msgSend(v8, "integerValue")}];
        }

        else
        {
          v10 = objc_alloc_init(PKPaymentTransactionGroup);
          [v10 setStartDate:v7];
          if (*(a1 + 88))
          {
            [*(a1 + 56) nextStartOfYearFromDate:v7];
          }

          else
          {
            PKStartOfNextMonth();
          }
          v11 = ;
          [v10 setEndDate:v11];

          [v10 setTransactionCount:{objc_msgSend(v8, "integerValue")}];
          [v10 setType:*(a1 + 80)];
          [*(a1 + 48) setObject:v10 forKey:v7];
        }
      }

      result = sub_10035E090(SQLiteDatabase, a2);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t sub_10015C164(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 32) bindToStatement:a2 bindingIndex:*(*(a1 + 56) + 8) + 24];
  sqlite3_bind_text(a2, *(*(*(a1 + 56) + 8) + 24), [*(a1 + 40) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int64(a2, *(*(*(a1 + 56) + 8) + 24) + 1, 0);
  sqlite3_bind_int64(a2, *(*(*(a1 + 56) + 8) + 24) + 2, 1);
  sqlite3_bind_int64(a2, *(*(*(a1 + 56) + 8) + 24) + 3, 0);
  sqlite3_bind_int64(a2, *(*(*(a1 + 56) + 8) + 24) + 4, 8);
  sqlite3_bind_int64(a2, *(*(*(a1 + 56) + 8) + 24) + 5, 0x7FFFFFFFFFFFFFFFLL);
  sqlite3_bind_int64(a2, *(*(*(a1 + 56) + 8) + 24) + 6, 0x7FFFFFFFFFFFFFFFLL);
  result = sub_10035E090(SQLiteDatabase, a2);
  if (result)
  {
    do
    {
      v5 = SQLiteCopyFoundationValueForStatementColumn(a2, 0);
      v6 = _DateForSQLValue();
      v7 = [v6 dateByAddingTimeInterval:-*(a1 + 64)];

      v8 = SQLiteCopyFoundationValueForStatementColumn(a2, 1);
      v9 = [*(a1 + 48) objectForKey:v7];
      if (v9)
      {
        v10 = v8 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (!v10)
      {
        v11 = PKCurrencyStorageNumberToCurrencyDecimal();
        v12 = PKCurrencyAmountCreate(v11, *(a1 + 40), 0);
        [v9 setTotalAmount:v12];
      }

      result = sub_10035E090(SQLiteDatabase, a2);
    }

    while ((result & 1) != 0);
  }

  return result;
}

int64_t sub_10015C360(id a1, PKPaymentTransactionGroup *a2, PKPaymentTransactionGroup *a3)
{
  v4 = a2;
  v5 = [(PKPaymentTransactionGroup *)a3 startDate];
  v6 = [(PKPaymentTransactionGroup *)v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t sub_10015CEF8(uint64_t a1)
{
  v38 = [*(a1 + 32) merchant];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = *(a1 + 40);
  v2 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v48;
    v37 = v44;
    v39 = *v48;
    do
    {
      v5 = 0;
      v40 = v3;
      do
      {
        if (*v48 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v47 + 1) + 8 * v5);
        v7 = objc_autoreleasePoolPush();
        v8 = [v6 statementIdentifier];
        v9 = [v6 statementDate];
        v10 = [v6 identifier];
        v11 = [*(a1 + 48) hasTransactionWithTransactionIdentifier:v10];
        if (v11)
        {
          v12 = v8 == 0;
        }

        else
        {
          v12 = 0;
        }

        if (v12)
        {
          [*(a1 + 48) deletePaymentTransactionWithIdentifier:v10];
        }

        else if (v8)
        {
          v13 = v11;
          v14 = [v6 originalAmountDue];
          v15 = v14;
          if (v14)
          {
            v16 = v14;
          }

          else
          {
            v16 = [v6 amountDue];
          }

          v42 = v16;

          if (v9)
          {
            v17 = +[NSDecimalNumber zero];
            v18 = [v42 isEqualToNumber:v17];

            if ((v18 & 1) == 0)
            {
              if (v13 && ([*(a1 + 48) paymentTransactionForIdentifier:v10], (v19 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v20 = v19;
                v21 = v20;
              }

              else
              {
                v20 = objc_alloc_init(PKPaymentTransaction);
                v21 = 0;
              }

              [v20 setTransactionDate:v9];
              [v20 setTransactionStatus:1];
              [v20 setTransactionSource:8];
              [v20 setTransactionType:13];
              [v20 setIdentifier:v10];
              v22 = [*(a1 + 32) identifier];
              [v20 setReferenceIdentifier:v22];

              [v20 setAmount:v42];
              v23 = [v6 currencyCode];
              [v20 setCurrencyCode:v23];

              [v20 setAccountIdentifier:*(a1 + 56)];
              [v20 setAccountType:2];
              v24 = [*(a1 + 32) accountUserAltDSID];
              [v20 setAltDSID:v24];

              if (v38)
              {
                v25 = [v20 merchant];

                if (!v25)
                {
                  v26 = objc_alloc_init(PKMerchant);
                  v27 = [v38 name];
                  [v26 setName:v27];

                  v28 = [v38 identifier];
                  [v26 setMerchantIdentifier:v28];

                  [v26 setIndustryCode:{objc_msgSend(v38, "categoryCode")}];
                  v29 = [v38 city];
                  [v26 setCity:v29];

                  v30 = [v38 state];
                  [v26 setState:v30];

                  v31 = [v38 postalCode];
                  [v26 setZip:v31];

                  v32 = [v38 country];
                  [v26 setRawCountry:v32];

                  [v20 setMerchant:v26];
                }
              }

              v33 = [*(a1 + 48) _insertOrUpdatePaymentTransaction:v20 transactionSourceIdentifier:*(a1 + 64) transactionArchive:0 originDeviceID:0 insertionMode:0 performTruncation:0 insertedTransaction:{0, v37}];
              v34 = v33;
              if (v33 && *(a1 + 72))
              {
                v35 = PDUtilityQueue(v33);
                block[0] = _NSConcreteStackBlock;
                block[1] = 3221225472;
                v44[0] = sub_10015D3FC;
                v44[1] = &unk_10083C820;
                v46 = *(a1 + 72);
                v45 = v34;
                dispatch_async(v35, block);
              }
            }
          }

          v4 = v39;
          v3 = v40;
        }

        objc_autoreleasePoolPop(v7);
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    }

    while (v3);
  }

  return 1;
}

void sub_10015DCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10015DCD0(uint64_t a1)
{
  v2 = [PeerPaymentAccount anyInDatabase:*(*(a1 + 32) + 8)];
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing peer payment account from database", v8, 2u);
    }

    v4 = [v2 peerPaymentAccount];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [*(a1 + 32) deletePeerPaymentPendingRequestsForPeerPaymentAccount];
    [v2 deleteFromDatabase];
  }

  return 1;
}

void sub_10015E0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10015E0E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[1];
  v4 = [v2 dbPeerPaymentAccount];
  v5 = [PeerPaymentPreferences anyInDatabase:v3 forPeerPaymentAccount:v4];

  if (v5)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Removing peer payment preferences from database", v11, 2u);
    }

    v7 = [v5 peerPaymentPreferences];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [v5 deleteFromDatabase];
  }

  return 1;
}

uint64_t sub_10015E2E4(uint64_t a1, sqlite3_stmt *a2)
{
  result = sub_10035E090(SQLiteDatabase, a2);
  if (result)
  {
    do
    {
      v5 = SQLiteCopyFoundationValueForStatementColumn(a2, 0);
      v6 = [v5 longLongValue];

      v7 = SQLiteCopyFoundationValueForStatementColumn(a2, 1);
      v8 = SQLiteCopyFoundationValueForStatementColumn(a2, 2);
      v9 = [v8 longLongValue];

      if (!v7 && v9 == *(a1 + 48))
      {
        v10 = *(*(a1 + 32) + 8);
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_10015E42C;
        v11[3] = &unk_100848C08;
        v12 = *(a1 + 40);
        v13 = v6;
        sub_1005D44A8(v10, @"UPDATE payment_transaction SET account_type = ?, account_identifier = ? WHERE pid = ?", v11);
      }

      result = sub_10035E090(SQLiteDatabase, a2);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t sub_10015E42C(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 1);
  sqlite3_bind_text(a2, 2, [*(a1 + 32) UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  sqlite3_bind_int64(a2, 3, *(a1 + 40));

  return sub_10035DF04(SQLiteDatabase, a2);
}

id sub_10015F6F0(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

id sub_10015F724(uint64_t a1, void *a2)
{
  result = [a2 count];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_10015F9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10015F9D0(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1(v3, v5);
}

void sub_10015FA18(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = *a4;
  if ([v5 containsObject:?])
  {
    [*(*(*(a1 + 40) + 8) + 40) removeObject:v6];
  }

  else
  {
    [*(a1 + 32) addObject:v6];
  }
}

void sub_10015FE00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10015FE3C(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1(v3, v5);
}

void sub_10015FE84(uint64_t a1, uint64_t a2, uint64_t a3, id *a4)
{
  v5 = *(*(*(a1 + 40) + 8) + 40);
  v6 = *a4;
  if ([v5 containsObject:?])
  {
    [*(*(*(a1 + 40) + 8) + 40) removeObject:v6];
  }

  else
  {
    [*(a1 + 32) addObject:v6];
  }
}

void sub_100160730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100160748(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100160800;
  v9[3] = &unk_100840170;
  v10 = v3;
  v5 = v3;
  v6 = [v4 objectsPassingTest:v9];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id sub_100160800(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueID];
  v4 = [v2 containsObject:v3];

  return v4;
}

void sub_100160848(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  [WeakRetained handleDatabaseIntegrityProblem];
}

void sub_100161404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100161428(uint64_t a1, void *a2)
{
  v3 = [a2 pk_arrayCopy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return _objc_release_x1(v3, v5);
}

id sub_1001618C4(id a1, NSNumber *a2)
{
  v2 = [(NSNumber *)a2 unsignedIntValue];

  return [Pass predicateForPaymentType:v2];
}

void sub_1001634D0(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  v5 = [*(a1 + 40) insertOrUpdatePaymentTransaction:v6 withPassUniqueIdentifier:*(a1 + 48) paymentApplication:*(a1 + 56) insertionMode:0 performTruncation:objc_msgSend(*(a1 + 32) insertedTransaction:{"count") - 1 == a3, 0}];
}

void sub_100163558(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) transactionSourceIdentifier];
  v5 = [v3 insertOrUpdatePaymentTransaction:v6 withTransactionSourceIdentifier:v4 insertionMode:0 performTruncation:0 insertedTransaction:0];
}

void sub_100163A5C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 72));
  v9 = [WeakRetained applePayContainer];
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100163B74;
  v16[3] = &unk_100848D40;
  v12 = *(a1 + 56);
  v13 = *(a1 + 40);
  v17 = v12;
  v18 = v13;
  v19 = v6;
  v20 = v7;
  v14 = v6;
  v15 = v7;
  [v9 canSyncTransactionToCloudKit:v10 forTransactionSourceIdentifier:v11 completion:v16];
}

uint64_t sub_100163B74(uint64_t a1, int a2)
{
  if (a2)
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
  }

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

void sub_100163BC0(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = objc_alloc_init(NSMutableSet);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = *(a1 + 32);
    v19 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v19)
    {
      v18 = *v21;
      v17 = PKCloudStoreOperationGroupUserActionImplicit;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v20 + 1) + 8 * i);
          v5 = *(a1 + 40);
          v6 = [v4 serviceIdentifier];
          v7 = [v5 transactionArchiveForTransactionWithServiceIdentifier:v6 transactionSourceIdentifier:*(a1 + 48)];

          v8 = [v7 archiveLocationsWithType:0 isArchived:0];
          v9 = [v8 pk_setByApplyingBlock:&stru_100848D60];
          WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 72));
          v11 = [WeakRetained applePayContainer];
          v12 = [v11 cloudStoreSpecificKeysForItem:v4];

          v13 = [[PKCloudStoreUploadItemConfiguration alloc] initWithItem:v4 recordSpecificKeys:v12];
          [v13 setCloudStoreZones:v9];
          [v2 addObject:v13];
          v14 = objc_loadWeakRetained((*(a1 + 40) + 72));
          v15 = [v14 applePayContainer];
          [v15 updateCloudStoreWithLocalItemsWithConfigurations:v2 groupName:v17 groupNameSuffix:0 qualityOfService:17 completion:0];
        }

        v19 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v19);
    }
  }
}

void sub_1001665D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100166624(void *result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(*(result[4] + 8) + 24) >= result[5])
  {
    *a4 = 1;
  }

  else
  {
    *(result[6] + 8 * a3) += a2;
    *(*(result[4] + 8) + 24) += a2;
  }

  return result;
}

int64_t sub_100167E58(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = [a3 transactionDate];
  v6 = [v4 transactionDate];

  v7 = [v5 compare:v6];
  return v7;
}

int64_t sub_100167EC8(id a1, id a2, id a3)
{
  v4 = a2;
  v5 = [a3 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t sub_100169E04(void *a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100169EE0;
  v7[3] = &unk_100848F20;
  v3 = a1[4];
  v4 = a1[6];
  v7[4] = a1[5];
  v8 = v2;
  v9 = v4;
  v5 = v2;
  [v3 enumerateObjectsUsingBlock:v7];
  [DiscoveryItem deleteItemsNotIncludingIdentifiers:v5 inDatabase:*(a1[5] + 8)];

  return 1;
}

void sub_100169EE0(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a1[4] + 8);
  v6 = a2;
  v11 = [DiscoveryItem insertOrUpdateItem:v6 itemOrder:a3 inDatabase:v5];
  v7 = a1[5];
  v8 = [v6 identifier];

  [v7 addObject:v8];
  v9 = a1[6];
  v10 = [v11 item];
  [v9 addObject:v10];
}

void sub_10016A0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016A0E0(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = *(a1 + 40);
        v9 = [v7 identifier];
        v10 = [v8 discoveryItemWithIdentifier:v9];

        if (v10)
        {
          [v7 setStatus:{objc_msgSend(v10, "status")}];
          [v7 setViewCount:{objc_msgSend(v10, "viewCount")}];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v11 = [*(a1 + 40) setDiscoveryItems:*(a1 + 32)];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  return 1;
}

void sub_10016A374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016A38C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = [v8 identifier];
        v10 = [*(a1 + 40) discoveryItemWithIdentifier:v9];
        if (v10)
        {
          v11 = v10;
          [v10 updateWithDiscoveryItem:v8];
        }

        else
        {
          v11 = [v8 copy];
          if ([v11 hasTrigger])
          {
            v12 = v11;
            v13 = 5;
          }

          else
          {
            v12 = v11;
            v13 = 1;
          }

          [v12 setStatus:v13];
        }

        [v2 addObject:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }

  v14 = [*(a1 + 40) setDiscoveryItems:v2];
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  return 1;
}

void sub_10016A650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016A668(uint64_t a1)
{
  v2 = [*(a1 + 32) discoveryItemsWaitingForTrigger];
  v3 = objc_alloc_init(NSMutableString);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v2;
  v4 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v39;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v39 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v38 + 1) + 8 * i);
        v9 = [v8 triggerRuleIdentifier];
        if (v9)
        {
          v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
          v11 = [v10 BOOLValue];

          v12 = [v8 identifier];
          v13 = v12;
          v14 = "not triggered";
          if (v11)
          {
            v14 = "triggered";
          }

          [v3 appendFormat:@"Applying result for trigger rule identifier: %@\nItem with identifier: %@ %s\n", v9, v12, v14];

          if (v11)
          {
            [v8 setStatus:1];
            v15 = [*(a1 + 32) updateDiscoveryItem:v8];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v5);
  }

  v32 = +[NSDate now];
  v16 = [*(a1 + 32) discoveryItemsForRelevantDate:?];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v35;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v34 + 1) + 8 * j);
        if ([v21 status] != 5)
        {
          v22 = [v21 ruleIdentifier];
          v23 = v22;
          if (v22)
          {
            [v3 appendFormat:@"Applying result for rule identifier: %@\n", v22];
            v24 = [*(a1 + 40) objectForKeyedSubscript:v23];
            v25 = [v24 BOOLValue];

            [v21 updateForRuleResult:v25];
            v26 = [*(a1 + 32) updateDiscoveryItem:v21];
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v18);
  }

  v27 = [*(a1 + 32) discoveryItems];
  v28 = *(*(a1 + 48) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v27;

  if ([v3 length])
  {
    v30 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v3;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
    }
  }

  return 1;
}

uint64_t sub_10016ABC0(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [Rule insertOrUpdateRule:v8 inDatabase:*(*(a1 + 40) + 8), v14];
        v10 = [v8 identifier];
        [v2 addObject:v10];

        v11 = *(a1 + 48);
        v12 = [v9 rule];
        [v11 addObject:v12];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  [Rule deleteRulesNotIncludingIdentifiers:v2 inDatabase:*(*(a1 + 40) + 8)];
  return 1;
}

void sub_10016AF60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016AF78(void *a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016B044;
  v7[3] = &unk_100848F48;
  v3 = a1[4];
  v4 = a1[6];
  v7[4] = a1[5];
  v8 = v2;
  v9 = v4;
  v5 = v2;
  [v3 enumerateObjectsUsingBlock:v7];
  [DiscoveryEngagementMessage deleteEngagementMessagesNotIncludingIdentifiers:v5 inDatabase:*(a1[5] + 8)];

  return 1;
}

void sub_10016B044(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a1[4] + 8);
  v6 = a2;
  v11 = [DiscoveryEngagementMessage insertOrUpdateEngagementMessage:v6 messageOrder:a3 inDatabase:v5];
  v7 = a1[5];
  v8 = [v6 identifier];

  [v7 addObject:v8];
  v9 = *(*(a1[6] + 8) + 40);
  v10 = [v11 engagementMessage];
  [v9 addObject:v10];
}

void sub_10016B248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016B260(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 identifier];
        v10 = [*(a1 + 40) engagementMessageWithIdentifier:v9];
        if (v10)
        {
          v11 = v10;
          [v10 updateWithDiscoveryEngagementMessage:v8];
        }

        else
        {
          v11 = [v8 copy];
          [v11 setStatus:1];
        }

        [v2 addObject:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v12 = [*(a1 + 40) updateEngagementMessages:v2];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  return 1;
}

void sub_10016B520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016B538(uint64_t a1)
{
  v2 = [*(a1 + 32) engagementMessages];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 ruleIdentifier];
        if (v8)
        {
          v9 = [*(a1 + 40) objectForKeyedSubscript:v8];
          v10 = [v9 BOOLValue];

          [v7 updateForRuleResult:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v11 = [*(a1 + 32) updateEngagementMessages:v2];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  return 1;
}

void sub_10016B90C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016B924(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [DiscoveryNotification insertOrUpdateNotification:v8 inDatabase:*(*(a1 + 40) + 8), v14];
        v10 = [v8 identifier];
        [v2 addObject:v10];

        v11 = *(*(*(a1 + 48) + 8) + 40);
        v12 = [v9 notification];
        [v11 addObject:v12];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  [DiscoveryNotification deleteNotificationsNotIncludingIdentifiers:v2 inDatabase:*(*(a1 + 40) + 8)];
  return 1;
}

void sub_10016BBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016BC00(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 identifier];
        v10 = [*(a1 + 40) discoveryNotificationWithIdentifier:v9];
        if (v10)
        {
          v11 = v10;
          [v10 updateWithNotification:v8];
        }

        else
        {
          v11 = v8;
          [v11 setStatus:1];
        }

        [v2 addObject:v11];
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v12 = [*(a1 + 40) updateDiscoveryNotifications:v2];
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  return 1;
}

void sub_10016BEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016BED4(uint64_t a1)
{
  v2 = [*(a1 + 32) discoveryNotifications];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 ruleIdentifier];
        if (v8)
        {
          v9 = [*(a1 + 40) objectForKeyedSubscript:v8];
          v10 = [v9 BOOLValue];

          [v7 updateForRuleResult:v10];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v11 = [*(a1 + 32) updateDiscoveryNotifications:v2];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  return 1;
}

void sub_10016C4D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016C4EC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(v2 + 8);
  v5 = a1[6];
  v6 = [*(v2 + 64) secureElementIdentifiers];
  v7 = [PaymentApplication anyInDatabase:v4 withApplicationIdentifier:v3 subcredentialIdentifier:v5 secureElementIdentifiers:v6];

  if (v7)
  {
    v8 = +[Pass anyInDatabase:withPersistentID:](Pass, "anyInDatabase:withPersistentID:", *(a1[4] + 8), [v7 passPID]);
    v9 = [v8 uniqueID];
    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  return 1;
}

uint64_t sub_10016C6A8(uint64_t a1)
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = [AppletSubcredential appletSubcredentialsWithPairedReaderIdentifier:*(a1 + 32) inDatabase:*(*(a1 + 40) + 8)];
  v2 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v16;
    do
    {
      v5 = 0;
      do
      {
        if (*v16 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = +[PaymentApplication anyInDatabase:withPersistentID:](PaymentApplication, "anyInDatabase:withPersistentID:", *(*(a1 + 40) + 8), [*(*(&v15 + 1) + 8 * v5) paymentApplicationPID]);
        v7 = v6;
        if (v6)
        {
          v8 = +[Pass anyInDatabase:withPersistentID:](Pass, "anyInDatabase:withPersistentID:", *(*(a1 + 40) + 8), [v6 passPID]);
          v9 = *(a1 + 40);
          v10 = [v8 pass];
          v11 = [v9 _registeredPass:v10];
          v12 = [v11 secureElementPass];

          if (v12)
          {
            [*(a1 + 48) addObject:v12];
          }
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v3);
  }

  return 1;
}

void sub_10016C9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016C9FC(void *a1)
{
  v2 = [PassShare passShareForCredentialShareIdentifier:a1[4] inDatabase:*(a1[5] + 8)];
  v3 = [v2 subcredentialIdentifier];
  if (v3)
  {
    v4 = [AppletSubcredential appletSubcredentialWithIdentifier:v3 inDatabase:*(a1[5] + 8)];
    v5 = [v4 appletSubcredential];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  return 1;
}

void sub_10016CB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10016CB8C(uint64_t a1)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v17 + 1) + 8 * i);
        v8 = [v7 identifier];
        v9 = [AppletSubcredential appletSubcredentialWithIdentifier:v8 inDatabase:*(*(a1 + 40) + 8)];

        if (v9)
        {
          v10 = +[PaymentApplication anyInDatabase:withPersistentID:](PaymentApplication, "anyInDatabase:withPersistentID:", *(*(a1 + 40) + 8), [v9 paymentApplicationPID]);
          if (v10)
          {
            v11 = [AppletSubcredential insertOrUpdateAppletSubcredential:v7 withPaymentApplication:v10 inDatabase:*(*(a1 + 40) + 8)];
            v12 = *(a1 + 40);
            v13 = [v10 paymentApplication];
            v14 = [v12 passUniqueIdentifierWithPaymentApplication:v13];

            v15 = [Pass anyInDatabase:*(*(a1 + 40) + 8) withUniqueID:v14];
            [v15 updateWithLastModifiedSource:4];
          }

          else
          {
            *(*(*(a1 + 48) + 8) + 24) = 0;
          }
        }

        else
        {
          *(*(*(a1 + 48) + 8) + 24) = 0;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  return 1;
}

uint64_t sub_10016CFC4(void *a1)
{
  v2 = [AppletSubcredential appletSubcredentialsForSecureElementIdentifiers:a1[4] containingRadioTechnologies:2 inDatabase:*(a1[5] + 8)];
  v3 = objc_alloc_init(NSMutableArray);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        [AppletSubcredentialRangingSuspensionReasons suspensionReasonsForCredential:v9 inDatabase:*(a1[5] + 8)];
        v10 = (*(a1[7] + 16))();
        v11 = [AppletSubcredentialRangingSuspensionReasons insertOrUpdateSubcredentialRangingSuspensionReasonForCredential:v9 withReasons:v10 inDatabase:*(a1[5] + 8)];
        v40[0] = v9;
        v12 = [NSNumber numberWithUnsignedInteger:v10];
        v40[1] = v12;
        v13 = [NSArray arrayWithObjects:v40 count:2];
        [v3 addObject:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v6);
  }

  v25 = v4;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v28 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v28)
  {
    v27 = *v31;
    do
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v30 + 1) + 8 * j);
        v16 = [v15 objectAtIndexedSubscript:{0, v25}];
        v17 = [v15 objectAtIndexedSubscript:1];
        v18 = +[PaymentApplication anyInDatabase:withPersistentID:](PaymentApplication, "anyInDatabase:withPersistentID:", *(a1[5] + 8), [v16 paymentApplicationPID]);
        v19 = [v18 paymentApplication];
        v20 = a1[6];
        v38[0] = v17;
        v21 = [v19 subcredentials];
        v29[0] = _NSConcreteStackBlock;
        v29[1] = 3221225472;
        v29[2] = sub_10016D360;
        v29[3] = &unk_100848F70;
        v29[4] = v16;
        v22 = [v21 pk_anyObjectPassingTest:v29];
        v38[1] = v22;
        v38[2] = v19;
        v23 = [NSArray arrayWithObjects:v38 count:3];
        [v20 addObject:v23];
      }

      v28 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v28);
  }

  return 1;
}

id sub_10016D360(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

uint64_t sub_10016D5A4(uint64_t a1, sqlite3_stmt *a2)
{
  if (*(a1 + 48))
  {
    v4 = 0;
    do
    {
      v5 = v4 + 1;
      v6 = [*(a1 + 32) objectAtIndexedSubscript:?];
      sqlite3_bind_text(a2, v5, [v6 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);

      v4 = v5;
    }

    while (*(a1 + 48) > v5);
  }

  result = sub_10035E090(SQLiteDatabase, a2);
  if (result)
  {
    do
    {
      v8 = SQLiteCopyFoundationValueForStatementColumn(a2, 0);
      v9 = SQLiteCopyFoundationValueForStatementColumn(a2, 1);
      v10 = v9;
      if (v8 && v9)
      {
        v11 = [*(a1 + 40) objectForKey:v8];
        v12 = v11;
        if (v11)
        {
          [v11 addObject:v10];
        }

        else
        {
          v13 = *(a1 + 40);
          v14 = [[NSMutableSet alloc] initWithObjects:{v10, 0}];
          [v13 setObject:v14 forKey:v8];
        }
      }

      result = sub_10035E090(SQLiteDatabase, a2);
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t sub_10016E3D0(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) sessionIdentifier];
  v4 = +[SelectedPaymentOffer deleteSelectedPaymentOfferForPassPID:withSessionIdentifier:type:inDatabase:](SelectedPaymentOffer, "deleteSelectedPaymentOfferForPassPID:withSessionIdentifier:type:inDatabase:", v2, v3, [*(a1 + 32) type], *(*(a1 + 40) + 8));

  if ((v4 & 1) == 0)
  {
    v5 = *(a1 + 48);
    v6 = [*(a1 + 32) selectedOfferIdentifier];
    v7 = +[SelectedPaymentOffer deleteSelectedPaymentOfferForPassPID:withOfferIdentifier:type:inDatabase:](SelectedPaymentOffer, "deleteSelectedPaymentOfferForPassPID:withOfferIdentifier:type:inDatabase:", v5, v6, [*(a1 + 32) type], *(*(a1 + 40) + 8));

    if ((v7 & 1) == 0)
    {
      v8 = [*(a1 + 32) installmentSelectedPaymentOffer];
      v9 = [v8 selectionType];

      if (v9 == 1)
      {
        +[SelectedPaymentOffer deleteSelectedPaymentOfferForPassPID:type:storageType:inDatabase:](SelectedPaymentOffer, "deleteSelectedPaymentOfferForPassPID:type:storageType:inDatabase:", *(a1 + 48), [*(a1 + 32) type], objc_msgSend(*(a1 + 32), "storageType"), *(*(a1 + 40) + 8));
      }
    }
  }

  return 1;
}

uint64_t sub_1001703F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    [v3 setRegistrationBackoffCounter:{objc_msgSend(v6, "registrationBackoffCounter")}];
    v7 = [v6 isRegistered] ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

void sub_1001707A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001707C0(uint64_t a1)
{
  v2 = [*(a1 + 32) _dbPaymentApplicationWithDPANIdentifier:*(a1 + 40)];
  if (v2)
  {
    v3 = [BarcodeCredential insertBarcodeCredentials:*(a1 + 48) forPaymentApplication:v2 inDatabase:*(*(a1 + 32) + 8)];
    *(*(*(a1 + 56) + 8) + 24) = v3 != 0;
  }

  v4 = *(*(*(a1 + 56) + 8) + 24);

  return v4;
}

void sub_100170918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100170930(uint64_t a1)
{
  v2 = [*(a1 + 32) _dbPaymentApplicationWithDPANIdentifier:*(a1 + 40)];
  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [BarcodeCredential numberOfValidCredentialsForPaymentApplication:v2 inDatabase:*(*(a1 + 32) + 8)];
  }

  return 1;
}

void sub_100170A98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100170AB0(uint64_t a1)
{
  v2 = [*(a1 + 32) _dbPaymentApplicationWithDPANIdentifier:*(a1 + 40)];
  if (v2)
  {
    *(*(*(a1 + 56) + 8) + 24) = [BarcodeCredential numberOfBarcodeCredentialsDisplayedAfterDate:*(a1 + 48) paymentApplication:v2 inDatabase:*(*(a1 + 32) + 8)];
  }

  return 1;
}

void sub_100170C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100170C48(uint64_t a1)
{
  v2 = [*(a1 + 32) _dbPaymentApplicationWithDPANIdentifier:*(a1 + 40)];
  if (v2)
  {
    v3 = [BarcodeCredential firstValidBarcodeCredentialForPaymentApplication:v2 inDatabase:*(*(a1 + 32) + 8)];
    v4 = [v3 barcodeCredential];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return 1;
}

void sub_100170DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100170E00(uint64_t a1)
{
  v2 = [*(a1 + 32) _dbPaymentApplicationWithDPANIdentifier:*(a1 + 40)];
  if (v2)
  {
    v3 = [BarcodeCredential lastUsedBarcodeIdentifierForPaymentApplication:v2 inDatabase:*(*(a1 + 32) + 8)];
    v4 = *(*(a1 + 48) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  return 1;
}

void sub_100170F44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100170F5C(uint64_t a1)
{
  v2 = [*(a1 + 32) _dbPaymentApplicationWithDPANIdentifier:*(a1 + 40)];
  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [BarcodeCredential removeAllBarcodeCredentialValuesForPaymentApplication:v2 inDatabase:*(*(a1 + 32) + 8)];
  }

  v3 = *(*(*(a1 + 48) + 8) + 24);

  return v3;
}

void sub_1001710A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001710B8(uint64_t a1)
{
  v2 = [*(a1 + 32) _dbPaymentApplicationWithDPANIdentifier:*(a1 + 40)];
  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [BarcodeCredential removeAllBarcodeCredentialsForPaymentApplication:v2 inDatabase:*(*(a1 + 32) + 8)];
  }

  v3 = *(*(*(a1 + 48) + 8) + 24);

  return v3;
}

void sub_10017122C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100171244(void *a1)
{
  v2 = [BarcodeCredential anyInDatabase:*(a1[4] + 8) withBarcodeIdentifier:a1[5]];
  v3 = v2;
  if (v2)
  {
    *(*(a1[7] + 8) + 24) = [v2 updateWithDisplayTimestamp:a1[6]];
  }

  v4 = *(*(a1[7] + 8) + 24);

  return v4;
}

void sub_1001713B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001713CC(void *a1)
{
  v2 = [PaymentTransaction anyInDatabase:*(a1[4] + 8) withIdentifier:a1[5]];
  v3 = v2;
  if (v2)
  {
    v4 = +[PaymentTransactionAuthentication anyInDatabase:withPaymentTransactionPID:](PaymentTransactionAuthentication, "anyInDatabase:withPaymentTransactionPID:", *(a1[4] + 8), [v2 persistentID]);
    *(*(a1[7] + 8) + 24) = [v4 updateWithPaymentPINData:a1[6]];
  }

  v5 = *(*(a1[7] + 8) + 24);

  return v5;
}

void sub_100171574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10017158C(void *a1)
{
  v2 = [PaymentTransaction anyInDatabase:*(a1[4] + 8) withIdentifier:a1[5]];
  v3 = v2;
  if (v2)
  {
    v4 = +[PaymentTransactionAuthentication anyInDatabase:withPaymentTransactionPID:](PaymentTransactionAuthentication, "anyInDatabase:withPaymentTransactionPID:", *(a1[4] + 8), [v2 persistentID]);
    *(*(a1[7] + 8) + 24) = [v4 updateWithTransactionSignatureData:a1[6]];
  }

  v5 = *(*(a1[7] + 8) + 24);

  return v5;
}

void sub_100171734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10017174C(void *a1)
{
  v2 = [PaymentTransaction anyInDatabase:*(a1[4] + 8) withIdentifier:a1[5]];
  v3 = v2;
  if (v2)
  {
    v4 = +[PaymentTransactionAuthentication anyInDatabase:withPaymentTransactionPID:](PaymentTransactionAuthentication, "anyInDatabase:withPaymentTransactionPID:", *(a1[4] + 8), [v2 persistentID]);
    *(*(a1[7] + 8) + 24) = [v4 updateWithUserConfirmationData:a1[6]];
  }

  v5 = *(*(a1[7] + 8) + 24);

  return v5;
}

void sub_1001718CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001718E4(void *a1)
{
  v2 = [PaymentTransaction anyInDatabase:*(a1[4] + 8) withIdentifier:a1[5]];
  v3 = v2;
  if (v2)
  {
    v4 = +[PaymentTransactionAuthentication anyInDatabase:withPaymentTransactionPID:](PaymentTransactionAuthentication, "anyInDatabase:withPaymentTransactionPID:", *(a1[4] + 8), [v2 persistentID]);
    *(*(a1[6] + 8) + 24) = [v4 addProcessedAuthenticationMechanisms:a1[7]];
  }

  v5 = *(*(a1[6] + 8) + 24);

  return v5;
}

void sub_100171A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100171A7C(void *a1)
{
  v2 = [PaymentTransaction anyInDatabase:*(a1[4] + 8) withIdentifier:a1[5]];
  v3 = v2;
  if (v2)
  {
    v4 = +[PaymentTransactionAuthentication anyInDatabase:withPaymentTransactionPID:](PaymentTransactionAuthentication, "anyInDatabase:withPaymentTransactionPID:", *(a1[4] + 8), [v2 persistentID]);
    *(*(a1[6] + 8) + 24) = [v4 addDataCollectedAuthenticationMechanisms:a1[7]];
  }

  v5 = *(*(a1[6] + 8) + 24);

  return v5;
}

void sub_100171BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100171C0C(void *a1)
{
  v2 = [PaymentTransaction anyInDatabase:*(a1[4] + 8) withIdentifier:a1[5]];
  v3 = v2;
  if (v2)
  {
    v4 = +[PaymentTransactionAuthentication anyInDatabase:withPaymentTransactionPID:](PaymentTransactionAuthentication, "anyInDatabase:withPaymentTransactionPID:", *(a1[4] + 8), [v2 persistentID]);
    *(*(a1[6] + 8) + 24) = [v4 updateAuthenticationComplete:1];
  }

  v5 = *(*(a1[6] + 8) + 24);

  return v5;
}

void sub_100171D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100171D9C(void *a1)
{
  v2 = [PaymentTransaction anyInDatabase:*(a1[4] + 8) withIdentifier:a1[5]];
  v3 = v2;
  if (v2)
  {
    v4 = +[PaymentTransactionAuthentication anyInDatabase:withPaymentTransactionPID:](PaymentTransactionAuthentication, "anyInDatabase:withPaymentTransactionPID:", *(a1[4] + 8), [v2 persistentID]);
    *(*(a1[6] + 8) + 24) = [v4 reset];
  }

  v5 = *(*(a1[6] + 8) + 24);

  return v5;
}

void sub_100171F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100171F88(void *a1)
{
  v2 = [Pass anyInDatabase:*(a1[4] + 8) withUniqueID:a1[5]];
  v3 = v2;
  if (v2)
  {
    *(*(a1[6] + 8) + 24) = +[BarcodeFetch backgroundFetchRetryLevelForPassPID:inDatabase:](BarcodeFetch, "backgroundFetchRetryLevelForPassPID:inDatabase:", [v2 persistentID], *(a1[4] + 8));
  }

  return 1;
}

void sub_100172114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10017212C(void *a1)
{
  v2 = [Pass anyInDatabase:*(a1[4] + 8) withUniqueID:a1[5]];
  v3 = v2;
  if (v2)
  {
    *(*(a1[7] + 8) + 24) = +[BarcodeFetch updateNextBackgroundFetchDate:withBackgroundFetchRetryLevel:forPassPID:inDatabase:](BarcodeFetch, "updateNextBackgroundFetchDate:withBackgroundFetchRetryLevel:forPassPID:inDatabase:", a1[6], a1[8], [v2 persistentID], *(a1[4] + 8));
  }

  return 1;
}

void sub_100172320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100172344(void *a1)
{
  v2 = [Pass anyInDatabase:*(a1[4] + 8) withUniqueID:a1[5]];
  v3 = v2;
  if (v2)
  {
    v4 = +[BarcodeFetch anyInDatabase:withPassPID:](BarcodeFetch, "anyInDatabase:withPassPID:", *(a1[4] + 8), [v2 persistentID]);
    v5 = v4;
    if (v4)
    {
      v6 = [v4 nextBackgroundFetchDate];
      v7 = *(a1[6] + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;

      *(*(a1[7] + 8) + 24) = 1;
    }
  }

  return 1;
}

void sub_1001724DC(uint64_t a1, void *a2)
{
  v3 = [a2 longLongValue];
  v4 = [Pass anyInDatabase:*(*(a1 + 32) + 8) withPersistentID:v3];
  v5 = *(a1 + 32);
  v9 = v4;
  v6 = [v4 pass];
  v7 = [v5 _registeredPass:v6];
  v8 = [v7 paymentPass];

  if (v8)
  {
    [*(a1 + 40) addObject:v8];
  }

  else
  {
    [BarcodeFetch removeBarcodeFetchForPassPID:v3 inDatabase:*(*(a1 + 32) + 8)];
  }
}

void sub_1001726D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001726EC(uint64_t a1)
{
  v2 = [*(a1 + 32) _dbPaymentApplicationWithDPANIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = *(*(a1 + 32) + 8);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1001727B0;
    v8[3] = &unk_1008405E8;
    v5 = v2;
    v6 = *(a1 + 48);
    v9 = v5;
    v10 = v6;
    sub_1005D44A8(v4, @"SELECT evaluated_policy_domain_state FROM payment_application_barcode_service_metadata WHERE payment_application_pid = ? LIMIT 1", v8);
  }

  return 1;
}

uint64_t sub_1001727B0(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) persistentID]);
  result = sub_10035E090(SQLiteDatabase, a2);
  if (result)
  {
    v5 = SQLiteCopyFoundationValueForStatementColumn(a2, 0);
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    return _objc_release_x1(v5, v7);
  }

  return result;
}

void sub_100172940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100172958(uint64_t a1)
{
  v2 = [*(a1 + 32) _dbPaymentApplicationWithDPANIdentifier:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = *(*(a1 + 32) + 8);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100172AC8;
    v16[3] = &unk_1008405E8;
    v5 = v2;
    v6 = *(a1 + 56);
    v17 = v5;
    v18 = v6;
    sub_1005D44A8(v4, @"DELETE FROM payment_application_barcode_service_metadata WHERE payment_application_pid = ?", v16);
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      v7 = *(*(a1 + 32) + 8);
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100172B20;
      v12[3] = &unk_1008490C8;
      v13 = v5;
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v14 = v8;
      v15 = v9;
      sub_1005D44A8(v7, @"INSERT INTO payment_application_barcode_service_metadata (payment_application_pid, evaluated_policy_domain_state) VALUES (?, ?)", v12);
    }
  }

  v10 = *(*(*(a1 + 56) + 8) + 24);

  return v10;
}

uint64_t sub_100172AC8(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) persistentID]);
  result = sub_10035DF04(SQLiteDatabase, a2);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_100172B20(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) persistentID]);
  SQLiteBindFoundationValueToStatement(a2, 2, *(a1 + 40));
  result = sub_10035DF04(SQLiteDatabase, a2);
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_100172CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100172D08(uint64_t a1, sqlite3_stmt *a2)
{
  if (sub_10035E090(SQLiteDatabase, a2))
  {
    v4 = SQLiteCopyFoundationValueForStatementColumn(a2, 0);
    *(*(*(a1 + 32) + 8) + 24) = [v4 unsignedIntegerValue];
  }
}

uint64_t sub_100172E20(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));

  return sub_10035E090(SQLiteDatabase, a2);
}

void sub_100172F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100172F34(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  if (sub_10035E090(SQLiteDatabase, a2))
  {
    v4 = SQLiteCopyFoundationValueForStatementColumn(a2, 0);
    *(*(*(a1 + 32) + 8) + 24) = [v4 unsignedIntegerValue];
  }
}

void sub_100173078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100173090(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 40));
  if (sub_10035E090(SQLiteDatabase, a2))
  {
    v4 = SQLiteCopyFoundationValueForStatementColumn(a2, 0);
    *(*(*(a1 + 32) + 8) + 24) = [v4 unsignedIntegerValue];
  }
}

uint64_t sub_1001731A0(sqlite3_int64 *a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, a1[4]);
  sqlite3_bind_int64(a2, 2, a1[5]);
  sqlite3_bind_int64(a2, 3, a1[6]);

  return sub_10035DF04(SQLiteDatabase, a2);
}

void sub_100173228(id a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 3);
  sqlite3_bind_int64(a2, 2, 1);

  sub_10035DF04(SQLiteDatabase, a2);
}

void sub_10017329C(id a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 0);
  sqlite3_bind_int64(a2, 2, 1);

  sub_10035DF04(SQLiteDatabase, a2);
}

void sub_100173310(id a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 0);
  sqlite3_bind_int64(a2, 2, 4);

  sub_10035DF04(SQLiteDatabase, a2);
}

uint64_t sub_1001733E4(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 4);
  sqlite3_bind_int64(a2, 2, 2);
  sqlite3_bind_int64(a2, 3, *(a1 + 32));

  return sub_10035DF04(SQLiteDatabase, a2);
}

uint64_t sub_1001734CC(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 0);
  sqlite3_bind_int64(a2, 2, 4);
  sqlite3_bind_int64(a2, 3, *(a1 + 32));

  return sub_10035DF04(SQLiteDatabase, a2);
}

uint64_t sub_1001735B4(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 0);
  sqlite3_bind_int64(a2, 2, 2);
  sqlite3_bind_int64(a2, 3, *(a1 + 32));

  return sub_10035DF04(SQLiteDatabase, a2);
}

void sub_10017363C(id a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, 0);
  sqlite3_bind_int64(a2, 2, 2);

  sub_10035DF04(SQLiteDatabase, a2);
}

uint64_t sub_10017370C(uint64_t a1)
{
  sub_10035E1C0(*(*(a1 + 32) + 8), @"DELETE FROM index_fetched_metadata");
  sub_10035E1C0(*(*(a1 + 32) + 8), @"DELETE FROM index_item");
  return 1;
}

void sub_10017508C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001750A4(void *a1)
{
  v2 = [DeviceEnvironment environmentForClient:a1[7] inDatabase:*(a1[4] + 8)];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[8];
  if (v5)
  {
    v6 = *(*(a1[6] + 8) + 40);
    if (!v6)
    {
LABEL_5:
      *v5 = 1;
      return 1;
    }

    if (([v6 isEqual:a1[5]] & 1) == 0)
    {
      v5 = a1[8];
      goto LABEL_5;
    }
  }

  return 1;
}

uint64_t sub_100175204(uint64_t a1)
{
  v2 = [Pass anyInDatabase:*(*(a1 + 32) + 8) withUniqueID:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = +[NFC anyInDatabase:forPassPID:](NFC, "anyInDatabase:forPassPID:", *(*(a1 + 32) + 8), [v2 persistentID]);
    v5 = [v4 nfcPayload];

    v6 = *(a1 + 48);
    if (v6 == [v5 payloadState])
    {
      v7 = 0;
    }

    else
    {
      [NFC insertOrUpdateNFCPayload:v5 forPass:v3 computedPayloadState:*(a1 + 48) inDatabase:*(*(a1 + 32) + 8)];
      v7 = 1;
    }

    **(a1 + 56) = v7;
  }

  return 1;
}

uint64_t sub_100175FDC(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) startDate];
  [v4 timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, 1, v5);

  v6 = [*(a1 + 32) endDate];
  [v6 timeIntervalSinceReferenceDate];
  sqlite3_bind_double(a2, 2, v7);

  result = sub_10035E090(SQLiteDatabase, a2);
  if (result)
  {
    do
    {
      v9 = SQLiteCopyFoundationValueForStatementColumn(a2, 0);
      v10 = SQLiteCopyFoundationValueForStatementColumn(a2, 1);

      v11 = SQLiteCopyFoundationIntegerValueForStatementColumn(a2, 2);
      v12 = +[TransactionSource anyInDatabase:withPersistentID:](TransactionSource, "anyInDatabase:withPersistentID:", *(*(a1 + 40) + 8), [v9 longLongValue]);
      v13 = [v12 paymentApplicationPID];
      v14 = +[PaymentApplication anyInDatabase:withPersistentID:](PaymentApplication, "anyInDatabase:withPersistentID:", *(*(a1 + 40) + 8), [v13 longLongValue]);
      v15 = +[Pass anyInDatabase:withPersistentID:](Pass, "anyInDatabase:withPersistentID:", *(*(a1 + 40) + 8), [v14 passPID]);
      if (v10 == 2 && ([v14 paymentNetworkIdentifier], (PKIsOpenLoopCredentialType() & 1) == 0))
      {
        [*(a1 + 48) setPresented:1];
      }

      else
      {
        if ([v15 associatedAccountFeatureIdentifier] == 2)
        {
          [*(a1 + 56) setPresented:1];
          v16 = [v11 integerValue];
          v17 = *(a1 + 56);
          goto LABEL_13;
        }

        if ([v15 associatedAccountFeatureIdentifier] == 1)
        {
          [*(a1 + 64) setPresented:1];
          v16 = [v11 integerValue];
          v17 = *(a1 + 64);
          goto LABEL_13;
        }

        v18 = [v14 paymentMethodType];
        if (v18 == 2)
        {
          [*(a1 + 80) setPresented:1];
          v16 = [v11 integerValue];
          v17 = *(a1 + 80);
LABEL_13:
          if (v16 == 4111)
          {
            [v17 setTransitSubtypePresented:1];
          }

          else
          {
            [v17 setPaymentSubtypePresented:1];
          }

          goto LABEL_16;
        }

        if (v18 == 1)
        {
          [*(a1 + 72) setPresented:1];
          v16 = [v11 integerValue];
          v17 = *(a1 + 72);
          goto LABEL_13;
        }
      }

LABEL_16:

      result = sub_10035E090(SQLiteDatabase, a2);
    }

    while ((result & 1) != 0);
  }

  return result;
}

void sub_100176408(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = [(SQLiteEntity *)[Flight alloc] initWithPersistentID:a2 inDatabase:*(*(a1 + 40) + 8)];
  v3 = [(Flight *)v4 flight];
  [v2 addObject:v3];
}

uint64_t sub_100176720(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [PassAssociatedFlight passUniqueIDsForFlightIdentifier:*(*(&v9 + 1) + 8 * v6) inDatabase:*(*(a1 + 40) + 8), v9];
        if (v7)
        {
          [*(a1 + 48) addObjectsFromArray:v7];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return 1;
}

void sub_100176B4C(uint64_t a1, uint64_t a2)
{
  v2 = [(SQLiteEntity *)[ShareAssociatedFlight alloc] initWithPersistentID:a2 inDatabase:*(*(a1 + 32) + 8)];
  [(SQLiteEntity *)v2 deleteFromDatabase];
}

void sub_100176E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_100176E60(uint64_t a1)
{
  v2 = [Flight insertOrUpdateFlight:*(a1 + 32) inDatabase:*(*(a1 + 40) + 8)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [SQLiteContainsPredicate containsPredicateWithProperty:@"unique_id" values:*(a1 + 48)];
    v7 = [(SQLiteEntity *)Pass queryWithDatabase:*(*(a1 + 40) + 8) predicate:v6];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_10017708C;
    v19[3] = &unk_100840898;
    v8 = *(a1 + 64);
    v19[4] = *(a1 + 40);
    v19[5] = v8;
    [v7 enumeratePersistentIDsUsingBlock:v19];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = *(a1 + 56);
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [ShareAssociatedFlight insertOrUpdateFlight:*(*(*(a1 + 64) + 8) + 40) senderAddress:*(*(&v15 + 1) + 8 * v13) inDatabase:*(*(a1 + 40) + 8), v15];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1005C2120();
    }
  }

  return v5 != 0;
}

id *sub_100177C24(id *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (*a4)
  {
    return [result[4] addObject:?];
  }

  return result;
}

void sub_100178690(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 inDatabase:*(a1 + 32)];
  [*(a1 + 40) addObject:v3];
}

void sub_100178D20(id a1, TransientUnit *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(TransientUnit *)v3 setValue:v4];
}

void sub_100178D84(id a1, TransientUnit *a2, id a3)
{
  v4 = a2;
  -[TransientUnit setPlanType:](v4, "setPlanType:", [a3 unsignedIntegerValue]);
}

void sub_10017B7AC(id a1, PKCreditAccountSummary *a2, id a3)
{
  v3 = a2;
  v4 = PKCurrencyStorageNumberToCurrencyDecimal();
  [(PKCreditAccountSummary *)v3 setPastDueAmount:v4];
}

const __CFString *PDSharingRelayServerEndpointStatusToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_100849688[a1 - 1];
  }
}

uint64_t PDSharingRelayServerEndpointStatusFromString(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 == @"nonexistent")
  {
    goto LABEL_4;
  }

  if (!v1)
  {
LABEL_14:
    v4 = 0;
    goto LABEL_15;
  }

  v3 = [@"nonexistent" isEqualToString:v1];

  if ((v3 & 1) == 0)
  {
    v5 = v2;
    if (v5 == @"created" || (v6 = v5, v7 = [@"created" isEqualToString:v5], v6, (v7 & 1) != 0))
    {
      v4 = 2;
      goto LABEL_15;
    }

    v8 = v6;
    if (v8 == @"attached" || (v9 = v8, v10 = [@"attached" isEqualToString:v8], v9, (v10 & 1) != 0))
    {
      v4 = 3;
      goto LABEL_15;
    }

    v11 = v9;
    if (v11 == @"deleted" || (v12 = v11, v13 = [@"deleted" isEqualToString:v11], v12, v13))
    {
      v4 = 4;
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_4:
  v4 = 1;
LABEL_15:

  return v4;
}

void sub_10017C194(uint64_t a1, uint64_t a2, void *a3, id *a4)
{
  v7 = *a4;
  v8 = a3;
  v9 = [[PDMerchantTokenMetadata alloc] initWithMerchantTokenId:v7];
  [*(a1 + 48) applyPropertySetters:*(a1 + 32) toObject:v9 withProperties:v8 values:a4];

  [*(a1 + 40) setObject:v9 forKey:v7];
}

void sub_10017C388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10017C3A0(uint64_t a1)
{
  v2 = [*(a1 + 56) _predicateForMerchantTokenWithId:*(a1 + 32)];
  v3 = [*(a1 + 56) anyInDatabase:*(a1 + 40) predicate:v2];
  if (v3)
  {
    v4 = [[PDMerchantTokenMetadata alloc] initWithMerchantTokenId:*(a1 + 32)];
    v5 = *(*(a1 + 48) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    v7 = [*(a1 + 56) _propertySettersForObjectWithoutMerchantTokenId];
    v8 = [v7 allKeys];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10017C4D0;
    v11[3] = &unk_1008496B0;
    v12 = v7;
    v13 = *(a1 + 48);
    v9 = v7;
    [v3 getValuesForProperties:v8 withApplier:v11];
  }

  return 1;
}

void sub_10017C4D0(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [objc_opt_class() applyPropertySetters:a1[4] toObject:*(*(a1[5] + 8) + 40) withProperties:v5 values:a3];
}

unint64_t sub_10017C62C(uint64_t a1)
{
  v2 = [*(a1 + 32) merchantTokenId];
  v3 = [*(a1 + 56) _predicateForMerchantTokenWithId:v2];
  v4 = [*(a1 + 56) anyInDatabase:*(a1 + 40) predicate:v3];
  if (v4)
  {
    v5 = v4;
    v6 = [(SQLiteEntity *)v4 setValuesWithDictionary:*(a1 + 48)];
  }

  else
  {
    v5 = [(SQLiteEntity *)[MerchantTokenMetadata alloc] initWithPropertyValues:*(a1 + 48) inDatabase:*(a1 + 40)];
    v6 = v5 != 0;
  }

  return v6;
}

void sub_10017CDE8(id a1, PDMerchantTokenMetadata *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PDMerchantTokenMetadata *)v3 setCurrentMerchantTokenPublicKeyFirstSeenDate:v4];
}

void sub_10017CE48(id a1, PDMerchantTokenMetadata *a2, id a3)
{
  v4 = a2;
  -[PDMerchantTokenMetadata setCurrentMerchantTokenPrivateKeyLikelyLost:](v4, "setCurrentMerchantTokenPrivateKeyLikelyLost:", [a3 BOOLValue]);
}

void sub_10017CEA0(id a1, PDMerchantTokenMetadata *a2, id a3)
{
  v4 = a2;
  -[PDMerchantTokenMetadata setNeedsMerchantTokenPublicKey:](v4, "setNeedsMerchantTokenPublicKey:", [a3 BOOLValue]);
}

void sub_10017CEF8(id a1, PDMerchantTokenMetadata *a2, id a3)
{
  v4 = a2;
  -[PDMerchantTokenMetadata setMerchantTokenPublicKeyRegistrationAttemptCount:](v4, "setMerchantTokenPublicKeyRegistrationAttemptCount:", [a3 integerValue]);
}

void sub_10017CF50(id a1, PDMerchantTokenMetadata *a2, id a3)
{
  v3 = a2;
  v4 = _DateForSQLValue();
  [(PDMerchantTokenMetadata *)v3 setLastMerchantTokenPublicKeyRegistrationAttemptDate:v4];
}

void sub_10017CFB0(id a1, PDMerchantTokenMetadata *a2, id a3)
{
  v4 = a2;
  -[PDMerchantTokenMetadata setMinimumNextMerchantTokenPublicKeyRegistrationAttemptDelay:](v4, "setMinimumNextMerchantTokenPublicKeyRegistrationAttemptDelay:", [a3 integerValue]);
}

void sub_10017D008(id a1, PDMerchantTokenMetadata *a2, id a3)
{
  v4 = a3;
  v6 = [(PDMerchantTokenMetadata *)a2 usageMetadata];
  v5 = [v4 integerValue];

  [v6 setUpdateSequenceNumber:v5];
}

void sub_10017D078(id a1, PDMerchantTokenMetadata *a2, id a3)
{
  v4 = a3;
  v6 = [(PDMerchantTokenMetadata *)a2 usageMetadata];
  v5 = _DateForSQLValue();

  [v6 setUpdateFirstSeenDate:v5];
}

void sub_10017D0EC(id a1, PDMerchantTokenMetadata *a2, id a3)
{
  v4 = a3;
  v6 = [(PDMerchantTokenMetadata *)a2 usageMetadata];
  v5 = [v4 integerValue];

  [v6 setFetchSequenceNumber:v5];
}

void sub_10017D15C(id a1, PDMerchantTokenMetadata *a2, id a3)
{
  v4 = a3;
  v6 = [(PDMerchantTokenMetadata *)a2 usageMetadata];
  v5 = _DateForSQLValue();

  [v6 setLastFetchDate:v5];
}

void sub_10017D1D0(id a1, PDMerchantTokenMetadata *a2, id a3)
{
  v4 = a3;
  v6 = [(PDMerchantTokenMetadata *)a2 usageMetadata];
  v5 = [v4 integerValue];

  [v6 setFetchAttemptCount:v5];
}

void sub_10017D240(id a1, PDMerchantTokenMetadata *a2, id a3)
{
  v4 = a3;
  v6 = [(PDMerchantTokenMetadata *)a2 usageMetadata];
  v5 = [v4 integerValue];

  [v6 setFetchResponseCount:v5];
}

void sub_10017D2B0(id a1, PDMerchantTokenMetadata *a2, id a3)
{
  v4 = a3;
  v5 = [(PDMerchantTokenMetadata *)a2 usageMetadata];
  [v5 setLastFetchAttemptFailureReason:v4];
}

void sub_10017D310(id a1, PDMerchantTokenMetadata *a2, id a3)
{
  v4 = a3;
  v6 = [(PDMerchantTokenMetadata *)a2 usageMetadata];
  v5 = _DateForSQLValue();

  [v6 setLastFetchAttemptDate:v5];
}

const __CFString *PKWatchExpressStatusToString(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"PKWatchExpressStatusUnknown";
  }

  else
  {
    return off_10084A2C0[a1 - 1];
  }
}

id PDExpressTransactionQueue(uint64_t a1)
{
  if (qword_100924308 != -1)
  {
    sub_1005C6458();
  }

  v2 = qword_100924310;

  return v2;
}

void sub_10017D3F0(id a1)
{
  v1 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  attr = dispatch_queue_attr_make_with_autorelease_frequency(v1, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);

  v2 = dispatch_queue_create("com.apple.passd.express-transaction", attr);
  v3 = qword_100924310;
  qword_100924310 = v2;
}

void sub_10017D5D8(uint64_t result)
{
  v1 = *(result + 40);
  if ((*(v1 + 89) & 1) == 0)
  {
    *(v1 + 89) = 1;
    *(*(result + 40) + 168) = 1;
    sub_1005C3040(*(result + 40));
  }
}

void sub_10017D600(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 64) & 1) == 0)
  {
    __break(1u);
  }

  *(v1 + 64) = 0;
  v3 = *(*(a1 + 32) + 56);
  v4 = *(a1 + 32);
  v5 = *(v4 + 56);
  *(v4 + 56) = 0;

  v6 = *(*(a1 + 32) + 48);
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = 0;

  if (v3)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = [v3 count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: Attempting to restore %ld express passes...", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v48 = 0x2020000000;
    v49 = 0;
    v43 = 0;
    v44 = &v43;
    v45 = 0x2020000000;
    v46 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x2020000000;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10017DA8C;
    v24[3] = &unk_100849918;
    v11 = *(a1 + 32);
    v26 = &v43;
    v27 = &v39;
    v24[4] = v11;
    v25 = &stru_1008498F0;
    v28 = &v35;
    p_buf = &buf;
    v30 = &v31;
    [v3 enumerateKeysAndObjectsUsingBlock:v24];
    if ((*(*(&buf + 1) + 24) & 1) == 0 && (sub_1005C3040(*(a1 + 32)), (*(*(&buf + 1) + 24) & 1) == 0) || v44[3] || v40[3] || v36[3] || v32[3])
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      v13 = [NSNumber numberWithUnsignedInteger:v44[3]];
      v14 = [v13 stringValue];
      [v12 setObject:v14 forKeyedSubscript:@"MissingPassCount"];

      v15 = [NSNumber numberWithUnsignedInteger:v40[3]];
      v16 = [v15 stringValue];
      [v12 setObject:v16 forKeyedSubscript:@"PaymentPassCastFailureCount"];

      v17 = [NSNumber numberWithUnsignedInteger:v36[3]];
      v18 = [v17 stringValue];
      [v12 setObject:v18 forKeyedSubscript:@"ExpressPassInfoInitFailureCount"];

      v19 = [NSNumber numberWithUnsignedInteger:v32[3]];
      v20 = [v19 stringValue];
      [v12 setObject:v20 forKeyedSubscript:@"ExpressPassConfigInitFailureCount"];

      v21 = [NSNumber numberWithBool:*(*(&buf + 1) + 24)];
      v22 = [v21 stringValue];
      [v12 setObject:v22 forKeyedSubscript:@"AddedAnyMutation"];

      v23 = objc_alloc_init(PKAutoBugCaptureReporter);
      [v23 reportIssueWithDomain:PKAutoBugCaptureReporterDomainWallet type:@"Express" subtype:@"DatabaseRestoration" subtypeContext:@"QueueMutationFailure" payload:v12];
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v43, 8);
    _Block_object_dispose(&buf, 8);
    objc_autoreleasePoolPop(v9);
  }
}

void sub_10017DA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 144), 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_10017DA8C(void *a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = [*(a1[4] + 8) passWithUniqueIdentifier:v17];
  v7 = v6;
  if (!v6)
  {
    ++*(*(a1[6] + 8) + 24);
    goto LABEL_17;
  }

  v8 = [v6 passType];
  if (v8 == 1)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (v8 == 1)
  {
    v11 = [[PKExpressPassInformation alloc] initForPaymentPass:v7 withTechologyTest:a1[5]];
    if (!v11)
    {
      ++*(*(a1[8] + 8) + 24);
      goto LABEL_15;
    }

    if (v5 && (v12 = v5[1]) != 0)
    {
      v13 = v12;
      v14 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v11 isNFCExpressEnabled:objc_msgSend(v13 isUWBExpressEnabled:{"isNFCExpressEnabled"), objc_msgSend(v13, "isUWBExpressEnabled")}];
      if (!v14)
      {
LABEL_10:
        ++*(*(a1[10] + 8) + 24);
LABEL_11:

LABEL_15:
        goto LABEL_16;
      }
    }

    else
    {
      v14 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v11 forSecureElementPass:v7];
      v13 = 0;
      if (!v14)
      {
        goto LABEL_10;
      }
    }

    v15 = objc_alloc_init(PDExpressMutationRequest);
    v16 = v15;
    if (v15)
    {
      sub_1005C646C(v15, v17);
    }

    else
    {
      sub_1005C2154(0, v14);
    }

    sub_1005C3120(a1[4], v16);
    *(*(a1[9] + 8) + 24) = 1;

    goto LABEL_11;
  }

  ++*(*(a1[7] + 8) + 24);
LABEL_16:

LABEL_17:
}

void sub_10017DC94(uint64_t a1)
{
  v1 = (a1 + 40);
  os_unfair_lock_lock((*(a1 + 40) + 104));
  v2 = [*(*v1 + 96) count];
  os_unfair_lock_unlock((*v1 + 104));
  if (v2)
  {
    sub_1005C6498(v1);
  }
}

void sub_10017DCEC(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10017DD90;
  v3[3] = &unk_100849940;
  v2 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  sub_1005C3518(v2, 0, v3);
}

uint64_t sub_10017DD90(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) passType] == 1)
  {
    v4 = [*(a1 + 32) devicePrimaryContactlessPaymentApplication];
    v5 = [v4 applicationIdentifier];
    v6 = [v4 subcredentials];
    v7 = [v6 anyObject];
    v8 = [v7 identifier];

    if (v5 && ([v3 isAssociated] & 1) == 0)
    {
      [v3 associateWithApplicationIdentifier:v5 keyIdentifier:v8 terminalReaderIdentifier:0 passUniqueIdentifier:*(a1 + 40)];
    }
  }

  else
  {
    v5 = 0;
    v8 = 0;
  }

  [v3 receiveEvents:4];
  [v3 resolve];

  return 1;
}

void sub_10017DE88(void **a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
LABEL_8:

    return;
  }

  if (v3)
  {
    if (([v3 isProcessing] & 1) == 0 && objc_msgSend(v4, "standaloneTransactionType"))
    {
      v5 = [v4 isAssociated];
      if (v5)
      {
        sub_1005C64F8(v4, v9, a1);
      }

      v6 = PDExpressTransactionQueue(v5);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10017DF8C;
      block[3] = &unk_10083C420;
      block[4] = a1;
      v8 = v4;
      dispatch_async(v6, block);
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_10017DF9C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    if (!v5 || [v5 isProcessing] || (v7 = objc_msgSend(v6, "standaloneTransactionType")) == 0)
    {
      __break(1u);
    }

    v8 = v7;
    v9 = [v6 passUniqueIdentifier];
    v10 = PKLogFacilityTypeGetObject();
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v18 = v8;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: presenting standalone transaction %ld for %@...", buf, 0x16u);
      }

      v12 = PDOSTransactionCreate("PDExpressPassManager");
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1001837F8;
      v14[3] = &unk_100849DA8;
      v15 = v12;
      v16 = v3;
      v11 = v12;
      sub_1001F5774(WeakRetained, v6, v3, v14);
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1005C658C();
    }
  }
}

void sub_10017E164(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = *(a1 + 208);
      v6 = [v3 copy];
      v7 = objc_retainBlock(v6);
      [v5 addObject:v7];
    }

    if (*(a1 + 192) == 1)
    {
      sub_1005C37A8(a1, 0);
    }

    else
    {
      *(a1 + 192) = 1;
      sub_1005C37A8(a1, 0);
      v8 = *(a1 + 200);
      if (v8)
      {
        dispatch_source_cancel(v8);
        v9 = *(a1 + 200);
        *(a1 + 200) = 0;
      }

      objc_initWeak(&location, a1);
      v10 = *(a1 + 24);
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_10017E2BC;
      v11[3] = &unk_1008499B8;
      objc_copyWeak(&v12, &location);
      [v10 accessSecureElementManagerSessionWithHandler:v11];
      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }
  }
}

void sub_10017E2A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10017E2BC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[9];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017E390;
    block[3] = &unk_100849990;
    block[4] = WeakRetained;
    v8 = v3;
    objc_copyWeak(&v9, (a1 + 32));
    dispatch_sync(v6, block);
    objc_destroyWeak(&v9);
  }
}

void sub_10017E390(uint64_t a1)
{
  *(*(a1 + 32) + 192) = 0;
  if ([*(*(a1 + 32) + 208) count])
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [*(*(a1 + 32) + 208) copy];
    [*(*(a1 + 32) + 208) removeAllObjects];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v35;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v35 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(&v34 + 1) + 8 * i) + 16))();
        }

        v6 = [v4 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v6);
    }

    objc_autoreleasePoolPop(v2);
  }

  v9 = *(a1 + 32);
  if (*(v9 + 152) == 1)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 40);
    if (v11)
    {
      sub_1005C381C(*(a1 + 32), v11);
    }

    else
    {
      v12 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1005C65FC();
      }

      if ([*(*(a1 + 32) + 216) count])
      {
        v30 = [*(*(a1 + 32) + 216) copy];
        [*(*(a1 + 32) + 216) removeAllObjects];
        sub_1005C4678(*(a1 + 32), v30);
      }
    }

    objc_autoreleasePoolPop(v10);
    v9 = *(a1 + 32);
  }

  if (*(v9 + 168) == 1)
  {
    v13 = *(a1 + 40);
    if (v13)
    {
      sub_10017E7BC(v9, v13);
    }

    else
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_1005C6630();
      }
    }
  }

  v15 = *(a1 + 32);
  if ((*(v15 + 152) & 1) == 0)
  {
    *(v15 + 160) = 0;
    v15 = *(a1 + 32);
  }

  if ((*(v15 + 168) & 1) == 0)
  {
    *(v15 + 176) = 0;
    v15 = *(a1 + 32);
  }

  v16 = *(v15 + 184);
  v17 = *(a1 + 32);
  v18 = *(v17 + 184);
  *(v17 + 184) = 0;

  v19 = *(a1 + 32);
  if (*(v19 + 192) == 1)
  {
    if (*(v19 + 152))
    {
      ++*(v19 + 160);
      v19 = *(a1 + 32);
    }

    if (*(v19 + 168) == 1)
    {
      ++*(v19 + 176);
    }
  }

  else
  {
    if (*(v19 + 152))
    {
      v20 = *(v19 + 160);
      if (v20 >= 4)
      {
        sub_1005C3278(v19);
      }
    }

    else
    {
      if ((*(v19 + 168) & 1) == 0)
      {
        goto LABEL_45;
      }

      v20 = *(v19 + 176);
    }

    if (v20 > 4)
    {
      v22 = 3600000000000;
      v21 = 86400000000000;
    }

    else
    {
      v21 = qword_10068E5A8[v20];
      v22 = qword_10068E5D0[v20];
    }

    v23 = *(a1 + 32);
    if (*(v23 + 152) == 1)
    {
      ++*(v23 + 160);
      v23 = *(a1 + 32);
    }

    if (*(v23 + 168) == 1)
    {
      ++*(v23 + 176);
      v23 = *(a1 + 32);
    }

    v24 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v23 + 72));
    v25 = *(a1 + 32);
    v26 = *(v25 + 200);
    *(v25 + 200) = v24;

    v27 = *(*(a1 + 32) + 200);
    v28 = dispatch_time(0, v21);
    dispatch_source_set_timer(v27, v28, 0xFFFFFFFFFFFFFFFFLL, v22);
    v29 = *(*(a1 + 32) + 200);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10017EBD4;
    v31[3] = &unk_100844AB8;
    v32 = v16;
    objc_copyWeak(&v33, (a1 + 48));
    dispatch_source_set_event_handler(v29, v31);
    dispatch_resume(*(*(a1 + 32) + 200));
    objc_destroyWeak(&v33);
  }

LABEL_45:
}

void sub_10017E7BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    goto LABEL_51;
  }

  v4 = *(a1 + 89);
  if ((v4 & 1) == 0)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: express manager disabled.", v18, 2u);
    }
  }

  if (*(a1 + 226) == 1)
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: express mode disabled - device authentication is locked out.", v18, 2u);
    }

    if (*(a1 + 227) != 1)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (*(a1 + 227))
  {
LABEL_12:
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: express mode disabled - device in lost mode.", v18, 2u);
    }

    goto LABEL_15;
  }

  if (v4)
  {
    os_unfair_lock_lock((a1 + 104));
    v12 = [*(a1 + 96) count];
    v13 = v12 == 0;
    if (!v12)
    {
      v14 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: express mode disabled - no express passes.", v18, 2u);
      }
    }

    os_unfair_lock_unlock((a1 + 104));
    if (*(a1 + 137) == 1)
    {
      v15 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: express mode disabled - contactless interface suppressed.", v18, 2u);
      }

      [*(a1 + 16) logAssertionsOfTypes:&off_1008A4848];
      v13 = 1;
    }

    if (*(a1 + 136))
    {
      v8 = !v13;
    }

    else
    {
      v17 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: express mode disabled - nfc radio disabled.", v18, 2u);
      }

      v8 = 0;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = -1;
LABEL_16:
  if (*(a1 + 144) != v8 || *(a1 + 138) == 1)
  {
    v9 = [v3 setExpressModesControlState:v8];
    if (v9)
    {
      if (v8 == -1)
      {
        v10 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1005C6664();
        }
      }

      else if (v8)
      {
        v10 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1005C6744();
        }
      }

      else
      {
        v10 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_1005C66D4();
        }
      }

      v16 = 1;
      goto LABEL_50;
    }

    *(a1 + 138) = 0;
    *(a1 + 144) = v8;
    if (v8 == -1)
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        v11 = "PKExpressPassManager: express mode forbidden.";
        goto LABEL_48;
      }
    }

    else if (v8)
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        v11 = "PKExpressPassManager: express mode enabled.";
        goto LABEL_48;
      }
    }

    else
    {
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        v11 = "PKExpressPassManager: express mode disabled.";
LABEL_48:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v11, v18, 2u);
      }
    }

    v16 = 0;
LABEL_50:

    *(a1 + 168) = v16;
    goto LABEL_51;
  }

  *(a1 + 168) = 0;
LABEL_51:
}

void sub_10017EBD4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    sub_10017E164(WeakRetained, 0);
    WeakRetained = v2;
  }
}

void sub_10017EC1C(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 expressPassManager:a1[4] willProcessPaymentApplicationsUpdateFromPriorPaymentApplications:a1[5] toPaymentApplications:a1[6] forPassUniqueIdentifier:a1[7]];
  }
}

void sub_10017EC80(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    os_unfair_lock_lock((a1 + 120));
    v5 = [*(a1 + 128) allObjects];
    os_unfair_lock_unlock((a1 + 120));
    v6 = *(a1 + 80);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100182224;
    v8[3] = &unk_10083DCB8;
    v9 = v5;
    v10 = v4;
    v7 = v5;
    dispatch_async(v6, v8);
  }
}

void sub_10017ED60(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 104));
  v2 = [*(*(a1 + 32) + 96) objectForKey:*(a1 + 40)];
  v3 = v2 != 0;

  os_unfair_lock_unlock((*(a1 + 32) + 104));
  v4 = *(*(a1 + 32) + 80);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10017EE34;
  v5[3] = &unk_100849A08;
  v6 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v4, v5);
}

void sub_10017EE4C(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 104));
  v2 = [*(*(a1 + 32) + 96) objectForKeyedSubscript:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 104));
  v3 = *(*(a1 + 32) + 80);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10017EF28;
  v6[3] = &unk_10083C820;
  v4 = *(a1 + 48);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

void sub_10017EF3C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  os_unfair_lock_lock((*(a1 + 32) + 104));
  v3 = *(*(a1 + 32) + 96);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10017F088;
  v11[3] = &unk_100849A30;
  v13 = *(a1 + 48);
  v4 = v2;
  v12 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v11];
  os_unfair_lock_unlock((*(a1 + 32) + 104));
  v5 = *(*(a1 + 32) + 80);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10017F104;
  v8[3] = &unk_10083C820;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

void sub_10017F088(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v4 = [v7 passInformation];
  v5 = [v4 cardType];
  v6 = *(a1 + 40);

  if (v5 == v6)
  {
    [*(a1 + 32) addObject:v7];
  }
}

void sub_10017F104(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

void sub_10017F15C(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableSet);
  os_unfair_lock_lock((*(a1 + 32) + 104));
  v3 = [*(*(a1 + 32) + 96) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 104));
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10017F2B4;
  v11[3] = &unk_100849A30;
  v13 = *(a1 + 48);
  v4 = v2;
  v12 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v11];
  v5 = *(*(a1 + 32) + 80);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10017F4C0;
  v8[3] = &unk_10083C820;
  v6 = *(a1 + 40);
  v9 = v4;
  v10 = v6;
  v7 = v4;
  dispatch_async(v5, v8);
}

void sub_10017F2B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 passInformation];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10017F378;
  v8[3] = &unk_100849A58;
  v6 = *(a1 + 32);
  v11 = *(a1 + 40);
  v9 = v6;
  v10 = v4;
  v7 = v4;
  [v5 enumerateCredentialsWithHandler:v8];
}

void sub_10017F378(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        if ([v11 supportsExpress] && objc_msgSend(v11, "technologyType") == *(a1 + 48))
        {
          v12 = *(a1 + 32);
          v13 = [*(a1 + 40) passInformation];
          [v12 addObject:v13];

          *a4 = 1;
          goto LABEL_12;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:
}

void sub_10017F4C0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2);
}

void sub_10017F518(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1 && v3)
  {
    v5 = *(a1 + 72);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10017F5C4;
    v6[3] = &unk_10083DCB8;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_10017F5C4(uint64_t a1)
{
  v2 = sub_1005C4BF0(*(a1 + 32));
  v3 = *(*(a1 + 32) + 80);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10017F684;
  v6[3] = &unk_10083C820;
  v4 = *(a1 + 40);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  dispatch_async(v3, v6);
}

void sub_10017F6A0(void *a1)
{
  os_unfair_lock_lock((a1[4] + 104));
  v2 = [*(a1[4] + 96) copy];
  os_unfair_lock_unlock((a1[4] + 104));
  sub_1005C4D50(a1[4], a1[5], v2, a1[6]);
}

void sub_10017F714(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 passUniqueIdentifier];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 passUniqueIdentifier];
    [v4 setObject:v6 forKey:v5];
  }
}

void sub_10017F794(uint64_t a1)
{
  v2 = [*(a1 + 40) uniqueID];
  os_unfair_lock_lock((*(a1 + 48) + 104));
  v3 = [*(*(a1 + 48) + 96) objectForKey:v2];
  os_unfair_lock_unlock((*(a1 + 48) + 104));
  if (v3)
  {
    v4 = objc_alloc_init(PDExpressMutationRequest);
    v6 = v4;
    if (v4)
    {
      objc_setProperty_nonatomic_copy(v4, v5, v2, 16);
      v6->_userInitiated = 0;
    }

    v7 = [[PKExpressPassConfiguration alloc] initForPaymentPass:*(a1 + 40) isNFCExpressEnabled:objc_msgSend(v3 isUWBExpressEnabled:"isNFCExpressEnabled") withTechologyTest:{objc_msgSend(v3, "isUWBExpressEnabled"), &stru_100849AA0}];
    v8 = objc_alloc_init(PDExpressMutationRequest);
    v9 = v8;
    if (v8)
    {
      sub_1005C646C(v8, v2);
    }

    else
    {
      sub_1005C2154(0, v7);
    }

    v10 = *(a1 + 48);
    v12[0] = v6;
    v12[1] = v9;
    v11 = [NSArray arrayWithObjects:v12 count:2];
    sub_1005C52EC(v10, v11);
  }
}

void *sub_10017F950(void *a1)
{
  v1 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100005B60;
  v11 = sub_10000B1BC;
  v12 = sub_100103CB4(PDSECredentialNode);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100185F90;
  v6[3] = &unk_10084A050;
  v6[4] = &v7;
  [v1 enumerateKeysAndObjectsUsingBlock:v6];
  v2 = v8[5];
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = sub_100103CB4(PDSECredentialNode);
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_10017FA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10017FA78(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    if (v3)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 1;
      v6 = [v4 passUniqueIdentifier];
      v7 = [v5 passInformation];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100185D0C;
      v11[3] = &unk_10084A028;
      v8 = v6;
      v12 = v8;
      v13 = v7;
      v14 = v5;
      v16 = &v17;
      v15 = v3;
      [v7 enumerateCredentialsUsingBlock:v11];
      v9 = *(v18 + 24);

      _Block_object_dispose(&v17, 8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

void sub_10017FBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017FBE4(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  context = objc_autoreleasePoolPush();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100186030;
  v16[3] = &unk_10084A078;
  v5 = objc_alloc_init(NSMutableDictionary);
  v17 = v5;
  sub_1005C1540(v3, v16);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1001860D4;
  v14[3] = &unk_10084A0C0;
  v6 = v5;
  v15 = v6;
  v7 = objc_retainBlock(v14);
  while ([v6 count])
  {
    v8 = [v6 keyEnumerator];
    v9 = [v8 nextObject];

    v10 = [v4 sortedPassUniqueIdentifiersForGroupContainingPassWithUniqueIdentifier:v9];
    if ([v10 count])
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100186174;
      v12[3] = &unk_10084A0E8;
      v13 = v7;
      [v10 enumerateObjectsUsingBlock:v12];
      [v6 removeObjectsForKeys:v10];
    }

    else
    {
      (v7[2])(v7, v9, 0);
      [v6 removeObjectForKey:v9];
    }
  }

  objc_autoreleasePoolPop(context);
}

id sub_10017FE18(void *a1, uint64_t a2)
{
  v3 = a1;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10018618C;
  v18[3] = &unk_10084A110;
  v4 = objc_alloc_init(NSMutableDictionary);
  v19 = v4;
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100186210;
  v16 = &unk_10084A138;
  v5 = objc_retainBlock(v18);
  v17 = v5;
  v6 = objc_retainBlock(&v13);
  sub_100103E10(v3, v6);
  v7 = sub_1005C1844(v3, 0);

  v8 = [PKGetClassNFHardwareManager() sharedHardwareManagerWithNoUI];
  v9 = [v8 validateExpressPassCompatibilityWithConfig:v7 outError:a2];

  if (v9)
  {
    if (sub_10010389C(PDSECredentialConflict, v9, v6))
    {
      v10 = [v4 allValues];
      goto LABEL_9;
    }

    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1005C67B4();
    }
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1005C6824();
    }
  }

  v10 = 0;
LABEL_9:

  return v10;
}

uint64_t sub_100180028(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = *v9;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v3);
          }

          if (sub_100180308(*(*(&v8 + 1) + 8 * i)))
          {
            v4 = 1;
            goto LABEL_12;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

void sub_100180138(id *a1, void *a2)
{
  v3 = a2;
  v4 = sub_1000044D8(v3);
  v5 = a1[4];
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_7;
  }

  if (v6 && v5)
  {
    v8 = [v5 isEqualToString:v6];

    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_7:
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1001803E0;
    v14 = &unk_100849AC8;
    v15 = a1[4];
    v16 = a1[5];
    sub_100103350(v3, &v11);
    [a1[6] addObjectsFromArray:{a1[5], v11, v12, v13, v14}];
    [a1[5] removeAllObjects];

    v9 = v15;
    goto LABEL_8;
  }

LABEL_10:
  if (!sub_100180308(v3))
  {
    goto LABEL_13;
  }

  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    *buf = 138412546;
    v18 = v7;
    v19 = 2112;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: ignoring conflicts with %@ unrelated to pass %@.", buf, 0x16u);
  }

LABEL_8:

LABEL_13:
}

uint64_t sub_100180308(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001862CC;
    v5[3] = &unk_10084A160;
    v5[4] = &v6;
    sub_100103350(v1, v5);
    v3 = *(v7 + 24);
    _Block_object_dispose(&v6, 8);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

void sub_1001803C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001803E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  v9 = *(a1 + 32);
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v9)
  {

    goto LABEL_8;
  }

  v12 = [v9 isEqualToString:v10];

  if ((v12 & 1) == 0)
  {
LABEL_8:
    [*(a1 + 40) addObject:v11];
  }

LABEL_9:
}

void sub_1001804CC(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 104));
  v4 = [*(*(a1 + 32) + 96) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 104));
  v2 = *(a1 + 40);
  v3 = sub_100180560(v4);
  (*(v2 + 16))(v2, 1, v3);
}

id sub_100180560(void *a1)
{
  v1 = a1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100185D04;
  v4[3] = &unk_100849A80;
  v2 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v1, "count")}];
  v5 = v2;
  [v1 enumerateKeysAndObjectsUsingBlock:v4];

  return v2;
}

void sub_100180630(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 104));
  v5 = [*(*(a1 + 32) + 96) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 104));
  v2 = *(a1 + 40);
  v3 = sub_100180560(v5);
  v4 = [v3 pk_setByApplyingBlock:&stru_100849B58];
  (*(v2 + 16))(v2, 1, v4);
}

void sub_1001806EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = [a3 pk_setByApplyingBlock:&stru_100849B78];
  (*(v4 + 16))(v4, a2, v5);
}

void sub_100180768(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 104));
  v4 = [*(*(a1 + 32) + 96) copy];
  os_unfair_lock_unlock((*(a1 + 32) + 104));
  v2 = *(a1 + 40);
  v3 = sub_100180560(v4);
  (*(v2 + 16))(v2, 1, v3);
}

uint64_t sub_1001807FC(void *a1, void *a2, void *a3, void *a4, void *a5, int a6, char a7)
{
  v100 = a1;
  v99 = a2;
  v96 = a3;
  v11 = a4;
  v12 = a5;
  v97 = v12;
  if (!v12)
  {
    goto LABEL_47;
  }

  v13 = v12;
  v14 = v12[3];
  if (!v14)
  {
    v20 = v13[6];
    if (v20)
    {
      v107[0] = _NSConcreteStackBlock;
      v107[1] = 3221225472;
      v107[2] = sub_100187228;
      v107[3] = &unk_100849A30;
      v109 = v20;
      v21 = objc_alloc_init(NSMutableArray);
      v108 = v21;
      [v100 enumerateKeysAndObjectsUsingBlock:v107];
      [v100 removeObjectsForKeys:v21];
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v22 = v21;
      v23 = [v22 countByEnumeratingWithState:&v103 objects:v126 count:16];
      if (v23)
      {
        v24 = *v104;
        do
        {
          for (i = 0; i != v23; i = i + 1)
          {
            if (*v104 != v24)
            {
              objc_enumerationMutation(v22);
            }

            [v11 removeObject:*(*(&v103 + 1) + 8 * i)];
          }

          v23 = [v22 countByEnumeratingWithState:&v103 objects:v126 count:16];
        }

        while (v23);
      }

      v13 = v97;
    }

    v101 = v13[2];
    if (v101)
    {
      v26 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v128 = v101;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: Removing pass %@ from express state", buf, 0xCu);
      }

      [v100 removeObjectForKey:v101];
      [v11 removeObject:v101];
      goto LABEL_48;
    }

LABEL_47:
    v101 = 0;
LABEL_48:
    v50 = sub_10017F950(v100);
    sub_10017FBE4(v50, v99);
    v102 = 0;
    v51 = sub_10017FE18(v50, &v102);
    if (sub_100180028(v51))
    {
      v52 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        sub_1005C6A80();
      }

      [v100 removeAllObjects];
    }

    v53 = 1;
    goto LABEL_60;
  }

  v15 = v14;
  v16 = PKLogFacilityTypeGetObject();
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (a6)
  {
    if (v17)
    {
      v18 = v97[2];
      *buf = 138412290;
      v128 = v18;
      v19 = v18;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: Adding pass %@ to express state.", buf, 0xCu);
    }
  }

  else if (v17)
  {
    v27 = v97[2];
    *buf = 138412290;
    v128 = v27;
    v28 = v27;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: Adding pass %@ to express state without disabling auth.", buf, 0xCu);
  }

  context = objc_autoreleasePoolPush();
  v93 = [v15 passUniqueIdentifier];
  v29 = [v99 passWithUniqueIdentifier:v93];
  v95 = v29;
  if (v29)
  {
    v30 = [v29 passType];
    v31 = v95;
    if (v30 != 1)
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v32 = v31;
  if (a6)
  {
    v33 = v97[4];
  }

  else
  {
    v33 = 0;
  }

  v94 = v32;
  v34 = v15;
  v35 = v96;
  v91 = v33;
  v36 = v33;
  v101 = v34;
  v37 = [v34 passUniqueIdentifier];
  v38 = sub_100103CB4(PDSECredentialNode);
  v39 = sub_10017FA78(v38, v34);
  if (v39)
  {
    v112 = 0u;
    v113 = 0u;
    v111 = 0u;
    v110 = 0u;
    v40 = [v94 devicePaymentApplications];
    v41 = [v40 countByEnumeratingWithState:&v110 objects:buf count:16];
    if (v41)
    {
      v42 = *v111;
      do
      {
        for (j = 0; j != v41; j = j + 1)
        {
          if (*v111 != v42)
          {
            objc_enumerationMutation(v40);
          }

          sub_100187334(v38, *(*(&v110 + 1) + 8 * j));
        }

        v41 = [v40 countByEnumeratingWithState:&v110 objects:buf count:16];
      }

      while (v41);
    }
  }

  else
  {
    v40 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      sub_1005C6858();
    }
  }

  v44 = objc_alloc_init(NSMutableString);
  [v44 appendString:@"["];
  if (!v39)
  {
    [v44 appendString:@"]"];
LABEL_56:

    v53 = 0;
    goto LABEL_57;
  }

  *v139 = 0;
  *&v139[8] = v139;
  *&v139[16] = 0x2020000000;
  LOBYTE(v140) = 1;
  v116 = _NSConcreteStackBlock;
  v117 = 3221225472;
  v118 = sub_100187628;
  v119 = &unk_10084A200;
  v121 = v139;
  v45 = v44;
  v120 = v45;
  sub_1005C161C(v38, &v116);

  _Block_object_dispose(v139, 8);
  [v45 appendString:@"]"];
  v46 = sub_1005C1844(v38, 0);
  if (!v46)
  {
    v54 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      sub_1005C6A14();
    }

    goto LABEL_56;
  }

  v47 = [v35 disableAuthorizationForPasses:v46 authorization:v36];
  v48 = PKLogFacilityTypeGetObject();
  v49 = v48;
  if (v47)
  {
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      *v139 = 138412802;
      *&v139[4] = v37;
      *&v139[12] = 2112;
      *&v139[14] = v45;
      *&v139[22] = 2112;
      v140 = v47;
      _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "PKExpressPassManager: failed to disable authorization for pass %@ (%@) - %@.", v139, 0x20u);
    }

    goto LABEL_56;
  }

  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *v139 = 138412546;
    *&v139[4] = v37;
    *&v139[12] = 2112;
    *&v139[14] = v45;
    _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: disabled authorization for pass %@ (%@).", v139, 0x16u);
  }

  v88 = v100;
  v80 = v99;
  v81 = v35;
  v79 = v11;
  v83 = v94;
  v84 = v101;
  v82 = [v84 passUniqueIdentifier];
  v115 = 0;
  v56 = objc_autoreleasePoolPush();
  v57 = [v84 passInformation];
  v58 = sub_10018659C(v83, v57, &v115);

  if ((v58 & 1) == 0)
  {
    objc_autoreleasePoolPop(v56);
    goto LABEL_70;
  }

  v59 = [v84 passInformation];
  v60 = sub_10018671C(v59, v81, &v115);

  objc_autoreleasePoolPop(v56);
  if (!v60)
  {
LABEL_70:
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413314;
      v128 = v82;
      v129 = 1024;
      v130 = v83 != 0;
      v131 = 1024;
      v132 = v58;
      v133 = 1024;
      v134 = 0;
      v135 = 1024;
      v136 = v115;
      _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "PKExpressPassManager: Unable to add pass %@ to express state (in database: %d, express capable: %d, can be express %d, suspended %d)", buf, 0x24u);
    }

    v53 = 0;
    goto LABEL_118;
  }

  [v88 setObject:v84 forKeyedSubscript:v82];
  if (v115 == 1 && ([v79 addObject:v82], (v115 & 1) != 0))
  {
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_76;
    }

    *buf = 138412290;
    v128 = v82;
    v61 = "PKExpressPassManager: Adding pass %@ to express state (suspended).";
  }

  else
  {
    if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_76;
    }

    *buf = 138412290;
    v128 = v82;
    v61 = "PKExpressPassManager: Adding pass %@ to express state.";
  }

  _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, v61, buf, 0xCu);
LABEL_76:

  v78 = sub_10017F950(v88);
  sub_10017FBE4(v78, v80);
  v114 = 0;
  obj = sub_10017FE18(v78, &v114);
  v77 = v114;
  if (!obj)
  {
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_1005C69A8();
    }

    obj = 0;
    goto LABEL_114;
  }

  if (!sub_100180028(obj))
  {
    v53 = 1;
    goto LABEL_117;
  }

  if ((a7 & 1) == 0)
  {
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_1005C68C8();
    }

LABEL_114:
    v53 = 0;
    goto LABEL_115;
  }

  v90 = [v84 passUniqueIdentifier];
  v112 = 0u;
  v113 = 0u;
  v111 = 0u;
  v110 = 0u;
  obj = obj;
  v87 = [obj countByEnumeratingWithState:&v110 objects:buf count:16];
  if (!v87)
  {
    goto LABEL_107;
  }

  v86 = *v111;
  while (2)
  {
    for (k = 0; k != v87; k = k + 1)
    {
      if (*v111 != v86)
      {
        objc_enumerationMutation(obj);
      }

      v63 = *(*(&v110 + 1) + 8 * k);
      v64 = v88;
      v65 = v90;
      v66 = v63;
      if (!v66)
      {

        continue;
      }

      v67 = v66;
      *v139 = 0;
      *&v139[8] = v139;
      *&v139[16] = 0x2020000000;
      LOBYTE(v140) = 0;
      v122 = 0;
      v123 = &v122;
      v124 = 0x2020000000;
      v125 = 0;
      v116 = _NSConcreteStackBlock;
      v117 = 3221225472;
      v118 = sub_100187A0C;
      v119 = &unk_10084A250;
      v120 = v139;
      v121 = &v122;
      sub_100103350(v66, &v116);
      if ((*(*&v139[8] + 24) & 1) == 0)
      {
        _Block_object_dispose(&v122, 8);
        _Block_object_dispose(v139, 8);

        continue;
      }

      v68 = sub_1000044D8(v67);
      if (!v90)
      {
        goto LABEL_102;
      }

      v69 = v65;
      v70 = v68;
      v71 = v70;
      if (v70 == v69)
      {
      }

      else
      {
        if (!v70)
        {

LABEL_102:
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *v137 = 138412290;
            v138 = v68;
            _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: resolving conflict by removing pass %@.", v137, 0xCu);
          }

          [v64 removeObjectForKey:v68];
          _Block_object_dispose(&v122, 8);
          _Block_object_dispose(v139, 8);

          continue;
        }

        v72 = [v69 isEqualToString:v70];

        if ((v72 & 1) == 0)
        {
          goto LABEL_102;
        }
      }

      v73 = *(v123 + 24);
      if (v73)
      {
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *v137 = 138412290;
          v138 = v71;
          _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "PKExpressPassManager: cannot resolve conflict for preferred pass %@ because of self conflict.", v137, 0xCu);
        }
      }

      else if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *v137 = 138412290;
        v138 = v71;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: attempting to keep conflicting pass %@.", v137, 0xCu);
      }

      _Block_object_dispose(&v122, 8);
      _Block_object_dispose(v139, 8);

      if (v73)
      {
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          sub_1005C68C8();
        }

        v53 = 0;
        v49 = v69;
        goto LABEL_115;
      }
    }

    v87 = [obj countByEnumeratingWithState:&v110 objects:buf count:16];
    if (v87)
    {
      continue;
    }

    break;
  }

LABEL_107:

  v74 = sub_10017F950(v88);
  sub_10017FBE4(v74, v80);

  v116 = 0;
  v75 = sub_10017FE18(v74, &v116);
  v77 = v116;

  if (sub_100180028(v75))
  {
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_1005C6938();
    }

    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v49 = v90;
  obj = v75;
  v78 = v74;
LABEL_115:

LABEL_117:
  v49 = v77;
LABEL_118:

LABEL_57:
  if (a6)
  {
  }

  objc_autoreleasePoolPop(context);
LABEL_60:

  return v53;
}

void sub_100181710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100181748(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = sub_100004440(v4);
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
    if ([*(a1 + 40) containsObject:v3])
    {
      sub_1005C0DF0(v4, 1);
    }
  }
}

void sub_1001817C8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 passInformation];
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  v12 = v9;
  v13 = v12;
  if (v10)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v20 = 1;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100188268;
    v14[3] = &unk_10084A2A0;
    v17 = v19;
    v15 = v12;
    v18 = 1;
    v16 = v11;
    [v10 enumerateCredentialsUsingBlock:v14];

    _Block_object_dispose(v19, 8);
  }
}

void sub_1001818F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100181914(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) copy];
    [v5 expressPassManager:v3 didUpdateExpressPassConfigurations:v4];
  }
}

void sub_100181988(id a1)
{
  v1 = [PKDarwinNotificationEventExpressPassesInformationChanged UTF8String];

  notify_post(v1);
}

void sub_1001819BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 passInformation];
  v6 = [v5 cardType];

  v7 = *(a1 + 32);
  v8 = [NSNumber numberWithInteger:v6];
  v11 = [v7 objectForKeyedSubscript:v8];

  if (!v11)
  {
    v11 = objc_alloc_init(NSMutableSet);
    v9 = *(a1 + 32);
    v10 = [NSNumber numberWithInteger:v6];
    [v9 setObject:v11 forKeyedSubscript:v10];
  }

  [v11 addObject:v4];
  [*(a1 + 40) addObject:v4];
}

void sub_100181ABC(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 40);
  v21 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v21)
  {
    v20 = *v23;
    do
    {
      v2 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v22 + 1) + 8 * v2);
        if (v3)
        {
          v4 = *(v3 + 24);
        }

        else
        {
          v4 = 0;
        }

        v5 = v4;
        v6 = [v5 passUniqueIdentifier];
        if (v6)
        {
          v7 = v6;
LABEL_13:
          v9 = [*(a1 + 48) objectForKeyedSubscript:v7];
          if (!v3)
          {
            goto LABEL_21;
          }

          goto LABEL_14;
        }

        if (v3)
        {
          v8 = *(v3 + 16);
        }

        else
        {
          v8 = 0;
        }

        v7 = v8;
        if (v7)
        {
          goto LABEL_13;
        }

        v9 = 0;
        if (!v3)
        {
LABEL_21:
          v10 = 0;
          goto LABEL_18;
        }

LABEL_14:
        v10 = *(v3 + 40);
        if (v10)
        {
          v11 = PKEqualObjects();
          v10[2](v10, v11, *(a1 + 56));
        }

        v12 = *(v3 + 56);
        if (v12)
        {
          v13 = v12;
          v14 = *(a1 + 64);
          v15 = [NSNumber numberWithInteger:*(v3 + 48)];
          v16 = [v14 objectForKeyedSubscript:v15];
          v17 = [v16 count] == 0;

          v13[2](v13, v17, *(a1 + 56));
        }

LABEL_18:

        v2 = v2 + 1;
      }

      while (v21 != v2);
      v18 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      v21 = v18;
    }

    while (v18);
  }
}

id sub_100181CF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = 0;
  if (a1 && v5)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = sub_100005B60;
    v19 = sub_10000B1BC;
    v20 = 0;
    v8 = objc_alloc_init(NSMutableArray);
    [v8 addObject:v5];
    if (v6)
    {
      [v8 addObject:v6];
    }

    os_unfair_lock_lock((a1 + 104));
    v9 = [*(a1 + 96) copy];
    os_unfair_lock_unlock((a1 + 104));
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100181E94;
    v12[3] = &unk_100849CB0;
    v10 = v8;
    v13 = v10;
    v14 = &v15;
    [v9 enumerateKeysAndObjectsUsingBlock:v12];
    v7 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  return v7;
}

void sub_100181E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100181E94(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = [v8 passInformation];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100181FD0;
  v10[3] = &unk_100849C88;
  v11 = *(a1 + 32);
  v12 = &v13;
  [v9 enumerateCredentialsUsingBlock:v10];

  if (*(v14 + 24) == 1)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    *a4 = 1;
  }

  _Block_object_dispose(&v13, 8);
}

void sub_100181FB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100181FD0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = PKEqualObjects();
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

id sub_100182014()
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v0 = +[BKDeviceManager availableDevices];
  v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v1)
  {
    v2 = *v8;
    while (2)
    {
      for (i = 0; i != v1; i = i + 1)
      {
        if (*v8 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v7 + 1) + 8 * i);
        v5 = [v4 type];
        if (v5 == 1)
        {
          if (!PKPearlIsAvailable())
          {
            goto LABEL_14;
          }
        }

        else if (v5 == 2 && (PKPearlIsAvailable() & 1) != 0)
        {
LABEL_14:
          v1 = [BKDevice deviceWithDescriptor:v4 error:0];
          goto LABEL_15;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v1;
}

void sub_100182154(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && v3)
  {
    v4 = v3;
    os_unfair_lock_lock((a1 + 120));
    [*(a1 + 128) addObject:v4];
    os_unfair_lock_unlock((a1 + 120));
    v3 = v4;
  }
}

void sub_1001821BC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 && v3)
  {
    v4 = v3;
    os_unfair_lock_lock((a1 + 120));
    [*(a1 + 128) removeObject:v4];
    os_unfair_lock_unlock((a1 + 120));
    v3 = v4;
  }
}

void sub_100182224(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        (*(*(a1 + 40) + 16))(*(a1 + 40));
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

void sub_100182320(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_4;
  }

  if (v3)
  {
    sub_1005C6ABC(&v5, a1, v3);
LABEL_4:

    return;
  }

  __break(1u);
}

unsigned int (**sub_100182370(uint64_t a1, void **a2, void *a3))(void)
{
  result = a3;
  v6 = result;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (a2)
  {
    v9 = *(a1 + 112);
    v8 = (a1 + 112);
    v7 = v9;
    if (v9)
    {
      if (result)
      {
        if (!result[2](result))
        {
LABEL_6:
          v10 = 0;
LABEL_10:

          return v10;
        }

        v7 = *v8;
      }

      sub_1005C6B54(v7, a2, v8);
    }

    v10 = 1;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unsigned int (**sub_1001823F8(uint64_t a1, void *a2, void **a3))(void)
{
  result = a2;
  v6 = result;
  if (!a1)
  {
    goto LABEL_6;
  }

  if (result && a3)
  {
    v8 = *(a1 + 112);
    v7 = (a1 + 112);
    if (v8 && result[2](result))
    {
      sub_1005C6BE8(a3, v7);
      v9 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v9 = 0;
LABEL_7:

    return v9;
  }

  __break(1u);
  return result;
}

void sub_1001824AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    sub_1005C6C6C(v3);
    v3 = v4;
  }
}

void sub_100182500(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_23;
  }

  if (!v3)
  {
    __break(1u);
  }

  if (![v3 count])
  {
    goto LABEL_23;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = v6;
  v22 = v4;
  v8 = 0;
  v9 = *v30;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v30 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v29 + 1) + 8 * i);
      v12 = [v11 isExpress];
      v13 = [v11 isProcessing];
      v14 = v13;
      if (v12)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 32));
        sub_1001F5024(WeakRetained, v11);

        if (v14)
        {
          continue;
        }
      }

      else
      {
        if (v13)
        {
          continue;
        }

        if ([v11 standaloneTransactionType])
        {
          sub_10017DF9C(a1, v11, 0);
        }
      }

      if (!v8)
      {
        v8 = objc_alloc_init(NSMutableArray);
      }

      [v8 addObject:v11];
    }

    v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v7);

  v4 = v22;
  if (v8)
  {
    v16 = PDOSTransactionCreate("PDExpressPassManager.express_transaction.resolved");
    v17 = PDDefaultQueue(v16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100183484;
    block[3] = &unk_10083C4C0;
    block[4] = a1;
    v27 = v16;
    v18 = v8;
    v28 = v18;
    v19 = v16;
    dispatch_async(v17, block);

    v21 = PDUtilityQueue(v20);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100183658;
    v23[3] = &unk_10083C420;
    v24 = v18;
    v25 = a1;
    v5 = v18;
    dispatch_async(v21, v23);

LABEL_22:
  }

LABEL_23:
}

id sub_1001827C0(uint64_t a1, void *a2)
{
  result = a2;
  v4 = result;
  if (!a1)
  {
LABEL_15:

    return a1;
  }

  if (result)
  {
    v15 = 0;
    os_unfair_lock_lock((a1 + 108));
    sub_100182370(a1, &v15, &stru_100849D10);
    v5 = *(a1 + 112);
    v6 = PKLogFacilityTypeGetObject();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: updating existing express transaction state for generic standalone event.", buf, 2u);
      }

      sub_1001823F8(a1, v4, &v15);
      v8 = v15;
    }

    else
    {
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: creating express transaction state for generic standalone event.", buf, 2u);
      }

      v9 = [PKExpressTransactionState createForExpressType:0];
      v10 = *(a1 + 112);
      *(a1 + 112) = v9;

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1001829D8;
      v12[3] = &unk_100849D38;
      v13 = v4;
      sub_1001823F8(a1, v12, &v15);
      [*(a1 + 112) resolve];
      v8 = v15;
      if (!v15)
      {
        v8 = objc_alloc_init(NSMutableArray);
        v15 = v8;
      }

      v11 = [*(a1 + 112) copy];
      [v8 addObject:v11];
    }

    os_unfair_lock_unlock((a1 + 108));
    if (v8)
    {
      sub_100182500(a1, v8);
    }

    v16 = v5 == 0;

    a1 = v16;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void *sub_100182A00(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a1)
  {
    v43 = 0;
    goto LABEL_64;
  }

  v14 = [*(a1 + 8) passUniqueIdentifierWithPaymentApplicationIdentifier:v11 subcredentialIdentifier:v12];
  if (a2 != 1)
  {
    v17 = 0;
    goto LABEL_7;
  }

  result = [v13 aliro];
  if (result)
  {
    v16 = result;
    if ([result operationSource] != 5)
    {
      v53 = 0;

LABEL_63:
      v43 = v53;
LABEL_64:

      return v43;
    }

    v17 = [v16 terminalReaderIdentifier];

LABEL_7:
    v52 = 0;
    os_unfair_lock_lock((a1 + 108));
    sub_100182370(a1, &v52, &stru_100849D58);
    v18 = *(a1 + 112);
    if (!v18)
    {
      v25 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v55 = a3;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: creating express transaction state for standalone transaction of type %ld.", buf, 0xCu);
      }

      if (v17)
      {
        v26 = [PKExpressTransactionState createForStandaloneTransaction:a3 applicationIdentifier:v11 keyIdentifier:v12 passUniqueIdentifier:v14 terminalReaderIdentifier:v17];
      }

      else
      {
        v26 = [PKExpressTransactionState createForStandaloneTransaction:a3 applicationIdentifier:v11 keyIdentifier:v12 passUniqueIdentifier:v14];
      }

      v28 = *(a1 + 112);
      *(a1 + 112) = v26;

      v30 = PDUtilityQueue(v29);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100182FD0;
      block[3] = &unk_10083C3F8;
      block[4] = a1;
      v49 = v14;
      v50 = v11;
      v51 = a3;
      dispatch_async(v30, block);

      goto LABEL_24;
    }

    if (([v18 isAssociated] & 1) == 0)
    {
      v27 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v55 = a3;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: associating existing express transaction state with target of standalone transaction of type %ld.", buf, 0xCu);
      }

      [*(a1 + 112) associateWithApplicationIdentifier:v11 keyIdentifier:v12 terminalReaderIdentifier:v17 passUniqueIdentifier:v14];
      [*(a1 + 112) receiveStandaloneTransaction:a3];
      goto LABEL_24;
    }

    v46 = a3;
    v47 = v17;
    v19 = [*(a1 + 112) applicationIdentifier];
    v20 = v11;
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = v20;
      v23 = v19;
      if (!v20)
      {
        goto LABEL_54;
      }

      v22 = v20;
      v23 = v19;
      if (!v19)
      {
        goto LABEL_54;
      }

      v24 = [v19 isEqualToString:v20];

      if (!v24)
      {
        goto LABEL_56;
      }
    }

    v45 = v13;
    v23 = [*(a1 + 112) keyIdentifier];
    v34 = v12;
    v35 = v34;
    if (v23 == v34)
    {
    }

    else
    {
      if (!v34 || !v23)
      {
        v22 = v23;
LABEL_52:

LABEL_53:
        v13 = v45;
LABEL_54:

        goto LABEL_55;
      }

      v36 = [v23 isEqualToString:v34];

      if (!v36)
      {
        v13 = v45;
LABEL_55:

LABEL_56:
        v42 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218498;
          v55 = v46;
          v56 = 2114;
          v57 = v21;
          v58 = 2114;
          v59 = v19;
          _os_log_error_impl(&_mh_execute_header, v42, OS_LOG_TYPE_ERROR, "PKExpressPassManager: WARNING IGNORING STANDALONE TRANSACTION OF TYPE %ld: EXPECTED: %{public}@ ACTUAL: %{public}@! Please file a radar.", buf, 0x20u);
        }

        v33 = 0;
        v17 = v47;
        goto LABEL_59;
      }
    }

    v22 = [*(a1 + 112) terminalReaderIdentifier];
    v37 = v47;
    v38 = v37;
    if (v22 == v37)
    {
    }

    else
    {
      if (!v37 || !v22)
      {
        v35 = v22;
LABEL_51:

        goto LABEL_52;
      }

      v39 = [v22 isEqualToString:v37];

      if (!v39)
      {
        goto LABEL_53;
      }
    }

    v38 = [*(a1 + 112) passUniqueIdentifier];
    v40 = v14;
    v41 = v40;
    if (v38 == v40)
    {

      v13 = v45;
LABEL_48:

      v17 = v47;
      if (![*(a1 + 112) receiveStandaloneTransaction:v46])
      {
        v33 = 1;
LABEL_59:
        v31 = v52;
LABEL_60:
        os_unfair_lock_unlock((a1 + 108));
        if (v31)
        {
          sub_100182500(a1, v31);
        }

        v53 = v33;

        goto LABEL_63;
      }

LABEL_24:
      v31 = v52;
      if (!v52)
      {
        v31 = objc_alloc_init(NSMutableArray);
        v52 = v31;
      }

      v32 = [*(a1 + 112) copy];
      [v31 addObject:v32];

      v33 = 1;
      goto LABEL_60;
    }

    if (v40 && v38)
    {
      v44 = [v38 isEqualToString:v40];

      v13 = v45;
      if ((v44 & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_48;
    }

    v35 = v38;
    goto LABEL_51;
  }

  __break(1u);
  return result;
}

void sub_100182FE0(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if (!v7)
    {
      __break(1u);
    }

    v9 = objc_autoreleasePoolPush();
    v10 = [*(a1 + 8) passWithUniqueIdentifier:v7];
    if (v10)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      v12 = v11;
      if (a4 <= 2)
      {
        [v11 setObject:**(&off_10084A2D8 + a4) forKey:PKAnalyticsReportEventKey];
      }

      [v12 setObject:PKAnalyticsReportExpressTransactionPageTag forKey:PKAnalyticsReportPageTagKey];
      v13 = v12;
      v14 = v10;
      v15 = v14;
      if (v13)
      {
        sub_1005C6D50(v14);
      }

      v16 = [v15 secureElementPass];
      v17 = [v16 cardType];

      if ((v17 - 1) <= 1)
      {
        v18 = [v15 organizationName];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = PKAnalyticsReportUnknownValue;
        }

        [v13 setObject:v20 forKey:PKAnalyticsReportIssuerNameKey];
      }

      if ([v8 length])
      {
        v34 = v9;
        v21 = [v15 paymentPass];
        v22 = [v21 paymentApplicationForAID:v8];

        [v22 paymentNetworkIdentifier];
        v32 = PKPaymentNetworkNameForPaymentCredentialType();
        [v13 safelySetObject:? forKey:?];
        v33 = v22;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v23 = [[NSSet alloc] initWithObjects:{v22, 0}];
        v24 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = 0;
          v27 = *v36;
          while (2)
          {
            for (i = 0; i != v25; i = i + 1)
            {
              if (*v36 != v27)
              {
                objc_enumerationMutation(v23);
              }

              v29 = *(*(&v35 + 1) + 8 * i);
              if (v26 && v26 != [*(*(&v35 + 1) + 8 * i) paymentType])
              {

                v30 = @"multiple";
                goto LABEL_26;
              }

              v26 = [v29 paymentType];
            }

            v25 = [v23 countByEnumeratingWithState:&v35 objects:v39 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        v30 = PKPaymentMethodTypeToString();
LABEL_26:

        [v13 safelySetObject:v30 forKey:PKAnalyticsReportPaymentMethodTypeKey];
        v9 = v34;
      }

      v31 = PKAnalyticsSubjectExpressPresentment;
      [PKAnalyticsReporter beginSubjectReporting:PKAnalyticsSubjectExpressPresentment];
      [PKAnalyticsReporter subject:v31 sendEvent:v13];
      [PKAnalyticsReporter endSubjectReporting:v31];
    }

    objc_autoreleasePoolPop(v9);
  }
}

uint64_t sub_10018335C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_14;
  }

  if (!v3)
  {
    __break(1u);
LABEL_14:
    v7 = 0;
    goto LABEL_10;
  }

  os_unfair_lock_lock((a1 + 108));
  v5 = *(a1 + 112);
  if (!v5 || ![v5 isProcessing])
  {
    v7 = 0;
LABEL_9:
    os_unfair_lock_unlock((a1 + 108));
    goto LABEL_10;
  }

  if ((v4[2](v4, *(a1 + 112)) & 1) == 0)
  {
    v7 = 1;
    goto LABEL_9;
  }

  v6 = [*(a1 + 112) copy];
  os_unfair_lock_unlock((a1 + 108));
  if (v6)
  {
    v10 = v6;
    v7 = 1;
    v8 = [NSArray arrayWithObjects:&v10 count:1];
    sub_100182500(a1, v8);
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

void sub_100183484(uint64_t a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100183528;
  v5[3] = &unk_100849D80;
  v2 = *(a1 + 32);
  v6 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  sub_10017EC80(v2, v5);
}

void sub_100183528(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v3 expressPassManager:*(a1 + 48) didFinishExpressTransactionWithState:{v9, v10}];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_100183658(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if ([v7 isAssociated] && (objc_msgSend(v7, "isIgnorable") & 1) == 0)
        {
          sub_100183770(*(a1 + 40), v7);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_100183770(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
LABEL_6:

    return;
  }

  if (v3)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [v4 passUniqueIdentifier];
    if (v6)
    {
      sub_1005C72C8(a1, v6, v4, v7);
    }

    objc_autoreleasePoolPop(v5);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1001837F8(uint64_t result, char a2)
{
  if ((*(result + 40) & 1) == 0 && (a2 & 1) == 0)
  {
    v2 = [PKNotifyEventOutstandingExpressTransactionReady cStringUsingEncoding:4];

    return notify_post(v2);
  }

  return result;
}

void sub_100183B3C(id a1, BOOL a2)
{
  if (!a2)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1005C73B0();
    }
  }
}

void sub_100183B8C(id a1, BOOL a2)
{
  if (!a2)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1005C73B0();
    }
  }
}

void sub_100183CBC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!a1)
  {
    goto LABEL_89;
  }

  v5 = [v3 type];
  if (v5 <= 3)
  {
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        v28 = v4;
        v29 = [v28 applicationIdentifier];
        v30 = [v28 keyIdentifier];
        if (v29)
        {
          v31 = sub_100181CF0(a1, v29, v30);
          v32 = [v31 passUniqueIdentifier];
        }

        else
        {
          v32 = 0;
        }

        v73[0] = _NSConcreteStackBlock;
        v73[1] = 3221225472;
        v73[2] = sub_100185008;
        v73[3] = &unk_100849ED8;
        v74 = v29;
        v75 = v30;
        v76 = v32;
        v77 = a1;
        v36 = v29;
        v37 = v30;
        v38 = v32;
        if ((sub_10018335C(a1, v73) & 1) == 0)
        {
          v39 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            sub_1005C76D8();
          }
        }
      }

      else
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v94 = sub_100005B60;
        v95 = sub_10000B1BC;
        v96 = 0;
        v87 = 0;
        v88 = &v87;
        v89 = 0x3032000000;
        v90 = sub_100005B60;
        v91 = sub_10000B1BC;
        v92 = 0;
        v72[0] = _NSConcreteStackBlock;
        v72[1] = 3221225472;
        v72[2] = sub_10018515C;
        v72[3] = &unk_100849F00;
        v72[4] = buf;
        v72[5] = &v87;
        v15 = sub_10018335C(a1, v72);
        if (v15)
        {
          if (*(*&buf[8] + 40))
          {
            v16 = PDUtilityQueue(v15);
            v71[0] = _NSConcreteStackBlock;
            v71[1] = 3221225472;
            v71[2] = sub_1001851E4;
            v71[3] = &unk_100849F28;
            v71[4] = a1;
            v71[5] = buf;
            v71[6] = &v87;
            dispatch_async(v16, v71);
          }
        }

        else
        {
          v33 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            sub_1005C769C();
          }
        }

        _Block_object_dispose(&v87, 8);

        _Block_object_dispose(buf, 8);
      }
    }

    else if (v5)
    {
      if (v5 == 1)
      {
        v79[0] = _NSConcreteStackBlock;
        v79[1] = 3221225472;
        v79[2] = sub_100184E88;
        v79[3] = &unk_100849EB0;
        v79[4] = a1;
        if ((sub_10018335C(a1, v79) & 1) == 0)
        {
          v6 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
          {
            sub_1005C7714();
          }

          v8 = PDUtilityQueue(v7);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100184FF4;
          block[3] = &unk_10083C470;
          block[4] = a1;
          dispatch_async(v8, block);
        }
      }
    }

    else
    {
      v24 = v4;
      v25 = [v24 technologyType];
      v26 = v25;
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v94 = sub_100005B60;
      v95 = sub_10000B1BC;
      v96 = 0;
      v87 = 0;
      v88 = &v87;
      v89 = 0x3032000000;
      v90 = sub_100005B60;
      v91 = sub_10000B1BC;
      v92 = 0;
      v85[0] = 0;
      v85[1] = v85;
      v85[2] = 0x3032000000;
      v85[3] = sub_100005B60;
      v85[4] = sub_10000B1BC;
      v86 = 0;
      if (v25 <= 7 && ((1 << v25) & 0xEA) != 0)
      {
        os_unfair_lock_lock((a1 + 104));
        v27 = [*(a1 + 96) copy];
        os_unfair_lock_unlock((a1 + 104));
        v84[0] = _NSConcreteStackBlock;
        v84[1] = 3221225472;
        v84[2] = sub_100184B50;
        v84[3] = &unk_100849E60;
        v84[4] = buf;
        v84[5] = &v87;
        v84[7] = v26;
        v84[6] = v85;
        [v27 enumerateKeysAndObjectsUsingBlock:v84];
      }

      v83[0] = _NSConcreteStackBlock;
      v83[1] = 3221225472;
      v83[2] = sub_100184D84;
      v83[3] = &unk_100849E88;
      v83[4] = buf;
      v83[5] = &v87;
      v83[6] = v85;
      sub_1005C3518(a1, v26, v83);
      _Block_object_dispose(v85, 8);

      _Block_object_dispose(&v87, 8);
      _Block_object_dispose(buf, 8);
    }

    goto LABEL_89;
  }

  if (v5 <= 5)
  {
    if (v5 != 4)
    {
      v9 = v4;
      v10 = [v9 applicationIdentifier];
      v11 = [v9 keyIdentifier];
      if (v10)
      {
        v12 = [*(a1 + 8) passUniqueIdentifierWithPaymentApplicationIdentifier:v10 subcredentialIdentifier:v11];
        v13 = PKLogFacilityTypeGetObject();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
        if (v12)
        {
          if (v11)
          {
            if (v14)
            {
              *buf = 138412802;
              *&buf[4] = v10;
              *&buf[12] = 2112;
              *&buf[14] = v11;
              *&buf[22] = 2112;
              v94 = v12;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "PKExpressPassManager: terminal requested non-express key (%@:%@) for pass %@.", buf, 0x20u);
            }
          }

          else if (v14)
          {
            sub_1005C73EC();
          }

          goto LABEL_83;
        }

        if (v11)
        {
          if (v14)
          {
            sub_1005C7458();
          }
        }

        else if (v14)
        {
          sub_1005C74C4();
        }
      }

      else
      {
        v13 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_1005C7534();
        }
      }

      v12 = 0;
LABEL_83:

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v94 = sub_100005B60;
      v95 = sub_10000B1BC;
      v96 = 0;
      v59[0] = _NSConcreteStackBlock;
      v59[1] = 3221225472;
      v59[2] = sub_100185358;
      v59[3] = &unk_100849F90;
      v49 = v10;
      v60 = v49;
      v50 = v11;
      v61 = v50;
      v51 = v12;
      v62 = v51;
      v63 = buf;
      sub_1001827C0(a1, v59);
      v52 = *(*&buf[8] + 40);
      if (v52)
      {
        v53 = [v52 passUniqueIdentifier];

        if (*(*&buf[8] + 40) && v53)
        {
          WeakRetained = objc_loadWeakRetained((a1 + 32));
          sub_1005CB414(WeakRetained, v53, 1, &stru_100849FB0);

          v56 = PDUtilityQueue(v55);
          sub_1005C778C(v56, &v58, a1, buf);
        }
      }

      else
      {
        v53 = v51;
      }

      _Block_object_dispose(buf, 8);
      goto LABEL_89;
    }

    v20 = v4;
    v21 = [v20 status];
    if (v21 > 1)
    {
      if (v21 != 2)
      {
        if (v21 == 3)
        {
          v42 = sub_1005C6184(a1);
          v43 = v42;
          if (v42 && ([(os_unfair_lock_s *)v42 isProcessing]& 1) != 0)
          {
            v44 = [(os_unfair_lock_s *)v43 TCIs];
            v45 = [v44 count];
            if (v45)
            {
              v46 = PDDefaultQueue(v45);
              v64[0] = _NSConcreteStackBlock;
              v64[1] = 3221225472;
              v64[2] = sub_1001852F4;
              v64[3] = &unk_10083C4C0;
              v64[4] = a1;
              v65 = v44;
              v66 = v20;
              v44 = v44;
              dispatch_async(v46, v64);
            }

            else
            {
              v57 = PKLogFacilityTypeGetObject();
              if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
              {
                sub_1005C7570();
              }
            }
          }

          else
          {
            v44 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              sub_1005C75AC();
            }
          }
        }

        goto LABEL_79;
      }

      v34 = sub_10018335C(a1, &stru_100849F68);
      if (v34)
      {
        v35 = PDUtilityQueue(v34);
        v67[0] = _NSConcreteStackBlock;
        v67[1] = 3221225472;
        v67[2] = sub_1001852E0;
        v67[3] = &unk_10083C470;
        v67[4] = a1;
        dispatch_async(v35, v67);

        goto LABEL_79;
      }

      v47 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_1005C75E8();
      }
    }

    else
    {
      if (!v21)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v94 = sub_100005B60;
        v95 = sub_10000B1BC;
        v96 = 0;
        v87 = 0;
        v88 = &v87;
        v89 = 0x3032000000;
        v90 = sub_100005B60;
        v91 = sub_10000B1BC;
        v92 = 0;
        v70[0] = _NSConcreteStackBlock;
        v70[1] = 3221225472;
        v70[2] = sub_100185208;
        v70[3] = &unk_100849F00;
        v70[4] = buf;
        v70[5] = &v87;
        v40 = sub_10018335C(a1, v70);
        if (v40)
        {
          if (*(*&buf[8] + 40))
          {
            v41 = PDUtilityQueue(v40);
            v69[0] = _NSConcreteStackBlock;
            v69[1] = 3221225472;
            v69[2] = sub_100185290;
            v69[3] = &unk_100849F28;
            v69[4] = a1;
            v69[5] = buf;
            v69[6] = &v87;
            dispatch_async(v41, v69);
          }
        }

        else
        {
          v48 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            sub_1005C7660();
          }
        }

        _Block_object_dispose(&v87, 8);

        _Block_object_dispose(buf, 8);
        goto LABEL_79;
      }

      if (v21 != 1)
      {
LABEL_79:

        goto LABEL_89;
      }

      v22 = sub_10018335C(a1, &stru_100849F48);
      if (v22)
      {
        v23 = PDUtilityQueue(v22);
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = sub_1001852C0;
        v68[3] = &unk_10083C470;
        v68[4] = a1;
        dispatch_async(v23, v68);

        goto LABEL_79;
      }

      v47 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_1005C7624();
      }
    }

    goto LABEL_79;
  }

  switch(v5)
  {
    case 6:
      v81[0] = _NSConcreteStackBlock;
      v81[1] = 3221225472;
      v81[2] = sub_100184E08;
      v81[3] = &unk_100849EB0;
      v82 = v4;
      if ((sub_10018335C(a1, v81) & 1) == 0)
      {
        v17 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          sub_1005C7750();
        }

        v19 = PDUtilityQueue(v18);
        v80[0] = _NSConcreteStackBlock;
        v80[1] = 3221225472;
        v80[2] = sub_100184E74;
        v80[3] = &unk_10083C470;
        v80[4] = a1;
        dispatch_async(v19, v80);
      }

      break;
    case 7:
      sub_1005C62B0(a1, v4);
      break;
    case 8:
      sub_1005C6378(a1, v4);
      break;
  }

LABEL_89:
}

void sub_100184B00(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100184B50(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [v4 passInformation];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100184C10;
  v8[3] = &unk_100849E38;
  v10 = *(a1 + 32);
  v6 = *(a1 + 56);
  v11 = *(a1 + 48);
  v12 = v6;
  v9 = v4;
  v7 = v4;
  [v5 enumerateCredentialsUsingBlock:v8];
}

void sub_100184C10(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [a3 selectionCriteria];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v16 + 1) + 8 * v12) technologyType] == *(a1 + 64))
        {

          if ([PKExpressPassInformation extractApplicationIdentifier:*(*(a1 + 40) + 8) + 40 subcredentialIdentifier:*(*(a1 + 48) + 8) + 40 fromIdentifiers:v7])
          {
            v13 = [*(a1 + 32) passUniqueIdentifier];
            v14 = *(*(a1 + 56) + 8);
            v15 = *(v14 + 40);
            *(v14 + 40) = v13;
          }

          *a4 = 1;
          goto LABEL_13;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

uint64_t sub_100184D84(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1[4] + 8) + 40) && ([v3 isAssociated] & 1) == 0)
  {
    [v4 associateWithApplicationIdentifier:*(*(a1[4] + 8) + 40) keyIdentifier:*(*(a1[5] + 8) + 40) terminalReaderIdentifier:0 passUniqueIdentifier:*(*(a1[6] + 8) + 40)];
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_100184E08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) TCIs];
  v5 = [v4 set];

  if (v5)
  {
    [v3 associateWithTCIs:v5];
  }

  return 0;
}

uint64_t sub_100184E88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 passUniqueIdentifier];

  if (v4)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: exited express.", buf, 2u);
    }
  }

  else
  {
    v6 = [v3 isAssociated];
    v7 = PKLogFacilityTypeGetObject();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v8)
      {
        sub_1005C7834();
      }
    }

    else if (v8)
    {
      sub_1005C77F8();
    }

    v10 = PDUtilityQueue(v9);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100184FE0;
    block[3] = &unk_10083C470;
    block[4] = *(a1 + 32);
    dispatch_async(v10, block);
  }

  [v3 resolve];

  return 1;
}

uint64_t sub_100185008(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 receiveEvents:1];
  if (a1[4])
  {
    if ([v3 isAssociated])
    {
      v5 = [v3 applicationIdentifier];
      if ((PKEqualObjects() & 1) == 0)
      {
        v6 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          sub_1005C7870();
        }

        v8 = PDUtilityQueue(v7);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100185148;
        block[3] = &unk_10083C470;
        block[4] = a1[7];
        dispatch_async(v8, block);
      }
    }

    else
    {
      [v3 associateWithApplicationIdentifier:a1[4] keyIdentifier:a1[5] terminalReaderIdentifier:0 passUniqueIdentifier:a1[6]];
      v4 = 1;
    }
  }

  return v4;
}

id sub_10018515C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 receiveEvents:2];
  if (v4)
  {
    v5 = [v3 passUniqueIdentifier];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v3 applicationIdentifier];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  return v4;
}

id sub_100185208(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 receiveEvents:4];
  if (v4)
  {
    v5 = [v3 passUniqueIdentifier];
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = [v3 applicationIdentifier];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  return v4;
}

void sub_1001852F4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 232);
  v3 = [*(a1 + 48) brandCode];
  [v2 initiateNativePairingIfPossibleFromTCIs:v1 brandCode:{objc_msgSend(v3, "integerValue")}];
}

uint64_t sub_100185358(void *a1, void *a2)
{
  v3 = a2;
  v5 = (a1 + 4);
  v4 = a1[4];
  v6 = [v3 isAssociated];
  if (v4)
  {
    if (v6)
    {
      v7 = [v3 applicationIdentifier];
      v8 = [v3 keyIdentifier];
      v9 = *v5;
      v10 = v7;
      v11 = v9;
      v12 = v11;
      if (v10 == v11)
      {
      }

      else
      {
        if (!v10 || !v11)
        {

          goto LABEL_18;
        }

        v13 = [v10 isEqualToString:v11];

        if ((v13 & 1) == 0)
        {
LABEL_18:
          v19 = PKLogFacilityTypeGetObject();
          v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
          if (!v8)
          {
            if (v20)
            {
              sub_1005C78E0();
            }

            goto LABEL_36;
          }

          if (v20)
          {
            v21 = *v5;
            v29 = 138543874;
            v30 = v10;
            v31 = 2114;
            v32 = v8;
            v33 = 2114;
            v34 = v21;
            v22 = "PKExpressPassManager: WARNING EXPRESS KEY (%{public}@:%{public}@) IN USE. DOES NOT MATCH REQUESTED APPLET %{public}@! Please file a radar.";
LABEL_31:
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, v22, &v29, 0x20u);
            goto LABEL_36;
          }

          goto LABEL_36;
        }
      }

      v14 = a1[5];
      v15 = v8;
      v16 = v14;
      v17 = v16;
      if (v15 == v16)
      {
      }

      else
      {
        if (!v15 || !v16)
        {

          if (!v15)
          {
            v19 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              sub_1005C7950();
            }

            goto LABEL_36;
          }

LABEL_28:
          v26 = a1[5];
          v19 = PKLogFacilityTypeGetObject();
          v27 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
          if (!v26)
          {
            if (v27)
            {
              sub_1005C79C0();
            }

            goto LABEL_36;
          }

          if (v27)
          {
            v29 = 138543874;
            v30 = v10;
            v31 = 2114;
            v32 = v15;
            v33 = 2114;
            v34 = v26;
            v22 = "PKExpressPassManager: WARNING EXPRESS KEY (%{public}@:%{public}@) IN USE. DOES NOT MATCH REQUESTED KEY %{public}@! Please file a radar.";
            goto LABEL_31;
          }

LABEL_36:

          v4 = 0;
          goto LABEL_37;
        }

        v18 = [v15 isEqualToString:v16];

        if ((v18 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v4 = 0;
    }

    else
    {
      [v3 associateWithApplicationIdentifier:a1[4] keyIdentifier:a1[5] terminalReaderIdentifier:0 passUniqueIdentifier:a1[6]];
      v4 = 1;
    }
  }

  else if (v6)
  {
    goto LABEL_37;
  }

  [v3 receiveEvents:1024];
  if ([v3 isIgnorable])
  {
    v23 = [v3 copy];
    v24 = *(a1[7] + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;
  }

LABEL_37:

  return v4;
}

void sub_10018565C(id a1, BOOL a2)
{
  if (!a2)
  {
    v2 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: remote alert did not present - fall back to foreground app.", v3, 2u);
    }

    notify_post([PKNotifyEventOutstandingExpressTransactionReady cStringUsingEncoding:4]);
  }
}

void sub_1001856FC(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1005C7A34();
    }
  }
}

void sub_100185918(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) isEqualToString:PKDarwinNotificationEventLostModeStateChanged])
  {
    v3 = *(a1 + 40);

    sub_1005C2DEC(v3);
  }

  else
  {
    v4 = [*(a1 + 32) isEqualToString:@"com.apple.BiometricKit.enrollmentChanged"];
    v7 = *(a1 + 40);
    v6 = (a1 + 40);
    v5 = v7;
    if (v4)
    {

      sub_1005C2EB8(v5, 1);
    }

    else
    {
      v8 = atomic_load((v5 + 225));
      if (v8)
      {
        sub_1005C7AF4(v6);
      }

      else
      {
        sub_1005C7AA0(v2, v6);
      }
    }
  }
}

id sub_100185C48(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 passUniqueIdentifier];
  if (*(a1 + 40))
  {
    v5 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v3 isNFCExpressEnabled:1 isUWBExpressEnabled:1];
  }

  else
  {
    v6 = [*(a1 + 32) paymentApplicationsForPassUniqueIdentifier:v4];
    v5 = [[PKExpressPassConfiguration alloc] initWithPassInformation:v3 forPaymentApplications:v6];

    v3 = v6;
  }

  return v5;
}

void sub_100185D0C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = sub_1005C0038([PDSECredentialEntry alloc], *(a1 + 32), [*(a1 + 40) isUserChoice], v7);

  if (v8)
  {
    sub_1005C0CB0(v8, [*(a1 + 48) isNFCExpressEnabled]);
    sub_1005C0D50(v8, [*(a1 + 48) isUWBExpressEnabled]);
    *(*(*(a1 + 64) + 8) + 24) = sub_100185E20(*(a1 + 56), v9, v8, 3);
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
  }

  if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

uint64_t sub_100185E20(void *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (!v7)
  {
    goto LABEL_11;
  }

  v10 = v7;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  v13 = *v19;
  do
  {
    v14 = 0;
    v15 = v10;
    do
    {
      if (*v19 != v13)
      {
        objc_enumerationMutation(v8);
      }

      v10 = sub_100103D04(v15, *(*(&v18 + 1) + 8 * v14), 1);

      v14 = v14 + 1;
      v15 = v10;
    }

    while (v12 != v14);
    v12 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v12);
  if (v10)
  {
LABEL_10:
    v16 = sub_1005C13BC(v10, v9, v4);
  }

  else
  {
LABEL_11:
    v16 = 0;
  }

  return v16;
}

void sub_100185F90(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  if ((sub_10017FA78(*(*(*(a1 + 32) + 8) + 40), a3) & 1) == 0)
  {
    v8 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1005C7B04();
    }

    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    *a4 = 1;
  }
}

void sub_100186030(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = sub_100004440(v5);
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableArray);
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }

  [v4 addObject:v5];
}

void sub_1001860D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100186164;
  v5[3] = &unk_10084A098;
  v6 = a3;
  [v4 enumerateObjectsUsingBlock:v5];
}

void *sub_10018618C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (!v4)
  {
    v4 = sub_100103248([PDSECredentialPass alloc], v3);
    [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
  }

  v5 = v4;

  return v5;
}

void sub_100186210(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  v9 = a4;
  v10 = a2;
  v12 = v8(v7, a3);
  v11 = (*(*(a1 + 32) + 16))();

  sub_1001032DC(v12, v10, v11);
}

void sub_1001862CC(uint64_t a1, void *a2, void *a3, void *a4, _BYTE *a5)
{
  v12 = a2;
  v9 = a3;
  v10 = a4;
  if (v12)
  {
    v11 = sub_100103C8C(v12) ^ 1;
  }

  else
  {
    v11 = 1;
  }

  *(*(*(a1 + 32) + 8) + 24) = v11;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a5 = 1;
  }
}

void sub_100186378(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [a1[4] passWithUniqueIdentifier:v5];
  v9 = v8;
  if (v8)
  {
    if ([v8 passType] == 1)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = [v6 passInformation];
  v13 = sub_10018659C(v11, v12, &v19);

  if ((v13 & 1) == 0)
  {

    objc_autoreleasePoolPop(v7);
    goto LABEL_12;
  }

  v14 = [v6 passInformation];
  v15 = sub_10018671C(v14, a1[5], &v19);

  objc_autoreleasePoolPop(v7);
  if (!v15)
  {
LABEL_12:
    v16 = 0;
    goto LABEL_13;
  }

  [a1[6] setObject:v6 forKeyedSubscript:v5];
  if (v19 == 1)
  {
    [a1[7] addObject:v5];
  }

  v16 = 1;
LABEL_13:
  v17 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = "removing";
    *buf = 136316418;
    if (v16)
    {
      v18 = "adding";
    }

    v21 = v18;
    v22 = 2112;
    v23 = v5;
    v24 = 1024;
    v25 = v11 != 0;
    v26 = 1024;
    v27 = v13;
    v28 = 1024;
    v29 = v16;
    v30 = 1024;
    v31 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "PKExpressPassManager: Updating express state %s pass %@ (in database: %d, express capable: %d, can be express %d, should suspend: %d).", buf, 0x2Eu);
  }
}

uint64_t sub_10018659C(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1;
  v6 = a2;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = v5 != 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  if (v5)
  {
    [v5 uniqueID];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100186898;
    v7 = v11[3] = &unk_10084A1B0;
    v12 = v7;
    v14 = &v20;
    v13 = v5;
    v15 = &v16;
    [v6 enumerateCredentialsUsingBlock:v11];
  }

  if (a3)
  {
    if (*a3)
    {
      v8 = 1;
    }

    else
    {
      v8 = *(v17 + 24);
    }

    *a3 = v8 & 1;
  }

  v9 = *(v21 + 24);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);

  return v9;
}

void sub_1001866F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10018671C(void *a1, void *a2, _BYTE *a3)
{
  v5 = a1;
  v6 = a2;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v7 = [v5 passUniqueIdentifier];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100186F90;
  v13[3] = &unk_10084A1D8;
  v8 = v6;
  v14 = v8;
  v9 = v7;
  v15 = v9;
  v16 = &v18;
  v17 = &v22;
  [v5 enumerateCredentialsUsingBlock:v13];
  if (a3)
  {
    if (*a3)
    {
      v10 = 1;
    }

    else
    {
      v10 = *(v19 + 24);
    }

    *a3 = v10 & 1;
  }

  v11 = *(v23 + 24);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v11;
}

void sub_100186874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_100186898(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v64 = 0;
  v65 = 0;
  v50 = v5;
  if (([PKExpressPassInformation extractApplicationIdentifier:&v65 subcredentialIdentifier:&v64 fromIdentifiers:v5]& 1) == 0)
  {
    v7 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1005C7B74();
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v48 = v6;
  if (*(*(*(a1 + 48) + 8) + 24) != 1)
  {
    v23 = 0;
    goto LABEL_31;
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v8 = [*(a1 + 40) devicePaymentApplications];
  v9 = [v8 countByEnumeratingWithState:&v60 objects:v76 count:16];
  if (!v9)
  {
LABEL_24:

    goto LABEL_28;
  }

  v10 = v9;
  v11 = *v61;
  v49 = v8;
  v45 = *v61;
LABEL_8:
  v12 = 0;
  v46 = v10;
  while (1)
  {
    if (*v61 != v11)
    {
      objc_enumerationMutation(v8);
    }

    v13 = *(*(&v60 + 1) + 8 * v12);
    v14 = [v13 applicationIdentifier];
    v15 = PKEqualObjects();

    if (v15)
    {
      break;
    }

LABEL_22:
    if (++v12 == v10)
    {
      v10 = [v8 countByEnumeratingWithState:&v60 objects:v76 count:16];
      v6 = v48;
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }
  }

  if (v64)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v16 = [v13 subcredentials];
    v17 = [v16 countByEnumeratingWithState:&v56 objects:v75 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v57;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v57 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v56 + 1) + 8 * i) identifier];
          v22 = PKEqualObjects();

          if (v22)
          {

            v8 = v49;
            goto LABEL_27;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v56 objects:v75 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v8 = v49;
    v11 = v45;
    v10 = v46;
    goto LABEL_22;
  }

LABEL_27:
  v23 = v13;

  v6 = v48;
  if (v23)
  {
    goto LABEL_31;
  }

LABEL_28:
  v24 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    sub_1005C7BDC();
  }

  v23 = 0;
  *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_31:
  v25 = [v23 state];
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v23 supportsExpress];
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      v26 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v43 = *(a1 + 32);
        v44 = [v23 supportsOptionalAuthentication];
        buf = 138413058;
        v68 = v43;
        v69 = 2112;
        v70 = v50;
        v71 = 2050;
        v72 = v25;
        v73 = 1026;
        v74 = v44;
        _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "PKExpressPassManager: removing invalid express pass (%@: %@) from target state because the application is not supported (state %{public}ld, optional authentication %{public}d).", &buf, 0x26u);
      }
    }
  }

  v47 = v23;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v27 = [v6 selectionCriteria];
  v28 = [v27 countByEnumeratingWithState:&v52 objects:v66 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v53;
    do
    {
      for (j = 0; j != v29; j = j + 1)
      {
        if (*v53 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v52 + 1) + 8 * j);
        v51 = 0;
        v33 = *(*(*(a1 + 48) + 8) + 24);
        if (v33 == 1 && (*(*(*(a1 + 48) + 8) + 24) = +[PKSecureElement supportsExpressForAutomaticSelectionTechnologyType:byHardware:](PKSecureElement, "supportsExpressForAutomaticSelectionTechnologyType:byHardware:", [v32 technologyType], &v51), v33 = *(*(*(a1 + 48) + 8) + 24), (v33 & 1) == 0))
        {
          v34 = PKLogFacilityTypeGetObject();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v42 = *(a1 + 32);
            buf = 138412546;
            v68 = v42;
            v69 = 2112;
            v70 = v50;
            _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "PKExpressPassManager: removing invalid express pass (%@: %@) from target state due to missing support.", &buf, 0x16u);
          }

          if (*(*(*(a1 + 48) + 8) + 24))
          {
LABEL_48:
            if (v51 == 1)
            {
              if (PKPaymentApplicationStateIsPersonalized())
              {
                v35 = [*(a1 + 40) effectiveContactlessPaymentApplicationState];
                if (PKPaymentApplicationStateIsPersonalized())
                {
                  goto LABEL_59;
                }

                v36 = PKLogFacilityTypeGetObject();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  v37 = *(a1 + 32);
                  buf = 138412802;
                  v68 = v37;
                  v69 = 2112;
                  v70 = v50;
                  v71 = 2050;
                  v72 = v35;
                  v38 = v36;
                  v39 = "PKExpressPassManager: suspending express pass (%@: %@) due to contactless application state %{public}ld.";
                  goto LABEL_57;
                }

LABEL_58:

                *(*(*(a1 + 56) + 8) + 24) = 1;
                goto LABEL_59;
              }

              v36 = PKLogFacilityTypeGetObject();
              if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_58;
              }

              v41 = *(a1 + 32);
              buf = 138412802;
              v68 = v41;
              v69 = 2112;
              v70 = v50;
              v71 = 2050;
              v72 = v25;
              v38 = v36;
              v39 = "PKExpressPassManager: suspending express pass (%@: %@) due to application state %{public}ld.";
            }

            else
            {
              v36 = PKLogFacilityTypeGetObject();
              if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_58;
              }

              v40 = *(a1 + 32);
              buf = 138412802;
              v68 = v40;
              v69 = 2112;
              v70 = v50;
              v71 = 2050;
              v72 = v25;
              v38 = v36;
              v39 = "PKExpressPassManager: suspending express pass (%@: %@) due to lack of hardware support %{public}ld.";
            }

LABEL_57:
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v39, &buf, 0x20u);
            goto LABEL_58;
          }
        }

        else if (v33)
        {
          goto LABEL_48;
        }

LABEL_59:
        if (*(*(*(a1 + 48) + 8) + 24) != 1)
        {
          goto LABEL_62;
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v52 objects:v66 count:16];
    }

    while (v29);
  }

LABEL_62:
}