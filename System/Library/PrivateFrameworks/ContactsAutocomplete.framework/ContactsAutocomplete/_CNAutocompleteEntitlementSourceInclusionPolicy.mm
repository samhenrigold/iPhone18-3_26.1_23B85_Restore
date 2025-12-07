@interface _CNAutocompleteEntitlementSourceInclusionPolicy
- (BOOL)includeCalendarServers;
- (BOOL)includeContacts;
- (BOOL)includePredictions;
- (BOOL)includeRecents;
- (BOOL)includeStewie;
- (BOOL)includeSuggestions;
@end

@implementation _CNAutocompleteEntitlementSourceInclusionPolicy

- (BOOL)includePredictions
{
  v2 = +[CNAutocompleteEntitlementVerifier currentProcessHasDuetEntitlement];
  v3 = v2;
  if ((v2 & 1) == 0)
  {
    v4 = CNALoggingContextDebug(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Will not include predicted contacts: missing entitlement", v6, 2u);
    }
  }

  return v3;
}

- (BOOL)includeContacts
{
  v2 = +[CNAutocompleteEntitlementVerifier currentProcessHasContactsEntitlement];
  v3 = v2;
  if ((v2 & 1) == 0)
  {
    v4 = CNALoggingContextDebug(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Will not include local contacts: missing entitlement", v6, 2u);
    }
  }

  return v3;
}

- (BOOL)includeRecents
{
  v2 = +[CNAutocompleteEntitlementVerifier currentProcessHasRecentsEntitlement];
  v3 = v2;
  if ((v2 & 1) == 0)
  {
    v4 = CNALoggingContextDebug(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Will not include recent contacts: missing entitlement", v6, 2u);
    }
  }

  return v3;
}

- (BOOL)includeStewie
{
  v2 = +[CNAutocompleteEntitlementVerifier currentProcessHasStewieEntitlement];
  v3 = v2;
  if ((v2 & 1) == 0)
  {
    v4 = CNALoggingContextDebug(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Will not include stewie contacts: missing entitlement", v6, 2u);
    }
  }

  return v3;
}

- (BOOL)includeSuggestions
{
  v2 = +[CNAutocompleteEntitlementVerifier currentProcessHasSuggestionsEntitlement];
  v3 = v2;
  if ((v2 & 1) == 0)
  {
    v4 = CNALoggingContextDebug(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Will not include suggested contacts: missing entitlement", v6, 2u);
    }
  }

  return v3;
}

- (BOOL)includeCalendarServers
{
  v2 = +[CNAutocompleteEntitlementVerifier currentProcessHasCalendarEntitlement];
  v3 = v2;
  if ((v2 & 1) == 0)
  {
    v4 = CNALoggingContextDebug(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_2155FE000, v4, OS_LOG_TYPE_DEFAULT, "Will not include calendar servers: missing calendar entitlement", v6, 2u);
    }
  }

  return v3;
}

@end