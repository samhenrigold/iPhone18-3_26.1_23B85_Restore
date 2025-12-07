@interface LACEnvironmentMechanismBiometry
+ (id)environmentMechanismForUser:(unsigned int)user auditToken:(id *)token dependencies:(id)dependencies error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (LACEnvironmentMechanismBiometry)initWithAvailabilityError:(id)error biometryType:(int64_t)type enrolled:(BOOL)enrolled lockedOut:(BOOL)out stateHash:(id)hash sensorInaccessible:(BOOL)inaccessible approvalState:(int64_t)state;
- (LACEnvironmentMechanismBiometry)initWithCoder:(id)coder;
- (id)descriptionDetails;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LACEnvironmentMechanismBiometry

- (LACEnvironmentMechanismBiometry)initWithAvailabilityError:(id)error biometryType:(int64_t)type enrolled:(BOOL)enrolled lockedOut:(BOOL)out stateHash:(id)hash sensorInaccessible:(BOOL)inaccessible approvalState:(int64_t)state
{
  hashCopy = hash;
  errorCopy = error;
  v18 = NSLocalizedStringFromLACBiometryType(type);
  switch(type)
  {
    case 1:
      v19 = @"touchid";
      break;
    case 2:
      v19 = @"faceid";
      break;
    case 4:
      v19 = @"opticid";
      break;
    default:
      v19 = @"questionmark";
      break;
  }

  v22.receiver = self;
  v22.super_class = LACEnvironmentMechanismBiometry;
  v20 = [(LACEnvironmentMechanism *)&v22 initWithAvailabilityError:errorCopy localizedName:v18 iconSystemName:v19];

  if (v20)
  {
    v20->_biometryType = type;
    v20->_enrolled = enrolled;
    v20->_lockedOut = out;
    objc_storeStrong(&v20->_stateHash, hash);
    v20->_sensorInaccessible = inaccessible;
    v20->_approvalState = state;
  }

  return v20;
}

+ (id)environmentMechanismForUser:(unsigned int)user auditToken:(id *)token dependencies:(id)dependencies error:(id *)error
{
  v7 = *&user;
  dependenciesCopy = dependencies;
  biometryHelper = [dependenciesCopy biometryHelper];
  if (!biometryHelper)
  {
    v17 = 0;
    goto LABEL_25;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v7];
  v38 = 0;
  v11 = [biometryHelper isEnrolled:v10 error:&v38];
  v12 = v38;
  if (!v11)
  {
    goto LABEL_5;
  }

  v13 = objc_opt_new();
  v37 = v12;
  v14 = [biometryHelper isLockedOutForUser:v10 request:v13 error:&v37];
  v15 = v37;

  if (v14)
  {
    v12 = v15;
LABEL_5:
    v15 = v12;
    v30 = v11;
    v16 = v15;
    goto LABEL_8;
  }

  v30 = 0;
  v16 = 0;
LABEL_8:
  v18 = [LACError errorWithCode:-6 debugDescription:@"Companion session is active"];
  onenessSessionMonitor = [dependenciesCopy onenessSessionMonitor];
  isSessionActive = [onenessSessionMonitor isSessionActive];

  if (isSessionActive && !v16)
  {
    v16 = v18;
  }

  phoneIntegrationSessionMonitor = [dependenciesCopy phoneIntegrationSessionMonitor];
  isSessionActive2 = [phoneIntegrationSessionMonitor isSessionActive];

  if (isSessionActive2 && !v16)
  {
    v16 = v18;
  }

  v31 = v18;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __93__LACEnvironmentMechanismBiometry_environmentMechanismForUser_auditToken_dependencies_error___block_invoke;
  v33[3] = &unk_1E7A97260;
  v23 = biometryHelper;
  v34 = v23;
  v24 = *&token->var0[4];
  v35 = *token->var0;
  v36 = v24;
  v25 = (__93__LACEnvironmentMechanismBiometry_environmentMechanismForUser_auditToken_dependencies_error___block_invoke)(v33);
  if (!v25 && !v16)
  {
    v16 = [LACError errorWithCode:-1018 debugDescription:@"User has denied the use of biometry for this app."];
  }

  v32 = v10;
  if (v11)
  {
    v26 = [v23 biometryDatabaseHashForUser:v10 error:0];
  }

  else
  {
    v26 = 0;
  }

  v27 = [LACEnvironmentMechanismBiometry alloc];
  v28 = v16;
  if (!v16)
  {
    v28 = [LACError errorWithCode:-1004 debugDescription:@"User interaction is required"];
  }

  v17 = -[LACEnvironmentMechanismBiometry initWithAvailabilityError:biometryType:enrolled:lockedOut:stateHash:sensorInaccessible:approvalState:](v27, "initWithAvailabilityError:biometryType:enrolled:lockedOut:stateHash:sensorInaccessible:approvalState:", v28, [v23 biometryType], v11, v30, v26, 0, v25);
  if (!v16)
  {
  }

LABEL_25:

  return v17;
}

