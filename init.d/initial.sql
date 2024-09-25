alter system set wal_level = logical;
alter system set max_replication_slots = 10;
alter system set max_slot_wal_keep_size = '50GB';