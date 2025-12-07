@interface HDMedicalIDStoreTaskServer
+ (BOOL)validateClient:(id)client error:(id *)error;
- (id)medicalIDDataManagerWithError:(void *)error;
- (void)remote_addEmergencyContact:(id)contact completion:(id)completion;
- (void)remote_deleteMedicalIDDataWithLastFetchedMedicalIDData:(id)data completion:(id)completion;
- (void)remote_fetchMedicalIDDataIfSetUpOrCreateDefaultWithCompletion:(id)completion;
- (void)remote_fetchMedicalIDWithCompletion:(id)completion;
- (void)remote_medicalIDClinicalContactsWithCompletion:(id)completion;
- (void)remote_medicalIDEmergencyContactsWithCompletion:(id)completion;
- (void)remote_removeEmergencyContact:(id)contact completion:(id)completion;
- (void)remote_updateMedicalIDData:(id)data lastFetchedMedicalIDData:(id)dData completion:(id)completion;
@end

@implementation HDMedicalIDStoreTaskServer

+ (BOOL)validateClient:(id)client error:(id *)error
{
  clientCopy = client;
  v6 = *MEMORY[0x277CCC368];
  if ([clientCopy hasRequiredEntitlement:*MEMORY[0x277CCC368] error:error])
  {
    v7 = [clientCopy valueForEntitlement:v6];
    objc_opt_class();
    v8 = objc_opt_isKindOfClass() ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  v9 = [clientCopy hasRequiredArrayEntitlement:v6 containing:*MEMORY[0x277CCBD50] error:error] | v8;

  return v9 & 1;
}

- (id)medicalIDDataManagerWithError:(void *)error
{
  if (error)
  {
    profile = [error profile];
    medicalIDDataManager = [profile medicalIDDataManager];

    if (medicalIDDataManager)
    {
      profile2 = [error profile];
      medicalIDDataManager2 = [profile2 medicalIDDataManager];
    }

    else
    {
      profile2 = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
      if (profile2)
      {
        if (a2)
        {
          v8 = profile2;
          *a2 = profile2;
        }

        else
        {
          _HKLogDroppedError();
        }
      }

      medicalIDDataManager2 = 0;
    }
  }

  else
  {
    medicalIDDataManager2 = 0;
  }

  return medicalIDDataManager2;
}

- (void)remote_fetchMedicalIDWithCompletion:(id)completion
{
  v10 = 0;
  completionCopy = completion;
  v5 = [(HDMedicalIDStoreTaskServer *)self medicalIDDataManagerWithError:?];
  v6 = v10;
  v9 = v6;
  v7 = [v5 fetchMedicalIDIfSetUpWithError:&v9];
  v8 = v9;

  completionCopy[2](completionCopy, v7, v8);
}

- (void)remote_fetchMedicalIDDataIfSetUpOrCreateDefaultWithCompletion:(id)completion
{
  v10 = 0;
  completionCopy = completion;
  v5 = [(HDMedicalIDStoreTaskServer *)self medicalIDDataManagerWithError:?];
  v6 = v10;
  v9 = v6;
  v7 = [v5 fetchMedicalIDDataIfSetUpOrCreateDefaultWithError:&v9];
  v8 = v9;

  completionCopy[2](completionCopy, v7, v8);
}

- (void)remote_updateMedicalIDData:(id)data lastFetchedMedicalIDData:(id)dData completion:(id)completion
{
  completionCopy = completion;
  v18 = 0;
  dataCopy = data;
  v9 = [(HDMedicalIDStoreTaskServer *)self medicalIDDataManagerWithError:?];
  v10 = v18;
  v17 = v10;
  v11 = [v9 updateMedicalIDWithLocalData:dataCopy error:&v17];

  v12 = v17;
  if (v11)
  {
    profile = [(HDStandardTaskServer *)self profile];
    daemon = [profile daemon];
    analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
    profile2 = [(HDStandardTaskServer *)self profile];
    [analyticsSubmissionCoordinator medicalID_reportHasBeenSetForProfileType:{objc_msgSend(profile2, "profileType")}];
  }

  completionCopy[2](completionCopy, v11, v12);
}

- (void)remote_deleteMedicalIDDataWithLastFetchedMedicalIDData:(id)data completion:(id)completion
{
  completionCopy = completion;
  v15 = 0;
  v6 = [(HDMedicalIDStoreTaskServer *)self medicalIDDataManagerWithError:?];
  v7 = v15;
  v14 = v7;
  v8 = [v6 deleteMedicalIDDataWithError:&v14];
  v9 = v14;

  if (v8)
  {
    profile = [(HDStandardTaskServer *)self profile];
    daemon = [profile daemon];
    analyticsSubmissionCoordinator = [daemon analyticsSubmissionCoordinator];
    profile2 = [(HDStandardTaskServer *)self profile];
    [analyticsSubmissionCoordinator medicalID_reportHasBeenDeletedForProfileType:{objc_msgSend(profile2, "profileType")}];
  }

  completionCopy[2](completionCopy, v8, v9);
}

- (void)remote_medicalIDEmergencyContactsWithCompletion:(id)completion
{
  v10 = 0;
  completionCopy = completion;
  v5 = [(HDMedicalIDStoreTaskServer *)self medicalIDDataManagerWithError:?];
  v6 = v10;
  v9 = v6;
  v7 = [v5 medicalIDEmergencyContactsWithError:&v9];
  v8 = v9;

  completionCopy[2](completionCopy, v7, v8);
}

- (void)remote_medicalIDClinicalContactsWithCompletion:(id)completion
{
  v13 = 0;
  completionCopy = completion;
  v5 = [(HDMedicalIDStoreTaskServer *)self medicalIDDataManagerWithError:?];
  v6 = v13;
  v12 = v6;
  v7 = [v5 medicalIDClinicalContactsWithError:&v12];
  v8 = v12;

  if (v7 || !v8)
  {
    v9 = completionCopy;
    v10 = v7;
    v11 = 0;
  }

  else
  {
    v9 = completionCopy;
    v10 = 0;
    v11 = v8;
  }

  (*(completionCopy + 2))(v9, v10, v11);
}

- (void)remote_addEmergencyContact:(id)contact completion:(id)completion
{
  v30[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  completionCopy = completion;
  v29 = 0;
  v8 = [(HDMedicalIDStoreTaskServer *)self medicalIDDataManagerWithError:?];
  v9 = v29;
  if (v8)
  {
    v28 = 0;
    v10 = [v8 fetchMedicalIDIfSetUpWithError:&v28];
    v11 = v28;
    v12 = v11;
    if (v10)
    {
      emergencyContacts = [v10 emergencyContacts];
      v14 = [emergencyContacts containsObject:contactCopy];

      if (v14)
      {
        completionCopy[2](completionCopy, 1, 0);
      }

      else
      {
        emergencyContacts2 = [v10 emergencyContacts];
        v16 = [emergencyContacts2 count];
        v17 = *MEMORY[0x277CCDF30];

        if (v16 >= v17)
        {
          v21 = [MEMORY[0x277CCA9B8] hk_error:130 format:@"Medical ID emergency contact limit exceeded. Unable to add additional emergency contacts."];
          (completionCopy)[2](completionCopy, 0, v21);
        }

        else
        {
          emergencyContacts3 = [v10 emergencyContacts];
          if (emergencyContacts3)
          {
            emergencyContacts4 = [v10 emergencyContacts];
            v20 = [emergencyContacts4 arrayByAddingObject:contactCopy];
            [v10 setEmergencyContacts:v20];
          }

          else
          {
            v30[0] = contactCopy;
            emergencyContacts4 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
            [v10 setEmergencyContacts:emergencyContacts4];
          }

          date = [MEMORY[0x277CBEAA8] date];
          [v10 setEmergencyContactsModifiedDate:date];

          v27 = 0;
          v23 = [v8 updateMedicalIDWithLocalData:v10 error:&v27];
          v24 = v27;
          v25 = v24;
          if (v23)
          {
            v26 = 0;
          }

          else
          {
            v26 = v24;
          }

          (completionCopy)[2](completionCopy, v23, v26);
        }
      }
    }

    else
    {
      if (!v11)
      {
        v12 = [MEMORY[0x277CCA9B8] hk_error:111 format:@"Medical ID has not been configured."];
      }

      (completionCopy)[2](completionCopy, 0, v12);
    }
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v9);
  }
}

- (void)remote_removeEmergencyContact:(id)contact completion:(id)completion
{
  contactCopy = contact;
  completionCopy = completion;
  v23 = 0;
  v8 = [(HDMedicalIDStoreTaskServer *)self medicalIDDataManagerWithError:?];
  v9 = v23;
  if (v8)
  {
    v22 = 0;
    v10 = [v8 fetchMedicalIDIfSetUpWithError:&v22];
    v11 = v22;
    if (v10 && ([v10 emergencyContacts], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "containsObject:", contactCopy), v12, (v13 & 1) != 0))
    {
      emergencyContacts = [v10 emergencyContacts];
      v15 = [emergencyContacts mutableCopy];

      [v15 removeObject:contactCopy];
      [v10 setEmergencyContacts:v15];
      date = [MEMORY[0x277CBEAA8] date];
      [v10 setEmergencyContactsModifiedDate:date];

      v21 = 0;
      v17 = [v8 updateMedicalIDWithLocalData:v10 error:&v21];
      v18 = v21;
      v19 = v18;
      if (v17)
      {
        v20 = 0;
      }

      else
      {
        v20 = v18;
      }

      (completionCopy)[2](completionCopy, v17, v20);
    }

    else
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    (completionCopy)[2](completionCopy, 0, v9);
  }
}

@end