void __93__LACEnvironmentMechanismBiometry_environmentMechanismForUser_auditToken_dependencies_error___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) biometryType] == 2)
  {
    v2 = +[LACTCCManager sharedInstance];
    v3 = *(a1 + 56);
    v4[0] = *(a1 + 40);
    v4[1] = v3;
    [v2 authorizationStatusOfFaceIDServiceForAuditToken:v4];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v17.receiver = self;
  v17.super_class = LACEnvironmentMechanismBiometry;
  coderCopy = coder;
  [(LACEnvironmentMechanism *)&v17 encodeWithCoder:coderCopy];
  v5 = [(LACEnvironmentMechanismBiometry *)self biometryType:v17.receiver];
  v6 = NSStringFromSelector(sel_biometryType);
  [coderCopy encodeInteger:v5 forKey:v6];

  enrolled = [(LACEnvironmentMechanismBiometry *)self enrolled];
  v8 = NSStringFromSelector(sel_enrolled);
  [coderCopy encodeBool:enrolled forKey:v8];

  lockedOut = [(LACEnvironmentMechanismBiometry *)self lockedOut];
  v10 = NSStringFromSelector(sel_lockedOut);
  [coderCopy encodeBool:lockedOut forKey:v10];

  stateHash = [(LACEnvironmentMechanismBiometry *)self stateHash];
  v12 = NSStringFromSelector(sel_stateHash);
  [coderCopy encodeObject:stateHash forKey:v12];

  sensorInaccessible = [(LACEnvironmentMechanismBiometry *)self sensorInaccessible];
  v14 = NSStringFromSelector(sel_sensorInaccessible);
  [coderCopy encodeBool:sensorInaccessible forKey:v14];

  approvalState = [(LACEnvironmentMechanismBiometry *)self approvalState];
  v16 = NSStringFromSelector(sel_approvalState);
  [coderCopy encodeInt:approvalState forKey:v16];
}

- (LACEnvironmentMechanismBiometry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20 = NSStringFromSelector(sel_availabilityError);
  v17 = [coderCopy decodeObjectForKey:v20];
  v19 = NSStringFromSelector(sel_biometryType);
  v16 = [coderCopy decodeIntegerForKey:v19];
  v4 = NSStringFromSelector(sel_enrolled);
  v15 = [coderCopy decodeBoolForKey:v4];
  v5 = NSStringFromSelector(sel_lockedOut);
  v6 = [coderCopy decodeBoolForKey:v5];
  v7 = NSStringFromSelector(sel_stateHash);
  v8 = [coderCopy decodeObjectForKey:v7];
  v9 = NSStringFromSelector(sel_sensorInaccessible);
  v10 = [coderCopy decodeBoolForKey:v9];
  v11 = NSStringFromSelector(sel_approvalState);
  v12 = [coderCopy decodeIntForKey:v11];

  v13 = [(LACEnvironmentMechanismBiometry *)self initWithAvailabilityError:v17 biometryType:v16 enrolled:v15 lockedOut:v6 stateHash:v8 sensorInaccessible:v10 approvalState:v12];
  return v13;
}

- (id)descriptionDetails
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"biometryType: %d", -[LACEnvironmentMechanismBiometry biometryType](self, "biometryType")];
  [v3 addObject:v4];

  if (![(LACEnvironmentMechanismBiometry *)self enrolled])
  {
    [v3 addObject:@"not enrolled"];
  }

  if ([(LACEnvironmentMechanismBiometry *)self lockedOut])
  {
    [v3 addObject:@"locked out"];
  }

  if ([(LACEnvironmentMechanismBiometry *)self sensorInaccessible])
  {
    [v3 addObject:@"sensor inaccessible"];
  }

  if ([(LACEnvironmentMechanismBiometry *)self approvalState]!= 1)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = NSStringFromLACEnvironmentMechanismApprovalState([(LACEnvironmentMechanismBiometry *)self approvalState]);
    v7 = [v5 stringWithFormat:@"approvalState: %@", v6];
    [v3 addObject:v7];
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v15) = 1;
    goto LABEL_13;
  }

  v18.receiver = self;
  v18.super_class = LACEnvironmentMechanismBiometry;
  if (![(LACEnvironmentMechanism *)&v18 isEqual:equalCopy]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    LOBYTE(v15) = 0;
    goto LABEL_13;
  }

  v5 = equalCopy;
  biometryType = [(LACEnvironmentMechanismBiometry *)self biometryType];
  if (biometryType != [(LACEnvironmentMechanismBiometry *)v5 biometryType])
  {
    goto LABEL_9;
  }

  enrolled = [(LACEnvironmentMechanismBiometry *)self enrolled];
  if (enrolled != [(LACEnvironmentMechanismBiometry *)v5 enrolled])
  {
    goto LABEL_9;
  }

  lockedOut = [(LACEnvironmentMechanismBiometry *)self lockedOut];
  if (lockedOut != [(LACEnvironmentMechanismBiometry *)v5 lockedOut])
  {
    goto LABEL_9;
  }

  stateHash = [(LACEnvironmentMechanismBiometry *)self stateHash];
  stateHash2 = [(LACEnvironmentMechanismBiometry *)v5 stateHash];
  v11 = stateHash2;
  if (stateHash == stateHash2)
  {

    goto LABEL_15;
  }

  stateHash3 = [(LACEnvironmentMechanismBiometry *)self stateHash];
  stateHash4 = [(LACEnvironmentMechanismBiometry *)v5 stateHash];
  v14 = [stateHash3 isEqualToData:stateHash4];

  if (v14)
  {
LABEL_15:
    sensorInaccessible = [(LACEnvironmentMechanismBiometry *)self sensorInaccessible];
    v15 = sensorInaccessible ^ [(LACEnvironmentMechanismBiometry *)v5 sensorInaccessible]^ 1;
    goto LABEL_10;
  }

LABEL_9:
  LOBYTE(v15) = 0;
LABEL_10:

LABEL_13:
  return v15;
}

@end