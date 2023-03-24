; ModuleID = 'git.o.bc'
source_filename = "llvm-link"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.cmd_struct = type { i8*, i32 (i32, i8**, i8*)*, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.strvec = type { i8**, i64, i64 }
%struct.startup_info = type { i32, i8*, i8* }
%struct.trace_key = type { i8*, i32, i8 }
%struct.repository = type { i8*, i8*, %struct.raw_object_store*, %struct.parsed_object_pool*, %struct.ref_store*, %struct.repo_path_cache, i8*, i8*, i8*, i8*, %struct.repo_settings, %struct.config_set*, %struct.submodule_cache*, %struct.index_state*, %struct.remote_state*, %struct.git_hash_algo*, i32, i32, i8*, %struct.promisor_remote_config*, i8 }
%struct.raw_object_store = type opaque
%struct.parsed_object_pool = type { %struct.object**, i32, i32, %struct.alloc_state*, %struct.alloc_state*, %struct.alloc_state*, %struct.alloc_state*, %struct.alloc_state*, %struct.commit_graft**, i32, i32, i32, %struct.stat_validity*, i8*, i32, i32, %struct.buffer_slab* }
%struct.object = type { i32, %struct.object_id }
%struct.object_id = type { [32 x i8], i32 }
%struct.alloc_state = type opaque
%struct.commit_graft = type { %struct.object_id, i32, [0 x %struct.object_id] }
%struct.stat_validity = type { %struct.stat_data* }
%struct.stat_data = type { %struct.cache_time, %struct.cache_time, i32, i32, i32, i32, i32 }
%struct.cache_time = type { i32, i32 }
%struct.buffer_slab = type opaque
%struct.ref_store = type opaque
%struct.repo_path_cache = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.repo_settings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.fsmonitor_settings*, i32, i32, i32, i32, i32 }
%struct.fsmonitor_settings = type opaque
%struct.config_set = type { %struct.hashmap, i32, %struct.configset_list }
%struct.hashmap = type { %struct.hashmap_entry**, i32 (i8*, %struct.hashmap_entry*, %struct.hashmap_entry*, i8*)*, i8*, i32, i32, i32, i32, i8 }
%struct.hashmap_entry = type { %struct.hashmap_entry*, i32 }
%struct.configset_list = type { %struct.configset_list_item*, i32, i32 }
%struct.configset_list_item = type { %struct.config_set_element*, i32 }
%struct.config_set_element = type { %struct.hashmap_entry, i8*, %struct.string_list }
%struct.string_list = type { %struct.string_list_item*, i64, i64, i8, i32 (i8*, i8*)* }
%struct.string_list_item = type { i8*, i8* }
%struct.submodule_cache = type opaque
%struct.index_state = type { %struct.cache_entry**, i32, i32, i32, i32, %struct.string_list*, %struct.cache_tree*, %struct.split_index*, %struct.cache_time, i8, i32, %struct.hashmap, %struct.hashmap, %struct.object_id, %struct.untracked_cache*, i8*, %struct.ewah_bitmap*, %struct.mem_pool*, %struct.progress*, %struct.repository*, %struct.pattern_list* }
%struct.cache_entry = type { %struct.hashmap_entry, %struct.stat_data, i32, i32, i32, i32, i32, %struct.object_id, [0 x i8] }
%struct.cache_tree = type opaque
%struct.split_index = type opaque
%struct.untracked_cache = type opaque
%struct.ewah_bitmap = type opaque
%struct.mem_pool = type { %struct.mp_block*, i64, i64 }
%struct.mp_block = type { %struct.mp_block*, i8*, i8*, [0 x i64] }
%struct.progress = type opaque
%struct.pattern_list = type opaque
%struct.remote_state = type opaque
%struct.git_hash_algo = type { i8*, i32, i64, i64, i64, void (%union.git_hash_ctx*)*, void (%union.git_hash_ctx*, %union.git_hash_ctx*)*, void (%union.git_hash_ctx*, i8*, i64)*, void (i8*, %union.git_hash_ctx*)*, void (%struct.object_id*, %union.git_hash_ctx*)*, %struct.object_id*, %struct.object_id*, %struct.object_id* }
%union.git_hash_ctx = type { %struct.blk_SHA256_CTX }
%struct.blk_SHA256_CTX = type { [8 x i32], i64, i32, [64 x i8] }
%struct.promisor_remote_config = type opaque
%struct.strbuf = type { i64, i64, i8* }
%struct.cmdnames = type { i32, i32, %struct.cmdname** }
%struct.cmdname = type { i64, [0 x i8] }
%struct.child_process = type { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i16, void (%struct.child_process*)* }
%struct.stat = type { i32, i16, i16, i64, i32, i32, i32, %struct.timespec, %struct.timespec, %struct.timespec, %struct.timespec, i64, i64, i32, i32, i32, i32, [2 x i64] }
%struct.timespec = type { i64, i64 }

@git_usage_string = constant [389 x i8] c"git [-v | --version] [-h | --help] [-C <path>] [-c <name>=<value>]\0A           [--exec-path[=<path>]] [--html-path] [--man-path] [--info-path]\0A           [-p | --paginate | -P | --no-pager] [--no-replace-objects] [--bare]\0A           [--git-dir=<path>] [--work-tree=<path>] [--namespace=<name>]\0A           [--super-prefix=<path>] [--config-env=<name>=<envvar>]\0A           <command> [<args>]\00", align 16, !dbg !0
@git_more_info_string = constant [231 x i8] c"'git help -a' and 'git help -g' list available subcommands and some\0Aconcept guides. See 'git help <command>' or 'git help <concept>'\0Ato read about a specific subcommand or concept.\0ASee 'git help git' for an overview of the system.\00", align 16, !dbg !12
@use_pager = internal global i32 -1, align 4, !dbg !18
@.str = private unnamed_addr constant [5 x i8] c"git-\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"git.c\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"prefix '%s' must start with 'git-'\00", align 1
@commands = internal global [141 x %struct.cmd_struct] [%struct.cmd_struct { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_add, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_am, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_annotate, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_apply, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_archive, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_bisect__helper, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_blame, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_branch, i32 33 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_bugreport, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_bundle, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_cat_file, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_check_attr, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_check_ignore, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_check_mailmap, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_check_ref_format, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_checkout, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_checkout__worker, i32 25 }, %struct.cmd_struct { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_checkout_index, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_cherry, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_cherry_pick, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_clean, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_clone, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_column, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_commit, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_commit_graph, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_commit_tree, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_config, i32 34 }, %struct.cmd_struct { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_count_objects, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_credential, i32 66 }, %struct.cmd_struct { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_credential_cache, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_credential_cache_daemon, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_credential_store, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_describe, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_diagnose, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_diff, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_diff_files, i32 73 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_diff_index, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_diff_tree, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_difftool, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_env__helper, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_fast_export, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_fast_import, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_fetch, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_fetch_pack, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_fmt_merge_msg, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_for_each_ref, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_for_each_repo, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_format_patch, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_fsck, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_fsck, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_fsmonitor__daemon, i32 17 }, %struct.cmd_struct { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_gc, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_get_tar_commit_id, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_grep, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_hash_object, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_help, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_hook, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_index_pack, i32 66 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_init_db, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_init_db, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.76, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_interpret_trailers, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_log, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_ls_files, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_ls_remote, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_ls_tree, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_mailinfo, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_mailsplit, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_maintenance, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_base, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_file, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_index, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_ours, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.89, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_recursive, i32 73 }, %struct.cmd_struct { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.90, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_recursive, i32 73 }, %struct.cmd_struct { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_recursive, i32 73 }, %struct.cmd_struct { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.92, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_recursive, i32 73 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_tree, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_mktag, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_mktree, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_multi_pack_index, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_mv, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_name_rev, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_notes, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.100, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_pack_objects, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.101, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_pack_redundant, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_pack_refs, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_patch_id, i32 66 }, %struct.cmd_struct { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_blame, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_prune, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_prune_packed, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_pull, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_push, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.109, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_range_diff, i32 5 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_read_tree, i32 17 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_rebase, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.112, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_receive_pack, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_reflog, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_remote, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_remote_ext, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_remote_fd, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_repack, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_replace, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_rerere, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_reset, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_restore, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.122, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_rev_list, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_rev_parse, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_revert, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_rm, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_send_pack, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_shortlog, i32 6 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_show, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_show_branch, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.130, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_show_index, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.131, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_show_ref, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.132, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_sparse_checkout, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_add, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_stash, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_status, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.136, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_stripspace, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.137, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_submodule__helper, i32 17 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.138, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_switch, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_symbolic_ref, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.140, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_tag, i32 33 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.141, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_unpack_file, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.142, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_unpack_objects, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.143, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_update_index, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.144, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_update_ref, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.145, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_update_server_info, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.146, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_upload_archive, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.147, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_upload_archive_writer, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.148, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_upload_pack, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_var, i32 66 }, %struct.cmd_struct { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.150, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_verify_commit, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_verify_pack, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.152, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_verify_tag, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_version, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.153, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_whatchanged, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.154, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_worktree, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.155, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_write_tree, i32 1 }], align 16, !dbg !21
@.str.3 = private unnamed_addr constant [9 x i8] c"git-help\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"cannot handle %s as a builtin\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"usage: %s\0A\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"\0A%s\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@__stderrp = external global %struct.__sFILE*, align 8
@.str.13 = private unnamed_addr constant [59 x i8] c"expansion of alias '%s' failed; '%s' is not a git command\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"failed to run command '%s': %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"GIT_PAGER\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"cat\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"am\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"annotate\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"apply\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"archive\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"bisect--helper\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"blame\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"bugreport\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"bundle\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"cat-file\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"check-attr\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"check-ignore\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"check-mailmap\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"check-ref-format\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"checkout\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"checkout--worker\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"checkout-index\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"cherry\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"cherry-pick\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"clean\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"clone\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"column\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"commit-graph\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"commit-tree\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.44 = private unnamed_addr constant [14 x i8] c"count-objects\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"credential\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"credential-cache\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"credential-cache--daemon\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"credential-store\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"describe\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"diagnose\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"diff-files\00", align 1
@.str.53 = private unnamed_addr constant [11 x i8] c"diff-index\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"diff-tree\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"difftool\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"env--helper\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"fast-export\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"fast-import\00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"fetch-pack\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"fmt-merge-msg\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"for-each-ref\00", align 1
@.str.63 = private unnamed_addr constant [14 x i8] c"for-each-repo\00", align 1
@.str.64 = private unnamed_addr constant [13 x i8] c"format-patch\00", align 1
@.str.65 = private unnamed_addr constant [5 x i8] c"fsck\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"fsck-objects\00", align 1
@.str.67 = private unnamed_addr constant [18 x i8] c"fsmonitor--daemon\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.69 = private unnamed_addr constant [18 x i8] c"get-tar-commit-id\00", align 1
@.str.70 = private unnamed_addr constant [5 x i8] c"grep\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"hash-object\00", align 1
@.str.72 = private unnamed_addr constant [5 x i8] c"hook\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"index-pack\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@.str.75 = private unnamed_addr constant [8 x i8] c"init-db\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"interpret-trailers\00", align 1
@.str.77 = private unnamed_addr constant [4 x i8] c"log\00", align 1
@.str.78 = private unnamed_addr constant [9 x i8] c"ls-files\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"ls-remote\00", align 1
@.str.80 = private unnamed_addr constant [8 x i8] c"ls-tree\00", align 1
@.str.81 = private unnamed_addr constant [9 x i8] c"mailinfo\00", align 1
@.str.82 = private unnamed_addr constant [10 x i8] c"mailsplit\00", align 1
@.str.83 = private unnamed_addr constant [12 x i8] c"maintenance\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@.str.85 = private unnamed_addr constant [11 x i8] c"merge-base\00", align 1
@.str.86 = private unnamed_addr constant [11 x i8] c"merge-file\00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"merge-index\00", align 1
@.str.88 = private unnamed_addr constant [11 x i8] c"merge-ours\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"merge-recursive\00", align 1
@.str.90 = private unnamed_addr constant [21 x i8] c"merge-recursive-ours\00", align 1
@.str.91 = private unnamed_addr constant [23 x i8] c"merge-recursive-theirs\00", align 1
@.str.92 = private unnamed_addr constant [14 x i8] c"merge-subtree\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"merge-tree\00", align 1
@.str.94 = private unnamed_addr constant [6 x i8] c"mktag\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"mktree\00", align 1
@.str.96 = private unnamed_addr constant [17 x i8] c"multi-pack-index\00", align 1
@.str.97 = private unnamed_addr constant [3 x i8] c"mv\00", align 1
@.str.98 = private unnamed_addr constant [9 x i8] c"name-rev\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c"notes\00", align 1
@.str.100 = private unnamed_addr constant [13 x i8] c"pack-objects\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"pack-redundant\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"pack-refs\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"patch-id\00", align 1
@.str.104 = private unnamed_addr constant [8 x i8] c"pickaxe\00", align 1
@.str.105 = private unnamed_addr constant [6 x i8] c"prune\00", align 1
@.str.106 = private unnamed_addr constant [13 x i8] c"prune-packed\00", align 1
@.str.107 = private unnamed_addr constant [5 x i8] c"pull\00", align 1
@.str.108 = private unnamed_addr constant [5 x i8] c"push\00", align 1
@.str.109 = private unnamed_addr constant [11 x i8] c"range-diff\00", align 1
@.str.110 = private unnamed_addr constant [10 x i8] c"read-tree\00", align 1
@.str.111 = private unnamed_addr constant [7 x i8] c"rebase\00", align 1
@.str.112 = private unnamed_addr constant [13 x i8] c"receive-pack\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"reflog\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"remote\00", align 1
@.str.115 = private unnamed_addr constant [11 x i8] c"remote-ext\00", align 1
@.str.116 = private unnamed_addr constant [10 x i8] c"remote-fd\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"repack\00", align 1
@.str.118 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.119 = private unnamed_addr constant [7 x i8] c"rerere\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"restore\00", align 1
@.str.122 = private unnamed_addr constant [9 x i8] c"rev-list\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"rev-parse\00", align 1
@.str.124 = private unnamed_addr constant [7 x i8] c"revert\00", align 1
@.str.125 = private unnamed_addr constant [3 x i8] c"rm\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"send-pack\00", align 1
@.str.127 = private unnamed_addr constant [9 x i8] c"shortlog\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"show\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"show-branch\00", align 1
@.str.130 = private unnamed_addr constant [11 x i8] c"show-index\00", align 1
@.str.131 = private unnamed_addr constant [9 x i8] c"show-ref\00", align 1
@.str.132 = private unnamed_addr constant [16 x i8] c"sparse-checkout\00", align 1
@.str.133 = private unnamed_addr constant [6 x i8] c"stage\00", align 1
@.str.134 = private unnamed_addr constant [6 x i8] c"stash\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"stripspace\00", align 1
@.str.137 = private unnamed_addr constant [18 x i8] c"submodule--helper\00", align 1
@.str.138 = private unnamed_addr constant [7 x i8] c"switch\00", align 1
@.str.139 = private unnamed_addr constant [13 x i8] c"symbolic-ref\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@.str.141 = private unnamed_addr constant [12 x i8] c"unpack-file\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"unpack-objects\00", align 1
@.str.143 = private unnamed_addr constant [13 x i8] c"update-index\00", align 1
@.str.144 = private unnamed_addr constant [11 x i8] c"update-ref\00", align 1
@.str.145 = private unnamed_addr constant [19 x i8] c"update-server-info\00", align 1
@.str.146 = private unnamed_addr constant [15 x i8] c"upload-archive\00", align 1
@.str.147 = private unnamed_addr constant [23 x i8] c"upload-archive--writer\00", align 1
@.str.148 = private unnamed_addr constant [12 x i8] c"upload-pack\00", align 1
@.str.149 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.150 = private unnamed_addr constant [14 x i8] c"verify-commit\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"verify-pack\00", align 1
@.str.152 = private unnamed_addr constant [11 x i8] c"verify-tag\00", align 1
@.str.153 = private unnamed_addr constant [12 x i8] c"whatchanged\00", align 1
@.str.154 = private unnamed_addr constant [9 x i8] c"worktree\00", align 1
@.str.155 = private unnamed_addr constant [11 x i8] c"write-tree\00", align 1
@empty_strvec = external global [0 x i8*], align 8
@__const.handle_builtin.args = private unnamed_addr constant %struct.strvec { i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @empty_strvec, i32 0, i32 0), i64 0, i64 0 }, align 8
@.str.156 = private unnamed_addr constant [17 x i8] c"--exclude-guides\00", align 1
@__func__.run_builtin = private unnamed_addr constant [12 x i8] c"run_builtin\00", align 1
@.str.157 = private unnamed_addr constant [19 x i8] c"!prefix || *prefix\00", align 1
@startup_info = external global %struct.startup_info*, align 8
@.str.158 = private unnamed_addr constant [34 x i8] c"%s doesn't support --super-prefix\00", align 1
@trace_default_key = external global %struct.trace_key, align 8
@.str.159 = private unnamed_addr constant [21 x i8] c"trace: built-in: git\00", align 1
@the_repository = external global %struct.repository*, align 8
@__stdoutp = external global %struct.__sFILE*, align 8
@.str.160 = private unnamed_addr constant [33 x i8] c"write failure on standard output\00", align 1
@.str.161 = private unnamed_addr constant [41 x i8] c"unknown write failure on standard output\00", align 1
@.str.162 = private unnamed_addr constant [32 x i8] c"close failed on standard output\00", align 1
@.str.163 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.164 = private unnamed_addr constant [12 x i8] c"--exec-path\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"_query_\00", align 1
@.str.166 = private unnamed_addr constant [12 x i8] c"--html-path\00", align 1
@.str.167 = private unnamed_addr constant [18 x i8] c"share/doc/git-doc\00", align 1
@.str.168 = private unnamed_addr constant [11 x i8] c"--man-path\00", align 1
@.str.169 = private unnamed_addr constant [10 x i8] c"share/man\00", align 1
@.str.170 = private unnamed_addr constant [12 x i8] c"--info-path\00", align 1
@.str.171 = private unnamed_addr constant [11 x i8] c"share/info\00", align 1
@.str.172 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.173 = private unnamed_addr constant [11 x i8] c"--paginate\00", align 1
@.str.174 = private unnamed_addr constant [3 x i8] c"-P\00", align 1
@.str.175 = private unnamed_addr constant [11 x i8] c"--no-pager\00", align 1
@.str.176 = private unnamed_addr constant [21 x i8] c"--no-replace-objects\00", align 1
@read_replace_refs = external global i32, align 4
@.str.177 = private unnamed_addr constant [23 x i8] c"GIT_NO_REPLACE_OBJECTS\00", align 1
@.str.178 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.179 = private unnamed_addr constant [10 x i8] c"--git-dir\00", align 1
@.str.180 = private unnamed_addr constant [36 x i8] c"no directory given for '%s' option\0A\00", align 1
@.str.181 = private unnamed_addr constant [8 x i8] c"GIT_DIR\00", align 1
@.str.182 = private unnamed_addr constant [11 x i8] c"--git-dir=\00", align 1
@.str.183 = private unnamed_addr constant [12 x i8] c"--namespace\00", align 1
@.str.184 = private unnamed_addr constant [36 x i8] c"no namespace given for --namespace\0A\00", align 1
@.str.185 = private unnamed_addr constant [14 x i8] c"GIT_NAMESPACE\00", align 1
@.str.186 = private unnamed_addr constant [13 x i8] c"--namespace=\00", align 1
@.str.187 = private unnamed_addr constant [12 x i8] c"--work-tree\00", align 1
@.str.188 = private unnamed_addr constant [14 x i8] c"GIT_WORK_TREE\00", align 1
@.str.189 = private unnamed_addr constant [13 x i8] c"--work-tree=\00", align 1
@.str.190 = private unnamed_addr constant [15 x i8] c"--super-prefix\00", align 1
@.str.191 = private unnamed_addr constant [36 x i8] c"no prefix given for --super-prefix\0A\00", align 1
@.str.192 = private unnamed_addr constant [26 x i8] c"GIT_INTERNAL_SUPER_PREFIX\00", align 1
@.str.193 = private unnamed_addr constant [16 x i8] c"--super-prefix=\00", align 1
@.str.194 = private unnamed_addr constant [7 x i8] c"--bare\00", align 1
@is_bare_repository_cfg = external global i32, align 4
@.str.195 = private unnamed_addr constant [23 x i8] c"GIT_IMPLICIT_WORK_TREE\00", align 1
@.str.196 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.197 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.198 = private unnamed_addr constant [35 x i8] c"-c expects a configuration string\0A\00", align 1
@.str.199 = private unnamed_addr constant [13 x i8] c"--config-env\00", align 1
@.str.200 = private unnamed_addr constant [38 x i8] c"no config key given for --config-env\0A\00", align 1
@.str.201 = private unnamed_addr constant [14 x i8] c"--config-env=\00", align 1
@.str.202 = private unnamed_addr constant [20 x i8] c"--literal-pathspecs\00", align 1
@.str.203 = private unnamed_addr constant [22 x i8] c"GIT_LITERAL_PATHSPECS\00", align 1
@.str.204 = private unnamed_addr constant [23 x i8] c"--no-literal-pathspecs\00", align 1
@.str.205 = private unnamed_addr constant [17 x i8] c"--glob-pathspecs\00", align 1
@.str.206 = private unnamed_addr constant [19 x i8] c"GIT_GLOB_PATHSPECS\00", align 1
@.str.207 = private unnamed_addr constant [19 x i8] c"--noglob-pathspecs\00", align 1
@.str.208 = private unnamed_addr constant [21 x i8] c"GIT_NOGLOB_PATHSPECS\00", align 1
@.str.209 = private unnamed_addr constant [18 x i8] c"--icase-pathspecs\00", align 1
@.str.210 = private unnamed_addr constant [20 x i8] c"GIT_ICASE_PATHSPECS\00", align 1
@.str.211 = private unnamed_addr constant [20 x i8] c"--no-optional-locks\00", align 1
@.str.212 = private unnamed_addr constant [19 x i8] c"GIT_OPTIONAL_LOCKS\00", align 1
@.str.213 = private unnamed_addr constant [15 x i8] c"--shallow-file\00", align 1
@.str.214 = private unnamed_addr constant [3 x i8] c"-C\00", align 1
@.str.215 = private unnamed_addr constant [22 x i8] c"cannot change to '%s'\00", align 1
@.str.216 = private unnamed_addr constant [13 x i8] c"--list-cmds=\00", align 1
@.str.217 = private unnamed_addr constant [9 x i8] c"parseopt\00", align 1
@.str.218 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.219 = private unnamed_addr constant [20 x i8] c"unknown option: %s\0A\00", align 1
@.str.220 = private unnamed_addr constant [9 x i8] c"builtins\00", align 1
@.str.221 = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.222 = private unnamed_addr constant [7 x i8] c"others\00", align 1
@.str.223 = private unnamed_addr constant [10 x i8] c"nohelpers\00", align 1
@.str.224 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@.str.225 = private unnamed_addr constant [6 x i8] c"list-\00", align 1
@strbuf_slopbuf = external global [0 x i8], align 1
@__const.list_cmds.sb = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strbuf_slopbuf, i32 0, i32 0) }, align 8
@.str.226 = private unnamed_addr constant [38 x i8] c"unsupported command listing type '%s'\00", align 1
@.str.227 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.228 = private unnamed_addr constant [16 x i8] c"_run_git_alias_\00", align 1
@.str.229 = private unnamed_addr constant [4 x i8] c"git\00", align 1
@.str.230 = private unnamed_addr constant [13 x i8] c"trace: exec:\00", align 1
@.str.231 = private unnamed_addr constant [10 x i8] c"git_alias\00", align 1
@.str.232 = private unnamed_addr constant [29 x i8] c"could not execute builtin %s\00", align 1
@__const.run_argv.sb = private unnamed_addr constant %struct.strbuf { i64 0, i64 0, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @strbuf_slopbuf, i32 0, i32 0) }, align 8
@.str.233 = private unnamed_addr constant [6 x i8] c"\0A  %s\00", align 1
@.str.234 = private unnamed_addr constant [5 x i8] c" <==\00", align 1
@.str.235 = private unnamed_addr constant [5 x i8] c" ==>\00", align 1
@.str.236 = private unnamed_addr constant [61 x i8] c"alias loop detected: expansion of '%s' does not terminate:%s\00", align 1
@.str.237 = private unnamed_addr constant [7 x i8] c"git-%s\00", align 1
@.str.238 = private unnamed_addr constant [7 x i8] c"dashed\00", align 1
@.str.239 = private unnamed_addr constant [13 x i8] c"_run_dashed_\00", align 1
@.str.240 = private unnamed_addr constant [24 x i8] c"'%s' is aliased to '%s'\00", align 1
@.str.241 = private unnamed_addr constant [12 x i8] c"shell_alias\00", align 1
@.str.242 = private unnamed_addr constant [18 x i8] c"_run_shell_alias_\00", align 1
@.str.243 = private unnamed_addr constant [33 x i8] c"while expanding alias '%s': '%s'\00", align 1
@.str.244 = private unnamed_addr constant [24 x i8] c"bad alias.%s string: %s\00", align 1
@.str.245 = private unnamed_addr constant [85 x i8] c"alias '%s' changes environment variables.\0AYou can use '!git' in the alias to do this\00", align 1
@.str.246 = private unnamed_addr constant [19 x i8] c"empty alias for %s\00", align 1
@.str.247 = private unnamed_addr constant [20 x i8] c"recursive alias: %s\00", align 1
@.str.248 = private unnamed_addr constant [30 x i8] c"trace: alias expansion: %s =>\00", align 1
@.str.249 = private unnamed_addr constant [27 x i8] c"size_t overflow: %ju * %ju\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define void @setup_auto_pager(i8* %cmd, i32 %def) #0 !dbg !48 {
entry:
  %cmd.addr = alloca i8*, align 8
  %def.addr = alloca i32, align 4
  store i8* %cmd, i8** %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %cmd.addr, metadata !51, metadata !DIExpression()), !dbg !52
  store i32 %def, i32* %def.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %def.addr, metadata !53, metadata !DIExpression()), !dbg !54
  %0 = load i32, i32* @use_pager, align 4, !dbg !55
  %cmp = icmp ne i32 %0, -1, !dbg !57
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !58

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @pager_in_use(), !dbg !59
  %tobool = icmp ne i32 %call, 0, !dbg !59
  br i1 %tobool, label %if.then, label %if.end, !dbg !60

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !61

if.end:                                           ; preds = %lor.lhs.false
  %1 = load i8*, i8** %cmd.addr, align 8, !dbg !62
  %call1 = call i32 @check_pager_config(i8* %1), !dbg !63
  store i32 %call1, i32* @use_pager, align 4, !dbg !64
  %2 = load i32, i32* @use_pager, align 4, !dbg !65
  %cmp2 = icmp eq i32 %2, -1, !dbg !67
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !68

if.then3:                                         ; preds = %if.end
  %3 = load i32, i32* %def.addr, align 4, !dbg !69
  store i32 %3, i32* @use_pager, align 4, !dbg !70
  br label %if.end4, !dbg !71

if.end4:                                          ; preds = %if.then3, %if.end
  call void @commit_pager_choice(), !dbg !72
  br label %return, !dbg !73

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !73
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @pager_in_use() #2

declare i32 @check_pager_config(i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @commit_pager_choice() #0 !dbg !74 {
entry:
  %0 = load i32, i32* @use_pager, align 4, !dbg !77
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !78

sw.bb:                                            ; preds = %entry
  %call = call i32 @"\01_setenv"(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 1), !dbg !79
  br label %sw.epilog, !dbg !81

sw.bb1:                                           ; preds = %entry
  call void @setup_pager(), !dbg !82
  br label %sw.epilog, !dbg !83

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !84

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  ret void, !dbg !85
}

declare i32 @"\01_setenv"(i8*, i8*, i32) #2

declare void @setup_pager() #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @is_builtin(i8* %s) #0 !dbg !86 {
entry:
  %s.addr = alloca i8*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !89, metadata !DIExpression()), !dbg !90
  %0 = load i8*, i8** %s.addr, align 8, !dbg !91
  %call = call %struct.cmd_struct* @get_builtin(i8* %0), !dbg !92
  %tobool = icmp ne %struct.cmd_struct* %call, null, !dbg !93
  %lnot = xor i1 %tobool, true, !dbg !93
  %lnot1 = xor i1 %lnot, true, !dbg !94
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !94
  ret i32 %lnot.ext, !dbg !95
}

; Function Attrs: noinline nounwind ssp uwtable
define internal %struct.cmd_struct* @get_builtin(i8* %s) #0 !dbg !96 {
entry:
  %retval = alloca %struct.cmd_struct*, align 8
  %s.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %p = alloca %struct.cmd_struct*, align 8
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata i32* %i, metadata !102, metadata !DIExpression()), !dbg !103
  store i32 0, i32* %i, align 4, !dbg !104
  br label %for.cond, !dbg !106

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !107
  %conv = sext i32 %0 to i64, !dbg !107
  %cmp = icmp ult i64 %conv, 141, !dbg !109
  br i1 %cmp, label %for.body, label %for.end, !dbg !110

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.cmd_struct** %p, metadata !111, metadata !DIExpression()), !dbg !113
  %1 = load i32, i32* %i, align 4, !dbg !114
  %idx.ext = sext i32 %1 to i64, !dbg !115
  %add.ptr = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* getelementptr inbounds ([141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 0), i64 %idx.ext, !dbg !115
  store %struct.cmd_struct* %add.ptr, %struct.cmd_struct** %p, align 8, !dbg !113
  %2 = load i8*, i8** %s.addr, align 8, !dbg !116
  %3 = load %struct.cmd_struct*, %struct.cmd_struct** %p, align 8, !dbg !118
  %cmd = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %3, i32 0, i32 0, !dbg !119
  %4 = load i8*, i8** %cmd, align 8, !dbg !119
  %call = call i32 @strcmp(i8* %2, i8* %4), !dbg !120
  %tobool = icmp ne i32 %call, 0, !dbg !120
  br i1 %tobool, label %if.end, label %if.then, !dbg !121

if.then:                                          ; preds = %for.body
  %5 = load %struct.cmd_struct*, %struct.cmd_struct** %p, align 8, !dbg !122
  store %struct.cmd_struct* %5, %struct.cmd_struct** %retval, align 8, !dbg !123
  br label %return, !dbg !123

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !124

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4, !dbg !125
  %inc = add nsw i32 %6, 1, !dbg !125
  store i32 %inc, i32* %i, align 4, !dbg !125
  br label %for.cond, !dbg !126, !llvm.loop !127

for.end:                                          ; preds = %for.cond
  store %struct.cmd_struct* null, %struct.cmd_struct** %retval, align 8, !dbg !130
  br label %return, !dbg !130

return:                                           ; preds = %for.end, %if.then
  %7 = load %struct.cmd_struct*, %struct.cmd_struct** %retval, align 8, !dbg !131
  ret %struct.cmd_struct* %7, !dbg !131
}

declare i32 @strcmp(i8*, i8*) #2

declare i32 @cmd_add(i32, i8**, i8*) #2

declare i32 @cmd_am(i32, i8**, i8*) #2

declare i32 @cmd_annotate(i32, i8**, i8*) #2

declare i32 @cmd_apply(i32, i8**, i8*) #2

declare i32 @cmd_archive(i32, i8**, i8*) #2

declare i32 @cmd_bisect__helper(i32, i8**, i8*) #2

declare i32 @cmd_blame(i32, i8**, i8*) #2

declare i32 @cmd_branch(i32, i8**, i8*) #2

declare i32 @cmd_bugreport(i32, i8**, i8*) #2

declare i32 @cmd_bundle(i32, i8**, i8*) #2

declare i32 @cmd_cat_file(i32, i8**, i8*) #2

declare i32 @cmd_check_attr(i32, i8**, i8*) #2

declare i32 @cmd_check_ignore(i32, i8**, i8*) #2

declare i32 @cmd_check_mailmap(i32, i8**, i8*) #2

declare i32 @cmd_check_ref_format(i32, i8**, i8*) #2

declare i32 @cmd_checkout(i32, i8**, i8*) #2

declare i32 @cmd_checkout__worker(i32, i8**, i8*) #2

declare i32 @cmd_checkout_index(i32, i8**, i8*) #2

declare i32 @cmd_cherry(i32, i8**, i8*) #2

declare i32 @cmd_cherry_pick(i32, i8**, i8*) #2

declare i32 @cmd_clean(i32, i8**, i8*) #2

declare i32 @cmd_clone(i32, i8**, i8*) #2

declare i32 @cmd_column(i32, i8**, i8*) #2

declare i32 @cmd_commit(i32, i8**, i8*) #2

declare i32 @cmd_commit_graph(i32, i8**, i8*) #2

declare i32 @cmd_commit_tree(i32, i8**, i8*) #2

declare i32 @cmd_config(i32, i8**, i8*) #2

declare i32 @cmd_count_objects(i32, i8**, i8*) #2

declare i32 @cmd_credential(i32, i8**, i8*) #2

declare i32 @cmd_credential_cache(i32, i8**, i8*) #2

declare i32 @cmd_credential_cache_daemon(i32, i8**, i8*) #2

declare i32 @cmd_credential_store(i32, i8**, i8*) #2

declare i32 @cmd_describe(i32, i8**, i8*) #2

declare i32 @cmd_diagnose(i32, i8**, i8*) #2

declare i32 @cmd_diff(i32, i8**, i8*) #2

declare i32 @cmd_diff_files(i32, i8**, i8*) #2

declare i32 @cmd_diff_index(i32, i8**, i8*) #2

declare i32 @cmd_diff_tree(i32, i8**, i8*) #2

declare i32 @cmd_difftool(i32, i8**, i8*) #2

declare i32 @cmd_env__helper(i32, i8**, i8*) #2

declare i32 @cmd_fast_export(i32, i8**, i8*) #2

declare i32 @cmd_fast_import(i32, i8**, i8*) #2

declare i32 @cmd_fetch(i32, i8**, i8*) #2

declare i32 @cmd_fetch_pack(i32, i8**, i8*) #2

declare i32 @cmd_fmt_merge_msg(i32, i8**, i8*) #2

declare i32 @cmd_for_each_ref(i32, i8**, i8*) #2

declare i32 @cmd_for_each_repo(i32, i8**, i8*) #2

declare i32 @cmd_format_patch(i32, i8**, i8*) #2

declare i32 @cmd_fsck(i32, i8**, i8*) #2

declare i32 @cmd_fsmonitor__daemon(i32, i8**, i8*) #2

declare i32 @cmd_gc(i32, i8**, i8*) #2

declare i32 @cmd_get_tar_commit_id(i32, i8**, i8*) #2

declare i32 @cmd_grep(i32, i8**, i8*) #2

declare i32 @cmd_hash_object(i32, i8**, i8*) #2

declare i32 @cmd_help(i32, i8**, i8*) #2

declare i32 @cmd_hook(i32, i8**, i8*) #2

declare i32 @cmd_index_pack(i32, i8**, i8*) #2

declare i32 @cmd_init_db(i32, i8**, i8*) #2

declare i32 @cmd_interpret_trailers(i32, i8**, i8*) #2

declare i32 @cmd_log(i32, i8**, i8*) #2

declare i32 @cmd_ls_files(i32, i8**, i8*) #2

declare i32 @cmd_ls_remote(i32, i8**, i8*) #2

declare i32 @cmd_ls_tree(i32, i8**, i8*) #2

declare i32 @cmd_mailinfo(i32, i8**, i8*) #2

declare i32 @cmd_mailsplit(i32, i8**, i8*) #2

declare i32 @cmd_maintenance(i32, i8**, i8*) #2

declare i32 @cmd_merge(i32, i8**, i8*) #2

declare i32 @cmd_merge_base(i32, i8**, i8*) #2

declare i32 @cmd_merge_file(i32, i8**, i8*) #2

declare i32 @cmd_merge_index(i32, i8**, i8*) #2

declare i32 @cmd_merge_ours(i32, i8**, i8*) #2

declare i32 @cmd_merge_recursive(i32, i8**, i8*) #2

declare i32 @cmd_merge_tree(i32, i8**, i8*) #2

declare i32 @cmd_mktag(i32, i8**, i8*) #2

declare i32 @cmd_mktree(i32, i8**, i8*) #2

declare i32 @cmd_multi_pack_index(i32, i8**, i8*) #2

declare i32 @cmd_mv(i32, i8**, i8*) #2

declare i32 @cmd_name_rev(i32, i8**, i8*) #2

declare i32 @cmd_notes(i32, i8**, i8*) #2

declare i32 @cmd_pack_objects(i32, i8**, i8*) #2

declare i32 @cmd_pack_redundant(i32, i8**, i8*) #2

declare i32 @cmd_pack_refs(i32, i8**, i8*) #2

declare i32 @cmd_patch_id(i32, i8**, i8*) #2

declare i32 @cmd_prune(i32, i8**, i8*) #2

declare i32 @cmd_prune_packed(i32, i8**, i8*) #2

declare i32 @cmd_pull(i32, i8**, i8*) #2

declare i32 @cmd_push(i32, i8**, i8*) #2

declare i32 @cmd_range_diff(i32, i8**, i8*) #2

declare i32 @cmd_read_tree(i32, i8**, i8*) #2

declare i32 @cmd_rebase(i32, i8**, i8*) #2

declare i32 @cmd_receive_pack(i32, i8**, i8*) #2

declare i32 @cmd_reflog(i32, i8**, i8*) #2

declare i32 @cmd_remote(i32, i8**, i8*) #2

declare i32 @cmd_remote_ext(i32, i8**, i8*) #2

declare i32 @cmd_remote_fd(i32, i8**, i8*) #2

declare i32 @cmd_repack(i32, i8**, i8*) #2

declare i32 @cmd_replace(i32, i8**, i8*) #2

declare i32 @cmd_rerere(i32, i8**, i8*) #2

declare i32 @cmd_reset(i32, i8**, i8*) #2

declare i32 @cmd_restore(i32, i8**, i8*) #2

declare i32 @cmd_rev_list(i32, i8**, i8*) #2

declare i32 @cmd_rev_parse(i32, i8**, i8*) #2

declare i32 @cmd_revert(i32, i8**, i8*) #2

declare i32 @cmd_rm(i32, i8**, i8*) #2

declare i32 @cmd_send_pack(i32, i8**, i8*) #2

declare i32 @cmd_shortlog(i32, i8**, i8*) #2

declare i32 @cmd_show(i32, i8**, i8*) #2

declare i32 @cmd_show_branch(i32, i8**, i8*) #2

declare i32 @cmd_show_index(i32, i8**, i8*) #2

declare i32 @cmd_show_ref(i32, i8**, i8*) #2

declare i32 @cmd_sparse_checkout(i32, i8**, i8*) #2

declare i32 @cmd_stash(i32, i8**, i8*) #2

declare i32 @cmd_status(i32, i8**, i8*) #2

declare i32 @cmd_stripspace(i32, i8**, i8*) #2

declare i32 @cmd_submodule__helper(i32, i8**, i8*) #2

declare i32 @cmd_switch(i32, i8**, i8*) #2

declare i32 @cmd_symbolic_ref(i32, i8**, i8*) #2

declare i32 @cmd_tag(i32, i8**, i8*) #2

declare i32 @cmd_unpack_file(i32, i8**, i8*) #2

declare i32 @cmd_unpack_objects(i32, i8**, i8*) #2

declare i32 @cmd_update_index(i32, i8**, i8*) #2

declare i32 @cmd_update_ref(i32, i8**, i8*) #2

declare i32 @cmd_update_server_info(i32, i8**, i8*) #2

declare i32 @cmd_upload_archive(i32, i8**, i8*) #2

declare i32 @cmd_upload_archive_writer(i32, i8**, i8*) #2

declare i32 @cmd_upload_pack(i32, i8**, i8*) #2

declare i32 @cmd_var(i32, i8**, i8*) #2

declare i32 @cmd_verify_commit(i32, i8**, i8*) #2

declare i32 @cmd_verify_pack(i32, i8**, i8*) #2

declare i32 @cmd_verify_tag(i32, i8**, i8*) #2

declare i32 @cmd_version(i32, i8**, i8*) #2

declare i32 @cmd_whatchanged(i32, i8**, i8*) #2

declare i32 @cmd_worktree(i32, i8**, i8*) #2

declare i32 @cmd_write_tree(i32, i8**, i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @load_builtin_commands(i8* %prefix, %struct.cmdnames* %cmds) #0 !dbg !132 {
entry:
  %prefix.addr = alloca i8*, align 8
  %cmds.addr = alloca %struct.cmdnames*, align 8
  %name = alloca i8*, align 8
  %i = alloca i32, align 4
  store i8* %prefix, i8** %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prefix.addr, metadata !155, metadata !DIExpression()), !dbg !156
  store %struct.cmdnames* %cmds, %struct.cmdnames** %cmds.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cmdnames** %cmds.addr, metadata !157, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.declare(metadata i8** %name, metadata !159, metadata !DIExpression()), !dbg !160
  call void @llvm.dbg.declare(metadata i32* %i, metadata !161, metadata !DIExpression()), !dbg !162
  %0 = load i8*, i8** %prefix.addr, align 8, !dbg !163
  %call = call i32 @skip_prefix(i8* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %prefix.addr), !dbg !165
  %tobool = icmp ne i32 %call, 0, !dbg !165
  br i1 %tobool, label %if.end, label %if.then, !dbg !166

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %prefix.addr, align 8, !dbg !167
  call void (i8*, i32, i8*, ...) @BUG_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 674, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %1) #8, !dbg !167
  unreachable, !dbg !167

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !168
  br label %for.cond, !dbg !170

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4, !dbg !171
  %conv = sext i32 %2 to i64, !dbg !171
  %cmp = icmp ult i64 %conv, 141, !dbg !173
  br i1 %cmp, label %for.body, label %for.end, !dbg !174

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !175
  %idxprom = sext i32 %3 to i64, !dbg !177
  %arrayidx = getelementptr inbounds [141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 %idxprom, !dbg !177
  %cmd = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %arrayidx, i32 0, i32 0, !dbg !178
  %4 = load i8*, i8** %cmd, align 8, !dbg !178
  %5 = load i8*, i8** %prefix.addr, align 8, !dbg !179
  %call2 = call i32 @skip_prefix(i8* %4, i8* %5, i8** %name), !dbg !180
  %tobool3 = icmp ne i32 %call2, 0, !dbg !180
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !181

if.then4:                                         ; preds = %for.body
  %6 = load %struct.cmdnames*, %struct.cmdnames** %cmds.addr, align 8, !dbg !182
  %7 = load i8*, i8** %name, align 8, !dbg !183
  %8 = load i8*, i8** %name, align 8, !dbg !184
  %call5 = call i64 @strlen(i8* %8), !dbg !185
  %conv6 = trunc i64 %call5 to i32, !dbg !185
  call void @add_cmdname(%struct.cmdnames* %6, i8* %7, i32 %conv6), !dbg !186
  br label %if.end7, !dbg !186

if.end7:                                          ; preds = %if.then4, %for.body
  br label %for.inc, !dbg !187

for.inc:                                          ; preds = %if.end7
  %9 = load i32, i32* %i, align 4, !dbg !188
  %inc = add nsw i32 %9, 1, !dbg !188
  store i32 %inc, i32* %i, align 4, !dbg !188
  br label %for.cond, !dbg !189, !llvm.loop !190

for.end:                                          ; preds = %for.cond
  ret void, !dbg !192
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @skip_prefix(i8* %str, i8* %prefix, i8** %out) #0 !dbg !193 {
entry:
  %retval = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %prefix.addr = alloca i8*, align 8
  %out.addr = alloca i8**, align 8
  store i8* %str, i8** %str.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %str.addr, metadata !197, metadata !DIExpression()), !dbg !198
  store i8* %prefix, i8** %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prefix.addr, metadata !199, metadata !DIExpression()), !dbg !200
  store i8** %out, i8*** %out.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %out.addr, metadata !201, metadata !DIExpression()), !dbg !202
  br label %do.body, !dbg !203

do.body:                                          ; preds = %do.cond, %entry
  %0 = load i8*, i8** %prefix.addr, align 8, !dbg !204
  %1 = load i8, i8* %0, align 1, !dbg !207
  %tobool = icmp ne i8 %1, 0, !dbg !207
  br i1 %tobool, label %if.end, label %if.then, !dbg !208

if.then:                                          ; preds = %do.body
  %2 = load i8*, i8** %str.addr, align 8, !dbg !209
  %3 = load i8**, i8*** %out.addr, align 8, !dbg !211
  store i8* %2, i8** %3, align 8, !dbg !212
  store i32 1, i32* %retval, align 4, !dbg !213
  br label %return, !dbg !213

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !214

do.cond:                                          ; preds = %if.end
  %4 = load i8*, i8** %str.addr, align 8, !dbg !215
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i32 1, !dbg !215
  store i8* %incdec.ptr, i8** %str.addr, align 8, !dbg !215
  %5 = load i8, i8* %4, align 1, !dbg !216
  %conv = sext i8 %5 to i32, !dbg !216
  %6 = load i8*, i8** %prefix.addr, align 8, !dbg !217
  %incdec.ptr1 = getelementptr inbounds i8, i8* %6, i32 1, !dbg !217
  store i8* %incdec.ptr1, i8** %prefix.addr, align 8, !dbg !217
  %7 = load i8, i8* %6, align 1, !dbg !218
  %conv2 = sext i8 %7 to i32, !dbg !218
  %cmp = icmp eq i32 %conv, %conv2, !dbg !219
  br i1 %cmp, label %do.body, label %do.end, !dbg !214, !llvm.loop !220

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, align 4, !dbg !222
  br label %return, !dbg !222

return:                                           ; preds = %do.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !223
  ret i32 %8, !dbg !223
}

; Function Attrs: noreturn
declare void @BUG_fl(i8*, i32, i8*, ...) #3

declare i64 @strlen(i8*) #2

declare void @add_cmdname(%struct.cmdnames*, i8*, i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @cmd_main(i32 %argc, i8** %argv) #0 !dbg !224 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %cmd = alloca i8*, align 8
  %done_help = alloca i32, align 4
  %slash = alloca i8*, align 8
  %was_alias = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !227, metadata !DIExpression()), !dbg !228
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !229, metadata !DIExpression()), !dbg !230
  call void @llvm.dbg.declare(metadata i8** %cmd, metadata !231, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.declare(metadata i32* %done_help, metadata !233, metadata !DIExpression()), !dbg !234
  store i32 0, i32* %done_help, align 4, !dbg !234
  %0 = load i8**, i8*** %argv.addr, align 8, !dbg !235
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0, !dbg !235
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !235
  store i8* %1, i8** %cmd, align 8, !dbg !236
  %2 = load i8*, i8** %cmd, align 8, !dbg !237
  %tobool = icmp ne i8* %2, null, !dbg !237
  br i1 %tobool, label %if.else, label %if.then, !dbg !239

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %cmd, align 8, !dbg !240
  br label %if.end3, !dbg !241

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %slash, metadata !242, metadata !DIExpression()), !dbg !244
  %3 = load i8*, i8** %cmd, align 8, !dbg !245
  %call = call i8* @git_find_last_dir_sep(i8* %3), !dbg !246
  store i8* %call, i8** %slash, align 8, !dbg !244
  %4 = load i8*, i8** %slash, align 8, !dbg !247
  %tobool1 = icmp ne i8* %4, null, !dbg !247
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !249

if.then2:                                         ; preds = %if.else
  %5 = load i8*, i8** %slash, align 8, !dbg !250
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1, !dbg !251
  store i8* %add.ptr, i8** %cmd, align 8, !dbg !252
  br label %if.end, !dbg !253

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %6 = load i8**, i8*** %argv.addr, align 8, !dbg !254
  call void @trace_command_performance(i8** %6), !dbg !255
  %7 = load i8*, i8** %cmd, align 8, !dbg !256
  %call4 = call i32 @skip_prefix(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %cmd), !dbg !258
  %tobool5 = icmp ne i32 %call4, 0, !dbg !258
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !259

if.then6:                                         ; preds = %if.end3
  %8 = load i8*, i8** %cmd, align 8, !dbg !260
  %9 = load i8**, i8*** %argv.addr, align 8, !dbg !262
  %arrayidx7 = getelementptr inbounds i8*, i8** %9, i64 0, !dbg !262
  store i8* %8, i8** %arrayidx7, align 8, !dbg !263
  %10 = load i32, i32* %argc.addr, align 4, !dbg !264
  %11 = load i8**, i8*** %argv.addr, align 8, !dbg !265
  call void @handle_builtin(i32 %10, i8** %11), !dbg !266
  %call8 = call i8* @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0)), !dbg !267
  %12 = load i8*, i8** %cmd, align 8, !dbg !268
  call void (i8*, ...) @die(i8* %call8, i8* %12) #8, !dbg !269
  unreachable, !dbg !269

if.end9:                                          ; preds = %if.end3
  %13 = load i8**, i8*** %argv.addr, align 8, !dbg !270
  %incdec.ptr = getelementptr inbounds i8*, i8** %13, i32 1, !dbg !270
  store i8** %incdec.ptr, i8*** %argv.addr, align 8, !dbg !270
  %14 = load i32, i32* %argc.addr, align 4, !dbg !271
  %dec = add nsw i32 %14, -1, !dbg !271
  store i32 %dec, i32* %argc.addr, align 4, !dbg !271
  %call10 = call i32 @handle_options(i8*** %argv.addr, i32* %argc.addr, i32* null), !dbg !272
  %15 = load i32, i32* %argc.addr, align 4, !dbg !273
  %tobool11 = icmp ne i32 %15, 0, !dbg !273
  br i1 %tobool11, label %if.end18, label %if.then12, !dbg !275

if.then12:                                        ; preds = %if.end9
  call void @commit_pager_choice(), !dbg !276
  %call13 = call i8* @_(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)), !dbg !278
  %call14 = call i32 (i8*, ...) @printf(i8* %call13, i8* getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)), !dbg !279
  call void @list_common_cmds_help(), !dbg !280
  %call15 = call i8* @_(i8* getelementptr inbounds ([231 x i8], [231 x i8]* @git_more_info_string, i64 0, i64 0)), !dbg !281
  %call16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %call15), !dbg !282
  %call17 = call i32 @common_exit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 907, i32 1), !dbg !283
  call void @exit(i32 %call17) #8, !dbg !283
  unreachable, !dbg !283

if.end18:                                         ; preds = %if.end9
  %16 = load i8**, i8*** %argv.addr, align 8, !dbg !284
  %arrayidx19 = getelementptr inbounds i8*, i8** %16, i64 0, !dbg !284
  %17 = load i8*, i8** %arrayidx19, align 8, !dbg !284
  %call20 = call i32 @strcmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* %17), !dbg !286
  %tobool21 = icmp ne i32 %call20, 0, !dbg !286
  br i1 %tobool21, label %lor.lhs.false, label %if.then25, !dbg !287

lor.lhs.false:                                    ; preds = %if.end18
  %18 = load i8**, i8*** %argv.addr, align 8, !dbg !288
  %arrayidx22 = getelementptr inbounds i8*, i8** %18, i64 0, !dbg !288
  %19 = load i8*, i8** %arrayidx22, align 8, !dbg !288
  %call23 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* %19), !dbg !289
  %tobool24 = icmp ne i32 %call23, 0, !dbg !289
  br i1 %tobool24, label %if.else27, label %if.then25, !dbg !290

if.then25:                                        ; preds = %lor.lhs.false, %if.end18
  %20 = load i8**, i8*** %argv.addr, align 8, !dbg !291
  %arrayidx26 = getelementptr inbounds i8*, i8** %20, i64 0, !dbg !291
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %arrayidx26, align 8, !dbg !292
  br label %if.end38, !dbg !291

if.else27:                                        ; preds = %lor.lhs.false
  %21 = load i8**, i8*** %argv.addr, align 8, !dbg !293
  %arrayidx28 = getelementptr inbounds i8*, i8** %21, i64 0, !dbg !293
  %22 = load i8*, i8** %arrayidx28, align 8, !dbg !293
  %call29 = call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* %22), !dbg !295
  %tobool30 = icmp ne i32 %call29, 0, !dbg !295
  br i1 %tobool30, label %lor.lhs.false31, label %if.then35, !dbg !296

lor.lhs.false31:                                  ; preds = %if.else27
  %23 = load i8**, i8*** %argv.addr, align 8, !dbg !297
  %arrayidx32 = getelementptr inbounds i8*, i8** %23, i64 0, !dbg !297
  %24 = load i8*, i8** %arrayidx32, align 8, !dbg !297
  %call33 = call i32 @strcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* %24), !dbg !298
  %tobool34 = icmp ne i32 %call33, 0, !dbg !298
  br i1 %tobool34, label %if.end37, label %if.then35, !dbg !299

if.then35:                                        ; preds = %lor.lhs.false31, %if.else27
  %25 = load i8**, i8*** %argv.addr, align 8, !dbg !300
  %arrayidx36 = getelementptr inbounds i8*, i8** %25, i64 0, !dbg !300
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %arrayidx36, align 8, !dbg !301
  br label %if.end37, !dbg !300

if.end37:                                         ; preds = %if.then35, %lor.lhs.false31
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then25
  %26 = load i8**, i8*** %argv.addr, align 8, !dbg !302
  %arrayidx39 = getelementptr inbounds i8*, i8** %26, i64 0, !dbg !302
  %27 = load i8*, i8** %arrayidx39, align 8, !dbg !302
  store i8* %27, i8** %cmd, align 8, !dbg !303
  call void @setup_path(), !dbg !304
  br label %while.body, !dbg !305

while.body:                                       ; preds = %if.end38, %if.end56
  call void @llvm.dbg.declare(metadata i32* %was_alias, metadata !306, metadata !DIExpression()), !dbg !308
  %call40 = call i32 @run_argv(i32* %argc.addr, i8*** %argv.addr), !dbg !309
  store i32 %call40, i32* %was_alias, align 4, !dbg !308
  %call41 = call i32* @__error(), !dbg !310
  %28 = load i32, i32* %call41, align 4, !dbg !310
  %cmp = icmp ne i32 %28, 2, !dbg !312
  br i1 %cmp, label %if.then42, label %if.end43, !dbg !313

if.then42:                                        ; preds = %while.body
  br label %while.end, !dbg !314

if.end43:                                         ; preds = %while.body
  %29 = load i32, i32* %was_alias, align 4, !dbg !315
  %tobool44 = icmp ne i32 %29, 0, !dbg !315
  br i1 %tobool44, label %if.then45, label %if.end50, !dbg !317

if.then45:                                        ; preds = %if.end43
  %30 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !318
  %call46 = call i8* @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0)), !dbg !320
  %31 = load i8*, i8** %cmd, align 8, !dbg !321
  %32 = load i8**, i8*** %argv.addr, align 8, !dbg !322
  %arrayidx47 = getelementptr inbounds i8*, i8** %32, i64 0, !dbg !322
  %33 = load i8*, i8** %arrayidx47, align 8, !dbg !322
  %call48 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %30, i8* %call46, i8* %31, i8* %33), !dbg !323
  %call49 = call i32 @common_exit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 933, i32 1), !dbg !324
  call void @exit(i32 %call49) #8, !dbg !324
  unreachable, !dbg !324

if.end50:                                         ; preds = %if.end43
  %34 = load i32, i32* %done_help, align 4, !dbg !325
  %tobool51 = icmp ne i32 %34, 0, !dbg !325
  br i1 %tobool51, label %if.else55, label %if.then52, !dbg !327

if.then52:                                        ; preds = %if.end50
  %35 = load i8*, i8** %cmd, align 8, !dbg !328
  %call53 = call i8* @help_unknown_cmd(i8* %35), !dbg !330
  %36 = load i8**, i8*** %argv.addr, align 8, !dbg !331
  %arrayidx54 = getelementptr inbounds i8*, i8** %36, i64 0, !dbg !331
  store i8* %call53, i8** %arrayidx54, align 8, !dbg !332
  store i8* %call53, i8** %cmd, align 8, !dbg !333
  store i32 1, i32* %done_help, align 4, !dbg !334
  br label %if.end56, !dbg !335

if.else55:                                        ; preds = %if.end50
  br label %while.end, !dbg !336

if.end56:                                         ; preds = %if.then52
  br label %while.body, !dbg !305, !llvm.loop !337

while.end:                                        ; preds = %if.else55, %if.then42
  %37 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !339
  %call57 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0)), !dbg !340
  %38 = load i8*, i8** %cmd, align 8, !dbg !341
  %call58 = call i32* @__error(), !dbg !342
  %39 = load i32, i32* %call58, align 4, !dbg !342
  %call59 = call i8* @"\01_strerror"(i32 %39), !dbg !343
  %call60 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %37, i8* %call57, i8* %38, i8* %call59), !dbg !344
  ret i32 1, !dbg !345
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @git_find_last_dir_sep(i8* %path) #0 !dbg !346 {
entry:
  %path.addr = alloca i8*, align 8
  store i8* %path, i8** %path.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %path.addr, metadata !349, metadata !DIExpression()), !dbg !350
  %0 = load i8*, i8** %path.addr, align 8, !dbg !351
  %call = call i8* @strrchr(i8* %0, i32 47), !dbg !352
  ret i8* %call, !dbg !353
}

declare void @trace_command_performance(i8**) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @handle_builtin(i32 %argc, i8** %argv) #0 !dbg !354 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %args = alloca %struct.strvec, align 8
  %cmd = alloca i8*, align 8
  %builtin = alloca %struct.cmd_struct*, align 8
  %i = alloca i32, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !357, metadata !DIExpression()), !dbg !358
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !359, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.declare(metadata %struct.strvec* %args, metadata !361, metadata !DIExpression()), !dbg !368
  %0 = bitcast %struct.strvec* %args to i8*, !dbg !368
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.strvec* @__const.handle_builtin.args to i8*), i64 24, i1 false), !dbg !368
  call void @llvm.dbg.declare(metadata i8** %cmd, metadata !369, metadata !DIExpression()), !dbg !370
  call void @llvm.dbg.declare(metadata %struct.cmd_struct** %builtin, metadata !371, metadata !DIExpression()), !dbg !372
  %1 = load i8**, i8*** %argv.addr, align 8, !dbg !373
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0, !dbg !373
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !373
  store i8* %2, i8** %cmd, align 8, !dbg !374
  %3 = load i32, i32* %argc.addr, align 4, !dbg !375
  %cmp = icmp sgt i32 %3, 1, !dbg !377
  br i1 %cmp, label %land.lhs.true, label %if.end12, !dbg !378

land.lhs.true:                                    ; preds = %entry
  %4 = load i8**, i8*** %argv.addr, align 8, !dbg !379
  %arrayidx1 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !379
  %5 = load i8*, i8** %arrayidx1, align 8, !dbg !379
  %call = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)), !dbg !380
  %tobool = icmp ne i32 %call, 0, !dbg !380
  br i1 %tobool, label %if.end12, label %if.then, !dbg !381

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32* %i, metadata !382, metadata !DIExpression()), !dbg !384
  %6 = load i8**, i8*** %argv.addr, align 8, !dbg !385
  %arrayidx2 = getelementptr inbounds i8*, i8** %6, i64 0, !dbg !385
  %7 = load i8*, i8** %arrayidx2, align 8, !dbg !385
  %8 = load i8**, i8*** %argv.addr, align 8, !dbg !386
  %arrayidx3 = getelementptr inbounds i8*, i8** %8, i64 1, !dbg !386
  store i8* %7, i8** %arrayidx3, align 8, !dbg !387
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %cmd, align 8, !dbg !388
  %9 = load i8**, i8*** %argv.addr, align 8, !dbg !389
  %arrayidx4 = getelementptr inbounds i8*, i8** %9, i64 0, !dbg !389
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %arrayidx4, align 8, !dbg !390
  store i32 0, i32* %i, align 4, !dbg !391
  br label %for.cond, !dbg !393

for.cond:                                         ; preds = %for.inc, %if.then
  %10 = load i32, i32* %i, align 4, !dbg !394
  %11 = load i32, i32* %argc.addr, align 4, !dbg !396
  %cmp5 = icmp slt i32 %10, %11, !dbg !397
  br i1 %cmp5, label %for.body, label %for.end, !dbg !398

for.body:                                         ; preds = %for.cond
  %12 = load i8**, i8*** %argv.addr, align 8, !dbg !399
  %13 = load i32, i32* %i, align 4, !dbg !401
  %idxprom = sext i32 %13 to i64, !dbg !399
  %arrayidx6 = getelementptr inbounds i8*, i8** %12, i64 %idxprom, !dbg !399
  %14 = load i8*, i8** %arrayidx6, align 8, !dbg !399
  %call7 = call i8* @strvec_push(%struct.strvec* %args, i8* %14), !dbg !402
  %15 = load i32, i32* %i, align 4, !dbg !403
  %tobool8 = icmp ne i32 %15, 0, !dbg !403
  br i1 %tobool8, label %if.end, label %if.then9, !dbg !405

if.then9:                                         ; preds = %for.body
  %call10 = call i8* @strvec_push(%struct.strvec* %args, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.156, i64 0, i64 0)), !dbg !406
  br label %if.end, !dbg !406

if.end:                                           ; preds = %if.then9, %for.body
  br label %for.inc, !dbg !407

for.inc:                                          ; preds = %if.end
  %16 = load i32, i32* %i, align 4, !dbg !408
  %inc = add nsw i32 %16, 1, !dbg !408
  store i32 %inc, i32* %i, align 4, !dbg !408
  br label %for.cond, !dbg !409, !llvm.loop !410

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %argc.addr, align 4, !dbg !412
  %inc11 = add nsw i32 %17, 1, !dbg !412
  store i32 %inc11, i32* %argc.addr, align 4, !dbg !412
  %v = getelementptr inbounds %struct.strvec, %struct.strvec* %args, i32 0, i32 0, !dbg !413
  %18 = load i8**, i8*** %v, align 8, !dbg !413
  store i8** %18, i8*** %argv.addr, align 8, !dbg !414
  br label %if.end12, !dbg !415

if.end12:                                         ; preds = %for.end, %land.lhs.true, %entry
  %19 = load i8*, i8** %cmd, align 8, !dbg !416
  %call13 = call %struct.cmd_struct* @get_builtin(i8* %19), !dbg !417
  store %struct.cmd_struct* %call13, %struct.cmd_struct** %builtin, align 8, !dbg !418
  %20 = load %struct.cmd_struct*, %struct.cmd_struct** %builtin, align 8, !dbg !419
  %tobool14 = icmp ne %struct.cmd_struct* %20, null, !dbg !419
  br i1 %tobool14, label %if.then15, label %if.end18, !dbg !421

if.then15:                                        ; preds = %if.end12
  %21 = load %struct.cmd_struct*, %struct.cmd_struct** %builtin, align 8, !dbg !422
  %22 = load i32, i32* %argc.addr, align 4, !dbg !422
  %23 = load i8**, i8*** %argv.addr, align 8, !dbg !422
  %call16 = call i32 @run_builtin(%struct.cmd_struct* %21, i32 %22, i8** %23), !dbg !422
  %call17 = call i32 @common_exit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 721, i32 %call16), !dbg !422
  call void @exit(i32 %call17) #8, !dbg !422
  unreachable, !dbg !422

if.end18:                                         ; preds = %if.end12
  call void @strvec_clear(%struct.strvec* %args), !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @_(i8* %msgid) #0 !dbg !425 {
entry:
  %retval = alloca i8*, align 8
  %msgid.addr = alloca i8*, align 8
  store i8* %msgid, i8** %msgid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %msgid.addr, metadata !429, metadata !DIExpression()), !dbg !430
  %0 = load i8*, i8** %msgid.addr, align 8, !dbg !431
  %1 = load i8, i8* %0, align 1, !dbg !433
  %tobool = icmp ne i8 %1, 0, !dbg !433
  br i1 %tobool, label %if.end, label %if.then, !dbg !434

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.163, i64 0, i64 0), i8** %retval, align 8, !dbg !435
  br label %return, !dbg !435

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %msgid.addr, align 8, !dbg !436
  %call = call i8* @libintl_gettext(i8* %2), !dbg !437
  store i8* %call, i8** %retval, align 8, !dbg !438
  br label %return, !dbg !438

return:                                           ; preds = %if.end, %if.then
  %3 = load i8*, i8** %retval, align 8, !dbg !439
  ret i8* %3, !dbg !439
}

; Function Attrs: noreturn
declare void @die(i8*, ...) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @handle_options(i8*** %argv, i32* %argc, i32* %envchanged) #0 !dbg !440 {
entry:
  %argv.addr = alloca i8***, align 8
  %argc.addr = alloca i32*, align 8
  %envchanged.addr = alloca i32*, align 8
  %orig_argv = alloca i8**, align 8
  %cmd = alloca i8*, align 8
  %cwd = alloca i8*, align 8
  %list = alloca %struct.string_list, align 8
  %i = alloca i32, align 4
  store i8*** %argv, i8**** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8**** %argv.addr, metadata !445, metadata !DIExpression()), !dbg !446
  store i32* %argc, i32** %argc.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %argc.addr, metadata !447, metadata !DIExpression()), !dbg !448
  store i32* %envchanged, i32** %envchanged.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %envchanged.addr, metadata !449, metadata !DIExpression()), !dbg !450
  call void @llvm.dbg.declare(metadata i8*** %orig_argv, metadata !451, metadata !DIExpression()), !dbg !452
  %0 = load i8***, i8**** %argv.addr, align 8, !dbg !453
  %1 = load i8**, i8*** %0, align 8, !dbg !454
  store i8** %1, i8*** %orig_argv, align 8, !dbg !452
  br label %while.cond, !dbg !455

while.cond:                                       ; preds = %if.end338, %entry
  %2 = load i32*, i32** %argc.addr, align 8, !dbg !456
  %3 = load i32, i32* %2, align 4, !dbg !457
  %cmp = icmp sgt i32 %3, 0, !dbg !458
  br i1 %cmp, label %while.body, label %while.end, !dbg !455

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %cmd, metadata !459, metadata !DIExpression()), !dbg !461
  %4 = load i8***, i8**** %argv.addr, align 8, !dbg !462
  %5 = load i8**, i8*** %4, align 8, !dbg !463
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 0, !dbg !464
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !464
  store i8* %6, i8** %cmd, align 8, !dbg !461
  %7 = load i8*, i8** %cmd, align 8, !dbg !465
  %arrayidx1 = getelementptr inbounds i8, i8* %7, i64 0, !dbg !465
  %8 = load i8, i8* %arrayidx1, align 1, !dbg !465
  %conv = sext i8 %8 to i32, !dbg !465
  %cmp2 = icmp ne i32 %conv, 45, !dbg !467
  br i1 %cmp2, label %if.then, label %if.end, !dbg !468

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !469

if.end:                                           ; preds = %while.body
  %9 = load i8*, i8** %cmd, align 8, !dbg !470
  %call = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)), !dbg !472
  %tobool = icmp ne i32 %call, 0, !dbg !472
  br i1 %tobool, label %lor.lhs.false, label %if.then12, !dbg !473

lor.lhs.false:                                    ; preds = %if.end
  %10 = load i8*, i8** %cmd, align 8, !dbg !474
  %call4 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)), !dbg !475
  %tobool5 = icmp ne i32 %call4, 0, !dbg !475
  br i1 %tobool5, label %lor.lhs.false6, label %if.then12, !dbg !476

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %11 = load i8*, i8** %cmd, align 8, !dbg !477
  %call7 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)), !dbg !478
  %tobool8 = icmp ne i32 %call7, 0, !dbg !478
  br i1 %tobool8, label %lor.lhs.false9, label %if.then12, !dbg !479

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %12 = load i8*, i8** %cmd, align 8, !dbg !480
  %call10 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)), !dbg !481
  %tobool11 = icmp ne i32 %call10, 0, !dbg !481
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !482

if.then12:                                        ; preds = %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false, %if.end
  br label %while.end, !dbg !483

if.end13:                                         ; preds = %lor.lhs.false9
  %13 = load i8*, i8** %cmd, align 8, !dbg !484
  %call14 = call i32 @skip_prefix(i8* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.164, i64 0, i64 0), i8** %cmd), !dbg !486
  %tobool15 = icmp ne i32 %call14, 0, !dbg !486
  br i1 %tobool15, label %if.then16, label %if.else25, !dbg !487

if.then16:                                        ; preds = %if.end13
  %14 = load i8*, i8** %cmd, align 8, !dbg !488
  %15 = load i8, i8* %14, align 1, !dbg !491
  %conv17 = sext i8 %15 to i32, !dbg !491
  %cmp18 = icmp eq i32 %conv17, 61, !dbg !492
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !493

if.then20:                                        ; preds = %if.then16
  %16 = load i8*, i8** %cmd, align 8, !dbg !494
  %add.ptr = getelementptr inbounds i8, i8* %16, i64 1, !dbg !495
  call void @git_set_exec_path(i8* %add.ptr), !dbg !496
  br label %if.end24, !dbg !496

if.else:                                          ; preds = %if.then16
  %call21 = call i8* @git_exec_path(), !dbg !497
  %call22 = call i32 @puts(i8* %call21), !dbg !499
  call void @trace2_cmd_name_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 161, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i64 0, i64 0)), !dbg !500
  %call23 = call i32 @common_exit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 162, i32 0), !dbg !501
  call void @exit(i32 %call23) #8, !dbg !501
  unreachable, !dbg !501

if.end24:                                         ; preds = %if.then20
  br label %if.end338, !dbg !502

if.else25:                                        ; preds = %if.end13
  %17 = load i8*, i8** %cmd, align 8, !dbg !503
  %call26 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i64 0, i64 0)), !dbg !505
  %tobool27 = icmp ne i32 %call26, 0, !dbg !505
  br i1 %tobool27, label %if.else32, label %if.then28, !dbg !506

if.then28:                                        ; preds = %if.else25
  %call29 = call i8* @system_path(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.167, i64 0, i64 0)), !dbg !507
  %call30 = call i32 @puts(i8* %call29), !dbg !509
  call void @trace2_cmd_name_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 166, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i64 0, i64 0)), !dbg !510
  %call31 = call i32 @common_exit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 167, i32 0), !dbg !511
  call void @exit(i32 %call31) #8, !dbg !511
  unreachable, !dbg !511

if.else32:                                        ; preds = %if.else25
  %18 = load i8*, i8** %cmd, align 8, !dbg !512
  %call33 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.168, i64 0, i64 0)), !dbg !514
  %tobool34 = icmp ne i32 %call33, 0, !dbg !514
  br i1 %tobool34, label %if.else39, label %if.then35, !dbg !515

if.then35:                                        ; preds = %if.else32
  %call36 = call i8* @system_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.169, i64 0, i64 0)), !dbg !516
  %call37 = call i32 @puts(i8* %call36), !dbg !518
  call void @trace2_cmd_name_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 170, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i64 0, i64 0)), !dbg !519
  %call38 = call i32 @common_exit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 171, i32 0), !dbg !520
  call void @exit(i32 %call38) #8, !dbg !520
  unreachable, !dbg !520

if.else39:                                        ; preds = %if.else32
  %19 = load i8*, i8** %cmd, align 8, !dbg !521
  %call40 = call i32 @strcmp(i8* %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.170, i64 0, i64 0)), !dbg !523
  %tobool41 = icmp ne i32 %call40, 0, !dbg !523
  br i1 %tobool41, label %if.else46, label %if.then42, !dbg !524

if.then42:                                        ; preds = %if.else39
  %call43 = call i8* @system_path(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.171, i64 0, i64 0)), !dbg !525
  %call44 = call i32 @puts(i8* %call43), !dbg !527
  call void @trace2_cmd_name_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 174, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i64 0, i64 0)), !dbg !528
  %call45 = call i32 @common_exit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 175, i32 0), !dbg !529
  call void @exit(i32 %call45) #8, !dbg !529
  unreachable, !dbg !529

if.else46:                                        ; preds = %if.else39
  %20 = load i8*, i8** %cmd, align 8, !dbg !530
  %call47 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.172, i64 0, i64 0)), !dbg !532
  %tobool48 = icmp ne i32 %call47, 0, !dbg !532
  br i1 %tobool48, label %lor.lhs.false49, label %if.then52, !dbg !533

lor.lhs.false49:                                  ; preds = %if.else46
  %21 = load i8*, i8** %cmd, align 8, !dbg !534
  %call50 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.173, i64 0, i64 0)), !dbg !535
  %tobool51 = icmp ne i32 %call50, 0, !dbg !535
  br i1 %tobool51, label %if.else53, label %if.then52, !dbg !536

if.then52:                                        ; preds = %lor.lhs.false49, %if.else46
  store i32 1, i32* @use_pager, align 4, !dbg !537
  br label %if.end334, !dbg !539

if.else53:                                        ; preds = %lor.lhs.false49
  %22 = load i8*, i8** %cmd, align 8, !dbg !540
  %call54 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.174, i64 0, i64 0)), !dbg !542
  %tobool55 = icmp ne i32 %call54, 0, !dbg !542
  br i1 %tobool55, label %lor.lhs.false56, label %if.then59, !dbg !543

lor.lhs.false56:                                  ; preds = %if.else53
  %23 = load i8*, i8** %cmd, align 8, !dbg !544
  %call57 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.175, i64 0, i64 0)), !dbg !545
  %tobool58 = icmp ne i32 %call57, 0, !dbg !545
  br i1 %tobool58, label %if.else63, label %if.then59, !dbg !546

if.then59:                                        ; preds = %lor.lhs.false56, %if.else53
  store i32 0, i32* @use_pager, align 4, !dbg !547
  %24 = load i32*, i32** %envchanged.addr, align 8, !dbg !549
  %tobool60 = icmp ne i32* %24, null, !dbg !549
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !551

if.then61:                                        ; preds = %if.then59
  %25 = load i32*, i32** %envchanged.addr, align 8, !dbg !552
  store i32 1, i32* %25, align 4, !dbg !553
  br label %if.end62, !dbg !554

if.end62:                                         ; preds = %if.then61, %if.then59
  br label %if.end333, !dbg !555

if.else63:                                        ; preds = %lor.lhs.false56
  %26 = load i8*, i8** %cmd, align 8, !dbg !556
  %call64 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.176, i64 0, i64 0)), !dbg !558
  %tobool65 = icmp ne i32 %call64, 0, !dbg !558
  br i1 %tobool65, label %if.else71, label %if.then66, !dbg !559

if.then66:                                        ; preds = %if.else63
  store i32 0, i32* @read_replace_refs, align 4, !dbg !560
  %call67 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.177, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i64 0, i64 0), i32 1), !dbg !562
  %27 = load i32*, i32** %envchanged.addr, align 8, !dbg !563
  %tobool68 = icmp ne i32* %27, null, !dbg !563
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !565

if.then69:                                        ; preds = %if.then66
  %28 = load i32*, i32** %envchanged.addr, align 8, !dbg !566
  store i32 1, i32* %28, align 4, !dbg !567
  br label %if.end70, !dbg !568

if.end70:                                         ; preds = %if.then69, %if.then66
  br label %if.end332, !dbg !569

if.else71:                                        ; preds = %if.else63
  %29 = load i8*, i8** %cmd, align 8, !dbg !570
  %call72 = call i32 @strcmp(i8* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.179, i64 0, i64 0)), !dbg !572
  %tobool73 = icmp ne i32 %call72, 0, !dbg !572
  br i1 %tobool73, label %if.else86, label %if.then74, !dbg !573

if.then74:                                        ; preds = %if.else71
  %30 = load i32*, i32** %argc.addr, align 8, !dbg !574
  %31 = load i32, i32* %30, align 4, !dbg !577
  %cmp75 = icmp slt i32 %31, 2, !dbg !578
  br i1 %cmp75, label %if.then77, label %if.end80, !dbg !579

if.then77:                                        ; preds = %if.then74
  %32 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !580
  %call78 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.180, i64 0, i64 0)), !dbg !582
  %call79 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %32, i8* %call78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.179, i64 0, i64 0)), !dbg !583
  call void @usage(i8* getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)) #8, !dbg !584
  unreachable, !dbg !584

if.end80:                                         ; preds = %if.then74
  %33 = load i8***, i8**** %argv.addr, align 8, !dbg !585
  %34 = load i8**, i8*** %33, align 8, !dbg !586
  %arrayidx81 = getelementptr inbounds i8*, i8** %34, i64 1, !dbg !587
  %35 = load i8*, i8** %arrayidx81, align 8, !dbg !587
  %call82 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.181, i64 0, i64 0), i8* %35, i32 1), !dbg !588
  %36 = load i32*, i32** %envchanged.addr, align 8, !dbg !589
  %tobool83 = icmp ne i32* %36, null, !dbg !589
  br i1 %tobool83, label %if.then84, label %if.end85, !dbg !591

if.then84:                                        ; preds = %if.end80
  %37 = load i32*, i32** %envchanged.addr, align 8, !dbg !592
  store i32 1, i32* %37, align 4, !dbg !593
  br label %if.end85, !dbg !594

if.end85:                                         ; preds = %if.then84, %if.end80
  %38 = load i8***, i8**** %argv.addr, align 8, !dbg !595
  %39 = load i8**, i8*** %38, align 8, !dbg !596
  %incdec.ptr = getelementptr inbounds i8*, i8** %39, i32 1, !dbg !596
  store i8** %incdec.ptr, i8*** %38, align 8, !dbg !596
  %40 = load i32*, i32** %argc.addr, align 8, !dbg !597
  %41 = load i32, i32* %40, align 4, !dbg !598
  %dec = add nsw i32 %41, -1, !dbg !598
  store i32 %dec, i32* %40, align 4, !dbg !598
  br label %if.end331, !dbg !599

if.else86:                                        ; preds = %if.else71
  %42 = load i8*, i8** %cmd, align 8, !dbg !600
  %call87 = call i32 @skip_prefix(i8* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.182, i64 0, i64 0), i8** %cmd), !dbg !602
  %tobool88 = icmp ne i32 %call87, 0, !dbg !602
  br i1 %tobool88, label %if.then89, label %if.else94, !dbg !603

if.then89:                                        ; preds = %if.else86
  %43 = load i8*, i8** %cmd, align 8, !dbg !604
  %call90 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.181, i64 0, i64 0), i8* %43, i32 1), !dbg !606
  %44 = load i32*, i32** %envchanged.addr, align 8, !dbg !607
  %tobool91 = icmp ne i32* %44, null, !dbg !607
  br i1 %tobool91, label %if.then92, label %if.end93, !dbg !609

if.then92:                                        ; preds = %if.then89
  %45 = load i32*, i32** %envchanged.addr, align 8, !dbg !610
  store i32 1, i32* %45, align 4, !dbg !611
  br label %if.end93, !dbg !612

if.end93:                                         ; preds = %if.then92, %if.then89
  br label %if.end330, !dbg !613

if.else94:                                        ; preds = %if.else86
  %46 = load i8*, i8** %cmd, align 8, !dbg !614
  %call95 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.183, i64 0, i64 0)), !dbg !616
  %tobool96 = icmp ne i32 %call95, 0, !dbg !616
  br i1 %tobool96, label %if.else111, label %if.then97, !dbg !617

if.then97:                                        ; preds = %if.else94
  %47 = load i32*, i32** %argc.addr, align 8, !dbg !618
  %48 = load i32, i32* %47, align 4, !dbg !621
  %cmp98 = icmp slt i32 %48, 2, !dbg !622
  br i1 %cmp98, label %if.then100, label %if.end103, !dbg !623

if.then100:                                       ; preds = %if.then97
  %49 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !624
  %call101 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.184, i64 0, i64 0)), !dbg !626
  %call102 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %49, i8* %call101), !dbg !627
  call void @usage(i8* getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)) #8, !dbg !628
  unreachable, !dbg !628

if.end103:                                        ; preds = %if.then97
  %50 = load i8***, i8**** %argv.addr, align 8, !dbg !629
  %51 = load i8**, i8*** %50, align 8, !dbg !630
  %arrayidx104 = getelementptr inbounds i8*, i8** %51, i64 1, !dbg !631
  %52 = load i8*, i8** %arrayidx104, align 8, !dbg !631
  %call105 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.185, i64 0, i64 0), i8* %52, i32 1), !dbg !632
  %53 = load i32*, i32** %envchanged.addr, align 8, !dbg !633
  %tobool106 = icmp ne i32* %53, null, !dbg !633
  br i1 %tobool106, label %if.then107, label %if.end108, !dbg !635

if.then107:                                       ; preds = %if.end103
  %54 = load i32*, i32** %envchanged.addr, align 8, !dbg !636
  store i32 1, i32* %54, align 4, !dbg !637
  br label %if.end108, !dbg !638

if.end108:                                        ; preds = %if.then107, %if.end103
  %55 = load i8***, i8**** %argv.addr, align 8, !dbg !639
  %56 = load i8**, i8*** %55, align 8, !dbg !640
  %incdec.ptr109 = getelementptr inbounds i8*, i8** %56, i32 1, !dbg !640
  store i8** %incdec.ptr109, i8*** %55, align 8, !dbg !640
  %57 = load i32*, i32** %argc.addr, align 8, !dbg !641
  %58 = load i32, i32* %57, align 4, !dbg !642
  %dec110 = add nsw i32 %58, -1, !dbg !642
  store i32 %dec110, i32* %57, align 4, !dbg !642
  br label %if.end329, !dbg !643

if.else111:                                       ; preds = %if.else94
  %59 = load i8*, i8** %cmd, align 8, !dbg !644
  %call112 = call i32 @skip_prefix(i8* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.186, i64 0, i64 0), i8** %cmd), !dbg !646
  %tobool113 = icmp ne i32 %call112, 0, !dbg !646
  br i1 %tobool113, label %if.then114, label %if.else119, !dbg !647

if.then114:                                       ; preds = %if.else111
  %60 = load i8*, i8** %cmd, align 8, !dbg !648
  %call115 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.185, i64 0, i64 0), i8* %60, i32 1), !dbg !650
  %61 = load i32*, i32** %envchanged.addr, align 8, !dbg !651
  %tobool116 = icmp ne i32* %61, null, !dbg !651
  br i1 %tobool116, label %if.then117, label %if.end118, !dbg !653

if.then117:                                       ; preds = %if.then114
  %62 = load i32*, i32** %envchanged.addr, align 8, !dbg !654
  store i32 1, i32* %62, align 4, !dbg !655
  br label %if.end118, !dbg !656

if.end118:                                        ; preds = %if.then117, %if.then114
  br label %if.end328, !dbg !657

if.else119:                                       ; preds = %if.else111
  %63 = load i8*, i8** %cmd, align 8, !dbg !658
  %call120 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.187, i64 0, i64 0)), !dbg !660
  %tobool121 = icmp ne i32 %call120, 0, !dbg !660
  br i1 %tobool121, label %if.else136, label %if.then122, !dbg !661

if.then122:                                       ; preds = %if.else119
  %64 = load i32*, i32** %argc.addr, align 8, !dbg !662
  %65 = load i32, i32* %64, align 4, !dbg !665
  %cmp123 = icmp slt i32 %65, 2, !dbg !666
  br i1 %cmp123, label %if.then125, label %if.end128, !dbg !667

if.then125:                                       ; preds = %if.then122
  %66 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !668
  %call126 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.180, i64 0, i64 0)), !dbg !670
  %call127 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %66, i8* %call126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.187, i64 0, i64 0)), !dbg !671
  call void @usage(i8* getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)) #8, !dbg !672
  unreachable, !dbg !672

if.end128:                                        ; preds = %if.then122
  %67 = load i8***, i8**** %argv.addr, align 8, !dbg !673
  %68 = load i8**, i8*** %67, align 8, !dbg !674
  %arrayidx129 = getelementptr inbounds i8*, i8** %68, i64 1, !dbg !675
  %69 = load i8*, i8** %arrayidx129, align 8, !dbg !675
  %call130 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.188, i64 0, i64 0), i8* %69, i32 1), !dbg !676
  %70 = load i32*, i32** %envchanged.addr, align 8, !dbg !677
  %tobool131 = icmp ne i32* %70, null, !dbg !677
  br i1 %tobool131, label %if.then132, label %if.end133, !dbg !679

if.then132:                                       ; preds = %if.end128
  %71 = load i32*, i32** %envchanged.addr, align 8, !dbg !680
  store i32 1, i32* %71, align 4, !dbg !681
  br label %if.end133, !dbg !682

if.end133:                                        ; preds = %if.then132, %if.end128
  %72 = load i8***, i8**** %argv.addr, align 8, !dbg !683
  %73 = load i8**, i8*** %72, align 8, !dbg !684
  %incdec.ptr134 = getelementptr inbounds i8*, i8** %73, i32 1, !dbg !684
  store i8** %incdec.ptr134, i8*** %72, align 8, !dbg !684
  %74 = load i32*, i32** %argc.addr, align 8, !dbg !685
  %75 = load i32, i32* %74, align 4, !dbg !686
  %dec135 = add nsw i32 %75, -1, !dbg !686
  store i32 %dec135, i32* %74, align 4, !dbg !686
  br label %if.end327, !dbg !687

if.else136:                                       ; preds = %if.else119
  %76 = load i8*, i8** %cmd, align 8, !dbg !688
  %call137 = call i32 @skip_prefix(i8* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.189, i64 0, i64 0), i8** %cmd), !dbg !690
  %tobool138 = icmp ne i32 %call137, 0, !dbg !690
  br i1 %tobool138, label %if.then139, label %if.else144, !dbg !691

if.then139:                                       ; preds = %if.else136
  %77 = load i8*, i8** %cmd, align 8, !dbg !692
  %call140 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.188, i64 0, i64 0), i8* %77, i32 1), !dbg !694
  %78 = load i32*, i32** %envchanged.addr, align 8, !dbg !695
  %tobool141 = icmp ne i32* %78, null, !dbg !695
  br i1 %tobool141, label %if.then142, label %if.end143, !dbg !697

if.then142:                                       ; preds = %if.then139
  %79 = load i32*, i32** %envchanged.addr, align 8, !dbg !698
  store i32 1, i32* %79, align 4, !dbg !699
  br label %if.end143, !dbg !700

if.end143:                                        ; preds = %if.then142, %if.then139
  br label %if.end326, !dbg !701

if.else144:                                       ; preds = %if.else136
  %80 = load i8*, i8** %cmd, align 8, !dbg !702
  %call145 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.190, i64 0, i64 0)), !dbg !704
  %tobool146 = icmp ne i32 %call145, 0, !dbg !704
  br i1 %tobool146, label %if.else161, label %if.then147, !dbg !705

if.then147:                                       ; preds = %if.else144
  %81 = load i32*, i32** %argc.addr, align 8, !dbg !706
  %82 = load i32, i32* %81, align 4, !dbg !709
  %cmp148 = icmp slt i32 %82, 2, !dbg !710
  br i1 %cmp148, label %if.then150, label %if.end153, !dbg !711

if.then150:                                       ; preds = %if.then147
  %83 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !712
  %call151 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.191, i64 0, i64 0)), !dbg !714
  %call152 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %83, i8* %call151), !dbg !715
  call void @usage(i8* getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)) #8, !dbg !716
  unreachable, !dbg !716

if.end153:                                        ; preds = %if.then147
  %84 = load i8***, i8**** %argv.addr, align 8, !dbg !717
  %85 = load i8**, i8*** %84, align 8, !dbg !718
  %arrayidx154 = getelementptr inbounds i8*, i8** %85, i64 1, !dbg !719
  %86 = load i8*, i8** %arrayidx154, align 8, !dbg !719
  %call155 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.192, i64 0, i64 0), i8* %86, i32 1), !dbg !720
  %87 = load i32*, i32** %envchanged.addr, align 8, !dbg !721
  %tobool156 = icmp ne i32* %87, null, !dbg !721
  br i1 %tobool156, label %if.then157, label %if.end158, !dbg !723

if.then157:                                       ; preds = %if.end153
  %88 = load i32*, i32** %envchanged.addr, align 8, !dbg !724
  store i32 1, i32* %88, align 4, !dbg !725
  br label %if.end158, !dbg !726

if.end158:                                        ; preds = %if.then157, %if.end153
  %89 = load i8***, i8**** %argv.addr, align 8, !dbg !727
  %90 = load i8**, i8*** %89, align 8, !dbg !728
  %incdec.ptr159 = getelementptr inbounds i8*, i8** %90, i32 1, !dbg !728
  store i8** %incdec.ptr159, i8*** %89, align 8, !dbg !728
  %91 = load i32*, i32** %argc.addr, align 8, !dbg !729
  %92 = load i32, i32* %91, align 4, !dbg !730
  %dec160 = add nsw i32 %92, -1, !dbg !730
  store i32 %dec160, i32* %91, align 4, !dbg !730
  br label %if.end325, !dbg !731

if.else161:                                       ; preds = %if.else144
  %93 = load i8*, i8** %cmd, align 8, !dbg !732
  %call162 = call i32 @skip_prefix(i8* %93, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.193, i64 0, i64 0), i8** %cmd), !dbg !734
  %tobool163 = icmp ne i32 %call162, 0, !dbg !734
  br i1 %tobool163, label %if.then164, label %if.else169, !dbg !735

if.then164:                                       ; preds = %if.else161
  %94 = load i8*, i8** %cmd, align 8, !dbg !736
  %call165 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.192, i64 0, i64 0), i8* %94, i32 1), !dbg !738
  %95 = load i32*, i32** %envchanged.addr, align 8, !dbg !739
  %tobool166 = icmp ne i32* %95, null, !dbg !739
  br i1 %tobool166, label %if.then167, label %if.end168, !dbg !741

if.then167:                                       ; preds = %if.then164
  %96 = load i32*, i32** %envchanged.addr, align 8, !dbg !742
  store i32 1, i32* %96, align 4, !dbg !743
  br label %if.end168, !dbg !744

if.end168:                                        ; preds = %if.then167, %if.then164
  br label %if.end324, !dbg !745

if.else169:                                       ; preds = %if.else161
  %97 = load i8*, i8** %cmd, align 8, !dbg !746
  %call170 = call i32 @strcmp(i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.194, i64 0, i64 0)), !dbg !748
  %tobool171 = icmp ne i32 %call170, 0, !dbg !748
  br i1 %tobool171, label %if.else179, label %if.then172, !dbg !749

if.then172:                                       ; preds = %if.else169
  call void @llvm.dbg.declare(metadata i8** %cwd, metadata !750, metadata !DIExpression()), !dbg !752
  %call173 = call i8* @xgetcwd(), !dbg !753
  store i8* %call173, i8** %cwd, align 8, !dbg !752
  store i32 1, i32* @is_bare_repository_cfg, align 4, !dbg !754
  %98 = load i8*, i8** %cwd, align 8, !dbg !755
  %call174 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.181, i64 0, i64 0), i8* %98, i32 0), !dbg !756
  %99 = load i8*, i8** %cwd, align 8, !dbg !757
  call void @free(i8* %99), !dbg !758
  %call175 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.195, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.196, i64 0, i64 0), i32 1), !dbg !759
  %100 = load i32*, i32** %envchanged.addr, align 8, !dbg !760
  %tobool176 = icmp ne i32* %100, null, !dbg !760
  br i1 %tobool176, label %if.then177, label %if.end178, !dbg !762

if.then177:                                       ; preds = %if.then172
  %101 = load i32*, i32** %envchanged.addr, align 8, !dbg !763
  store i32 1, i32* %101, align 4, !dbg !764
  br label %if.end178, !dbg !765

if.end178:                                        ; preds = %if.then177, %if.then172
  br label %if.end323, !dbg !766

if.else179:                                       ; preds = %if.else169
  %102 = load i8*, i8** %cmd, align 8, !dbg !767
  %call180 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.197, i64 0, i64 0)), !dbg !769
  %tobool181 = icmp ne i32 %call180, 0, !dbg !769
  br i1 %tobool181, label %if.else192, label %if.then182, !dbg !770

if.then182:                                       ; preds = %if.else179
  %103 = load i32*, i32** %argc.addr, align 8, !dbg !771
  %104 = load i32, i32* %103, align 4, !dbg !774
  %cmp183 = icmp slt i32 %104, 2, !dbg !775
  br i1 %cmp183, label %if.then185, label %if.end188, !dbg !776

if.then185:                                       ; preds = %if.then182
  %105 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !777
  %call186 = call i8* @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.198, i64 0, i64 0)), !dbg !779
  %call187 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %105, i8* %call186), !dbg !780
  call void @usage(i8* getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)) #8, !dbg !781
  unreachable, !dbg !781

if.end188:                                        ; preds = %if.then182
  %106 = load i8***, i8**** %argv.addr, align 8, !dbg !782
  %107 = load i8**, i8*** %106, align 8, !dbg !783
  %arrayidx189 = getelementptr inbounds i8*, i8** %107, i64 1, !dbg !784
  %108 = load i8*, i8** %arrayidx189, align 8, !dbg !784
  call void @git_config_push_parameter(i8* %108), !dbg !785
  %109 = load i8***, i8**** %argv.addr, align 8, !dbg !786
  %110 = load i8**, i8*** %109, align 8, !dbg !787
  %incdec.ptr190 = getelementptr inbounds i8*, i8** %110, i32 1, !dbg !787
  store i8** %incdec.ptr190, i8*** %109, align 8, !dbg !787
  %111 = load i32*, i32** %argc.addr, align 8, !dbg !788
  %112 = load i32, i32* %111, align 4, !dbg !789
  %dec191 = add nsw i32 %112, -1, !dbg !789
  store i32 %dec191, i32* %111, align 4, !dbg !789
  br label %if.end322, !dbg !790

if.else192:                                       ; preds = %if.else179
  %113 = load i8*, i8** %cmd, align 8, !dbg !791
  %call193 = call i32 @strcmp(i8* %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.199, i64 0, i64 0)), !dbg !793
  %tobool194 = icmp ne i32 %call193, 0, !dbg !793
  br i1 %tobool194, label %if.else205, label %if.then195, !dbg !794

if.then195:                                       ; preds = %if.else192
  %114 = load i32*, i32** %argc.addr, align 8, !dbg !795
  %115 = load i32, i32* %114, align 4, !dbg !798
  %cmp196 = icmp slt i32 %115, 2, !dbg !799
  br i1 %cmp196, label %if.then198, label %if.end201, !dbg !800

if.then198:                                       ; preds = %if.then195
  %116 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !801
  %call199 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.200, i64 0, i64 0)), !dbg !803
  %call200 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %116, i8* %call199), !dbg !804
  call void @usage(i8* getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)) #8, !dbg !805
  unreachable, !dbg !805

if.end201:                                        ; preds = %if.then195
  %117 = load i8***, i8**** %argv.addr, align 8, !dbg !806
  %118 = load i8**, i8*** %117, align 8, !dbg !807
  %arrayidx202 = getelementptr inbounds i8*, i8** %118, i64 1, !dbg !808
  %119 = load i8*, i8** %arrayidx202, align 8, !dbg !808
  call void @git_config_push_env(i8* %119), !dbg !809
  %120 = load i8***, i8**** %argv.addr, align 8, !dbg !810
  %121 = load i8**, i8*** %120, align 8, !dbg !811
  %incdec.ptr203 = getelementptr inbounds i8*, i8** %121, i32 1, !dbg !811
  store i8** %incdec.ptr203, i8*** %120, align 8, !dbg !811
  %122 = load i32*, i32** %argc.addr, align 8, !dbg !812
  %123 = load i32, i32* %122, align 4, !dbg !813
  %dec204 = add nsw i32 %123, -1, !dbg !813
  store i32 %dec204, i32* %122, align 4, !dbg !813
  br label %if.end321, !dbg !814

if.else205:                                       ; preds = %if.else192
  %124 = load i8*, i8** %cmd, align 8, !dbg !815
  %call206 = call i32 @skip_prefix(i8* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.201, i64 0, i64 0), i8** %cmd), !dbg !817
  %tobool207 = icmp ne i32 %call206, 0, !dbg !817
  br i1 %tobool207, label %if.then208, label %if.else209, !dbg !818

if.then208:                                       ; preds = %if.else205
  %125 = load i8*, i8** %cmd, align 8, !dbg !819
  call void @git_config_push_env(i8* %125), !dbg !821
  br label %if.end320, !dbg !822

if.else209:                                       ; preds = %if.else205
  %126 = load i8*, i8** %cmd, align 8, !dbg !823
  %call210 = call i32 @strcmp(i8* %126, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.202, i64 0, i64 0)), !dbg !825
  %tobool211 = icmp ne i32 %call210, 0, !dbg !825
  br i1 %tobool211, label %if.else217, label %if.then212, !dbg !826

if.then212:                                       ; preds = %if.else209
  %call213 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.203, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i64 0, i64 0), i32 1), !dbg !827
  %127 = load i32*, i32** %envchanged.addr, align 8, !dbg !829
  %tobool214 = icmp ne i32* %127, null, !dbg !829
  br i1 %tobool214, label %if.then215, label %if.end216, !dbg !831

if.then215:                                       ; preds = %if.then212
  %128 = load i32*, i32** %envchanged.addr, align 8, !dbg !832
  store i32 1, i32* %128, align 4, !dbg !833
  br label %if.end216, !dbg !834

if.end216:                                        ; preds = %if.then215, %if.then212
  br label %if.end319, !dbg !835

if.else217:                                       ; preds = %if.else209
  %129 = load i8*, i8** %cmd, align 8, !dbg !836
  %call218 = call i32 @strcmp(i8* %129, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.204, i64 0, i64 0)), !dbg !838
  %tobool219 = icmp ne i32 %call218, 0, !dbg !838
  br i1 %tobool219, label %if.else225, label %if.then220, !dbg !839

if.then220:                                       ; preds = %if.else217
  %call221 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.203, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.196, i64 0, i64 0), i32 1), !dbg !840
  %130 = load i32*, i32** %envchanged.addr, align 8, !dbg !842
  %tobool222 = icmp ne i32* %130, null, !dbg !842
  br i1 %tobool222, label %if.then223, label %if.end224, !dbg !844

if.then223:                                       ; preds = %if.then220
  %131 = load i32*, i32** %envchanged.addr, align 8, !dbg !845
  store i32 1, i32* %131, align 4, !dbg !846
  br label %if.end224, !dbg !847

if.end224:                                        ; preds = %if.then223, %if.then220
  br label %if.end318, !dbg !848

if.else225:                                       ; preds = %if.else217
  %132 = load i8*, i8** %cmd, align 8, !dbg !849
  %call226 = call i32 @strcmp(i8* %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.205, i64 0, i64 0)), !dbg !851
  %tobool227 = icmp ne i32 %call226, 0, !dbg !851
  br i1 %tobool227, label %if.else233, label %if.then228, !dbg !852

if.then228:                                       ; preds = %if.else225
  %call229 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.206, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i64 0, i64 0), i32 1), !dbg !853
  %133 = load i32*, i32** %envchanged.addr, align 8, !dbg !855
  %tobool230 = icmp ne i32* %133, null, !dbg !855
  br i1 %tobool230, label %if.then231, label %if.end232, !dbg !857

if.then231:                                       ; preds = %if.then228
  %134 = load i32*, i32** %envchanged.addr, align 8, !dbg !858
  store i32 1, i32* %134, align 4, !dbg !859
  br label %if.end232, !dbg !860

if.end232:                                        ; preds = %if.then231, %if.then228
  br label %if.end317, !dbg !861

if.else233:                                       ; preds = %if.else225
  %135 = load i8*, i8** %cmd, align 8, !dbg !862
  %call234 = call i32 @strcmp(i8* %135, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.207, i64 0, i64 0)), !dbg !864
  %tobool235 = icmp ne i32 %call234, 0, !dbg !864
  br i1 %tobool235, label %if.else241, label %if.then236, !dbg !865

if.then236:                                       ; preds = %if.else233
  %call237 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.208, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i64 0, i64 0), i32 1), !dbg !866
  %136 = load i32*, i32** %envchanged.addr, align 8, !dbg !868
  %tobool238 = icmp ne i32* %136, null, !dbg !868
  br i1 %tobool238, label %if.then239, label %if.end240, !dbg !870

if.then239:                                       ; preds = %if.then236
  %137 = load i32*, i32** %envchanged.addr, align 8, !dbg !871
  store i32 1, i32* %137, align 4, !dbg !872
  br label %if.end240, !dbg !873

if.end240:                                        ; preds = %if.then239, %if.then236
  br label %if.end316, !dbg !874

if.else241:                                       ; preds = %if.else233
  %138 = load i8*, i8** %cmd, align 8, !dbg !875
  %call242 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.209, i64 0, i64 0)), !dbg !877
  %tobool243 = icmp ne i32 %call242, 0, !dbg !877
  br i1 %tobool243, label %if.else249, label %if.then244, !dbg !878

if.then244:                                       ; preds = %if.else241
  %call245 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.210, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i64 0, i64 0), i32 1), !dbg !879
  %139 = load i32*, i32** %envchanged.addr, align 8, !dbg !881
  %tobool246 = icmp ne i32* %139, null, !dbg !881
  br i1 %tobool246, label %if.then247, label %if.end248, !dbg !883

if.then247:                                       ; preds = %if.then244
  %140 = load i32*, i32** %envchanged.addr, align 8, !dbg !884
  store i32 1, i32* %140, align 4, !dbg !885
  br label %if.end248, !dbg !886

if.end248:                                        ; preds = %if.then247, %if.then244
  br label %if.end315, !dbg !887

if.else249:                                       ; preds = %if.else241
  %141 = load i8*, i8** %cmd, align 8, !dbg !888
  %call250 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.211, i64 0, i64 0)), !dbg !890
  %tobool251 = icmp ne i32 %call250, 0, !dbg !890
  br i1 %tobool251, label %if.else257, label %if.then252, !dbg !891

if.then252:                                       ; preds = %if.else249
  %call253 = call i32 @"\01_setenv"(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.212, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.196, i64 0, i64 0), i32 1), !dbg !892
  %142 = load i32*, i32** %envchanged.addr, align 8, !dbg !894
  %tobool254 = icmp ne i32* %142, null, !dbg !894
  br i1 %tobool254, label %if.then255, label %if.end256, !dbg !896

if.then255:                                       ; preds = %if.then252
  %143 = load i32*, i32** %envchanged.addr, align 8, !dbg !897
  store i32 1, i32* %143, align 4, !dbg !898
  br label %if.end256, !dbg !899

if.end256:                                        ; preds = %if.then255, %if.then252
  br label %if.end314, !dbg !900

if.else257:                                       ; preds = %if.else249
  %144 = load i8*, i8** %cmd, align 8, !dbg !901
  %call258 = call i32 @strcmp(i8* %144, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.213, i64 0, i64 0)), !dbg !903
  %tobool259 = icmp ne i32 %call258, 0, !dbg !903
  br i1 %tobool259, label %if.else267, label %if.then260, !dbg !904

if.then260:                                       ; preds = %if.else257
  %145 = load i8***, i8**** %argv.addr, align 8, !dbg !905
  %146 = load i8**, i8*** %145, align 8, !dbg !907
  %incdec.ptr261 = getelementptr inbounds i8*, i8** %146, i32 1, !dbg !907
  store i8** %incdec.ptr261, i8*** %145, align 8, !dbg !907
  %147 = load i32*, i32** %argc.addr, align 8, !dbg !908
  %148 = load i32, i32* %147, align 4, !dbg !909
  %dec262 = add nsw i32 %148, -1, !dbg !909
  store i32 %dec262, i32* %147, align 4, !dbg !909
  %149 = load %struct.repository*, %struct.repository** @the_repository, align 8, !dbg !910
  %150 = load i8***, i8**** %argv.addr, align 8, !dbg !911
  %151 = load i8**, i8*** %150, align 8, !dbg !912
  %arrayidx263 = getelementptr inbounds i8*, i8** %151, i64 0, !dbg !913
  %152 = load i8*, i8** %arrayidx263, align 8, !dbg !913
  call void @set_alternate_shallow_file(%struct.repository* %149, i8* %152, i32 1), !dbg !914
  %153 = load i32*, i32** %envchanged.addr, align 8, !dbg !915
  %tobool264 = icmp ne i32* %153, null, !dbg !915
  br i1 %tobool264, label %if.then265, label %if.end266, !dbg !917

if.then265:                                       ; preds = %if.then260
  %154 = load i32*, i32** %envchanged.addr, align 8, !dbg !918
  store i32 1, i32* %154, align 4, !dbg !919
  br label %if.end266, !dbg !920

if.end266:                                        ; preds = %if.then265, %if.then260
  br label %if.end313, !dbg !921

if.else267:                                       ; preds = %if.else257
  %155 = load i8*, i8** %cmd, align 8, !dbg !922
  %call268 = call i32 @strcmp(i8* %155, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i64 0, i64 0)), !dbg !924
  %tobool269 = icmp ne i32 %call268, 0, !dbg !924
  br i1 %tobool269, label %if.else293, label %if.then270, !dbg !925

if.then270:                                       ; preds = %if.else267
  %156 = load i32*, i32** %argc.addr, align 8, !dbg !926
  %157 = load i32, i32* %156, align 4, !dbg !929
  %cmp271 = icmp slt i32 %157, 2, !dbg !930
  br i1 %cmp271, label %if.then273, label %if.end276, !dbg !931

if.then273:                                       ; preds = %if.then270
  %158 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !932
  %call274 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.180, i64 0, i64 0)), !dbg !934
  %call275 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %158, i8* %call274, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i64 0, i64 0)), !dbg !935
  call void @usage(i8* getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)) #8, !dbg !936
  unreachable, !dbg !936

if.end276:                                        ; preds = %if.then270
  %159 = load i8***, i8**** %argv.addr, align 8, !dbg !937
  %160 = load i8**, i8*** %159, align 8, !dbg !939
  %arrayidx277 = getelementptr inbounds i8*, i8** %160, i64 1, !dbg !940
  %161 = load i8*, i8** %arrayidx277, align 8, !dbg !940
  %arrayidx278 = getelementptr inbounds i8, i8* %161, i64 0, !dbg !940
  %162 = load i8, i8* %arrayidx278, align 1, !dbg !940
  %tobool279 = icmp ne i8 %162, 0, !dbg !940
  br i1 %tobool279, label %if.then280, label %if.end290, !dbg !941

if.then280:                                       ; preds = %if.end276
  %163 = load i8***, i8**** %argv.addr, align 8, !dbg !942
  %164 = load i8**, i8*** %163, align 8, !dbg !945
  %arrayidx281 = getelementptr inbounds i8*, i8** %164, i64 1, !dbg !946
  %165 = load i8*, i8** %arrayidx281, align 8, !dbg !946
  %call282 = call i32 @chdir(i8* %165), !dbg !947
  %tobool283 = icmp ne i32 %call282, 0, !dbg !947
  br i1 %tobool283, label %if.then284, label %if.end286, !dbg !948

if.then284:                                       ; preds = %if.then280
  %166 = load i8***, i8**** %argv.addr, align 8, !dbg !949
  %167 = load i8**, i8*** %166, align 8, !dbg !950
  %arrayidx285 = getelementptr inbounds i8*, i8** %167, i64 1, !dbg !951
  %168 = load i8*, i8** %arrayidx285, align 8, !dbg !951
  call void (i8*, ...) @die_errno(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.215, i64 0, i64 0), i8* %168) #8, !dbg !952
  unreachable, !dbg !952

if.end286:                                        ; preds = %if.then280
  %169 = load i32*, i32** %envchanged.addr, align 8, !dbg !953
  %tobool287 = icmp ne i32* %169, null, !dbg !953
  br i1 %tobool287, label %if.then288, label %if.end289, !dbg !955

if.then288:                                       ; preds = %if.end286
  %170 = load i32*, i32** %envchanged.addr, align 8, !dbg !956
  store i32 1, i32* %170, align 4, !dbg !957
  br label %if.end289, !dbg !958

if.end289:                                        ; preds = %if.then288, %if.end286
  br label %if.end290, !dbg !959

if.end290:                                        ; preds = %if.end289, %if.end276
  %171 = load i8***, i8**** %argv.addr, align 8, !dbg !960
  %172 = load i8**, i8*** %171, align 8, !dbg !961
  %incdec.ptr291 = getelementptr inbounds i8*, i8** %172, i32 1, !dbg !961
  store i8** %incdec.ptr291, i8*** %171, align 8, !dbg !961
  %173 = load i32*, i32** %argc.addr, align 8, !dbg !962
  %174 = load i32, i32* %173, align 4, !dbg !963
  %dec292 = add nsw i32 %174, -1, !dbg !963
  store i32 %dec292, i32* %173, align 4, !dbg !963
  br label %if.end312, !dbg !964

if.else293:                                       ; preds = %if.else267
  %175 = load i8*, i8** %cmd, align 8, !dbg !965
  %call294 = call i32 @skip_prefix(i8* %175, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.216, i64 0, i64 0), i8** %cmd), !dbg !967
  %tobool295 = icmp ne i32 %call294, 0, !dbg !967
  br i1 %tobool295, label %if.then296, label %if.else309, !dbg !968

if.then296:                                       ; preds = %if.else293
  call void @trace2_cmd_name_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 313, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i64 0, i64 0)), !dbg !969
  %176 = load i8*, i8** %cmd, align 8, !dbg !971
  %call297 = call i32 @strcmp(i8* %176, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.217, i64 0, i64 0)), !dbg !973
  %tobool298 = icmp ne i32 %call297, 0, !dbg !973
  br i1 %tobool298, label %if.else306, label %if.then299, !dbg !974

if.then299:                                       ; preds = %if.then296
  call void @llvm.dbg.declare(metadata %struct.string_list* %list, metadata !975, metadata !DIExpression()), !dbg !995
  %177 = bitcast %struct.string_list* %list to i8*, !dbg !995
  call void @llvm.memset.p0i8.i64(i8* align 8 %177, i8 0, i64 40, i1 false), !dbg !995
  %178 = bitcast i8* %177 to %struct.string_list*, !dbg !995
  %179 = getelementptr inbounds %struct.string_list, %struct.string_list* %178, i32 0, i32 3, !dbg !995
  store i8 1, i8* %179, align 8, !dbg !995
  call void @llvm.dbg.declare(metadata i32* %i, metadata !996, metadata !DIExpression()), !dbg !997
  call void @list_builtins(%struct.string_list* %list, i32 64), !dbg !998
  store i32 0, i32* %i, align 4, !dbg !999
  br label %for.cond, !dbg !1001

for.cond:                                         ; preds = %for.inc, %if.then299
  %180 = load i32, i32* %i, align 4, !dbg !1002
  %conv300 = sext i32 %180 to i64, !dbg !1002
  %nr = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 1, !dbg !1004
  %181 = load i64, i64* %nr, align 8, !dbg !1004
  %cmp301 = icmp ult i64 %conv300, %181, !dbg !1005
  br i1 %cmp301, label %for.body, label %for.end, !dbg !1006

for.body:                                         ; preds = %for.cond
  %items = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 0, !dbg !1007
  %182 = load %struct.string_list_item*, %struct.string_list_item** %items, align 8, !dbg !1007
  %183 = load i32, i32* %i, align 4, !dbg !1008
  %idxprom = sext i32 %183 to i64, !dbg !1009
  %arrayidx303 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %182, i64 %idxprom, !dbg !1009
  %string = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %arrayidx303, i32 0, i32 0, !dbg !1010
  %184 = load i8*, i8** %string, align 8, !dbg !1010
  %call304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.218, i64 0, i64 0), i8* %184), !dbg !1011
  br label %for.inc, !dbg !1011

for.inc:                                          ; preds = %for.body
  %185 = load i32, i32* %i, align 4, !dbg !1012
  %inc = add nsw i32 %185, 1, !dbg !1012
  store i32 %inc, i32* %i, align 4, !dbg !1012
  br label %for.cond, !dbg !1013, !llvm.loop !1014

for.end:                                          ; preds = %for.cond
  call void @string_list_clear(%struct.string_list* %list, i32 0), !dbg !1016
  %call305 = call i32 @common_exit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 322, i32 0), !dbg !1017
  call void @exit(i32 %call305) #8, !dbg !1017
  unreachable, !dbg !1017

if.else306:                                       ; preds = %if.then296
  %186 = load i8*, i8** %cmd, align 8, !dbg !1018
  %call307 = call i32 @list_cmds(i8* %186), !dbg !1018
  %call308 = call i32 @common_exit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 324, i32 %call307), !dbg !1018
  call void @exit(i32 %call308) #8, !dbg !1018
  unreachable, !dbg !1018

if.else309:                                       ; preds = %if.else293
  %187 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !1020
  %call310 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.219, i64 0, i64 0)), !dbg !1022
  %188 = load i8*, i8** %cmd, align 8, !dbg !1023
  %call311 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* %187, i8* %call310, i8* %188), !dbg !1024
  call void @usage(i8* getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)) #8, !dbg !1025
  unreachable, !dbg !1025

if.end312:                                        ; preds = %if.end290
  br label %if.end313

if.end313:                                        ; preds = %if.end312, %if.end266
  br label %if.end314

if.end314:                                        ; preds = %if.end313, %if.end256
  br label %if.end315

if.end315:                                        ; preds = %if.end314, %if.end248
  br label %if.end316

if.end316:                                        ; preds = %if.end315, %if.end240
  br label %if.end317

if.end317:                                        ; preds = %if.end316, %if.end232
  br label %if.end318

if.end318:                                        ; preds = %if.end317, %if.end224
  br label %if.end319

if.end319:                                        ; preds = %if.end318, %if.end216
  br label %if.end320

if.end320:                                        ; preds = %if.end319, %if.then208
  br label %if.end321

if.end321:                                        ; preds = %if.end320, %if.end201
  br label %if.end322

if.end322:                                        ; preds = %if.end321, %if.end188
  br label %if.end323

if.end323:                                        ; preds = %if.end322, %if.end178
  br label %if.end324

if.end324:                                        ; preds = %if.end323, %if.end168
  br label %if.end325

if.end325:                                        ; preds = %if.end324, %if.end158
  br label %if.end326

if.end326:                                        ; preds = %if.end325, %if.end143
  br label %if.end327

if.end327:                                        ; preds = %if.end326, %if.end133
  br label %if.end328

if.end328:                                        ; preds = %if.end327, %if.end118
  br label %if.end329

if.end329:                                        ; preds = %if.end328, %if.end108
  br label %if.end330

if.end330:                                        ; preds = %if.end329, %if.end93
  br label %if.end331

if.end331:                                        ; preds = %if.end330, %if.end85
  br label %if.end332

if.end332:                                        ; preds = %if.end331, %if.end70
  br label %if.end333

if.end333:                                        ; preds = %if.end332, %if.end62
  br label %if.end334

if.end334:                                        ; preds = %if.end333, %if.then52
  br label %if.end335

if.end335:                                        ; preds = %if.end334
  br label %if.end336

if.end336:                                        ; preds = %if.end335
  br label %if.end337

if.end337:                                        ; preds = %if.end336
  br label %if.end338

if.end338:                                        ; preds = %if.end337, %if.end24
  %189 = load i8***, i8**** %argv.addr, align 8, !dbg !1026
  %190 = load i8**, i8*** %189, align 8, !dbg !1027
  %incdec.ptr339 = getelementptr inbounds i8*, i8** %190, i32 1, !dbg !1027
  store i8** %incdec.ptr339, i8*** %189, align 8, !dbg !1027
  %191 = load i32*, i32** %argc.addr, align 8, !dbg !1028
  %192 = load i32, i32* %191, align 4, !dbg !1029
  %dec340 = add nsw i32 %192, -1, !dbg !1029
  store i32 %dec340, i32* %191, align 4, !dbg !1029
  br label %while.cond, !dbg !455, !llvm.loop !1030

while.end:                                        ; preds = %if.then12, %if.then, %while.cond
  %193 = load i8***, i8**** %argv.addr, align 8, !dbg !1032
  %194 = load i8**, i8*** %193, align 8, !dbg !1033
  %195 = load i8**, i8*** %orig_argv, align 8, !dbg !1034
  %sub.ptr.lhs.cast = ptrtoint i8** %194 to i64, !dbg !1035
  %sub.ptr.rhs.cast = ptrtoint i8** %195 to i64, !dbg !1035
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1035
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !1035
  %conv341 = trunc i64 %sub.ptr.div to i32, !dbg !1036
  ret i32 %conv341, !dbg !1037
}

declare i32 @printf(i8*, ...) #2

declare void @list_common_cmds_help() #2

declare i32 @common_exit(i8*, i32, i32) #2

; Function Attrs: noreturn
declare void @exit(i32) #3

declare void @setup_path() #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @run_argv(i32* %argcp, i8*** %argv) #0 !dbg !1038 {
entry:
  %argcp.addr = alloca i32*, align 8
  %argv.addr = alloca i8***, align 8
  %done_alias = alloca i32, align 4
  %cmd_list = alloca %struct.string_list, align 8
  %seen = alloca %struct.string_list_item*, align 8
  %cmd = alloca %struct.child_process, align 8
  %i = alloca i32, align 4
  %i33 = alloca i32, align 4
  %sb = alloca %struct.strbuf, align 8
  %item = alloca %struct.string_list_item*, align 8
  store i32* %argcp, i32** %argcp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %argcp.addr, metadata !1041, metadata !DIExpression()), !dbg !1042
  store i8*** %argv, i8**** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8**** %argv.addr, metadata !1043, metadata !DIExpression()), !dbg !1044
  call void @llvm.dbg.declare(metadata i32* %done_alias, metadata !1045, metadata !DIExpression()), !dbg !1046
  store i32 0, i32* %done_alias, align 4, !dbg !1046
  call void @llvm.dbg.declare(metadata %struct.string_list* %cmd_list, metadata !1047, metadata !DIExpression()), !dbg !1048
  %0 = bitcast %struct.string_list* %cmd_list to i8*, !dbg !1048
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 40, i1 false), !dbg !1048
  call void @llvm.dbg.declare(metadata %struct.string_list_item** %seen, metadata !1049, metadata !DIExpression()), !dbg !1050
  br label %while.body, !dbg !1051

while.body:                                       ; preds = %entry, %if.end64
  %1 = load i32, i32* %done_alias, align 4, !dbg !1052
  %tobool = icmp ne i32 %1, 0, !dbg !1052
  br i1 %tobool, label %if.else, label %if.then, !dbg !1055

if.then:                                          ; preds = %while.body
  %2 = load i32*, i32** %argcp.addr, align 8, !dbg !1056
  %3 = load i32, i32* %2, align 4, !dbg !1057
  %4 = load i8***, i8**** %argv.addr, align 8, !dbg !1058
  %5 = load i8**, i8*** %4, align 8, !dbg !1059
  call void @handle_builtin(i32 %3, i8** %5), !dbg !1060
  br label %if.end28, !dbg !1060

if.else:                                          ; preds = %while.body
  %6 = load i8***, i8**** %argv.addr, align 8, !dbg !1061
  %7 = load i8**, i8*** %6, align 8, !dbg !1063
  %8 = load i8*, i8** %7, align 8, !dbg !1064
  %call = call %struct.cmd_struct* @get_builtin(i8* %8), !dbg !1065
  %tobool1 = icmp ne %struct.cmd_struct* %call, null, !dbg !1065
  br i1 %tobool1, label %if.then2, label %if.end27, !dbg !1066

if.then2:                                         ; preds = %if.else
  call void @llvm.dbg.declare(metadata %struct.child_process* %cmd, metadata !1067, metadata !DIExpression()), !dbg !1106
  %9 = bitcast %struct.child_process* %cmd to i8*, !dbg !1106
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 120, i1 false), !dbg !1106
  %10 = bitcast i8* %9 to { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }*, !dbg !1106
  %11 = getelementptr inbounds { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }, { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }* %10, i32 0, i32 0, !dbg !1106
  %12 = getelementptr inbounds %struct.strvec, %struct.strvec* %11, i32 0, i32 0, !dbg !1106
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @empty_strvec, i32 0, i32 0), i8*** %12, align 8, !dbg !1106
  %13 = getelementptr inbounds { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }, { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }* %10, i32 0, i32 1, !dbg !1106
  %14 = getelementptr inbounds %struct.strvec, %struct.strvec* %13, i32 0, i32 0, !dbg !1106
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @empty_strvec, i32 0, i32 0), i8*** %14, align 8, !dbg !1106
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1107, metadata !DIExpression()), !dbg !1108
  call void @trace2_cmd_name_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 800, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.228, i64 0, i64 0)), !dbg !1109
  %call3 = call i8* @get_super_prefix(), !dbg !1110
  %tobool4 = icmp ne i8* %call3, null, !dbg !1110
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !1112

if.then5:                                         ; preds = %if.then2
  %15 = load i8***, i8**** %argv.addr, align 8, !dbg !1113
  %16 = load i8**, i8*** %15, align 8, !dbg !1114
  %17 = load i8*, i8** %16, align 8, !dbg !1115
  call void (i8*, ...) @die(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.158, i64 0, i64 0), i8* %17) #8, !dbg !1116
  unreachable, !dbg !1116

if.end:                                           ; preds = %if.then2
  call void @commit_pager_choice(), !dbg !1117
  %args = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 0, !dbg !1118
  %call6 = call i8* @strvec_push(%struct.strvec* %args, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.229, i64 0, i64 0)), !dbg !1119
  store i32 0, i32* %i, align 4, !dbg !1120
  br label %for.cond, !dbg !1122

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %i, align 4, !dbg !1123
  %19 = load i32*, i32** %argcp.addr, align 8, !dbg !1125
  %20 = load i32, i32* %19, align 4, !dbg !1126
  %cmp = icmp slt i32 %18, %20, !dbg !1127
  br i1 %cmp, label %for.body, label %for.end, !dbg !1128

for.body:                                         ; preds = %for.cond
  %args7 = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 0, !dbg !1129
  %21 = load i8***, i8**** %argv.addr, align 8, !dbg !1130
  %22 = load i8**, i8*** %21, align 8, !dbg !1131
  %23 = load i32, i32* %i, align 4, !dbg !1132
  %idxprom = sext i32 %23 to i64, !dbg !1133
  %arrayidx = getelementptr inbounds i8*, i8** %22, i64 %idxprom, !dbg !1133
  %24 = load i8*, i8** %arrayidx, align 8, !dbg !1133
  %call8 = call i8* @strvec_push(%struct.strvec* %args7, i8* %24), !dbg !1134
  br label %for.inc, !dbg !1134

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %i, align 4, !dbg !1135
  %inc = add nsw i32 %25, 1, !dbg !1135
  store i32 %inc, i32* %i, align 4, !dbg !1135
  br label %for.cond, !dbg !1136, !llvm.loop !1137

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !1139

do.body:                                          ; preds = %for.end
  %call9 = call i32 @trace_pass_fl(%struct.trace_key* @trace_default_key), !dbg !1140
  %tobool10 = icmp ne i32 %call9, 0, !dbg !1140
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !1143

if.then11:                                        ; preds = %do.body
  %args12 = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 0, !dbg !1140
  %v = getelementptr inbounds %struct.strvec, %struct.strvec* %args12, i32 0, i32 0, !dbg !1140
  %26 = load i8**, i8*** %v, align 8, !dbg !1140
  call void (i8*, i32, i8**, i8*, ...) @trace_argv_printf_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 811, i8** %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.230, i64 0, i64 0)), !dbg !1140
  br label %if.end13, !dbg !1140

if.end13:                                         ; preds = %if.then11, %do.body
  br label %do.end, !dbg !1143

do.end:                                           ; preds = %if.end13
  %silent_exec_failure = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 11, !dbg !1144
  %bf.load = load i16, i16* %silent_exec_failure, align 8, !dbg !1145
  %bf.clear = and i16 %bf.load, -17, !dbg !1145
  %bf.set = or i16 %bf.clear, 16, !dbg !1145
  store i16 %bf.set, i16* %silent_exec_failure, align 8, !dbg !1145
  %clean_on_exit = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 11, !dbg !1146
  %bf.load14 = load i16, i16* %clean_on_exit, align 8, !dbg !1147
  %bf.clear15 = and i16 %bf.load14, -257, !dbg !1147
  %bf.set16 = or i16 %bf.clear15, 256, !dbg !1147
  store i16 %bf.set16, i16* %clean_on_exit, align 8, !dbg !1147
  %wait_after_clean = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 11, !dbg !1148
  %bf.load17 = load i16, i16* %wait_after_clean, align 8, !dbg !1149
  %bf.clear18 = and i16 %bf.load17, -513, !dbg !1149
  %bf.set19 = or i16 %bf.clear18, 512, !dbg !1149
  store i16 %bf.set19, i16* %wait_after_clean, align 8, !dbg !1149
  %trace2_child_class = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 5, !dbg !1150
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.231, i64 0, i64 0), i8** %trace2_child_class, align 8, !dbg !1151
  %call20 = call i32 @run_command(%struct.child_process* %cmd), !dbg !1152
  store i32 %call20, i32* %i, align 4, !dbg !1153
  %27 = load i32, i32* %i, align 4, !dbg !1154
  %cmp21 = icmp sge i32 %27, 0, !dbg !1156
  br i1 %cmp21, label %if.then24, label %lor.lhs.false, !dbg !1157

lor.lhs.false:                                    ; preds = %do.end
  %call22 = call i32* @__error(), !dbg !1158
  %28 = load i32, i32* %call22, align 4, !dbg !1158
  %cmp23 = icmp ne i32 %28, 2, !dbg !1159
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !1160

if.then24:                                        ; preds = %lor.lhs.false, %do.end
  %29 = load i32, i32* %i, align 4, !dbg !1161
  %call25 = call i32 @common_exit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 823, i32 %29), !dbg !1161
  call void @exit(i32 %call25) #8, !dbg !1161
  unreachable, !dbg !1161

if.end26:                                         ; preds = %lor.lhs.false
  %30 = load i8***, i8**** %argv.addr, align 8, !dbg !1162
  %31 = load i8**, i8*** %30, align 8, !dbg !1163
  %32 = load i8*, i8** %31, align 8, !dbg !1164
  call void (i8*, ...) @die(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.232, i64 0, i64 0), i8* %32) #8, !dbg !1165
  unreachable, !dbg !1165

if.end27:                                         ; preds = %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then
  %33 = load i8***, i8**** %argv.addr, align 8, !dbg !1166
  %34 = load i8**, i8*** %33, align 8, !dbg !1167
  call void @execv_dashed_external(i8** %34), !dbg !1168
  %35 = load i8***, i8**** %argv.addr, align 8, !dbg !1169
  %arrayidx29 = getelementptr inbounds i8**, i8*** %35, i64 0, !dbg !1169
  %36 = load i8**, i8*** %arrayidx29, align 8, !dbg !1169
  %37 = load i8*, i8** %36, align 8, !dbg !1170
  %call30 = call %struct.string_list_item* @unsorted_string_list_lookup(%struct.string_list* %cmd_list, i8* %37), !dbg !1171
  store %struct.string_list_item* %call30, %struct.string_list_item** %seen, align 8, !dbg !1172
  %38 = load %struct.string_list_item*, %struct.string_list_item** %seen, align 8, !dbg !1173
  %tobool31 = icmp ne %struct.string_list_item* %38, null, !dbg !1173
  br i1 %tobool31, label %if.then32, label %if.end58, !dbg !1175

if.then32:                                        ; preds = %if.end28
  call void @llvm.dbg.declare(metadata i32* %i33, metadata !1176, metadata !DIExpression()), !dbg !1178
  call void @llvm.dbg.declare(metadata %struct.strbuf* %sb, metadata !1179, metadata !DIExpression()), !dbg !1186
  %39 = bitcast %struct.strbuf* %sb to i8*, !dbg !1186
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 bitcast (%struct.strbuf* @__const.run_argv.sb to i8*), i64 24, i1 false), !dbg !1186
  store i32 0, i32* %i33, align 4, !dbg !1187
  br label %for.cond34, !dbg !1189

for.cond34:                                       ; preds = %for.inc51, %if.then32
  %40 = load i32, i32* %i33, align 4, !dbg !1190
  %conv = sext i32 %40 to i64, !dbg !1190
  %nr = getelementptr inbounds %struct.string_list, %struct.string_list* %cmd_list, i32 0, i32 1, !dbg !1192
  %41 = load i64, i64* %nr, align 8, !dbg !1192
  %cmp35 = icmp ult i64 %conv, %41, !dbg !1193
  br i1 %cmp35, label %for.body37, label %for.end53, !dbg !1194

for.body37:                                       ; preds = %for.cond34
  call void @llvm.dbg.declare(metadata %struct.string_list_item** %item, metadata !1195, metadata !DIExpression()), !dbg !1197
  %items = getelementptr inbounds %struct.string_list, %struct.string_list* %cmd_list, i32 0, i32 0, !dbg !1198
  %42 = load %struct.string_list_item*, %struct.string_list_item** %items, align 8, !dbg !1198
  %43 = load i32, i32* %i33, align 4, !dbg !1199
  %idxprom38 = sext i32 %43 to i64, !dbg !1200
  %arrayidx39 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %42, i64 %idxprom38, !dbg !1200
  store %struct.string_list_item* %arrayidx39, %struct.string_list_item** %item, align 8, !dbg !1197
  %44 = load %struct.string_list_item*, %struct.string_list_item** %item, align 8, !dbg !1201
  %string = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %44, i32 0, i32 0, !dbg !1202
  %45 = load i8*, i8** %string, align 8, !dbg !1202
  call void (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* %sb, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.233, i64 0, i64 0), i8* %45), !dbg !1203
  %46 = load %struct.string_list_item*, %struct.string_list_item** %item, align 8, !dbg !1204
  %47 = load %struct.string_list_item*, %struct.string_list_item** %seen, align 8, !dbg !1206
  %cmp40 = icmp eq %struct.string_list_item* %46, %47, !dbg !1207
  br i1 %cmp40, label %if.then42, label %if.else43, !dbg !1208

if.then42:                                        ; preds = %for.body37
  call void @strbuf_addstr(%struct.strbuf* %sb, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.234, i64 0, i64 0)), !dbg !1209
  br label %if.end50, !dbg !1209

if.else43:                                        ; preds = %for.body37
  %48 = load i32, i32* %i33, align 4, !dbg !1210
  %conv44 = sext i32 %48 to i64, !dbg !1210
  %nr45 = getelementptr inbounds %struct.string_list, %struct.string_list* %cmd_list, i32 0, i32 1, !dbg !1212
  %49 = load i64, i64* %nr45, align 8, !dbg !1212
  %sub = sub i64 %49, 1, !dbg !1213
  %cmp46 = icmp eq i64 %conv44, %sub, !dbg !1214
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !1215

if.then48:                                        ; preds = %if.else43
  call void @strbuf_addstr(%struct.strbuf* %sb, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.235, i64 0, i64 0)), !dbg !1216
  br label %if.end49, !dbg !1216

if.end49:                                         ; preds = %if.then48, %if.else43
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then42
  br label %for.inc51, !dbg !1217

for.inc51:                                        ; preds = %if.end50
  %50 = load i32, i32* %i33, align 4, !dbg !1218
  %inc52 = add nsw i32 %50, 1, !dbg !1218
  store i32 %inc52, i32* %i33, align 4, !dbg !1218
  br label %for.cond34, !dbg !1219, !llvm.loop !1220

for.end53:                                        ; preds = %for.cond34
  %call54 = call i8* @_(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.236, i64 0, i64 0)), !dbg !1222
  %items55 = getelementptr inbounds %struct.string_list, %struct.string_list* %cmd_list, i32 0, i32 0, !dbg !1223
  %51 = load %struct.string_list_item*, %struct.string_list_item** %items55, align 8, !dbg !1223
  %arrayidx56 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %51, i64 0, !dbg !1224
  %string57 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %arrayidx56, i32 0, i32 0, !dbg !1225
  %52 = load i8*, i8** %string57, align 8, !dbg !1225
  %buf = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i32 0, i32 2, !dbg !1226
  %53 = load i8*, i8** %buf, align 8, !dbg !1226
  call void (i8*, ...) @die(i8* %call54, i8* %52, i8* %53) #8, !dbg !1227
  unreachable, !dbg !1227

if.end58:                                         ; preds = %if.end28
  %54 = load i8***, i8**** %argv.addr, align 8, !dbg !1228
  %arrayidx59 = getelementptr inbounds i8**, i8*** %54, i64 0, !dbg !1228
  %55 = load i8**, i8*** %arrayidx59, align 8, !dbg !1228
  %56 = load i8*, i8** %55, align 8, !dbg !1229
  %call60 = call %struct.string_list_item* @string_list_append(%struct.string_list* %cmd_list, i8* %56), !dbg !1230
  %57 = load i32*, i32** %argcp.addr, align 8, !dbg !1231
  %58 = load i8***, i8**** %argv.addr, align 8, !dbg !1233
  %call61 = call i32 @handle_alias(i32* %57, i8*** %58), !dbg !1234
  %tobool62 = icmp ne i32 %call61, 0, !dbg !1234
  br i1 %tobool62, label %if.end64, label %if.then63, !dbg !1235

if.then63:                                        ; preds = %if.end58
  br label %while.end, !dbg !1236

if.end64:                                         ; preds = %if.end58
  store i32 1, i32* %done_alias, align 4, !dbg !1237
  br label %while.body, !dbg !1051, !llvm.loop !1238

while.end:                                        ; preds = %if.then63
  call void @string_list_clear(%struct.string_list* %cmd_list, i32 0), !dbg !1240
  %59 = load i32, i32* %done_alias, align 4, !dbg !1241
  ret i32 %59, !dbg !1242
}

declare i32* @__error() #2

declare i32 @fprintf(%struct.__sFILE*, i8*, ...) #2

declare i8* @help_unknown_cmd(i8*) #2

declare i8* @"\01_strerror"(i32) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare void @trace2_cmd_name_fl(i8*, i32, i8*) #2

declare i8* @get_super_prefix() #2

declare i8* @strvec_push(%struct.strvec*, i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @trace_pass_fl(%struct.trace_key* %key) #0 !dbg !1243 {
entry:
  %key.addr = alloca %struct.trace_key*, align 8
  store %struct.trace_key* %key, %struct.trace_key** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.trace_key** %key.addr, metadata !1255, metadata !DIExpression()), !dbg !1256
  %0 = load %struct.trace_key*, %struct.trace_key** %key.addr, align 8, !dbg !1257
  %fd = getelementptr inbounds %struct.trace_key, %struct.trace_key* %0, i32 0, i32 1, !dbg !1258
  %1 = load i32, i32* %fd, align 8, !dbg !1258
  %tobool = icmp ne i32 %1, 0, !dbg !1257
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1259

lor.rhs:                                          ; preds = %entry
  %2 = load %struct.trace_key*, %struct.trace_key** %key.addr, align 8, !dbg !1260
  %initialized = getelementptr inbounds %struct.trace_key, %struct.trace_key* %2, i32 0, i32 2, !dbg !1261
  %bf.load = load i8, i8* %initialized, align 4, !dbg !1261
  %bf.clear = and i8 %bf.load, 1, !dbg !1261
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1261
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !1262
  %lnot = xor i1 %tobool1, true, !dbg !1262
  br label %lor.end, !dbg !1259

lor.end:                                          ; preds = %lor.rhs, %entry
  %3 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %3 to i32, !dbg !1259
  ret i32 %lor.ext, !dbg !1263
}

declare void @trace_argv_printf_fl(i8*, i32, i8**, i8*, ...) #2

declare i32 @run_command(%struct.child_process*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @execv_dashed_external(i8** %argv) #0 !dbg !1264 {
entry:
  %argv.addr = alloca i8**, align 8
  %cmd = alloca %struct.child_process, align 8
  %status = alloca i32, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !1267, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.declare(metadata %struct.child_process* %cmd, metadata !1269, metadata !DIExpression()), !dbg !1270
  %0 = bitcast %struct.child_process* %cmd to i8*, !dbg !1270
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 120, i1 false), !dbg !1270
  %1 = bitcast i8* %0 to { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }*, !dbg !1270
  %2 = getelementptr inbounds { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }, { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }* %1, i32 0, i32 0, !dbg !1270
  %3 = getelementptr inbounds %struct.strvec, %struct.strvec* %2, i32 0, i32 0, !dbg !1270
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @empty_strvec, i32 0, i32 0), i8*** %3, align 8, !dbg !1270
  %4 = getelementptr inbounds { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }, { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }* %1, i32 0, i32 1, !dbg !1270
  %5 = getelementptr inbounds %struct.strvec, %struct.strvec* %4, i32 0, i32 0, !dbg !1270
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @empty_strvec, i32 0, i32 0), i8*** %5, align 8, !dbg !1270
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1271, metadata !DIExpression()), !dbg !1272
  %call = call i8* @get_super_prefix(), !dbg !1273
  %tobool = icmp ne i8* %call, null, !dbg !1273
  br i1 %tobool, label %if.then, label %if.end, !dbg !1275

if.then:                                          ; preds = %entry
  %call1 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.158, i64 0, i64 0)), !dbg !1276
  %6 = load i8**, i8*** %argv.addr, align 8, !dbg !1277
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 0, !dbg !1277
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !1277
  call void (i8*, ...) @die(i8* %call1, i8* %7) #8, !dbg !1278
  unreachable, !dbg !1278

if.end:                                           ; preds = %entry
  %8 = load i32, i32* @use_pager, align 4, !dbg !1279
  %cmp = icmp eq i32 %8, -1, !dbg !1281
  br i1 %cmp, label %land.lhs.true, label %if.end8, !dbg !1282

land.lhs.true:                                    ; preds = %if.end
  %9 = load i8**, i8*** %argv.addr, align 8, !dbg !1283
  %arrayidx2 = getelementptr inbounds i8*, i8** %9, i64 0, !dbg !1283
  %10 = load i8*, i8** %arrayidx2, align 8, !dbg !1283
  %call3 = call i32 @is_builtin(i8* %10), !dbg !1284
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1284
  br i1 %tobool4, label %if.end8, label %if.then5, !dbg !1285

if.then5:                                         ; preds = %land.lhs.true
  %11 = load i8**, i8*** %argv.addr, align 8, !dbg !1286
  %arrayidx6 = getelementptr inbounds i8*, i8** %11, i64 0, !dbg !1286
  %12 = load i8*, i8** %arrayidx6, align 8, !dbg !1286
  %call7 = call i32 @check_pager_config(i8* %12), !dbg !1287
  store i32 %call7, i32* @use_pager, align 4, !dbg !1288
  br label %if.end8, !dbg !1289

if.end8:                                          ; preds = %if.then5, %land.lhs.true, %if.end
  call void @commit_pager_choice(), !dbg !1290
  %args = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 0, !dbg !1291
  %13 = load i8**, i8*** %argv.addr, align 8, !dbg !1292
  %arrayidx9 = getelementptr inbounds i8*, i8** %13, i64 0, !dbg !1292
  %14 = load i8*, i8** %arrayidx9, align 8, !dbg !1292
  %call10 = call i8* (%struct.strvec*, i8*, ...) @strvec_pushf(%struct.strvec* %args, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.237, i64 0, i64 0), i8* %14), !dbg !1293
  %args11 = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 0, !dbg !1294
  %15 = load i8**, i8*** %argv.addr, align 8, !dbg !1295
  %add.ptr = getelementptr inbounds i8*, i8** %15, i64 1, !dbg !1296
  call void @strvec_pushv(%struct.strvec* %args11, i8** %add.ptr), !dbg !1297
  %clean_on_exit = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 11, !dbg !1298
  %bf.load = load i16, i16* %clean_on_exit, align 8, !dbg !1299
  %bf.clear = and i16 %bf.load, -257, !dbg !1299
  %bf.set = or i16 %bf.clear, 256, !dbg !1299
  store i16 %bf.set, i16* %clean_on_exit, align 8, !dbg !1299
  %wait_after_clean = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 11, !dbg !1300
  %bf.load12 = load i16, i16* %wait_after_clean, align 8, !dbg !1301
  %bf.clear13 = and i16 %bf.load12, -513, !dbg !1301
  %bf.set14 = or i16 %bf.clear13, 512, !dbg !1301
  store i16 %bf.set14, i16* %wait_after_clean, align 8, !dbg !1301
  %silent_exec_failure = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 11, !dbg !1302
  %bf.load15 = load i16, i16* %silent_exec_failure, align 8, !dbg !1303
  %bf.clear16 = and i16 %bf.load15, -17, !dbg !1303
  %bf.set17 = or i16 %bf.clear16, 16, !dbg !1303
  store i16 %bf.set17, i16* %silent_exec_failure, align 8, !dbg !1303
  %trace2_child_class = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 5, !dbg !1304
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.238, i64 0, i64 0), i8** %trace2_child_class, align 8, !dbg !1305
  call void @trace2_cmd_name_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 744, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.239, i64 0, i64 0)), !dbg !1306
  br label %do.body, !dbg !1307

do.body:                                          ; preds = %if.end8
  %call18 = call i32 @trace_pass_fl(%struct.trace_key* @trace_default_key), !dbg !1308
  %tobool19 = icmp ne i32 %call18, 0, !dbg !1308
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !1311

if.then20:                                        ; preds = %do.body
  %args21 = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 0, !dbg !1308
  %v = getelementptr inbounds %struct.strvec, %struct.strvec* %args21, i32 0, i32 0, !dbg !1308
  %16 = load i8**, i8*** %v, align 8, !dbg !1308
  call void (i8*, i32, i8**, i8*, ...) @trace_argv_printf_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 750, i8** %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.230, i64 0, i64 0)), !dbg !1308
  br label %if.end22, !dbg !1308

if.end22:                                         ; preds = %if.then20, %do.body
  br label %do.end, !dbg !1311

do.end:                                           ; preds = %if.end22
  %call23 = call i32 @run_command(%struct.child_process* %cmd), !dbg !1312
  store i32 %call23, i32* %status, align 4, !dbg !1313
  %17 = load i32, i32* %status, align 4, !dbg !1314
  %cmp24 = icmp sge i32 %17, 0, !dbg !1316
  br i1 %cmp24, label %if.then25, label %if.else, !dbg !1317

if.then25:                                        ; preds = %do.end
  %18 = load i32, i32* %status, align 4, !dbg !1318
  %call26 = call i32 @common_exit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 766, i32 %18), !dbg !1318
  call void @exit(i32 %call26) #8, !dbg !1318
  unreachable, !dbg !1318

if.else:                                          ; preds = %do.end
  %call27 = call i32* @__error(), !dbg !1319
  %19 = load i32, i32* %call27, align 4, !dbg !1319
  %cmp28 = icmp ne i32 %19, 2, !dbg !1321
  br i1 %cmp28, label %if.then29, label %if.end31, !dbg !1322

if.then29:                                        ; preds = %if.else
  %call30 = call i32 @common_exit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 768, i32 128), !dbg !1323
  call void @exit(i32 %call30) #8, !dbg !1323
  unreachable, !dbg !1323

if.end31:                                         ; preds = %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  ret void, !dbg !1324
}

declare %struct.string_list_item* @unsorted_string_list_lookup(%struct.string_list*, i8*) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare void @strbuf_addf(%struct.strbuf*, i8*, ...) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @strbuf_addstr(%struct.strbuf* %sb, i8* %s) #0 !dbg !1325 {
entry:
  %sb.addr = alloca %struct.strbuf*, align 8
  %s.addr = alloca i8*, align 8
  store %struct.strbuf* %sb, %struct.strbuf** %sb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.strbuf** %sb.addr, metadata !1329, metadata !DIExpression()), !dbg !1330
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1331, metadata !DIExpression()), !dbg !1332
  %0 = load %struct.strbuf*, %struct.strbuf** %sb.addr, align 8, !dbg !1333
  %1 = load i8*, i8** %s.addr, align 8, !dbg !1334
  %2 = load i8*, i8** %s.addr, align 8, !dbg !1335
  %call = call i64 @strlen(i8* %2), !dbg !1336
  call void @strbuf_add(%struct.strbuf* %0, i8* %1, i64 %call), !dbg !1337
  ret void, !dbg !1338
}

declare %struct.string_list_item* @string_list_append(%struct.string_list*, i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @handle_alias(i32* %argcp, i8*** %argv) #0 !dbg !1339 {
entry:
  %argcp.addr = alloca i32*, align 8
  %argv.addr = alloca i8***, align 8
  %envchanged = alloca i32, align 4
  %ret = alloca i32, align 4
  %saved_errno = alloca i32, align 4
  %count = alloca i32, align 4
  %option_count = alloca i32, align 4
  %new_argv = alloca i8**, align 8
  %alias_command = alloca i8*, align 8
  %alias_string = alloca i8*, align 8
  %child = alloca %struct.child_process, align 8
  %nongit_ok = alloca i32, align 4
  store i32* %argcp, i32** %argcp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %argcp.addr, metadata !1340, metadata !DIExpression()), !dbg !1341
  store i8*** %argv, i8**** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8**** %argv.addr, metadata !1342, metadata !DIExpression()), !dbg !1343
  call void @llvm.dbg.declare(metadata i32* %envchanged, metadata !1344, metadata !DIExpression()), !dbg !1345
  store i32 0, i32* %envchanged, align 4, !dbg !1345
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !1346, metadata !DIExpression()), !dbg !1347
  store i32 0, i32* %ret, align 4, !dbg !1347
  call void @llvm.dbg.declare(metadata i32* %saved_errno, metadata !1348, metadata !DIExpression()), !dbg !1349
  %call = call i32* @__error(), !dbg !1350
  %0 = load i32, i32* %call, align 4, !dbg !1350
  store i32 %0, i32* %saved_errno, align 4, !dbg !1349
  call void @llvm.dbg.declare(metadata i32* %count, metadata !1351, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.declare(metadata i32* %option_count, metadata !1353, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.declare(metadata i8*** %new_argv, metadata !1355, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.declare(metadata i8** %alias_command, metadata !1357, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.declare(metadata i8** %alias_string, metadata !1359, metadata !DIExpression()), !dbg !1360
  %1 = load i8***, i8**** %argv.addr, align 8, !dbg !1361
  %2 = load i8**, i8*** %1, align 8, !dbg !1362
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0, !dbg !1363
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !1363
  store i8* %3, i8** %alias_command, align 8, !dbg !1364
  %4 = load i8*, i8** %alias_command, align 8, !dbg !1365
  %call1 = call i8* @alias_lookup(i8* %4), !dbg !1366
  store i8* %call1, i8** %alias_string, align 8, !dbg !1367
  %5 = load i8*, i8** %alias_string, align 8, !dbg !1368
  %tobool = icmp ne i8* %5, null, !dbg !1368
  br i1 %tobool, label %if.then, label %if.end73, !dbg !1370

if.then:                                          ; preds = %entry
  %6 = load i32*, i32** %argcp.addr, align 8, !dbg !1371
  %7 = load i32, i32* %6, align 4, !dbg !1374
  %cmp = icmp sgt i32 %7, 1, !dbg !1375
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1376

land.lhs.true:                                    ; preds = %if.then
  %8 = load i8***, i8**** %argv.addr, align 8, !dbg !1377
  %9 = load i8**, i8*** %8, align 8, !dbg !1378
  %arrayidx2 = getelementptr inbounds i8*, i8** %9, i64 1, !dbg !1379
  %10 = load i8*, i8** %arrayidx2, align 8, !dbg !1379
  %call3 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)), !dbg !1380
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1380
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !1381

if.then5:                                         ; preds = %land.lhs.true
  %11 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !1382
  %call6 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.240, i64 0, i64 0)), !dbg !1383
  %12 = load i8*, i8** %alias_command, align 8, !dbg !1384
  %13 = load i8*, i8** %alias_string, align 8, !dbg !1385
  %call7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf_ln(%struct.__sFILE* %11, i8* %call6, i8* %12, i8* %13), !dbg !1386
  br label %if.end, !dbg !1386

if.end:                                           ; preds = %if.then5, %land.lhs.true, %if.then
  %14 = load i8*, i8** %alias_string, align 8, !dbg !1387
  %arrayidx8 = getelementptr inbounds i8, i8* %14, i64 0, !dbg !1387
  %15 = load i8, i8* %arrayidx8, align 1, !dbg !1387
  %conv = sext i8 %15 to i32, !dbg !1387
  %cmp9 = icmp eq i32 %conv, 33, !dbg !1389
  br i1 %cmp9, label %if.then11, label %if.end31, !dbg !1390

if.then11:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.child_process* %child, metadata !1391, metadata !DIExpression()), !dbg !1393
  %16 = bitcast %struct.child_process* %child to i8*, !dbg !1393
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 120, i1 false), !dbg !1393
  %17 = bitcast i8* %16 to { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }*, !dbg !1393
  %18 = getelementptr inbounds { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }, { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }* %17, i32 0, i32 0, !dbg !1393
  %19 = getelementptr inbounds %struct.strvec, %struct.strvec* %18, i32 0, i32 0, !dbg !1393
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @empty_strvec, i32 0, i32 0), i8*** %19, align 8, !dbg !1393
  %20 = getelementptr inbounds { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }, { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }* %17, i32 0, i32 1, !dbg !1393
  %21 = getelementptr inbounds %struct.strvec, %struct.strvec* %20, i32 0, i32 0, !dbg !1393
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @empty_strvec, i32 0, i32 0), i8*** %21, align 8, !dbg !1393
  call void @llvm.dbg.declare(metadata i32* %nongit_ok, metadata !1394, metadata !DIExpression()), !dbg !1395
  %call12 = call i8* @setup_git_directory_gently(i32* %nongit_ok), !dbg !1396
  call void @commit_pager_choice(), !dbg !1397
  %use_shell = getelementptr inbounds %struct.child_process, %struct.child_process* %child, i32 0, i32 11, !dbg !1398
  %bf.load = load i16, i16* %use_shell, align 8, !dbg !1399
  %bf.clear = and i16 %bf.load, -33, !dbg !1399
  %bf.set = or i16 %bf.clear, 32, !dbg !1399
  store i16 %bf.set, i16* %use_shell, align 8, !dbg !1399
  %clean_on_exit = getelementptr inbounds %struct.child_process, %struct.child_process* %child, i32 0, i32 11, !dbg !1400
  %bf.load13 = load i16, i16* %clean_on_exit, align 8, !dbg !1401
  %bf.clear14 = and i16 %bf.load13, -257, !dbg !1401
  %bf.set15 = or i16 %bf.clear14, 256, !dbg !1401
  store i16 %bf.set15, i16* %clean_on_exit, align 8, !dbg !1401
  %wait_after_clean = getelementptr inbounds %struct.child_process, %struct.child_process* %child, i32 0, i32 11, !dbg !1402
  %bf.load16 = load i16, i16* %wait_after_clean, align 8, !dbg !1403
  %bf.clear17 = and i16 %bf.load16, -513, !dbg !1403
  %bf.set18 = or i16 %bf.clear17, 512, !dbg !1403
  store i16 %bf.set18, i16* %wait_after_clean, align 8, !dbg !1403
  %trace2_child_class = getelementptr inbounds %struct.child_process, %struct.child_process* %child, i32 0, i32 5, !dbg !1404
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.241, i64 0, i64 0), i8** %trace2_child_class, align 8, !dbg !1405
  %args = getelementptr inbounds %struct.child_process, %struct.child_process* %child, i32 0, i32 0, !dbg !1406
  %22 = load i8*, i8** %alias_string, align 8, !dbg !1407
  %add.ptr = getelementptr inbounds i8, i8* %22, i64 1, !dbg !1408
  %call19 = call i8* @strvec_push(%struct.strvec* %args, i8* %add.ptr), !dbg !1409
  %args20 = getelementptr inbounds %struct.child_process, %struct.child_process* %child, i32 0, i32 0, !dbg !1410
  %23 = load i8***, i8**** %argv.addr, align 8, !dbg !1411
  %24 = load i8**, i8*** %23, align 8, !dbg !1412
  %add.ptr21 = getelementptr inbounds i8*, i8** %24, i64 1, !dbg !1413
  call void @strvec_pushv(%struct.strvec* %args20, i8** %add.ptr21), !dbg !1414
  %25 = load i8*, i8** %alias_command, align 8, !dbg !1415
  %args22 = getelementptr inbounds %struct.child_process, %struct.child_process* %child, i32 0, i32 0, !dbg !1415
  %v = getelementptr inbounds %struct.strvec, %struct.strvec* %args22, i32 0, i32 0, !dbg !1415
  %26 = load i8**, i8*** %v, align 8, !dbg !1415
  call void @trace2_cmd_alias_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 367, i8* %25, i8** %26), !dbg !1415
  call void @trace2_cmd_list_config_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 368), !dbg !1416
  call void @trace2_cmd_list_env_vars_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 369), !dbg !1417
  call void @trace2_cmd_name_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 370, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.242, i64 0, i64 0)), !dbg !1418
  %call23 = call i32 @run_command(%struct.child_process* %child), !dbg !1419
  store i32 %call23, i32* %ret, align 4, !dbg !1420
  %27 = load i32, i32* %ret, align 4, !dbg !1421
  %cmp24 = icmp sge i32 %27, 0, !dbg !1423
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !1424

if.then26:                                        ; preds = %if.then11
  %28 = load i32, i32* %ret, align 4, !dbg !1425
  %call27 = call i32 @common_exit(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 374, i32 %28), !dbg !1425
  call void @exit(i32 %call27) #8, !dbg !1425
  unreachable, !dbg !1425

if.end28:                                         ; preds = %if.then11
  %call29 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.243, i64 0, i64 0)), !dbg !1426
  %29 = load i8*, i8** %alias_command, align 8, !dbg !1427
  %30 = load i8*, i8** %alias_string, align 8, !dbg !1428
  %add.ptr30 = getelementptr inbounds i8, i8* %30, i64 1, !dbg !1429
  call void (i8*, ...) @die_errno(i8* %call29, i8* %29, i8* %add.ptr30) #8, !dbg !1430
  unreachable, !dbg !1430

if.end31:                                         ; preds = %if.end
  %31 = load i8*, i8** %alias_string, align 8, !dbg !1431
  %call32 = call i32 @split_cmdline(i8* %31, i8*** %new_argv), !dbg !1432
  store i32 %call32, i32* %count, align 4, !dbg !1433
  %32 = load i32, i32* %count, align 4, !dbg !1434
  %cmp33 = icmp slt i32 %32, 0, !dbg !1436
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !1437

if.then35:                                        ; preds = %if.end31
  %call36 = call i8* @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.244, i64 0, i64 0)), !dbg !1438
  %33 = load i8*, i8** %alias_command, align 8, !dbg !1439
  %34 = load i32, i32* %count, align 4, !dbg !1440
  %call37 = call i8* @split_cmdline_strerror(i32 %34), !dbg !1441
  %call38 = call i8* @_(i8* %call37), !dbg !1442
  call void (i8*, ...) @die(i8* %call36, i8* %33, i8* %call38) #8, !dbg !1443
  unreachable, !dbg !1443

if.end39:                                         ; preds = %if.end31
  %call40 = call i32 @handle_options(i8*** %new_argv, i32* %count, i32* %envchanged), !dbg !1444
  store i32 %call40, i32* %option_count, align 4, !dbg !1445
  %35 = load i32, i32* %envchanged, align 4, !dbg !1446
  %tobool41 = icmp ne i32 %35, 0, !dbg !1446
  br i1 %tobool41, label %if.then42, label %if.end44, !dbg !1448

if.then42:                                        ; preds = %if.end39
  %call43 = call i8* @_(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.245, i64 0, i64 0)), !dbg !1449
  %36 = load i8*, i8** %alias_command, align 8, !dbg !1450
  call void (i8*, ...) @die(i8* %call43, i8* %36) #8, !dbg !1451
  unreachable, !dbg !1451

if.end44:                                         ; preds = %if.end39
  %37 = load i8**, i8*** %new_argv, align 8, !dbg !1452
  %38 = load i32, i32* %option_count, align 4, !dbg !1452
  %idx.ext = sext i32 %38 to i64, !dbg !1452
  %idx.neg = sub i64 0, %idx.ext, !dbg !1452
  %add.ptr45 = getelementptr inbounds i8*, i8** %37, i64 %idx.neg, !dbg !1452
  %39 = bitcast i8** %add.ptr45 to i8*, !dbg !1452
  %40 = load i8**, i8*** %new_argv, align 8, !dbg !1452
  %41 = bitcast i8** %40 to i8*, !dbg !1452
  %42 = load i32, i32* %count, align 4, !dbg !1452
  %conv46 = sext i32 %42 to i64, !dbg !1452
  call void @move_array(i8* %39, i8* %41, i64 %conv46, i64 8), !dbg !1452
  %43 = load i32, i32* %option_count, align 4, !dbg !1453
  %44 = load i8**, i8*** %new_argv, align 8, !dbg !1454
  %idx.ext47 = sext i32 %43 to i64, !dbg !1454
  %idx.neg48 = sub i64 0, %idx.ext47, !dbg !1454
  %add.ptr49 = getelementptr inbounds i8*, i8** %44, i64 %idx.neg48, !dbg !1454
  store i8** %add.ptr49, i8*** %new_argv, align 8, !dbg !1454
  %45 = load i32, i32* %count, align 4, !dbg !1455
  %cmp50 = icmp slt i32 %45, 1, !dbg !1457
  br i1 %cmp50, label %if.then52, label %if.end54, !dbg !1458

if.then52:                                        ; preds = %if.end44
  %call53 = call i8* @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.246, i64 0, i64 0)), !dbg !1459
  %46 = load i8*, i8** %alias_command, align 8, !dbg !1460
  call void (i8*, ...) @die(i8* %call53, i8* %46) #8, !dbg !1461
  unreachable, !dbg !1461

if.end54:                                         ; preds = %if.end44
  %47 = load i8*, i8** %alias_command, align 8, !dbg !1462
  %48 = load i8**, i8*** %new_argv, align 8, !dbg !1464
  %arrayidx55 = getelementptr inbounds i8*, i8** %48, i64 0, !dbg !1464
  %49 = load i8*, i8** %arrayidx55, align 8, !dbg !1464
  %call56 = call i32 @strcmp(i8* %47, i8* %49), !dbg !1465
  %tobool57 = icmp ne i32 %call56, 0, !dbg !1465
  br i1 %tobool57, label %if.end60, label %if.then58, !dbg !1466

if.then58:                                        ; preds = %if.end54
  %call59 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.247, i64 0, i64 0)), !dbg !1467
  %50 = load i8*, i8** %alias_command, align 8, !dbg !1468
  call void (i8*, ...) @die(i8* %call59, i8* %50) #8, !dbg !1469
  unreachable, !dbg !1469

if.end60:                                         ; preds = %if.end54
  br label %do.body, !dbg !1470

do.body:                                          ; preds = %if.end60
  %call61 = call i32 @trace_pass_fl(%struct.trace_key* @trace_default_key), !dbg !1471
  %tobool62 = icmp ne i32 %call61, 0, !dbg !1471
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !1474

if.then63:                                        ; preds = %do.body
  %51 = load i8**, i8*** %new_argv, align 8, !dbg !1471
  %52 = load i8*, i8** %alias_command, align 8, !dbg !1471
  call void (i8*, i32, i8**, i8*, ...) @trace_argv_printf_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 399, i8** %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.248, i64 0, i64 0), i8* %52), !dbg !1471
  br label %if.end64, !dbg !1471

if.end64:                                         ; preds = %if.then63, %do.body
  br label %do.end, !dbg !1474

do.end:                                           ; preds = %if.end64
  %53 = load i8**, i8*** %new_argv, align 8, !dbg !1475
  %54 = bitcast i8** %53 to i8*, !dbg !1475
  %55 = load i32, i32* %count, align 4, !dbg !1475
  %56 = load i32*, i32** %argcp.addr, align 8, !dbg !1475
  %57 = load i32, i32* %56, align 4, !dbg !1475
  %add = add nsw i32 %55, %57, !dbg !1475
  %conv65 = sext i32 %add to i64, !dbg !1475
  %call66 = call i64 @st_mult(i64 8, i64 %conv65), !dbg !1475
  %call67 = call i8* @xrealloc(i8* %54, i64 %call66), !dbg !1475
  %58 = bitcast i8* %call67 to i8**, !dbg !1475
  store i8** %58, i8*** %new_argv, align 8, !dbg !1475
  %59 = load i8**, i8*** %new_argv, align 8, !dbg !1476
  %60 = load i32, i32* %count, align 4, !dbg !1476
  %idx.ext68 = sext i32 %60 to i64, !dbg !1476
  %add.ptr69 = getelementptr inbounds i8*, i8** %59, i64 %idx.ext68, !dbg !1476
  %61 = bitcast i8** %add.ptr69 to i8*, !dbg !1476
  %62 = load i8***, i8**** %argv.addr, align 8, !dbg !1476
  %63 = load i8**, i8*** %62, align 8, !dbg !1476
  %add.ptr70 = getelementptr inbounds i8*, i8** %63, i64 1, !dbg !1476
  %64 = bitcast i8** %add.ptr70 to i8*, !dbg !1476
  %65 = load i32*, i32** %argcp.addr, align 8, !dbg !1476
  %66 = load i32, i32* %65, align 4, !dbg !1476
  %conv71 = sext i32 %66 to i64, !dbg !1476
  call void @copy_array(i8* %61, i8* %64, i64 %conv71, i64 8), !dbg !1476
  %67 = load i8*, i8** %alias_command, align 8, !dbg !1477
  %68 = load i8**, i8*** %new_argv, align 8, !dbg !1477
  call void @trace2_cmd_alias_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 405, i8* %67, i8** %68), !dbg !1477
  call void @trace2_cmd_list_config_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 406), !dbg !1478
  call void @trace2_cmd_list_env_vars_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 407), !dbg !1479
  %69 = load i8**, i8*** %new_argv, align 8, !dbg !1480
  %70 = load i8***, i8**** %argv.addr, align 8, !dbg !1481
  store i8** %69, i8*** %70, align 8, !dbg !1482
  %71 = load i32, i32* %count, align 4, !dbg !1483
  %sub = sub nsw i32 %71, 1, !dbg !1484
  %72 = load i32*, i32** %argcp.addr, align 8, !dbg !1485
  %73 = load i32, i32* %72, align 4, !dbg !1486
  %add72 = add nsw i32 %73, %sub, !dbg !1486
  store i32 %add72, i32* %72, align 4, !dbg !1486
  store i32 1, i32* %ret, align 4, !dbg !1487
  br label %if.end73, !dbg !1488

if.end73:                                         ; preds = %do.end, %entry
  %74 = load i32, i32* %saved_errno, align 4, !dbg !1489
  %call74 = call i32* @__error(), !dbg !1490
  store i32 %74, i32* %call74, align 4, !dbg !1491
  %75 = load i32, i32* %ret, align 4, !dbg !1492
  ret i32 %75, !dbg !1493
}

declare void @string_list_clear(%struct.string_list*, i32) #2

declare i8* @alias_lookup(i8*) #2

declare i32 @fprintf_ln(%struct.__sFILE*, i8*, ...) #2

declare i8* @setup_git_directory_gently(i32*) #2

declare void @strvec_pushv(%struct.strvec*, i8**) #2

declare void @trace2_cmd_alias_fl(i8*, i32, i8*, i8**) #2

declare void @trace2_cmd_list_config_fl(i8*, i32) #2

declare void @trace2_cmd_list_env_vars_fl(i8*, i32) #2

; Function Attrs: noreturn
declare void @die_errno(i8*, ...) #3

declare i32 @split_cmdline(i8*, i8***) #2

declare i8* @split_cmdline_strerror(i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @move_array(i8* %dst, i8* %src, i64 %n, i64 %size) #0 !dbg !1494 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !1499, metadata !DIExpression()), !dbg !1500
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !1501, metadata !DIExpression()), !dbg !1502
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1503, metadata !DIExpression()), !dbg !1504
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1505, metadata !DIExpression()), !dbg !1506
  %0 = load i64, i64* %n.addr, align 8, !dbg !1507
  %tobool = icmp ne i64 %0, 0, !dbg !1507
  br i1 %tobool, label %if.then, label %if.end, !dbg !1509

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dst.addr, align 8, !dbg !1510
  %2 = load i8*, i8** %src.addr, align 8, !dbg !1510
  %3 = load i64, i64* %size.addr, align 8, !dbg !1510
  %4 = load i64, i64* %n.addr, align 8, !dbg !1510
  %call = call i64 @st_mult(i64 %3, i64 %4), !dbg !1510
  %5 = load i8*, i8** %dst.addr, align 8, !dbg !1510
  %6 = call i64 @llvm.objectsize.i64.p0i8(i8* %5, i1 false, i1 true, i1 false), !dbg !1510
  %call1 = call i8* @__memmove_chk(i8* %1, i8* %2, i64 %call, i64 %6) #9, !dbg !1510
  br label %if.end, !dbg !1510

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1511
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @st_mult(i64 %a, i64 %b) #0 !dbg !1512 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  store i64 %a, i64* %a.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %a.addr, metadata !1515, metadata !DIExpression()), !dbg !1516
  store i64 %b, i64* %b.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %b.addr, metadata !1517, metadata !DIExpression()), !dbg !1518
  %0 = load i64, i64* %a.addr, align 8, !dbg !1519
  %tobool = icmp ne i64 %0, 0, !dbg !1519
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1519

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, i64* %b.addr, align 8, !dbg !1519
  %2 = load i64, i64* %a.addr, align 8, !dbg !1519
  %div = udiv i64 -1, %2, !dbg !1519
  %cmp = icmp ugt i64 %1, %div, !dbg !1519
  br i1 %cmp, label %if.then, label %if.end, !dbg !1521

if.then:                                          ; preds = %land.lhs.true
  %3 = load i64, i64* %a.addr, align 8, !dbg !1522
  %4 = load i64, i64* %b.addr, align 8, !dbg !1523
  call void (i8*, ...) @die(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.249, i64 0, i64 0), i64 %3, i64 %4) #8, !dbg !1524
  unreachable, !dbg !1524

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load i64, i64* %a.addr, align 8, !dbg !1525
  %6 = load i64, i64* %b.addr, align 8, !dbg !1526
  %mul = mul i64 %5, %6, !dbg !1527
  ret i64 %mul, !dbg !1528
}

declare i8* @xrealloc(i8*, i64) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @copy_array(i8* %dst, i8* %src, i64 %n, i64 %size) #0 !dbg !1529 {
entry:
  %dst.addr = alloca i8*, align 8
  %src.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  store i8* %dst, i8** %dst.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dst.addr, metadata !1530, metadata !DIExpression()), !dbg !1531
  store i8* %src, i8** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %src.addr, metadata !1532, metadata !DIExpression()), !dbg !1533
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !1534, metadata !DIExpression()), !dbg !1535
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !1536, metadata !DIExpression()), !dbg !1537
  %0 = load i64, i64* %n.addr, align 8, !dbg !1538
  %tobool = icmp ne i64 %0, 0, !dbg !1538
  br i1 %tobool, label %if.then, label %if.end, !dbg !1540

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %dst.addr, align 8, !dbg !1541
  %2 = load i8*, i8** %src.addr, align 8, !dbg !1541
  %3 = load i64, i64* %size.addr, align 8, !dbg !1541
  %4 = load i64, i64* %n.addr, align 8, !dbg !1541
  %call = call i64 @st_mult(i64 %3, i64 %4), !dbg !1541
  %5 = load i8*, i8** %dst.addr, align 8, !dbg !1541
  %6 = call i64 @llvm.objectsize.i64.p0i8(i8* %5, i1 false, i1 true, i1 false), !dbg !1541
  %call1 = call i8* @__memcpy_chk(i8* %1, i8* %2, i64 %call, i64 %6) #9, !dbg !1541
  br label %if.end, !dbg !1541

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1542
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #6

; Function Attrs: nounwind
declare i8* @__memmove_chk(i8*, i8*, i64, i64) #6

declare void @strbuf_add(%struct.strbuf*, i8*, i64) #2

declare i8* @strvec_pushf(%struct.strvec*, i8*, ...) #2

declare void @git_set_exec_path(i8*) #2

declare i8* @git_exec_path() #2

declare i32 @puts(i8*) #2

declare i8* @system_path(i8*) #2

; Function Attrs: noreturn
declare void @usage(i8*) #3

declare i8* @xgetcwd() #2

declare void @free(i8*) #2

declare void @git_config_push_parameter(i8*) #2

declare void @git_config_push_env(i8*) #2

declare void @set_alternate_shallow_file(%struct.repository*, i8*, i32) #2

declare i32 @chdir(i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @list_builtins(%struct.string_list* %out, i32 %exclude_option) #0 !dbg !1543 {
entry:
  %out.addr = alloca %struct.string_list*, align 8
  %exclude_option.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.string_list* %out, %struct.string_list** %out.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.string_list** %out.addr, metadata !1547, metadata !DIExpression()), !dbg !1548
  store i32 %exclude_option, i32* %exclude_option.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %exclude_option.addr, metadata !1549, metadata !DIExpression()), !dbg !1550
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1551, metadata !DIExpression()), !dbg !1552
  store i32 0, i32* %i, align 4, !dbg !1553
  br label %for.cond, !dbg !1555

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1556
  %conv = sext i32 %0 to i64, !dbg !1556
  %cmp = icmp ult i64 %conv, 141, !dbg !1558
  br i1 %cmp, label %for.body, label %for.end, !dbg !1559

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %exclude_option.addr, align 4, !dbg !1560
  %tobool = icmp ne i32 %1, 0, !dbg !1560
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1563

land.lhs.true:                                    ; preds = %for.body
  %2 = load i32, i32* %i, align 4, !dbg !1564
  %idxprom = sext i32 %2 to i64, !dbg !1565
  %arrayidx = getelementptr inbounds [141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 %idxprom, !dbg !1565
  %option = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %arrayidx, i32 0, i32 2, !dbg !1566
  %3 = load i32, i32* %option, align 8, !dbg !1566
  %4 = load i32, i32* %exclude_option.addr, align 4, !dbg !1567
  %and = and i32 %3, %4, !dbg !1568
  %tobool2 = icmp ne i32 %and, 0, !dbg !1568
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1569

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc, !dbg !1570

if.end:                                           ; preds = %land.lhs.true, %for.body
  %5 = load %struct.string_list*, %struct.string_list** %out.addr, align 8, !dbg !1571
  %6 = load i32, i32* %i, align 4, !dbg !1572
  %idxprom3 = sext i32 %6 to i64, !dbg !1573
  %arrayidx4 = getelementptr inbounds [141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 %idxprom3, !dbg !1573
  %cmd = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %arrayidx4, i32 0, i32 0, !dbg !1574
  %7 = load i8*, i8** %cmd, align 8, !dbg !1574
  %call = call %struct.string_list_item* @string_list_append(%struct.string_list* %5, i8* %7), !dbg !1575
  br label %for.inc, !dbg !1576

for.inc:                                          ; preds = %if.end, %if.then
  %8 = load i32, i32* %i, align 4, !dbg !1577
  %inc = add nsw i32 %8, 1, !dbg !1577
  store i32 %inc, i32* %i, align 4, !dbg !1577
  br label %for.cond, !dbg !1578, !llvm.loop !1579

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1581
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @list_cmds(i8* %spec) #0 !dbg !1582 {
entry:
  %spec.addr = alloca i8*, align 8
  %list = alloca %struct.string_list, align 8
  %i = alloca i32, align 4
  %nongit = alloca i32, align 4
  %sep = alloca i8*, align 8
  %len = alloca i32, align 4
  %sb = alloca %struct.strbuf, align 8
  store i8* %spec, i8** %spec.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %spec.addr, metadata !1583, metadata !DIExpression()), !dbg !1584
  call void @llvm.dbg.declare(metadata %struct.string_list* %list, metadata !1585, metadata !DIExpression()), !dbg !1586
  %0 = bitcast %struct.string_list* %list to i8*, !dbg !1586
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 40, i1 false), !dbg !1586
  %1 = bitcast i8* %0 to %struct.string_list*, !dbg !1586
  %2 = getelementptr inbounds %struct.string_list, %struct.string_list* %1, i32 0, i32 3, !dbg !1586
  store i8 1, i8* %2, align 8, !dbg !1586
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1587, metadata !DIExpression()), !dbg !1588
  call void @llvm.dbg.declare(metadata i32* %nongit, metadata !1589, metadata !DIExpression()), !dbg !1590
  %call = call i8* @setup_git_directory_gently(i32* %nongit), !dbg !1591
  br label %while.cond, !dbg !1592

while.cond:                                       ; preds = %if.end42, %entry
  %3 = load i8*, i8** %spec.addr, align 8, !dbg !1593
  %4 = load i8, i8* %3, align 1, !dbg !1594
  %tobool = icmp ne i8 %4, 0, !dbg !1592
  br i1 %tobool, label %while.body, label %while.end, !dbg !1592

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %sep, metadata !1595, metadata !DIExpression()), !dbg !1597
  %5 = load i8*, i8** %spec.addr, align 8, !dbg !1598
  %call1 = call i8* @gitstrchrnul(i8* %5, i32 44), !dbg !1599
  store i8* %call1, i8** %sep, align 8, !dbg !1597
  call void @llvm.dbg.declare(metadata i32* %len, metadata !1600, metadata !DIExpression()), !dbg !1601
  %6 = load i8*, i8** %sep, align 8, !dbg !1602
  %7 = load i8*, i8** %spec.addr, align 8, !dbg !1603
  %sub.ptr.lhs.cast = ptrtoint i8* %6 to i64, !dbg !1604
  %sub.ptr.rhs.cast = ptrtoint i8* %7 to i64, !dbg !1604
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1604
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !1602
  store i32 %conv, i32* %len, align 4, !dbg !1601
  %8 = load i8*, i8** %spec.addr, align 8, !dbg !1605
  %9 = load i32, i32* %len, align 4, !dbg !1607
  %call2 = call i32 @match_token(i8* %8, i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.220, i64 0, i64 0)), !dbg !1608
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1608
  br i1 %tobool3, label %if.then, label %if.else, !dbg !1609

if.then:                                          ; preds = %while.body
  call void @list_builtins(%struct.string_list* %list, i32 0), !dbg !1610
  br label %if.end36, !dbg !1610

if.else:                                          ; preds = %while.body
  %10 = load i8*, i8** %spec.addr, align 8, !dbg !1611
  %11 = load i32, i32* %len, align 4, !dbg !1613
  %call4 = call i32 @match_token(i8* %10, i32 %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.221, i64 0, i64 0)), !dbg !1614
  %tobool5 = icmp ne i32 %call4, 0, !dbg !1614
  br i1 %tobool5, label %if.then6, label %if.else7, !dbg !1615

if.then6:                                         ; preds = %if.else
  call void @list_all_main_cmds(%struct.string_list* %list), !dbg !1616
  br label %if.end35, !dbg !1616

if.else7:                                         ; preds = %if.else
  %12 = load i8*, i8** %spec.addr, align 8, !dbg !1617
  %13 = load i32, i32* %len, align 4, !dbg !1619
  %call8 = call i32 @match_token(i8* %12, i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.222, i64 0, i64 0)), !dbg !1620
  %tobool9 = icmp ne i32 %call8, 0, !dbg !1620
  br i1 %tobool9, label %if.then10, label %if.else11, !dbg !1621

if.then10:                                        ; preds = %if.else7
  call void @list_all_other_cmds(%struct.string_list* %list), !dbg !1622
  br label %if.end34, !dbg !1622

if.else11:                                        ; preds = %if.else7
  %14 = load i8*, i8** %spec.addr, align 8, !dbg !1623
  %15 = load i32, i32* %len, align 4, !dbg !1625
  %call12 = call i32 @match_token(i8* %14, i32 %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.223, i64 0, i64 0)), !dbg !1626
  %tobool13 = icmp ne i32 %call12, 0, !dbg !1626
  br i1 %tobool13, label %if.then14, label %if.else15, !dbg !1627

if.then14:                                        ; preds = %if.else11
  call void @exclude_helpers_from_list(%struct.string_list* %list), !dbg !1628
  br label %if.end33, !dbg !1628

if.else15:                                        ; preds = %if.else11
  %16 = load i8*, i8** %spec.addr, align 8, !dbg !1629
  %17 = load i32, i32* %len, align 4, !dbg !1631
  %call16 = call i32 @match_token(i8* %16, i32 %17, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.224, i64 0, i64 0)), !dbg !1632
  %tobool17 = icmp ne i32 %call16, 0, !dbg !1632
  br i1 %tobool17, label %if.then18, label %if.else19, !dbg !1633

if.then18:                                        ; preds = %if.else15
  call void @list_aliases(%struct.string_list* %list), !dbg !1634
  br label %if.end32, !dbg !1634

if.else19:                                        ; preds = %if.else15
  %18 = load i8*, i8** %spec.addr, align 8, !dbg !1635
  %19 = load i32, i32* %len, align 4, !dbg !1637
  %call20 = call i32 @match_token(i8* %18, i32 %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0)), !dbg !1638
  %tobool21 = icmp ne i32 %call20, 0, !dbg !1638
  br i1 %tobool21, label %if.then22, label %if.else23, !dbg !1639

if.then22:                                        ; preds = %if.else19
  call void @list_cmds_by_config(%struct.string_list* %list), !dbg !1640
  br label %if.end31, !dbg !1640

if.else23:                                        ; preds = %if.else19
  %20 = load i32, i32* %len, align 4, !dbg !1641
  %cmp = icmp sgt i32 %20, 5, !dbg !1643
  br i1 %cmp, label %land.lhs.true, label %if.else29, !dbg !1644

land.lhs.true:                                    ; preds = %if.else23
  %21 = load i8*, i8** %spec.addr, align 8, !dbg !1645
  %call25 = call i32 @strncmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.225, i64 0, i64 0), i64 5), !dbg !1646
  %tobool26 = icmp ne i32 %call25, 0, !dbg !1646
  br i1 %tobool26, label %if.else29, label %if.then27, !dbg !1647

if.then27:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata %struct.strbuf* %sb, metadata !1648, metadata !DIExpression()), !dbg !1650
  %22 = bitcast %struct.strbuf* %sb to i8*, !dbg !1650
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.strbuf* @__const.list_cmds.sb to i8*), i64 24, i1 false), !dbg !1650
  %23 = load i8*, i8** %spec.addr, align 8, !dbg !1651
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 5, !dbg !1652
  %24 = load i32, i32* %len, align 4, !dbg !1653
  %sub = sub nsw i32 %24, 5, !dbg !1654
  %conv28 = sext i32 %sub to i64, !dbg !1653
  call void @strbuf_add(%struct.strbuf* %sb, i8* %add.ptr, i64 %conv28), !dbg !1655
  %buf = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i32 0, i32 2, !dbg !1656
  %25 = load i8*, i8** %buf, align 8, !dbg !1656
  call void @list_cmds_by_category(%struct.string_list* %list, i8* %25), !dbg !1657
  call void @strbuf_release(%struct.strbuf* %sb), !dbg !1658
  br label %if.end, !dbg !1659

if.else29:                                        ; preds = %land.lhs.true, %if.else23
  %call30 = call i8* @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.226, i64 0, i64 0)), !dbg !1660
  %26 = load i8*, i8** %spec.addr, align 8, !dbg !1661
  call void (i8*, ...) @die(i8* %call30, i8* %26) #8, !dbg !1662
  unreachable, !dbg !1662

if.end:                                           ; preds = %if.then27
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then22
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.then18
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %if.then14
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then10
  br label %if.end35

if.end35:                                         ; preds = %if.end34, %if.then6
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then
  %27 = load i32, i32* %len, align 4, !dbg !1663
  %28 = load i8*, i8** %spec.addr, align 8, !dbg !1664
  %idx.ext = sext i32 %27 to i64, !dbg !1664
  %add.ptr37 = getelementptr inbounds i8, i8* %28, i64 %idx.ext, !dbg !1664
  store i8* %add.ptr37, i8** %spec.addr, align 8, !dbg !1664
  %29 = load i8*, i8** %spec.addr, align 8, !dbg !1665
  %30 = load i8, i8* %29, align 1, !dbg !1667
  %conv38 = sext i8 %30 to i32, !dbg !1667
  %cmp39 = icmp eq i32 %conv38, 44, !dbg !1668
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !1669

if.then41:                                        ; preds = %if.end36
  %31 = load i8*, i8** %spec.addr, align 8, !dbg !1670
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i32 1, !dbg !1670
  store i8* %incdec.ptr, i8** %spec.addr, align 8, !dbg !1670
  br label %if.end42, !dbg !1671

if.end42:                                         ; preds = %if.then41, %if.end36
  br label %while.cond, !dbg !1592, !llvm.loop !1672

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %i, align 4, !dbg !1674
  br label %for.cond, !dbg !1676

for.cond:                                         ; preds = %for.inc, %while.end
  %32 = load i32, i32* %i, align 4, !dbg !1677
  %conv43 = sext i32 %32 to i64, !dbg !1677
  %nr = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 1, !dbg !1679
  %33 = load i64, i64* %nr, align 8, !dbg !1679
  %cmp44 = icmp ult i64 %conv43, %33, !dbg !1680
  br i1 %cmp44, label %for.body, label %for.end, !dbg !1681

for.body:                                         ; preds = %for.cond
  %items = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 0, !dbg !1682
  %34 = load %struct.string_list_item*, %struct.string_list_item** %items, align 8, !dbg !1682
  %35 = load i32, i32* %i, align 4, !dbg !1683
  %idxprom = sext i32 %35 to i64, !dbg !1684
  %arrayidx = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %34, i64 %idxprom, !dbg !1684
  %string = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %arrayidx, i32 0, i32 0, !dbg !1685
  %36 = load i8*, i8** %string, align 8, !dbg !1685
  %call46 = call i32 @puts(i8* %36), !dbg !1686
  br label %for.inc, !dbg !1686

for.inc:                                          ; preds = %for.body
  %37 = load i32, i32* %i, align 4, !dbg !1687
  %inc = add nsw i32 %37, 1, !dbg !1687
  store i32 %inc, i32* %i, align 4, !dbg !1687
  br label %for.cond, !dbg !1688, !llvm.loop !1689

for.end:                                          ; preds = %for.cond
  call void @string_list_clear(%struct.string_list* %list, i32 0), !dbg !1691
  ret i32 0, !dbg !1692
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @gitstrchrnul(i8* %s, i32 %c) #0 !dbg !1693 {
entry:
  %s.addr = alloca i8*, align 8
  %c.addr = alloca i32, align 4
  store i8* %s, i8** %s.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %s.addr, metadata !1696, metadata !DIExpression()), !dbg !1697
  store i32 %c, i32* %c.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %c.addr, metadata !1698, metadata !DIExpression()), !dbg !1699
  br label %while.cond, !dbg !1700

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %s.addr, align 8, !dbg !1701
  %1 = load i8, i8* %0, align 1, !dbg !1702
  %conv = sext i8 %1 to i32, !dbg !1702
  %tobool = icmp ne i32 %conv, 0, !dbg !1702
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1703

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %s.addr, align 8, !dbg !1704
  %3 = load i8, i8* %2, align 1, !dbg !1705
  %conv1 = sext i8 %3 to i32, !dbg !1705
  %4 = load i32, i32* %c.addr, align 4, !dbg !1706
  %cmp = icmp ne i32 %conv1, %4, !dbg !1707
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !1708
  br i1 %5, label %while.body, label %while.end, !dbg !1700

while.body:                                       ; preds = %land.end
  %6 = load i8*, i8** %s.addr, align 8, !dbg !1709
  %incdec.ptr = getelementptr inbounds i8, i8* %6, i32 1, !dbg !1709
  store i8* %incdec.ptr, i8** %s.addr, align 8, !dbg !1709
  br label %while.cond, !dbg !1700, !llvm.loop !1710

while.end:                                        ; preds = %land.end
  %7 = load i8*, i8** %s.addr, align 8, !dbg !1711
  ret i8* %7, !dbg !1712
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @match_token(i8* %spec, i32 %len, i8* %token) #0 !dbg !1713 {
entry:
  %spec.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %token.addr = alloca i8*, align 8
  %token_len = alloca i32, align 4
  store i8* %spec, i8** %spec.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %spec.addr, metadata !1716, metadata !DIExpression()), !dbg !1717
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !1718, metadata !DIExpression()), !dbg !1719
  store i8* %token, i8** %token.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %token.addr, metadata !1720, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.declare(metadata i32* %token_len, metadata !1722, metadata !DIExpression()), !dbg !1723
  %0 = load i8*, i8** %token.addr, align 8, !dbg !1724
  %call = call i64 @strlen(i8* %0), !dbg !1725
  %conv = trunc i64 %call to i32, !dbg !1725
  store i32 %conv, i32* %token_len, align 4, !dbg !1723
  %1 = load i32, i32* %len.addr, align 4, !dbg !1726
  %2 = load i32, i32* %token_len, align 4, !dbg !1727
  %cmp = icmp eq i32 %1, %2, !dbg !1728
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1729

land.rhs:                                         ; preds = %entry
  %3 = load i8*, i8** %spec.addr, align 8, !dbg !1730
  %4 = load i8*, i8** %token.addr, align 8, !dbg !1731
  %5 = load i32, i32* %token_len, align 4, !dbg !1732
  %conv2 = sext i32 %5 to i64, !dbg !1732
  %call3 = call i32 @strncmp(i8* %3, i8* %4, i64 %conv2), !dbg !1733
  %tobool = icmp ne i32 %call3, 0, !dbg !1734
  %lnot = xor i1 %tobool, true, !dbg !1734
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %6 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !1735
  %land.ext = zext i1 %6 to i32, !dbg !1729
  ret i32 %land.ext, !dbg !1736
}

declare void @list_all_main_cmds(%struct.string_list*) #2

declare void @list_all_other_cmds(%struct.string_list*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @exclude_helpers_from_list(%struct.string_list* %list) #0 !dbg !1737 {
entry:
  %list.addr = alloca %struct.string_list*, align 8
  %i = alloca i32, align 4
  store %struct.string_list* %list, %struct.string_list** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.string_list** %list.addr, metadata !1740, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.declare(metadata i32* %i, metadata !1742, metadata !DIExpression()), !dbg !1743
  store i32 0, i32* %i, align 4, !dbg !1743
  br label %while.cond, !dbg !1744

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %i, align 4, !dbg !1745
  %conv = sext i32 %0 to i64, !dbg !1745
  %1 = load %struct.string_list*, %struct.string_list** %list.addr, align 8, !dbg !1746
  %nr = getelementptr inbounds %struct.string_list, %struct.string_list* %1, i32 0, i32 1, !dbg !1747
  %2 = load i64, i64* %nr, align 8, !dbg !1747
  %cmp = icmp ult i64 %conv, %2, !dbg !1748
  br i1 %cmp, label %while.body, label %while.end, !dbg !1744

while.body:                                       ; preds = %while.cond
  %3 = load %struct.string_list*, %struct.string_list** %list.addr, align 8, !dbg !1749
  %items = getelementptr inbounds %struct.string_list, %struct.string_list* %3, i32 0, i32 0, !dbg !1752
  %4 = load %struct.string_list_item*, %struct.string_list_item** %items, align 8, !dbg !1752
  %5 = load i32, i32* %i, align 4, !dbg !1753
  %idxprom = sext i32 %5 to i64, !dbg !1749
  %arrayidx = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %4, i64 %idxprom, !dbg !1749
  %string = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %arrayidx, i32 0, i32 0, !dbg !1754
  %6 = load i8*, i8** %string, align 8, !dbg !1754
  %call = call i8* @strstr(i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.227, i64 0, i64 0)), !dbg !1755
  %tobool = icmp ne i8* %call, null, !dbg !1755
  br i1 %tobool, label %if.then, label %if.else, !dbg !1756

if.then:                                          ; preds = %while.body
  %7 = load %struct.string_list*, %struct.string_list** %list.addr, align 8, !dbg !1757
  %8 = load i32, i32* %i, align 4, !dbg !1758
  call void @unsorted_string_list_delete_item(%struct.string_list* %7, i32 %8, i32 0), !dbg !1759
  br label %if.end, !dbg !1759

if.else:                                          ; preds = %while.body
  %9 = load i32, i32* %i, align 4, !dbg !1760
  %inc = add nsw i32 %9, 1, !dbg !1760
  store i32 %inc, i32* %i, align 4, !dbg !1760
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond, !dbg !1744, !llvm.loop !1761

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1763
}

declare void @list_aliases(%struct.string_list*) #2

declare void @list_cmds_by_config(%struct.string_list*) #2

declare i32 @strncmp(i8*, i8*, i64) #2

declare void @list_cmds_by_category(%struct.string_list*, i8*) #2

declare void @strbuf_release(%struct.strbuf*) #2

declare i8* @strstr(i8*, i8*) #2

declare void @unsorted_string_list_delete_item(%struct.string_list*, i32, i32) #2

declare i8* @libintl_gettext(i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @run_builtin(%struct.cmd_struct* %p, i32 %argc, i8** %argv) #0 !dbg !1764 {
entry:
  %retval = alloca i32, align 4
  %p.addr = alloca %struct.cmd_struct*, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %status = alloca i32, align 4
  %help = alloca i32, align 4
  %st = alloca %struct.stat, align 8
  %prefix = alloca i8*, align 8
  %run_setup = alloca i32, align 4
  %nongit_ok = alloca i32, align 4
  store %struct.cmd_struct* %p, %struct.cmd_struct** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cmd_struct** %p.addr, metadata !1767, metadata !DIExpression()), !dbg !1768
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !1769, metadata !DIExpression()), !dbg !1770
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !1771, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.declare(metadata i32* %status, metadata !1773, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.declare(metadata i32* %help, metadata !1775, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.declare(metadata %struct.stat* %st, metadata !1777, metadata !DIExpression()), !dbg !1839
  call void @llvm.dbg.declare(metadata i8** %prefix, metadata !1840, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.declare(metadata i32* %run_setup, metadata !1842, metadata !DIExpression()), !dbg !1843
  %0 = load %struct.cmd_struct*, %struct.cmd_struct** %p.addr, align 8, !dbg !1844
  %option = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %0, i32 0, i32 2, !dbg !1845
  %1 = load i32, i32* %option, align 8, !dbg !1845
  %and = and i32 %1, 3, !dbg !1846
  store i32 %and, i32* %run_setup, align 4, !dbg !1843
  %2 = load i32, i32* %argc.addr, align 4, !dbg !1847
  %cmp = icmp eq i32 %2, 2, !dbg !1848
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1849

land.rhs:                                         ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8, !dbg !1850
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !1850
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !1850
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)), !dbg !1851
  %tobool = icmp ne i32 %call, 0, !dbg !1852
  %lnot = xor i1 %tobool, true, !dbg !1852
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !1853
  %land.ext = zext i1 %5 to i32, !dbg !1849
  store i32 %land.ext, i32* %help, align 4, !dbg !1854
  %6 = load i32, i32* %help, align 4, !dbg !1855
  %tobool1 = icmp ne i32 %6, 0, !dbg !1855
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !1857

land.lhs.true:                                    ; preds = %land.end
  %7 = load i32, i32* %run_setup, align 4, !dbg !1858
  %and2 = and i32 %7, 1, !dbg !1859
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1859
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1860

if.then:                                          ; preds = %land.lhs.true
  store i32 2, i32* %run_setup, align 4, !dbg !1861
  br label %if.end, !dbg !1862

if.end:                                           ; preds = %if.then, %land.lhs.true, %land.end
  %8 = load i32, i32* %run_setup, align 4, !dbg !1863
  %and4 = and i32 %8, 1, !dbg !1865
  %tobool5 = icmp ne i32 %and4, 0, !dbg !1865
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !1866

if.then6:                                         ; preds = %if.end
  %call7 = call i8* @setup_git_directory(), !dbg !1867
  store i8* %call7, i8** %prefix, align 8, !dbg !1869
  br label %if.end14, !dbg !1870

if.else:                                          ; preds = %if.end
  %9 = load i32, i32* %run_setup, align 4, !dbg !1871
  %and8 = and i32 %9, 2, !dbg !1873
  %tobool9 = icmp ne i32 %and8, 0, !dbg !1873
  br i1 %tobool9, label %if.then10, label %if.else12, !dbg !1874

if.then10:                                        ; preds = %if.else
  call void @llvm.dbg.declare(metadata i32* %nongit_ok, metadata !1875, metadata !DIExpression()), !dbg !1877
  %call11 = call i8* @setup_git_directory_gently(i32* %nongit_ok), !dbg !1878
  store i8* %call11, i8** %prefix, align 8, !dbg !1879
  br label %if.end13, !dbg !1880

if.else12:                                        ; preds = %if.else
  store i8* null, i8** %prefix, align 8, !dbg !1881
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then10
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then6
  %10 = load i8*, i8** %prefix, align 8, !dbg !1883
  %tobool15 = icmp ne i8* %10, null, !dbg !1883
  br i1 %tobool15, label %lor.rhs, label %lor.end, !dbg !1883

lor.rhs:                                          ; preds = %if.end14
  %11 = load i8*, i8** %prefix, align 8, !dbg !1883
  %12 = load i8, i8* %11, align 1, !dbg !1883
  %conv = sext i8 %12 to i32, !dbg !1883
  %tobool16 = icmp ne i32 %conv, 0, !dbg !1883
  br label %lor.end, !dbg !1883

lor.end:                                          ; preds = %lor.rhs, %if.end14
  %13 = phi i1 [ true, %if.end14 ], [ %tobool16, %lor.rhs ]
  %lnot17 = xor i1 %13, true, !dbg !1883
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !1883
  %conv18 = sext i32 %lnot.ext to i64, !dbg !1883
  %tobool19 = icmp ne i64 %conv18, 0, !dbg !1883
  br i1 %tobool19, label %cond.true, label %cond.false, !dbg !1883

cond.true:                                        ; preds = %lor.end
  call void @__assert_rtn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.run_builtin, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 440, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.157, i64 0, i64 0)) #10, !dbg !1883
  unreachable, !dbg !1883

14:                                               ; No predecessors!
  br label %cond.end, !dbg !1883

cond.false:                                       ; preds = %lor.end
  br label %cond.end, !dbg !1883

cond.end:                                         ; preds = %cond.false, %14
  %15 = load i32, i32* %argc.addr, align 4, !dbg !1884
  %16 = load i8**, i8*** %argv.addr, align 8, !dbg !1885
  %call20 = call i8* @precompose_argv_prefix(i32 %15, i8** %16, i8* null), !dbg !1886
  %17 = load i32, i32* @use_pager, align 4, !dbg !1887
  %cmp21 = icmp eq i32 %17, -1, !dbg !1889
  br i1 %cmp21, label %land.lhs.true23, label %if.end31, !dbg !1890

land.lhs.true23:                                  ; preds = %cond.end
  %18 = load i32, i32* %run_setup, align 4, !dbg !1891
  %tobool24 = icmp ne i32 %18, 0, !dbg !1891
  br i1 %tobool24, label %land.lhs.true25, label %if.end31, !dbg !1892

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %19 = load %struct.cmd_struct*, %struct.cmd_struct** %p.addr, align 8, !dbg !1893
  %option26 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %19, i32 0, i32 2, !dbg !1894
  %20 = load i32, i32* %option26, align 8, !dbg !1894
  %and27 = and i32 %20, 32, !dbg !1895
  %tobool28 = icmp ne i32 %and27, 0, !dbg !1895
  br i1 %tobool28, label %if.end31, label %if.then29, !dbg !1896

if.then29:                                        ; preds = %land.lhs.true25
  %21 = load %struct.cmd_struct*, %struct.cmd_struct** %p.addr, align 8, !dbg !1897
  %cmd = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %21, i32 0, i32 0, !dbg !1898
  %22 = load i8*, i8** %cmd, align 8, !dbg !1898
  %call30 = call i32 @check_pager_config(i8* %22), !dbg !1899
  store i32 %call30, i32* @use_pager, align 4, !dbg !1900
  br label %if.end31, !dbg !1901

if.end31:                                         ; preds = %if.then29, %land.lhs.true25, %land.lhs.true23, %cond.end
  %23 = load i32, i32* @use_pager, align 4, !dbg !1902
  %cmp32 = icmp eq i32 %23, -1, !dbg !1904
  br i1 %cmp32, label %land.lhs.true34, label %if.end39, !dbg !1905

land.lhs.true34:                                  ; preds = %if.end31
  %24 = load %struct.cmd_struct*, %struct.cmd_struct** %p.addr, align 8, !dbg !1906
  %option35 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %24, i32 0, i32 2, !dbg !1907
  %25 = load i32, i32* %option35, align 8, !dbg !1907
  %and36 = and i32 %25, 4, !dbg !1908
  %tobool37 = icmp ne i32 %and36, 0, !dbg !1908
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !1909

if.then38:                                        ; preds = %land.lhs.true34
  store i32 1, i32* @use_pager, align 4, !dbg !1910
  br label %if.end39, !dbg !1911

if.end39:                                         ; preds = %if.then38, %land.lhs.true34, %if.end31
  %26 = load i32, i32* %run_setup, align 4, !dbg !1912
  %tobool40 = icmp ne i32 %26, 0, !dbg !1912
  br i1 %tobool40, label %land.lhs.true41, label %if.end44, !dbg !1914

land.lhs.true41:                                  ; preds = %if.end39
  %27 = load %struct.startup_info*, %struct.startup_info** @startup_info, align 8, !dbg !1915
  %have_repository = getelementptr inbounds %struct.startup_info, %struct.startup_info* %27, i32 0, i32 0, !dbg !1916
  %28 = load i32, i32* %have_repository, align 8, !dbg !1916
  %tobool42 = icmp ne i32 %28, 0, !dbg !1915
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !1917

if.then43:                                        ; preds = %land.lhs.true41
  %29 = load i8*, i8** %prefix, align 8, !dbg !1918
  call void @trace_repo_setup(i8* %29), !dbg !1919
  br label %if.end44, !dbg !1919

if.end44:                                         ; preds = %if.then43, %land.lhs.true41, %if.end39
  call void @commit_pager_choice(), !dbg !1920
  %30 = load i32, i32* %help, align 4, !dbg !1921
  %tobool45 = icmp ne i32 %30, 0, !dbg !1921
  br i1 %tobool45, label %if.end57, label %land.lhs.true46, !dbg !1923

land.lhs.true46:                                  ; preds = %if.end44
  %call47 = call i8* @get_super_prefix(), !dbg !1924
  %tobool48 = icmp ne i8* %call47, null, !dbg !1924
  br i1 %tobool48, label %if.then49, label %if.end57, !dbg !1925

if.then49:                                        ; preds = %land.lhs.true46
  %31 = load %struct.cmd_struct*, %struct.cmd_struct** %p.addr, align 8, !dbg !1926
  %option50 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %31, i32 0, i32 2, !dbg !1929
  %32 = load i32, i32* %option50, align 8, !dbg !1929
  %and51 = and i32 %32, 16, !dbg !1930
  %tobool52 = icmp ne i32 %and51, 0, !dbg !1930
  br i1 %tobool52, label %if.end56, label %if.then53, !dbg !1931

if.then53:                                        ; preds = %if.then49
  %call54 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.158, i64 0, i64 0)), !dbg !1932
  %33 = load %struct.cmd_struct*, %struct.cmd_struct** %p.addr, align 8, !dbg !1933
  %cmd55 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %33, i32 0, i32 0, !dbg !1934
  %34 = load i8*, i8** %cmd55, align 8, !dbg !1934
  call void (i8*, ...) @die(i8* %call54, i8* %34) #8, !dbg !1935
  unreachable, !dbg !1935

if.end56:                                         ; preds = %if.then49
  br label %if.end57, !dbg !1936

if.end57:                                         ; preds = %if.end56, %land.lhs.true46, %if.end44
  %35 = load i32, i32* %help, align 4, !dbg !1937
  %tobool58 = icmp ne i32 %35, 0, !dbg !1937
  br i1 %tobool58, label %if.end64, label %land.lhs.true59, !dbg !1939

land.lhs.true59:                                  ; preds = %if.end57
  %36 = load %struct.cmd_struct*, %struct.cmd_struct** %p.addr, align 8, !dbg !1940
  %option60 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %36, i32 0, i32 2, !dbg !1941
  %37 = load i32, i32* %option60, align 8, !dbg !1941
  %and61 = and i32 %37, 8, !dbg !1942
  %tobool62 = icmp ne i32 %and61, 0, !dbg !1942
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !1943

if.then63:                                        ; preds = %land.lhs.true59
  call void @setup_work_tree(), !dbg !1944
  br label %if.end64, !dbg !1944

if.end64:                                         ; preds = %if.then63, %land.lhs.true59, %if.end57
  br label %do.body, !dbg !1945

do.body:                                          ; preds = %if.end64
  %call65 = call i32 @trace_pass_fl(%struct.trace_key* @trace_default_key), !dbg !1946
  %tobool66 = icmp ne i32 %call65, 0, !dbg !1946
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !1949

if.then67:                                        ; preds = %do.body
  %38 = load i8**, i8*** %argv.addr, align 8, !dbg !1946
  call void (i8*, i32, i8**, i8*, ...) @trace_argv_printf_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 460, i8** %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.159, i64 0, i64 0)), !dbg !1946
  br label %if.end68, !dbg !1946

if.end68:                                         ; preds = %if.then67, %do.body
  br label %do.end, !dbg !1949

do.end:                                           ; preds = %if.end68
  %39 = load %struct.cmd_struct*, %struct.cmd_struct** %p.addr, align 8, !dbg !1950
  %cmd69 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %39, i32 0, i32 0, !dbg !1950
  %40 = load i8*, i8** %cmd69, align 8, !dbg !1950
  call void @trace2_cmd_name_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 461, i8* %40), !dbg !1950
  call void @trace2_cmd_list_config_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 462), !dbg !1951
  call void @trace2_cmd_list_env_vars_fl(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 463), !dbg !1952
  %41 = load %struct.repository*, %struct.repository** @the_repository, align 8, !dbg !1953
  %index = getelementptr inbounds %struct.repository, %struct.repository* %41, i32 0, i32 13, !dbg !1954
  %42 = load %struct.index_state*, %struct.index_state** %index, align 8, !dbg !1954
  call void @validate_cache_entries(%struct.index_state* %42), !dbg !1955
  %43 = load %struct.cmd_struct*, %struct.cmd_struct** %p.addr, align 8, !dbg !1956
  %fn = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %43, i32 0, i32 1, !dbg !1957
  %44 = load i32 (i32, i8**, i8*)*, i32 (i32, i8**, i8*)** %fn, align 8, !dbg !1957
  %45 = load i32, i32* %argc.addr, align 4, !dbg !1958
  %46 = load i8**, i8*** %argv.addr, align 8, !dbg !1959
  %47 = load i8*, i8** %prefix, align 8, !dbg !1960
  %call70 = call i32 %44(i32 %45, i8** %46, i8* %47), !dbg !1956
  store i32 %call70, i32* %status, align 4, !dbg !1961
  %48 = load %struct.repository*, %struct.repository** @the_repository, align 8, !dbg !1962
  %index71 = getelementptr inbounds %struct.repository, %struct.repository* %48, i32 0, i32 13, !dbg !1963
  %49 = load %struct.index_state*, %struct.index_state** %index71, align 8, !dbg !1963
  call void @validate_cache_entries(%struct.index_state* %49), !dbg !1964
  %50 = load i32, i32* %status, align 4, !dbg !1965
  %tobool72 = icmp ne i32 %50, 0, !dbg !1965
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !1967

if.then73:                                        ; preds = %do.end
  %51 = load i32, i32* %status, align 4, !dbg !1968
  store i32 %51, i32* %retval, align 4, !dbg !1969
  br label %return, !dbg !1969

if.end74:                                         ; preds = %do.end
  %52 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !dbg !1970
  %call75 = call i32 @fileno(%struct.__sFILE* %52), !dbg !1972
  %call76 = call i32 @"\01_fstat$INODE64"(i32 %call75, %struct.stat* %st), !dbg !1973
  %tobool77 = icmp ne i32 %call76, 0, !dbg !1973
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !1974

if.then78:                                        ; preds = %if.end74
  store i32 0, i32* %retval, align 4, !dbg !1975
  br label %return, !dbg !1975

if.end79:                                         ; preds = %if.end74
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 1, !dbg !1976
  %53 = load i16, i16* %st_mode, align 4, !dbg !1976
  %conv80 = zext i16 %53 to i32, !dbg !1976
  %and81 = and i32 %conv80, 61440, !dbg !1976
  %cmp82 = icmp eq i32 %and81, 4096, !dbg !1976
  br i1 %cmp82, label %if.then89, label %lor.lhs.false, !dbg !1978

lor.lhs.false:                                    ; preds = %if.end79
  %st_mode84 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 1, !dbg !1979
  %54 = load i16, i16* %st_mode84, align 4, !dbg !1979
  %conv85 = zext i16 %54 to i32, !dbg !1979
  %and86 = and i32 %conv85, 61440, !dbg !1979
  %cmp87 = icmp eq i32 %and86, 49152, !dbg !1979
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !1980

if.then89:                                        ; preds = %lor.lhs.false, %if.end79
  store i32 0, i32* %retval, align 4, !dbg !1981
  br label %return, !dbg !1981

if.end90:                                         ; preds = %lor.lhs.false
  %55 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !dbg !1982
  %call91 = call i32 @fflush(%struct.__sFILE* %55), !dbg !1984
  %tobool92 = icmp ne i32 %call91, 0, !dbg !1984
  br i1 %tobool92, label %if.then93, label %if.end95, !dbg !1985

if.then93:                                        ; preds = %if.end90
  %call94 = call i8* @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.160, i64 0, i64 0)), !dbg !1986
  call void (i8*, ...) @die_errno(i8* %call94) #8, !dbg !1987
  unreachable, !dbg !1987

if.end95:                                         ; preds = %if.end90
  %56 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !dbg !1988
  %call96 = call i32 @ferror(%struct.__sFILE* %56), !dbg !1990
  %tobool97 = icmp ne i32 %call96, 0, !dbg !1990
  br i1 %tobool97, label %if.then98, label %if.end100, !dbg !1991

if.then98:                                        ; preds = %if.end95
  %call99 = call i8* @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.161, i64 0, i64 0)), !dbg !1992
  call void (i8*, ...) @die(i8* %call99) #8, !dbg !1993
  unreachable, !dbg !1993

if.end100:                                        ; preds = %if.end95
  %57 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !dbg !1994
  %call101 = call i32 @fclose(%struct.__sFILE* %57), !dbg !1996
  %tobool102 = icmp ne i32 %call101, 0, !dbg !1996
  br i1 %tobool102, label %if.then103, label %if.end105, !dbg !1997

if.then103:                                       ; preds = %if.end100
  %call104 = call i8* @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.162, i64 0, i64 0)), !dbg !1998
  call void (i8*, ...) @die_errno(i8* %call104) #8, !dbg !1999
  unreachable, !dbg !1999

if.end105:                                        ; preds = %if.end100
  store i32 0, i32* %retval, align 4, !dbg !2000
  br label %return, !dbg !2000

return:                                           ; preds = %if.end105, %if.then89, %if.then78, %if.then73
  %58 = load i32, i32* %retval, align 4, !dbg !2001
  ret i32 %58, !dbg !2001
}

declare void @strvec_clear(%struct.strvec*) #2

declare i8* @setup_git_directory() #2

; Function Attrs: cold noreturn
declare void @__assert_rtn(i8*, i8*, i32, i8*) #7

declare i8* @precompose_argv_prefix(i32, i8**, i8*) #2

declare void @trace_repo_setup(i8*) #2

declare void @setup_work_tree() #2

declare void @validate_cache_entries(%struct.index_state*) #2

declare i32 @fileno(%struct.__sFILE*) #2

declare i32 @"\01_fstat$INODE64"(i32, %struct.stat*) #2

declare i32 @fflush(%struct.__sFILE*) #2

declare i32 @ferror(%struct.__sFILE*) #2

declare i32 @fclose(%struct.__sFILE*) #2

declare i8* @strrchr(i8*, i32) #2

attributes #0 = { noinline nounwind ssp uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn }
attributes #9 = { nounwind }
attributes #10 = { cold noreturn }

!llvm.dbg.cu = !{!2}
!llvm.ident = !{!40}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "git_usage_string", scope: !2, file: !3, line: 27, type: !37, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!3 = !DIFile(filename: "git.c", directory: "/Users/jryans/Projects/git")
!4 = !{}
!5 = !{!6, !8}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 32, baseType: !10)
!9 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h", directory: "")
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !{!0, !12, !18, !21}
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "git_more_info_string", scope: !2, file: !3, line: 35, type: !14, isLocal: false, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1848, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!16 = !{!17}
!17 = !DISubrange(count: 231)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "use_pager", scope: !2, file: !3, line: 41, type: !20, isLocal: true, isDefinition: true)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "commands", scope: !2, file: !3, line: 489, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 27072, elements: !35)
!24 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmd_struct", file: !3, line: 21, size: 192, elements: !25)
!25 = !{!26, !28, !33}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !24, file: !3, line: 22, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !24, file: !3, line: 23, baseType: !29, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DISubroutineType(types: !31)
!31 = !{!20, !20, !32, !27}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "option", scope: !24, file: !3, line: 24, baseType: !34, size: 32, offset: 128)
!34 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!35 = !{!36}
!36 = !DISubrange(count: 141)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 3112, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 389)
!40 = !{!"clang version 13.0.0 (git@github.com:llvm/llvm-project.git d7b669b3a30345cfcdb2fde2af6f48aa4b94845d)"}
!41 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!42 = !{i32 7, !"Dwarf Version", i32 4}
!43 = !{i32 2, !"Debug Info Version", i32 3}
!44 = !{i32 1, !"wchar_size", i32 4}
!45 = !{i32 7, !"PIC Level", i32 2}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = distinct !DISubprogram(name: "setup_auto_pager", scope: !3, file: !3, line: 125, type: !49, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !27, !20}
!51 = !DILocalVariable(name: "cmd", arg: 1, scope: !48, file: !3, line: 125, type: !27)
!52 = !DILocation(line: 125, column: 35, scope: !48)
!53 = !DILocalVariable(name: "def", arg: 2, scope: !48, file: !3, line: 125, type: !20)
!54 = !DILocation(line: 125, column: 44, scope: !48)
!55 = !DILocation(line: 127, column: 6, scope: !56)
!56 = distinct !DILexicalBlock(scope: !48, file: !3, line: 127, column: 6)
!57 = !DILocation(line: 127, column: 16, scope: !56)
!58 = !DILocation(line: 127, column: 22, scope: !56)
!59 = !DILocation(line: 127, column: 25, scope: !56)
!60 = !DILocation(line: 127, column: 6, scope: !48)
!61 = !DILocation(line: 128, column: 3, scope: !56)
!62 = !DILocation(line: 129, column: 33, scope: !48)
!63 = !DILocation(line: 129, column: 14, scope: !48)
!64 = !DILocation(line: 129, column: 12, scope: !48)
!65 = !DILocation(line: 130, column: 6, scope: !66)
!66 = distinct !DILexicalBlock(scope: !48, file: !3, line: 130, column: 6)
!67 = !DILocation(line: 130, column: 16, scope: !66)
!68 = !DILocation(line: 130, column: 6, scope: !48)
!69 = !DILocation(line: 131, column: 15, scope: !66)
!70 = !DILocation(line: 131, column: 13, scope: !66)
!71 = !DILocation(line: 131, column: 3, scope: !66)
!72 = !DILocation(line: 132, column: 2, scope: !48)
!73 = !DILocation(line: 133, column: 1, scope: !48)
!74 = distinct !DISubprogram(name: "commit_pager_choice", scope: !3, file: !3, line: 111, type: !75, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!75 = !DISubroutineType(types: !76)
!76 = !{null}
!77 = !DILocation(line: 113, column: 10, scope: !74)
!78 = !DILocation(line: 113, column: 2, scope: !74)
!79 = !DILocation(line: 115, column: 3, scope: !80)
!80 = distinct !DILexicalBlock(scope: !74, file: !3, line: 113, column: 21)
!81 = !DILocation(line: 116, column: 3, scope: !80)
!82 = !DILocation(line: 118, column: 3, scope: !80)
!83 = !DILocation(line: 119, column: 3, scope: !80)
!84 = !DILocation(line: 121, column: 3, scope: !80)
!85 = !DILocation(line: 123, column: 1, scope: !74)
!86 = distinct !DISubprogram(name: "is_builtin", scope: !3, file: !3, line: 646, type: !87, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!87 = !DISubroutineType(types: !88)
!88 = !{!20, !27}
!89 = !DILocalVariable(name: "s", arg: 1, scope: !86, file: !3, line: 646, type: !27)
!90 = !DILocation(line: 646, column: 28, scope: !86)
!91 = !DILocation(line: 648, column: 23, scope: !86)
!92 = !DILocation(line: 648, column: 11, scope: !86)
!93 = !DILocation(line: 648, column: 10, scope: !86)
!94 = !DILocation(line: 648, column: 9, scope: !86)
!95 = !DILocation(line: 648, column: 2, scope: !86)
!96 = distinct !DISubprogram(name: "get_builtin", scope: !3, file: !3, line: 635, type: !97, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!97 = !DISubroutineType(types: !98)
!98 = !{!99, !27}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!100 = !DILocalVariable(name: "s", arg: 1, scope: !96, file: !3, line: 635, type: !27)
!101 = !DILocation(line: 635, column: 51, scope: !96)
!102 = !DILocalVariable(name: "i", scope: !96, file: !3, line: 637, type: !20)
!103 = !DILocation(line: 637, column: 6, scope: !96)
!104 = !DILocation(line: 638, column: 9, scope: !105)
!105 = distinct !DILexicalBlock(scope: !96, file: !3, line: 638, column: 2)
!106 = !DILocation(line: 638, column: 7, scope: !105)
!107 = !DILocation(line: 638, column: 14, scope: !108)
!108 = distinct !DILexicalBlock(scope: !105, file: !3, line: 638, column: 2)
!109 = !DILocation(line: 638, column: 16, scope: !108)
!110 = !DILocation(line: 638, column: 2, scope: !105)
!111 = !DILocalVariable(name: "p", scope: !112, file: !3, line: 639, type: !99)
!112 = distinct !DILexicalBlock(scope: !108, file: !3, line: 638, column: 45)
!113 = !DILocation(line: 639, column: 22, scope: !112)
!114 = !DILocation(line: 639, column: 37, scope: !112)
!115 = !DILocation(line: 639, column: 35, scope: !112)
!116 = !DILocation(line: 640, column: 15, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !3, line: 640, column: 7)
!118 = !DILocation(line: 640, column: 18, scope: !117)
!119 = !DILocation(line: 640, column: 21, scope: !117)
!120 = !DILocation(line: 640, column: 8, scope: !117)
!121 = !DILocation(line: 640, column: 7, scope: !112)
!122 = !DILocation(line: 641, column: 11, scope: !117)
!123 = !DILocation(line: 641, column: 4, scope: !117)
!124 = !DILocation(line: 642, column: 2, scope: !112)
!125 = !DILocation(line: 638, column: 41, scope: !108)
!126 = !DILocation(line: 638, column: 2, scope: !108)
!127 = distinct !{!127, !110, !128, !129}
!128 = !DILocation(line: 642, column: 2, scope: !105)
!129 = !{!"llvm.loop.mustprogress"}
!130 = !DILocation(line: 643, column: 2, scope: !96)
!131 = !DILocation(line: 644, column: 1, scope: !96)
!132 = distinct !DISubprogram(name: "load_builtin_commands", scope: !3, file: !3, line: 662, type: !133, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !27, !135}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmdnames", file: !137, line: 7, size: 128, elements: !138)
!137 = !DIFile(filename: "./help.h", directory: "/Users/jryans/Projects/git")
!138 = !{!139, !140, !141}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !136, file: !137, line: 8, baseType: !20, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "cnt", scope: !136, file: !137, line: 9, baseType: !20, size: 32, offset: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !136, file: !137, line: 13, baseType: !142, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmdname", file: !137, line: 10, size: 64, elements: !145)
!145 = !{!146, !151}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !144, file: !137, line: 11, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 31, baseType: !149)
!148 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !150, line: 94, baseType: !10)
!150 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h", directory: "")
!151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !144, file: !137, line: 12, baseType: !152, offset: 64)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !153)
!153 = !{!154}
!154 = !DISubrange(count: -1)
!155 = !DILocalVariable(name: "prefix", arg: 1, scope: !132, file: !3, line: 662, type: !27)
!156 = !DILocation(line: 662, column: 40, scope: !132)
!157 = !DILocalVariable(name: "cmds", arg: 2, scope: !132, file: !3, line: 662, type: !135)
!158 = !DILocation(line: 662, column: 65, scope: !132)
!159 = !DILocalVariable(name: "name", scope: !132, file: !3, line: 664, type: !27)
!160 = !DILocation(line: 664, column: 14, scope: !132)
!161 = !DILocalVariable(name: "i", scope: !132, file: !3, line: 665, type: !20)
!162 = !DILocation(line: 665, column: 6, scope: !132)
!163 = !DILocation(line: 673, column: 19, scope: !164)
!164 = distinct !DILexicalBlock(scope: !132, file: !3, line: 673, column: 6)
!165 = !DILocation(line: 673, column: 7, scope: !164)
!166 = !DILocation(line: 673, column: 6, scope: !132)
!167 = !DILocation(line: 674, column: 3, scope: !164)
!168 = !DILocation(line: 676, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !132, file: !3, line: 676, column: 2)
!170 = !DILocation(line: 676, column: 7, scope: !169)
!171 = !DILocation(line: 676, column: 14, scope: !172)
!172 = distinct !DILexicalBlock(scope: !169, file: !3, line: 676, column: 2)
!173 = !DILocation(line: 676, column: 16, scope: !172)
!174 = !DILocation(line: 676, column: 2, scope: !169)
!175 = !DILocation(line: 677, column: 28, scope: !176)
!176 = distinct !DILexicalBlock(scope: !172, file: !3, line: 677, column: 7)
!177 = !DILocation(line: 677, column: 19, scope: !176)
!178 = !DILocation(line: 677, column: 31, scope: !176)
!179 = !DILocation(line: 677, column: 36, scope: !176)
!180 = !DILocation(line: 677, column: 7, scope: !176)
!181 = !DILocation(line: 677, column: 7, scope: !172)
!182 = !DILocation(line: 678, column: 16, scope: !176)
!183 = !DILocation(line: 678, column: 22, scope: !176)
!184 = !DILocation(line: 678, column: 35, scope: !176)
!185 = !DILocation(line: 678, column: 28, scope: !176)
!186 = !DILocation(line: 678, column: 4, scope: !176)
!187 = !DILocation(line: 677, column: 49, scope: !176)
!188 = !DILocation(line: 676, column: 41, scope: !172)
!189 = !DILocation(line: 676, column: 2, scope: !172)
!190 = distinct !{!190, !174, !191, !129}
!191 = !DILocation(line: 678, column: 40, scope: !169)
!192 = !DILocation(line: 679, column: 1, scope: !132)
!193 = distinct !DISubprogram(name: "skip_prefix", scope: !194, file: !194, line: 674, type: !195, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!194 = !DIFile(filename: "./git-compat-util.h", directory: "/Users/jryans/Projects/git")
!195 = !DISubroutineType(types: !196)
!196 = !{!20, !27, !27, !32}
!197 = !DILocalVariable(name: "str", arg: 1, scope: !193, file: !194, line: 674, type: !27)
!198 = !DILocation(line: 674, column: 43, scope: !193)
!199 = !DILocalVariable(name: "prefix", arg: 2, scope: !193, file: !194, line: 674, type: !27)
!200 = !DILocation(line: 674, column: 60, scope: !193)
!201 = !DILocalVariable(name: "out", arg: 3, scope: !193, file: !194, line: 675, type: !32)
!202 = !DILocation(line: 675, column: 23, scope: !193)
!203 = !DILocation(line: 677, column: 2, scope: !193)
!204 = !DILocation(line: 678, column: 9, scope: !205)
!205 = distinct !DILexicalBlock(scope: !206, file: !194, line: 678, column: 7)
!206 = distinct !DILexicalBlock(scope: !193, file: !194, line: 677, column: 5)
!207 = !DILocation(line: 678, column: 8, scope: !205)
!208 = !DILocation(line: 678, column: 7, scope: !206)
!209 = !DILocation(line: 679, column: 11, scope: !210)
!210 = distinct !DILexicalBlock(scope: !205, file: !194, line: 678, column: 17)
!211 = !DILocation(line: 679, column: 5, scope: !210)
!212 = !DILocation(line: 679, column: 9, scope: !210)
!213 = !DILocation(line: 680, column: 4, scope: !210)
!214 = !DILocation(line: 682, column: 2, scope: !206)
!215 = !DILocation(line: 682, column: 15, scope: !193)
!216 = !DILocation(line: 682, column: 11, scope: !193)
!217 = !DILocation(line: 682, column: 28, scope: !193)
!218 = !DILocation(line: 682, column: 21, scope: !193)
!219 = !DILocation(line: 682, column: 18, scope: !193)
!220 = distinct !{!220, !203, !221, !129}
!221 = !DILocation(line: 682, column: 30, scope: !193)
!222 = !DILocation(line: 683, column: 2, scope: !193)
!223 = !DILocation(line: 684, column: 1, scope: !193)
!224 = distinct !DISubprogram(name: "cmd_main", scope: !3, file: !3, line: 864, type: !225, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!225 = !DISubroutineType(types: !226)
!226 = !{!20, !20, !32}
!227 = !DILocalVariable(name: "argc", arg: 1, scope: !224, file: !3, line: 864, type: !20)
!228 = !DILocation(line: 864, column: 18, scope: !224)
!229 = !DILocalVariable(name: "argv", arg: 2, scope: !224, file: !3, line: 864, type: !32)
!230 = !DILocation(line: 864, column: 37, scope: !224)
!231 = !DILocalVariable(name: "cmd", scope: !224, file: !3, line: 866, type: !27)
!232 = !DILocation(line: 866, column: 14, scope: !224)
!233 = !DILocalVariable(name: "done_help", scope: !224, file: !3, line: 867, type: !20)
!234 = !DILocation(line: 867, column: 6, scope: !224)
!235 = !DILocation(line: 869, column: 8, scope: !224)
!236 = !DILocation(line: 869, column: 6, scope: !224)
!237 = !DILocation(line: 870, column: 7, scope: !238)
!238 = distinct !DILexicalBlock(scope: !224, file: !3, line: 870, column: 6)
!239 = !DILocation(line: 870, column: 6, scope: !224)
!240 = !DILocation(line: 871, column: 7, scope: !238)
!241 = !DILocation(line: 871, column: 3, scope: !238)
!242 = !DILocalVariable(name: "slash", scope: !243, file: !3, line: 873, type: !27)
!243 = distinct !DILexicalBlock(scope: !238, file: !3, line: 872, column: 7)
!244 = !DILocation(line: 873, column: 15, scope: !243)
!245 = !DILocation(line: 873, column: 41, scope: !243)
!246 = !DILocation(line: 873, column: 23, scope: !243)
!247 = !DILocation(line: 874, column: 7, scope: !248)
!248 = distinct !DILexicalBlock(scope: !243, file: !3, line: 874, column: 7)
!249 = !DILocation(line: 874, column: 7, scope: !243)
!250 = !DILocation(line: 875, column: 10, scope: !248)
!251 = !DILocation(line: 875, column: 16, scope: !248)
!252 = !DILocation(line: 875, column: 8, scope: !248)
!253 = !DILocation(line: 875, column: 4, scope: !248)
!254 = !DILocation(line: 878, column: 28, scope: !224)
!255 = !DILocation(line: 878, column: 2, scope: !224)
!256 = !DILocation(line: 890, column: 18, scope: !257)
!257 = distinct !DILexicalBlock(scope: !224, file: !3, line: 890, column: 6)
!258 = !DILocation(line: 890, column: 6, scope: !257)
!259 = !DILocation(line: 890, column: 6, scope: !224)
!260 = !DILocation(line: 891, column: 13, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !3, line: 890, column: 38)
!262 = !DILocation(line: 891, column: 3, scope: !261)
!263 = !DILocation(line: 891, column: 11, scope: !261)
!264 = !DILocation(line: 892, column: 18, scope: !261)
!265 = !DILocation(line: 892, column: 24, scope: !261)
!266 = !DILocation(line: 892, column: 3, scope: !261)
!267 = !DILocation(line: 893, column: 7, scope: !261)
!268 = !DILocation(line: 893, column: 43, scope: !261)
!269 = !DILocation(line: 893, column: 3, scope: !261)
!270 = !DILocation(line: 897, column: 6, scope: !224)
!271 = !DILocation(line: 898, column: 6, scope: !224)
!272 = !DILocation(line: 899, column: 2, scope: !224)
!273 = !DILocation(line: 901, column: 7, scope: !274)
!274 = distinct !DILexicalBlock(scope: !224, file: !3, line: 901, column: 6)
!275 = !DILocation(line: 901, column: 6, scope: !224)
!276 = !DILocation(line: 903, column: 3, scope: !277)
!277 = distinct !DILexicalBlock(scope: !274, file: !3, line: 901, column: 13)
!278 = !DILocation(line: 904, column: 10, scope: !277)
!279 = !DILocation(line: 904, column: 3, scope: !277)
!280 = !DILocation(line: 905, column: 3, scope: !277)
!281 = !DILocation(line: 906, column: 20, scope: !277)
!282 = !DILocation(line: 906, column: 3, scope: !277)
!283 = !DILocation(line: 907, column: 3, scope: !277)
!284 = !DILocation(line: 910, column: 27, scope: !285)
!285 = distinct !DILexicalBlock(scope: !224, file: !3, line: 910, column: 6)
!286 = !DILocation(line: 910, column: 7, scope: !285)
!287 = !DILocation(line: 910, column: 36, scope: !285)
!288 = !DILocation(line: 910, column: 53, scope: !285)
!289 = !DILocation(line: 910, column: 40, scope: !285)
!290 = !DILocation(line: 910, column: 6, scope: !224)
!291 = !DILocation(line: 911, column: 3, scope: !285)
!292 = !DILocation(line: 911, column: 11, scope: !285)
!293 = !DILocation(line: 912, column: 29, scope: !294)
!294 = distinct !DILexicalBlock(scope: !285, file: !3, line: 912, column: 11)
!295 = !DILocation(line: 912, column: 12, scope: !294)
!296 = !DILocation(line: 912, column: 38, scope: !294)
!297 = !DILocation(line: 912, column: 55, scope: !294)
!298 = !DILocation(line: 912, column: 42, scope: !294)
!299 = !DILocation(line: 912, column: 11, scope: !285)
!300 = !DILocation(line: 913, column: 3, scope: !294)
!301 = !DILocation(line: 913, column: 11, scope: !294)
!302 = !DILocation(line: 915, column: 8, scope: !224)
!303 = !DILocation(line: 915, column: 6, scope: !224)
!304 = !DILocation(line: 923, column: 2, scope: !224)
!305 = !DILocation(line: 925, column: 2, scope: !224)
!306 = !DILocalVariable(name: "was_alias", scope: !307, file: !3, line: 926, type: !20)
!307 = distinct !DILexicalBlock(scope: !224, file: !3, line: 925, column: 12)
!308 = !DILocation(line: 926, column: 7, scope: !307)
!309 = !DILocation(line: 926, column: 19, scope: !307)
!310 = !DILocation(line: 927, column: 7, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !3, line: 927, column: 7)
!312 = !DILocation(line: 927, column: 13, scope: !311)
!313 = !DILocation(line: 927, column: 7, scope: !307)
!314 = !DILocation(line: 928, column: 4, scope: !311)
!315 = !DILocation(line: 929, column: 7, scope: !316)
!316 = distinct !DILexicalBlock(scope: !307, file: !3, line: 929, column: 7)
!317 = !DILocation(line: 929, column: 7, scope: !307)
!318 = !DILocation(line: 930, column: 12, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !3, line: 929, column: 18)
!320 = !DILocation(line: 930, column: 20, scope: !319)
!321 = !DILocation(line: 932, column: 5, scope: !319)
!322 = !DILocation(line: 932, column: 10, scope: !319)
!323 = !DILocation(line: 930, column: 4, scope: !319)
!324 = !DILocation(line: 933, column: 4, scope: !319)
!325 = !DILocation(line: 935, column: 8, scope: !326)
!326 = distinct !DILexicalBlock(scope: !307, file: !3, line: 935, column: 7)
!327 = !DILocation(line: 935, column: 7, scope: !307)
!328 = !DILocation(line: 936, column: 37, scope: !329)
!329 = distinct !DILexicalBlock(scope: !326, file: !3, line: 935, column: 19)
!330 = !DILocation(line: 936, column: 20, scope: !329)
!331 = !DILocation(line: 936, column: 10, scope: !329)
!332 = !DILocation(line: 936, column: 18, scope: !329)
!333 = !DILocation(line: 936, column: 8, scope: !329)
!334 = !DILocation(line: 937, column: 14, scope: !329)
!335 = !DILocation(line: 938, column: 3, scope: !329)
!336 = !DILocation(line: 939, column: 4, scope: !326)
!337 = distinct !{!337, !305, !338}
!338 = !DILocation(line: 940, column: 2, scope: !224)
!339 = !DILocation(line: 942, column: 10, scope: !224)
!340 = !DILocation(line: 942, column: 18, scope: !224)
!341 = !DILocation(line: 943, column: 3, scope: !224)
!342 = !DILocation(line: 943, column: 17, scope: !224)
!343 = !DILocation(line: 943, column: 8, scope: !224)
!344 = !DILocation(line: 942, column: 2, scope: !224)
!345 = !DILocation(line: 945, column: 2, scope: !224)
!346 = distinct !DISubprogram(name: "git_find_last_dir_sep", scope: !194, file: !194, line: 536, type: !347, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!347 = !DISubroutineType(types: !348)
!348 = !{!6, !27}
!349 = !DILocalVariable(name: "path", arg: 1, scope: !346, file: !194, line: 536, type: !27)
!350 = !DILocation(line: 536, column: 55, scope: !346)
!351 = !DILocation(line: 538, column: 17, scope: !346)
!352 = !DILocation(line: 538, column: 9, scope: !346)
!353 = !DILocation(line: 538, column: 2, scope: !346)
!354 = distinct !DISubprogram(name: "handle_builtin", scope: !3, file: !3, line: 693, type: !355, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!355 = !DISubroutineType(types: !356)
!356 = !{null, !20, !32}
!357 = !DILocalVariable(name: "argc", arg: 1, scope: !354, file: !3, line: 693, type: !20)
!358 = !DILocation(line: 693, column: 32, scope: !354)
!359 = !DILocalVariable(name: "argv", arg: 2, scope: !354, file: !3, line: 693, type: !32)
!360 = !DILocation(line: 693, column: 51, scope: !354)
!361 = !DILocalVariable(name: "args", scope: !354, file: !3, line: 695, type: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strvec", file: !363, line: 30, size: 192, elements: !364)
!363 = !DIFile(filename: "./strvec.h", directory: "/Users/jryans/Projects/git")
!364 = !{!365, !366, !367}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !362, file: !363, line: 31, baseType: !32, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !362, file: !363, line: 32, baseType: !147, size: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !362, file: !363, line: 33, baseType: !147, size: 64, offset: 128)
!368 = !DILocation(line: 695, column: 16, scope: !354)
!369 = !DILocalVariable(name: "cmd", scope: !354, file: !3, line: 696, type: !27)
!370 = !DILocation(line: 696, column: 14, scope: !354)
!371 = !DILocalVariable(name: "builtin", scope: !354, file: !3, line: 697, type: !99)
!372 = !DILocation(line: 697, column: 21, scope: !354)
!373 = !DILocation(line: 700, column: 8, scope: !354)
!374 = !DILocation(line: 700, column: 6, scope: !354)
!375 = !DILocation(line: 703, column: 6, scope: !376)
!376 = distinct !DILexicalBlock(scope: !354, file: !3, line: 703, column: 6)
!377 = !DILocation(line: 703, column: 11, scope: !376)
!378 = !DILocation(line: 703, column: 15, scope: !376)
!379 = !DILocation(line: 703, column: 26, scope: !376)
!380 = !DILocation(line: 703, column: 19, scope: !376)
!381 = !DILocation(line: 703, column: 6, scope: !354)
!382 = !DILocalVariable(name: "i", scope: !383, file: !3, line: 704, type: !20)
!383 = distinct !DILexicalBlock(scope: !376, file: !3, line: 703, column: 46)
!384 = !DILocation(line: 704, column: 7, scope: !383)
!385 = !DILocation(line: 706, column: 13, scope: !383)
!386 = !DILocation(line: 706, column: 3, scope: !383)
!387 = !DILocation(line: 706, column: 11, scope: !383)
!388 = !DILocation(line: 707, column: 17, scope: !383)
!389 = !DILocation(line: 707, column: 3, scope: !383)
!390 = !DILocation(line: 707, column: 11, scope: !383)
!391 = !DILocation(line: 709, column: 10, scope: !392)
!392 = distinct !DILexicalBlock(scope: !383, file: !3, line: 709, column: 3)
!393 = !DILocation(line: 709, column: 8, scope: !392)
!394 = !DILocation(line: 709, column: 15, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !3, line: 709, column: 3)
!396 = !DILocation(line: 709, column: 19, scope: !395)
!397 = !DILocation(line: 709, column: 17, scope: !395)
!398 = !DILocation(line: 709, column: 3, scope: !392)
!399 = !DILocation(line: 710, column: 23, scope: !400)
!400 = distinct !DILexicalBlock(scope: !395, file: !3, line: 709, column: 30)
!401 = !DILocation(line: 710, column: 28, scope: !400)
!402 = !DILocation(line: 710, column: 4, scope: !400)
!403 = !DILocation(line: 711, column: 9, scope: !404)
!404 = distinct !DILexicalBlock(scope: !400, file: !3, line: 711, column: 8)
!405 = !DILocation(line: 711, column: 8, scope: !400)
!406 = !DILocation(line: 712, column: 5, scope: !404)
!407 = !DILocation(line: 713, column: 3, scope: !400)
!408 = !DILocation(line: 709, column: 26, scope: !395)
!409 = !DILocation(line: 709, column: 3, scope: !395)
!410 = distinct !{!410, !398, !411, !129}
!411 = !DILocation(line: 713, column: 3, scope: !392)
!412 = !DILocation(line: 715, column: 7, scope: !383)
!413 = !DILocation(line: 716, column: 15, scope: !383)
!414 = !DILocation(line: 716, column: 8, scope: !383)
!415 = !DILocation(line: 717, column: 2, scope: !383)
!416 = !DILocation(line: 719, column: 24, scope: !354)
!417 = !DILocation(line: 719, column: 12, scope: !354)
!418 = !DILocation(line: 719, column: 10, scope: !354)
!419 = !DILocation(line: 720, column: 6, scope: !420)
!420 = distinct !DILexicalBlock(scope: !354, file: !3, line: 720, column: 6)
!421 = !DILocation(line: 720, column: 6, scope: !354)
!422 = !DILocation(line: 721, column: 3, scope: !420)
!423 = !DILocation(line: 722, column: 2, scope: !354)
!424 = !DILocation(line: 723, column: 1, scope: !354)
!425 = distinct !DISubprogram(name: "_", scope: !426, file: !426, line: 44, type: !427, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!426 = !DIFile(filename: "./gettext.h", directory: "/Users/jryans/Projects/git")
!427 = !DISubroutineType(types: !428)
!428 = !{!27, !27}
!429 = !DILocalVariable(name: "msgid", arg: 1, scope: !425, file: !426, line: 44, type: !27)
!430 = !DILocation(line: 44, column: 62, scope: !425)
!431 = !DILocation(line: 46, column: 8, scope: !432)
!432 = distinct !DILexicalBlock(scope: !425, file: !426, line: 46, column: 6)
!433 = !DILocation(line: 46, column: 7, scope: !432)
!434 = !DILocation(line: 46, column: 6, scope: !425)
!435 = !DILocation(line: 47, column: 3, scope: !432)
!436 = !DILocation(line: 48, column: 17, scope: !425)
!437 = !DILocation(line: 48, column: 9, scope: !425)
!438 = !DILocation(line: 48, column: 2, scope: !425)
!439 = !DILocation(line: 49, column: 1, scope: !425)
!440 = distinct !DISubprogram(name: "handle_options", scope: !3, file: !3, line: 135, type: !441, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!441 = !DISubroutineType(types: !442)
!442 = !{!20, !443, !444, !444}
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!445 = !DILocalVariable(name: "argv", arg: 1, scope: !440, file: !3, line: 135, type: !443)
!446 = !DILocation(line: 135, column: 41, scope: !440)
!447 = !DILocalVariable(name: "argc", arg: 2, scope: !440, file: !3, line: 135, type: !444)
!448 = !DILocation(line: 135, column: 52, scope: !440)
!449 = !DILocalVariable(name: "envchanged", arg: 3, scope: !440, file: !3, line: 135, type: !444)
!450 = !DILocation(line: 135, column: 63, scope: !440)
!451 = !DILocalVariable(name: "orig_argv", scope: !440, file: !3, line: 137, type: !32)
!452 = !DILocation(line: 137, column: 15, scope: !440)
!453 = !DILocation(line: 137, column: 28, scope: !440)
!454 = !DILocation(line: 137, column: 27, scope: !440)
!455 = !DILocation(line: 139, column: 2, scope: !440)
!456 = !DILocation(line: 139, column: 10, scope: !440)
!457 = !DILocation(line: 139, column: 9, scope: !440)
!458 = !DILocation(line: 139, column: 15, scope: !440)
!459 = !DILocalVariable(name: "cmd", scope: !460, file: !3, line: 140, type: !27)
!460 = distinct !DILexicalBlock(scope: !440, file: !3, line: 139, column: 20)
!461 = !DILocation(line: 140, column: 15, scope: !460)
!462 = !DILocation(line: 140, column: 23, scope: !460)
!463 = !DILocation(line: 140, column: 22, scope: !460)
!464 = !DILocation(line: 140, column: 21, scope: !460)
!465 = !DILocation(line: 141, column: 7, scope: !466)
!466 = distinct !DILexicalBlock(scope: !460, file: !3, line: 141, column: 7)
!467 = !DILocation(line: 141, column: 14, scope: !466)
!468 = !DILocation(line: 141, column: 7, scope: !460)
!469 = !DILocation(line: 142, column: 4, scope: !466)
!470 = !DILocation(line: 149, column: 15, scope: !471)
!471 = distinct !DILexicalBlock(scope: !460, file: !3, line: 149, column: 7)
!472 = !DILocation(line: 149, column: 8, scope: !471)
!473 = !DILocation(line: 149, column: 30, scope: !471)
!474 = !DILocation(line: 149, column: 41, scope: !471)
!475 = !DILocation(line: 149, column: 34, scope: !471)
!476 = !DILocation(line: 149, column: 52, scope: !471)
!477 = !DILocation(line: 150, column: 15, scope: !471)
!478 = !DILocation(line: 150, column: 8, scope: !471)
!479 = !DILocation(line: 150, column: 33, scope: !471)
!480 = !DILocation(line: 150, column: 44, scope: !471)
!481 = !DILocation(line: 150, column: 37, scope: !471)
!482 = !DILocation(line: 149, column: 7, scope: !460)
!483 = !DILocation(line: 151, column: 4, scope: !471)
!484 = !DILocation(line: 156, column: 19, scope: !485)
!485 = distinct !DILexicalBlock(scope: !460, file: !3, line: 156, column: 7)
!486 = !DILocation(line: 156, column: 7, scope: !485)
!487 = !DILocation(line: 156, column: 7, scope: !460)
!488 = !DILocation(line: 157, column: 9, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !3, line: 157, column: 8)
!490 = distinct !DILexicalBlock(scope: !485, file: !3, line: 156, column: 46)
!491 = !DILocation(line: 157, column: 8, scope: !489)
!492 = !DILocation(line: 157, column: 13, scope: !489)
!493 = !DILocation(line: 157, column: 8, scope: !490)
!494 = !DILocation(line: 158, column: 23, scope: !489)
!495 = !DILocation(line: 158, column: 27, scope: !489)
!496 = !DILocation(line: 158, column: 5, scope: !489)
!497 = !DILocation(line: 160, column: 10, scope: !498)
!498 = distinct !DILexicalBlock(scope: !489, file: !3, line: 159, column: 9)
!499 = !DILocation(line: 160, column: 5, scope: !498)
!500 = !DILocation(line: 161, column: 5, scope: !498)
!501 = !DILocation(line: 162, column: 5, scope: !498)
!502 = !DILocation(line: 164, column: 3, scope: !490)
!503 = !DILocation(line: 164, column: 22, scope: !504)
!504 = distinct !DILexicalBlock(scope: !485, file: !3, line: 164, column: 14)
!505 = !DILocation(line: 164, column: 15, scope: !504)
!506 = !DILocation(line: 164, column: 14, scope: !485)
!507 = !DILocation(line: 165, column: 9, scope: !508)
!508 = distinct !DILexicalBlock(scope: !504, file: !3, line: 164, column: 43)
!509 = !DILocation(line: 165, column: 4, scope: !508)
!510 = !DILocation(line: 166, column: 4, scope: !508)
!511 = !DILocation(line: 167, column: 4, scope: !508)
!512 = !DILocation(line: 168, column: 22, scope: !513)
!513 = distinct !DILexicalBlock(scope: !504, file: !3, line: 168, column: 14)
!514 = !DILocation(line: 168, column: 15, scope: !513)
!515 = !DILocation(line: 168, column: 14, scope: !504)
!516 = !DILocation(line: 169, column: 9, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !3, line: 168, column: 42)
!518 = !DILocation(line: 169, column: 4, scope: !517)
!519 = !DILocation(line: 170, column: 4, scope: !517)
!520 = !DILocation(line: 171, column: 4, scope: !517)
!521 = !DILocation(line: 172, column: 22, scope: !522)
!522 = distinct !DILexicalBlock(scope: !513, file: !3, line: 172, column: 14)
!523 = !DILocation(line: 172, column: 15, scope: !522)
!524 = !DILocation(line: 172, column: 14, scope: !513)
!525 = !DILocation(line: 173, column: 9, scope: !526)
!526 = distinct !DILexicalBlock(scope: !522, file: !3, line: 172, column: 43)
!527 = !DILocation(line: 173, column: 4, scope: !526)
!528 = !DILocation(line: 174, column: 4, scope: !526)
!529 = !DILocation(line: 175, column: 4, scope: !526)
!530 = !DILocation(line: 176, column: 22, scope: !531)
!531 = distinct !DILexicalBlock(scope: !522, file: !3, line: 176, column: 14)
!532 = !DILocation(line: 176, column: 15, scope: !531)
!533 = !DILocation(line: 176, column: 33, scope: !531)
!534 = !DILocation(line: 176, column: 44, scope: !531)
!535 = !DILocation(line: 176, column: 37, scope: !531)
!536 = !DILocation(line: 176, column: 14, scope: !522)
!537 = !DILocation(line: 177, column: 14, scope: !538)
!538 = distinct !DILexicalBlock(scope: !531, file: !3, line: 176, column: 64)
!539 = !DILocation(line: 178, column: 3, scope: !538)
!540 = !DILocation(line: 178, column: 22, scope: !541)
!541 = distinct !DILexicalBlock(scope: !531, file: !3, line: 178, column: 14)
!542 = !DILocation(line: 178, column: 15, scope: !541)
!543 = !DILocation(line: 178, column: 33, scope: !541)
!544 = !DILocation(line: 178, column: 44, scope: !541)
!545 = !DILocation(line: 178, column: 37, scope: !541)
!546 = !DILocation(line: 178, column: 14, scope: !531)
!547 = !DILocation(line: 179, column: 14, scope: !548)
!548 = distinct !DILexicalBlock(scope: !541, file: !3, line: 178, column: 64)
!549 = !DILocation(line: 180, column: 8, scope: !550)
!550 = distinct !DILexicalBlock(scope: !548, file: !3, line: 180, column: 8)
!551 = !DILocation(line: 180, column: 8, scope: !548)
!552 = !DILocation(line: 181, column: 6, scope: !550)
!553 = !DILocation(line: 181, column: 17, scope: !550)
!554 = !DILocation(line: 181, column: 5, scope: !550)
!555 = !DILocation(line: 182, column: 3, scope: !548)
!556 = !DILocation(line: 182, column: 22, scope: !557)
!557 = distinct !DILexicalBlock(scope: !541, file: !3, line: 182, column: 14)
!558 = !DILocation(line: 182, column: 15, scope: !557)
!559 = !DILocation(line: 182, column: 14, scope: !541)
!560 = !DILocation(line: 183, column: 22, scope: !561)
!561 = distinct !DILexicalBlock(scope: !557, file: !3, line: 182, column: 52)
!562 = !DILocation(line: 184, column: 4, scope: !561)
!563 = !DILocation(line: 185, column: 8, scope: !564)
!564 = distinct !DILexicalBlock(scope: !561, file: !3, line: 185, column: 8)
!565 = !DILocation(line: 185, column: 8, scope: !561)
!566 = !DILocation(line: 186, column: 6, scope: !564)
!567 = !DILocation(line: 186, column: 17, scope: !564)
!568 = !DILocation(line: 186, column: 5, scope: !564)
!569 = !DILocation(line: 187, column: 3, scope: !561)
!570 = !DILocation(line: 187, column: 22, scope: !571)
!571 = distinct !DILexicalBlock(scope: !557, file: !3, line: 187, column: 14)
!572 = !DILocation(line: 187, column: 15, scope: !571)
!573 = !DILocation(line: 187, column: 14, scope: !557)
!574 = !DILocation(line: 188, column: 9, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !3, line: 188, column: 8)
!576 = distinct !DILexicalBlock(scope: !571, file: !3, line: 187, column: 41)
!577 = !DILocation(line: 188, column: 8, scope: !575)
!578 = !DILocation(line: 188, column: 14, scope: !575)
!579 = !DILocation(line: 188, column: 8, scope: !576)
!580 = !DILocation(line: 189, column: 13, scope: !581)
!581 = distinct !DILexicalBlock(scope: !575, file: !3, line: 188, column: 19)
!582 = !DILocation(line: 189, column: 21, scope: !581)
!583 = !DILocation(line: 189, column: 5, scope: !581)
!584 = !DILocation(line: 190, column: 5, scope: !581)
!585 = !DILocation(line: 192, column: 34, scope: !576)
!586 = !DILocation(line: 192, column: 33, scope: !576)
!587 = !DILocation(line: 192, column: 32, scope: !576)
!588 = !DILocation(line: 192, column: 4, scope: !576)
!589 = !DILocation(line: 193, column: 8, scope: !590)
!590 = distinct !DILexicalBlock(scope: !576, file: !3, line: 193, column: 8)
!591 = !DILocation(line: 193, column: 8, scope: !576)
!592 = !DILocation(line: 194, column: 6, scope: !590)
!593 = !DILocation(line: 194, column: 17, scope: !590)
!594 = !DILocation(line: 194, column: 5, scope: !590)
!595 = !DILocation(line: 195, column: 6, scope: !576)
!596 = !DILocation(line: 195, column: 11, scope: !576)
!597 = !DILocation(line: 196, column: 6, scope: !576)
!598 = !DILocation(line: 196, column: 11, scope: !576)
!599 = !DILocation(line: 197, column: 3, scope: !576)
!600 = !DILocation(line: 197, column: 26, scope: !601)
!601 = distinct !DILexicalBlock(scope: !571, file: !3, line: 197, column: 14)
!602 = !DILocation(line: 197, column: 14, scope: !601)
!603 = !DILocation(line: 197, column: 14, scope: !571)
!604 = !DILocation(line: 198, column: 32, scope: !605)
!605 = distinct !DILexicalBlock(scope: !601, file: !3, line: 197, column: 52)
!606 = !DILocation(line: 198, column: 4, scope: !605)
!607 = !DILocation(line: 199, column: 8, scope: !608)
!608 = distinct !DILexicalBlock(scope: !605, file: !3, line: 199, column: 8)
!609 = !DILocation(line: 199, column: 8, scope: !605)
!610 = !DILocation(line: 200, column: 6, scope: !608)
!611 = !DILocation(line: 200, column: 17, scope: !608)
!612 = !DILocation(line: 200, column: 5, scope: !608)
!613 = !DILocation(line: 201, column: 3, scope: !605)
!614 = !DILocation(line: 201, column: 22, scope: !615)
!615 = distinct !DILexicalBlock(scope: !601, file: !3, line: 201, column: 14)
!616 = !DILocation(line: 201, column: 15, scope: !615)
!617 = !DILocation(line: 201, column: 14, scope: !601)
!618 = !DILocation(line: 202, column: 9, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 202, column: 8)
!620 = distinct !DILexicalBlock(scope: !615, file: !3, line: 201, column: 43)
!621 = !DILocation(line: 202, column: 8, scope: !619)
!622 = !DILocation(line: 202, column: 14, scope: !619)
!623 = !DILocation(line: 202, column: 8, scope: !620)
!624 = !DILocation(line: 203, column: 13, scope: !625)
!625 = distinct !DILexicalBlock(scope: !619, file: !3, line: 202, column: 19)
!626 = !DILocation(line: 203, column: 21, scope: !625)
!627 = !DILocation(line: 203, column: 5, scope: !625)
!628 = !DILocation(line: 204, column: 5, scope: !625)
!629 = !DILocation(line: 206, column: 40, scope: !620)
!630 = !DILocation(line: 206, column: 39, scope: !620)
!631 = !DILocation(line: 206, column: 38, scope: !620)
!632 = !DILocation(line: 206, column: 4, scope: !620)
!633 = !DILocation(line: 207, column: 8, scope: !634)
!634 = distinct !DILexicalBlock(scope: !620, file: !3, line: 207, column: 8)
!635 = !DILocation(line: 207, column: 8, scope: !620)
!636 = !DILocation(line: 208, column: 6, scope: !634)
!637 = !DILocation(line: 208, column: 17, scope: !634)
!638 = !DILocation(line: 208, column: 5, scope: !634)
!639 = !DILocation(line: 209, column: 6, scope: !620)
!640 = !DILocation(line: 209, column: 11, scope: !620)
!641 = !DILocation(line: 210, column: 6, scope: !620)
!642 = !DILocation(line: 210, column: 11, scope: !620)
!643 = !DILocation(line: 211, column: 3, scope: !620)
!644 = !DILocation(line: 211, column: 26, scope: !645)
!645 = distinct !DILexicalBlock(scope: !615, file: !3, line: 211, column: 14)
!646 = !DILocation(line: 211, column: 14, scope: !645)
!647 = !DILocation(line: 211, column: 14, scope: !615)
!648 = !DILocation(line: 212, column: 38, scope: !649)
!649 = distinct !DILexicalBlock(scope: !645, file: !3, line: 211, column: 54)
!650 = !DILocation(line: 212, column: 4, scope: !649)
!651 = !DILocation(line: 213, column: 8, scope: !652)
!652 = distinct !DILexicalBlock(scope: !649, file: !3, line: 213, column: 8)
!653 = !DILocation(line: 213, column: 8, scope: !649)
!654 = !DILocation(line: 214, column: 6, scope: !652)
!655 = !DILocation(line: 214, column: 17, scope: !652)
!656 = !DILocation(line: 214, column: 5, scope: !652)
!657 = !DILocation(line: 215, column: 3, scope: !649)
!658 = !DILocation(line: 215, column: 22, scope: !659)
!659 = distinct !DILexicalBlock(scope: !645, file: !3, line: 215, column: 14)
!660 = !DILocation(line: 215, column: 15, scope: !659)
!661 = !DILocation(line: 215, column: 14, scope: !645)
!662 = !DILocation(line: 216, column: 9, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !3, line: 216, column: 8)
!664 = distinct !DILexicalBlock(scope: !659, file: !3, line: 215, column: 43)
!665 = !DILocation(line: 216, column: 8, scope: !663)
!666 = !DILocation(line: 216, column: 14, scope: !663)
!667 = !DILocation(line: 216, column: 8, scope: !664)
!668 = !DILocation(line: 217, column: 13, scope: !669)
!669 = distinct !DILexicalBlock(scope: !663, file: !3, line: 216, column: 19)
!670 = !DILocation(line: 217, column: 21, scope: !669)
!671 = !DILocation(line: 217, column: 5, scope: !669)
!672 = !DILocation(line: 218, column: 5, scope: !669)
!673 = !DILocation(line: 220, column: 40, scope: !664)
!674 = !DILocation(line: 220, column: 39, scope: !664)
!675 = !DILocation(line: 220, column: 38, scope: !664)
!676 = !DILocation(line: 220, column: 4, scope: !664)
!677 = !DILocation(line: 221, column: 8, scope: !678)
!678 = distinct !DILexicalBlock(scope: !664, file: !3, line: 221, column: 8)
!679 = !DILocation(line: 221, column: 8, scope: !664)
!680 = !DILocation(line: 222, column: 6, scope: !678)
!681 = !DILocation(line: 222, column: 17, scope: !678)
!682 = !DILocation(line: 222, column: 5, scope: !678)
!683 = !DILocation(line: 223, column: 6, scope: !664)
!684 = !DILocation(line: 223, column: 11, scope: !664)
!685 = !DILocation(line: 224, column: 6, scope: !664)
!686 = !DILocation(line: 224, column: 11, scope: !664)
!687 = !DILocation(line: 225, column: 3, scope: !664)
!688 = !DILocation(line: 225, column: 26, scope: !689)
!689 = distinct !DILexicalBlock(scope: !659, file: !3, line: 225, column: 14)
!690 = !DILocation(line: 225, column: 14, scope: !689)
!691 = !DILocation(line: 225, column: 14, scope: !659)
!692 = !DILocation(line: 226, column: 38, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !3, line: 225, column: 54)
!694 = !DILocation(line: 226, column: 4, scope: !693)
!695 = !DILocation(line: 227, column: 8, scope: !696)
!696 = distinct !DILexicalBlock(scope: !693, file: !3, line: 227, column: 8)
!697 = !DILocation(line: 227, column: 8, scope: !693)
!698 = !DILocation(line: 228, column: 6, scope: !696)
!699 = !DILocation(line: 228, column: 17, scope: !696)
!700 = !DILocation(line: 228, column: 5, scope: !696)
!701 = !DILocation(line: 229, column: 3, scope: !693)
!702 = !DILocation(line: 229, column: 22, scope: !703)
!703 = distinct !DILexicalBlock(scope: !689, file: !3, line: 229, column: 14)
!704 = !DILocation(line: 229, column: 15, scope: !703)
!705 = !DILocation(line: 229, column: 14, scope: !689)
!706 = !DILocation(line: 230, column: 9, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 230, column: 8)
!708 = distinct !DILexicalBlock(scope: !703, file: !3, line: 229, column: 46)
!709 = !DILocation(line: 230, column: 8, scope: !707)
!710 = !DILocation(line: 230, column: 14, scope: !707)
!711 = !DILocation(line: 230, column: 8, scope: !708)
!712 = !DILocation(line: 231, column: 13, scope: !713)
!713 = distinct !DILexicalBlock(scope: !707, file: !3, line: 230, column: 19)
!714 = !DILocation(line: 231, column: 21, scope: !713)
!715 = !DILocation(line: 231, column: 5, scope: !713)
!716 = !DILocation(line: 232, column: 5, scope: !713)
!717 = !DILocation(line: 234, column: 43, scope: !708)
!718 = !DILocation(line: 234, column: 42, scope: !708)
!719 = !DILocation(line: 234, column: 41, scope: !708)
!720 = !DILocation(line: 234, column: 4, scope: !708)
!721 = !DILocation(line: 235, column: 8, scope: !722)
!722 = distinct !DILexicalBlock(scope: !708, file: !3, line: 235, column: 8)
!723 = !DILocation(line: 235, column: 8, scope: !708)
!724 = !DILocation(line: 236, column: 6, scope: !722)
!725 = !DILocation(line: 236, column: 17, scope: !722)
!726 = !DILocation(line: 236, column: 5, scope: !722)
!727 = !DILocation(line: 237, column: 6, scope: !708)
!728 = !DILocation(line: 237, column: 11, scope: !708)
!729 = !DILocation(line: 238, column: 6, scope: !708)
!730 = !DILocation(line: 238, column: 11, scope: !708)
!731 = !DILocation(line: 239, column: 3, scope: !708)
!732 = !DILocation(line: 239, column: 26, scope: !733)
!733 = distinct !DILexicalBlock(scope: !703, file: !3, line: 239, column: 14)
!734 = !DILocation(line: 239, column: 14, scope: !733)
!735 = !DILocation(line: 239, column: 14, scope: !703)
!736 = !DILocation(line: 240, column: 41, scope: !737)
!737 = distinct !DILexicalBlock(scope: !733, file: !3, line: 239, column: 57)
!738 = !DILocation(line: 240, column: 4, scope: !737)
!739 = !DILocation(line: 241, column: 8, scope: !740)
!740 = distinct !DILexicalBlock(scope: !737, file: !3, line: 241, column: 8)
!741 = !DILocation(line: 241, column: 8, scope: !737)
!742 = !DILocation(line: 242, column: 6, scope: !740)
!743 = !DILocation(line: 242, column: 17, scope: !740)
!744 = !DILocation(line: 242, column: 5, scope: !740)
!745 = !DILocation(line: 243, column: 3, scope: !737)
!746 = !DILocation(line: 243, column: 22, scope: !747)
!747 = distinct !DILexicalBlock(scope: !733, file: !3, line: 243, column: 14)
!748 = !DILocation(line: 243, column: 15, scope: !747)
!749 = !DILocation(line: 243, column: 14, scope: !733)
!750 = !DILocalVariable(name: "cwd", scope: !751, file: !3, line: 244, type: !6)
!751 = distinct !DILexicalBlock(scope: !747, file: !3, line: 243, column: 38)
!752 = !DILocation(line: 244, column: 10, scope: !751)
!753 = !DILocation(line: 244, column: 16, scope: !751)
!754 = !DILocation(line: 245, column: 27, scope: !751)
!755 = !DILocation(line: 246, column: 32, scope: !751)
!756 = !DILocation(line: 246, column: 4, scope: !751)
!757 = !DILocation(line: 247, column: 9, scope: !751)
!758 = !DILocation(line: 247, column: 4, scope: !751)
!759 = !DILocation(line: 248, column: 4, scope: !751)
!760 = !DILocation(line: 249, column: 8, scope: !761)
!761 = distinct !DILexicalBlock(scope: !751, file: !3, line: 249, column: 8)
!762 = !DILocation(line: 249, column: 8, scope: !751)
!763 = !DILocation(line: 250, column: 6, scope: !761)
!764 = !DILocation(line: 250, column: 17, scope: !761)
!765 = !DILocation(line: 250, column: 5, scope: !761)
!766 = !DILocation(line: 251, column: 3, scope: !751)
!767 = !DILocation(line: 251, column: 22, scope: !768)
!768 = distinct !DILexicalBlock(scope: !747, file: !3, line: 251, column: 14)
!769 = !DILocation(line: 251, column: 15, scope: !768)
!770 = !DILocation(line: 251, column: 14, scope: !747)
!771 = !DILocation(line: 252, column: 9, scope: !772)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 252, column: 8)
!773 = distinct !DILexicalBlock(scope: !768, file: !3, line: 251, column: 34)
!774 = !DILocation(line: 252, column: 8, scope: !772)
!775 = !DILocation(line: 252, column: 14, scope: !772)
!776 = !DILocation(line: 252, column: 8, scope: !773)
!777 = !DILocation(line: 253, column: 13, scope: !778)
!778 = distinct !DILexicalBlock(scope: !772, file: !3, line: 252, column: 19)
!779 = !DILocation(line: 253, column: 21, scope: !778)
!780 = !DILocation(line: 253, column: 5, scope: !778)
!781 = !DILocation(line: 254, column: 5, scope: !778)
!782 = !DILocation(line: 256, column: 32, scope: !773)
!783 = !DILocation(line: 256, column: 31, scope: !773)
!784 = !DILocation(line: 256, column: 30, scope: !773)
!785 = !DILocation(line: 256, column: 4, scope: !773)
!786 = !DILocation(line: 257, column: 6, scope: !773)
!787 = !DILocation(line: 257, column: 11, scope: !773)
!788 = !DILocation(line: 258, column: 6, scope: !773)
!789 = !DILocation(line: 258, column: 11, scope: !773)
!790 = !DILocation(line: 259, column: 3, scope: !773)
!791 = !DILocation(line: 259, column: 22, scope: !792)
!792 = distinct !DILexicalBlock(scope: !768, file: !3, line: 259, column: 14)
!793 = !DILocation(line: 259, column: 15, scope: !792)
!794 = !DILocation(line: 259, column: 14, scope: !768)
!795 = !DILocation(line: 260, column: 9, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !3, line: 260, column: 8)
!797 = distinct !DILexicalBlock(scope: !792, file: !3, line: 259, column: 44)
!798 = !DILocation(line: 260, column: 8, scope: !796)
!799 = !DILocation(line: 260, column: 14, scope: !796)
!800 = !DILocation(line: 260, column: 8, scope: !797)
!801 = !DILocation(line: 261, column: 13, scope: !802)
!802 = distinct !DILexicalBlock(scope: !796, file: !3, line: 260, column: 19)
!803 = !DILocation(line: 261, column: 21, scope: !802)
!804 = !DILocation(line: 261, column: 5, scope: !802)
!805 = !DILocation(line: 262, column: 5, scope: !802)
!806 = !DILocation(line: 264, column: 26, scope: !797)
!807 = !DILocation(line: 264, column: 25, scope: !797)
!808 = !DILocation(line: 264, column: 24, scope: !797)
!809 = !DILocation(line: 264, column: 4, scope: !797)
!810 = !DILocation(line: 265, column: 6, scope: !797)
!811 = !DILocation(line: 265, column: 11, scope: !797)
!812 = !DILocation(line: 266, column: 6, scope: !797)
!813 = !DILocation(line: 266, column: 11, scope: !797)
!814 = !DILocation(line: 267, column: 3, scope: !797)
!815 = !DILocation(line: 267, column: 26, scope: !816)
!816 = distinct !DILexicalBlock(scope: !792, file: !3, line: 267, column: 14)
!817 = !DILocation(line: 267, column: 14, scope: !816)
!818 = !DILocation(line: 267, column: 14, scope: !792)
!819 = !DILocation(line: 268, column: 24, scope: !820)
!820 = distinct !DILexicalBlock(scope: !816, file: !3, line: 267, column: 55)
!821 = !DILocation(line: 268, column: 4, scope: !820)
!822 = !DILocation(line: 269, column: 3, scope: !820)
!823 = !DILocation(line: 269, column: 22, scope: !824)
!824 = distinct !DILexicalBlock(scope: !816, file: !3, line: 269, column: 14)
!825 = !DILocation(line: 269, column: 15, scope: !824)
!826 = !DILocation(line: 269, column: 14, scope: !816)
!827 = !DILocation(line: 270, column: 4, scope: !828)
!828 = distinct !DILexicalBlock(scope: !824, file: !3, line: 269, column: 51)
!829 = !DILocation(line: 271, column: 8, scope: !830)
!830 = distinct !DILexicalBlock(scope: !828, file: !3, line: 271, column: 8)
!831 = !DILocation(line: 271, column: 8, scope: !828)
!832 = !DILocation(line: 272, column: 6, scope: !830)
!833 = !DILocation(line: 272, column: 17, scope: !830)
!834 = !DILocation(line: 272, column: 5, scope: !830)
!835 = !DILocation(line: 273, column: 3, scope: !828)
!836 = !DILocation(line: 273, column: 22, scope: !837)
!837 = distinct !DILexicalBlock(scope: !824, file: !3, line: 273, column: 14)
!838 = !DILocation(line: 273, column: 15, scope: !837)
!839 = !DILocation(line: 273, column: 14, scope: !824)
!840 = !DILocation(line: 274, column: 4, scope: !841)
!841 = distinct !DILexicalBlock(scope: !837, file: !3, line: 273, column: 54)
!842 = !DILocation(line: 275, column: 8, scope: !843)
!843 = distinct !DILexicalBlock(scope: !841, file: !3, line: 275, column: 8)
!844 = !DILocation(line: 275, column: 8, scope: !841)
!845 = !DILocation(line: 276, column: 6, scope: !843)
!846 = !DILocation(line: 276, column: 17, scope: !843)
!847 = !DILocation(line: 276, column: 5, scope: !843)
!848 = !DILocation(line: 277, column: 3, scope: !841)
!849 = !DILocation(line: 277, column: 22, scope: !850)
!850 = distinct !DILexicalBlock(scope: !837, file: !3, line: 277, column: 14)
!851 = !DILocation(line: 277, column: 15, scope: !850)
!852 = !DILocation(line: 277, column: 14, scope: !837)
!853 = !DILocation(line: 278, column: 4, scope: !854)
!854 = distinct !DILexicalBlock(scope: !850, file: !3, line: 277, column: 48)
!855 = !DILocation(line: 279, column: 8, scope: !856)
!856 = distinct !DILexicalBlock(scope: !854, file: !3, line: 279, column: 8)
!857 = !DILocation(line: 279, column: 8, scope: !854)
!858 = !DILocation(line: 280, column: 6, scope: !856)
!859 = !DILocation(line: 280, column: 17, scope: !856)
!860 = !DILocation(line: 280, column: 5, scope: !856)
!861 = !DILocation(line: 281, column: 3, scope: !854)
!862 = !DILocation(line: 281, column: 22, scope: !863)
!863 = distinct !DILexicalBlock(scope: !850, file: !3, line: 281, column: 14)
!864 = !DILocation(line: 281, column: 15, scope: !863)
!865 = !DILocation(line: 281, column: 14, scope: !850)
!866 = !DILocation(line: 282, column: 4, scope: !867)
!867 = distinct !DILexicalBlock(scope: !863, file: !3, line: 281, column: 50)
!868 = !DILocation(line: 283, column: 8, scope: !869)
!869 = distinct !DILexicalBlock(scope: !867, file: !3, line: 283, column: 8)
!870 = !DILocation(line: 283, column: 8, scope: !867)
!871 = !DILocation(line: 284, column: 6, scope: !869)
!872 = !DILocation(line: 284, column: 17, scope: !869)
!873 = !DILocation(line: 284, column: 5, scope: !869)
!874 = !DILocation(line: 285, column: 3, scope: !867)
!875 = !DILocation(line: 285, column: 22, scope: !876)
!876 = distinct !DILexicalBlock(scope: !863, file: !3, line: 285, column: 14)
!877 = !DILocation(line: 285, column: 15, scope: !876)
!878 = !DILocation(line: 285, column: 14, scope: !863)
!879 = !DILocation(line: 286, column: 4, scope: !880)
!880 = distinct !DILexicalBlock(scope: !876, file: !3, line: 285, column: 49)
!881 = !DILocation(line: 287, column: 8, scope: !882)
!882 = distinct !DILexicalBlock(scope: !880, file: !3, line: 287, column: 8)
!883 = !DILocation(line: 287, column: 8, scope: !880)
!884 = !DILocation(line: 288, column: 6, scope: !882)
!885 = !DILocation(line: 288, column: 17, scope: !882)
!886 = !DILocation(line: 288, column: 5, scope: !882)
!887 = !DILocation(line: 289, column: 3, scope: !880)
!888 = !DILocation(line: 289, column: 22, scope: !889)
!889 = distinct !DILexicalBlock(scope: !876, file: !3, line: 289, column: 14)
!890 = !DILocation(line: 289, column: 15, scope: !889)
!891 = !DILocation(line: 289, column: 14, scope: !876)
!892 = !DILocation(line: 290, column: 4, scope: !893)
!893 = distinct !DILexicalBlock(scope: !889, file: !3, line: 289, column: 51)
!894 = !DILocation(line: 291, column: 8, scope: !895)
!895 = distinct !DILexicalBlock(scope: !893, file: !3, line: 291, column: 8)
!896 = !DILocation(line: 291, column: 8, scope: !893)
!897 = !DILocation(line: 292, column: 6, scope: !895)
!898 = !DILocation(line: 292, column: 17, scope: !895)
!899 = !DILocation(line: 292, column: 5, scope: !895)
!900 = !DILocation(line: 293, column: 3, scope: !893)
!901 = !DILocation(line: 293, column: 22, scope: !902)
!902 = distinct !DILexicalBlock(scope: !889, file: !3, line: 293, column: 14)
!903 = !DILocation(line: 293, column: 15, scope: !902)
!904 = !DILocation(line: 293, column: 14, scope: !889)
!905 = !DILocation(line: 294, column: 6, scope: !906)
!906 = distinct !DILexicalBlock(scope: !902, file: !3, line: 293, column: 46)
!907 = !DILocation(line: 294, column: 11, scope: !906)
!908 = !DILocation(line: 295, column: 6, scope: !906)
!909 = !DILocation(line: 295, column: 11, scope: !906)
!910 = !DILocation(line: 296, column: 31, scope: !906)
!911 = !DILocation(line: 296, column: 49, scope: !906)
!912 = !DILocation(line: 296, column: 48, scope: !906)
!913 = !DILocation(line: 296, column: 47, scope: !906)
!914 = !DILocation(line: 296, column: 4, scope: !906)
!915 = !DILocation(line: 297, column: 8, scope: !916)
!916 = distinct !DILexicalBlock(scope: !906, file: !3, line: 297, column: 8)
!917 = !DILocation(line: 297, column: 8, scope: !906)
!918 = !DILocation(line: 298, column: 6, scope: !916)
!919 = !DILocation(line: 298, column: 17, scope: !916)
!920 = !DILocation(line: 298, column: 5, scope: !916)
!921 = !DILocation(line: 299, column: 3, scope: !906)
!922 = !DILocation(line: 299, column: 22, scope: !923)
!923 = distinct !DILexicalBlock(scope: !902, file: !3, line: 299, column: 14)
!924 = !DILocation(line: 299, column: 15, scope: !923)
!925 = !DILocation(line: 299, column: 14, scope: !902)
!926 = !DILocation(line: 300, column: 9, scope: !927)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 300, column: 8)
!928 = distinct !DILexicalBlock(scope: !923, file: !3, line: 299, column: 34)
!929 = !DILocation(line: 300, column: 8, scope: !927)
!930 = !DILocation(line: 300, column: 14, scope: !927)
!931 = !DILocation(line: 300, column: 8, scope: !928)
!932 = !DILocation(line: 301, column: 13, scope: !933)
!933 = distinct !DILexicalBlock(scope: !927, file: !3, line: 300, column: 19)
!934 = !DILocation(line: 301, column: 21, scope: !933)
!935 = !DILocation(line: 301, column: 5, scope: !933)
!936 = !DILocation(line: 302, column: 5, scope: !933)
!937 = !DILocation(line: 304, column: 10, scope: !938)
!938 = distinct !DILexicalBlock(scope: !928, file: !3, line: 304, column: 8)
!939 = !DILocation(line: 304, column: 9, scope: !938)
!940 = !DILocation(line: 304, column: 8, scope: !938)
!941 = !DILocation(line: 304, column: 8, scope: !928)
!942 = !DILocation(line: 305, column: 17, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !3, line: 305, column: 9)
!944 = distinct !DILexicalBlock(scope: !938, file: !3, line: 304, column: 23)
!945 = !DILocation(line: 305, column: 16, scope: !943)
!946 = !DILocation(line: 305, column: 15, scope: !943)
!947 = !DILocation(line: 305, column: 9, scope: !943)
!948 = !DILocation(line: 305, column: 9, scope: !944)
!949 = !DILocation(line: 306, column: 43, scope: !943)
!950 = !DILocation(line: 306, column: 42, scope: !943)
!951 = !DILocation(line: 306, column: 41, scope: !943)
!952 = !DILocation(line: 306, column: 6, scope: !943)
!953 = !DILocation(line: 307, column: 9, scope: !954)
!954 = distinct !DILexicalBlock(scope: !944, file: !3, line: 307, column: 9)
!955 = !DILocation(line: 307, column: 9, scope: !944)
!956 = !DILocation(line: 308, column: 7, scope: !954)
!957 = !DILocation(line: 308, column: 18, scope: !954)
!958 = !DILocation(line: 308, column: 6, scope: !954)
!959 = !DILocation(line: 309, column: 4, scope: !944)
!960 = !DILocation(line: 310, column: 6, scope: !928)
!961 = !DILocation(line: 310, column: 11, scope: !928)
!962 = !DILocation(line: 311, column: 6, scope: !928)
!963 = !DILocation(line: 311, column: 11, scope: !928)
!964 = !DILocation(line: 312, column: 3, scope: !928)
!965 = !DILocation(line: 312, column: 26, scope: !966)
!966 = distinct !DILexicalBlock(scope: !923, file: !3, line: 312, column: 14)
!967 = !DILocation(line: 312, column: 14, scope: !966)
!968 = !DILocation(line: 312, column: 14, scope: !923)
!969 = !DILocation(line: 313, column: 4, scope: !970)
!970 = distinct !DILexicalBlock(scope: !966, file: !3, line: 312, column: 54)
!971 = !DILocation(line: 314, column: 16, scope: !972)
!972 = distinct !DILexicalBlock(scope: !970, file: !3, line: 314, column: 8)
!973 = !DILocation(line: 314, column: 9, scope: !972)
!974 = !DILocation(line: 314, column: 8, scope: !970)
!975 = !DILocalVariable(name: "list", scope: !976, file: !3, line: 315, type: !977)
!976 = distinct !DILexicalBlock(scope: !972, file: !3, line: 314, column: 34)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string_list", file: !978, line: 87, size: 320, elements: !979)
!978 = !DIFile(filename: "./string-list.h", directory: "/Users/jryans/Projects/git")
!979 = !{!980, !987, !988, !989, !990}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !977, file: !978, line: 88, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string_list_item", file: !978, line: 68, size: 128, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !982, file: !978, line: 69, baseType: !6, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "util", scope: !982, file: !978, line: 70, baseType: !986, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !977, file: !978, line: 89, baseType: !147, size: 64, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !977, file: !978, line: 90, baseType: !147, size: 64, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "strdup_strings", scope: !977, file: !978, line: 91, baseType: !34, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !977, file: !978, line: 92, baseType: !991, size: 64, offset: 256)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "compare_strings_fn", file: !978, line: 73, baseType: !992)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DISubroutineType(types: !994)
!994 = !{!20, !27, !27}
!995 = !DILocation(line: 315, column: 24, scope: !976)
!996 = !DILocalVariable(name: "i", scope: !976, file: !3, line: 316, type: !20)
!997 = !DILocation(line: 316, column: 9, scope: !976)
!998 = !DILocation(line: 318, column: 5, scope: !976)
!999 = !DILocation(line: 319, column: 12, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !976, file: !3, line: 319, column: 5)
!1001 = !DILocation(line: 319, column: 10, scope: !1000)
!1002 = !DILocation(line: 319, column: 17, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 319, column: 5)
!1004 = !DILocation(line: 319, column: 26, scope: !1003)
!1005 = !DILocation(line: 319, column: 19, scope: !1003)
!1006 = !DILocation(line: 319, column: 5, scope: !1000)
!1007 = !DILocation(line: 320, column: 25, scope: !1003)
!1008 = !DILocation(line: 320, column: 31, scope: !1003)
!1009 = !DILocation(line: 320, column: 20, scope: !1003)
!1010 = !DILocation(line: 320, column: 34, scope: !1003)
!1011 = !DILocation(line: 320, column: 6, scope: !1003)
!1012 = !DILocation(line: 319, column: 31, scope: !1003)
!1013 = !DILocation(line: 319, column: 5, scope: !1003)
!1014 = distinct !{!1014, !1006, !1015, !129}
!1015 = !DILocation(line: 320, column: 40, scope: !1000)
!1016 = !DILocation(line: 321, column: 5, scope: !976)
!1017 = !DILocation(line: 322, column: 5, scope: !976)
!1018 = !DILocation(line: 324, column: 5, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !972, file: !3, line: 323, column: 11)
!1020 = !DILocation(line: 327, column: 12, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !966, file: !3, line: 326, column: 10)
!1022 = !DILocation(line: 327, column: 20, scope: !1021)
!1023 = !DILocation(line: 327, column: 47, scope: !1021)
!1024 = !DILocation(line: 327, column: 4, scope: !1021)
!1025 = !DILocation(line: 328, column: 4, scope: !1021)
!1026 = !DILocation(line: 331, column: 5, scope: !460)
!1027 = !DILocation(line: 331, column: 10, scope: !460)
!1028 = !DILocation(line: 332, column: 5, scope: !460)
!1029 = !DILocation(line: 332, column: 10, scope: !460)
!1030 = distinct !{!1030, !455, !1031, !129}
!1031 = !DILocation(line: 333, column: 2, scope: !440)
!1032 = !DILocation(line: 334, column: 11, scope: !440)
!1033 = !DILocation(line: 334, column: 10, scope: !440)
!1034 = !DILocation(line: 334, column: 19, scope: !440)
!1035 = !DILocation(line: 334, column: 17, scope: !440)
!1036 = !DILocation(line: 334, column: 9, scope: !440)
!1037 = !DILocation(line: 334, column: 2, scope: !440)
!1038 = distinct !DISubprogram(name: "run_argv", scope: !3, file: !3, line: 771, type: !1039, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1039 = !DISubroutineType(types: !1040)
!1040 = !{!20, !444, !443}
!1041 = !DILocalVariable(name: "argcp", arg: 1, scope: !1038, file: !3, line: 771, type: !444)
!1042 = !DILocation(line: 771, column: 26, scope: !1038)
!1043 = !DILocalVariable(name: "argv", arg: 2, scope: !1038, file: !3, line: 771, type: !443)
!1044 = !DILocation(line: 771, column: 47, scope: !1038)
!1045 = !DILocalVariable(name: "done_alias", scope: !1038, file: !3, line: 773, type: !20)
!1046 = !DILocation(line: 773, column: 6, scope: !1038)
!1047 = !DILocalVariable(name: "cmd_list", scope: !1038, file: !3, line: 774, type: !977)
!1048 = !DILocation(line: 774, column: 21, scope: !1038)
!1049 = !DILocalVariable(name: "seen", scope: !1038, file: !3, line: 775, type: !981)
!1050 = !DILocation(line: 775, column: 27, scope: !1038)
!1051 = !DILocation(line: 777, column: 2, scope: !1038)
!1052 = !DILocation(line: 787, column: 8, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 787, column: 7)
!1054 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 777, column: 12)
!1055 = !DILocation(line: 787, column: 7, scope: !1054)
!1056 = !DILocation(line: 788, column: 20, scope: !1053)
!1057 = !DILocation(line: 788, column: 19, scope: !1053)
!1058 = !DILocation(line: 788, column: 28, scope: !1053)
!1059 = !DILocation(line: 788, column: 27, scope: !1053)
!1060 = !DILocation(line: 788, column: 4, scope: !1053)
!1061 = !DILocation(line: 789, column: 26, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 789, column: 12)
!1063 = !DILocation(line: 789, column: 25, scope: !1062)
!1064 = !DILocation(line: 789, column: 24, scope: !1062)
!1065 = !DILocation(line: 789, column: 12, scope: !1062)
!1066 = !DILocation(line: 789, column: 12, scope: !1053)
!1067 = !DILocalVariable(name: "cmd", scope: !1068, file: !3, line: 790, type: !1069)
!1068 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 789, column: 33)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "child_process", file: !1070, line: 44, size: 960, elements: !1071)
!1070 = !DIFile(filename: "./run-command.h", directory: "/Users/jryans/Projects/git")
!1071 = !{!1072, !1073, !1074, !1080, !1081, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1069, file: !1070, line: 58, baseType: !362, size: 192)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !1069, file: !1070, line: 76, baseType: !362, size: 192, offset: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !1069, file: !1070, line: 77, baseType: !1075, size: 32, offset: 384)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !1076, line: 31, baseType: !1077)
!1076 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h", directory: "")
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pid_t", file: !1078, line: 72, baseType: !1079)
!1078 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h", directory: "")
!1079 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !150, line: 46, baseType: !20)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "trace2_child_id", scope: !1069, file: !1070, line: 79, baseType: !20, size: 32, offset: 416)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "trace2_child_us_start", scope: !1069, file: !1070, line: 80, baseType: !1082, size: 64, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !1083, line: 31, baseType: !1084)
!1083 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "")
!1084 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "trace2_child_class", scope: !1069, file: !1070, line: 81, baseType: !27, size: 64, offset: 512)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "trace2_hook_name", scope: !1069, file: !1070, line: 82, baseType: !27, size: 64, offset: 576)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !1069, file: !1070, line: 102, baseType: !20, size: 32, offset: 640)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !1069, file: !1070, line: 103, baseType: !20, size: 32, offset: 672)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !1069, file: !1070, line: 104, baseType: !20, size: 32, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1069, file: !1070, line: 110, baseType: !27, size: 64, offset: 768)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "no_stdin", scope: !1069, file: !1070, line: 112, baseType: !34, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "no_stdout", scope: !1069, file: !1070, line: 113, baseType: !34, size: 1, offset: 833, flags: DIFlagBitField, extraData: i64 832)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "no_stderr", scope: !1069, file: !1070, line: 114, baseType: !34, size: 1, offset: 834, flags: DIFlagBitField, extraData: i64 832)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "git_cmd", scope: !1069, file: !1070, line: 115, baseType: !34, size: 1, offset: 835, flags: DIFlagBitField, extraData: i64 832)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "silent_exec_failure", scope: !1069, file: !1070, line: 123, baseType: !34, size: 1, offset: 836, flags: DIFlagBitField, extraData: i64 832)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "use_shell", scope: !1069, file: !1070, line: 131, baseType: !34, size: 1, offset: 837, flags: DIFlagBitField, extraData: i64 832)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "close_object_store", scope: !1069, file: !1070, line: 139, baseType: !34, size: 1, offset: 838, flags: DIFlagBitField, extraData: i64 832)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "stdout_to_stderr", scope: !1069, file: !1070, line: 141, baseType: !34, size: 1, offset: 839, flags: DIFlagBitField, extraData: i64 832)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "clean_on_exit", scope: !1069, file: !1070, line: 142, baseType: !34, size: 1, offset: 840, flags: DIFlagBitField, extraData: i64 832)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "wait_after_clean", scope: !1069, file: !1070, line: 143, baseType: !34, size: 1, offset: 841, flags: DIFlagBitField, extraData: i64 832)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "clean_on_exit_handler", scope: !1069, file: !1070, line: 144, baseType: !1102, size: 64, offset: 896)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !1105}
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1106 = !DILocation(line: 790, column: 25, scope: !1068)
!1107 = !DILocalVariable(name: "i", scope: !1068, file: !3, line: 791, type: !20)
!1108 = !DILocation(line: 791, column: 8, scope: !1068)
!1109 = !DILocation(line: 800, column: 4, scope: !1068)
!1110 = !DILocation(line: 802, column: 8, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 802, column: 8)
!1112 = !DILocation(line: 802, column: 8, scope: !1068)
!1113 = !DILocation(line: 803, column: 48, scope: !1111)
!1114 = !DILocation(line: 803, column: 47, scope: !1111)
!1115 = !DILocation(line: 803, column: 46, scope: !1111)
!1116 = !DILocation(line: 803, column: 5, scope: !1111)
!1117 = !DILocation(line: 805, column: 4, scope: !1068)
!1118 = !DILocation(line: 807, column: 21, scope: !1068)
!1119 = !DILocation(line: 807, column: 4, scope: !1068)
!1120 = !DILocation(line: 808, column: 11, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 808, column: 4)
!1122 = !DILocation(line: 808, column: 9, scope: !1121)
!1123 = !DILocation(line: 808, column: 16, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 808, column: 4)
!1125 = !DILocation(line: 808, column: 21, scope: !1124)
!1126 = !DILocation(line: 808, column: 20, scope: !1124)
!1127 = !DILocation(line: 808, column: 18, scope: !1124)
!1128 = !DILocation(line: 808, column: 4, scope: !1121)
!1129 = !DILocation(line: 809, column: 22, scope: !1124)
!1130 = !DILocation(line: 809, column: 30, scope: !1124)
!1131 = !DILocation(line: 809, column: 29, scope: !1124)
!1132 = !DILocation(line: 809, column: 36, scope: !1124)
!1133 = !DILocation(line: 809, column: 28, scope: !1124)
!1134 = !DILocation(line: 809, column: 5, scope: !1124)
!1135 = !DILocation(line: 808, column: 29, scope: !1124)
!1136 = !DILocation(line: 808, column: 4, scope: !1124)
!1137 = distinct !{!1137, !1128, !1138, !129}
!1138 = !DILocation(line: 809, column: 38, scope: !1121)
!1139 = !DILocation(line: 811, column: 4, scope: !1068)
!1140 = !DILocation(line: 811, column: 4, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 811, column: 4)
!1142 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 811, column: 4)
!1143 = !DILocation(line: 811, column: 4, scope: !1142)
!1144 = !DILocation(line: 817, column: 8, scope: !1068)
!1145 = !DILocation(line: 817, column: 28, scope: !1068)
!1146 = !DILocation(line: 818, column: 8, scope: !1068)
!1147 = !DILocation(line: 818, column: 22, scope: !1068)
!1148 = !DILocation(line: 819, column: 8, scope: !1068)
!1149 = !DILocation(line: 819, column: 25, scope: !1068)
!1150 = !DILocation(line: 820, column: 8, scope: !1068)
!1151 = !DILocation(line: 820, column: 27, scope: !1068)
!1152 = !DILocation(line: 821, column: 8, scope: !1068)
!1153 = !DILocation(line: 821, column: 6, scope: !1068)
!1154 = !DILocation(line: 822, column: 8, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 822, column: 8)
!1156 = !DILocation(line: 822, column: 10, scope: !1155)
!1157 = !DILocation(line: 822, column: 15, scope: !1155)
!1158 = !DILocation(line: 822, column: 18, scope: !1155)
!1159 = !DILocation(line: 822, column: 24, scope: !1155)
!1160 = !DILocation(line: 822, column: 8, scope: !1068)
!1161 = !DILocation(line: 823, column: 5, scope: !1155)
!1162 = !DILocation(line: 824, column: 42, scope: !1068)
!1163 = !DILocation(line: 824, column: 41, scope: !1068)
!1164 = !DILocation(line: 824, column: 40, scope: !1068)
!1165 = !DILocation(line: 824, column: 4, scope: !1068)
!1166 = !DILocation(line: 828, column: 26, scope: !1054)
!1167 = !DILocation(line: 828, column: 25, scope: !1054)
!1168 = !DILocation(line: 828, column: 3, scope: !1054)
!1169 = !DILocation(line: 830, column: 50, scope: !1054)
!1170 = !DILocation(line: 830, column: 49, scope: !1054)
!1171 = !DILocation(line: 830, column: 10, scope: !1054)
!1172 = !DILocation(line: 830, column: 8, scope: !1054)
!1173 = !DILocation(line: 831, column: 7, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 831, column: 7)
!1175 = !DILocation(line: 831, column: 7, scope: !1054)
!1176 = !DILocalVariable(name: "i", scope: !1177, file: !3, line: 832, type: !20)
!1177 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 831, column: 13)
!1178 = !DILocation(line: 832, column: 8, scope: !1177)
!1179 = !DILocalVariable(name: "sb", scope: !1177, file: !3, line: 833, type: !1180)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf", file: !1181, line: 66, size: 192, elements: !1182)
!1181 = !DIFile(filename: "./strbuf.h", directory: "/Users/jryans/Projects/git")
!1182 = !{!1183, !1184, !1185}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1180, file: !1181, line: 67, baseType: !147, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1180, file: !1181, line: 68, baseType: !147, size: 64, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1180, file: !1181, line: 69, baseType: !6, size: 64, offset: 128)
!1186 = !DILocation(line: 833, column: 18, scope: !1177)
!1187 = !DILocation(line: 834, column: 11, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 834, column: 4)
!1189 = !DILocation(line: 834, column: 9, scope: !1188)
!1190 = !DILocation(line: 834, column: 16, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 834, column: 4)
!1192 = !DILocation(line: 834, column: 29, scope: !1191)
!1193 = !DILocation(line: 834, column: 18, scope: !1191)
!1194 = !DILocation(line: 834, column: 4, scope: !1188)
!1195 = !DILocalVariable(name: "item", scope: !1196, file: !3, line: 835, type: !981)
!1196 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 834, column: 38)
!1197 = !DILocation(line: 835, column: 30, scope: !1196)
!1198 = !DILocation(line: 835, column: 47, scope: !1196)
!1199 = !DILocation(line: 835, column: 53, scope: !1196)
!1200 = !DILocation(line: 835, column: 38, scope: !1196)
!1201 = !DILocation(line: 837, column: 32, scope: !1196)
!1202 = !DILocation(line: 837, column: 38, scope: !1196)
!1203 = !DILocation(line: 837, column: 5, scope: !1196)
!1204 = !DILocation(line: 838, column: 9, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 838, column: 9)
!1206 = !DILocation(line: 838, column: 17, scope: !1205)
!1207 = !DILocation(line: 838, column: 14, scope: !1205)
!1208 = !DILocation(line: 838, column: 9, scope: !1196)
!1209 = !DILocation(line: 839, column: 6, scope: !1205)
!1210 = !DILocation(line: 840, column: 14, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1205, file: !3, line: 840, column: 14)
!1212 = !DILocation(line: 840, column: 28, scope: !1211)
!1213 = !DILocation(line: 840, column: 31, scope: !1211)
!1214 = !DILocation(line: 840, column: 16, scope: !1211)
!1215 = !DILocation(line: 840, column: 14, scope: !1205)
!1216 = !DILocation(line: 841, column: 6, scope: !1211)
!1217 = !DILocation(line: 842, column: 4, scope: !1196)
!1218 = !DILocation(line: 834, column: 34, scope: !1191)
!1219 = !DILocation(line: 834, column: 4, scope: !1191)
!1220 = distinct !{!1220, !1194, !1221, !129}
!1221 = !DILocation(line: 842, column: 4, scope: !1188)
!1222 = !DILocation(line: 843, column: 8, scope: !1177)
!1223 = !DILocation(line: 844, column: 41, scope: !1177)
!1224 = !DILocation(line: 844, column: 32, scope: !1177)
!1225 = !DILocation(line: 844, column: 50, scope: !1177)
!1226 = !DILocation(line: 844, column: 61, scope: !1177)
!1227 = !DILocation(line: 843, column: 4, scope: !1177)
!1228 = !DILocation(line: 847, column: 34, scope: !1054)
!1229 = !DILocation(line: 847, column: 33, scope: !1054)
!1230 = !DILocation(line: 847, column: 3, scope: !1054)
!1231 = !DILocation(line: 854, column: 21, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 854, column: 7)
!1233 = !DILocation(line: 854, column: 28, scope: !1232)
!1234 = !DILocation(line: 854, column: 8, scope: !1232)
!1235 = !DILocation(line: 854, column: 7, scope: !1054)
!1236 = !DILocation(line: 855, column: 4, scope: !1232)
!1237 = !DILocation(line: 856, column: 14, scope: !1054)
!1238 = distinct !{!1238, !1051, !1239}
!1239 = !DILocation(line: 857, column: 2, scope: !1038)
!1240 = !DILocation(line: 859, column: 2, scope: !1038)
!1241 = !DILocation(line: 861, column: 9, scope: !1038)
!1242 = !DILocation(line: 861, column: 2, scope: !1038)
!1243 = distinct !DISubprogram(name: "trace_pass_fl", scope: !1244, file: !1244, line: 273, type: !1245, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1244 = !DIFile(filename: "./trace.h", directory: "/Users/jryans/Projects/git")
!1245 = !DISubroutineType(types: !1246)
!1246 = !{!20, !1247}
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_key", file: !1244, line: 83, size: 128, elements: !1249)
!1249 = !{!1250, !1252, !1253, !1254}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1248, file: !1244, line: 84, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1248, file: !1244, line: 85, baseType: !20, size: 32, offset: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1248, file: !1244, line: 86, baseType: !34, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "need_close", scope: !1248, file: !1244, line: 87, baseType: !34, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1255 = !DILocalVariable(name: "key", arg: 1, scope: !1243, file: !1244, line: 273, type: !1247)
!1256 = !DILocation(line: 273, column: 51, scope: !1243)
!1257 = !DILocation(line: 275, column: 9, scope: !1243)
!1258 = !DILocation(line: 275, column: 14, scope: !1243)
!1259 = !DILocation(line: 275, column: 17, scope: !1243)
!1260 = !DILocation(line: 275, column: 21, scope: !1243)
!1261 = !DILocation(line: 275, column: 26, scope: !1243)
!1262 = !DILocation(line: 275, column: 20, scope: !1243)
!1263 = !DILocation(line: 275, column: 2, scope: !1243)
!1264 = distinct !DISubprogram(name: "execv_dashed_external", scope: !3, file: !3, line: 725, type: !1265, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1265 = !DISubroutineType(types: !1266)
!1266 = !{null, !32}
!1267 = !DILocalVariable(name: "argv", arg: 1, scope: !1264, file: !3, line: 725, type: !32)
!1268 = !DILocation(line: 725, column: 48, scope: !1264)
!1269 = !DILocalVariable(name: "cmd", scope: !1264, file: !3, line: 727, type: !1069)
!1270 = !DILocation(line: 727, column: 23, scope: !1264)
!1271 = !DILocalVariable(name: "status", scope: !1264, file: !3, line: 728, type: !20)
!1272 = !DILocation(line: 728, column: 6, scope: !1264)
!1273 = !DILocation(line: 730, column: 6, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 730, column: 6)
!1275 = !DILocation(line: 730, column: 6, scope: !1264)
!1276 = !DILocation(line: 731, column: 7, scope: !1274)
!1277 = !DILocation(line: 731, column: 47, scope: !1274)
!1278 = !DILocation(line: 731, column: 3, scope: !1274)
!1279 = !DILocation(line: 733, column: 6, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 733, column: 6)
!1281 = !DILocation(line: 733, column: 16, scope: !1280)
!1282 = !DILocation(line: 733, column: 22, scope: !1280)
!1283 = !DILocation(line: 733, column: 37, scope: !1280)
!1284 = !DILocation(line: 733, column: 26, scope: !1280)
!1285 = !DILocation(line: 733, column: 6, scope: !1264)
!1286 = !DILocation(line: 734, column: 34, scope: !1280)
!1287 = !DILocation(line: 734, column: 15, scope: !1280)
!1288 = !DILocation(line: 734, column: 13, scope: !1280)
!1289 = !DILocation(line: 734, column: 3, scope: !1280)
!1290 = !DILocation(line: 735, column: 2, scope: !1264)
!1291 = !DILocation(line: 737, column: 20, scope: !1264)
!1292 = !DILocation(line: 737, column: 36, scope: !1264)
!1293 = !DILocation(line: 737, column: 2, scope: !1264)
!1294 = !DILocation(line: 738, column: 20, scope: !1264)
!1295 = !DILocation(line: 738, column: 26, scope: !1264)
!1296 = !DILocation(line: 738, column: 31, scope: !1264)
!1297 = !DILocation(line: 738, column: 2, scope: !1264)
!1298 = !DILocation(line: 739, column: 6, scope: !1264)
!1299 = !DILocation(line: 739, column: 20, scope: !1264)
!1300 = !DILocation(line: 740, column: 6, scope: !1264)
!1301 = !DILocation(line: 740, column: 23, scope: !1264)
!1302 = !DILocation(line: 741, column: 6, scope: !1264)
!1303 = !DILocation(line: 741, column: 26, scope: !1264)
!1304 = !DILocation(line: 742, column: 6, scope: !1264)
!1305 = !DILocation(line: 742, column: 25, scope: !1264)
!1306 = !DILocation(line: 744, column: 2, scope: !1264)
!1307 = !DILocation(line: 750, column: 2, scope: !1264)
!1308 = !DILocation(line: 750, column: 2, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 750, column: 2)
!1310 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 750, column: 2)
!1311 = !DILocation(line: 750, column: 2, scope: !1310)
!1312 = !DILocation(line: 758, column: 11, scope: !1264)
!1313 = !DILocation(line: 758, column: 9, scope: !1264)
!1314 = !DILocation(line: 765, column: 6, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 765, column: 6)
!1316 = !DILocation(line: 765, column: 13, scope: !1315)
!1317 = !DILocation(line: 765, column: 6, scope: !1264)
!1318 = !DILocation(line: 766, column: 3, scope: !1315)
!1319 = !DILocation(line: 767, column: 11, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 767, column: 11)
!1321 = !DILocation(line: 767, column: 17, scope: !1320)
!1322 = !DILocation(line: 767, column: 11, scope: !1315)
!1323 = !DILocation(line: 768, column: 3, scope: !1320)
!1324 = !DILocation(line: 769, column: 1, scope: !1264)
!1325 = distinct !DISubprogram(name: "strbuf_addstr", scope: !1181, file: !1181, line: 303, type: !1326, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1326 = !DISubroutineType(types: !1327)
!1327 = !{null, !1328, !27}
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1329 = !DILocalVariable(name: "sb", arg: 1, scope: !1325, file: !1181, line: 303, type: !1328)
!1330 = !DILocation(line: 303, column: 49, scope: !1325)
!1331 = !DILocalVariable(name: "s", arg: 2, scope: !1325, file: !1181, line: 303, type: !27)
!1332 = !DILocation(line: 303, column: 65, scope: !1325)
!1333 = !DILocation(line: 305, column: 13, scope: !1325)
!1334 = !DILocation(line: 305, column: 17, scope: !1325)
!1335 = !DILocation(line: 305, column: 27, scope: !1325)
!1336 = !DILocation(line: 305, column: 20, scope: !1325)
!1337 = !DILocation(line: 305, column: 2, scope: !1325)
!1338 = !DILocation(line: 306, column: 1, scope: !1325)
!1339 = distinct !DISubprogram(name: "handle_alias", scope: !3, file: !3, line: 337, type: !1039, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1340 = !DILocalVariable(name: "argcp", arg: 1, scope: !1339, file: !3, line: 337, type: !444)
!1341 = !DILocation(line: 337, column: 30, scope: !1339)
!1342 = !DILocalVariable(name: "argv", arg: 2, scope: !1339, file: !3, line: 337, type: !443)
!1343 = !DILocation(line: 337, column: 51, scope: !1339)
!1344 = !DILocalVariable(name: "envchanged", scope: !1339, file: !3, line: 339, type: !20)
!1345 = !DILocation(line: 339, column: 6, scope: !1339)
!1346 = !DILocalVariable(name: "ret", scope: !1339, file: !3, line: 339, type: !20)
!1347 = !DILocation(line: 339, column: 22, scope: !1339)
!1348 = !DILocalVariable(name: "saved_errno", scope: !1339, file: !3, line: 339, type: !20)
!1349 = !DILocation(line: 339, column: 31, scope: !1339)
!1350 = !DILocation(line: 339, column: 45, scope: !1339)
!1351 = !DILocalVariable(name: "count", scope: !1339, file: !3, line: 340, type: !20)
!1352 = !DILocation(line: 340, column: 6, scope: !1339)
!1353 = !DILocalVariable(name: "option_count", scope: !1339, file: !3, line: 340, type: !20)
!1354 = !DILocation(line: 340, column: 13, scope: !1339)
!1355 = !DILocalVariable(name: "new_argv", scope: !1339, file: !3, line: 341, type: !32)
!1356 = !DILocation(line: 341, column: 15, scope: !1339)
!1357 = !DILocalVariable(name: "alias_command", scope: !1339, file: !3, line: 342, type: !27)
!1358 = !DILocation(line: 342, column: 14, scope: !1339)
!1359 = !DILocalVariable(name: "alias_string", scope: !1339, file: !3, line: 343, type: !6)
!1360 = !DILocation(line: 343, column: 8, scope: !1339)
!1361 = !DILocation(line: 345, column: 20, scope: !1339)
!1362 = !DILocation(line: 345, column: 19, scope: !1339)
!1363 = !DILocation(line: 345, column: 18, scope: !1339)
!1364 = !DILocation(line: 345, column: 16, scope: !1339)
!1365 = !DILocation(line: 346, column: 30, scope: !1339)
!1366 = !DILocation(line: 346, column: 17, scope: !1339)
!1367 = !DILocation(line: 346, column: 15, scope: !1339)
!1368 = !DILocation(line: 347, column: 6, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 347, column: 6)
!1370 = !DILocation(line: 347, column: 6, scope: !1339)
!1371 = !DILocation(line: 348, column: 8, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 348, column: 7)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 347, column: 20)
!1374 = !DILocation(line: 348, column: 7, scope: !1372)
!1375 = !DILocation(line: 348, column: 14, scope: !1372)
!1376 = !DILocation(line: 348, column: 18, scope: !1372)
!1377 = !DILocation(line: 348, column: 31, scope: !1372)
!1378 = !DILocation(line: 348, column: 30, scope: !1372)
!1379 = !DILocation(line: 348, column: 29, scope: !1372)
!1380 = !DILocation(line: 348, column: 22, scope: !1372)
!1381 = !DILocation(line: 348, column: 7, scope: !1373)
!1382 = !DILocation(line: 349, column: 15, scope: !1372)
!1383 = !DILocation(line: 349, column: 23, scope: !1372)
!1384 = !DILocation(line: 350, column: 8, scope: !1372)
!1385 = !DILocation(line: 350, column: 23, scope: !1372)
!1386 = !DILocation(line: 349, column: 4, scope: !1372)
!1387 = !DILocation(line: 351, column: 7, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 351, column: 7)
!1389 = !DILocation(line: 351, column: 23, scope: !1388)
!1390 = !DILocation(line: 351, column: 7, scope: !1373)
!1391 = !DILocalVariable(name: "child", scope: !1392, file: !3, line: 352, type: !1069)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 351, column: 31)
!1393 = !DILocation(line: 352, column: 25, scope: !1392)
!1394 = !DILocalVariable(name: "nongit_ok", scope: !1392, file: !3, line: 353, type: !20)
!1395 = !DILocation(line: 353, column: 8, scope: !1392)
!1396 = !DILocation(line: 356, column: 4, scope: !1392)
!1397 = !DILocation(line: 358, column: 4, scope: !1392)
!1398 = !DILocation(line: 360, column: 10, scope: !1392)
!1399 = !DILocation(line: 360, column: 20, scope: !1392)
!1400 = !DILocation(line: 361, column: 10, scope: !1392)
!1401 = !DILocation(line: 361, column: 24, scope: !1392)
!1402 = !DILocation(line: 362, column: 10, scope: !1392)
!1403 = !DILocation(line: 362, column: 27, scope: !1392)
!1404 = !DILocation(line: 363, column: 10, scope: !1392)
!1405 = !DILocation(line: 363, column: 29, scope: !1392)
!1406 = !DILocation(line: 364, column: 23, scope: !1392)
!1407 = !DILocation(line: 364, column: 29, scope: !1392)
!1408 = !DILocation(line: 364, column: 42, scope: !1392)
!1409 = !DILocation(line: 364, column: 4, scope: !1392)
!1410 = !DILocation(line: 365, column: 24, scope: !1392)
!1411 = !DILocation(line: 365, column: 32, scope: !1392)
!1412 = !DILocation(line: 365, column: 31, scope: !1392)
!1413 = !DILocation(line: 365, column: 38, scope: !1392)
!1414 = !DILocation(line: 365, column: 4, scope: !1392)
!1415 = !DILocation(line: 367, column: 4, scope: !1392)
!1416 = !DILocation(line: 368, column: 4, scope: !1392)
!1417 = !DILocation(line: 369, column: 4, scope: !1392)
!1418 = !DILocation(line: 370, column: 4, scope: !1392)
!1419 = !DILocation(line: 372, column: 10, scope: !1392)
!1420 = !DILocation(line: 372, column: 8, scope: !1392)
!1421 = !DILocation(line: 373, column: 8, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 373, column: 8)
!1423 = !DILocation(line: 373, column: 12, scope: !1422)
!1424 = !DILocation(line: 373, column: 8, scope: !1392)
!1425 = !DILocation(line: 374, column: 5, scope: !1422)
!1426 = !DILocation(line: 376, column: 14, scope: !1392)
!1427 = !DILocation(line: 377, column: 7, scope: !1392)
!1428 = !DILocation(line: 377, column: 22, scope: !1392)
!1429 = !DILocation(line: 377, column: 35, scope: !1392)
!1430 = !DILocation(line: 376, column: 4, scope: !1392)
!1431 = !DILocation(line: 379, column: 25, scope: !1373)
!1432 = !DILocation(line: 379, column: 11, scope: !1373)
!1433 = !DILocation(line: 379, column: 9, scope: !1373)
!1434 = !DILocation(line: 380, column: 7, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 380, column: 7)
!1436 = !DILocation(line: 380, column: 13, scope: !1435)
!1437 = !DILocation(line: 380, column: 7, scope: !1373)
!1438 = !DILocation(line: 381, column: 8, scope: !1435)
!1439 = !DILocation(line: 381, column: 38, scope: !1435)
!1440 = !DILocation(line: 382, column: 33, scope: !1435)
!1441 = !DILocation(line: 382, column: 10, scope: !1435)
!1442 = !DILocation(line: 382, column: 8, scope: !1435)
!1443 = !DILocation(line: 381, column: 4, scope: !1435)
!1444 = !DILocation(line: 383, column: 18, scope: !1373)
!1445 = !DILocation(line: 383, column: 16, scope: !1373)
!1446 = !DILocation(line: 384, column: 7, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 384, column: 7)
!1448 = !DILocation(line: 384, column: 7, scope: !1373)
!1449 = !DILocation(line: 385, column: 8, scope: !1447)
!1450 = !DILocation(line: 387, column: 8, scope: !1447)
!1451 = !DILocation(line: 385, column: 4, scope: !1447)
!1452 = !DILocation(line: 388, column: 3, scope: !1373)
!1453 = !DILocation(line: 389, column: 15, scope: !1373)
!1454 = !DILocation(line: 389, column: 12, scope: !1373)
!1455 = !DILocation(line: 391, column: 7, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 391, column: 7)
!1457 = !DILocation(line: 391, column: 13, scope: !1456)
!1458 = !DILocation(line: 391, column: 7, scope: !1373)
!1459 = !DILocation(line: 392, column: 8, scope: !1456)
!1460 = !DILocation(line: 392, column: 33, scope: !1456)
!1461 = !DILocation(line: 392, column: 4, scope: !1456)
!1462 = !DILocation(line: 394, column: 15, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 394, column: 7)
!1464 = !DILocation(line: 394, column: 30, scope: !1463)
!1465 = !DILocation(line: 394, column: 8, scope: !1463)
!1466 = !DILocation(line: 394, column: 7, scope: !1373)
!1467 = !DILocation(line: 395, column: 8, scope: !1463)
!1468 = !DILocation(line: 395, column: 34, scope: !1463)
!1469 = !DILocation(line: 395, column: 4, scope: !1463)
!1470 = !DILocation(line: 397, column: 3, scope: !1373)
!1471 = !DILocation(line: 397, column: 3, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !3, line: 397, column: 3)
!1473 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 397, column: 3)
!1474 = !DILocation(line: 397, column: 3, scope: !1473)
!1475 = !DILocation(line: 401, column: 3, scope: !1373)
!1476 = !DILocation(line: 403, column: 3, scope: !1373)
!1477 = !DILocation(line: 405, column: 3, scope: !1373)
!1478 = !DILocation(line: 406, column: 3, scope: !1373)
!1479 = !DILocation(line: 407, column: 3, scope: !1373)
!1480 = !DILocation(line: 409, column: 11, scope: !1373)
!1481 = !DILocation(line: 409, column: 4, scope: !1373)
!1482 = !DILocation(line: 409, column: 9, scope: !1373)
!1483 = !DILocation(line: 410, column: 13, scope: !1373)
!1484 = !DILocation(line: 410, column: 19, scope: !1373)
!1485 = !DILocation(line: 410, column: 4, scope: !1373)
!1486 = !DILocation(line: 410, column: 10, scope: !1373)
!1487 = !DILocation(line: 412, column: 7, scope: !1373)
!1488 = !DILocation(line: 413, column: 2, scope: !1373)
!1489 = !DILocation(line: 415, column: 10, scope: !1339)
!1490 = !DILocation(line: 415, column: 2, scope: !1339)
!1491 = !DILocation(line: 415, column: 8, scope: !1339)
!1492 = !DILocation(line: 417, column: 9, scope: !1339)
!1493 = !DILocation(line: 417, column: 2, scope: !1339)
!1494 = distinct !DISubprogram(name: "move_array", scope: !194, file: !194, line: 1104, type: !1495, scopeLine: 1105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1495 = !DISubroutineType(types: !1496)
!1496 = !{null, !986, !1497, !147, !147}
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1499 = !DILocalVariable(name: "dst", arg: 1, scope: !1494, file: !194, line: 1104, type: !986)
!1500 = !DILocation(line: 1104, column: 37, scope: !1494)
!1501 = !DILocalVariable(name: "src", arg: 2, scope: !1494, file: !194, line: 1104, type: !1497)
!1502 = !DILocation(line: 1104, column: 54, scope: !1494)
!1503 = !DILocalVariable(name: "n", arg: 3, scope: !1494, file: !194, line: 1104, type: !147)
!1504 = !DILocation(line: 1104, column: 66, scope: !1494)
!1505 = !DILocalVariable(name: "size", arg: 4, scope: !1494, file: !194, line: 1104, type: !147)
!1506 = !DILocation(line: 1104, column: 76, scope: !1494)
!1507 = !DILocation(line: 1106, column: 6, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1494, file: !194, line: 1106, column: 6)
!1509 = !DILocation(line: 1106, column: 6, scope: !1494)
!1510 = !DILocation(line: 1107, column: 3, scope: !1508)
!1511 = !DILocation(line: 1108, column: 1, scope: !1494)
!1512 = distinct !DISubprogram(name: "st_mult", scope: !194, file: !194, line: 990, type: !1513, scopeLine: 991, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!147, !147, !147}
!1515 = !DILocalVariable(name: "a", arg: 1, scope: !1512, file: !194, line: 990, type: !147)
!1516 = !DILocation(line: 990, column: 37, scope: !1512)
!1517 = !DILocalVariable(name: "b", arg: 2, scope: !1512, file: !194, line: 990, type: !147)
!1518 = !DILocation(line: 990, column: 47, scope: !1512)
!1519 = !DILocation(line: 992, column: 6, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1512, file: !194, line: 992, column: 6)
!1521 = !DILocation(line: 992, column: 6, scope: !1512)
!1522 = !DILocation(line: 994, column: 18, scope: !1520)
!1523 = !DILocation(line: 994, column: 32, scope: !1520)
!1524 = !DILocation(line: 993, column: 3, scope: !1520)
!1525 = !DILocation(line: 995, column: 9, scope: !1512)
!1526 = !DILocation(line: 995, column: 13, scope: !1512)
!1527 = !DILocation(line: 995, column: 11, scope: !1512)
!1528 = !DILocation(line: 995, column: 2, scope: !1512)
!1529 = distinct !DISubprogram(name: "copy_array", scope: !194, file: !194, line: 1096, type: !1495, scopeLine: 1097, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1530 = !DILocalVariable(name: "dst", arg: 1, scope: !1529, file: !194, line: 1096, type: !986)
!1531 = !DILocation(line: 1096, column: 37, scope: !1529)
!1532 = !DILocalVariable(name: "src", arg: 2, scope: !1529, file: !194, line: 1096, type: !1497)
!1533 = !DILocation(line: 1096, column: 54, scope: !1529)
!1534 = !DILocalVariable(name: "n", arg: 3, scope: !1529, file: !194, line: 1096, type: !147)
!1535 = !DILocation(line: 1096, column: 66, scope: !1529)
!1536 = !DILocalVariable(name: "size", arg: 4, scope: !1529, file: !194, line: 1096, type: !147)
!1537 = !DILocation(line: 1096, column: 76, scope: !1529)
!1538 = !DILocation(line: 1098, column: 6, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1529, file: !194, line: 1098, column: 6)
!1540 = !DILocation(line: 1098, column: 6, scope: !1529)
!1541 = !DILocation(line: 1099, column: 3, scope: !1539)
!1542 = !DILocation(line: 1100, column: 1, scope: !1529)
!1543 = distinct !DISubprogram(name: "list_builtins", scope: !3, file: !3, line: 651, type: !1544, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !1546, !34}
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!1547 = !DILocalVariable(name: "out", arg: 1, scope: !1543, file: !3, line: 651, type: !1546)
!1548 = !DILocation(line: 651, column: 47, scope: !1543)
!1549 = !DILocalVariable(name: "exclude_option", arg: 2, scope: !1543, file: !3, line: 651, type: !34)
!1550 = !DILocation(line: 651, column: 65, scope: !1543)
!1551 = !DILocalVariable(name: "i", scope: !1543, file: !3, line: 653, type: !20)
!1552 = !DILocation(line: 653, column: 6, scope: !1543)
!1553 = !DILocation(line: 654, column: 9, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 654, column: 2)
!1555 = !DILocation(line: 654, column: 7, scope: !1554)
!1556 = !DILocation(line: 654, column: 14, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 654, column: 2)
!1558 = !DILocation(line: 654, column: 16, scope: !1557)
!1559 = !DILocation(line: 654, column: 2, scope: !1554)
!1560 = !DILocation(line: 655, column: 7, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !3, line: 655, column: 7)
!1562 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 654, column: 45)
!1563 = !DILocation(line: 655, column: 22, scope: !1561)
!1564 = !DILocation(line: 656, column: 17, scope: !1561)
!1565 = !DILocation(line: 656, column: 8, scope: !1561)
!1566 = !DILocation(line: 656, column: 20, scope: !1561)
!1567 = !DILocation(line: 656, column: 29, scope: !1561)
!1568 = !DILocation(line: 656, column: 27, scope: !1561)
!1569 = !DILocation(line: 655, column: 7, scope: !1562)
!1570 = !DILocation(line: 657, column: 4, scope: !1561)
!1571 = !DILocation(line: 658, column: 22, scope: !1562)
!1572 = !DILocation(line: 658, column: 36, scope: !1562)
!1573 = !DILocation(line: 658, column: 27, scope: !1562)
!1574 = !DILocation(line: 658, column: 39, scope: !1562)
!1575 = !DILocation(line: 658, column: 3, scope: !1562)
!1576 = !DILocation(line: 659, column: 2, scope: !1562)
!1577 = !DILocation(line: 654, column: 41, scope: !1557)
!1578 = !DILocation(line: 654, column: 2, scope: !1557)
!1579 = distinct !{!1579, !1559, !1580, !129}
!1580 = !DILocation(line: 659, column: 2, scope: !1554)
!1581 = !DILocation(line: 660, column: 1, scope: !1543)
!1582 = distinct !DISubprogram(name: "list_cmds", scope: !3, file: !3, line: 64, type: !87, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1583 = !DILocalVariable(name: "spec", arg: 1, scope: !1582, file: !3, line: 64, type: !27)
!1584 = !DILocation(line: 64, column: 34, scope: !1582)
!1585 = !DILocalVariable(name: "list", scope: !1582, file: !3, line: 66, type: !977)
!1586 = !DILocation(line: 66, column: 21, scope: !1582)
!1587 = !DILocalVariable(name: "i", scope: !1582, file: !3, line: 67, type: !20)
!1588 = !DILocation(line: 67, column: 6, scope: !1582)
!1589 = !DILocalVariable(name: "nongit", scope: !1582, file: !3, line: 68, type: !20)
!1590 = !DILocation(line: 68, column: 6, scope: !1582)
!1591 = !DILocation(line: 74, column: 2, scope: !1582)
!1592 = !DILocation(line: 76, column: 2, scope: !1582)
!1593 = !DILocation(line: 76, column: 10, scope: !1582)
!1594 = !DILocation(line: 76, column: 9, scope: !1582)
!1595 = !DILocalVariable(name: "sep", scope: !1596, file: !3, line: 77, type: !27)
!1596 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 76, column: 16)
!1597 = !DILocation(line: 77, column: 15, scope: !1596)
!1598 = !DILocation(line: 77, column: 31, scope: !1596)
!1599 = !DILocation(line: 77, column: 21, scope: !1596)
!1600 = !DILocalVariable(name: "len", scope: !1596, file: !3, line: 78, type: !20)
!1601 = !DILocation(line: 78, column: 7, scope: !1596)
!1602 = !DILocation(line: 78, column: 13, scope: !1596)
!1603 = !DILocation(line: 78, column: 19, scope: !1596)
!1604 = !DILocation(line: 78, column: 17, scope: !1596)
!1605 = !DILocation(line: 80, column: 19, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 80, column: 7)
!1607 = !DILocation(line: 80, column: 25, scope: !1606)
!1608 = !DILocation(line: 80, column: 7, scope: !1606)
!1609 = !DILocation(line: 80, column: 7, scope: !1596)
!1610 = !DILocation(line: 81, column: 4, scope: !1606)
!1611 = !DILocation(line: 82, column: 24, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 82, column: 12)
!1613 = !DILocation(line: 82, column: 30, scope: !1612)
!1614 = !DILocation(line: 82, column: 12, scope: !1612)
!1615 = !DILocation(line: 82, column: 12, scope: !1606)
!1616 = !DILocation(line: 83, column: 4, scope: !1612)
!1617 = !DILocation(line: 84, column: 24, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 84, column: 12)
!1619 = !DILocation(line: 84, column: 30, scope: !1618)
!1620 = !DILocation(line: 84, column: 12, scope: !1618)
!1621 = !DILocation(line: 84, column: 12, scope: !1612)
!1622 = !DILocation(line: 85, column: 4, scope: !1618)
!1623 = !DILocation(line: 86, column: 24, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 86, column: 12)
!1625 = !DILocation(line: 86, column: 30, scope: !1624)
!1626 = !DILocation(line: 86, column: 12, scope: !1624)
!1627 = !DILocation(line: 86, column: 12, scope: !1618)
!1628 = !DILocation(line: 87, column: 4, scope: !1624)
!1629 = !DILocation(line: 88, column: 24, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 88, column: 12)
!1631 = !DILocation(line: 88, column: 30, scope: !1630)
!1632 = !DILocation(line: 88, column: 12, scope: !1630)
!1633 = !DILocation(line: 88, column: 12, scope: !1624)
!1634 = !DILocation(line: 89, column: 4, scope: !1630)
!1635 = !DILocation(line: 90, column: 24, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 90, column: 12)
!1637 = !DILocation(line: 90, column: 30, scope: !1636)
!1638 = !DILocation(line: 90, column: 12, scope: !1636)
!1639 = !DILocation(line: 90, column: 12, scope: !1630)
!1640 = !DILocation(line: 91, column: 4, scope: !1636)
!1641 = !DILocation(line: 92, column: 12, scope: !1642)
!1642 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 92, column: 12)
!1643 = !DILocation(line: 92, column: 16, scope: !1642)
!1644 = !DILocation(line: 92, column: 20, scope: !1642)
!1645 = !DILocation(line: 92, column: 32, scope: !1642)
!1646 = !DILocation(line: 92, column: 24, scope: !1642)
!1647 = !DILocation(line: 92, column: 12, scope: !1636)
!1648 = !DILocalVariable(name: "sb", scope: !1649, file: !3, line: 93, type: !1180)
!1649 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 92, column: 51)
!1650 = !DILocation(line: 93, column: 18, scope: !1649)
!1651 = !DILocation(line: 95, column: 20, scope: !1649)
!1652 = !DILocation(line: 95, column: 25, scope: !1649)
!1653 = !DILocation(line: 95, column: 30, scope: !1649)
!1654 = !DILocation(line: 95, column: 34, scope: !1649)
!1655 = !DILocation(line: 95, column: 4, scope: !1649)
!1656 = !DILocation(line: 96, column: 36, scope: !1649)
!1657 = !DILocation(line: 96, column: 4, scope: !1649)
!1658 = !DILocation(line: 97, column: 4, scope: !1649)
!1659 = !DILocation(line: 98, column: 3, scope: !1649)
!1660 = !DILocation(line: 100, column: 8, scope: !1642)
!1661 = !DILocation(line: 100, column: 52, scope: !1642)
!1662 = !DILocation(line: 100, column: 4, scope: !1642)
!1663 = !DILocation(line: 101, column: 11, scope: !1596)
!1664 = !DILocation(line: 101, column: 8, scope: !1596)
!1665 = !DILocation(line: 102, column: 8, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 102, column: 7)
!1667 = !DILocation(line: 102, column: 7, scope: !1666)
!1668 = !DILocation(line: 102, column: 13, scope: !1666)
!1669 = !DILocation(line: 102, column: 7, scope: !1596)
!1670 = !DILocation(line: 103, column: 8, scope: !1666)
!1671 = !DILocation(line: 103, column: 4, scope: !1666)
!1672 = distinct !{!1672, !1592, !1673, !129}
!1673 = !DILocation(line: 104, column: 2, scope: !1582)
!1674 = !DILocation(line: 105, column: 9, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 105, column: 2)
!1676 = !DILocation(line: 105, column: 7, scope: !1675)
!1677 = !DILocation(line: 105, column: 14, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1675, file: !3, line: 105, column: 2)
!1679 = !DILocation(line: 105, column: 23, scope: !1678)
!1680 = !DILocation(line: 105, column: 16, scope: !1678)
!1681 = !DILocation(line: 105, column: 2, scope: !1675)
!1682 = !DILocation(line: 106, column: 13, scope: !1678)
!1683 = !DILocation(line: 106, column: 19, scope: !1678)
!1684 = !DILocation(line: 106, column: 8, scope: !1678)
!1685 = !DILocation(line: 106, column: 22, scope: !1678)
!1686 = !DILocation(line: 106, column: 3, scope: !1678)
!1687 = !DILocation(line: 105, column: 28, scope: !1678)
!1688 = !DILocation(line: 105, column: 2, scope: !1678)
!1689 = distinct !{!1689, !1681, !1690, !129}
!1690 = !DILocation(line: 106, column: 28, scope: !1675)
!1691 = !DILocation(line: 107, column: 2, scope: !1582)
!1692 = !DILocation(line: 108, column: 2, scope: !1582)
!1693 = distinct !DISubprogram(name: "gitstrchrnul", scope: !194, file: !194, line: 959, type: !1694, scopeLine: 960, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!6, !27, !20}
!1696 = !DILocalVariable(name: "s", arg: 1, scope: !1693, file: !194, line: 959, type: !27)
!1697 = !DILocation(line: 959, column: 46, scope: !1693)
!1698 = !DILocalVariable(name: "c", arg: 2, scope: !1693, file: !194, line: 959, type: !20)
!1699 = !DILocation(line: 959, column: 53, scope: !1693)
!1700 = !DILocation(line: 961, column: 2, scope: !1693)
!1701 = !DILocation(line: 961, column: 10, scope: !1693)
!1702 = !DILocation(line: 961, column: 9, scope: !1693)
!1703 = !DILocation(line: 961, column: 12, scope: !1693)
!1704 = !DILocation(line: 961, column: 16, scope: !1693)
!1705 = !DILocation(line: 961, column: 15, scope: !1693)
!1706 = !DILocation(line: 961, column: 21, scope: !1693)
!1707 = !DILocation(line: 961, column: 18, scope: !1693)
!1708 = !DILocation(line: 0, scope: !1693)
!1709 = !DILocation(line: 962, column: 4, scope: !1693)
!1710 = distinct !{!1710, !1700, !1709, !129}
!1711 = !DILocation(line: 963, column: 17, scope: !1693)
!1712 = !DILocation(line: 963, column: 2, scope: !1693)
!1713 = distinct !DISubprogram(name: "match_token", scope: !3, file: !3, line: 57, type: !1714, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!20, !27, !20, !27}
!1716 = !DILocalVariable(name: "spec", arg: 1, scope: !1713, file: !3, line: 57, type: !27)
!1717 = !DILocation(line: 57, column: 36, scope: !1713)
!1718 = !DILocalVariable(name: "len", arg: 2, scope: !1713, file: !3, line: 57, type: !20)
!1719 = !DILocation(line: 57, column: 46, scope: !1713)
!1720 = !DILocalVariable(name: "token", arg: 3, scope: !1713, file: !3, line: 57, type: !27)
!1721 = !DILocation(line: 57, column: 63, scope: !1713)
!1722 = !DILocalVariable(name: "token_len", scope: !1713, file: !3, line: 59, type: !20)
!1723 = !DILocation(line: 59, column: 6, scope: !1713)
!1724 = !DILocation(line: 59, column: 25, scope: !1713)
!1725 = !DILocation(line: 59, column: 18, scope: !1713)
!1726 = !DILocation(line: 61, column: 9, scope: !1713)
!1727 = !DILocation(line: 61, column: 16, scope: !1713)
!1728 = !DILocation(line: 61, column: 13, scope: !1713)
!1729 = !DILocation(line: 61, column: 26, scope: !1713)
!1730 = !DILocation(line: 61, column: 38, scope: !1713)
!1731 = !DILocation(line: 61, column: 44, scope: !1713)
!1732 = !DILocation(line: 61, column: 51, scope: !1713)
!1733 = !DILocation(line: 61, column: 30, scope: !1713)
!1734 = !DILocation(line: 61, column: 29, scope: !1713)
!1735 = !DILocation(line: 0, scope: !1713)
!1736 = !DILocation(line: 61, column: 2, scope: !1713)
!1737 = distinct !DISubprogram(name: "exclude_helpers_from_list", scope: !3, file: !3, line: 45, type: !1738, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null, !1546}
!1740 = !DILocalVariable(name: "list", arg: 1, scope: !1737, file: !3, line: 45, type: !1546)
!1741 = !DILocation(line: 45, column: 59, scope: !1737)
!1742 = !DILocalVariable(name: "i", scope: !1737, file: !3, line: 47, type: !20)
!1743 = !DILocation(line: 47, column: 6, scope: !1737)
!1744 = !DILocation(line: 49, column: 2, scope: !1737)
!1745 = !DILocation(line: 49, column: 9, scope: !1737)
!1746 = !DILocation(line: 49, column: 13, scope: !1737)
!1747 = !DILocation(line: 49, column: 19, scope: !1737)
!1748 = !DILocation(line: 49, column: 11, scope: !1737)
!1749 = !DILocation(line: 50, column: 14, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 50, column: 7)
!1751 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 49, column: 23)
!1752 = !DILocation(line: 50, column: 20, scope: !1750)
!1753 = !DILocation(line: 50, column: 26, scope: !1750)
!1754 = !DILocation(line: 50, column: 29, scope: !1750)
!1755 = !DILocation(line: 50, column: 7, scope: !1750)
!1756 = !DILocation(line: 50, column: 7, scope: !1751)
!1757 = !DILocation(line: 51, column: 37, scope: !1750)
!1758 = !DILocation(line: 51, column: 43, scope: !1750)
!1759 = !DILocation(line: 51, column: 4, scope: !1750)
!1760 = !DILocation(line: 53, column: 5, scope: !1750)
!1761 = distinct !{!1761, !1744, !1762, !129}
!1762 = !DILocation(line: 54, column: 2, scope: !1737)
!1763 = !DILocation(line: 55, column: 1, scope: !1737)
!1764 = distinct !DISubprogram(name: "run_builtin", scope: !3, file: !3, line: 420, type: !1765, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1765 = !DISubroutineType(types: !1766)
!1766 = !{!20, !99, !20, !32}
!1767 = !DILocalVariable(name: "p", arg: 1, scope: !1764, file: !3, line: 420, type: !99)
!1768 = !DILocation(line: 420, column: 43, scope: !1764)
!1769 = !DILocalVariable(name: "argc", arg: 2, scope: !1764, file: !3, line: 420, type: !20)
!1770 = !DILocation(line: 420, column: 50, scope: !1764)
!1771 = !DILocalVariable(name: "argv", arg: 3, scope: !1764, file: !3, line: 420, type: !32)
!1772 = !DILocation(line: 420, column: 69, scope: !1764)
!1773 = !DILocalVariable(name: "status", scope: !1764, file: !3, line: 422, type: !20)
!1774 = !DILocation(line: 422, column: 6, scope: !1764)
!1775 = !DILocalVariable(name: "help", scope: !1764, file: !3, line: 422, type: !20)
!1776 = !DILocation(line: 422, column: 14, scope: !1764)
!1777 = !DILocalVariable(name: "st", scope: !1764, file: !3, line: 423, type: !1778)
!1778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1779, line: 182, size: 1152, elements: !1780)
!1779 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/stat.h", directory: "")
!1780 = !{!1781, !1785, !1791, !1794, !1797, !1802, !1806, !1807, !1815, !1816, !1817, !1818, !1824, !1828, !1832, !1833, !1834, !1835}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1778, file: !1779, line: 182, baseType: !1782, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !1783, line: 31, baseType: !1784)
!1783 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h", directory: "")
!1784 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !1078, line: 57, baseType: !1079)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1778, file: !1779, line: 182, baseType: !1786, size: 16, offset: 32)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1787, line: 31, baseType: !1788)
!1787 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h", directory: "")
!1788 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !1078, line: 70, baseType: !1789)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !150, line: 45, baseType: !1790)
!1790 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1778, file: !1779, line: 182, baseType: !1792, size: 16, offset: 48)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !1793, line: 31, baseType: !1789)
!1793 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_nlink_t.h", directory: "")
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1778, file: !1779, line: 182, baseType: !1795, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !1078, line: 62, baseType: !1796)
!1796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !150, line: 49, baseType: !1084)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1778, file: !1779, line: 182, baseType: !1798, size: 32, offset: 128)
!1798 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1799, line: 31, baseType: !1800)
!1799 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h", directory: "")
!1800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !1078, line: 75, baseType: !1801)
!1801 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !150, line: 47, baseType: !34)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1778, file: !1779, line: 182, baseType: !1803, size: 32, offset: 160)
!1803 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1804, line: 31, baseType: !1805)
!1804 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h", directory: "")
!1805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !1078, line: 60, baseType: !1801)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1778, file: !1779, line: 182, baseType: !1782, size: 32, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !1778, file: !1779, line: 182, baseType: !1808, size: 128, offset: 256)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1809, line: 33, size: 128, elements: !1810)
!1809 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h", directory: "")
!1810 = !{!1811, !1814}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1808, file: !1809, line: 35, baseType: !1812, size: 64)
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !150, line: 122, baseType: !1813)
!1813 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1808, file: !1809, line: 36, baseType: !1813, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !1778, file: !1779, line: 182, baseType: !1808, size: 128, offset: 384)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !1778, file: !1779, line: 182, baseType: !1808, size: 128, offset: 512)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !1778, file: !1779, line: 182, baseType: !1808, size: 128, offset: 640)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1778, file: !1779, line: 182, baseType: !1819, size: 64, offset: 768)
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1820, line: 31, baseType: !1821)
!1820 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h", directory: "")
!1821 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !1078, line: 71, baseType: !1822)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !150, line: 48, baseType: !1823)
!1823 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1778, file: !1779, line: 182, baseType: !1825, size: 64, offset: 832)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !1826, line: 31, baseType: !1827)
!1826 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blkcnt_t.h", directory: "")
!1827 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !1078, line: 55, baseType: !1822)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1778, file: !1779, line: 182, baseType: !1829, size: 32, offset: 896)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !1830, line: 31, baseType: !1831)
!1830 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blksize_t.h", directory: "")
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !1078, line: 56, baseType: !1079)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !1778, file: !1779, line: 182, baseType: !1801, size: 32, offset: 928)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !1778, file: !1779, line: 182, baseType: !1801, size: 32, offset: 960)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !1778, file: !1779, line: 182, baseType: !1079, size: 32, offset: 992)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !1778, file: !1779, line: 182, baseType: !1836, size: 128, offset: 1024)
!1836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1822, size: 128, elements: !1837)
!1837 = !{!1838}
!1838 = !DISubrange(count: 2)
!1839 = !DILocation(line: 423, column: 14, scope: !1764)
!1840 = !DILocalVariable(name: "prefix", scope: !1764, file: !3, line: 424, type: !27)
!1841 = !DILocation(line: 424, column: 14, scope: !1764)
!1842 = !DILocalVariable(name: "run_setup", scope: !1764, file: !3, line: 425, type: !20)
!1843 = !DILocation(line: 425, column: 6, scope: !1764)
!1844 = !DILocation(line: 425, column: 19, scope: !1764)
!1845 = !DILocation(line: 425, column: 22, scope: !1764)
!1846 = !DILocation(line: 425, column: 29, scope: !1764)
!1847 = !DILocation(line: 427, column: 9, scope: !1764)
!1848 = !DILocation(line: 427, column: 14, scope: !1764)
!1849 = !DILocation(line: 427, column: 19, scope: !1764)
!1850 = !DILocation(line: 427, column: 30, scope: !1764)
!1851 = !DILocation(line: 427, column: 23, scope: !1764)
!1852 = !DILocation(line: 427, column: 22, scope: !1764)
!1853 = !DILocation(line: 0, scope: !1764)
!1854 = !DILocation(line: 427, column: 7, scope: !1764)
!1855 = !DILocation(line: 428, column: 6, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 428, column: 6)
!1857 = !DILocation(line: 428, column: 11, scope: !1856)
!1858 = !DILocation(line: 428, column: 15, scope: !1856)
!1859 = !DILocation(line: 428, column: 25, scope: !1856)
!1860 = !DILocation(line: 428, column: 6, scope: !1764)
!1861 = !DILocation(line: 430, column: 13, scope: !1856)
!1862 = !DILocation(line: 430, column: 3, scope: !1856)
!1863 = !DILocation(line: 432, column: 6, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 432, column: 6)
!1865 = !DILocation(line: 432, column: 16, scope: !1864)
!1866 = !DILocation(line: 432, column: 6, scope: !1764)
!1867 = !DILocation(line: 433, column: 12, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 432, column: 29)
!1869 = !DILocation(line: 433, column: 10, scope: !1868)
!1870 = !DILocation(line: 434, column: 2, scope: !1868)
!1871 = !DILocation(line: 434, column: 13, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 434, column: 13)
!1873 = !DILocation(line: 434, column: 23, scope: !1872)
!1874 = !DILocation(line: 434, column: 13, scope: !1864)
!1875 = !DILocalVariable(name: "nongit_ok", scope: !1876, file: !3, line: 435, type: !20)
!1876 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 434, column: 43)
!1877 = !DILocation(line: 435, column: 7, scope: !1876)
!1878 = !DILocation(line: 436, column: 12, scope: !1876)
!1879 = !DILocation(line: 436, column: 10, scope: !1876)
!1880 = !DILocation(line: 437, column: 2, scope: !1876)
!1881 = !DILocation(line: 438, column: 10, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 437, column: 9)
!1883 = !DILocation(line: 440, column: 2, scope: !1764)
!1884 = !DILocation(line: 441, column: 25, scope: !1764)
!1885 = !DILocation(line: 441, column: 31, scope: !1764)
!1886 = !DILocation(line: 441, column: 2, scope: !1764)
!1887 = !DILocation(line: 442, column: 6, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 442, column: 6)
!1889 = !DILocation(line: 442, column: 16, scope: !1888)
!1890 = !DILocation(line: 442, column: 22, scope: !1888)
!1891 = !DILocation(line: 442, column: 25, scope: !1888)
!1892 = !DILocation(line: 442, column: 35, scope: !1888)
!1893 = !DILocation(line: 443, column: 5, scope: !1888)
!1894 = !DILocation(line: 443, column: 8, scope: !1888)
!1895 = !DILocation(line: 443, column: 15, scope: !1888)
!1896 = !DILocation(line: 442, column: 6, scope: !1764)
!1897 = !DILocation(line: 444, column: 34, scope: !1888)
!1898 = !DILocation(line: 444, column: 37, scope: !1888)
!1899 = !DILocation(line: 444, column: 15, scope: !1888)
!1900 = !DILocation(line: 444, column: 13, scope: !1888)
!1901 = !DILocation(line: 444, column: 3, scope: !1888)
!1902 = !DILocation(line: 445, column: 6, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 445, column: 6)
!1904 = !DILocation(line: 445, column: 16, scope: !1903)
!1905 = !DILocation(line: 445, column: 22, scope: !1903)
!1906 = !DILocation(line: 445, column: 25, scope: !1903)
!1907 = !DILocation(line: 445, column: 28, scope: !1903)
!1908 = !DILocation(line: 445, column: 35, scope: !1903)
!1909 = !DILocation(line: 445, column: 6, scope: !1764)
!1910 = !DILocation(line: 446, column: 13, scope: !1903)
!1911 = !DILocation(line: 446, column: 3, scope: !1903)
!1912 = !DILocation(line: 447, column: 6, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 447, column: 6)
!1914 = !DILocation(line: 447, column: 16, scope: !1913)
!1915 = !DILocation(line: 447, column: 19, scope: !1913)
!1916 = !DILocation(line: 447, column: 33, scope: !1913)
!1917 = !DILocation(line: 447, column: 6, scope: !1764)
!1918 = !DILocation(line: 449, column: 20, scope: !1913)
!1919 = !DILocation(line: 449, column: 3, scope: !1913)
!1920 = !DILocation(line: 450, column: 2, scope: !1764)
!1921 = !DILocation(line: 452, column: 7, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 452, column: 6)
!1923 = !DILocation(line: 452, column: 12, scope: !1922)
!1924 = !DILocation(line: 452, column: 15, scope: !1922)
!1925 = !DILocation(line: 452, column: 6, scope: !1764)
!1926 = !DILocation(line: 453, column: 9, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 453, column: 7)
!1928 = distinct !DILexicalBlock(scope: !1922, file: !3, line: 452, column: 35)
!1929 = !DILocation(line: 453, column: 12, scope: !1927)
!1930 = !DILocation(line: 453, column: 19, scope: !1927)
!1931 = !DILocation(line: 453, column: 7, scope: !1928)
!1932 = !DILocation(line: 454, column: 8, scope: !1927)
!1933 = !DILocation(line: 454, column: 48, scope: !1927)
!1934 = !DILocation(line: 454, column: 51, scope: !1927)
!1935 = !DILocation(line: 454, column: 4, scope: !1927)
!1936 = !DILocation(line: 455, column: 2, scope: !1928)
!1937 = !DILocation(line: 457, column: 7, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 457, column: 6)
!1939 = !DILocation(line: 457, column: 12, scope: !1938)
!1940 = !DILocation(line: 457, column: 15, scope: !1938)
!1941 = !DILocation(line: 457, column: 18, scope: !1938)
!1942 = !DILocation(line: 457, column: 25, scope: !1938)
!1943 = !DILocation(line: 457, column: 6, scope: !1764)
!1944 = !DILocation(line: 458, column: 3, scope: !1938)
!1945 = !DILocation(line: 460, column: 2, scope: !1764)
!1946 = !DILocation(line: 460, column: 2, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 460, column: 2)
!1948 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 460, column: 2)
!1949 = !DILocation(line: 460, column: 2, scope: !1948)
!1950 = !DILocation(line: 461, column: 2, scope: !1764)
!1951 = !DILocation(line: 462, column: 2, scope: !1764)
!1952 = !DILocation(line: 463, column: 2, scope: !1764)
!1953 = !DILocation(line: 465, column: 25, scope: !1764)
!1954 = !DILocation(line: 465, column: 41, scope: !1764)
!1955 = !DILocation(line: 465, column: 2, scope: !1764)
!1956 = !DILocation(line: 466, column: 11, scope: !1764)
!1957 = !DILocation(line: 466, column: 14, scope: !1764)
!1958 = !DILocation(line: 466, column: 17, scope: !1764)
!1959 = !DILocation(line: 466, column: 23, scope: !1764)
!1960 = !DILocation(line: 466, column: 29, scope: !1764)
!1961 = !DILocation(line: 466, column: 9, scope: !1764)
!1962 = !DILocation(line: 467, column: 25, scope: !1764)
!1963 = !DILocation(line: 467, column: 41, scope: !1764)
!1964 = !DILocation(line: 467, column: 2, scope: !1764)
!1965 = !DILocation(line: 469, column: 6, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 469, column: 6)
!1967 = !DILocation(line: 469, column: 6, scope: !1764)
!1968 = !DILocation(line: 470, column: 10, scope: !1966)
!1969 = !DILocation(line: 470, column: 3, scope: !1966)
!1970 = !DILocation(line: 473, column: 19, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 473, column: 6)
!1972 = !DILocation(line: 473, column: 12, scope: !1971)
!1973 = !DILocation(line: 473, column: 6, scope: !1971)
!1974 = !DILocation(line: 473, column: 6, scope: !1764)
!1975 = !DILocation(line: 474, column: 3, scope: !1971)
!1976 = !DILocation(line: 476, column: 6, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 476, column: 6)
!1978 = !DILocation(line: 476, column: 27, scope: !1977)
!1979 = !DILocation(line: 476, column: 30, scope: !1977)
!1980 = !DILocation(line: 476, column: 6, scope: !1764)
!1981 = !DILocation(line: 477, column: 3, scope: !1977)
!1982 = !DILocation(line: 480, column: 13, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 480, column: 6)
!1984 = !DILocation(line: 480, column: 6, scope: !1983)
!1985 = !DILocation(line: 480, column: 6, scope: !1764)
!1986 = !DILocation(line: 481, column: 13, scope: !1983)
!1987 = !DILocation(line: 481, column: 3, scope: !1983)
!1988 = !DILocation(line: 482, column: 13, scope: !1989)
!1989 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 482, column: 6)
!1990 = !DILocation(line: 482, column: 6, scope: !1989)
!1991 = !DILocation(line: 482, column: 6, scope: !1764)
!1992 = !DILocation(line: 483, column: 7, scope: !1989)
!1993 = !DILocation(line: 483, column: 3, scope: !1989)
!1994 = !DILocation(line: 484, column: 13, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1764, file: !3, line: 484, column: 6)
!1996 = !DILocation(line: 484, column: 6, scope: !1995)
!1997 = !DILocation(line: 484, column: 6, scope: !1764)
!1998 = !DILocation(line: 485, column: 13, scope: !1995)
!1999 = !DILocation(line: 485, column: 3, scope: !1995)
!2000 = !DILocation(line: 486, column: 2, scope: !1764)
!2001 = !DILocation(line: 487, column: 1, scope: !1764)
