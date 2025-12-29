-- Plugin Rollback

-- Drop session extensions
ALTER TABLE "session" DROP COLUMN IF EXISTS active_organization_id;
ALTER TABLE "session" DROP COLUMN IF EXISTS active_team_id;
ALTER TABLE "session" DROP COLUMN IF EXISTS impersonated_by;

-- Drop user extensions
ALTER TABLE "user" DROP COLUMN IF EXISTS role;
ALTER TABLE "user" DROP COLUMN IF EXISTS banned;
ALTER TABLE "user" DROP COLUMN IF EXISTS ban_reason;
ALTER TABLE "user" DROP COLUMN IF EXISTS ban_expires;

-- Drop organization tables
DROP TABLE IF EXISTS "organization_role";
DROP TABLE IF EXISTS "team_member";
DROP TABLE IF EXISTS "team";
DROP TABLE IF EXISTS "invitation";
DROP TABLE IF EXISTS "member";
DROP TABLE IF EXISTS "organization";

-- Drop passkey tables
DROP TABLE IF EXISTS "passkey";

-- Drop two-factor tables
DROP TABLE IF EXISTS "trusted_device";
DROP TABLE IF EXISTS "two_factor";