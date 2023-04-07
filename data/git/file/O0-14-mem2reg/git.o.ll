; ModuleID = 'O0-14-mem2reg/git.o.bc'
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
@git_more_info_string = constant [231 x i8] c"'git help -a' and 'git help -g' list available subcommands and some\0Aconcept guides. See 'git help <command>' or 'git help <concept>'\0Ato read about a specific subcommand or concept.\0ASee 'git help git' for an overview of the system.\00", align 16, !dbg !11
@use_pager = internal global i32 -1, align 4, !dbg !17
@.str = private unnamed_addr constant [5 x i8] c"git-\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"git.c\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"prefix '%s' must start with 'git-'\00", align 1
@commands = internal global [141 x %struct.cmd_struct] [%struct.cmd_struct { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_add, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_am, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_annotate, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_apply, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_archive, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_bisect__helper, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_blame, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_branch, i32 33 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_bugreport, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_bundle, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_cat_file, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_check_attr, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_check_ignore, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_check_mailmap, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_check_ref_format, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_checkout, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_checkout__worker, i32 25 }, %struct.cmd_struct { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.34, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_checkout_index, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_cherry, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_cherry_pick, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_clean, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_clone, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_column, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_commit, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.41, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_commit_graph, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_commit_tree, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_config, i32 34 }, %struct.cmd_struct { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.44, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_count_objects, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_credential, i32 66 }, %struct.cmd_struct { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_credential_cache, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_credential_cache_daemon, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.48, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_credential_store, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.49, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_describe, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_diagnose, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.51, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_diff, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_diff_files, i32 73 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.53, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_diff_index, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_diff_tree, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_difftool, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_env__helper, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.57, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_fast_export, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_fast_import, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_fetch, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_fetch_pack, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_fmt_merge_msg, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.62, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_for_each_ref, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.63, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_for_each_repo, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.64, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_format_patch, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.65, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_fsck, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_fsck, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.67, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_fsmonitor__daemon, i32 17 }, %struct.cmd_struct { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_gc, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.69, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_get_tar_commit_id, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.70, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_grep, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_hash_object, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_help, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.72, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_hook, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_index_pack, i32 66 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.74, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_init_db, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.75, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_init_db, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.76, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_interpret_trailers, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.77, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_log, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.78, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_ls_files, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_ls_remote, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.80, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_ls_tree, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.81, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_mailinfo, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.82, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_mailsplit, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.83, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_maintenance, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.85, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_base, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.86, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_file, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.87, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_index, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.88, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_ours, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.89, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_recursive, i32 73 }, %struct.cmd_struct { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.90, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_recursive, i32 73 }, %struct.cmd_struct { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.91, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_recursive, i32 73 }, %struct.cmd_struct { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.92, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_recursive, i32 73 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.93, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_merge_tree, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.94, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_mktag, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_mktree, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.96, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_multi_pack_index, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.97, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_mv, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.98, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_name_rev, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_notes, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.100, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_pack_objects, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.101, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_pack_redundant, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.102, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_pack_refs, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_patch_id, i32 66 }, %struct.cmd_struct { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.104, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_blame, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.105, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_prune, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.106, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_prune_packed, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.107, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_pull, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.108, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_push, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.109, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_range_diff, i32 5 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.110, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_read_tree, i32 17 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.111, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_rebase, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.112, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_receive_pack, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.113, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_reflog, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.114, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_remote, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.115, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_remote_ext, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.116, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_remote_fd, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_repack, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.118, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_replace, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.119, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_rerere, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.120, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_reset, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.121, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_restore, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.122, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_rev_list, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.123, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_rev_parse, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.124, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_revert, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.125, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_rm, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_send_pack, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.127, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_shortlog, i32 6 }, %struct.cmd_struct { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_show, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_show_branch, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.130, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_show_index, i32 2 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.131, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_show_ref, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.132, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_sparse_checkout, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.133, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_add, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.134, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_stash, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_status, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.136, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_stripspace, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.137, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_submodule__helper, i32 17 }, %struct.cmd_struct { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.138, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_switch, i32 9 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.139, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_symbolic_ref, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.140, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_tag, i32 33 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.141, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_unpack_file, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.142, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_unpack_objects, i32 65 }, %struct.cmd_struct { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.143, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_update_index, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.144, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_update_ref, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.145, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_update_server_info, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.146, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_upload_archive, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.147, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_upload_archive_writer, i32 64 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.148, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_upload_pack, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.149, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_var, i32 66 }, %struct.cmd_struct { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.150, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_verify_commit, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_verify_pack, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.152, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_verify_tag, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_version, i32 0 }, %struct.cmd_struct { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.153, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_whatchanged, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.154, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_worktree, i32 1 }, %struct.cmd_struct { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.155, i32 0, i32 0), i32 (i32, i8**, i8*)* @cmd_write_tree, i32 1 }], align 16, !dbg !20
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
define void @setup_auto_pager(i8* noundef %cmd, i32 noundef %def) #0 !dbg !47 {
entry:
  call void @llvm.dbg.value(metadata i8* %cmd, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.value(metadata i32 %def, metadata !53, metadata !DIExpression()), !dbg !52
  %0 = load i32, i32* @use_pager, align 4, !dbg !54
  %cmp = icmp ne i32 %0, -1, !dbg !56
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !57

lor.lhs.false:                                    ; preds = %entry
  %call = call i32 @pager_in_use(), !dbg !58
  %tobool = icmp ne i32 %call, 0, !dbg !58
  br i1 %tobool, label %if.then, label %if.end, !dbg !59

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !60

if.end:                                           ; preds = %lor.lhs.false
  %call1 = call i32 @check_pager_config(i8* noundef %cmd), !dbg !61
  store i32 %call1, i32* @use_pager, align 4, !dbg !62
  %1 = load i32, i32* @use_pager, align 4, !dbg !63
  %cmp2 = icmp eq i32 %1, -1, !dbg !65
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !66

if.then3:                                         ; preds = %if.end
  store i32 %def, i32* @use_pager, align 4, !dbg !67
  br label %if.end4, !dbg !68

if.end4:                                          ; preds = %if.then3, %if.end
  call void @commit_pager_choice(), !dbg !69
  br label %return, !dbg !70

return:                                           ; preds = %if.end4, %if.then
  ret void, !dbg !70
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @pager_in_use() #2

declare i32 @check_pager_config(i8* noundef) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @commit_pager_choice() #0 !dbg !71 {
entry:
  %0 = load i32, i32* @use_pager, align 4, !dbg !74
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !75

sw.bb:                                            ; preds = %entry
  %call = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32 noundef 1), !dbg !76
  br label %sw.epilog, !dbg !78

sw.bb1:                                           ; preds = %entry
  call void @setup_pager(), !dbg !79
  br label %sw.epilog, !dbg !80

sw.default:                                       ; preds = %entry
  br label %sw.epilog, !dbg !81

sw.epilog:                                        ; preds = %sw.default, %sw.bb1, %sw.bb
  ret void, !dbg !82
}

declare i32 @"\01_setenv"(i8* noundef, i8* noundef, i32 noundef) #2

declare void @setup_pager() #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @is_builtin(i8* noundef %s) #0 !dbg !83 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !86, metadata !DIExpression()), !dbg !87
  %call = call %struct.cmd_struct* @get_builtin(i8* noundef %s), !dbg !88
  %tobool = icmp ne %struct.cmd_struct* %call, null, !dbg !89
  %lnot = xor i1 %tobool, true, !dbg !89
  %lnot1 = xor i1 %lnot, true, !dbg !90
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !90
  ret i32 %lnot.ext, !dbg !91
}

; Function Attrs: noinline nounwind ssp uwtable
define internal %struct.cmd_struct* @get_builtin(i8* noundef %s) #0 !dbg !92 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !96, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.value(metadata i32 0, metadata !98, metadata !DIExpression()), !dbg !97
  br label %for.cond, !dbg !99

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !101
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !98, metadata !DIExpression()), !dbg !97
  %conv = sext i32 %i.0 to i64, !dbg !102
  %cmp = icmp ult i64 %conv, 141, !dbg !104
  br i1 %cmp, label %for.body, label %for.end, !dbg !105

for.body:                                         ; preds = %for.cond
  %idx.ext = sext i32 %i.0 to i64, !dbg !106
  %add.ptr = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* getelementptr inbounds ([141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 0), i64 %idx.ext, !dbg !106
  call void @llvm.dbg.value(metadata %struct.cmd_struct* %add.ptr, metadata !108, metadata !DIExpression()), !dbg !109
  %cmd = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %add.ptr, i32 0, i32 0, !dbg !110
  %0 = load i8*, i8** %cmd, align 8, !dbg !110
  %call = call i32 @strcmp(i8* noundef %s, i8* noundef %0), !dbg !112
  %tobool = icmp ne i32 %call, 0, !dbg !112
  br i1 %tobool, label %if.end, label %if.then, !dbg !113

if.then:                                          ; preds = %for.body
  br label %return, !dbg !114

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !115

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !dbg !116
  call void @llvm.dbg.value(metadata i32 %inc, metadata !98, metadata !DIExpression()), !dbg !97
  br label %for.cond, !dbg !117, !llvm.loop !118

for.end:                                          ; preds = %for.cond
  br label %return, !dbg !121

return:                                           ; preds = %for.end, %if.then
  %retval.0 = phi %struct.cmd_struct* [ %add.ptr, %if.then ], [ null, %for.end ], !dbg !97
  ret %struct.cmd_struct* %retval.0, !dbg !122
}

declare i32 @strcmp(i8* noundef, i8* noundef) #2

declare i32 @cmd_add(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_am(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_annotate(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_apply(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_archive(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_bisect__helper(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_blame(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_branch(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_bugreport(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_bundle(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_cat_file(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_check_attr(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_check_ignore(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_check_mailmap(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_check_ref_format(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_checkout(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_checkout__worker(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_checkout_index(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_cherry(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_cherry_pick(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_clean(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_clone(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_column(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_commit(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_commit_graph(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_commit_tree(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_config(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_count_objects(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_credential(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_credential_cache(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_credential_cache_daemon(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_credential_store(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_describe(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_diagnose(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_diff(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_diff_files(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_diff_index(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_diff_tree(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_difftool(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_env__helper(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_fast_export(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_fast_import(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_fetch(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_fetch_pack(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_fmt_merge_msg(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_for_each_ref(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_for_each_repo(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_format_patch(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_fsck(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_fsmonitor__daemon(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_gc(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_get_tar_commit_id(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_grep(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_hash_object(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_help(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_hook(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_index_pack(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_init_db(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_interpret_trailers(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_log(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_ls_files(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_ls_remote(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_ls_tree(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_mailinfo(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_mailsplit(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_maintenance(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_merge(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_merge_base(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_merge_file(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_merge_index(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_merge_ours(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_merge_recursive(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_merge_tree(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_mktag(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_mktree(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_multi_pack_index(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_mv(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_name_rev(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_notes(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_pack_objects(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_pack_redundant(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_pack_refs(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_patch_id(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_prune(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_prune_packed(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_pull(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_push(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_range_diff(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_read_tree(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_rebase(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_receive_pack(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_reflog(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_remote(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_remote_ext(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_remote_fd(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_repack(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_replace(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_rerere(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_reset(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_restore(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_rev_list(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_rev_parse(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_revert(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_rm(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_send_pack(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_shortlog(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_show(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_show_branch(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_show_index(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_show_ref(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_sparse_checkout(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_stash(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_status(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_stripspace(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_submodule__helper(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_switch(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_symbolic_ref(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_tag(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_unpack_file(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_unpack_objects(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_update_index(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_update_ref(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_update_server_info(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_upload_archive(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_upload_archive_writer(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_upload_pack(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_var(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_verify_commit(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_verify_pack(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_verify_tag(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_version(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_whatchanged(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_worktree(i32 noundef, i8** noundef, i8* noundef) #2

declare i32 @cmd_write_tree(i32 noundef, i8** noundef, i8* noundef) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @load_builtin_commands(i8* noundef %prefix, %struct.cmdnames* noundef %cmds) #0 !dbg !123 {
entry:
  %prefix.addr = alloca i8*, align 8
  %name = alloca i8*, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %prefix.addr, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata %struct.cmdnames* %cmds, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i8** %name, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = load i8*, i8** %prefix.addr, align 8, !dbg !152
  %call = call i32 @skip_prefix(i8* noundef %0, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** noundef %prefix.addr), !dbg !154
  %tobool = icmp ne i32 %call, 0, !dbg !154
  br i1 %tobool, label %if.end, label %if.then, !dbg !155

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %prefix.addr, align 8, !dbg !156
  call void (i8*, i32, i8*, ...) @BUG_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 674, i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* noundef %1) #8, !dbg !156
  unreachable, !dbg !156

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !157, metadata !DIExpression()), !dbg !149
  br label %for.cond, !dbg !158

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ], !dbg !160
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !157, metadata !DIExpression()), !dbg !149
  %conv = sext i32 %i.0 to i64, !dbg !161
  %cmp = icmp ult i64 %conv, 141, !dbg !163
  br i1 %cmp, label %for.body, label %for.end, !dbg !164

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !165
  %arrayidx = getelementptr inbounds [141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 %idxprom, !dbg !165
  %cmd = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %arrayidx, i32 0, i32 0, !dbg !167
  %2 = load i8*, i8** %cmd, align 8, !dbg !167
  %3 = load i8*, i8** %prefix.addr, align 8, !dbg !168
  %call2 = call i32 @skip_prefix(i8* noundef %2, i8* noundef %3, i8** noundef %name), !dbg !169
  %tobool3 = icmp ne i32 %call2, 0, !dbg !169
  br i1 %tobool3, label %if.then4, label %if.end7, !dbg !170

if.then4:                                         ; preds = %for.body
  %4 = load i8*, i8** %name, align 8, !dbg !171
  %5 = load i8*, i8** %name, align 8, !dbg !172
  %call5 = call i64 @strlen(i8* noundef %5), !dbg !173
  %conv6 = trunc i64 %call5 to i32, !dbg !173
  call void @add_cmdname(%struct.cmdnames* noundef %cmds, i8* noundef %4, i32 noundef %conv6), !dbg !174
  br label %if.end7, !dbg !174

if.end7:                                          ; preds = %if.then4, %for.body
  br label %for.inc, !dbg !175

for.inc:                                          ; preds = %if.end7
  %inc = add nsw i32 %i.0, 1, !dbg !176
  call void @llvm.dbg.value(metadata i32 %inc, metadata !157, metadata !DIExpression()), !dbg !149
  br label %for.cond, !dbg !177, !llvm.loop !178

for.end:                                          ; preds = %for.cond
  ret void, !dbg !180
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @skip_prefix(i8* noundef %str, i8* noundef %prefix, i8** noundef %out) #0 !dbg !181 {
entry:
  call void @llvm.dbg.value(metadata i8* %str, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i8* %prefix, metadata !187, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i8** %out, metadata !188, metadata !DIExpression()), !dbg !186
  br label %do.body, !dbg !189

do.body:                                          ; preds = %do.cond, %entry
  %prefix.addr.0 = phi i8* [ %prefix, %entry ], [ %incdec.ptr1, %do.cond ]
  %str.addr.0 = phi i8* [ %str, %entry ], [ %incdec.ptr, %do.cond ]
  call void @llvm.dbg.value(metadata i8* %str.addr.0, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i8* %prefix.addr.0, metadata !187, metadata !DIExpression()), !dbg !186
  %0 = load i8, i8* %prefix.addr.0, align 1, !dbg !190
  %tobool = icmp ne i8 %0, 0, !dbg !190
  br i1 %tobool, label %if.end, label %if.then, !dbg !193

if.then:                                          ; preds = %do.body
  store i8* %str.addr.0, i8** %out, align 8, !dbg !194
  br label %return, !dbg !196

if.end:                                           ; preds = %do.body
  br label %do.cond, !dbg !197

do.cond:                                          ; preds = %if.end
  %incdec.ptr = getelementptr inbounds i8, i8* %str.addr.0, i32 1, !dbg !198
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !185, metadata !DIExpression()), !dbg !186
  %1 = load i8, i8* %str.addr.0, align 1, !dbg !199
  %conv = sext i8 %1 to i32, !dbg !199
  %incdec.ptr1 = getelementptr inbounds i8, i8* %prefix.addr.0, i32 1, !dbg !200
  call void @llvm.dbg.value(metadata i8* %incdec.ptr1, metadata !187, metadata !DIExpression()), !dbg !186
  %2 = load i8, i8* %prefix.addr.0, align 1, !dbg !201
  %conv2 = sext i8 %2 to i32, !dbg !201
  %cmp = icmp eq i32 %conv, %conv2, !dbg !202
  br i1 %cmp, label %do.body, label %do.end, !dbg !197, !llvm.loop !203

do.end:                                           ; preds = %do.cond
  br label %return, !dbg !205

return:                                           ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.then ], !dbg !186
  ret i32 %retval.0, !dbg !206
}

; Function Attrs: noreturn
declare void @BUG_fl(i8* noundef, i32 noundef, i8* noundef, ...) #3

declare i64 @strlen(i8* noundef) #2

declare void @add_cmdname(%struct.cmdnames* noundef, i8* noundef, i32 noundef) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @cmd_main(i32 noundef %argc, i8** noundef %argv) #0 !dbg !207 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %cmd = alloca i8*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !210, metadata !DIExpression()), !dbg !211
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i8** %cmd, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.value(metadata i32 0, metadata !216, metadata !DIExpression()), !dbg !217
  %0 = load i8**, i8*** %argv.addr, align 8, !dbg !218
  %arrayidx = getelementptr inbounds i8*, i8** %0, i64 0, !dbg !218
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !218
  store i8* %1, i8** %cmd, align 8, !dbg !219
  %2 = load i8*, i8** %cmd, align 8, !dbg !220
  %tobool = icmp ne i8* %2, null, !dbg !220
  br i1 %tobool, label %if.else, label %if.then, !dbg !222

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8** %cmd, align 8, !dbg !223
  br label %if.end3, !dbg !224

if.else:                                          ; preds = %entry
  %3 = load i8*, i8** %cmd, align 8, !dbg !225
  %call = call i8* @git_find_last_dir_sep(i8* noundef %3), !dbg !227
  call void @llvm.dbg.value(metadata i8* %call, metadata !228, metadata !DIExpression()), !dbg !229
  %tobool1 = icmp ne i8* %call, null, !dbg !230
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !232

if.then2:                                         ; preds = %if.else
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 1, !dbg !233
  store i8* %add.ptr, i8** %cmd, align 8, !dbg !234
  br label %if.end, !dbg !235

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end, %if.then
  %4 = load i8**, i8*** %argv.addr, align 8, !dbg !236
  call void @trace_command_performance(i8** noundef %4), !dbg !237
  %5 = load i8*, i8** %cmd, align 8, !dbg !238
  %call4 = call i32 @skip_prefix(i8* noundef %5, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** noundef %cmd), !dbg !240
  %tobool5 = icmp ne i32 %call4, 0, !dbg !240
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !241

if.then6:                                         ; preds = %if.end3
  %6 = load i8*, i8** %cmd, align 8, !dbg !242
  %7 = load i8**, i8*** %argv.addr, align 8, !dbg !244
  %arrayidx7 = getelementptr inbounds i8*, i8** %7, i64 0, !dbg !244
  store i8* %6, i8** %arrayidx7, align 8, !dbg !245
  %8 = load i32, i32* %argc.addr, align 4, !dbg !246
  %9 = load i8**, i8*** %argv.addr, align 8, !dbg !247
  call void @handle_builtin(i32 noundef %8, i8** noundef %9), !dbg !248
  %call8 = call i8* @_(i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0)), !dbg !249
  %10 = load i8*, i8** %cmd, align 8, !dbg !250
  call void (i8*, ...) @die(i8* noundef %call8, i8* noundef %10) #8, !dbg !251
  unreachable, !dbg !251

if.end9:                                          ; preds = %if.end3
  %11 = load i8**, i8*** %argv.addr, align 8, !dbg !252
  %incdec.ptr = getelementptr inbounds i8*, i8** %11, i32 1, !dbg !252
  store i8** %incdec.ptr, i8*** %argv.addr, align 8, !dbg !252
  %12 = load i32, i32* %argc.addr, align 4, !dbg !253
  %dec = add nsw i32 %12, -1, !dbg !253
  store i32 %dec, i32* %argc.addr, align 4, !dbg !253
  %call10 = call i32 @handle_options(i8*** noundef %argv.addr, i32* noundef %argc.addr, i32* noundef null), !dbg !254
  %13 = load i32, i32* %argc.addr, align 4, !dbg !255
  %tobool11 = icmp ne i32 %13, 0, !dbg !255
  br i1 %tobool11, label %if.end18, label %if.then12, !dbg !257

if.then12:                                        ; preds = %if.end9
  call void @commit_pager_choice(), !dbg !258
  %call13 = call i8* @_(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0)), !dbg !260
  %call14 = call i32 (i8*, ...) @printf(i8* noundef %call13, i8* noundef getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)), !dbg !261
  call void @list_common_cmds_help(), !dbg !262
  %call15 = call i8* @_(i8* noundef getelementptr inbounds ([231 x i8], [231 x i8]* @git_more_info_string, i64 0, i64 0)), !dbg !263
  %call16 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* noundef %call15), !dbg !264
  %call17 = call i32 @common_exit(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 907, i32 noundef 1), !dbg !265
  call void @exit(i32 noundef %call17) #8, !dbg !265
  unreachable, !dbg !265

if.end18:                                         ; preds = %if.end9
  %14 = load i8**, i8*** %argv.addr, align 8, !dbg !266
  %arrayidx19 = getelementptr inbounds i8*, i8** %14, i64 0, !dbg !266
  %15 = load i8*, i8** %arrayidx19, align 8, !dbg !266
  %call20 = call i32 @strcmp(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* noundef %15), !dbg !268
  %tobool21 = icmp ne i32 %call20, 0, !dbg !268
  br i1 %tobool21, label %lor.lhs.false, label %if.then25, !dbg !269

lor.lhs.false:                                    ; preds = %if.end18
  %16 = load i8**, i8*** %argv.addr, align 8, !dbg !270
  %arrayidx22 = getelementptr inbounds i8*, i8** %16, i64 0, !dbg !270
  %17 = load i8*, i8** %arrayidx22, align 8, !dbg !270
  %call23 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i8* noundef %17), !dbg !271
  %tobool24 = icmp ne i32 %call23, 0, !dbg !271
  br i1 %tobool24, label %if.else27, label %if.then25, !dbg !272

if.then25:                                        ; preds = %lor.lhs.false, %if.end18
  %18 = load i8**, i8*** %argv.addr, align 8, !dbg !273
  %arrayidx26 = getelementptr inbounds i8*, i8** %18, i64 0, !dbg !273
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %arrayidx26, align 8, !dbg !274
  br label %if.end38, !dbg !273

if.else27:                                        ; preds = %lor.lhs.false
  %19 = load i8**, i8*** %argv.addr, align 8, !dbg !275
  %arrayidx28 = getelementptr inbounds i8*, i8** %19, i64 0, !dbg !275
  %20 = load i8*, i8** %arrayidx28, align 8, !dbg !275
  %call29 = call i32 @strcmp(i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8* noundef %20), !dbg !277
  %tobool30 = icmp ne i32 %call29, 0, !dbg !277
  br i1 %tobool30, label %lor.lhs.false31, label %if.then35, !dbg !278

lor.lhs.false31:                                  ; preds = %if.else27
  %21 = load i8**, i8*** %argv.addr, align 8, !dbg !279
  %arrayidx32 = getelementptr inbounds i8*, i8** %21, i64 0, !dbg !279
  %22 = load i8*, i8** %arrayidx32, align 8, !dbg !279
  %call33 = call i32 @strcmp(i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* noundef %22), !dbg !280
  %tobool34 = icmp ne i32 %call33, 0, !dbg !280
  br i1 %tobool34, label %if.end37, label %if.then35, !dbg !281

if.then35:                                        ; preds = %lor.lhs.false31, %if.else27
  %23 = load i8**, i8*** %argv.addr, align 8, !dbg !282
  %arrayidx36 = getelementptr inbounds i8*, i8** %23, i64 0, !dbg !282
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %arrayidx36, align 8, !dbg !283
  br label %if.end37, !dbg !282

if.end37:                                         ; preds = %if.then35, %lor.lhs.false31
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.then25
  %24 = load i8**, i8*** %argv.addr, align 8, !dbg !284
  %arrayidx39 = getelementptr inbounds i8*, i8** %24, i64 0, !dbg !284
  %25 = load i8*, i8** %arrayidx39, align 8, !dbg !284
  store i8* %25, i8** %cmd, align 8, !dbg !285
  call void @setup_path(), !dbg !286
  br label %while.body, !dbg !287

while.body:                                       ; preds = %if.end38, %if.end56
  %done_help.0 = phi i32 [ 0, %if.end38 ], [ 1, %if.end56 ], !dbg !217
  call void @llvm.dbg.value(metadata i32 %done_help.0, metadata !216, metadata !DIExpression()), !dbg !217
  %call40 = call i32 @run_argv(i32* noundef %argc.addr, i8*** noundef %argv.addr), !dbg !288
  call void @llvm.dbg.value(metadata i32 %call40, metadata !290, metadata !DIExpression()), !dbg !291
  %call41 = call i32* @__error(), !dbg !292
  %26 = load i32, i32* %call41, align 4, !dbg !292
  %cmp = icmp ne i32 %26, 2, !dbg !294
  br i1 %cmp, label %if.then42, label %if.end43, !dbg !295

if.then42:                                        ; preds = %while.body
  br label %while.end, !dbg !296

if.end43:                                         ; preds = %while.body
  %tobool44 = icmp ne i32 %call40, 0, !dbg !297
  br i1 %tobool44, label %if.then45, label %if.end50, !dbg !299

if.then45:                                        ; preds = %if.end43
  %27 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !300
  %call46 = call i8* @_(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0)), !dbg !302
  %28 = load i8*, i8** %cmd, align 8, !dbg !303
  %29 = load i8**, i8*** %argv.addr, align 8, !dbg !304
  %arrayidx47 = getelementptr inbounds i8*, i8** %29, i64 0, !dbg !304
  %30 = load i8*, i8** %arrayidx47, align 8, !dbg !304
  %call48 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %27, i8* noundef %call46, i8* noundef %28, i8* noundef %30), !dbg !305
  %call49 = call i32 @common_exit(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 933, i32 noundef 1), !dbg !306
  call void @exit(i32 noundef %call49) #8, !dbg !306
  unreachable, !dbg !306

if.end50:                                         ; preds = %if.end43
  %tobool51 = icmp ne i32 %done_help.0, 0, !dbg !307
  br i1 %tobool51, label %if.else55, label %if.then52, !dbg !309

if.then52:                                        ; preds = %if.end50
  %31 = load i8*, i8** %cmd, align 8, !dbg !310
  %call53 = call i8* @help_unknown_cmd(i8* noundef %31), !dbg !312
  %32 = load i8**, i8*** %argv.addr, align 8, !dbg !313
  %arrayidx54 = getelementptr inbounds i8*, i8** %32, i64 0, !dbg !313
  store i8* %call53, i8** %arrayidx54, align 8, !dbg !314
  store i8* %call53, i8** %cmd, align 8, !dbg !315
  call void @llvm.dbg.value(metadata i32 1, metadata !216, metadata !DIExpression()), !dbg !217
  br label %if.end56, !dbg !316

if.else55:                                        ; preds = %if.end50
  br label %while.end, !dbg !317

if.end56:                                         ; preds = %if.then52
  br label %while.body, !dbg !287, !llvm.loop !318

while.end:                                        ; preds = %if.else55, %if.then42
  %33 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !320
  %call57 = call i8* @_(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0)), !dbg !321
  %34 = load i8*, i8** %cmd, align 8, !dbg !322
  %call58 = call i32* @__error(), !dbg !323
  %35 = load i32, i32* %call58, align 4, !dbg !323
  %call59 = call i8* @"\01_strerror"(i32 noundef %35), !dbg !324
  %call60 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %33, i8* noundef %call57, i8* noundef %34, i8* noundef %call59), !dbg !325
  ret i32 1, !dbg !326
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @git_find_last_dir_sep(i8* noundef %path) #0 !dbg !327 {
entry:
  call void @llvm.dbg.value(metadata i8* %path, metadata !330, metadata !DIExpression()), !dbg !331
  %call = call i8* @strrchr(i8* noundef %path, i32 noundef 47), !dbg !332
  ret i8* %call, !dbg !333
}

declare void @trace_command_performance(i8** noundef) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @handle_builtin(i32 noundef %argc, i8** noundef %argv) #0 !dbg !334 {
entry:
  %args = alloca %struct.strvec, align 8
  call void @llvm.dbg.value(metadata i32 %argc, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i8** %argv, metadata !339, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.declare(metadata %struct.strvec* %args, metadata !340, metadata !DIExpression()), !dbg !347
  %0 = bitcast %struct.strvec* %args to i8*, !dbg !347
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 bitcast (%struct.strvec* @__const.handle_builtin.args to i8*), i64 24, i1 false), !dbg !347
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !348
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !348
  call void @llvm.dbg.value(metadata i8* %1, metadata !349, metadata !DIExpression()), !dbg !338
  %cmp = icmp sgt i32 %argc, 1, !dbg !350
  br i1 %cmp, label %land.lhs.true, label %if.end12, !dbg !352

land.lhs.true:                                    ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !353
  %2 = load i8*, i8** %arrayidx1, align 8, !dbg !353
  %call = call i32 @strcmp(i8* noundef %2, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)), !dbg !354
  %tobool = icmp ne i32 %call, 0, !dbg !354
  br i1 %tobool, label %if.end12, label %if.then, !dbg !355

if.then:                                          ; preds = %land.lhs.true
  %arrayidx2 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !356
  %3 = load i8*, i8** %arrayidx2, align 8, !dbg !356
  %arrayidx3 = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !358
  store i8* %3, i8** %arrayidx3, align 8, !dbg !359
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), metadata !349, metadata !DIExpression()), !dbg !338
  %arrayidx4 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !360
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8** %arrayidx4, align 8, !dbg !361
  call void @llvm.dbg.value(metadata i32 0, metadata !362, metadata !DIExpression()), !dbg !363
  br label %for.cond, !dbg !364

for.cond:                                         ; preds = %for.inc, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.inc ], !dbg !366
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !362, metadata !DIExpression()), !dbg !363
  %cmp5 = icmp slt i32 %i.0, %argc, !dbg !367
  br i1 %cmp5, label %for.body, label %for.end, !dbg !369

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !370
  %arrayidx6 = getelementptr inbounds i8*, i8** %argv, i64 %idxprom, !dbg !370
  %4 = load i8*, i8** %arrayidx6, align 8, !dbg !370
  %call7 = call i8* @strvec_push(%struct.strvec* noundef %args, i8* noundef %4), !dbg !372
  %tobool8 = icmp ne i32 %i.0, 0, !dbg !373
  br i1 %tobool8, label %if.end, label %if.then9, !dbg !375

if.then9:                                         ; preds = %for.body
  %call10 = call i8* @strvec_push(%struct.strvec* noundef %args, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.156, i64 0, i64 0)), !dbg !376
  br label %if.end, !dbg !376

if.end:                                           ; preds = %if.then9, %for.body
  br label %for.inc, !dbg !377

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %i.0, 1, !dbg !378
  call void @llvm.dbg.value(metadata i32 %inc, metadata !362, metadata !DIExpression()), !dbg !363
  br label %for.cond, !dbg !379, !llvm.loop !380

for.end:                                          ; preds = %for.cond
  %inc11 = add nsw i32 %argc, 1, !dbg !382
  call void @llvm.dbg.value(metadata i32 %inc11, metadata !337, metadata !DIExpression()), !dbg !338
  %v = getelementptr inbounds %struct.strvec, %struct.strvec* %args, i32 0, i32 0, !dbg !383
  %5 = load i8**, i8*** %v, align 8, !dbg !383
  call void @llvm.dbg.value(metadata i8** %5, metadata !339, metadata !DIExpression()), !dbg !338
  br label %if.end12, !dbg !384

if.end12:                                         ; preds = %for.end, %land.lhs.true, %entry
  %cmd.0 = phi i8* [ %1, %land.lhs.true ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), %for.end ], [ %1, %entry ], !dbg !338
  %argv.addr.0 = phi i8** [ %argv, %land.lhs.true ], [ %5, %for.end ], [ %argv, %entry ]
  %argc.addr.0 = phi i32 [ %argc, %land.lhs.true ], [ %inc11, %for.end ], [ %argc, %entry ]
  call void @llvm.dbg.value(metadata i32 %argc.addr.0, metadata !337, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i8** %argv.addr.0, metadata !339, metadata !DIExpression()), !dbg !338
  call void @llvm.dbg.value(metadata i8* %cmd.0, metadata !349, metadata !DIExpression()), !dbg !338
  %call13 = call %struct.cmd_struct* @get_builtin(i8* noundef %cmd.0), !dbg !385
  call void @llvm.dbg.value(metadata %struct.cmd_struct* %call13, metadata !386, metadata !DIExpression()), !dbg !338
  %tobool14 = icmp ne %struct.cmd_struct* %call13, null, !dbg !387
  br i1 %tobool14, label %if.then15, label %if.end18, !dbg !389

if.then15:                                        ; preds = %if.end12
  %call16 = call i32 @run_builtin(%struct.cmd_struct* noundef %call13, i32 noundef %argc.addr.0, i8** noundef %argv.addr.0), !dbg !390
  %call17 = call i32 @common_exit(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 721, i32 noundef %call16), !dbg !390
  call void @exit(i32 noundef %call17) #8, !dbg !390
  unreachable, !dbg !390

if.end18:                                         ; preds = %if.end12
  call void @strvec_clear(%struct.strvec* noundef %args), !dbg !391
  ret void, !dbg !392
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @_(i8* noundef %msgid) #0 !dbg !393 {
entry:
  call void @llvm.dbg.value(metadata i8* %msgid, metadata !397, metadata !DIExpression()), !dbg !398
  %0 = load i8, i8* %msgid, align 1, !dbg !399
  %tobool = icmp ne i8 %0, 0, !dbg !399
  br i1 %tobool, label %if.end, label %if.then, !dbg !401

if.then:                                          ; preds = %entry
  br label %return, !dbg !402

if.end:                                           ; preds = %entry
  %call = call i8* @libintl_gettext(i8* noundef %msgid), !dbg !403
  br label %return, !dbg !404

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8* [ %call, %if.end ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.163, i64 0, i64 0), %if.then ], !dbg !398
  ret i8* %retval.0, !dbg !405
}

; Function Attrs: noreturn
declare void @die(i8* noundef, ...) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @handle_options(i8*** noundef %argv, i32* noundef %argc, i32* noundef %envchanged) #0 !dbg !406 {
entry:
  %cmd = alloca i8*, align 8
  %list = alloca %struct.string_list, align 8
  call void @llvm.dbg.value(metadata i8*** %argv, metadata !411, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i32* %argc, metadata !413, metadata !DIExpression()), !dbg !412
  call void @llvm.dbg.value(metadata i32* %envchanged, metadata !414, metadata !DIExpression()), !dbg !412
  %0 = load i8**, i8*** %argv, align 8, !dbg !415
  call void @llvm.dbg.value(metadata i8** %0, metadata !416, metadata !DIExpression()), !dbg !412
  br label %while.cond, !dbg !417

while.cond:                                       ; preds = %if.end338, %entry
  %1 = load i32, i32* %argc, align 4, !dbg !418
  %cmp = icmp sgt i32 %1, 0, !dbg !419
  br i1 %cmp, label %while.body, label %while.end, !dbg !417

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i8** %cmd, metadata !420, metadata !DIExpression()), !dbg !422
  %2 = load i8**, i8*** %argv, align 8, !dbg !423
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 0, !dbg !424
  %3 = load i8*, i8** %arrayidx, align 8, !dbg !424
  store i8* %3, i8** %cmd, align 8, !dbg !422
  %4 = load i8*, i8** %cmd, align 8, !dbg !425
  %arrayidx1 = getelementptr inbounds i8, i8* %4, i64 0, !dbg !425
  %5 = load i8, i8* %arrayidx1, align 1, !dbg !425
  %conv = sext i8 %5 to i32, !dbg !425
  %cmp2 = icmp ne i32 %conv, 45, !dbg !427
  br i1 %cmp2, label %if.then, label %if.end, !dbg !428

if.then:                                          ; preds = %while.body
  br label %while.end, !dbg !429

if.end:                                           ; preds = %while.body
  %6 = load i8*, i8** %cmd, align 8, !dbg !430
  %call = call i32 @strcmp(i8* noundef %6, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)), !dbg !432
  %tobool = icmp ne i32 %call, 0, !dbg !432
  br i1 %tobool, label %lor.lhs.false, label %if.then12, !dbg !433

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i8*, i8** %cmd, align 8, !dbg !434
  %call4 = call i32 @strcmp(i8* noundef %7, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)), !dbg !435
  %tobool5 = icmp ne i32 %call4, 0, !dbg !435
  br i1 %tobool5, label %lor.lhs.false6, label %if.then12, !dbg !436

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %8 = load i8*, i8** %cmd, align 8, !dbg !437
  %call7 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)), !dbg !438
  %tobool8 = icmp ne i32 %call7, 0, !dbg !438
  br i1 %tobool8, label %lor.lhs.false9, label %if.then12, !dbg !439

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %9 = load i8*, i8** %cmd, align 8, !dbg !440
  %call10 = call i32 @strcmp(i8* noundef %9, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0)), !dbg !441
  %tobool11 = icmp ne i32 %call10, 0, !dbg !441
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !442

if.then12:                                        ; preds = %lor.lhs.false9, %lor.lhs.false6, %lor.lhs.false, %if.end
  br label %while.end, !dbg !443

if.end13:                                         ; preds = %lor.lhs.false9
  %10 = load i8*, i8** %cmd, align 8, !dbg !444
  %call14 = call i32 @skip_prefix(i8* noundef %10, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.164, i64 0, i64 0), i8** noundef %cmd), !dbg !446
  %tobool15 = icmp ne i32 %call14, 0, !dbg !446
  br i1 %tobool15, label %if.then16, label %if.else25, !dbg !447

if.then16:                                        ; preds = %if.end13
  %11 = load i8*, i8** %cmd, align 8, !dbg !448
  %12 = load i8, i8* %11, align 1, !dbg !451
  %conv17 = sext i8 %12 to i32, !dbg !451
  %cmp18 = icmp eq i32 %conv17, 61, !dbg !452
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !453

if.then20:                                        ; preds = %if.then16
  %13 = load i8*, i8** %cmd, align 8, !dbg !454
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 1, !dbg !455
  call void @git_set_exec_path(i8* noundef %add.ptr), !dbg !456
  br label %if.end24, !dbg !456

if.else:                                          ; preds = %if.then16
  %call21 = call i8* @git_exec_path(), !dbg !457
  %call22 = call i32 @puts(i8* noundef %call21), !dbg !459
  call void @trace2_cmd_name_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 161, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i64 0, i64 0)), !dbg !460
  %call23 = call i32 @common_exit(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 162, i32 noundef 0), !dbg !461
  call void @exit(i32 noundef %call23) #8, !dbg !461
  unreachable, !dbg !461

if.end24:                                         ; preds = %if.then20
  br label %if.end338, !dbg !462

if.else25:                                        ; preds = %if.end13
  %14 = load i8*, i8** %cmd, align 8, !dbg !463
  %call26 = call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.166, i64 0, i64 0)), !dbg !465
  %tobool27 = icmp ne i32 %call26, 0, !dbg !465
  br i1 %tobool27, label %if.else32, label %if.then28, !dbg !466

if.then28:                                        ; preds = %if.else25
  %call29 = call i8* @system_path(i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.167, i64 0, i64 0)), !dbg !467
  %call30 = call i32 @puts(i8* noundef %call29), !dbg !469
  call void @trace2_cmd_name_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 166, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i64 0, i64 0)), !dbg !470
  %call31 = call i32 @common_exit(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 167, i32 noundef 0), !dbg !471
  call void @exit(i32 noundef %call31) #8, !dbg !471
  unreachable, !dbg !471

if.else32:                                        ; preds = %if.else25
  %15 = load i8*, i8** %cmd, align 8, !dbg !472
  %call33 = call i32 @strcmp(i8* noundef %15, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.168, i64 0, i64 0)), !dbg !474
  %tobool34 = icmp ne i32 %call33, 0, !dbg !474
  br i1 %tobool34, label %if.else39, label %if.then35, !dbg !475

if.then35:                                        ; preds = %if.else32
  %call36 = call i8* @system_path(i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.169, i64 0, i64 0)), !dbg !476
  %call37 = call i32 @puts(i8* noundef %call36), !dbg !478
  call void @trace2_cmd_name_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 170, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i64 0, i64 0)), !dbg !479
  %call38 = call i32 @common_exit(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 171, i32 noundef 0), !dbg !480
  call void @exit(i32 noundef %call38) #8, !dbg !480
  unreachable, !dbg !480

if.else39:                                        ; preds = %if.else32
  %16 = load i8*, i8** %cmd, align 8, !dbg !481
  %call40 = call i32 @strcmp(i8* noundef %16, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.170, i64 0, i64 0)), !dbg !483
  %tobool41 = icmp ne i32 %call40, 0, !dbg !483
  br i1 %tobool41, label %if.else46, label %if.then42, !dbg !484

if.then42:                                        ; preds = %if.else39
  %call43 = call i8* @system_path(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.171, i64 0, i64 0)), !dbg !485
  %call44 = call i32 @puts(i8* noundef %call43), !dbg !487
  call void @trace2_cmd_name_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 174, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i64 0, i64 0)), !dbg !488
  %call45 = call i32 @common_exit(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 175, i32 noundef 0), !dbg !489
  call void @exit(i32 noundef %call45) #8, !dbg !489
  unreachable, !dbg !489

if.else46:                                        ; preds = %if.else39
  %17 = load i8*, i8** %cmd, align 8, !dbg !490
  %call47 = call i32 @strcmp(i8* noundef %17, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.172, i64 0, i64 0)), !dbg !492
  %tobool48 = icmp ne i32 %call47, 0, !dbg !492
  br i1 %tobool48, label %lor.lhs.false49, label %if.then52, !dbg !493

lor.lhs.false49:                                  ; preds = %if.else46
  %18 = load i8*, i8** %cmd, align 8, !dbg !494
  %call50 = call i32 @strcmp(i8* noundef %18, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.173, i64 0, i64 0)), !dbg !495
  %tobool51 = icmp ne i32 %call50, 0, !dbg !495
  br i1 %tobool51, label %if.else53, label %if.then52, !dbg !496

if.then52:                                        ; preds = %lor.lhs.false49, %if.else46
  store i32 1, i32* @use_pager, align 4, !dbg !497
  br label %if.end334, !dbg !499

if.else53:                                        ; preds = %lor.lhs.false49
  %19 = load i8*, i8** %cmd, align 8, !dbg !500
  %call54 = call i32 @strcmp(i8* noundef %19, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.174, i64 0, i64 0)), !dbg !502
  %tobool55 = icmp ne i32 %call54, 0, !dbg !502
  br i1 %tobool55, label %lor.lhs.false56, label %if.then59, !dbg !503

lor.lhs.false56:                                  ; preds = %if.else53
  %20 = load i8*, i8** %cmd, align 8, !dbg !504
  %call57 = call i32 @strcmp(i8* noundef %20, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.175, i64 0, i64 0)), !dbg !505
  %tobool58 = icmp ne i32 %call57, 0, !dbg !505
  br i1 %tobool58, label %if.else63, label %if.then59, !dbg !506

if.then59:                                        ; preds = %lor.lhs.false56, %if.else53
  store i32 0, i32* @use_pager, align 4, !dbg !507
  %tobool60 = icmp ne i32* %envchanged, null, !dbg !509
  br i1 %tobool60, label %if.then61, label %if.end62, !dbg !511

if.then61:                                        ; preds = %if.then59
  store i32 1, i32* %envchanged, align 4, !dbg !512
  br label %if.end62, !dbg !513

if.end62:                                         ; preds = %if.then61, %if.then59
  br label %if.end333, !dbg !514

if.else63:                                        ; preds = %lor.lhs.false56
  %21 = load i8*, i8** %cmd, align 8, !dbg !515
  %call64 = call i32 @strcmp(i8* noundef %21, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.176, i64 0, i64 0)), !dbg !517
  %tobool65 = icmp ne i32 %call64, 0, !dbg !517
  br i1 %tobool65, label %if.else71, label %if.then66, !dbg !518

if.then66:                                        ; preds = %if.else63
  store i32 0, i32* @read_replace_refs, align 4, !dbg !519
  %call67 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.177, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i64 0, i64 0), i32 noundef 1), !dbg !521
  %tobool68 = icmp ne i32* %envchanged, null, !dbg !522
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !524

if.then69:                                        ; preds = %if.then66
  store i32 1, i32* %envchanged, align 4, !dbg !525
  br label %if.end70, !dbg !526

if.end70:                                         ; preds = %if.then69, %if.then66
  br label %if.end332, !dbg !527

if.else71:                                        ; preds = %if.else63
  %22 = load i8*, i8** %cmd, align 8, !dbg !528
  %call72 = call i32 @strcmp(i8* noundef %22, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.179, i64 0, i64 0)), !dbg !530
  %tobool73 = icmp ne i32 %call72, 0, !dbg !530
  br i1 %tobool73, label %if.else86, label %if.then74, !dbg !531

if.then74:                                        ; preds = %if.else71
  %23 = load i32, i32* %argc, align 4, !dbg !532
  %cmp75 = icmp slt i32 %23, 2, !dbg !535
  br i1 %cmp75, label %if.then77, label %if.end80, !dbg !536

if.then77:                                        ; preds = %if.then74
  %24 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !537
  %call78 = call i8* @_(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.180, i64 0, i64 0)), !dbg !539
  %call79 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %24, i8* noundef %call78, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.179, i64 0, i64 0)), !dbg !540
  call void @usage(i8* noundef getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)) #8, !dbg !541
  unreachable, !dbg !541

if.end80:                                         ; preds = %if.then74
  %25 = load i8**, i8*** %argv, align 8, !dbg !542
  %arrayidx81 = getelementptr inbounds i8*, i8** %25, i64 1, !dbg !543
  %26 = load i8*, i8** %arrayidx81, align 8, !dbg !543
  %call82 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.181, i64 0, i64 0), i8* noundef %26, i32 noundef 1), !dbg !544
  %tobool83 = icmp ne i32* %envchanged, null, !dbg !545
  br i1 %tobool83, label %if.then84, label %if.end85, !dbg !547

if.then84:                                        ; preds = %if.end80
  store i32 1, i32* %envchanged, align 4, !dbg !548
  br label %if.end85, !dbg !549

if.end85:                                         ; preds = %if.then84, %if.end80
  %27 = load i8**, i8*** %argv, align 8, !dbg !550
  %incdec.ptr = getelementptr inbounds i8*, i8** %27, i32 1, !dbg !550
  store i8** %incdec.ptr, i8*** %argv, align 8, !dbg !550
  %28 = load i32, i32* %argc, align 4, !dbg !551
  %dec = add nsw i32 %28, -1, !dbg !551
  store i32 %dec, i32* %argc, align 4, !dbg !551
  br label %if.end331, !dbg !552

if.else86:                                        ; preds = %if.else71
  %29 = load i8*, i8** %cmd, align 8, !dbg !553
  %call87 = call i32 @skip_prefix(i8* noundef %29, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.182, i64 0, i64 0), i8** noundef %cmd), !dbg !555
  %tobool88 = icmp ne i32 %call87, 0, !dbg !555
  br i1 %tobool88, label %if.then89, label %if.else94, !dbg !556

if.then89:                                        ; preds = %if.else86
  %30 = load i8*, i8** %cmd, align 8, !dbg !557
  %call90 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.181, i64 0, i64 0), i8* noundef %30, i32 noundef 1), !dbg !559
  %tobool91 = icmp ne i32* %envchanged, null, !dbg !560
  br i1 %tobool91, label %if.then92, label %if.end93, !dbg !562

if.then92:                                        ; preds = %if.then89
  store i32 1, i32* %envchanged, align 4, !dbg !563
  br label %if.end93, !dbg !564

if.end93:                                         ; preds = %if.then92, %if.then89
  br label %if.end330, !dbg !565

if.else94:                                        ; preds = %if.else86
  %31 = load i8*, i8** %cmd, align 8, !dbg !566
  %call95 = call i32 @strcmp(i8* noundef %31, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.183, i64 0, i64 0)), !dbg !568
  %tobool96 = icmp ne i32 %call95, 0, !dbg !568
  br i1 %tobool96, label %if.else111, label %if.then97, !dbg !569

if.then97:                                        ; preds = %if.else94
  %32 = load i32, i32* %argc, align 4, !dbg !570
  %cmp98 = icmp slt i32 %32, 2, !dbg !573
  br i1 %cmp98, label %if.then100, label %if.end103, !dbg !574

if.then100:                                       ; preds = %if.then97
  %33 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !575
  %call101 = call i8* @_(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.184, i64 0, i64 0)), !dbg !577
  %call102 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %33, i8* noundef %call101), !dbg !578
  call void @usage(i8* noundef getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)) #8, !dbg !579
  unreachable, !dbg !579

if.end103:                                        ; preds = %if.then97
  %34 = load i8**, i8*** %argv, align 8, !dbg !580
  %arrayidx104 = getelementptr inbounds i8*, i8** %34, i64 1, !dbg !581
  %35 = load i8*, i8** %arrayidx104, align 8, !dbg !581
  %call105 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.185, i64 0, i64 0), i8* noundef %35, i32 noundef 1), !dbg !582
  %tobool106 = icmp ne i32* %envchanged, null, !dbg !583
  br i1 %tobool106, label %if.then107, label %if.end108, !dbg !585

if.then107:                                       ; preds = %if.end103
  store i32 1, i32* %envchanged, align 4, !dbg !586
  br label %if.end108, !dbg !587

if.end108:                                        ; preds = %if.then107, %if.end103
  %36 = load i8**, i8*** %argv, align 8, !dbg !588
  %incdec.ptr109 = getelementptr inbounds i8*, i8** %36, i32 1, !dbg !588
  store i8** %incdec.ptr109, i8*** %argv, align 8, !dbg !588
  %37 = load i32, i32* %argc, align 4, !dbg !589
  %dec110 = add nsw i32 %37, -1, !dbg !589
  store i32 %dec110, i32* %argc, align 4, !dbg !589
  br label %if.end329, !dbg !590

if.else111:                                       ; preds = %if.else94
  %38 = load i8*, i8** %cmd, align 8, !dbg !591
  %call112 = call i32 @skip_prefix(i8* noundef %38, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.186, i64 0, i64 0), i8** noundef %cmd), !dbg !593
  %tobool113 = icmp ne i32 %call112, 0, !dbg !593
  br i1 %tobool113, label %if.then114, label %if.else119, !dbg !594

if.then114:                                       ; preds = %if.else111
  %39 = load i8*, i8** %cmd, align 8, !dbg !595
  %call115 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.185, i64 0, i64 0), i8* noundef %39, i32 noundef 1), !dbg !597
  %tobool116 = icmp ne i32* %envchanged, null, !dbg !598
  br i1 %tobool116, label %if.then117, label %if.end118, !dbg !600

if.then117:                                       ; preds = %if.then114
  store i32 1, i32* %envchanged, align 4, !dbg !601
  br label %if.end118, !dbg !602

if.end118:                                        ; preds = %if.then117, %if.then114
  br label %if.end328, !dbg !603

if.else119:                                       ; preds = %if.else111
  %40 = load i8*, i8** %cmd, align 8, !dbg !604
  %call120 = call i32 @strcmp(i8* noundef %40, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.187, i64 0, i64 0)), !dbg !606
  %tobool121 = icmp ne i32 %call120, 0, !dbg !606
  br i1 %tobool121, label %if.else136, label %if.then122, !dbg !607

if.then122:                                       ; preds = %if.else119
  %41 = load i32, i32* %argc, align 4, !dbg !608
  %cmp123 = icmp slt i32 %41, 2, !dbg !611
  br i1 %cmp123, label %if.then125, label %if.end128, !dbg !612

if.then125:                                       ; preds = %if.then122
  %42 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !613
  %call126 = call i8* @_(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.180, i64 0, i64 0)), !dbg !615
  %call127 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %42, i8* noundef %call126, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.187, i64 0, i64 0)), !dbg !616
  call void @usage(i8* noundef getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)) #8, !dbg !617
  unreachable, !dbg !617

if.end128:                                        ; preds = %if.then122
  %43 = load i8**, i8*** %argv, align 8, !dbg !618
  %arrayidx129 = getelementptr inbounds i8*, i8** %43, i64 1, !dbg !619
  %44 = load i8*, i8** %arrayidx129, align 8, !dbg !619
  %call130 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.188, i64 0, i64 0), i8* noundef %44, i32 noundef 1), !dbg !620
  %tobool131 = icmp ne i32* %envchanged, null, !dbg !621
  br i1 %tobool131, label %if.then132, label %if.end133, !dbg !623

if.then132:                                       ; preds = %if.end128
  store i32 1, i32* %envchanged, align 4, !dbg !624
  br label %if.end133, !dbg !625

if.end133:                                        ; preds = %if.then132, %if.end128
  %45 = load i8**, i8*** %argv, align 8, !dbg !626
  %incdec.ptr134 = getelementptr inbounds i8*, i8** %45, i32 1, !dbg !626
  store i8** %incdec.ptr134, i8*** %argv, align 8, !dbg !626
  %46 = load i32, i32* %argc, align 4, !dbg !627
  %dec135 = add nsw i32 %46, -1, !dbg !627
  store i32 %dec135, i32* %argc, align 4, !dbg !627
  br label %if.end327, !dbg !628

if.else136:                                       ; preds = %if.else119
  %47 = load i8*, i8** %cmd, align 8, !dbg !629
  %call137 = call i32 @skip_prefix(i8* noundef %47, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.189, i64 0, i64 0), i8** noundef %cmd), !dbg !631
  %tobool138 = icmp ne i32 %call137, 0, !dbg !631
  br i1 %tobool138, label %if.then139, label %if.else144, !dbg !632

if.then139:                                       ; preds = %if.else136
  %48 = load i8*, i8** %cmd, align 8, !dbg !633
  %call140 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.188, i64 0, i64 0), i8* noundef %48, i32 noundef 1), !dbg !635
  %tobool141 = icmp ne i32* %envchanged, null, !dbg !636
  br i1 %tobool141, label %if.then142, label %if.end143, !dbg !638

if.then142:                                       ; preds = %if.then139
  store i32 1, i32* %envchanged, align 4, !dbg !639
  br label %if.end143, !dbg !640

if.end143:                                        ; preds = %if.then142, %if.then139
  br label %if.end326, !dbg !641

if.else144:                                       ; preds = %if.else136
  %49 = load i8*, i8** %cmd, align 8, !dbg !642
  %call145 = call i32 @strcmp(i8* noundef %49, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.190, i64 0, i64 0)), !dbg !644
  %tobool146 = icmp ne i32 %call145, 0, !dbg !644
  br i1 %tobool146, label %if.else161, label %if.then147, !dbg !645

if.then147:                                       ; preds = %if.else144
  %50 = load i32, i32* %argc, align 4, !dbg !646
  %cmp148 = icmp slt i32 %50, 2, !dbg !649
  br i1 %cmp148, label %if.then150, label %if.end153, !dbg !650

if.then150:                                       ; preds = %if.then147
  %51 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !651
  %call151 = call i8* @_(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.191, i64 0, i64 0)), !dbg !653
  %call152 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %51, i8* noundef %call151), !dbg !654
  call void @usage(i8* noundef getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)) #8, !dbg !655
  unreachable, !dbg !655

if.end153:                                        ; preds = %if.then147
  %52 = load i8**, i8*** %argv, align 8, !dbg !656
  %arrayidx154 = getelementptr inbounds i8*, i8** %52, i64 1, !dbg !657
  %53 = load i8*, i8** %arrayidx154, align 8, !dbg !657
  %call155 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.192, i64 0, i64 0), i8* noundef %53, i32 noundef 1), !dbg !658
  %tobool156 = icmp ne i32* %envchanged, null, !dbg !659
  br i1 %tobool156, label %if.then157, label %if.end158, !dbg !661

if.then157:                                       ; preds = %if.end153
  store i32 1, i32* %envchanged, align 4, !dbg !662
  br label %if.end158, !dbg !663

if.end158:                                        ; preds = %if.then157, %if.end153
  %54 = load i8**, i8*** %argv, align 8, !dbg !664
  %incdec.ptr159 = getelementptr inbounds i8*, i8** %54, i32 1, !dbg !664
  store i8** %incdec.ptr159, i8*** %argv, align 8, !dbg !664
  %55 = load i32, i32* %argc, align 4, !dbg !665
  %dec160 = add nsw i32 %55, -1, !dbg !665
  store i32 %dec160, i32* %argc, align 4, !dbg !665
  br label %if.end325, !dbg !666

if.else161:                                       ; preds = %if.else144
  %56 = load i8*, i8** %cmd, align 8, !dbg !667
  %call162 = call i32 @skip_prefix(i8* noundef %56, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.193, i64 0, i64 0), i8** noundef %cmd), !dbg !669
  %tobool163 = icmp ne i32 %call162, 0, !dbg !669
  br i1 %tobool163, label %if.then164, label %if.else169, !dbg !670

if.then164:                                       ; preds = %if.else161
  %57 = load i8*, i8** %cmd, align 8, !dbg !671
  %call165 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.192, i64 0, i64 0), i8* noundef %57, i32 noundef 1), !dbg !673
  %tobool166 = icmp ne i32* %envchanged, null, !dbg !674
  br i1 %tobool166, label %if.then167, label %if.end168, !dbg !676

if.then167:                                       ; preds = %if.then164
  store i32 1, i32* %envchanged, align 4, !dbg !677
  br label %if.end168, !dbg !678

if.end168:                                        ; preds = %if.then167, %if.then164
  br label %if.end324, !dbg !679

if.else169:                                       ; preds = %if.else161
  %58 = load i8*, i8** %cmd, align 8, !dbg !680
  %call170 = call i32 @strcmp(i8* noundef %58, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.194, i64 0, i64 0)), !dbg !682
  %tobool171 = icmp ne i32 %call170, 0, !dbg !682
  br i1 %tobool171, label %if.else179, label %if.then172, !dbg !683

if.then172:                                       ; preds = %if.else169
  %call173 = call i8* @xgetcwd(), !dbg !684
  call void @llvm.dbg.value(metadata i8* %call173, metadata !686, metadata !DIExpression()), !dbg !687
  store i32 1, i32* @is_bare_repository_cfg, align 4, !dbg !688
  %call174 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.181, i64 0, i64 0), i8* noundef %call173, i32 noundef 0), !dbg !689
  call void @free(i8* noundef %call173), !dbg !690
  %call175 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.195, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.196, i64 0, i64 0), i32 noundef 1), !dbg !691
  %tobool176 = icmp ne i32* %envchanged, null, !dbg !692
  br i1 %tobool176, label %if.then177, label %if.end178, !dbg !694

if.then177:                                       ; preds = %if.then172
  store i32 1, i32* %envchanged, align 4, !dbg !695
  br label %if.end178, !dbg !696

if.end178:                                        ; preds = %if.then177, %if.then172
  br label %if.end323, !dbg !697

if.else179:                                       ; preds = %if.else169
  %59 = load i8*, i8** %cmd, align 8, !dbg !698
  %call180 = call i32 @strcmp(i8* noundef %59, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.197, i64 0, i64 0)), !dbg !700
  %tobool181 = icmp ne i32 %call180, 0, !dbg !700
  br i1 %tobool181, label %if.else192, label %if.then182, !dbg !701

if.then182:                                       ; preds = %if.else179
  %60 = load i32, i32* %argc, align 4, !dbg !702
  %cmp183 = icmp slt i32 %60, 2, !dbg !705
  br i1 %cmp183, label %if.then185, label %if.end188, !dbg !706

if.then185:                                       ; preds = %if.then182
  %61 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !707
  %call186 = call i8* @_(i8* noundef getelementptr inbounds ([35 x i8], [35 x i8]* @.str.198, i64 0, i64 0)), !dbg !709
  %call187 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %61, i8* noundef %call186), !dbg !710
  call void @usage(i8* noundef getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)) #8, !dbg !711
  unreachable, !dbg !711

if.end188:                                        ; preds = %if.then182
  %62 = load i8**, i8*** %argv, align 8, !dbg !712
  %arrayidx189 = getelementptr inbounds i8*, i8** %62, i64 1, !dbg !713
  %63 = load i8*, i8** %arrayidx189, align 8, !dbg !713
  call void @git_config_push_parameter(i8* noundef %63), !dbg !714
  %64 = load i8**, i8*** %argv, align 8, !dbg !715
  %incdec.ptr190 = getelementptr inbounds i8*, i8** %64, i32 1, !dbg !715
  store i8** %incdec.ptr190, i8*** %argv, align 8, !dbg !715
  %65 = load i32, i32* %argc, align 4, !dbg !716
  %dec191 = add nsw i32 %65, -1, !dbg !716
  store i32 %dec191, i32* %argc, align 4, !dbg !716
  br label %if.end322, !dbg !717

if.else192:                                       ; preds = %if.else179
  %66 = load i8*, i8** %cmd, align 8, !dbg !718
  %call193 = call i32 @strcmp(i8* noundef %66, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.199, i64 0, i64 0)), !dbg !720
  %tobool194 = icmp ne i32 %call193, 0, !dbg !720
  br i1 %tobool194, label %if.else205, label %if.then195, !dbg !721

if.then195:                                       ; preds = %if.else192
  %67 = load i32, i32* %argc, align 4, !dbg !722
  %cmp196 = icmp slt i32 %67, 2, !dbg !725
  br i1 %cmp196, label %if.then198, label %if.end201, !dbg !726

if.then198:                                       ; preds = %if.then195
  %68 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !727
  %call199 = call i8* @_(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.200, i64 0, i64 0)), !dbg !729
  %call200 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %68, i8* noundef %call199), !dbg !730
  call void @usage(i8* noundef getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)) #8, !dbg !731
  unreachable, !dbg !731

if.end201:                                        ; preds = %if.then195
  %69 = load i8**, i8*** %argv, align 8, !dbg !732
  %arrayidx202 = getelementptr inbounds i8*, i8** %69, i64 1, !dbg !733
  %70 = load i8*, i8** %arrayidx202, align 8, !dbg !733
  call void @git_config_push_env(i8* noundef %70), !dbg !734
  %71 = load i8**, i8*** %argv, align 8, !dbg !735
  %incdec.ptr203 = getelementptr inbounds i8*, i8** %71, i32 1, !dbg !735
  store i8** %incdec.ptr203, i8*** %argv, align 8, !dbg !735
  %72 = load i32, i32* %argc, align 4, !dbg !736
  %dec204 = add nsw i32 %72, -1, !dbg !736
  store i32 %dec204, i32* %argc, align 4, !dbg !736
  br label %if.end321, !dbg !737

if.else205:                                       ; preds = %if.else192
  %73 = load i8*, i8** %cmd, align 8, !dbg !738
  %call206 = call i32 @skip_prefix(i8* noundef %73, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.201, i64 0, i64 0), i8** noundef %cmd), !dbg !740
  %tobool207 = icmp ne i32 %call206, 0, !dbg !740
  br i1 %tobool207, label %if.then208, label %if.else209, !dbg !741

if.then208:                                       ; preds = %if.else205
  %74 = load i8*, i8** %cmd, align 8, !dbg !742
  call void @git_config_push_env(i8* noundef %74), !dbg !744
  br label %if.end320, !dbg !745

if.else209:                                       ; preds = %if.else205
  %75 = load i8*, i8** %cmd, align 8, !dbg !746
  %call210 = call i32 @strcmp(i8* noundef %75, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.202, i64 0, i64 0)), !dbg !748
  %tobool211 = icmp ne i32 %call210, 0, !dbg !748
  br i1 %tobool211, label %if.else217, label %if.then212, !dbg !749

if.then212:                                       ; preds = %if.else209
  %call213 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.203, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i64 0, i64 0), i32 noundef 1), !dbg !750
  %tobool214 = icmp ne i32* %envchanged, null, !dbg !752
  br i1 %tobool214, label %if.then215, label %if.end216, !dbg !754

if.then215:                                       ; preds = %if.then212
  store i32 1, i32* %envchanged, align 4, !dbg !755
  br label %if.end216, !dbg !756

if.end216:                                        ; preds = %if.then215, %if.then212
  br label %if.end319, !dbg !757

if.else217:                                       ; preds = %if.else209
  %76 = load i8*, i8** %cmd, align 8, !dbg !758
  %call218 = call i32 @strcmp(i8* noundef %76, i8* noundef getelementptr inbounds ([23 x i8], [23 x i8]* @.str.204, i64 0, i64 0)), !dbg !760
  %tobool219 = icmp ne i32 %call218, 0, !dbg !760
  br i1 %tobool219, label %if.else225, label %if.then220, !dbg !761

if.then220:                                       ; preds = %if.else217
  %call221 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.203, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.196, i64 0, i64 0), i32 noundef 1), !dbg !762
  %tobool222 = icmp ne i32* %envchanged, null, !dbg !764
  br i1 %tobool222, label %if.then223, label %if.end224, !dbg !766

if.then223:                                       ; preds = %if.then220
  store i32 1, i32* %envchanged, align 4, !dbg !767
  br label %if.end224, !dbg !768

if.end224:                                        ; preds = %if.then223, %if.then220
  br label %if.end318, !dbg !769

if.else225:                                       ; preds = %if.else217
  %77 = load i8*, i8** %cmd, align 8, !dbg !770
  %call226 = call i32 @strcmp(i8* noundef %77, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.205, i64 0, i64 0)), !dbg !772
  %tobool227 = icmp ne i32 %call226, 0, !dbg !772
  br i1 %tobool227, label %if.else233, label %if.then228, !dbg !773

if.then228:                                       ; preds = %if.else225
  %call229 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.206, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i64 0, i64 0), i32 noundef 1), !dbg !774
  %tobool230 = icmp ne i32* %envchanged, null, !dbg !776
  br i1 %tobool230, label %if.then231, label %if.end232, !dbg !778

if.then231:                                       ; preds = %if.then228
  store i32 1, i32* %envchanged, align 4, !dbg !779
  br label %if.end232, !dbg !780

if.end232:                                        ; preds = %if.then231, %if.then228
  br label %if.end317, !dbg !781

if.else233:                                       ; preds = %if.else225
  %78 = load i8*, i8** %cmd, align 8, !dbg !782
  %call234 = call i32 @strcmp(i8* noundef %78, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.207, i64 0, i64 0)), !dbg !784
  %tobool235 = icmp ne i32 %call234, 0, !dbg !784
  br i1 %tobool235, label %if.else241, label %if.then236, !dbg !785

if.then236:                                       ; preds = %if.else233
  %call237 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.208, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i64 0, i64 0), i32 noundef 1), !dbg !786
  %tobool238 = icmp ne i32* %envchanged, null, !dbg !788
  br i1 %tobool238, label %if.then239, label %if.end240, !dbg !790

if.then239:                                       ; preds = %if.then236
  store i32 1, i32* %envchanged, align 4, !dbg !791
  br label %if.end240, !dbg !792

if.end240:                                        ; preds = %if.then239, %if.then236
  br label %if.end316, !dbg !793

if.else241:                                       ; preds = %if.else233
  %79 = load i8*, i8** %cmd, align 8, !dbg !794
  %call242 = call i32 @strcmp(i8* noundef %79, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.209, i64 0, i64 0)), !dbg !796
  %tobool243 = icmp ne i32 %call242, 0, !dbg !796
  br i1 %tobool243, label %if.else249, label %if.then244, !dbg !797

if.then244:                                       ; preds = %if.else241
  %call245 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.210, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.178, i64 0, i64 0), i32 noundef 1), !dbg !798
  %tobool246 = icmp ne i32* %envchanged, null, !dbg !800
  br i1 %tobool246, label %if.then247, label %if.end248, !dbg !802

if.then247:                                       ; preds = %if.then244
  store i32 1, i32* %envchanged, align 4, !dbg !803
  br label %if.end248, !dbg !804

if.end248:                                        ; preds = %if.then247, %if.then244
  br label %if.end315, !dbg !805

if.else249:                                       ; preds = %if.else241
  %80 = load i8*, i8** %cmd, align 8, !dbg !806
  %call250 = call i32 @strcmp(i8* noundef %80, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.211, i64 0, i64 0)), !dbg !808
  %tobool251 = icmp ne i32 %call250, 0, !dbg !808
  br i1 %tobool251, label %if.else257, label %if.then252, !dbg !809

if.then252:                                       ; preds = %if.else249
  %call253 = call i32 @"\01_setenv"(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.212, i64 0, i64 0), i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str.196, i64 0, i64 0), i32 noundef 1), !dbg !810
  %tobool254 = icmp ne i32* %envchanged, null, !dbg !812
  br i1 %tobool254, label %if.then255, label %if.end256, !dbg !814

if.then255:                                       ; preds = %if.then252
  store i32 1, i32* %envchanged, align 4, !dbg !815
  br label %if.end256, !dbg !816

if.end256:                                        ; preds = %if.then255, %if.then252
  br label %if.end314, !dbg !817

if.else257:                                       ; preds = %if.else249
  %81 = load i8*, i8** %cmd, align 8, !dbg !818
  %call258 = call i32 @strcmp(i8* noundef %81, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.213, i64 0, i64 0)), !dbg !820
  %tobool259 = icmp ne i32 %call258, 0, !dbg !820
  br i1 %tobool259, label %if.else267, label %if.then260, !dbg !821

if.then260:                                       ; preds = %if.else257
  %82 = load i8**, i8*** %argv, align 8, !dbg !822
  %incdec.ptr261 = getelementptr inbounds i8*, i8** %82, i32 1, !dbg !822
  store i8** %incdec.ptr261, i8*** %argv, align 8, !dbg !822
  %83 = load i32, i32* %argc, align 4, !dbg !824
  %dec262 = add nsw i32 %83, -1, !dbg !824
  store i32 %dec262, i32* %argc, align 4, !dbg !824
  %84 = load %struct.repository*, %struct.repository** @the_repository, align 8, !dbg !825
  %85 = load i8**, i8*** %argv, align 8, !dbg !826
  %arrayidx263 = getelementptr inbounds i8*, i8** %85, i64 0, !dbg !827
  %86 = load i8*, i8** %arrayidx263, align 8, !dbg !827
  call void @set_alternate_shallow_file(%struct.repository* noundef %84, i8* noundef %86, i32 noundef 1), !dbg !828
  %tobool264 = icmp ne i32* %envchanged, null, !dbg !829
  br i1 %tobool264, label %if.then265, label %if.end266, !dbg !831

if.then265:                                       ; preds = %if.then260
  store i32 1, i32* %envchanged, align 4, !dbg !832
  br label %if.end266, !dbg !833

if.end266:                                        ; preds = %if.then265, %if.then260
  br label %if.end313, !dbg !834

if.else267:                                       ; preds = %if.else257
  %87 = load i8*, i8** %cmd, align 8, !dbg !835
  %call268 = call i32 @strcmp(i8* noundef %87, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i64 0, i64 0)), !dbg !837
  %tobool269 = icmp ne i32 %call268, 0, !dbg !837
  br i1 %tobool269, label %if.else293, label %if.then270, !dbg !838

if.then270:                                       ; preds = %if.else267
  %88 = load i32, i32* %argc, align 4, !dbg !839
  %cmp271 = icmp slt i32 %88, 2, !dbg !842
  br i1 %cmp271, label %if.then273, label %if.end276, !dbg !843

if.then273:                                       ; preds = %if.then270
  %89 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !844
  %call274 = call i8* @_(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.180, i64 0, i64 0)), !dbg !846
  %call275 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %89, i8* noundef %call274, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.214, i64 0, i64 0)), !dbg !847
  call void @usage(i8* noundef getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)) #8, !dbg !848
  unreachable, !dbg !848

if.end276:                                        ; preds = %if.then270
  %90 = load i8**, i8*** %argv, align 8, !dbg !849
  %arrayidx277 = getelementptr inbounds i8*, i8** %90, i64 1, !dbg !851
  %91 = load i8*, i8** %arrayidx277, align 8, !dbg !851
  %arrayidx278 = getelementptr inbounds i8, i8* %91, i64 0, !dbg !851
  %92 = load i8, i8* %arrayidx278, align 1, !dbg !851
  %tobool279 = icmp ne i8 %92, 0, !dbg !851
  br i1 %tobool279, label %if.then280, label %if.end290, !dbg !852

if.then280:                                       ; preds = %if.end276
  %93 = load i8**, i8*** %argv, align 8, !dbg !853
  %arrayidx281 = getelementptr inbounds i8*, i8** %93, i64 1, !dbg !856
  %94 = load i8*, i8** %arrayidx281, align 8, !dbg !856
  %call282 = call i32 @chdir(i8* noundef %94), !dbg !857
  %tobool283 = icmp ne i32 %call282, 0, !dbg !857
  br i1 %tobool283, label %if.then284, label %if.end286, !dbg !858

if.then284:                                       ; preds = %if.then280
  %95 = load i8**, i8*** %argv, align 8, !dbg !859
  %arrayidx285 = getelementptr inbounds i8*, i8** %95, i64 1, !dbg !860
  %96 = load i8*, i8** %arrayidx285, align 8, !dbg !860
  call void (i8*, ...) @die_errno(i8* noundef getelementptr inbounds ([22 x i8], [22 x i8]* @.str.215, i64 0, i64 0), i8* noundef %96) #8, !dbg !861
  unreachable, !dbg !861

if.end286:                                        ; preds = %if.then280
  %tobool287 = icmp ne i32* %envchanged, null, !dbg !862
  br i1 %tobool287, label %if.then288, label %if.end289, !dbg !864

if.then288:                                       ; preds = %if.end286
  store i32 1, i32* %envchanged, align 4, !dbg !865
  br label %if.end289, !dbg !866

if.end289:                                        ; preds = %if.then288, %if.end286
  br label %if.end290, !dbg !867

if.end290:                                        ; preds = %if.end289, %if.end276
  %97 = load i8**, i8*** %argv, align 8, !dbg !868
  %incdec.ptr291 = getelementptr inbounds i8*, i8** %97, i32 1, !dbg !868
  store i8** %incdec.ptr291, i8*** %argv, align 8, !dbg !868
  %98 = load i32, i32* %argc, align 4, !dbg !869
  %dec292 = add nsw i32 %98, -1, !dbg !869
  store i32 %dec292, i32* %argc, align 4, !dbg !869
  br label %if.end312, !dbg !870

if.else293:                                       ; preds = %if.else267
  %99 = load i8*, i8** %cmd, align 8, !dbg !871
  %call294 = call i32 @skip_prefix(i8* noundef %99, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.216, i64 0, i64 0), i8** noundef %cmd), !dbg !873
  %tobool295 = icmp ne i32 %call294, 0, !dbg !873
  br i1 %tobool295, label %if.then296, label %if.else309, !dbg !874

if.then296:                                       ; preds = %if.else293
  call void @trace2_cmd_name_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 313, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.165, i64 0, i64 0)), !dbg !875
  %100 = load i8*, i8** %cmd, align 8, !dbg !877
  %call297 = call i32 @strcmp(i8* noundef %100, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.217, i64 0, i64 0)), !dbg !879
  %tobool298 = icmp ne i32 %call297, 0, !dbg !879
  br i1 %tobool298, label %if.else306, label %if.then299, !dbg !880

if.then299:                                       ; preds = %if.then296
  call void @llvm.dbg.declare(metadata %struct.string_list* %list, metadata !881, metadata !DIExpression()), !dbg !901
  %101 = bitcast %struct.string_list* %list to i8*, !dbg !901
  call void @llvm.memset.p0i8.i64(i8* align 8 %101, i8 0, i64 40, i1 false), !dbg !901
  %102 = bitcast i8* %101 to %struct.string_list*, !dbg !901
  %103 = getelementptr inbounds %struct.string_list, %struct.string_list* %102, i32 0, i32 3, !dbg !901
  store i8 1, i8* %103, align 8, !dbg !901
  call void @list_builtins(%struct.string_list* noundef %list, i32 noundef 64), !dbg !902
  call void @llvm.dbg.value(metadata i32 0, metadata !903, metadata !DIExpression()), !dbg !904
  br label %for.cond, !dbg !905

for.cond:                                         ; preds = %for.inc, %if.then299
  %i.0 = phi i32 [ 0, %if.then299 ], [ %inc, %for.inc ], !dbg !907
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !903, metadata !DIExpression()), !dbg !904
  %conv300 = sext i32 %i.0 to i64, !dbg !908
  %nr = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 1, !dbg !910
  %104 = load i64, i64* %nr, align 8, !dbg !910
  %cmp301 = icmp ult i64 %conv300, %104, !dbg !911
  br i1 %cmp301, label %for.body, label %for.end, !dbg !912

for.body:                                         ; preds = %for.cond
  %items = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 0, !dbg !913
  %105 = load %struct.string_list_item*, %struct.string_list_item** %items, align 8, !dbg !913
  %idxprom = sext i32 %i.0 to i64, !dbg !914
  %arrayidx303 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %105, i64 %idxprom, !dbg !914
  %string = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %arrayidx303, i32 0, i32 0, !dbg !915
  %106 = load i8*, i8** %string, align 8, !dbg !915
  %call304 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.218, i64 0, i64 0), i8* noundef %106), !dbg !916
  br label %for.inc, !dbg !916

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !917
  call void @llvm.dbg.value(metadata i32 %inc, metadata !903, metadata !DIExpression()), !dbg !904
  br label %for.cond, !dbg !918, !llvm.loop !919

for.end:                                          ; preds = %for.cond
  call void @string_list_clear(%struct.string_list* noundef %list, i32 noundef 0), !dbg !921
  %call305 = call i32 @common_exit(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 322, i32 noundef 0), !dbg !922
  call void @exit(i32 noundef %call305) #8, !dbg !922
  unreachable, !dbg !922

if.else306:                                       ; preds = %if.then296
  %107 = load i8*, i8** %cmd, align 8, !dbg !923
  %call307 = call i32 @list_cmds(i8* noundef %107), !dbg !923
  %call308 = call i32 @common_exit(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 324, i32 noundef %call307), !dbg !923
  call void @exit(i32 noundef %call308) #8, !dbg !923
  unreachable, !dbg !923

if.else309:                                       ; preds = %if.else293
  %108 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !925
  %call310 = call i8* @_(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.219, i64 0, i64 0)), !dbg !927
  %109 = load i8*, i8** %cmd, align 8, !dbg !928
  %call311 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf(%struct.__sFILE* noundef %108, i8* noundef %call310, i8* noundef %109), !dbg !929
  call void @usage(i8* noundef getelementptr inbounds ([389 x i8], [389 x i8]* @git_usage_string, i64 0, i64 0)) #8, !dbg !930
  unreachable, !dbg !930

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
  %110 = load i8**, i8*** %argv, align 8, !dbg !931
  %incdec.ptr339 = getelementptr inbounds i8*, i8** %110, i32 1, !dbg !931
  store i8** %incdec.ptr339, i8*** %argv, align 8, !dbg !931
  %111 = load i32, i32* %argc, align 4, !dbg !932
  %dec340 = add nsw i32 %111, -1, !dbg !932
  store i32 %dec340, i32* %argc, align 4, !dbg !932
  br label %while.cond, !dbg !417, !llvm.loop !933

while.end:                                        ; preds = %if.then12, %if.then, %while.cond
  %112 = load i8**, i8*** %argv, align 8, !dbg !935
  %sub.ptr.lhs.cast = ptrtoint i8** %112 to i64, !dbg !936
  %sub.ptr.rhs.cast = ptrtoint i8** %0 to i64, !dbg !936
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !936
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8, !dbg !936
  %conv341 = trunc i64 %sub.ptr.div to i32, !dbg !937
  ret i32 %conv341, !dbg !938
}

declare i32 @printf(i8* noundef, ...) #2

declare void @list_common_cmds_help() #2

declare i32 @common_exit(i8* noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noreturn
declare void @exit(i32 noundef) #3

declare void @setup_path() #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @run_argv(i32* noundef %argcp, i8*** noundef %argv) #0 !dbg !939 {
entry:
  %cmd_list = alloca %struct.string_list, align 8
  %cmd = alloca %struct.child_process, align 8
  %sb = alloca %struct.strbuf, align 8
  call void @llvm.dbg.value(metadata i32* %argcp, metadata !942, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i8*** %argv, metadata !944, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i32 0, metadata !945, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.declare(metadata %struct.string_list* %cmd_list, metadata !946, metadata !DIExpression()), !dbg !947
  %0 = bitcast %struct.string_list* %cmd_list to i8*, !dbg !947
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 40, i1 false), !dbg !947
  br label %while.body, !dbg !948

while.body:                                       ; preds = %entry, %if.end64
  %done_alias.0 = phi i32 [ 0, %entry ], [ 1, %if.end64 ], !dbg !943
  call void @llvm.dbg.value(metadata i32 %done_alias.0, metadata !945, metadata !DIExpression()), !dbg !943
  %tobool = icmp ne i32 %done_alias.0, 0, !dbg !949
  br i1 %tobool, label %if.else, label %if.then, !dbg !952

if.then:                                          ; preds = %while.body
  %1 = load i32, i32* %argcp, align 4, !dbg !953
  %2 = load i8**, i8*** %argv, align 8, !dbg !954
  call void @handle_builtin(i32 noundef %1, i8** noundef %2), !dbg !955
  br label %if.end28, !dbg !955

if.else:                                          ; preds = %while.body
  %3 = load i8**, i8*** %argv, align 8, !dbg !956
  %4 = load i8*, i8** %3, align 8, !dbg !958
  %call = call %struct.cmd_struct* @get_builtin(i8* noundef %4), !dbg !959
  %tobool1 = icmp ne %struct.cmd_struct* %call, null, !dbg !959
  br i1 %tobool1, label %if.then2, label %if.end27, !dbg !960

if.then2:                                         ; preds = %if.else
  call void @llvm.dbg.declare(metadata %struct.child_process* %cmd, metadata !961, metadata !DIExpression()), !dbg !1000
  %5 = bitcast %struct.child_process* %cmd to i8*, !dbg !1000
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 120, i1 false), !dbg !1000
  %6 = bitcast i8* %5 to { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }*, !dbg !1000
  %7 = getelementptr inbounds { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }, { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }* %6, i32 0, i32 0, !dbg !1000
  %8 = getelementptr inbounds %struct.strvec, %struct.strvec* %7, i32 0, i32 0, !dbg !1000
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @empty_strvec, i32 0, i32 0), i8*** %8, align 8, !dbg !1000
  %9 = getelementptr inbounds { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }, { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }* %6, i32 0, i32 1, !dbg !1000
  %10 = getelementptr inbounds %struct.strvec, %struct.strvec* %9, i32 0, i32 0, !dbg !1000
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @empty_strvec, i32 0, i32 0), i8*** %10, align 8, !dbg !1000
  call void @trace2_cmd_name_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 800, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.228, i64 0, i64 0)), !dbg !1001
  %call3 = call i8* @get_super_prefix(), !dbg !1002
  %tobool4 = icmp ne i8* %call3, null, !dbg !1002
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !1004

if.then5:                                         ; preds = %if.then2
  %11 = load i8**, i8*** %argv, align 8, !dbg !1005
  %12 = load i8*, i8** %11, align 8, !dbg !1006
  call void (i8*, ...) @die(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.158, i64 0, i64 0), i8* noundef %12) #8, !dbg !1007
  unreachable, !dbg !1007

if.end:                                           ; preds = %if.then2
  call void @commit_pager_choice(), !dbg !1008
  %args = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 0, !dbg !1009
  %call6 = call i8* @strvec_push(%struct.strvec* noundef %args, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.229, i64 0, i64 0)), !dbg !1010
  call void @llvm.dbg.value(metadata i32 0, metadata !1011, metadata !DIExpression()), !dbg !1012
  br label %for.cond, !dbg !1013

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ], !dbg !1015
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1011, metadata !DIExpression()), !dbg !1012
  %13 = load i32, i32* %argcp, align 4, !dbg !1016
  %cmp = icmp slt i32 %i.0, %13, !dbg !1018
  br i1 %cmp, label %for.body, label %for.end, !dbg !1019

for.body:                                         ; preds = %for.cond
  %args7 = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 0, !dbg !1020
  %14 = load i8**, i8*** %argv, align 8, !dbg !1021
  %idxprom = sext i32 %i.0 to i64, !dbg !1022
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %idxprom, !dbg !1022
  %15 = load i8*, i8** %arrayidx, align 8, !dbg !1022
  %call8 = call i8* @strvec_push(%struct.strvec* noundef %args7, i8* noundef %15), !dbg !1023
  br label %for.inc, !dbg !1023

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !1024
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1011, metadata !DIExpression()), !dbg !1012
  br label %for.cond, !dbg !1025, !llvm.loop !1026

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !1028

do.body:                                          ; preds = %for.end
  %call9 = call i32 @trace_pass_fl(%struct.trace_key* noundef @trace_default_key), !dbg !1029
  %tobool10 = icmp ne i32 %call9, 0, !dbg !1029
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !1032

if.then11:                                        ; preds = %do.body
  %args12 = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 0, !dbg !1029
  %v = getelementptr inbounds %struct.strvec, %struct.strvec* %args12, i32 0, i32 0, !dbg !1029
  %16 = load i8**, i8*** %v, align 8, !dbg !1029
  call void (i8*, i32, i8**, i8*, ...) @trace_argv_printf_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 811, i8** noundef %16, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.230, i64 0, i64 0)), !dbg !1029
  br label %if.end13, !dbg !1029

if.end13:                                         ; preds = %if.then11, %do.body
  br label %do.end, !dbg !1032

do.end:                                           ; preds = %if.end13
  %silent_exec_failure = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 11, !dbg !1033
  %bf.load = load i16, i16* %silent_exec_failure, align 8, !dbg !1034
  %bf.clear = and i16 %bf.load, -17, !dbg !1034
  %bf.set = or i16 %bf.clear, 16, !dbg !1034
  store i16 %bf.set, i16* %silent_exec_failure, align 8, !dbg !1034
  %clean_on_exit = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 11, !dbg !1035
  %bf.load14 = load i16, i16* %clean_on_exit, align 8, !dbg !1036
  %bf.clear15 = and i16 %bf.load14, -257, !dbg !1036
  %bf.set16 = or i16 %bf.clear15, 256, !dbg !1036
  store i16 %bf.set16, i16* %clean_on_exit, align 8, !dbg !1036
  %wait_after_clean = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 11, !dbg !1037
  %bf.load17 = load i16, i16* %wait_after_clean, align 8, !dbg !1038
  %bf.clear18 = and i16 %bf.load17, -513, !dbg !1038
  %bf.set19 = or i16 %bf.clear18, 512, !dbg !1038
  store i16 %bf.set19, i16* %wait_after_clean, align 8, !dbg !1038
  %trace2_child_class = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 5, !dbg !1039
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.231, i64 0, i64 0), i8** %trace2_child_class, align 8, !dbg !1040
  %call20 = call i32 @run_command(%struct.child_process* noundef %cmd), !dbg !1041
  call void @llvm.dbg.value(metadata i32 %call20, metadata !1011, metadata !DIExpression()), !dbg !1012
  %cmp21 = icmp sge i32 %call20, 0, !dbg !1042
  br i1 %cmp21, label %if.then24, label %lor.lhs.false, !dbg !1044

lor.lhs.false:                                    ; preds = %do.end
  %call22 = call i32* @__error(), !dbg !1045
  %17 = load i32, i32* %call22, align 4, !dbg !1045
  %cmp23 = icmp ne i32 %17, 2, !dbg !1046
  br i1 %cmp23, label %if.then24, label %if.end26, !dbg !1047

if.then24:                                        ; preds = %lor.lhs.false, %do.end
  %call25 = call i32 @common_exit(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 823, i32 noundef %call20), !dbg !1048
  call void @exit(i32 noundef %call25) #8, !dbg !1048
  unreachable, !dbg !1048

if.end26:                                         ; preds = %lor.lhs.false
  %18 = load i8**, i8*** %argv, align 8, !dbg !1049
  %19 = load i8*, i8** %18, align 8, !dbg !1050
  call void (i8*, ...) @die(i8* noundef getelementptr inbounds ([29 x i8], [29 x i8]* @.str.232, i64 0, i64 0), i8* noundef %19) #8, !dbg !1051
  unreachable, !dbg !1051

if.end27:                                         ; preds = %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then
  %20 = load i8**, i8*** %argv, align 8, !dbg !1052
  call void @execv_dashed_external(i8** noundef %20), !dbg !1053
  %arrayidx29 = getelementptr inbounds i8**, i8*** %argv, i64 0, !dbg !1054
  %21 = load i8**, i8*** %arrayidx29, align 8, !dbg !1054
  %22 = load i8*, i8** %21, align 8, !dbg !1055
  %call30 = call %struct.string_list_item* @unsorted_string_list_lookup(%struct.string_list* noundef %cmd_list, i8* noundef %22), !dbg !1056
  call void @llvm.dbg.value(metadata %struct.string_list_item* %call30, metadata !1057, metadata !DIExpression()), !dbg !943
  %tobool31 = icmp ne %struct.string_list_item* %call30, null, !dbg !1058
  br i1 %tobool31, label %if.then32, label %if.end58, !dbg !1060

if.then32:                                        ; preds = %if.end28
  call void @llvm.dbg.declare(metadata %struct.strbuf* %sb, metadata !1061, metadata !DIExpression()), !dbg !1069
  %23 = bitcast %struct.strbuf* %sb to i8*, !dbg !1069
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.strbuf* @__const.run_argv.sb to i8*), i64 24, i1 false), !dbg !1069
  call void @llvm.dbg.value(metadata i32 0, metadata !1070, metadata !DIExpression()), !dbg !1071
  br label %for.cond34, !dbg !1072

for.cond34:                                       ; preds = %for.inc51, %if.then32
  %i33.0 = phi i32 [ 0, %if.then32 ], [ %inc52, %for.inc51 ], !dbg !1074
  call void @llvm.dbg.value(metadata i32 %i33.0, metadata !1070, metadata !DIExpression()), !dbg !1071
  %conv = sext i32 %i33.0 to i64, !dbg !1075
  %nr = getelementptr inbounds %struct.string_list, %struct.string_list* %cmd_list, i32 0, i32 1, !dbg !1077
  %24 = load i64, i64* %nr, align 8, !dbg !1077
  %cmp35 = icmp ult i64 %conv, %24, !dbg !1078
  br i1 %cmp35, label %for.body37, label %for.end53, !dbg !1079

for.body37:                                       ; preds = %for.cond34
  %items = getelementptr inbounds %struct.string_list, %struct.string_list* %cmd_list, i32 0, i32 0, !dbg !1080
  %25 = load %struct.string_list_item*, %struct.string_list_item** %items, align 8, !dbg !1080
  %idxprom38 = sext i32 %i33.0 to i64, !dbg !1082
  %arrayidx39 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %25, i64 %idxprom38, !dbg !1082
  call void @llvm.dbg.value(metadata %struct.string_list_item* %arrayidx39, metadata !1083, metadata !DIExpression()), !dbg !1084
  %string = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %arrayidx39, i32 0, i32 0, !dbg !1085
  %26 = load i8*, i8** %string, align 8, !dbg !1085
  call void (%struct.strbuf*, i8*, ...) @strbuf_addf(%struct.strbuf* noundef %sb, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.233, i64 0, i64 0), i8* noundef %26), !dbg !1086
  %cmp40 = icmp eq %struct.string_list_item* %arrayidx39, %call30, !dbg !1087
  br i1 %cmp40, label %if.then42, label %if.else43, !dbg !1089

if.then42:                                        ; preds = %for.body37
  call void @strbuf_addstr(%struct.strbuf* noundef %sb, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.234, i64 0, i64 0)), !dbg !1090
  br label %if.end50, !dbg !1090

if.else43:                                        ; preds = %for.body37
  %conv44 = sext i32 %i33.0 to i64, !dbg !1091
  %nr45 = getelementptr inbounds %struct.string_list, %struct.string_list* %cmd_list, i32 0, i32 1, !dbg !1093
  %27 = load i64, i64* %nr45, align 8, !dbg !1093
  %sub = sub i64 %27, 1, !dbg !1094
  %cmp46 = icmp eq i64 %conv44, %sub, !dbg !1095
  br i1 %cmp46, label %if.then48, label %if.end49, !dbg !1096

if.then48:                                        ; preds = %if.else43
  call void @strbuf_addstr(%struct.strbuf* noundef %sb, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.235, i64 0, i64 0)), !dbg !1097
  br label %if.end49, !dbg !1097

if.end49:                                         ; preds = %if.then48, %if.else43
  br label %if.end50

if.end50:                                         ; preds = %if.end49, %if.then42
  br label %for.inc51, !dbg !1098

for.inc51:                                        ; preds = %if.end50
  %inc52 = add nsw i32 %i33.0, 1, !dbg !1099
  call void @llvm.dbg.value(metadata i32 %inc52, metadata !1070, metadata !DIExpression()), !dbg !1071
  br label %for.cond34, !dbg !1100, !llvm.loop !1101

for.end53:                                        ; preds = %for.cond34
  %call54 = call i8* @_(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.236, i64 0, i64 0)), !dbg !1103
  %items55 = getelementptr inbounds %struct.string_list, %struct.string_list* %cmd_list, i32 0, i32 0, !dbg !1104
  %28 = load %struct.string_list_item*, %struct.string_list_item** %items55, align 8, !dbg !1104
  %arrayidx56 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %28, i64 0, !dbg !1105
  %string57 = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %arrayidx56, i32 0, i32 0, !dbg !1106
  %29 = load i8*, i8** %string57, align 8, !dbg !1106
  %buf = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i32 0, i32 2, !dbg !1107
  %30 = load i8*, i8** %buf, align 8, !dbg !1107
  call void (i8*, ...) @die(i8* noundef %call54, i8* noundef %29, i8* noundef %30) #8, !dbg !1108
  unreachable, !dbg !1108

if.end58:                                         ; preds = %if.end28
  %arrayidx59 = getelementptr inbounds i8**, i8*** %argv, i64 0, !dbg !1109
  %31 = load i8**, i8*** %arrayidx59, align 8, !dbg !1109
  %32 = load i8*, i8** %31, align 8, !dbg !1110
  %call60 = call %struct.string_list_item* @string_list_append(%struct.string_list* noundef %cmd_list, i8* noundef %32), !dbg !1111
  %call61 = call i32 @handle_alias(i32* noundef %argcp, i8*** noundef %argv), !dbg !1112
  %tobool62 = icmp ne i32 %call61, 0, !dbg !1112
  br i1 %tobool62, label %if.end64, label %if.then63, !dbg !1114

if.then63:                                        ; preds = %if.end58
  br label %while.end, !dbg !1115

if.end64:                                         ; preds = %if.end58
  call void @llvm.dbg.value(metadata i32 1, metadata !945, metadata !DIExpression()), !dbg !943
  br label %while.body, !dbg !948, !llvm.loop !1116

while.end:                                        ; preds = %if.then63
  call void @string_list_clear(%struct.string_list* noundef %cmd_list, i32 noundef 0), !dbg !1118
  ret i32 %done_alias.0, !dbg !1119
}

declare i32* @__error() #2

declare i32 @fprintf(%struct.__sFILE* noundef, i8* noundef, ...) #2

declare i8* @help_unknown_cmd(i8* noundef) #2

declare i8* @"\01_strerror"(i32 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare void @trace2_cmd_name_fl(i8* noundef, i32 noundef, i8* noundef) #2

declare i8* @get_super_prefix() #2

declare i8* @strvec_push(%struct.strvec* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @trace_pass_fl(%struct.trace_key* noundef %key) #0 !dbg !1120 {
entry:
  call void @llvm.dbg.value(metadata %struct.trace_key* %key, metadata !1132, metadata !DIExpression()), !dbg !1133
  %fd = getelementptr inbounds %struct.trace_key, %struct.trace_key* %key, i32 0, i32 1, !dbg !1134
  %0 = load i32, i32* %fd, align 8, !dbg !1134
  %tobool = icmp ne i32 %0, 0, !dbg !1135
  br i1 %tobool, label %lor.end, label %lor.rhs, !dbg !1136

lor.rhs:                                          ; preds = %entry
  %initialized = getelementptr inbounds %struct.trace_key, %struct.trace_key* %key, i32 0, i32 2, !dbg !1137
  %bf.load = load i8, i8* %initialized, align 4, !dbg !1137
  %bf.clear = and i8 %bf.load, 1, !dbg !1137
  %bf.cast = zext i8 %bf.clear to i32, !dbg !1137
  %tobool1 = icmp ne i32 %bf.cast, 0, !dbg !1138
  %lnot = xor i1 %tobool1, true, !dbg !1138
  br label %lor.end, !dbg !1136

lor.end:                                          ; preds = %lor.rhs, %entry
  %1 = phi i1 [ true, %entry ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %1 to i32, !dbg !1136
  ret i32 %lor.ext, !dbg !1139
}

declare void @trace_argv_printf_fl(i8* noundef, i32 noundef, i8** noundef, i8* noundef, ...) #2

declare i32 @run_command(%struct.child_process* noundef) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @execv_dashed_external(i8** noundef %argv) #0 !dbg !1140 {
entry:
  %cmd = alloca %struct.child_process, align 8
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1143, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.declare(metadata %struct.child_process* %cmd, metadata !1145, metadata !DIExpression()), !dbg !1146
  %0 = bitcast %struct.child_process* %cmd to i8*, !dbg !1146
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 120, i1 false), !dbg !1146
  %1 = bitcast i8* %0 to { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }*, !dbg !1146
  %2 = getelementptr inbounds { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }, { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }* %1, i32 0, i32 0, !dbg !1146
  %3 = getelementptr inbounds %struct.strvec, %struct.strvec* %2, i32 0, i32 0, !dbg !1146
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @empty_strvec, i32 0, i32 0), i8*** %3, align 8, !dbg !1146
  %4 = getelementptr inbounds { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }, { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }* %1, i32 0, i32 1, !dbg !1146
  %5 = getelementptr inbounds %struct.strvec, %struct.strvec* %4, i32 0, i32 0, !dbg !1146
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @empty_strvec, i32 0, i32 0), i8*** %5, align 8, !dbg !1146
  %call = call i8* @get_super_prefix(), !dbg !1147
  %tobool = icmp ne i8* %call, null, !dbg !1147
  br i1 %tobool, label %if.then, label %if.end, !dbg !1149

if.then:                                          ; preds = %entry
  %call1 = call i8* @_(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.158, i64 0, i64 0)), !dbg !1150
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !1151
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !1151
  call void (i8*, ...) @die(i8* noundef %call1, i8* noundef %6) #8, !dbg !1152
  unreachable, !dbg !1152

if.end:                                           ; preds = %entry
  %7 = load i32, i32* @use_pager, align 4, !dbg !1153
  %cmp = icmp eq i32 %7, -1, !dbg !1155
  br i1 %cmp, label %land.lhs.true, label %if.end8, !dbg !1156

land.lhs.true:                                    ; preds = %if.end
  %arrayidx2 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !1157
  %8 = load i8*, i8** %arrayidx2, align 8, !dbg !1157
  %call3 = call i32 @is_builtin(i8* noundef %8), !dbg !1158
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1158
  br i1 %tobool4, label %if.end8, label %if.then5, !dbg !1159

if.then5:                                         ; preds = %land.lhs.true
  %arrayidx6 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !1160
  %9 = load i8*, i8** %arrayidx6, align 8, !dbg !1160
  %call7 = call i32 @check_pager_config(i8* noundef %9), !dbg !1161
  store i32 %call7, i32* @use_pager, align 4, !dbg !1162
  br label %if.end8, !dbg !1163

if.end8:                                          ; preds = %if.then5, %land.lhs.true, %if.end
  call void @commit_pager_choice(), !dbg !1164
  %args = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 0, !dbg !1165
  %arrayidx9 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !1166
  %10 = load i8*, i8** %arrayidx9, align 8, !dbg !1166
  %call10 = call i8* (%struct.strvec*, i8*, ...) @strvec_pushf(%struct.strvec* noundef %args, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.237, i64 0, i64 0), i8* noundef %10), !dbg !1167
  %args11 = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 0, !dbg !1168
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !1169
  call void @strvec_pushv(%struct.strvec* noundef %args11, i8** noundef %add.ptr), !dbg !1170
  %clean_on_exit = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 11, !dbg !1171
  %bf.load = load i16, i16* %clean_on_exit, align 8, !dbg !1172
  %bf.clear = and i16 %bf.load, -257, !dbg !1172
  %bf.set = or i16 %bf.clear, 256, !dbg !1172
  store i16 %bf.set, i16* %clean_on_exit, align 8, !dbg !1172
  %wait_after_clean = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 11, !dbg !1173
  %bf.load12 = load i16, i16* %wait_after_clean, align 8, !dbg !1174
  %bf.clear13 = and i16 %bf.load12, -513, !dbg !1174
  %bf.set14 = or i16 %bf.clear13, 512, !dbg !1174
  store i16 %bf.set14, i16* %wait_after_clean, align 8, !dbg !1174
  %silent_exec_failure = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 11, !dbg !1175
  %bf.load15 = load i16, i16* %silent_exec_failure, align 8, !dbg !1176
  %bf.clear16 = and i16 %bf.load15, -17, !dbg !1176
  %bf.set17 = or i16 %bf.clear16, 16, !dbg !1176
  store i16 %bf.set17, i16* %silent_exec_failure, align 8, !dbg !1176
  %trace2_child_class = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 5, !dbg !1177
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.238, i64 0, i64 0), i8** %trace2_child_class, align 8, !dbg !1178
  call void @trace2_cmd_name_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 744, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.239, i64 0, i64 0)), !dbg !1179
  br label %do.body, !dbg !1180

do.body:                                          ; preds = %if.end8
  %call18 = call i32 @trace_pass_fl(%struct.trace_key* noundef @trace_default_key), !dbg !1181
  %tobool19 = icmp ne i32 %call18, 0, !dbg !1181
  br i1 %tobool19, label %if.then20, label %if.end22, !dbg !1184

if.then20:                                        ; preds = %do.body
  %args21 = getelementptr inbounds %struct.child_process, %struct.child_process* %cmd, i32 0, i32 0, !dbg !1181
  %v = getelementptr inbounds %struct.strvec, %struct.strvec* %args21, i32 0, i32 0, !dbg !1181
  %11 = load i8**, i8*** %v, align 8, !dbg !1181
  call void (i8*, i32, i8**, i8*, ...) @trace_argv_printf_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 750, i8** noundef %11, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.230, i64 0, i64 0)), !dbg !1181
  br label %if.end22, !dbg !1181

if.end22:                                         ; preds = %if.then20, %do.body
  br label %do.end, !dbg !1184

do.end:                                           ; preds = %if.end22
  %call23 = call i32 @run_command(%struct.child_process* noundef %cmd), !dbg !1185
  call void @llvm.dbg.value(metadata i32 %call23, metadata !1186, metadata !DIExpression()), !dbg !1144
  %cmp24 = icmp sge i32 %call23, 0, !dbg !1187
  br i1 %cmp24, label %if.then25, label %if.else, !dbg !1189

if.then25:                                        ; preds = %do.end
  %call26 = call i32 @common_exit(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 766, i32 noundef %call23), !dbg !1190
  call void @exit(i32 noundef %call26) #8, !dbg !1190
  unreachable, !dbg !1190

if.else:                                          ; preds = %do.end
  %call27 = call i32* @__error(), !dbg !1191
  %12 = load i32, i32* %call27, align 4, !dbg !1191
  %cmp28 = icmp ne i32 %12, 2, !dbg !1193
  br i1 %cmp28, label %if.then29, label %if.end31, !dbg !1194

if.then29:                                        ; preds = %if.else
  %call30 = call i32 @common_exit(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 768, i32 noundef 128), !dbg !1195
  call void @exit(i32 noundef %call30) #8, !dbg !1195
  unreachable, !dbg !1195

if.end31:                                         ; preds = %if.else
  br label %if.end32

if.end32:                                         ; preds = %if.end31
  ret void, !dbg !1196
}

declare %struct.string_list_item* @unsorted_string_list_lookup(%struct.string_list* noundef, i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare void @strbuf_addf(%struct.strbuf* noundef, i8* noundef, ...) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @strbuf_addstr(%struct.strbuf* noundef %sb, i8* noundef %s) #0 !dbg !1197 {
entry:
  call void @llvm.dbg.value(metadata %struct.strbuf* %sb, metadata !1201, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i8* %s, metadata !1203, metadata !DIExpression()), !dbg !1202
  %call = call i64 @strlen(i8* noundef %s), !dbg !1204
  call void @strbuf_add(%struct.strbuf* noundef %sb, i8* noundef %s, i64 noundef %call), !dbg !1205
  ret void, !dbg !1206
}

declare %struct.string_list_item* @string_list_append(%struct.string_list* noundef, i8* noundef) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @handle_alias(i32* noundef %argcp, i8*** noundef %argv) #0 !dbg !1207 {
entry:
  %envchanged = alloca i32, align 4
  %count = alloca i32, align 4
  %new_argv = alloca i8**, align 8
  %child = alloca %struct.child_process, align 8
  %nongit_ok = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %argcp, metadata !1208, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.value(metadata i8*** %argv, metadata !1210, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.declare(metadata i32* %envchanged, metadata !1211, metadata !DIExpression()), !dbg !1212
  store i32 0, i32* %envchanged, align 4, !dbg !1212
  call void @llvm.dbg.value(metadata i32 0, metadata !1213, metadata !DIExpression()), !dbg !1209
  %call = call i32* @__error(), !dbg !1214
  %0 = load i32, i32* %call, align 4, !dbg !1214
  call void @llvm.dbg.value(metadata i32 %0, metadata !1215, metadata !DIExpression()), !dbg !1209
  call void @llvm.dbg.declare(metadata i32* %count, metadata !1216, metadata !DIExpression()), !dbg !1217
  call void @llvm.dbg.declare(metadata i8*** %new_argv, metadata !1218, metadata !DIExpression()), !dbg !1219
  %1 = load i8**, i8*** %argv, align 8, !dbg !1220
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0, !dbg !1221
  %2 = load i8*, i8** %arrayidx, align 8, !dbg !1221
  call void @llvm.dbg.value(metadata i8* %2, metadata !1222, metadata !DIExpression()), !dbg !1209
  %call1 = call i8* @alias_lookup(i8* noundef %2), !dbg !1223
  call void @llvm.dbg.value(metadata i8* %call1, metadata !1224, metadata !DIExpression()), !dbg !1209
  %tobool = icmp ne i8* %call1, null, !dbg !1225
  br i1 %tobool, label %if.then, label %if.end73, !dbg !1227

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %argcp, align 4, !dbg !1228
  %cmp = icmp sgt i32 %3, 1, !dbg !1231
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1232

land.lhs.true:                                    ; preds = %if.then
  %4 = load i8**, i8*** %argv, align 8, !dbg !1233
  %arrayidx2 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !1234
  %5 = load i8*, i8** %arrayidx2, align 8, !dbg !1234
  %call3 = call i32 @strcmp(i8* noundef %5, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)), !dbg !1235
  %tobool4 = icmp ne i32 %call3, 0, !dbg !1235
  br i1 %tobool4, label %if.end, label %if.then5, !dbg !1236

if.then5:                                         ; preds = %land.lhs.true
  %6 = load %struct.__sFILE*, %struct.__sFILE** @__stderrp, align 8, !dbg !1237
  %call6 = call i8* @_(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.240, i64 0, i64 0)), !dbg !1238
  %call7 = call i32 (%struct.__sFILE*, i8*, ...) @fprintf_ln(%struct.__sFILE* noundef %6, i8* noundef %call6, i8* noundef %2, i8* noundef %call1), !dbg !1239
  br label %if.end, !dbg !1239

if.end:                                           ; preds = %if.then5, %land.lhs.true, %if.then
  %arrayidx8 = getelementptr inbounds i8, i8* %call1, i64 0, !dbg !1240
  %7 = load i8, i8* %arrayidx8, align 1, !dbg !1240
  %conv = sext i8 %7 to i32, !dbg !1240
  %cmp9 = icmp eq i32 %conv, 33, !dbg !1242
  br i1 %cmp9, label %if.then11, label %if.end31, !dbg !1243

if.then11:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata %struct.child_process* %child, metadata !1244, metadata !DIExpression()), !dbg !1246
  %8 = bitcast %struct.child_process* %child to i8*, !dbg !1246
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 120, i1 false), !dbg !1246
  %9 = bitcast i8* %8 to { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }*, !dbg !1246
  %10 = getelementptr inbounds { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }, { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }* %9, i32 0, i32 0, !dbg !1246
  %11 = getelementptr inbounds %struct.strvec, %struct.strvec* %10, i32 0, i32 0, !dbg !1246
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @empty_strvec, i32 0, i32 0), i8*** %11, align 8, !dbg !1246
  %12 = getelementptr inbounds { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }, { %struct.strvec, %struct.strvec, i32, i32, i64, i8*, i8*, i32, i32, i32, i8*, i8, i8, void (%struct.child_process*)* }* %9, i32 0, i32 1, !dbg !1246
  %13 = getelementptr inbounds %struct.strvec, %struct.strvec* %12, i32 0, i32 0, !dbg !1246
  store i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @empty_strvec, i32 0, i32 0), i8*** %13, align 8, !dbg !1246
  call void @llvm.dbg.declare(metadata i32* %nongit_ok, metadata !1247, metadata !DIExpression()), !dbg !1248
  %call12 = call i8* @setup_git_directory_gently(i32* noundef %nongit_ok), !dbg !1249
  call void @commit_pager_choice(), !dbg !1250
  %use_shell = getelementptr inbounds %struct.child_process, %struct.child_process* %child, i32 0, i32 11, !dbg !1251
  %bf.load = load i16, i16* %use_shell, align 8, !dbg !1252
  %bf.clear = and i16 %bf.load, -33, !dbg !1252
  %bf.set = or i16 %bf.clear, 32, !dbg !1252
  store i16 %bf.set, i16* %use_shell, align 8, !dbg !1252
  %clean_on_exit = getelementptr inbounds %struct.child_process, %struct.child_process* %child, i32 0, i32 11, !dbg !1253
  %bf.load13 = load i16, i16* %clean_on_exit, align 8, !dbg !1254
  %bf.clear14 = and i16 %bf.load13, -257, !dbg !1254
  %bf.set15 = or i16 %bf.clear14, 256, !dbg !1254
  store i16 %bf.set15, i16* %clean_on_exit, align 8, !dbg !1254
  %wait_after_clean = getelementptr inbounds %struct.child_process, %struct.child_process* %child, i32 0, i32 11, !dbg !1255
  %bf.load16 = load i16, i16* %wait_after_clean, align 8, !dbg !1256
  %bf.clear17 = and i16 %bf.load16, -513, !dbg !1256
  %bf.set18 = or i16 %bf.clear17, 512, !dbg !1256
  store i16 %bf.set18, i16* %wait_after_clean, align 8, !dbg !1256
  %trace2_child_class = getelementptr inbounds %struct.child_process, %struct.child_process* %child, i32 0, i32 5, !dbg !1257
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.241, i64 0, i64 0), i8** %trace2_child_class, align 8, !dbg !1258
  %args = getelementptr inbounds %struct.child_process, %struct.child_process* %child, i32 0, i32 0, !dbg !1259
  %add.ptr = getelementptr inbounds i8, i8* %call1, i64 1, !dbg !1260
  %call19 = call i8* @strvec_push(%struct.strvec* noundef %args, i8* noundef %add.ptr), !dbg !1261
  %args20 = getelementptr inbounds %struct.child_process, %struct.child_process* %child, i32 0, i32 0, !dbg !1262
  %14 = load i8**, i8*** %argv, align 8, !dbg !1263
  %add.ptr21 = getelementptr inbounds i8*, i8** %14, i64 1, !dbg !1264
  call void @strvec_pushv(%struct.strvec* noundef %args20, i8** noundef %add.ptr21), !dbg !1265
  %args22 = getelementptr inbounds %struct.child_process, %struct.child_process* %child, i32 0, i32 0, !dbg !1266
  %v = getelementptr inbounds %struct.strvec, %struct.strvec* %args22, i32 0, i32 0, !dbg !1266
  %15 = load i8**, i8*** %v, align 8, !dbg !1266
  call void @trace2_cmd_alias_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 367, i8* noundef %2, i8** noundef %15), !dbg !1266
  call void @trace2_cmd_list_config_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 368), !dbg !1267
  call void @trace2_cmd_list_env_vars_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 369), !dbg !1268
  call void @trace2_cmd_name_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 370, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str.242, i64 0, i64 0)), !dbg !1269
  %call23 = call i32 @run_command(%struct.child_process* noundef %child), !dbg !1270
  call void @llvm.dbg.value(metadata i32 %call23, metadata !1213, metadata !DIExpression()), !dbg !1209
  %cmp24 = icmp sge i32 %call23, 0, !dbg !1271
  br i1 %cmp24, label %if.then26, label %if.end28, !dbg !1273

if.then26:                                        ; preds = %if.then11
  %call27 = call i32 @common_exit(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 374, i32 noundef %call23), !dbg !1274
  call void @exit(i32 noundef %call27) #8, !dbg !1274
  unreachable, !dbg !1274

if.end28:                                         ; preds = %if.then11
  %call29 = call i8* @_(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.243, i64 0, i64 0)), !dbg !1275
  %add.ptr30 = getelementptr inbounds i8, i8* %call1, i64 1, !dbg !1276
  call void (i8*, ...) @die_errno(i8* noundef %call29, i8* noundef %2, i8* noundef %add.ptr30) #8, !dbg !1277
  unreachable, !dbg !1277

if.end31:                                         ; preds = %if.end
  %call32 = call i32 @split_cmdline(i8* noundef %call1, i8*** noundef %new_argv), !dbg !1278
  store i32 %call32, i32* %count, align 4, !dbg !1279
  %16 = load i32, i32* %count, align 4, !dbg !1280
  %cmp33 = icmp slt i32 %16, 0, !dbg !1282
  br i1 %cmp33, label %if.then35, label %if.end39, !dbg !1283

if.then35:                                        ; preds = %if.end31
  %call36 = call i8* @_(i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @.str.244, i64 0, i64 0)), !dbg !1284
  %17 = load i32, i32* %count, align 4, !dbg !1285
  %call37 = call i8* @split_cmdline_strerror(i32 noundef %17), !dbg !1286
  %call38 = call i8* @_(i8* noundef %call37), !dbg !1287
  call void (i8*, ...) @die(i8* noundef %call36, i8* noundef %2, i8* noundef %call38) #8, !dbg !1288
  unreachable, !dbg !1288

if.end39:                                         ; preds = %if.end31
  %call40 = call i32 @handle_options(i8*** noundef %new_argv, i32* noundef %count, i32* noundef %envchanged), !dbg !1289
  call void @llvm.dbg.value(metadata i32 %call40, metadata !1290, metadata !DIExpression()), !dbg !1209
  %18 = load i32, i32* %envchanged, align 4, !dbg !1291
  %tobool41 = icmp ne i32 %18, 0, !dbg !1291
  br i1 %tobool41, label %if.then42, label %if.end44, !dbg !1293

if.then42:                                        ; preds = %if.end39
  %call43 = call i8* @_(i8* noundef getelementptr inbounds ([85 x i8], [85 x i8]* @.str.245, i64 0, i64 0)), !dbg !1294
  call void (i8*, ...) @die(i8* noundef %call43, i8* noundef %2) #8, !dbg !1295
  unreachable, !dbg !1295

if.end44:                                         ; preds = %if.end39
  %19 = load i8**, i8*** %new_argv, align 8, !dbg !1296
  %idx.ext = sext i32 %call40 to i64, !dbg !1296
  %idx.neg = sub i64 0, %idx.ext, !dbg !1296
  %add.ptr45 = getelementptr inbounds i8*, i8** %19, i64 %idx.neg, !dbg !1296
  %20 = bitcast i8** %add.ptr45 to i8*, !dbg !1296
  %21 = load i8**, i8*** %new_argv, align 8, !dbg !1296
  %22 = bitcast i8** %21 to i8*, !dbg !1296
  %23 = load i32, i32* %count, align 4, !dbg !1296
  %conv46 = sext i32 %23 to i64, !dbg !1296
  call void @move_array(i8* noundef %20, i8* noundef %22, i64 noundef %conv46, i64 noundef 8), !dbg !1296
  %24 = load i8**, i8*** %new_argv, align 8, !dbg !1297
  %idx.ext47 = sext i32 %call40 to i64, !dbg !1297
  %idx.neg48 = sub i64 0, %idx.ext47, !dbg !1297
  %add.ptr49 = getelementptr inbounds i8*, i8** %24, i64 %idx.neg48, !dbg !1297
  store i8** %add.ptr49, i8*** %new_argv, align 8, !dbg !1297
  %25 = load i32, i32* %count, align 4, !dbg !1298
  %cmp50 = icmp slt i32 %25, 1, !dbg !1300
  br i1 %cmp50, label %if.then52, label %if.end54, !dbg !1301

if.then52:                                        ; preds = %if.end44
  %call53 = call i8* @_(i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.246, i64 0, i64 0)), !dbg !1302
  call void (i8*, ...) @die(i8* noundef %call53, i8* noundef %2) #8, !dbg !1303
  unreachable, !dbg !1303

if.end54:                                         ; preds = %if.end44
  %26 = load i8**, i8*** %new_argv, align 8, !dbg !1304
  %arrayidx55 = getelementptr inbounds i8*, i8** %26, i64 0, !dbg !1304
  %27 = load i8*, i8** %arrayidx55, align 8, !dbg !1304
  %call56 = call i32 @strcmp(i8* noundef %2, i8* noundef %27), !dbg !1306
  %tobool57 = icmp ne i32 %call56, 0, !dbg !1306
  br i1 %tobool57, label %if.end60, label %if.then58, !dbg !1307

if.then58:                                        ; preds = %if.end54
  %call59 = call i8* @_(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.247, i64 0, i64 0)), !dbg !1308
  call void (i8*, ...) @die(i8* noundef %call59, i8* noundef %2) #8, !dbg !1309
  unreachable, !dbg !1309

if.end60:                                         ; preds = %if.end54
  br label %do.body, !dbg !1310

do.body:                                          ; preds = %if.end60
  %call61 = call i32 @trace_pass_fl(%struct.trace_key* noundef @trace_default_key), !dbg !1311
  %tobool62 = icmp ne i32 %call61, 0, !dbg !1311
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !1314

if.then63:                                        ; preds = %do.body
  %28 = load i8**, i8*** %new_argv, align 8, !dbg !1311
  call void (i8*, i32, i8**, i8*, ...) @trace_argv_printf_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 399, i8** noundef %28, i8* noundef getelementptr inbounds ([30 x i8], [30 x i8]* @.str.248, i64 0, i64 0), i8* noundef %2), !dbg !1311
  br label %if.end64, !dbg !1311

if.end64:                                         ; preds = %if.then63, %do.body
  br label %do.end, !dbg !1314

do.end:                                           ; preds = %if.end64
  %29 = load i8**, i8*** %new_argv, align 8, !dbg !1315
  %30 = bitcast i8** %29 to i8*, !dbg !1315
  %31 = load i32, i32* %count, align 4, !dbg !1315
  %32 = load i32, i32* %argcp, align 4, !dbg !1315
  %add = add nsw i32 %31, %32, !dbg !1315
  %conv65 = sext i32 %add to i64, !dbg !1315
  %call66 = call i64 @st_mult(i64 noundef 8, i64 noundef %conv65), !dbg !1315
  %call67 = call i8* @xrealloc(i8* noundef %30, i64 noundef %call66), !dbg !1315
  %33 = bitcast i8* %call67 to i8**, !dbg !1315
  store i8** %33, i8*** %new_argv, align 8, !dbg !1315
  %34 = load i8**, i8*** %new_argv, align 8, !dbg !1316
  %35 = load i32, i32* %count, align 4, !dbg !1316
  %idx.ext68 = sext i32 %35 to i64, !dbg !1316
  %add.ptr69 = getelementptr inbounds i8*, i8** %34, i64 %idx.ext68, !dbg !1316
  %36 = bitcast i8** %add.ptr69 to i8*, !dbg !1316
  %37 = load i8**, i8*** %argv, align 8, !dbg !1316
  %add.ptr70 = getelementptr inbounds i8*, i8** %37, i64 1, !dbg !1316
  %38 = bitcast i8** %add.ptr70 to i8*, !dbg !1316
  %39 = load i32, i32* %argcp, align 4, !dbg !1316
  %conv71 = sext i32 %39 to i64, !dbg !1316
  call void @copy_array(i8* noundef %36, i8* noundef %38, i64 noundef %conv71, i64 noundef 8), !dbg !1316
  %40 = load i8**, i8*** %new_argv, align 8, !dbg !1317
  call void @trace2_cmd_alias_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 405, i8* noundef %2, i8** noundef %40), !dbg !1317
  call void @trace2_cmd_list_config_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 406), !dbg !1318
  call void @trace2_cmd_list_env_vars_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 407), !dbg !1319
  %41 = load i8**, i8*** %new_argv, align 8, !dbg !1320
  store i8** %41, i8*** %argv, align 8, !dbg !1321
  %42 = load i32, i32* %count, align 4, !dbg !1322
  %sub = sub nsw i32 %42, 1, !dbg !1323
  %43 = load i32, i32* %argcp, align 4, !dbg !1324
  %add72 = add nsw i32 %43, %sub, !dbg !1324
  store i32 %add72, i32* %argcp, align 4, !dbg !1324
  call void @llvm.dbg.value(metadata i32 1, metadata !1213, metadata !DIExpression()), !dbg !1209
  br label %if.end73, !dbg !1325

if.end73:                                         ; preds = %do.end, %entry
  %ret.0 = phi i32 [ 1, %do.end ], [ 0, %entry ], !dbg !1209
  call void @llvm.dbg.value(metadata i32 %ret.0, metadata !1213, metadata !DIExpression()), !dbg !1209
  %call74 = call i32* @__error(), !dbg !1326
  store i32 %0, i32* %call74, align 4, !dbg !1327
  ret i32 %ret.0, !dbg !1328
}

declare void @string_list_clear(%struct.string_list* noundef, i32 noundef) #2

declare i8* @alias_lookup(i8* noundef) #2

declare i32 @fprintf_ln(%struct.__sFILE* noundef, i8* noundef, ...) #2

declare i8* @setup_git_directory_gently(i32* noundef) #2

declare void @strvec_pushv(%struct.strvec* noundef, i8** noundef) #2

declare void @trace2_cmd_alias_fl(i8* noundef, i32 noundef, i8* noundef, i8** noundef) #2

declare void @trace2_cmd_list_config_fl(i8* noundef, i32 noundef) #2

declare void @trace2_cmd_list_env_vars_fl(i8* noundef, i32 noundef) #2

; Function Attrs: noreturn
declare void @die_errno(i8* noundef, ...) #3

declare i32 @split_cmdline(i8* noundef, i8*** noundef) #2

declare i8* @split_cmdline_strerror(i32 noundef) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @move_array(i8* noundef %dst, i8* noundef %src, i64 noundef %n, i64 noundef %size) #0 !dbg !1329 {
entry:
  call void @llvm.dbg.value(metadata i8* %dst, metadata !1334, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i8* %src, metadata !1336, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i64 %n, metadata !1337, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.value(metadata i64 %size, metadata !1338, metadata !DIExpression()), !dbg !1335
  %tobool = icmp ne i64 %n, 0, !dbg !1339
  br i1 %tobool, label %if.then, label %if.end, !dbg !1341

if.then:                                          ; preds = %entry
  %call = call i64 @st_mult(i64 noundef %size, i64 noundef %n), !dbg !1342
  %0 = call i64 @llvm.objectsize.i64.p0i8(i8* %dst, i1 false, i1 true, i1 false), !dbg !1342
  %call1 = call i8* @__memmove_chk(i8* noundef %dst, i8* noundef %src, i64 noundef %call, i64 noundef %0) #9, !dbg !1342
  br label %if.end, !dbg !1342

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1343
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i64 @st_mult(i64 noundef %a, i64 noundef %b) #0 !dbg !1344 {
entry:
  call void @llvm.dbg.value(metadata i64 %a, metadata !1347, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.value(metadata i64 %b, metadata !1349, metadata !DIExpression()), !dbg !1348
  %tobool = icmp ne i64 %a, 0, !dbg !1350
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1350

land.lhs.true:                                    ; preds = %entry
  %div = udiv i64 -1, %a, !dbg !1350
  %cmp = icmp ugt i64 %b, %div, !dbg !1350
  br i1 %cmp, label %if.then, label %if.end, !dbg !1352

if.then:                                          ; preds = %land.lhs.true
  call void (i8*, ...) @die(i8* noundef getelementptr inbounds ([27 x i8], [27 x i8]* @.str.249, i64 0, i64 0), i64 noundef %a, i64 noundef %b) #8, !dbg !1353
  unreachable, !dbg !1353

if.end:                                           ; preds = %land.lhs.true, %entry
  %mul = mul i64 %a, %b, !dbg !1354
  ret i64 %mul, !dbg !1355
}

declare i8* @xrealloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @copy_array(i8* noundef %dst, i8* noundef %src, i64 noundef %n, i64 noundef %size) #0 !dbg !1356 {
entry:
  call void @llvm.dbg.value(metadata i8* %dst, metadata !1357, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i8* %src, metadata !1359, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %n, metadata !1360, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.value(metadata i64 %size, metadata !1361, metadata !DIExpression()), !dbg !1358
  %tobool = icmp ne i64 %n, 0, !dbg !1362
  br i1 %tobool, label %if.then, label %if.end, !dbg !1364

if.then:                                          ; preds = %entry
  %call = call i64 @st_mult(i64 noundef %size, i64 noundef %n), !dbg !1365
  %0 = call i64 @llvm.objectsize.i64.p0i8(i8* %dst, i1 false, i1 true, i1 false), !dbg !1365
  %call1 = call i8* @__memcpy_chk(i8* noundef %dst, i8* noundef %src, i64 noundef %call, i64 noundef %0) #9, !dbg !1365
  br label %if.end, !dbg !1365

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !1366
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1 immarg, i1 immarg, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @__memcpy_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #6

; Function Attrs: nounwind
declare i8* @__memmove_chk(i8* noundef, i8* noundef, i64 noundef, i64 noundef) #6

declare void @strbuf_add(%struct.strbuf* noundef, i8* noundef, i64 noundef) #2

declare i8* @strvec_pushf(%struct.strvec* noundef, i8* noundef, ...) #2

declare void @git_set_exec_path(i8* noundef) #2

declare i8* @git_exec_path() #2

declare i32 @puts(i8* noundef) #2

declare i8* @system_path(i8* noundef) #2

; Function Attrs: noreturn
declare void @usage(i8* noundef) #3

declare i8* @xgetcwd() #2

declare void @free(i8* noundef) #2

declare void @git_config_push_parameter(i8* noundef) #2

declare void @git_config_push_env(i8* noundef) #2

declare void @set_alternate_shallow_file(%struct.repository* noundef, i8* noundef, i32 noundef) #2

declare i32 @chdir(i8* noundef) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @list_builtins(%struct.string_list* noundef %out, i32 noundef %exclude_option) #0 !dbg !1367 {
entry:
  call void @llvm.dbg.value(metadata %struct.string_list* %out, metadata !1371, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i32 %exclude_option, metadata !1373, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i32 0, metadata !1374, metadata !DIExpression()), !dbg !1372
  br label %for.cond, !dbg !1375

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1377
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1374, metadata !DIExpression()), !dbg !1372
  %conv = sext i32 %i.0 to i64, !dbg !1378
  %cmp = icmp ult i64 %conv, 141, !dbg !1380
  br i1 %cmp, label %for.body, label %for.end, !dbg !1381

for.body:                                         ; preds = %for.cond
  %tobool = icmp ne i32 %exclude_option, 0, !dbg !1382
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !1385

land.lhs.true:                                    ; preds = %for.body
  %idxprom = sext i32 %i.0 to i64, !dbg !1386
  %arrayidx = getelementptr inbounds [141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 %idxprom, !dbg !1386
  %option = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %arrayidx, i32 0, i32 2, !dbg !1387
  %0 = load i32, i32* %option, align 8, !dbg !1387
  %and = and i32 %0, %exclude_option, !dbg !1388
  %tobool2 = icmp ne i32 %and, 0, !dbg !1388
  br i1 %tobool2, label %if.then, label %if.end, !dbg !1389

if.then:                                          ; preds = %land.lhs.true
  br label %for.inc, !dbg !1390

if.end:                                           ; preds = %land.lhs.true, %for.body
  %idxprom3 = sext i32 %i.0 to i64, !dbg !1391
  %arrayidx4 = getelementptr inbounds [141 x %struct.cmd_struct], [141 x %struct.cmd_struct]* @commands, i64 0, i64 %idxprom3, !dbg !1391
  %cmd = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %arrayidx4, i32 0, i32 0, !dbg !1392
  %1 = load i8*, i8** %cmd, align 8, !dbg !1392
  %call = call %struct.string_list_item* @string_list_append(%struct.string_list* noundef %out, i8* noundef %1), !dbg !1393
  br label %for.inc, !dbg !1394

for.inc:                                          ; preds = %if.end, %if.then
  %inc = add nsw i32 %i.0, 1, !dbg !1395
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1374, metadata !DIExpression()), !dbg !1372
  br label %for.cond, !dbg !1396, !llvm.loop !1397

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1399
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @list_cmds(i8* noundef %spec) #0 !dbg !1400 {
entry:
  %list = alloca %struct.string_list, align 8
  %nongit = alloca i32, align 4
  %sb = alloca %struct.strbuf, align 8
  call void @llvm.dbg.value(metadata i8* %spec, metadata !1401, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.declare(metadata %struct.string_list* %list, metadata !1403, metadata !DIExpression()), !dbg !1404
  %0 = bitcast %struct.string_list* %list to i8*, !dbg !1404
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 40, i1 false), !dbg !1404
  %1 = bitcast i8* %0 to %struct.string_list*, !dbg !1404
  %2 = getelementptr inbounds %struct.string_list, %struct.string_list* %1, i32 0, i32 3, !dbg !1404
  store i8 1, i8* %2, align 8, !dbg !1404
  call void @llvm.dbg.declare(metadata i32* %nongit, metadata !1405, metadata !DIExpression()), !dbg !1406
  %call = call i8* @setup_git_directory_gently(i32* noundef %nongit), !dbg !1407
  br label %while.cond, !dbg !1408

while.cond:                                       ; preds = %if.end42, %entry
  %spec.addr.0 = phi i8* [ %spec, %entry ], [ %spec.addr.1, %if.end42 ]
  call void @llvm.dbg.value(metadata i8* %spec.addr.0, metadata !1401, metadata !DIExpression()), !dbg !1402
  %3 = load i8, i8* %spec.addr.0, align 1, !dbg !1409
  %tobool = icmp ne i8 %3, 0, !dbg !1408
  br i1 %tobool, label %while.body, label %while.end, !dbg !1408

while.body:                                       ; preds = %while.cond
  %call1 = call i8* @gitstrchrnul(i8* noundef %spec.addr.0, i32 noundef 44), !dbg !1410
  call void @llvm.dbg.value(metadata i8* %call1, metadata !1412, metadata !DIExpression()), !dbg !1413
  %sub.ptr.lhs.cast = ptrtoint i8* %call1 to i64, !dbg !1414
  %sub.ptr.rhs.cast = ptrtoint i8* %spec.addr.0 to i64, !dbg !1414
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1414
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !1415
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1416, metadata !DIExpression()), !dbg !1413
  %call2 = call i32 @match_token(i8* noundef %spec.addr.0, i32 noundef %conv, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.220, i64 0, i64 0)), !dbg !1417
  %tobool3 = icmp ne i32 %call2, 0, !dbg !1417
  br i1 %tobool3, label %if.then, label %if.else, !dbg !1419

if.then:                                          ; preds = %while.body
  call void @list_builtins(%struct.string_list* noundef %list, i32 noundef 0), !dbg !1420
  br label %if.end36, !dbg !1420

if.else:                                          ; preds = %while.body
  %call4 = call i32 @match_token(i8* noundef %spec.addr.0, i32 noundef %conv, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.221, i64 0, i64 0)), !dbg !1421
  %tobool5 = icmp ne i32 %call4, 0, !dbg !1421
  br i1 %tobool5, label %if.then6, label %if.else7, !dbg !1423

if.then6:                                         ; preds = %if.else
  call void @list_all_main_cmds(%struct.string_list* noundef %list), !dbg !1424
  br label %if.end35, !dbg !1424

if.else7:                                         ; preds = %if.else
  %call8 = call i32 @match_token(i8* noundef %spec.addr.0, i32 noundef %conv, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.222, i64 0, i64 0)), !dbg !1425
  %tobool9 = icmp ne i32 %call8, 0, !dbg !1425
  br i1 %tobool9, label %if.then10, label %if.else11, !dbg !1427

if.then10:                                        ; preds = %if.else7
  call void @list_all_other_cmds(%struct.string_list* noundef %list), !dbg !1428
  br label %if.end34, !dbg !1428

if.else11:                                        ; preds = %if.else7
  %call12 = call i32 @match_token(i8* noundef %spec.addr.0, i32 noundef %conv, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.223, i64 0, i64 0)), !dbg !1429
  %tobool13 = icmp ne i32 %call12, 0, !dbg !1429
  br i1 %tobool13, label %if.then14, label %if.else15, !dbg !1431

if.then14:                                        ; preds = %if.else11
  call void @exclude_helpers_from_list(%struct.string_list* noundef %list), !dbg !1432
  br label %if.end33, !dbg !1432

if.else15:                                        ; preds = %if.else11
  %call16 = call i32 @match_token(i8* noundef %spec.addr.0, i32 noundef %conv, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.224, i64 0, i64 0)), !dbg !1433
  %tobool17 = icmp ne i32 %call16, 0, !dbg !1433
  br i1 %tobool17, label %if.then18, label %if.else19, !dbg !1435

if.then18:                                        ; preds = %if.else15
  call void @list_aliases(%struct.string_list* noundef %list), !dbg !1436
  br label %if.end32, !dbg !1436

if.else19:                                        ; preds = %if.else15
  %call20 = call i32 @match_token(i8* noundef %spec.addr.0, i32 noundef %conv, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.43, i64 0, i64 0)), !dbg !1437
  %tobool21 = icmp ne i32 %call20, 0, !dbg !1437
  br i1 %tobool21, label %if.then22, label %if.else23, !dbg !1439

if.then22:                                        ; preds = %if.else19
  call void @list_cmds_by_config(%struct.string_list* noundef %list), !dbg !1440
  br label %if.end31, !dbg !1440

if.else23:                                        ; preds = %if.else19
  %cmp = icmp sgt i32 %conv, 5, !dbg !1441
  br i1 %cmp, label %land.lhs.true, label %if.else29, !dbg !1443

land.lhs.true:                                    ; preds = %if.else23
  %call25 = call i32 @strncmp(i8* noundef %spec.addr.0, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.225, i64 0, i64 0), i64 noundef 5), !dbg !1444
  %tobool26 = icmp ne i32 %call25, 0, !dbg !1444
  br i1 %tobool26, label %if.else29, label %if.then27, !dbg !1445

if.then27:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata %struct.strbuf* %sb, metadata !1446, metadata !DIExpression()), !dbg !1448
  %4 = bitcast %struct.strbuf* %sb to i8*, !dbg !1448
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.strbuf* @__const.list_cmds.sb to i8*), i64 24, i1 false), !dbg !1448
  %add.ptr = getelementptr inbounds i8, i8* %spec.addr.0, i64 5, !dbg !1449
  %sub = sub nsw i32 %conv, 5, !dbg !1450
  %conv28 = sext i32 %sub to i64, !dbg !1451
  call void @strbuf_add(%struct.strbuf* noundef %sb, i8* noundef %add.ptr, i64 noundef %conv28), !dbg !1452
  %buf = getelementptr inbounds %struct.strbuf, %struct.strbuf* %sb, i32 0, i32 2, !dbg !1453
  %5 = load i8*, i8** %buf, align 8, !dbg !1453
  call void @list_cmds_by_category(%struct.string_list* noundef %list, i8* noundef %5), !dbg !1454
  call void @strbuf_release(%struct.strbuf* noundef %sb), !dbg !1455
  br label %if.end, !dbg !1456

if.else29:                                        ; preds = %land.lhs.true, %if.else23
  %call30 = call i8* @_(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.226, i64 0, i64 0)), !dbg !1457
  call void (i8*, ...) @die(i8* noundef %call30, i8* noundef %spec.addr.0) #8, !dbg !1458
  unreachable, !dbg !1458

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
  %idx.ext = sext i32 %conv to i64, !dbg !1459
  %add.ptr37 = getelementptr inbounds i8, i8* %spec.addr.0, i64 %idx.ext, !dbg !1459
  call void @llvm.dbg.value(metadata i8* %add.ptr37, metadata !1401, metadata !DIExpression()), !dbg !1402
  %6 = load i8, i8* %add.ptr37, align 1, !dbg !1460
  %conv38 = sext i8 %6 to i32, !dbg !1460
  %cmp39 = icmp eq i32 %conv38, 44, !dbg !1462
  br i1 %cmp39, label %if.then41, label %if.end42, !dbg !1463

if.then41:                                        ; preds = %if.end36
  %incdec.ptr = getelementptr inbounds i8, i8* %add.ptr37, i32 1, !dbg !1464
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1401, metadata !DIExpression()), !dbg !1402
  br label %if.end42, !dbg !1465

if.end42:                                         ; preds = %if.then41, %if.end36
  %spec.addr.1 = phi i8* [ %incdec.ptr, %if.then41 ], [ %add.ptr37, %if.end36 ], !dbg !1413
  call void @llvm.dbg.value(metadata i8* %spec.addr.1, metadata !1401, metadata !DIExpression()), !dbg !1402
  br label %while.cond, !dbg !1408, !llvm.loop !1466

while.end:                                        ; preds = %while.cond
  call void @llvm.dbg.value(metadata i32 0, metadata !1468, metadata !DIExpression()), !dbg !1402
  br label %for.cond, !dbg !1469

for.cond:                                         ; preds = %for.inc, %while.end
  %i.0 = phi i32 [ 0, %while.end ], [ %inc, %for.inc ], !dbg !1471
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1468, metadata !DIExpression()), !dbg !1402
  %conv43 = sext i32 %i.0 to i64, !dbg !1472
  %nr = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 1, !dbg !1474
  %7 = load i64, i64* %nr, align 8, !dbg !1474
  %cmp44 = icmp ult i64 %conv43, %7, !dbg !1475
  br i1 %cmp44, label %for.body, label %for.end, !dbg !1476

for.body:                                         ; preds = %for.cond
  %items = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 0, !dbg !1477
  %8 = load %struct.string_list_item*, %struct.string_list_item** %items, align 8, !dbg !1477
  %idxprom = sext i32 %i.0 to i64, !dbg !1478
  %arrayidx = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %8, i64 %idxprom, !dbg !1478
  %string = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %arrayidx, i32 0, i32 0, !dbg !1479
  %9 = load i8*, i8** %string, align 8, !dbg !1479
  %call46 = call i32 @puts(i8* noundef %9), !dbg !1480
  br label %for.inc, !dbg !1480

for.inc:                                          ; preds = %for.body
  %inc = add nsw i32 %i.0, 1, !dbg !1481
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1468, metadata !DIExpression()), !dbg !1402
  br label %for.cond, !dbg !1482, !llvm.loop !1483

for.end:                                          ; preds = %for.cond
  call void @string_list_clear(%struct.string_list* noundef %list, i32 noundef 0), !dbg !1485
  ret i32 0, !dbg !1486
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i8* @gitstrchrnul(i8* noundef %s, i32 noundef %c) #0 !dbg !1487 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !1490, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.value(metadata i32 %c, metadata !1492, metadata !DIExpression()), !dbg !1491
  br label %while.cond, !dbg !1493

while.cond:                                       ; preds = %while.body, %entry
  %s.addr.0 = phi i8* [ %s, %entry ], [ %incdec.ptr, %while.body ]
  call void @llvm.dbg.value(metadata i8* %s.addr.0, metadata !1490, metadata !DIExpression()), !dbg !1491
  %0 = load i8, i8* %s.addr.0, align 1, !dbg !1494
  %conv = sext i8 %0 to i32, !dbg !1494
  %tobool = icmp ne i32 %conv, 0, !dbg !1494
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !1495

land.rhs:                                         ; preds = %while.cond
  %1 = load i8, i8* %s.addr.0, align 1, !dbg !1496
  %conv1 = sext i8 %1 to i32, !dbg !1496
  %cmp = icmp ne i32 %conv1, %c, !dbg !1497
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %2 = phi i1 [ false, %while.cond ], [ %cmp, %land.rhs ], !dbg !1491
  br i1 %2, label %while.body, label %while.end, !dbg !1493

while.body:                                       ; preds = %land.end
  %incdec.ptr = getelementptr inbounds i8, i8* %s.addr.0, i32 1, !dbg !1498
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1490, metadata !DIExpression()), !dbg !1491
  br label %while.cond, !dbg !1493, !llvm.loop !1499

while.end:                                        ; preds = %land.end
  ret i8* %s.addr.0, !dbg !1500
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @match_token(i8* noundef %spec, i32 noundef %len, i8* noundef %token) #0 !dbg !1501 {
entry:
  call void @llvm.dbg.value(metadata i8* %spec, metadata !1504, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i32 %len, metadata !1506, metadata !DIExpression()), !dbg !1505
  call void @llvm.dbg.value(metadata i8* %token, metadata !1507, metadata !DIExpression()), !dbg !1505
  %call = call i64 @strlen(i8* noundef %token), !dbg !1508
  %conv = trunc i64 %call to i32, !dbg !1508
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1509, metadata !DIExpression()), !dbg !1505
  %cmp = icmp eq i32 %len, %conv, !dbg !1510
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1511

land.rhs:                                         ; preds = %entry
  %conv2 = sext i32 %conv to i64, !dbg !1512
  %call3 = call i32 @strncmp(i8* noundef %spec, i8* noundef %token, i64 noundef %conv2), !dbg !1513
  %tobool = icmp ne i32 %call3, 0, !dbg !1514
  %lnot = xor i1 %tobool, true, !dbg !1514
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !1505
  %land.ext = zext i1 %0 to i32, !dbg !1511
  ret i32 %land.ext, !dbg !1515
}

declare void @list_all_main_cmds(%struct.string_list* noundef) #2

declare void @list_all_other_cmds(%struct.string_list* noundef) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal void @exclude_helpers_from_list(%struct.string_list* noundef %list) #0 !dbg !1516 {
entry:
  call void @llvm.dbg.value(metadata %struct.string_list* %list, metadata !1519, metadata !DIExpression()), !dbg !1520
  call void @llvm.dbg.value(metadata i32 0, metadata !1521, metadata !DIExpression()), !dbg !1520
  br label %while.cond, !dbg !1522

while.cond:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %if.end ], !dbg !1523
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1521, metadata !DIExpression()), !dbg !1520
  %conv = sext i32 %i.0 to i64, !dbg !1524
  %nr = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 1, !dbg !1525
  %0 = load i64, i64* %nr, align 8, !dbg !1525
  %cmp = icmp ult i64 %conv, %0, !dbg !1526
  br i1 %cmp, label %while.body, label %while.end, !dbg !1522

while.body:                                       ; preds = %while.cond
  %items = getelementptr inbounds %struct.string_list, %struct.string_list* %list, i32 0, i32 0, !dbg !1527
  %1 = load %struct.string_list_item*, %struct.string_list_item** %items, align 8, !dbg !1527
  %idxprom = sext i32 %i.0 to i64, !dbg !1530
  %arrayidx = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %1, i64 %idxprom, !dbg !1530
  %string = getelementptr inbounds %struct.string_list_item, %struct.string_list_item* %arrayidx, i32 0, i32 0, !dbg !1531
  %2 = load i8*, i8** %string, align 8, !dbg !1531
  %call = call i8* @strstr(i8* noundef %2, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.227, i64 0, i64 0)), !dbg !1532
  %tobool = icmp ne i8* %call, null, !dbg !1532
  br i1 %tobool, label %if.then, label %if.else, !dbg !1533

if.then:                                          ; preds = %while.body
  call void @unsorted_string_list_delete_item(%struct.string_list* noundef %list, i32 noundef %i.0, i32 noundef 0), !dbg !1534
  br label %if.end, !dbg !1534

if.else:                                          ; preds = %while.body
  %inc = add nsw i32 %i.0, 1, !dbg !1535
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1521, metadata !DIExpression()), !dbg !1520
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %i.1 = phi i32 [ %i.0, %if.then ], [ %inc, %if.else ], !dbg !1520
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !1521, metadata !DIExpression()), !dbg !1520
  br label %while.cond, !dbg !1522, !llvm.loop !1536

while.end:                                        ; preds = %while.cond
  ret void, !dbg !1538
}

declare void @list_aliases(%struct.string_list* noundef) #2

declare void @list_cmds_by_config(%struct.string_list* noundef) #2

declare i32 @strncmp(i8* noundef, i8* noundef, i64 noundef) #2

declare void @list_cmds_by_category(%struct.string_list* noundef, i8* noundef) #2

declare void @strbuf_release(%struct.strbuf* noundef) #2

declare i8* @strstr(i8* noundef, i8* noundef) #2

declare void @unsorted_string_list_delete_item(%struct.string_list* noundef, i32 noundef, i32 noundef) #2

declare i8* @libintl_gettext(i8* noundef) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @run_builtin(%struct.cmd_struct* noundef %p, i32 noundef %argc, i8** noundef %argv) #0 !dbg !1539 {
entry:
  %st = alloca %struct.stat, align 8
  %nongit_ok = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.cmd_struct* %p, metadata !1542, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i32 %argc, metadata !1544, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1545, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.declare(metadata %struct.stat* %st, metadata !1546, metadata !DIExpression()), !dbg !1608
  %option = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %p, i32 0, i32 2, !dbg !1609
  %0 = load i32, i32* %option, align 8, !dbg !1609
  %and = and i32 %0, 3, !dbg !1610
  call void @llvm.dbg.value(metadata i32 %and, metadata !1611, metadata !DIExpression()), !dbg !1543
  %cmp = icmp eq i32 %argc, 2, !dbg !1612
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1613

land.rhs:                                         ; preds = %entry
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1, !dbg !1614
  %1 = load i8*, i8** %arrayidx, align 8, !dbg !1614
  %call = call i32 @strcmp(i8* noundef %1, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0)), !dbg !1615
  %tobool = icmp ne i32 %call, 0, !dbg !1616
  %lnot = xor i1 %tobool, true, !dbg !1616
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %2 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ], !dbg !1543
  %land.ext = zext i1 %2 to i32, !dbg !1613
  call void @llvm.dbg.value(metadata i32 %land.ext, metadata !1617, metadata !DIExpression()), !dbg !1543
  %tobool1 = icmp ne i32 %land.ext, 0, !dbg !1618
  br i1 %tobool1, label %land.lhs.true, label %if.end, !dbg !1620

land.lhs.true:                                    ; preds = %land.end
  %and2 = and i32 %and, 1, !dbg !1621
  %tobool3 = icmp ne i32 %and2, 0, !dbg !1621
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1622

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata i32 2, metadata !1611, metadata !DIExpression()), !dbg !1543
  br label %if.end, !dbg !1623

if.end:                                           ; preds = %if.then, %land.lhs.true, %land.end
  %run_setup.0 = phi i32 [ 2, %if.then ], [ %and, %land.lhs.true ], [ %and, %land.end ], !dbg !1543
  call void @llvm.dbg.value(metadata i32 %run_setup.0, metadata !1611, metadata !DIExpression()), !dbg !1543
  %and4 = and i32 %run_setup.0, 1, !dbg !1624
  %tobool5 = icmp ne i32 %and4, 0, !dbg !1624
  br i1 %tobool5, label %if.then6, label %if.else, !dbg !1626

if.then6:                                         ; preds = %if.end
  %call7 = call i8* @setup_git_directory(), !dbg !1627
  call void @llvm.dbg.value(metadata i8* %call7, metadata !1629, metadata !DIExpression()), !dbg !1543
  br label %if.end14, !dbg !1630

if.else:                                          ; preds = %if.end
  %and8 = and i32 %run_setup.0, 2, !dbg !1631
  %tobool9 = icmp ne i32 %and8, 0, !dbg !1631
  br i1 %tobool9, label %if.then10, label %if.else12, !dbg !1633

if.then10:                                        ; preds = %if.else
  call void @llvm.dbg.declare(metadata i32* %nongit_ok, metadata !1634, metadata !DIExpression()), !dbg !1636
  %call11 = call i8* @setup_git_directory_gently(i32* noundef %nongit_ok), !dbg !1637
  call void @llvm.dbg.value(metadata i8* %call11, metadata !1629, metadata !DIExpression()), !dbg !1543
  br label %if.end13, !dbg !1638

if.else12:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i8* null, metadata !1629, metadata !DIExpression()), !dbg !1543
  br label %if.end13

if.end13:                                         ; preds = %if.else12, %if.then10
  %prefix.0 = phi i8* [ %call11, %if.then10 ], [ null, %if.else12 ], !dbg !1639
  call void @llvm.dbg.value(metadata i8* %prefix.0, metadata !1629, metadata !DIExpression()), !dbg !1543
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.then6
  %prefix.1 = phi i8* [ %call7, %if.then6 ], [ %prefix.0, %if.end13 ], !dbg !1640
  call void @llvm.dbg.value(metadata i8* %prefix.1, metadata !1629, metadata !DIExpression()), !dbg !1543
  %tobool15 = icmp ne i8* %prefix.1, null, !dbg !1641
  br i1 %tobool15, label %lor.rhs, label %lor.end, !dbg !1641

lor.rhs:                                          ; preds = %if.end14
  %3 = load i8, i8* %prefix.1, align 1, !dbg !1641
  %conv = sext i8 %3 to i32, !dbg !1641
  %tobool16 = icmp ne i32 %conv, 0, !dbg !1641
  br label %lor.end, !dbg !1641

lor.end:                                          ; preds = %lor.rhs, %if.end14
  %4 = phi i1 [ true, %if.end14 ], [ %tobool16, %lor.rhs ]
  %lnot17 = xor i1 %4, true, !dbg !1641
  %lnot.ext = zext i1 %lnot17 to i32, !dbg !1641
  %conv18 = sext i32 %lnot.ext to i64, !dbg !1641
  %tobool19 = icmp ne i64 %conv18, 0, !dbg !1641
  br i1 %tobool19, label %cond.true, label %cond.false, !dbg !1641

cond.true:                                        ; preds = %lor.end
  call void @__assert_rtn(i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @__func__.run_builtin, i64 0, i64 0), i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 440, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.157, i64 0, i64 0)) #10, !dbg !1641
  unreachable, !dbg !1641

5:                                                ; No predecessors!
  br label %cond.end, !dbg !1641

cond.false:                                       ; preds = %lor.end
  br label %cond.end, !dbg !1641

cond.end:                                         ; preds = %cond.false, %5
  %call20 = call i8* @precompose_argv_prefix(i32 noundef %argc, i8** noundef %argv, i8* noundef null), !dbg !1642
  %6 = load i32, i32* @use_pager, align 4, !dbg !1643
  %cmp21 = icmp eq i32 %6, -1, !dbg !1645
  br i1 %cmp21, label %land.lhs.true23, label %if.end31, !dbg !1646

land.lhs.true23:                                  ; preds = %cond.end
  %tobool24 = icmp ne i32 %run_setup.0, 0, !dbg !1647
  br i1 %tobool24, label %land.lhs.true25, label %if.end31, !dbg !1648

land.lhs.true25:                                  ; preds = %land.lhs.true23
  %option26 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %p, i32 0, i32 2, !dbg !1649
  %7 = load i32, i32* %option26, align 8, !dbg !1649
  %and27 = and i32 %7, 32, !dbg !1650
  %tobool28 = icmp ne i32 %and27, 0, !dbg !1650
  br i1 %tobool28, label %if.end31, label %if.then29, !dbg !1651

if.then29:                                        ; preds = %land.lhs.true25
  %cmd = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %p, i32 0, i32 0, !dbg !1652
  %8 = load i8*, i8** %cmd, align 8, !dbg !1652
  %call30 = call i32 @check_pager_config(i8* noundef %8), !dbg !1653
  store i32 %call30, i32* @use_pager, align 4, !dbg !1654
  br label %if.end31, !dbg !1655

if.end31:                                         ; preds = %if.then29, %land.lhs.true25, %land.lhs.true23, %cond.end
  %9 = load i32, i32* @use_pager, align 4, !dbg !1656
  %cmp32 = icmp eq i32 %9, -1, !dbg !1658
  br i1 %cmp32, label %land.lhs.true34, label %if.end39, !dbg !1659

land.lhs.true34:                                  ; preds = %if.end31
  %option35 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %p, i32 0, i32 2, !dbg !1660
  %10 = load i32, i32* %option35, align 8, !dbg !1660
  %and36 = and i32 %10, 4, !dbg !1661
  %tobool37 = icmp ne i32 %and36, 0, !dbg !1661
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !1662

if.then38:                                        ; preds = %land.lhs.true34
  store i32 1, i32* @use_pager, align 4, !dbg !1663
  br label %if.end39, !dbg !1664

if.end39:                                         ; preds = %if.then38, %land.lhs.true34, %if.end31
  %tobool40 = icmp ne i32 %run_setup.0, 0, !dbg !1665
  br i1 %tobool40, label %land.lhs.true41, label %if.end44, !dbg !1667

land.lhs.true41:                                  ; preds = %if.end39
  %11 = load %struct.startup_info*, %struct.startup_info** @startup_info, align 8, !dbg !1668
  %have_repository = getelementptr inbounds %struct.startup_info, %struct.startup_info* %11, i32 0, i32 0, !dbg !1669
  %12 = load i32, i32* %have_repository, align 8, !dbg !1669
  %tobool42 = icmp ne i32 %12, 0, !dbg !1668
  br i1 %tobool42, label %if.then43, label %if.end44, !dbg !1670

if.then43:                                        ; preds = %land.lhs.true41
  call void @trace_repo_setup(i8* noundef %prefix.1), !dbg !1671
  br label %if.end44, !dbg !1671

if.end44:                                         ; preds = %if.then43, %land.lhs.true41, %if.end39
  call void @commit_pager_choice(), !dbg !1672
  %tobool45 = icmp ne i32 %land.ext, 0, !dbg !1673
  br i1 %tobool45, label %if.end57, label %land.lhs.true46, !dbg !1675

land.lhs.true46:                                  ; preds = %if.end44
  %call47 = call i8* @get_super_prefix(), !dbg !1676
  %tobool48 = icmp ne i8* %call47, null, !dbg !1676
  br i1 %tobool48, label %if.then49, label %if.end57, !dbg !1677

if.then49:                                        ; preds = %land.lhs.true46
  %option50 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %p, i32 0, i32 2, !dbg !1678
  %13 = load i32, i32* %option50, align 8, !dbg !1678
  %and51 = and i32 %13, 16, !dbg !1681
  %tobool52 = icmp ne i32 %and51, 0, !dbg !1681
  br i1 %tobool52, label %if.end56, label %if.then53, !dbg !1682

if.then53:                                        ; preds = %if.then49
  %call54 = call i8* @_(i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @.str.158, i64 0, i64 0)), !dbg !1683
  %cmd55 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %p, i32 0, i32 0, !dbg !1684
  %14 = load i8*, i8** %cmd55, align 8, !dbg !1684
  call void (i8*, ...) @die(i8* noundef %call54, i8* noundef %14) #8, !dbg !1685
  unreachable, !dbg !1685

if.end56:                                         ; preds = %if.then49
  br label %if.end57, !dbg !1686

if.end57:                                         ; preds = %if.end56, %land.lhs.true46, %if.end44
  %tobool58 = icmp ne i32 %land.ext, 0, !dbg !1687
  br i1 %tobool58, label %if.end64, label %land.lhs.true59, !dbg !1689

land.lhs.true59:                                  ; preds = %if.end57
  %option60 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %p, i32 0, i32 2, !dbg !1690
  %15 = load i32, i32* %option60, align 8, !dbg !1690
  %and61 = and i32 %15, 8, !dbg !1691
  %tobool62 = icmp ne i32 %and61, 0, !dbg !1691
  br i1 %tobool62, label %if.then63, label %if.end64, !dbg !1692

if.then63:                                        ; preds = %land.lhs.true59
  call void @setup_work_tree(), !dbg !1693
  br label %if.end64, !dbg !1693

if.end64:                                         ; preds = %if.then63, %land.lhs.true59, %if.end57
  br label %do.body, !dbg !1694

do.body:                                          ; preds = %if.end64
  %call65 = call i32 @trace_pass_fl(%struct.trace_key* noundef @trace_default_key), !dbg !1695
  %tobool66 = icmp ne i32 %call65, 0, !dbg !1695
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !1698

if.then67:                                        ; preds = %do.body
  call void (i8*, i32, i8**, i8*, ...) @trace_argv_printf_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 460, i8** noundef %argv, i8* noundef getelementptr inbounds ([21 x i8], [21 x i8]* @.str.159, i64 0, i64 0)), !dbg !1695
  br label %if.end68, !dbg !1695

if.end68:                                         ; preds = %if.then67, %do.body
  br label %do.end, !dbg !1698

do.end:                                           ; preds = %if.end68
  %cmd69 = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %p, i32 0, i32 0, !dbg !1699
  %16 = load i8*, i8** %cmd69, align 8, !dbg !1699
  call void @trace2_cmd_name_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 461, i8* noundef %16), !dbg !1699
  call void @trace2_cmd_list_config_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 462), !dbg !1700
  call void @trace2_cmd_list_env_vars_fl(i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 noundef 463), !dbg !1701
  %17 = load %struct.repository*, %struct.repository** @the_repository, align 8, !dbg !1702
  %index = getelementptr inbounds %struct.repository, %struct.repository* %17, i32 0, i32 13, !dbg !1703
  %18 = load %struct.index_state*, %struct.index_state** %index, align 8, !dbg !1703
  call void @validate_cache_entries(%struct.index_state* noundef %18), !dbg !1704
  %fn = getelementptr inbounds %struct.cmd_struct, %struct.cmd_struct* %p, i32 0, i32 1, !dbg !1705
  %19 = load i32 (i32, i8**, i8*)*, i32 (i32, i8**, i8*)** %fn, align 8, !dbg !1705
  %call70 = call i32 %19(i32 noundef %argc, i8** noundef %argv, i8* noundef %prefix.1), !dbg !1706
  call void @llvm.dbg.value(metadata i32 %call70, metadata !1707, metadata !DIExpression()), !dbg !1543
  %20 = load %struct.repository*, %struct.repository** @the_repository, align 8, !dbg !1708
  %index71 = getelementptr inbounds %struct.repository, %struct.repository* %20, i32 0, i32 13, !dbg !1709
  %21 = load %struct.index_state*, %struct.index_state** %index71, align 8, !dbg !1709
  call void @validate_cache_entries(%struct.index_state* noundef %21), !dbg !1710
  %tobool72 = icmp ne i32 %call70, 0, !dbg !1711
  br i1 %tobool72, label %if.then73, label %if.end74, !dbg !1713

if.then73:                                        ; preds = %do.end
  br label %return, !dbg !1714

if.end74:                                         ; preds = %do.end
  %22 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !dbg !1715
  %call75 = call i32 @fileno(%struct.__sFILE* noundef %22), !dbg !1717
  %call76 = call i32 @"\01_fstat$INODE64"(i32 noundef %call75, %struct.stat* noundef %st), !dbg !1718
  %tobool77 = icmp ne i32 %call76, 0, !dbg !1718
  br i1 %tobool77, label %if.then78, label %if.end79, !dbg !1719

if.then78:                                        ; preds = %if.end74
  br label %return, !dbg !1720

if.end79:                                         ; preds = %if.end74
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 1, !dbg !1721
  %23 = load i16, i16* %st_mode, align 4, !dbg !1721
  %conv80 = zext i16 %23 to i32, !dbg !1721
  %and81 = and i32 %conv80, 61440, !dbg !1721
  %cmp82 = icmp eq i32 %and81, 4096, !dbg !1721
  br i1 %cmp82, label %if.then89, label %lor.lhs.false, !dbg !1723

lor.lhs.false:                                    ; preds = %if.end79
  %st_mode84 = getelementptr inbounds %struct.stat, %struct.stat* %st, i32 0, i32 1, !dbg !1724
  %24 = load i16, i16* %st_mode84, align 4, !dbg !1724
  %conv85 = zext i16 %24 to i32, !dbg !1724
  %and86 = and i32 %conv85, 61440, !dbg !1724
  %cmp87 = icmp eq i32 %and86, 49152, !dbg !1724
  br i1 %cmp87, label %if.then89, label %if.end90, !dbg !1725

if.then89:                                        ; preds = %lor.lhs.false, %if.end79
  br label %return, !dbg !1726

if.end90:                                         ; preds = %lor.lhs.false
  %25 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !dbg !1727
  %call91 = call i32 @fflush(%struct.__sFILE* noundef %25), !dbg !1729
  %tobool92 = icmp ne i32 %call91, 0, !dbg !1729
  br i1 %tobool92, label %if.then93, label %if.end95, !dbg !1730

if.then93:                                        ; preds = %if.end90
  %call94 = call i8* @_(i8* noundef getelementptr inbounds ([33 x i8], [33 x i8]* @.str.160, i64 0, i64 0)), !dbg !1731
  call void (i8*, ...) @die_errno(i8* noundef %call94) #8, !dbg !1732
  unreachable, !dbg !1732

if.end95:                                         ; preds = %if.end90
  %26 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !dbg !1733
  %call96 = call i32 @ferror(%struct.__sFILE* noundef %26), !dbg !1735
  %tobool97 = icmp ne i32 %call96, 0, !dbg !1735
  br i1 %tobool97, label %if.then98, label %if.end100, !dbg !1736

if.then98:                                        ; preds = %if.end95
  %call99 = call i8* @_(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.161, i64 0, i64 0)), !dbg !1737
  call void (i8*, ...) @die(i8* noundef %call99) #8, !dbg !1738
  unreachable, !dbg !1738

if.end100:                                        ; preds = %if.end95
  %27 = load %struct.__sFILE*, %struct.__sFILE** @__stdoutp, align 8, !dbg !1739
  %call101 = call i32 @fclose(%struct.__sFILE* noundef %27), !dbg !1741
  %tobool102 = icmp ne i32 %call101, 0, !dbg !1741
  br i1 %tobool102, label %if.then103, label %if.end105, !dbg !1742

if.then103:                                       ; preds = %if.end100
  %call104 = call i8* @_(i8* noundef getelementptr inbounds ([32 x i8], [32 x i8]* @.str.162, i64 0, i64 0)), !dbg !1743
  call void (i8*, ...) @die_errno(i8* noundef %call104) #8, !dbg !1744
  unreachable, !dbg !1744

if.end105:                                        ; preds = %if.end100
  br label %return, !dbg !1745

return:                                           ; preds = %if.end105, %if.then89, %if.then78, %if.then73
  %retval.0 = phi i32 [ %call70, %if.then73 ], [ 0, %if.then78 ], [ 0, %if.then89 ], [ 0, %if.end105 ], !dbg !1543
  ret i32 %retval.0, !dbg !1746
}

declare void @strvec_clear(%struct.strvec* noundef) #2

declare i8* @setup_git_directory() #2

; Function Attrs: cold noreturn
declare void @__assert_rtn(i8* noundef, i8* noundef, i32 noundef, i8* noundef) #7

declare i8* @precompose_argv_prefix(i32 noundef, i8** noundef, i8* noundef) #2

declare void @trace_repo_setup(i8* noundef) #2

declare void @setup_work_tree() #2

declare void @validate_cache_entries(%struct.index_state* noundef) #2

declare i32 @fileno(%struct.__sFILE* noundef) #2

declare i32 @"\01_fstat$INODE64"(i32 noundef, %struct.stat* noundef) #2

declare i32 @fflush(%struct.__sFILE* noundef) #2

declare i32 @ferror(%struct.__sFILE* noundef) #2

declare i32 @fclose(%struct.__sFILE* noundef) #2

declare i8* @strrchr(i8* noundef, i32 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

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
!llvm.ident = !{!39}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "git_usage_string", scope: !2, file: !3, line: 27, type: !36, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 14.0.0 (git@github.com:llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None, sysroot: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk", sdk: "MacOSX.sdk")
!3 = !DIFile(filename: "git.c", directory: "/Users/jryans/Projects/git")
!4 = !{!5, !7}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !8, line: 32, baseType: !9)
!8 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uintmax_t.h", directory: "")
!9 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!10 = !{!0, !11, !17, !20}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "git_more_info_string", scope: !2, file: !3, line: 35, type: !13, isLocal: false, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 1848, elements: !15)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!15 = !{!16}
!16 = !DISubrange(count: 231)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "use_pager", scope: !2, file: !3, line: 41, type: !19, isLocal: true, isDefinition: true)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "commands", scope: !2, file: !3, line: 489, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 27072, elements: !34)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmd_struct", file: !3, line: 21, size: 192, elements: !24)
!24 = !{!25, !27, !32}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !23, file: !3, line: 22, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !23, file: !3, line: 23, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{!19, !19, !31, !26}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "option", scope: !23, file: !3, line: 24, baseType: !33, size: 32, offset: 128)
!33 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!34 = !{!35}
!35 = !DISubrange(count: 141)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 3112, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 389)
!39 = !{!"clang version 14.0.0 (git@github.com:llvm/llvm-project.git 329fda39c507e8740978d10458451dcdb21563be)"}
!40 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!41 = !{i32 7, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{i32 7, !"PIC Level", i32 2}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = distinct !DISubprogram(name: "setup_auto_pager", scope: !3, file: !3, line: 125, type: !48, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !50)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !26, !19}
!50 = !{}
!51 = !DILocalVariable(name: "cmd", arg: 1, scope: !47, file: !3, line: 125, type: !26)
!52 = !DILocation(line: 0, scope: !47)
!53 = !DILocalVariable(name: "def", arg: 2, scope: !47, file: !3, line: 125, type: !19)
!54 = !DILocation(line: 127, column: 6, scope: !55)
!55 = distinct !DILexicalBlock(scope: !47, file: !3, line: 127, column: 6)
!56 = !DILocation(line: 127, column: 16, scope: !55)
!57 = !DILocation(line: 127, column: 22, scope: !55)
!58 = !DILocation(line: 127, column: 25, scope: !55)
!59 = !DILocation(line: 127, column: 6, scope: !47)
!60 = !DILocation(line: 128, column: 3, scope: !55)
!61 = !DILocation(line: 129, column: 14, scope: !47)
!62 = !DILocation(line: 129, column: 12, scope: !47)
!63 = !DILocation(line: 130, column: 6, scope: !64)
!64 = distinct !DILexicalBlock(scope: !47, file: !3, line: 130, column: 6)
!65 = !DILocation(line: 130, column: 16, scope: !64)
!66 = !DILocation(line: 130, column: 6, scope: !47)
!67 = !DILocation(line: 131, column: 13, scope: !64)
!68 = !DILocation(line: 131, column: 3, scope: !64)
!69 = !DILocation(line: 132, column: 2, scope: !47)
!70 = !DILocation(line: 133, column: 1, scope: !47)
!71 = distinct !DISubprogram(name: "commit_pager_choice", scope: !3, file: !3, line: 111, type: !72, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!72 = !DISubroutineType(types: !73)
!73 = !{null}
!74 = !DILocation(line: 113, column: 10, scope: !71)
!75 = !DILocation(line: 113, column: 2, scope: !71)
!76 = !DILocation(line: 115, column: 3, scope: !77)
!77 = distinct !DILexicalBlock(scope: !71, file: !3, line: 113, column: 21)
!78 = !DILocation(line: 116, column: 3, scope: !77)
!79 = !DILocation(line: 118, column: 3, scope: !77)
!80 = !DILocation(line: 119, column: 3, scope: !77)
!81 = !DILocation(line: 121, column: 3, scope: !77)
!82 = !DILocation(line: 123, column: 1, scope: !71)
!83 = distinct !DISubprogram(name: "is_builtin", scope: !3, file: !3, line: 646, type: !84, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !50)
!84 = !DISubroutineType(types: !85)
!85 = !{!19, !26}
!86 = !DILocalVariable(name: "s", arg: 1, scope: !83, file: !3, line: 646, type: !26)
!87 = !DILocation(line: 0, scope: !83)
!88 = !DILocation(line: 648, column: 11, scope: !83)
!89 = !DILocation(line: 648, column: 10, scope: !83)
!90 = !DILocation(line: 648, column: 9, scope: !83)
!91 = !DILocation(line: 648, column: 2, scope: !83)
!92 = distinct !DISubprogram(name: "get_builtin", scope: !3, file: !3, line: 635, type: !93, scopeLine: 636, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !26}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!96 = !DILocalVariable(name: "s", arg: 1, scope: !92, file: !3, line: 635, type: !26)
!97 = !DILocation(line: 0, scope: !92)
!98 = !DILocalVariable(name: "i", scope: !92, file: !3, line: 637, type: !19)
!99 = !DILocation(line: 638, column: 7, scope: !100)
!100 = distinct !DILexicalBlock(scope: !92, file: !3, line: 638, column: 2)
!101 = !DILocation(line: 0, scope: !100)
!102 = !DILocation(line: 638, column: 14, scope: !103)
!103 = distinct !DILexicalBlock(scope: !100, file: !3, line: 638, column: 2)
!104 = !DILocation(line: 638, column: 16, scope: !103)
!105 = !DILocation(line: 638, column: 2, scope: !100)
!106 = !DILocation(line: 639, column: 35, scope: !107)
!107 = distinct !DILexicalBlock(scope: !103, file: !3, line: 638, column: 45)
!108 = !DILocalVariable(name: "p", scope: !107, file: !3, line: 639, type: !95)
!109 = !DILocation(line: 0, scope: !107)
!110 = !DILocation(line: 640, column: 21, scope: !111)
!111 = distinct !DILexicalBlock(scope: !107, file: !3, line: 640, column: 7)
!112 = !DILocation(line: 640, column: 8, scope: !111)
!113 = !DILocation(line: 640, column: 7, scope: !107)
!114 = !DILocation(line: 641, column: 4, scope: !111)
!115 = !DILocation(line: 642, column: 2, scope: !107)
!116 = !DILocation(line: 638, column: 41, scope: !103)
!117 = !DILocation(line: 638, column: 2, scope: !103)
!118 = distinct !{!118, !105, !119, !120}
!119 = !DILocation(line: 642, column: 2, scope: !100)
!120 = !{!"llvm.loop.mustprogress"}
!121 = !DILocation(line: 643, column: 2, scope: !92)
!122 = !DILocation(line: 644, column: 1, scope: !92)
!123 = distinct !DISubprogram(name: "load_builtin_commands", scope: !3, file: !3, line: 662, type: !124, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !50)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !26, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmdnames", file: !128, line: 7, size: 128, elements: !129)
!128 = !DIFile(filename: "./help.h", directory: "/Users/jryans/Projects/git")
!129 = !{!130, !131, !132}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !127, file: !128, line: 8, baseType: !19, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "cnt", scope: !127, file: !128, line: 9, baseType: !19, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "names", scope: !127, file: !128, line: 13, baseType: !133, size: 64, offset: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cmdname", file: !128, line: 10, size: 64, elements: !136)
!136 = !{!137, !142}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !135, file: !128, line: 11, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !139, line: 31, baseType: !140)
!139 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h", directory: "")
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !141, line: 94, baseType: !9)
!141 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h", directory: "")
!142 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !135, file: !128, line: 12, baseType: !143, offset: 64)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: -1)
!146 = !DILocalVariable(name: "prefix", arg: 1, scope: !123, file: !3, line: 662, type: !26)
!147 = !DILocation(line: 662, column: 40, scope: !123)
!148 = !DILocalVariable(name: "cmds", arg: 2, scope: !123, file: !3, line: 662, type: !126)
!149 = !DILocation(line: 0, scope: !123)
!150 = !DILocalVariable(name: "name", scope: !123, file: !3, line: 664, type: !26)
!151 = !DILocation(line: 664, column: 14, scope: !123)
!152 = !DILocation(line: 673, column: 19, scope: !153)
!153 = distinct !DILexicalBlock(scope: !123, file: !3, line: 673, column: 6)
!154 = !DILocation(line: 673, column: 7, scope: !153)
!155 = !DILocation(line: 673, column: 6, scope: !123)
!156 = !DILocation(line: 674, column: 3, scope: !153)
!157 = !DILocalVariable(name: "i", scope: !123, file: !3, line: 665, type: !19)
!158 = !DILocation(line: 676, column: 7, scope: !159)
!159 = distinct !DILexicalBlock(scope: !123, file: !3, line: 676, column: 2)
!160 = !DILocation(line: 0, scope: !159)
!161 = !DILocation(line: 676, column: 14, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !3, line: 676, column: 2)
!163 = !DILocation(line: 676, column: 16, scope: !162)
!164 = !DILocation(line: 676, column: 2, scope: !159)
!165 = !DILocation(line: 677, column: 19, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !3, line: 677, column: 7)
!167 = !DILocation(line: 677, column: 31, scope: !166)
!168 = !DILocation(line: 677, column: 36, scope: !166)
!169 = !DILocation(line: 677, column: 7, scope: !166)
!170 = !DILocation(line: 677, column: 7, scope: !162)
!171 = !DILocation(line: 678, column: 22, scope: !166)
!172 = !DILocation(line: 678, column: 35, scope: !166)
!173 = !DILocation(line: 678, column: 28, scope: !166)
!174 = !DILocation(line: 678, column: 4, scope: !166)
!175 = !DILocation(line: 677, column: 49, scope: !166)
!176 = !DILocation(line: 676, column: 41, scope: !162)
!177 = !DILocation(line: 676, column: 2, scope: !162)
!178 = distinct !{!178, !164, !179, !120}
!179 = !DILocation(line: 678, column: 40, scope: !159)
!180 = !DILocation(line: 679, column: 1, scope: !123)
!181 = distinct !DISubprogram(name: "skip_prefix", scope: !182, file: !182, line: 674, type: !183, scopeLine: 676, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!182 = !DIFile(filename: "./git-compat-util.h", directory: "/Users/jryans/Projects/git")
!183 = !DISubroutineType(types: !184)
!184 = !{!19, !26, !26, !31}
!185 = !DILocalVariable(name: "str", arg: 1, scope: !181, file: !182, line: 674, type: !26)
!186 = !DILocation(line: 0, scope: !181)
!187 = !DILocalVariable(name: "prefix", arg: 2, scope: !181, file: !182, line: 674, type: !26)
!188 = !DILocalVariable(name: "out", arg: 3, scope: !181, file: !182, line: 675, type: !31)
!189 = !DILocation(line: 677, column: 2, scope: !181)
!190 = !DILocation(line: 678, column: 8, scope: !191)
!191 = distinct !DILexicalBlock(scope: !192, file: !182, line: 678, column: 7)
!192 = distinct !DILexicalBlock(scope: !181, file: !182, line: 677, column: 5)
!193 = !DILocation(line: 678, column: 7, scope: !192)
!194 = !DILocation(line: 679, column: 9, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !182, line: 678, column: 17)
!196 = !DILocation(line: 680, column: 4, scope: !195)
!197 = !DILocation(line: 682, column: 2, scope: !192)
!198 = !DILocation(line: 682, column: 15, scope: !181)
!199 = !DILocation(line: 682, column: 11, scope: !181)
!200 = !DILocation(line: 682, column: 28, scope: !181)
!201 = !DILocation(line: 682, column: 21, scope: !181)
!202 = !DILocation(line: 682, column: 18, scope: !181)
!203 = distinct !{!203, !189, !204, !120}
!204 = !DILocation(line: 682, column: 30, scope: !181)
!205 = !DILocation(line: 683, column: 2, scope: !181)
!206 = !DILocation(line: 684, column: 1, scope: !181)
!207 = distinct !DISubprogram(name: "cmd_main", scope: !3, file: !3, line: 864, type: !208, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !50)
!208 = !DISubroutineType(types: !209)
!209 = !{!19, !19, !31}
!210 = !DILocalVariable(name: "argc", arg: 1, scope: !207, file: !3, line: 864, type: !19)
!211 = !DILocation(line: 864, column: 18, scope: !207)
!212 = !DILocalVariable(name: "argv", arg: 2, scope: !207, file: !3, line: 864, type: !31)
!213 = !DILocation(line: 864, column: 37, scope: !207)
!214 = !DILocalVariable(name: "cmd", scope: !207, file: !3, line: 866, type: !26)
!215 = !DILocation(line: 866, column: 14, scope: !207)
!216 = !DILocalVariable(name: "done_help", scope: !207, file: !3, line: 867, type: !19)
!217 = !DILocation(line: 0, scope: !207)
!218 = !DILocation(line: 869, column: 8, scope: !207)
!219 = !DILocation(line: 869, column: 6, scope: !207)
!220 = !DILocation(line: 870, column: 7, scope: !221)
!221 = distinct !DILexicalBlock(scope: !207, file: !3, line: 870, column: 6)
!222 = !DILocation(line: 870, column: 6, scope: !207)
!223 = !DILocation(line: 871, column: 7, scope: !221)
!224 = !DILocation(line: 871, column: 3, scope: !221)
!225 = !DILocation(line: 873, column: 41, scope: !226)
!226 = distinct !DILexicalBlock(scope: !221, file: !3, line: 872, column: 7)
!227 = !DILocation(line: 873, column: 23, scope: !226)
!228 = !DILocalVariable(name: "slash", scope: !226, file: !3, line: 873, type: !26)
!229 = !DILocation(line: 0, scope: !226)
!230 = !DILocation(line: 874, column: 7, scope: !231)
!231 = distinct !DILexicalBlock(scope: !226, file: !3, line: 874, column: 7)
!232 = !DILocation(line: 874, column: 7, scope: !226)
!233 = !DILocation(line: 875, column: 16, scope: !231)
!234 = !DILocation(line: 875, column: 8, scope: !231)
!235 = !DILocation(line: 875, column: 4, scope: !231)
!236 = !DILocation(line: 878, column: 28, scope: !207)
!237 = !DILocation(line: 878, column: 2, scope: !207)
!238 = !DILocation(line: 890, column: 18, scope: !239)
!239 = distinct !DILexicalBlock(scope: !207, file: !3, line: 890, column: 6)
!240 = !DILocation(line: 890, column: 6, scope: !239)
!241 = !DILocation(line: 890, column: 6, scope: !207)
!242 = !DILocation(line: 891, column: 13, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !3, line: 890, column: 38)
!244 = !DILocation(line: 891, column: 3, scope: !243)
!245 = !DILocation(line: 891, column: 11, scope: !243)
!246 = !DILocation(line: 892, column: 18, scope: !243)
!247 = !DILocation(line: 892, column: 24, scope: !243)
!248 = !DILocation(line: 892, column: 3, scope: !243)
!249 = !DILocation(line: 893, column: 7, scope: !243)
!250 = !DILocation(line: 893, column: 43, scope: !243)
!251 = !DILocation(line: 893, column: 3, scope: !243)
!252 = !DILocation(line: 897, column: 6, scope: !207)
!253 = !DILocation(line: 898, column: 6, scope: !207)
!254 = !DILocation(line: 899, column: 2, scope: !207)
!255 = !DILocation(line: 901, column: 7, scope: !256)
!256 = distinct !DILexicalBlock(scope: !207, file: !3, line: 901, column: 6)
!257 = !DILocation(line: 901, column: 6, scope: !207)
!258 = !DILocation(line: 903, column: 3, scope: !259)
!259 = distinct !DILexicalBlock(scope: !256, file: !3, line: 901, column: 13)
!260 = !DILocation(line: 904, column: 10, scope: !259)
!261 = !DILocation(line: 904, column: 3, scope: !259)
!262 = !DILocation(line: 905, column: 3, scope: !259)
!263 = !DILocation(line: 906, column: 20, scope: !259)
!264 = !DILocation(line: 906, column: 3, scope: !259)
!265 = !DILocation(line: 907, column: 3, scope: !259)
!266 = !DILocation(line: 910, column: 27, scope: !267)
!267 = distinct !DILexicalBlock(scope: !207, file: !3, line: 910, column: 6)
!268 = !DILocation(line: 910, column: 7, scope: !267)
!269 = !DILocation(line: 910, column: 36, scope: !267)
!270 = !DILocation(line: 910, column: 53, scope: !267)
!271 = !DILocation(line: 910, column: 40, scope: !267)
!272 = !DILocation(line: 910, column: 6, scope: !207)
!273 = !DILocation(line: 911, column: 3, scope: !267)
!274 = !DILocation(line: 911, column: 11, scope: !267)
!275 = !DILocation(line: 912, column: 29, scope: !276)
!276 = distinct !DILexicalBlock(scope: !267, file: !3, line: 912, column: 11)
!277 = !DILocation(line: 912, column: 12, scope: !276)
!278 = !DILocation(line: 912, column: 38, scope: !276)
!279 = !DILocation(line: 912, column: 55, scope: !276)
!280 = !DILocation(line: 912, column: 42, scope: !276)
!281 = !DILocation(line: 912, column: 11, scope: !267)
!282 = !DILocation(line: 913, column: 3, scope: !276)
!283 = !DILocation(line: 913, column: 11, scope: !276)
!284 = !DILocation(line: 915, column: 8, scope: !207)
!285 = !DILocation(line: 915, column: 6, scope: !207)
!286 = !DILocation(line: 923, column: 2, scope: !207)
!287 = !DILocation(line: 925, column: 2, scope: !207)
!288 = !DILocation(line: 926, column: 19, scope: !289)
!289 = distinct !DILexicalBlock(scope: !207, file: !3, line: 925, column: 12)
!290 = !DILocalVariable(name: "was_alias", scope: !289, file: !3, line: 926, type: !19)
!291 = !DILocation(line: 0, scope: !289)
!292 = !DILocation(line: 927, column: 7, scope: !293)
!293 = distinct !DILexicalBlock(scope: !289, file: !3, line: 927, column: 7)
!294 = !DILocation(line: 927, column: 13, scope: !293)
!295 = !DILocation(line: 927, column: 7, scope: !289)
!296 = !DILocation(line: 928, column: 4, scope: !293)
!297 = !DILocation(line: 929, column: 7, scope: !298)
!298 = distinct !DILexicalBlock(scope: !289, file: !3, line: 929, column: 7)
!299 = !DILocation(line: 929, column: 7, scope: !289)
!300 = !DILocation(line: 930, column: 12, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !3, line: 929, column: 18)
!302 = !DILocation(line: 930, column: 20, scope: !301)
!303 = !DILocation(line: 932, column: 5, scope: !301)
!304 = !DILocation(line: 932, column: 10, scope: !301)
!305 = !DILocation(line: 930, column: 4, scope: !301)
!306 = !DILocation(line: 933, column: 4, scope: !301)
!307 = !DILocation(line: 935, column: 8, scope: !308)
!308 = distinct !DILexicalBlock(scope: !289, file: !3, line: 935, column: 7)
!309 = !DILocation(line: 935, column: 7, scope: !289)
!310 = !DILocation(line: 936, column: 37, scope: !311)
!311 = distinct !DILexicalBlock(scope: !308, file: !3, line: 935, column: 19)
!312 = !DILocation(line: 936, column: 20, scope: !311)
!313 = !DILocation(line: 936, column: 10, scope: !311)
!314 = !DILocation(line: 936, column: 18, scope: !311)
!315 = !DILocation(line: 936, column: 8, scope: !311)
!316 = !DILocation(line: 938, column: 3, scope: !311)
!317 = !DILocation(line: 939, column: 4, scope: !308)
!318 = distinct !{!318, !287, !319}
!319 = !DILocation(line: 940, column: 2, scope: !207)
!320 = !DILocation(line: 942, column: 10, scope: !207)
!321 = !DILocation(line: 942, column: 18, scope: !207)
!322 = !DILocation(line: 943, column: 3, scope: !207)
!323 = !DILocation(line: 943, column: 17, scope: !207)
!324 = !DILocation(line: 943, column: 8, scope: !207)
!325 = !DILocation(line: 942, column: 2, scope: !207)
!326 = !DILocation(line: 945, column: 2, scope: !207)
!327 = distinct !DISubprogram(name: "git_find_last_dir_sep", scope: !182, file: !182, line: 536, type: !328, scopeLine: 537, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!328 = !DISubroutineType(types: !329)
!329 = !{!5, !26}
!330 = !DILocalVariable(name: "path", arg: 1, scope: !327, file: !182, line: 536, type: !26)
!331 = !DILocation(line: 0, scope: !327)
!332 = !DILocation(line: 538, column: 9, scope: !327)
!333 = !DILocation(line: 538, column: 2, scope: !327)
!334 = distinct !DISubprogram(name: "handle_builtin", scope: !3, file: !3, line: 693, type: !335, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !19, !31}
!337 = !DILocalVariable(name: "argc", arg: 1, scope: !334, file: !3, line: 693, type: !19)
!338 = !DILocation(line: 0, scope: !334)
!339 = !DILocalVariable(name: "argv", arg: 2, scope: !334, file: !3, line: 693, type: !31)
!340 = !DILocalVariable(name: "args", scope: !334, file: !3, line: 695, type: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strvec", file: !342, line: 30, size: 192, elements: !343)
!342 = !DIFile(filename: "./strvec.h", directory: "/Users/jryans/Projects/git")
!343 = !{!344, !345, !346}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "v", scope: !341, file: !342, line: 31, baseType: !31, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !341, file: !342, line: 32, baseType: !138, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !341, file: !342, line: 33, baseType: !138, size: 64, offset: 128)
!347 = !DILocation(line: 695, column: 16, scope: !334)
!348 = !DILocation(line: 700, column: 8, scope: !334)
!349 = !DILocalVariable(name: "cmd", scope: !334, file: !3, line: 696, type: !26)
!350 = !DILocation(line: 703, column: 11, scope: !351)
!351 = distinct !DILexicalBlock(scope: !334, file: !3, line: 703, column: 6)
!352 = !DILocation(line: 703, column: 15, scope: !351)
!353 = !DILocation(line: 703, column: 26, scope: !351)
!354 = !DILocation(line: 703, column: 19, scope: !351)
!355 = !DILocation(line: 703, column: 6, scope: !334)
!356 = !DILocation(line: 706, column: 13, scope: !357)
!357 = distinct !DILexicalBlock(scope: !351, file: !3, line: 703, column: 46)
!358 = !DILocation(line: 706, column: 3, scope: !357)
!359 = !DILocation(line: 706, column: 11, scope: !357)
!360 = !DILocation(line: 707, column: 3, scope: !357)
!361 = !DILocation(line: 707, column: 11, scope: !357)
!362 = !DILocalVariable(name: "i", scope: !357, file: !3, line: 704, type: !19)
!363 = !DILocation(line: 0, scope: !357)
!364 = !DILocation(line: 709, column: 8, scope: !365)
!365 = distinct !DILexicalBlock(scope: !357, file: !3, line: 709, column: 3)
!366 = !DILocation(line: 0, scope: !365)
!367 = !DILocation(line: 709, column: 17, scope: !368)
!368 = distinct !DILexicalBlock(scope: !365, file: !3, line: 709, column: 3)
!369 = !DILocation(line: 709, column: 3, scope: !365)
!370 = !DILocation(line: 710, column: 23, scope: !371)
!371 = distinct !DILexicalBlock(scope: !368, file: !3, line: 709, column: 30)
!372 = !DILocation(line: 710, column: 4, scope: !371)
!373 = !DILocation(line: 711, column: 9, scope: !374)
!374 = distinct !DILexicalBlock(scope: !371, file: !3, line: 711, column: 8)
!375 = !DILocation(line: 711, column: 8, scope: !371)
!376 = !DILocation(line: 712, column: 5, scope: !374)
!377 = !DILocation(line: 713, column: 3, scope: !371)
!378 = !DILocation(line: 709, column: 26, scope: !368)
!379 = !DILocation(line: 709, column: 3, scope: !368)
!380 = distinct !{!380, !369, !381, !120}
!381 = !DILocation(line: 713, column: 3, scope: !365)
!382 = !DILocation(line: 715, column: 7, scope: !357)
!383 = !DILocation(line: 716, column: 15, scope: !357)
!384 = !DILocation(line: 717, column: 2, scope: !357)
!385 = !DILocation(line: 719, column: 12, scope: !334)
!386 = !DILocalVariable(name: "builtin", scope: !334, file: !3, line: 697, type: !95)
!387 = !DILocation(line: 720, column: 6, scope: !388)
!388 = distinct !DILexicalBlock(scope: !334, file: !3, line: 720, column: 6)
!389 = !DILocation(line: 720, column: 6, scope: !334)
!390 = !DILocation(line: 721, column: 3, scope: !388)
!391 = !DILocation(line: 722, column: 2, scope: !334)
!392 = !DILocation(line: 723, column: 1, scope: !334)
!393 = distinct !DISubprogram(name: "_", scope: !394, file: !394, line: 44, type: !395, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!394 = !DIFile(filename: "./gettext.h", directory: "/Users/jryans/Projects/git")
!395 = !DISubroutineType(types: !396)
!396 = !{!26, !26}
!397 = !DILocalVariable(name: "msgid", arg: 1, scope: !393, file: !394, line: 44, type: !26)
!398 = !DILocation(line: 0, scope: !393)
!399 = !DILocation(line: 46, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !393, file: !394, line: 46, column: 6)
!401 = !DILocation(line: 46, column: 6, scope: !393)
!402 = !DILocation(line: 47, column: 3, scope: !400)
!403 = !DILocation(line: 48, column: 9, scope: !393)
!404 = !DILocation(line: 48, column: 2, scope: !393)
!405 = !DILocation(line: 49, column: 1, scope: !393)
!406 = distinct !DISubprogram(name: "handle_options", scope: !3, file: !3, line: 135, type: !407, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!407 = !DISubroutineType(types: !408)
!408 = !{!19, !409, !410, !410}
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!411 = !DILocalVariable(name: "argv", arg: 1, scope: !406, file: !3, line: 135, type: !409)
!412 = !DILocation(line: 0, scope: !406)
!413 = !DILocalVariable(name: "argc", arg: 2, scope: !406, file: !3, line: 135, type: !410)
!414 = !DILocalVariable(name: "envchanged", arg: 3, scope: !406, file: !3, line: 135, type: !410)
!415 = !DILocation(line: 137, column: 27, scope: !406)
!416 = !DILocalVariable(name: "orig_argv", scope: !406, file: !3, line: 137, type: !31)
!417 = !DILocation(line: 139, column: 2, scope: !406)
!418 = !DILocation(line: 139, column: 9, scope: !406)
!419 = !DILocation(line: 139, column: 15, scope: !406)
!420 = !DILocalVariable(name: "cmd", scope: !421, file: !3, line: 140, type: !26)
!421 = distinct !DILexicalBlock(scope: !406, file: !3, line: 139, column: 20)
!422 = !DILocation(line: 140, column: 15, scope: !421)
!423 = !DILocation(line: 140, column: 22, scope: !421)
!424 = !DILocation(line: 140, column: 21, scope: !421)
!425 = !DILocation(line: 141, column: 7, scope: !426)
!426 = distinct !DILexicalBlock(scope: !421, file: !3, line: 141, column: 7)
!427 = !DILocation(line: 141, column: 14, scope: !426)
!428 = !DILocation(line: 141, column: 7, scope: !421)
!429 = !DILocation(line: 142, column: 4, scope: !426)
!430 = !DILocation(line: 149, column: 15, scope: !431)
!431 = distinct !DILexicalBlock(scope: !421, file: !3, line: 149, column: 7)
!432 = !DILocation(line: 149, column: 8, scope: !431)
!433 = !DILocation(line: 149, column: 30, scope: !431)
!434 = !DILocation(line: 149, column: 41, scope: !431)
!435 = !DILocation(line: 149, column: 34, scope: !431)
!436 = !DILocation(line: 149, column: 52, scope: !431)
!437 = !DILocation(line: 150, column: 15, scope: !431)
!438 = !DILocation(line: 150, column: 8, scope: !431)
!439 = !DILocation(line: 150, column: 33, scope: !431)
!440 = !DILocation(line: 150, column: 44, scope: !431)
!441 = !DILocation(line: 150, column: 37, scope: !431)
!442 = !DILocation(line: 149, column: 7, scope: !421)
!443 = !DILocation(line: 151, column: 4, scope: !431)
!444 = !DILocation(line: 156, column: 19, scope: !445)
!445 = distinct !DILexicalBlock(scope: !421, file: !3, line: 156, column: 7)
!446 = !DILocation(line: 156, column: 7, scope: !445)
!447 = !DILocation(line: 156, column: 7, scope: !421)
!448 = !DILocation(line: 157, column: 9, scope: !449)
!449 = distinct !DILexicalBlock(scope: !450, file: !3, line: 157, column: 8)
!450 = distinct !DILexicalBlock(scope: !445, file: !3, line: 156, column: 46)
!451 = !DILocation(line: 157, column: 8, scope: !449)
!452 = !DILocation(line: 157, column: 13, scope: !449)
!453 = !DILocation(line: 157, column: 8, scope: !450)
!454 = !DILocation(line: 158, column: 23, scope: !449)
!455 = !DILocation(line: 158, column: 27, scope: !449)
!456 = !DILocation(line: 158, column: 5, scope: !449)
!457 = !DILocation(line: 160, column: 10, scope: !458)
!458 = distinct !DILexicalBlock(scope: !449, file: !3, line: 159, column: 9)
!459 = !DILocation(line: 160, column: 5, scope: !458)
!460 = !DILocation(line: 161, column: 5, scope: !458)
!461 = !DILocation(line: 162, column: 5, scope: !458)
!462 = !DILocation(line: 164, column: 3, scope: !450)
!463 = !DILocation(line: 164, column: 22, scope: !464)
!464 = distinct !DILexicalBlock(scope: !445, file: !3, line: 164, column: 14)
!465 = !DILocation(line: 164, column: 15, scope: !464)
!466 = !DILocation(line: 164, column: 14, scope: !445)
!467 = !DILocation(line: 165, column: 9, scope: !468)
!468 = distinct !DILexicalBlock(scope: !464, file: !3, line: 164, column: 43)
!469 = !DILocation(line: 165, column: 4, scope: !468)
!470 = !DILocation(line: 166, column: 4, scope: !468)
!471 = !DILocation(line: 167, column: 4, scope: !468)
!472 = !DILocation(line: 168, column: 22, scope: !473)
!473 = distinct !DILexicalBlock(scope: !464, file: !3, line: 168, column: 14)
!474 = !DILocation(line: 168, column: 15, scope: !473)
!475 = !DILocation(line: 168, column: 14, scope: !464)
!476 = !DILocation(line: 169, column: 9, scope: !477)
!477 = distinct !DILexicalBlock(scope: !473, file: !3, line: 168, column: 42)
!478 = !DILocation(line: 169, column: 4, scope: !477)
!479 = !DILocation(line: 170, column: 4, scope: !477)
!480 = !DILocation(line: 171, column: 4, scope: !477)
!481 = !DILocation(line: 172, column: 22, scope: !482)
!482 = distinct !DILexicalBlock(scope: !473, file: !3, line: 172, column: 14)
!483 = !DILocation(line: 172, column: 15, scope: !482)
!484 = !DILocation(line: 172, column: 14, scope: !473)
!485 = !DILocation(line: 173, column: 9, scope: !486)
!486 = distinct !DILexicalBlock(scope: !482, file: !3, line: 172, column: 43)
!487 = !DILocation(line: 173, column: 4, scope: !486)
!488 = !DILocation(line: 174, column: 4, scope: !486)
!489 = !DILocation(line: 175, column: 4, scope: !486)
!490 = !DILocation(line: 176, column: 22, scope: !491)
!491 = distinct !DILexicalBlock(scope: !482, file: !3, line: 176, column: 14)
!492 = !DILocation(line: 176, column: 15, scope: !491)
!493 = !DILocation(line: 176, column: 33, scope: !491)
!494 = !DILocation(line: 176, column: 44, scope: !491)
!495 = !DILocation(line: 176, column: 37, scope: !491)
!496 = !DILocation(line: 176, column: 14, scope: !482)
!497 = !DILocation(line: 177, column: 14, scope: !498)
!498 = distinct !DILexicalBlock(scope: !491, file: !3, line: 176, column: 64)
!499 = !DILocation(line: 178, column: 3, scope: !498)
!500 = !DILocation(line: 178, column: 22, scope: !501)
!501 = distinct !DILexicalBlock(scope: !491, file: !3, line: 178, column: 14)
!502 = !DILocation(line: 178, column: 15, scope: !501)
!503 = !DILocation(line: 178, column: 33, scope: !501)
!504 = !DILocation(line: 178, column: 44, scope: !501)
!505 = !DILocation(line: 178, column: 37, scope: !501)
!506 = !DILocation(line: 178, column: 14, scope: !491)
!507 = !DILocation(line: 179, column: 14, scope: !508)
!508 = distinct !DILexicalBlock(scope: !501, file: !3, line: 178, column: 64)
!509 = !DILocation(line: 180, column: 8, scope: !510)
!510 = distinct !DILexicalBlock(scope: !508, file: !3, line: 180, column: 8)
!511 = !DILocation(line: 180, column: 8, scope: !508)
!512 = !DILocation(line: 181, column: 17, scope: !510)
!513 = !DILocation(line: 181, column: 5, scope: !510)
!514 = !DILocation(line: 182, column: 3, scope: !508)
!515 = !DILocation(line: 182, column: 22, scope: !516)
!516 = distinct !DILexicalBlock(scope: !501, file: !3, line: 182, column: 14)
!517 = !DILocation(line: 182, column: 15, scope: !516)
!518 = !DILocation(line: 182, column: 14, scope: !501)
!519 = !DILocation(line: 183, column: 22, scope: !520)
!520 = distinct !DILexicalBlock(scope: !516, file: !3, line: 182, column: 52)
!521 = !DILocation(line: 184, column: 4, scope: !520)
!522 = !DILocation(line: 185, column: 8, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !3, line: 185, column: 8)
!524 = !DILocation(line: 185, column: 8, scope: !520)
!525 = !DILocation(line: 186, column: 17, scope: !523)
!526 = !DILocation(line: 186, column: 5, scope: !523)
!527 = !DILocation(line: 187, column: 3, scope: !520)
!528 = !DILocation(line: 187, column: 22, scope: !529)
!529 = distinct !DILexicalBlock(scope: !516, file: !3, line: 187, column: 14)
!530 = !DILocation(line: 187, column: 15, scope: !529)
!531 = !DILocation(line: 187, column: 14, scope: !516)
!532 = !DILocation(line: 188, column: 8, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !3, line: 188, column: 8)
!534 = distinct !DILexicalBlock(scope: !529, file: !3, line: 187, column: 41)
!535 = !DILocation(line: 188, column: 14, scope: !533)
!536 = !DILocation(line: 188, column: 8, scope: !534)
!537 = !DILocation(line: 189, column: 13, scope: !538)
!538 = distinct !DILexicalBlock(scope: !533, file: !3, line: 188, column: 19)
!539 = !DILocation(line: 189, column: 21, scope: !538)
!540 = !DILocation(line: 189, column: 5, scope: !538)
!541 = !DILocation(line: 190, column: 5, scope: !538)
!542 = !DILocation(line: 192, column: 33, scope: !534)
!543 = !DILocation(line: 192, column: 32, scope: !534)
!544 = !DILocation(line: 192, column: 4, scope: !534)
!545 = !DILocation(line: 193, column: 8, scope: !546)
!546 = distinct !DILexicalBlock(scope: !534, file: !3, line: 193, column: 8)
!547 = !DILocation(line: 193, column: 8, scope: !534)
!548 = !DILocation(line: 194, column: 17, scope: !546)
!549 = !DILocation(line: 194, column: 5, scope: !546)
!550 = !DILocation(line: 195, column: 11, scope: !534)
!551 = !DILocation(line: 196, column: 11, scope: !534)
!552 = !DILocation(line: 197, column: 3, scope: !534)
!553 = !DILocation(line: 197, column: 26, scope: !554)
!554 = distinct !DILexicalBlock(scope: !529, file: !3, line: 197, column: 14)
!555 = !DILocation(line: 197, column: 14, scope: !554)
!556 = !DILocation(line: 197, column: 14, scope: !529)
!557 = !DILocation(line: 198, column: 32, scope: !558)
!558 = distinct !DILexicalBlock(scope: !554, file: !3, line: 197, column: 52)
!559 = !DILocation(line: 198, column: 4, scope: !558)
!560 = !DILocation(line: 199, column: 8, scope: !561)
!561 = distinct !DILexicalBlock(scope: !558, file: !3, line: 199, column: 8)
!562 = !DILocation(line: 199, column: 8, scope: !558)
!563 = !DILocation(line: 200, column: 17, scope: !561)
!564 = !DILocation(line: 200, column: 5, scope: !561)
!565 = !DILocation(line: 201, column: 3, scope: !558)
!566 = !DILocation(line: 201, column: 22, scope: !567)
!567 = distinct !DILexicalBlock(scope: !554, file: !3, line: 201, column: 14)
!568 = !DILocation(line: 201, column: 15, scope: !567)
!569 = !DILocation(line: 201, column: 14, scope: !554)
!570 = !DILocation(line: 202, column: 8, scope: !571)
!571 = distinct !DILexicalBlock(scope: !572, file: !3, line: 202, column: 8)
!572 = distinct !DILexicalBlock(scope: !567, file: !3, line: 201, column: 43)
!573 = !DILocation(line: 202, column: 14, scope: !571)
!574 = !DILocation(line: 202, column: 8, scope: !572)
!575 = !DILocation(line: 203, column: 13, scope: !576)
!576 = distinct !DILexicalBlock(scope: !571, file: !3, line: 202, column: 19)
!577 = !DILocation(line: 203, column: 21, scope: !576)
!578 = !DILocation(line: 203, column: 5, scope: !576)
!579 = !DILocation(line: 204, column: 5, scope: !576)
!580 = !DILocation(line: 206, column: 39, scope: !572)
!581 = !DILocation(line: 206, column: 38, scope: !572)
!582 = !DILocation(line: 206, column: 4, scope: !572)
!583 = !DILocation(line: 207, column: 8, scope: !584)
!584 = distinct !DILexicalBlock(scope: !572, file: !3, line: 207, column: 8)
!585 = !DILocation(line: 207, column: 8, scope: !572)
!586 = !DILocation(line: 208, column: 17, scope: !584)
!587 = !DILocation(line: 208, column: 5, scope: !584)
!588 = !DILocation(line: 209, column: 11, scope: !572)
!589 = !DILocation(line: 210, column: 11, scope: !572)
!590 = !DILocation(line: 211, column: 3, scope: !572)
!591 = !DILocation(line: 211, column: 26, scope: !592)
!592 = distinct !DILexicalBlock(scope: !567, file: !3, line: 211, column: 14)
!593 = !DILocation(line: 211, column: 14, scope: !592)
!594 = !DILocation(line: 211, column: 14, scope: !567)
!595 = !DILocation(line: 212, column: 38, scope: !596)
!596 = distinct !DILexicalBlock(scope: !592, file: !3, line: 211, column: 54)
!597 = !DILocation(line: 212, column: 4, scope: !596)
!598 = !DILocation(line: 213, column: 8, scope: !599)
!599 = distinct !DILexicalBlock(scope: !596, file: !3, line: 213, column: 8)
!600 = !DILocation(line: 213, column: 8, scope: !596)
!601 = !DILocation(line: 214, column: 17, scope: !599)
!602 = !DILocation(line: 214, column: 5, scope: !599)
!603 = !DILocation(line: 215, column: 3, scope: !596)
!604 = !DILocation(line: 215, column: 22, scope: !605)
!605 = distinct !DILexicalBlock(scope: !592, file: !3, line: 215, column: 14)
!606 = !DILocation(line: 215, column: 15, scope: !605)
!607 = !DILocation(line: 215, column: 14, scope: !592)
!608 = !DILocation(line: 216, column: 8, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !3, line: 216, column: 8)
!610 = distinct !DILexicalBlock(scope: !605, file: !3, line: 215, column: 43)
!611 = !DILocation(line: 216, column: 14, scope: !609)
!612 = !DILocation(line: 216, column: 8, scope: !610)
!613 = !DILocation(line: 217, column: 13, scope: !614)
!614 = distinct !DILexicalBlock(scope: !609, file: !3, line: 216, column: 19)
!615 = !DILocation(line: 217, column: 21, scope: !614)
!616 = !DILocation(line: 217, column: 5, scope: !614)
!617 = !DILocation(line: 218, column: 5, scope: !614)
!618 = !DILocation(line: 220, column: 39, scope: !610)
!619 = !DILocation(line: 220, column: 38, scope: !610)
!620 = !DILocation(line: 220, column: 4, scope: !610)
!621 = !DILocation(line: 221, column: 8, scope: !622)
!622 = distinct !DILexicalBlock(scope: !610, file: !3, line: 221, column: 8)
!623 = !DILocation(line: 221, column: 8, scope: !610)
!624 = !DILocation(line: 222, column: 17, scope: !622)
!625 = !DILocation(line: 222, column: 5, scope: !622)
!626 = !DILocation(line: 223, column: 11, scope: !610)
!627 = !DILocation(line: 224, column: 11, scope: !610)
!628 = !DILocation(line: 225, column: 3, scope: !610)
!629 = !DILocation(line: 225, column: 26, scope: !630)
!630 = distinct !DILexicalBlock(scope: !605, file: !3, line: 225, column: 14)
!631 = !DILocation(line: 225, column: 14, scope: !630)
!632 = !DILocation(line: 225, column: 14, scope: !605)
!633 = !DILocation(line: 226, column: 38, scope: !634)
!634 = distinct !DILexicalBlock(scope: !630, file: !3, line: 225, column: 54)
!635 = !DILocation(line: 226, column: 4, scope: !634)
!636 = !DILocation(line: 227, column: 8, scope: !637)
!637 = distinct !DILexicalBlock(scope: !634, file: !3, line: 227, column: 8)
!638 = !DILocation(line: 227, column: 8, scope: !634)
!639 = !DILocation(line: 228, column: 17, scope: !637)
!640 = !DILocation(line: 228, column: 5, scope: !637)
!641 = !DILocation(line: 229, column: 3, scope: !634)
!642 = !DILocation(line: 229, column: 22, scope: !643)
!643 = distinct !DILexicalBlock(scope: !630, file: !3, line: 229, column: 14)
!644 = !DILocation(line: 229, column: 15, scope: !643)
!645 = !DILocation(line: 229, column: 14, scope: !630)
!646 = !DILocation(line: 230, column: 8, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 230, column: 8)
!648 = distinct !DILexicalBlock(scope: !643, file: !3, line: 229, column: 46)
!649 = !DILocation(line: 230, column: 14, scope: !647)
!650 = !DILocation(line: 230, column: 8, scope: !648)
!651 = !DILocation(line: 231, column: 13, scope: !652)
!652 = distinct !DILexicalBlock(scope: !647, file: !3, line: 230, column: 19)
!653 = !DILocation(line: 231, column: 21, scope: !652)
!654 = !DILocation(line: 231, column: 5, scope: !652)
!655 = !DILocation(line: 232, column: 5, scope: !652)
!656 = !DILocation(line: 234, column: 42, scope: !648)
!657 = !DILocation(line: 234, column: 41, scope: !648)
!658 = !DILocation(line: 234, column: 4, scope: !648)
!659 = !DILocation(line: 235, column: 8, scope: !660)
!660 = distinct !DILexicalBlock(scope: !648, file: !3, line: 235, column: 8)
!661 = !DILocation(line: 235, column: 8, scope: !648)
!662 = !DILocation(line: 236, column: 17, scope: !660)
!663 = !DILocation(line: 236, column: 5, scope: !660)
!664 = !DILocation(line: 237, column: 11, scope: !648)
!665 = !DILocation(line: 238, column: 11, scope: !648)
!666 = !DILocation(line: 239, column: 3, scope: !648)
!667 = !DILocation(line: 239, column: 26, scope: !668)
!668 = distinct !DILexicalBlock(scope: !643, file: !3, line: 239, column: 14)
!669 = !DILocation(line: 239, column: 14, scope: !668)
!670 = !DILocation(line: 239, column: 14, scope: !643)
!671 = !DILocation(line: 240, column: 41, scope: !672)
!672 = distinct !DILexicalBlock(scope: !668, file: !3, line: 239, column: 57)
!673 = !DILocation(line: 240, column: 4, scope: !672)
!674 = !DILocation(line: 241, column: 8, scope: !675)
!675 = distinct !DILexicalBlock(scope: !672, file: !3, line: 241, column: 8)
!676 = !DILocation(line: 241, column: 8, scope: !672)
!677 = !DILocation(line: 242, column: 17, scope: !675)
!678 = !DILocation(line: 242, column: 5, scope: !675)
!679 = !DILocation(line: 243, column: 3, scope: !672)
!680 = !DILocation(line: 243, column: 22, scope: !681)
!681 = distinct !DILexicalBlock(scope: !668, file: !3, line: 243, column: 14)
!682 = !DILocation(line: 243, column: 15, scope: !681)
!683 = !DILocation(line: 243, column: 14, scope: !668)
!684 = !DILocation(line: 244, column: 16, scope: !685)
!685 = distinct !DILexicalBlock(scope: !681, file: !3, line: 243, column: 38)
!686 = !DILocalVariable(name: "cwd", scope: !685, file: !3, line: 244, type: !5)
!687 = !DILocation(line: 0, scope: !685)
!688 = !DILocation(line: 245, column: 27, scope: !685)
!689 = !DILocation(line: 246, column: 4, scope: !685)
!690 = !DILocation(line: 247, column: 4, scope: !685)
!691 = !DILocation(line: 248, column: 4, scope: !685)
!692 = !DILocation(line: 249, column: 8, scope: !693)
!693 = distinct !DILexicalBlock(scope: !685, file: !3, line: 249, column: 8)
!694 = !DILocation(line: 249, column: 8, scope: !685)
!695 = !DILocation(line: 250, column: 17, scope: !693)
!696 = !DILocation(line: 250, column: 5, scope: !693)
!697 = !DILocation(line: 251, column: 3, scope: !685)
!698 = !DILocation(line: 251, column: 22, scope: !699)
!699 = distinct !DILexicalBlock(scope: !681, file: !3, line: 251, column: 14)
!700 = !DILocation(line: 251, column: 15, scope: !699)
!701 = !DILocation(line: 251, column: 14, scope: !681)
!702 = !DILocation(line: 252, column: 8, scope: !703)
!703 = distinct !DILexicalBlock(scope: !704, file: !3, line: 252, column: 8)
!704 = distinct !DILexicalBlock(scope: !699, file: !3, line: 251, column: 34)
!705 = !DILocation(line: 252, column: 14, scope: !703)
!706 = !DILocation(line: 252, column: 8, scope: !704)
!707 = !DILocation(line: 253, column: 13, scope: !708)
!708 = distinct !DILexicalBlock(scope: !703, file: !3, line: 252, column: 19)
!709 = !DILocation(line: 253, column: 21, scope: !708)
!710 = !DILocation(line: 253, column: 5, scope: !708)
!711 = !DILocation(line: 254, column: 5, scope: !708)
!712 = !DILocation(line: 256, column: 31, scope: !704)
!713 = !DILocation(line: 256, column: 30, scope: !704)
!714 = !DILocation(line: 256, column: 4, scope: !704)
!715 = !DILocation(line: 257, column: 11, scope: !704)
!716 = !DILocation(line: 258, column: 11, scope: !704)
!717 = !DILocation(line: 259, column: 3, scope: !704)
!718 = !DILocation(line: 259, column: 22, scope: !719)
!719 = distinct !DILexicalBlock(scope: !699, file: !3, line: 259, column: 14)
!720 = !DILocation(line: 259, column: 15, scope: !719)
!721 = !DILocation(line: 259, column: 14, scope: !699)
!722 = !DILocation(line: 260, column: 8, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !3, line: 260, column: 8)
!724 = distinct !DILexicalBlock(scope: !719, file: !3, line: 259, column: 44)
!725 = !DILocation(line: 260, column: 14, scope: !723)
!726 = !DILocation(line: 260, column: 8, scope: !724)
!727 = !DILocation(line: 261, column: 13, scope: !728)
!728 = distinct !DILexicalBlock(scope: !723, file: !3, line: 260, column: 19)
!729 = !DILocation(line: 261, column: 21, scope: !728)
!730 = !DILocation(line: 261, column: 5, scope: !728)
!731 = !DILocation(line: 262, column: 5, scope: !728)
!732 = !DILocation(line: 264, column: 25, scope: !724)
!733 = !DILocation(line: 264, column: 24, scope: !724)
!734 = !DILocation(line: 264, column: 4, scope: !724)
!735 = !DILocation(line: 265, column: 11, scope: !724)
!736 = !DILocation(line: 266, column: 11, scope: !724)
!737 = !DILocation(line: 267, column: 3, scope: !724)
!738 = !DILocation(line: 267, column: 26, scope: !739)
!739 = distinct !DILexicalBlock(scope: !719, file: !3, line: 267, column: 14)
!740 = !DILocation(line: 267, column: 14, scope: !739)
!741 = !DILocation(line: 267, column: 14, scope: !719)
!742 = !DILocation(line: 268, column: 24, scope: !743)
!743 = distinct !DILexicalBlock(scope: !739, file: !3, line: 267, column: 55)
!744 = !DILocation(line: 268, column: 4, scope: !743)
!745 = !DILocation(line: 269, column: 3, scope: !743)
!746 = !DILocation(line: 269, column: 22, scope: !747)
!747 = distinct !DILexicalBlock(scope: !739, file: !3, line: 269, column: 14)
!748 = !DILocation(line: 269, column: 15, scope: !747)
!749 = !DILocation(line: 269, column: 14, scope: !739)
!750 = !DILocation(line: 270, column: 4, scope: !751)
!751 = distinct !DILexicalBlock(scope: !747, file: !3, line: 269, column: 51)
!752 = !DILocation(line: 271, column: 8, scope: !753)
!753 = distinct !DILexicalBlock(scope: !751, file: !3, line: 271, column: 8)
!754 = !DILocation(line: 271, column: 8, scope: !751)
!755 = !DILocation(line: 272, column: 17, scope: !753)
!756 = !DILocation(line: 272, column: 5, scope: !753)
!757 = !DILocation(line: 273, column: 3, scope: !751)
!758 = !DILocation(line: 273, column: 22, scope: !759)
!759 = distinct !DILexicalBlock(scope: !747, file: !3, line: 273, column: 14)
!760 = !DILocation(line: 273, column: 15, scope: !759)
!761 = !DILocation(line: 273, column: 14, scope: !747)
!762 = !DILocation(line: 274, column: 4, scope: !763)
!763 = distinct !DILexicalBlock(scope: !759, file: !3, line: 273, column: 54)
!764 = !DILocation(line: 275, column: 8, scope: !765)
!765 = distinct !DILexicalBlock(scope: !763, file: !3, line: 275, column: 8)
!766 = !DILocation(line: 275, column: 8, scope: !763)
!767 = !DILocation(line: 276, column: 17, scope: !765)
!768 = !DILocation(line: 276, column: 5, scope: !765)
!769 = !DILocation(line: 277, column: 3, scope: !763)
!770 = !DILocation(line: 277, column: 22, scope: !771)
!771 = distinct !DILexicalBlock(scope: !759, file: !3, line: 277, column: 14)
!772 = !DILocation(line: 277, column: 15, scope: !771)
!773 = !DILocation(line: 277, column: 14, scope: !759)
!774 = !DILocation(line: 278, column: 4, scope: !775)
!775 = distinct !DILexicalBlock(scope: !771, file: !3, line: 277, column: 48)
!776 = !DILocation(line: 279, column: 8, scope: !777)
!777 = distinct !DILexicalBlock(scope: !775, file: !3, line: 279, column: 8)
!778 = !DILocation(line: 279, column: 8, scope: !775)
!779 = !DILocation(line: 280, column: 17, scope: !777)
!780 = !DILocation(line: 280, column: 5, scope: !777)
!781 = !DILocation(line: 281, column: 3, scope: !775)
!782 = !DILocation(line: 281, column: 22, scope: !783)
!783 = distinct !DILexicalBlock(scope: !771, file: !3, line: 281, column: 14)
!784 = !DILocation(line: 281, column: 15, scope: !783)
!785 = !DILocation(line: 281, column: 14, scope: !771)
!786 = !DILocation(line: 282, column: 4, scope: !787)
!787 = distinct !DILexicalBlock(scope: !783, file: !3, line: 281, column: 50)
!788 = !DILocation(line: 283, column: 8, scope: !789)
!789 = distinct !DILexicalBlock(scope: !787, file: !3, line: 283, column: 8)
!790 = !DILocation(line: 283, column: 8, scope: !787)
!791 = !DILocation(line: 284, column: 17, scope: !789)
!792 = !DILocation(line: 284, column: 5, scope: !789)
!793 = !DILocation(line: 285, column: 3, scope: !787)
!794 = !DILocation(line: 285, column: 22, scope: !795)
!795 = distinct !DILexicalBlock(scope: !783, file: !3, line: 285, column: 14)
!796 = !DILocation(line: 285, column: 15, scope: !795)
!797 = !DILocation(line: 285, column: 14, scope: !783)
!798 = !DILocation(line: 286, column: 4, scope: !799)
!799 = distinct !DILexicalBlock(scope: !795, file: !3, line: 285, column: 49)
!800 = !DILocation(line: 287, column: 8, scope: !801)
!801 = distinct !DILexicalBlock(scope: !799, file: !3, line: 287, column: 8)
!802 = !DILocation(line: 287, column: 8, scope: !799)
!803 = !DILocation(line: 288, column: 17, scope: !801)
!804 = !DILocation(line: 288, column: 5, scope: !801)
!805 = !DILocation(line: 289, column: 3, scope: !799)
!806 = !DILocation(line: 289, column: 22, scope: !807)
!807 = distinct !DILexicalBlock(scope: !795, file: !3, line: 289, column: 14)
!808 = !DILocation(line: 289, column: 15, scope: !807)
!809 = !DILocation(line: 289, column: 14, scope: !795)
!810 = !DILocation(line: 290, column: 4, scope: !811)
!811 = distinct !DILexicalBlock(scope: !807, file: !3, line: 289, column: 51)
!812 = !DILocation(line: 291, column: 8, scope: !813)
!813 = distinct !DILexicalBlock(scope: !811, file: !3, line: 291, column: 8)
!814 = !DILocation(line: 291, column: 8, scope: !811)
!815 = !DILocation(line: 292, column: 17, scope: !813)
!816 = !DILocation(line: 292, column: 5, scope: !813)
!817 = !DILocation(line: 293, column: 3, scope: !811)
!818 = !DILocation(line: 293, column: 22, scope: !819)
!819 = distinct !DILexicalBlock(scope: !807, file: !3, line: 293, column: 14)
!820 = !DILocation(line: 293, column: 15, scope: !819)
!821 = !DILocation(line: 293, column: 14, scope: !807)
!822 = !DILocation(line: 294, column: 11, scope: !823)
!823 = distinct !DILexicalBlock(scope: !819, file: !3, line: 293, column: 46)
!824 = !DILocation(line: 295, column: 11, scope: !823)
!825 = !DILocation(line: 296, column: 31, scope: !823)
!826 = !DILocation(line: 296, column: 48, scope: !823)
!827 = !DILocation(line: 296, column: 47, scope: !823)
!828 = !DILocation(line: 296, column: 4, scope: !823)
!829 = !DILocation(line: 297, column: 8, scope: !830)
!830 = distinct !DILexicalBlock(scope: !823, file: !3, line: 297, column: 8)
!831 = !DILocation(line: 297, column: 8, scope: !823)
!832 = !DILocation(line: 298, column: 17, scope: !830)
!833 = !DILocation(line: 298, column: 5, scope: !830)
!834 = !DILocation(line: 299, column: 3, scope: !823)
!835 = !DILocation(line: 299, column: 22, scope: !836)
!836 = distinct !DILexicalBlock(scope: !819, file: !3, line: 299, column: 14)
!837 = !DILocation(line: 299, column: 15, scope: !836)
!838 = !DILocation(line: 299, column: 14, scope: !819)
!839 = !DILocation(line: 300, column: 8, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 300, column: 8)
!841 = distinct !DILexicalBlock(scope: !836, file: !3, line: 299, column: 34)
!842 = !DILocation(line: 300, column: 14, scope: !840)
!843 = !DILocation(line: 300, column: 8, scope: !841)
!844 = !DILocation(line: 301, column: 13, scope: !845)
!845 = distinct !DILexicalBlock(scope: !840, file: !3, line: 300, column: 19)
!846 = !DILocation(line: 301, column: 21, scope: !845)
!847 = !DILocation(line: 301, column: 5, scope: !845)
!848 = !DILocation(line: 302, column: 5, scope: !845)
!849 = !DILocation(line: 304, column: 9, scope: !850)
!850 = distinct !DILexicalBlock(scope: !841, file: !3, line: 304, column: 8)
!851 = !DILocation(line: 304, column: 8, scope: !850)
!852 = !DILocation(line: 304, column: 8, scope: !841)
!853 = !DILocation(line: 305, column: 16, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !3, line: 305, column: 9)
!855 = distinct !DILexicalBlock(scope: !850, file: !3, line: 304, column: 23)
!856 = !DILocation(line: 305, column: 15, scope: !854)
!857 = !DILocation(line: 305, column: 9, scope: !854)
!858 = !DILocation(line: 305, column: 9, scope: !855)
!859 = !DILocation(line: 306, column: 42, scope: !854)
!860 = !DILocation(line: 306, column: 41, scope: !854)
!861 = !DILocation(line: 306, column: 6, scope: !854)
!862 = !DILocation(line: 307, column: 9, scope: !863)
!863 = distinct !DILexicalBlock(scope: !855, file: !3, line: 307, column: 9)
!864 = !DILocation(line: 307, column: 9, scope: !855)
!865 = !DILocation(line: 308, column: 18, scope: !863)
!866 = !DILocation(line: 308, column: 6, scope: !863)
!867 = !DILocation(line: 309, column: 4, scope: !855)
!868 = !DILocation(line: 310, column: 11, scope: !841)
!869 = !DILocation(line: 311, column: 11, scope: !841)
!870 = !DILocation(line: 312, column: 3, scope: !841)
!871 = !DILocation(line: 312, column: 26, scope: !872)
!872 = distinct !DILexicalBlock(scope: !836, file: !3, line: 312, column: 14)
!873 = !DILocation(line: 312, column: 14, scope: !872)
!874 = !DILocation(line: 312, column: 14, scope: !836)
!875 = !DILocation(line: 313, column: 4, scope: !876)
!876 = distinct !DILexicalBlock(scope: !872, file: !3, line: 312, column: 54)
!877 = !DILocation(line: 314, column: 16, scope: !878)
!878 = distinct !DILexicalBlock(scope: !876, file: !3, line: 314, column: 8)
!879 = !DILocation(line: 314, column: 9, scope: !878)
!880 = !DILocation(line: 314, column: 8, scope: !876)
!881 = !DILocalVariable(name: "list", scope: !882, file: !3, line: 315, type: !883)
!882 = distinct !DILexicalBlock(scope: !878, file: !3, line: 314, column: 34)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string_list", file: !884, line: 87, size: 320, elements: !885)
!884 = !DIFile(filename: "./string-list.h", directory: "/Users/jryans/Projects/git")
!885 = !{!886, !893, !894, !895, !896}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !883, file: !884, line: 88, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "string_list_item", file: !884, line: 68, size: 128, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !888, file: !884, line: 69, baseType: !5, size: 64)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "util", scope: !888, file: !884, line: 70, baseType: !892, size: 64, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !883, file: !884, line: 89, baseType: !138, size: 64, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !883, file: !884, line: 90, baseType: !138, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "strdup_strings", scope: !883, file: !884, line: 91, baseType: !33, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "cmp", scope: !883, file: !884, line: 92, baseType: !897, size: 64, offset: 256)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "compare_strings_fn", file: !884, line: 73, baseType: !898)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DISubroutineType(types: !900)
!900 = !{!19, !26, !26}
!901 = !DILocation(line: 315, column: 24, scope: !882)
!902 = !DILocation(line: 318, column: 5, scope: !882)
!903 = !DILocalVariable(name: "i", scope: !882, file: !3, line: 316, type: !19)
!904 = !DILocation(line: 0, scope: !882)
!905 = !DILocation(line: 319, column: 10, scope: !906)
!906 = distinct !DILexicalBlock(scope: !882, file: !3, line: 319, column: 5)
!907 = !DILocation(line: 0, scope: !906)
!908 = !DILocation(line: 319, column: 17, scope: !909)
!909 = distinct !DILexicalBlock(scope: !906, file: !3, line: 319, column: 5)
!910 = !DILocation(line: 319, column: 26, scope: !909)
!911 = !DILocation(line: 319, column: 19, scope: !909)
!912 = !DILocation(line: 319, column: 5, scope: !906)
!913 = !DILocation(line: 320, column: 25, scope: !909)
!914 = !DILocation(line: 320, column: 20, scope: !909)
!915 = !DILocation(line: 320, column: 34, scope: !909)
!916 = !DILocation(line: 320, column: 6, scope: !909)
!917 = !DILocation(line: 319, column: 31, scope: !909)
!918 = !DILocation(line: 319, column: 5, scope: !909)
!919 = distinct !{!919, !912, !920, !120}
!920 = !DILocation(line: 320, column: 40, scope: !906)
!921 = !DILocation(line: 321, column: 5, scope: !882)
!922 = !DILocation(line: 322, column: 5, scope: !882)
!923 = !DILocation(line: 324, column: 5, scope: !924)
!924 = distinct !DILexicalBlock(scope: !878, file: !3, line: 323, column: 11)
!925 = !DILocation(line: 327, column: 12, scope: !926)
!926 = distinct !DILexicalBlock(scope: !872, file: !3, line: 326, column: 10)
!927 = !DILocation(line: 327, column: 20, scope: !926)
!928 = !DILocation(line: 327, column: 47, scope: !926)
!929 = !DILocation(line: 327, column: 4, scope: !926)
!930 = !DILocation(line: 328, column: 4, scope: !926)
!931 = !DILocation(line: 331, column: 10, scope: !421)
!932 = !DILocation(line: 332, column: 10, scope: !421)
!933 = distinct !{!933, !417, !934, !120}
!934 = !DILocation(line: 333, column: 2, scope: !406)
!935 = !DILocation(line: 334, column: 10, scope: !406)
!936 = !DILocation(line: 334, column: 17, scope: !406)
!937 = !DILocation(line: 334, column: 9, scope: !406)
!938 = !DILocation(line: 334, column: 2, scope: !406)
!939 = distinct !DISubprogram(name: "run_argv", scope: !3, file: !3, line: 771, type: !940, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!940 = !DISubroutineType(types: !941)
!941 = !{!19, !410, !409}
!942 = !DILocalVariable(name: "argcp", arg: 1, scope: !939, file: !3, line: 771, type: !410)
!943 = !DILocation(line: 0, scope: !939)
!944 = !DILocalVariable(name: "argv", arg: 2, scope: !939, file: !3, line: 771, type: !409)
!945 = !DILocalVariable(name: "done_alias", scope: !939, file: !3, line: 773, type: !19)
!946 = !DILocalVariable(name: "cmd_list", scope: !939, file: !3, line: 774, type: !883)
!947 = !DILocation(line: 774, column: 21, scope: !939)
!948 = !DILocation(line: 777, column: 2, scope: !939)
!949 = !DILocation(line: 787, column: 8, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 787, column: 7)
!951 = distinct !DILexicalBlock(scope: !939, file: !3, line: 777, column: 12)
!952 = !DILocation(line: 787, column: 7, scope: !951)
!953 = !DILocation(line: 788, column: 19, scope: !950)
!954 = !DILocation(line: 788, column: 27, scope: !950)
!955 = !DILocation(line: 788, column: 4, scope: !950)
!956 = !DILocation(line: 789, column: 25, scope: !957)
!957 = distinct !DILexicalBlock(scope: !950, file: !3, line: 789, column: 12)
!958 = !DILocation(line: 789, column: 24, scope: !957)
!959 = !DILocation(line: 789, column: 12, scope: !957)
!960 = !DILocation(line: 789, column: 12, scope: !950)
!961 = !DILocalVariable(name: "cmd", scope: !962, file: !3, line: 790, type: !963)
!962 = distinct !DILexicalBlock(scope: !957, file: !3, line: 789, column: 33)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "child_process", file: !964, line: 44, size: 960, elements: !965)
!964 = !DIFile(filename: "./run-command.h", directory: "/Users/jryans/Projects/git")
!965 = !{!966, !967, !968, !974, !975, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !963, file: !964, line: 58, baseType: !341, size: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "env", scope: !963, file: !964, line: 76, baseType: !341, size: 192, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !963, file: !964, line: 77, baseType: !969, size: 32, offset: 384)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !970, line: 31, baseType: !971)
!970 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_pid_t.h", directory: "")
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_pid_t", file: !972, line: 72, baseType: !973)
!972 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h", directory: "")
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !141, line: 46, baseType: !19)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "trace2_child_id", scope: !963, file: !964, line: 79, baseType: !19, size: 32, offset: 416)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "trace2_child_us_start", scope: !963, file: !964, line: 80, baseType: !976, size: 64, offset: 448)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !977, line: 31, baseType: !978)
!977 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_uint64_t.h", directory: "")
!978 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "trace2_child_class", scope: !963, file: !964, line: 81, baseType: !26, size: 64, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "trace2_hook_name", scope: !963, file: !964, line: 82, baseType: !26, size: 64, offset: 576)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !963, file: !964, line: 102, baseType: !19, size: 32, offset: 640)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !963, file: !964, line: 103, baseType: !19, size: 32, offset: 672)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !963, file: !964, line: 104, baseType: !19, size: 32, offset: 704)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !963, file: !964, line: 110, baseType: !26, size: 64, offset: 768)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "no_stdin", scope: !963, file: !964, line: 112, baseType: !33, size: 1, offset: 832, flags: DIFlagBitField, extraData: i64 832)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "no_stdout", scope: !963, file: !964, line: 113, baseType: !33, size: 1, offset: 833, flags: DIFlagBitField, extraData: i64 832)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "no_stderr", scope: !963, file: !964, line: 114, baseType: !33, size: 1, offset: 834, flags: DIFlagBitField, extraData: i64 832)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "git_cmd", scope: !963, file: !964, line: 115, baseType: !33, size: 1, offset: 835, flags: DIFlagBitField, extraData: i64 832)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "silent_exec_failure", scope: !963, file: !964, line: 123, baseType: !33, size: 1, offset: 836, flags: DIFlagBitField, extraData: i64 832)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "use_shell", scope: !963, file: !964, line: 131, baseType: !33, size: 1, offset: 837, flags: DIFlagBitField, extraData: i64 832)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "close_object_store", scope: !963, file: !964, line: 139, baseType: !33, size: 1, offset: 838, flags: DIFlagBitField, extraData: i64 832)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "stdout_to_stderr", scope: !963, file: !964, line: 141, baseType: !33, size: 1, offset: 839, flags: DIFlagBitField, extraData: i64 832)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "clean_on_exit", scope: !963, file: !964, line: 142, baseType: !33, size: 1, offset: 840, flags: DIFlagBitField, extraData: i64 832)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "wait_after_clean", scope: !963, file: !964, line: 143, baseType: !33, size: 1, offset: 841, flags: DIFlagBitField, extraData: i64 832)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "clean_on_exit_handler", scope: !963, file: !964, line: 144, baseType: !996, size: 64, offset: 896)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{null, !999}
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!1000 = !DILocation(line: 790, column: 25, scope: !962)
!1001 = !DILocation(line: 800, column: 4, scope: !962)
!1002 = !DILocation(line: 802, column: 8, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !962, file: !3, line: 802, column: 8)
!1004 = !DILocation(line: 802, column: 8, scope: !962)
!1005 = !DILocation(line: 803, column: 47, scope: !1003)
!1006 = !DILocation(line: 803, column: 46, scope: !1003)
!1007 = !DILocation(line: 803, column: 5, scope: !1003)
!1008 = !DILocation(line: 805, column: 4, scope: !962)
!1009 = !DILocation(line: 807, column: 21, scope: !962)
!1010 = !DILocation(line: 807, column: 4, scope: !962)
!1011 = !DILocalVariable(name: "i", scope: !962, file: !3, line: 791, type: !19)
!1012 = !DILocation(line: 0, scope: !962)
!1013 = !DILocation(line: 808, column: 9, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !962, file: !3, line: 808, column: 4)
!1015 = !DILocation(line: 0, scope: !1014)
!1016 = !DILocation(line: 808, column: 20, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 808, column: 4)
!1018 = !DILocation(line: 808, column: 18, scope: !1017)
!1019 = !DILocation(line: 808, column: 4, scope: !1014)
!1020 = !DILocation(line: 809, column: 22, scope: !1017)
!1021 = !DILocation(line: 809, column: 29, scope: !1017)
!1022 = !DILocation(line: 809, column: 28, scope: !1017)
!1023 = !DILocation(line: 809, column: 5, scope: !1017)
!1024 = !DILocation(line: 808, column: 29, scope: !1017)
!1025 = !DILocation(line: 808, column: 4, scope: !1017)
!1026 = distinct !{!1026, !1019, !1027, !120}
!1027 = !DILocation(line: 809, column: 38, scope: !1014)
!1028 = !DILocation(line: 811, column: 4, scope: !962)
!1029 = !DILocation(line: 811, column: 4, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 811, column: 4)
!1031 = distinct !DILexicalBlock(scope: !962, file: !3, line: 811, column: 4)
!1032 = !DILocation(line: 811, column: 4, scope: !1031)
!1033 = !DILocation(line: 817, column: 8, scope: !962)
!1034 = !DILocation(line: 817, column: 28, scope: !962)
!1035 = !DILocation(line: 818, column: 8, scope: !962)
!1036 = !DILocation(line: 818, column: 22, scope: !962)
!1037 = !DILocation(line: 819, column: 8, scope: !962)
!1038 = !DILocation(line: 819, column: 25, scope: !962)
!1039 = !DILocation(line: 820, column: 8, scope: !962)
!1040 = !DILocation(line: 820, column: 27, scope: !962)
!1041 = !DILocation(line: 821, column: 8, scope: !962)
!1042 = !DILocation(line: 822, column: 10, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !962, file: !3, line: 822, column: 8)
!1044 = !DILocation(line: 822, column: 15, scope: !1043)
!1045 = !DILocation(line: 822, column: 18, scope: !1043)
!1046 = !DILocation(line: 822, column: 24, scope: !1043)
!1047 = !DILocation(line: 822, column: 8, scope: !962)
!1048 = !DILocation(line: 823, column: 5, scope: !1043)
!1049 = !DILocation(line: 824, column: 41, scope: !962)
!1050 = !DILocation(line: 824, column: 40, scope: !962)
!1051 = !DILocation(line: 824, column: 4, scope: !962)
!1052 = !DILocation(line: 828, column: 25, scope: !951)
!1053 = !DILocation(line: 828, column: 3, scope: !951)
!1054 = !DILocation(line: 830, column: 50, scope: !951)
!1055 = !DILocation(line: 830, column: 49, scope: !951)
!1056 = !DILocation(line: 830, column: 10, scope: !951)
!1057 = !DILocalVariable(name: "seen", scope: !939, file: !3, line: 775, type: !887)
!1058 = !DILocation(line: 831, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !951, file: !3, line: 831, column: 7)
!1060 = !DILocation(line: 831, column: 7, scope: !951)
!1061 = !DILocalVariable(name: "sb", scope: !1062, file: !3, line: 833, type: !1063)
!1062 = distinct !DILexicalBlock(scope: !1059, file: !3, line: 831, column: 13)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf", file: !1064, line: 66, size: 192, elements: !1065)
!1064 = !DIFile(filename: "./strbuf.h", directory: "/Users/jryans/Projects/git")
!1065 = !{!1066, !1067, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1063, file: !1064, line: 67, baseType: !138, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1063, file: !1064, line: 68, baseType: !138, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1063, file: !1064, line: 69, baseType: !5, size: 64, offset: 128)
!1069 = !DILocation(line: 833, column: 18, scope: !1062)
!1070 = !DILocalVariable(name: "i", scope: !1062, file: !3, line: 832, type: !19)
!1071 = !DILocation(line: 0, scope: !1062)
!1072 = !DILocation(line: 834, column: 9, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 834, column: 4)
!1074 = !DILocation(line: 0, scope: !1073)
!1075 = !DILocation(line: 834, column: 16, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1073, file: !3, line: 834, column: 4)
!1077 = !DILocation(line: 834, column: 29, scope: !1076)
!1078 = !DILocation(line: 834, column: 18, scope: !1076)
!1079 = !DILocation(line: 834, column: 4, scope: !1073)
!1080 = !DILocation(line: 835, column: 47, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 834, column: 38)
!1082 = !DILocation(line: 835, column: 38, scope: !1081)
!1083 = !DILocalVariable(name: "item", scope: !1081, file: !3, line: 835, type: !887)
!1084 = !DILocation(line: 0, scope: !1081)
!1085 = !DILocation(line: 837, column: 38, scope: !1081)
!1086 = !DILocation(line: 837, column: 5, scope: !1081)
!1087 = !DILocation(line: 838, column: 14, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 838, column: 9)
!1089 = !DILocation(line: 838, column: 9, scope: !1081)
!1090 = !DILocation(line: 839, column: 6, scope: !1088)
!1091 = !DILocation(line: 840, column: 14, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 840, column: 14)
!1093 = !DILocation(line: 840, column: 28, scope: !1092)
!1094 = !DILocation(line: 840, column: 31, scope: !1092)
!1095 = !DILocation(line: 840, column: 16, scope: !1092)
!1096 = !DILocation(line: 840, column: 14, scope: !1088)
!1097 = !DILocation(line: 841, column: 6, scope: !1092)
!1098 = !DILocation(line: 842, column: 4, scope: !1081)
!1099 = !DILocation(line: 834, column: 34, scope: !1076)
!1100 = !DILocation(line: 834, column: 4, scope: !1076)
!1101 = distinct !{!1101, !1079, !1102, !120}
!1102 = !DILocation(line: 842, column: 4, scope: !1073)
!1103 = !DILocation(line: 843, column: 8, scope: !1062)
!1104 = !DILocation(line: 844, column: 41, scope: !1062)
!1105 = !DILocation(line: 844, column: 32, scope: !1062)
!1106 = !DILocation(line: 844, column: 50, scope: !1062)
!1107 = !DILocation(line: 844, column: 61, scope: !1062)
!1108 = !DILocation(line: 843, column: 4, scope: !1062)
!1109 = !DILocation(line: 847, column: 34, scope: !951)
!1110 = !DILocation(line: 847, column: 33, scope: !951)
!1111 = !DILocation(line: 847, column: 3, scope: !951)
!1112 = !DILocation(line: 854, column: 8, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !951, file: !3, line: 854, column: 7)
!1114 = !DILocation(line: 854, column: 7, scope: !951)
!1115 = !DILocation(line: 855, column: 4, scope: !1113)
!1116 = distinct !{!1116, !948, !1117}
!1117 = !DILocation(line: 857, column: 2, scope: !939)
!1118 = !DILocation(line: 859, column: 2, scope: !939)
!1119 = !DILocation(line: 861, column: 2, scope: !939)
!1120 = distinct !DISubprogram(name: "trace_pass_fl", scope: !1121, file: !1121, line: 273, type: !1122, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!1121 = !DIFile(filename: "./trace.h", directory: "/Users/jryans/Projects/git")
!1122 = !DISubroutineType(types: !1123)
!1123 = !{!19, !1124}
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_key", file: !1121, line: 83, size: 128, elements: !1126)
!1126 = !{!1127, !1129, !1130, !1131}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1125, file: !1121, line: 84, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1125, file: !1121, line: 85, baseType: !19, size: 32, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1125, file: !1121, line: 86, baseType: !33, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "need_close", scope: !1125, file: !1121, line: 87, baseType: !33, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!1132 = !DILocalVariable(name: "key", arg: 1, scope: !1120, file: !1121, line: 273, type: !1124)
!1133 = !DILocation(line: 0, scope: !1120)
!1134 = !DILocation(line: 275, column: 14, scope: !1120)
!1135 = !DILocation(line: 275, column: 9, scope: !1120)
!1136 = !DILocation(line: 275, column: 17, scope: !1120)
!1137 = !DILocation(line: 275, column: 26, scope: !1120)
!1138 = !DILocation(line: 275, column: 20, scope: !1120)
!1139 = !DILocation(line: 275, column: 2, scope: !1120)
!1140 = distinct !DISubprogram(name: "execv_dashed_external", scope: !3, file: !3, line: 725, type: !1141, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !31}
!1143 = !DILocalVariable(name: "argv", arg: 1, scope: !1140, file: !3, line: 725, type: !31)
!1144 = !DILocation(line: 0, scope: !1140)
!1145 = !DILocalVariable(name: "cmd", scope: !1140, file: !3, line: 727, type: !963)
!1146 = !DILocation(line: 727, column: 23, scope: !1140)
!1147 = !DILocation(line: 730, column: 6, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 730, column: 6)
!1149 = !DILocation(line: 730, column: 6, scope: !1140)
!1150 = !DILocation(line: 731, column: 7, scope: !1148)
!1151 = !DILocation(line: 731, column: 47, scope: !1148)
!1152 = !DILocation(line: 731, column: 3, scope: !1148)
!1153 = !DILocation(line: 733, column: 6, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 733, column: 6)
!1155 = !DILocation(line: 733, column: 16, scope: !1154)
!1156 = !DILocation(line: 733, column: 22, scope: !1154)
!1157 = !DILocation(line: 733, column: 37, scope: !1154)
!1158 = !DILocation(line: 733, column: 26, scope: !1154)
!1159 = !DILocation(line: 733, column: 6, scope: !1140)
!1160 = !DILocation(line: 734, column: 34, scope: !1154)
!1161 = !DILocation(line: 734, column: 15, scope: !1154)
!1162 = !DILocation(line: 734, column: 13, scope: !1154)
!1163 = !DILocation(line: 734, column: 3, scope: !1154)
!1164 = !DILocation(line: 735, column: 2, scope: !1140)
!1165 = !DILocation(line: 737, column: 20, scope: !1140)
!1166 = !DILocation(line: 737, column: 36, scope: !1140)
!1167 = !DILocation(line: 737, column: 2, scope: !1140)
!1168 = !DILocation(line: 738, column: 20, scope: !1140)
!1169 = !DILocation(line: 738, column: 31, scope: !1140)
!1170 = !DILocation(line: 738, column: 2, scope: !1140)
!1171 = !DILocation(line: 739, column: 6, scope: !1140)
!1172 = !DILocation(line: 739, column: 20, scope: !1140)
!1173 = !DILocation(line: 740, column: 6, scope: !1140)
!1174 = !DILocation(line: 740, column: 23, scope: !1140)
!1175 = !DILocation(line: 741, column: 6, scope: !1140)
!1176 = !DILocation(line: 741, column: 26, scope: !1140)
!1177 = !DILocation(line: 742, column: 6, scope: !1140)
!1178 = !DILocation(line: 742, column: 25, scope: !1140)
!1179 = !DILocation(line: 744, column: 2, scope: !1140)
!1180 = !DILocation(line: 750, column: 2, scope: !1140)
!1181 = !DILocation(line: 750, column: 2, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !3, line: 750, column: 2)
!1183 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 750, column: 2)
!1184 = !DILocation(line: 750, column: 2, scope: !1183)
!1185 = !DILocation(line: 758, column: 11, scope: !1140)
!1186 = !DILocalVariable(name: "status", scope: !1140, file: !3, line: 728, type: !19)
!1187 = !DILocation(line: 765, column: 13, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 765, column: 6)
!1189 = !DILocation(line: 765, column: 6, scope: !1140)
!1190 = !DILocation(line: 766, column: 3, scope: !1188)
!1191 = !DILocation(line: 767, column: 11, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 767, column: 11)
!1193 = !DILocation(line: 767, column: 17, scope: !1192)
!1194 = !DILocation(line: 767, column: 11, scope: !1188)
!1195 = !DILocation(line: 768, column: 3, scope: !1192)
!1196 = !DILocation(line: 769, column: 1, scope: !1140)
!1197 = distinct !DISubprogram(name: "strbuf_addstr", scope: !1064, file: !1064, line: 303, type: !1198, scopeLine: 304, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!1198 = !DISubroutineType(types: !1199)
!1199 = !{null, !1200, !26}
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1201 = !DILocalVariable(name: "sb", arg: 1, scope: !1197, file: !1064, line: 303, type: !1200)
!1202 = !DILocation(line: 0, scope: !1197)
!1203 = !DILocalVariable(name: "s", arg: 2, scope: !1197, file: !1064, line: 303, type: !26)
!1204 = !DILocation(line: 305, column: 20, scope: !1197)
!1205 = !DILocation(line: 305, column: 2, scope: !1197)
!1206 = !DILocation(line: 306, column: 1, scope: !1197)
!1207 = distinct !DISubprogram(name: "handle_alias", scope: !3, file: !3, line: 337, type: !940, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!1208 = !DILocalVariable(name: "argcp", arg: 1, scope: !1207, file: !3, line: 337, type: !410)
!1209 = !DILocation(line: 0, scope: !1207)
!1210 = !DILocalVariable(name: "argv", arg: 2, scope: !1207, file: !3, line: 337, type: !409)
!1211 = !DILocalVariable(name: "envchanged", scope: !1207, file: !3, line: 339, type: !19)
!1212 = !DILocation(line: 339, column: 6, scope: !1207)
!1213 = !DILocalVariable(name: "ret", scope: !1207, file: !3, line: 339, type: !19)
!1214 = !DILocation(line: 339, column: 45, scope: !1207)
!1215 = !DILocalVariable(name: "saved_errno", scope: !1207, file: !3, line: 339, type: !19)
!1216 = !DILocalVariable(name: "count", scope: !1207, file: !3, line: 340, type: !19)
!1217 = !DILocation(line: 340, column: 6, scope: !1207)
!1218 = !DILocalVariable(name: "new_argv", scope: !1207, file: !3, line: 341, type: !31)
!1219 = !DILocation(line: 341, column: 15, scope: !1207)
!1220 = !DILocation(line: 345, column: 19, scope: !1207)
!1221 = !DILocation(line: 345, column: 18, scope: !1207)
!1222 = !DILocalVariable(name: "alias_command", scope: !1207, file: !3, line: 342, type: !26)
!1223 = !DILocation(line: 346, column: 17, scope: !1207)
!1224 = !DILocalVariable(name: "alias_string", scope: !1207, file: !3, line: 343, type: !5)
!1225 = !DILocation(line: 347, column: 6, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 347, column: 6)
!1227 = !DILocation(line: 347, column: 6, scope: !1207)
!1228 = !DILocation(line: 348, column: 7, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 348, column: 7)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 347, column: 20)
!1231 = !DILocation(line: 348, column: 14, scope: !1229)
!1232 = !DILocation(line: 348, column: 18, scope: !1229)
!1233 = !DILocation(line: 348, column: 30, scope: !1229)
!1234 = !DILocation(line: 348, column: 29, scope: !1229)
!1235 = !DILocation(line: 348, column: 22, scope: !1229)
!1236 = !DILocation(line: 348, column: 7, scope: !1230)
!1237 = !DILocation(line: 349, column: 15, scope: !1229)
!1238 = !DILocation(line: 349, column: 23, scope: !1229)
!1239 = !DILocation(line: 349, column: 4, scope: !1229)
!1240 = !DILocation(line: 351, column: 7, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 351, column: 7)
!1242 = !DILocation(line: 351, column: 23, scope: !1241)
!1243 = !DILocation(line: 351, column: 7, scope: !1230)
!1244 = !DILocalVariable(name: "child", scope: !1245, file: !3, line: 352, type: !963)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 351, column: 31)
!1246 = !DILocation(line: 352, column: 25, scope: !1245)
!1247 = !DILocalVariable(name: "nongit_ok", scope: !1245, file: !3, line: 353, type: !19)
!1248 = !DILocation(line: 353, column: 8, scope: !1245)
!1249 = !DILocation(line: 356, column: 4, scope: !1245)
!1250 = !DILocation(line: 358, column: 4, scope: !1245)
!1251 = !DILocation(line: 360, column: 10, scope: !1245)
!1252 = !DILocation(line: 360, column: 20, scope: !1245)
!1253 = !DILocation(line: 361, column: 10, scope: !1245)
!1254 = !DILocation(line: 361, column: 24, scope: !1245)
!1255 = !DILocation(line: 362, column: 10, scope: !1245)
!1256 = !DILocation(line: 362, column: 27, scope: !1245)
!1257 = !DILocation(line: 363, column: 10, scope: !1245)
!1258 = !DILocation(line: 363, column: 29, scope: !1245)
!1259 = !DILocation(line: 364, column: 23, scope: !1245)
!1260 = !DILocation(line: 364, column: 42, scope: !1245)
!1261 = !DILocation(line: 364, column: 4, scope: !1245)
!1262 = !DILocation(line: 365, column: 24, scope: !1245)
!1263 = !DILocation(line: 365, column: 31, scope: !1245)
!1264 = !DILocation(line: 365, column: 38, scope: !1245)
!1265 = !DILocation(line: 365, column: 4, scope: !1245)
!1266 = !DILocation(line: 367, column: 4, scope: !1245)
!1267 = !DILocation(line: 368, column: 4, scope: !1245)
!1268 = !DILocation(line: 369, column: 4, scope: !1245)
!1269 = !DILocation(line: 370, column: 4, scope: !1245)
!1270 = !DILocation(line: 372, column: 10, scope: !1245)
!1271 = !DILocation(line: 373, column: 12, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 373, column: 8)
!1273 = !DILocation(line: 373, column: 8, scope: !1245)
!1274 = !DILocation(line: 374, column: 5, scope: !1272)
!1275 = !DILocation(line: 376, column: 14, scope: !1245)
!1276 = !DILocation(line: 377, column: 35, scope: !1245)
!1277 = !DILocation(line: 376, column: 4, scope: !1245)
!1278 = !DILocation(line: 379, column: 11, scope: !1230)
!1279 = !DILocation(line: 379, column: 9, scope: !1230)
!1280 = !DILocation(line: 380, column: 7, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 380, column: 7)
!1282 = !DILocation(line: 380, column: 13, scope: !1281)
!1283 = !DILocation(line: 380, column: 7, scope: !1230)
!1284 = !DILocation(line: 381, column: 8, scope: !1281)
!1285 = !DILocation(line: 382, column: 33, scope: !1281)
!1286 = !DILocation(line: 382, column: 10, scope: !1281)
!1287 = !DILocation(line: 382, column: 8, scope: !1281)
!1288 = !DILocation(line: 381, column: 4, scope: !1281)
!1289 = !DILocation(line: 383, column: 18, scope: !1230)
!1290 = !DILocalVariable(name: "option_count", scope: !1207, file: !3, line: 340, type: !19)
!1291 = !DILocation(line: 384, column: 7, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 384, column: 7)
!1293 = !DILocation(line: 384, column: 7, scope: !1230)
!1294 = !DILocation(line: 385, column: 8, scope: !1292)
!1295 = !DILocation(line: 385, column: 4, scope: !1292)
!1296 = !DILocation(line: 388, column: 3, scope: !1230)
!1297 = !DILocation(line: 389, column: 12, scope: !1230)
!1298 = !DILocation(line: 391, column: 7, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 391, column: 7)
!1300 = !DILocation(line: 391, column: 13, scope: !1299)
!1301 = !DILocation(line: 391, column: 7, scope: !1230)
!1302 = !DILocation(line: 392, column: 8, scope: !1299)
!1303 = !DILocation(line: 392, column: 4, scope: !1299)
!1304 = !DILocation(line: 394, column: 30, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 394, column: 7)
!1306 = !DILocation(line: 394, column: 8, scope: !1305)
!1307 = !DILocation(line: 394, column: 7, scope: !1230)
!1308 = !DILocation(line: 395, column: 8, scope: !1305)
!1309 = !DILocation(line: 395, column: 4, scope: !1305)
!1310 = !DILocation(line: 397, column: 3, scope: !1230)
!1311 = !DILocation(line: 397, column: 3, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 397, column: 3)
!1313 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 397, column: 3)
!1314 = !DILocation(line: 397, column: 3, scope: !1313)
!1315 = !DILocation(line: 401, column: 3, scope: !1230)
!1316 = !DILocation(line: 403, column: 3, scope: !1230)
!1317 = !DILocation(line: 405, column: 3, scope: !1230)
!1318 = !DILocation(line: 406, column: 3, scope: !1230)
!1319 = !DILocation(line: 407, column: 3, scope: !1230)
!1320 = !DILocation(line: 409, column: 11, scope: !1230)
!1321 = !DILocation(line: 409, column: 9, scope: !1230)
!1322 = !DILocation(line: 410, column: 13, scope: !1230)
!1323 = !DILocation(line: 410, column: 19, scope: !1230)
!1324 = !DILocation(line: 410, column: 10, scope: !1230)
!1325 = !DILocation(line: 413, column: 2, scope: !1230)
!1326 = !DILocation(line: 415, column: 2, scope: !1207)
!1327 = !DILocation(line: 415, column: 8, scope: !1207)
!1328 = !DILocation(line: 417, column: 2, scope: !1207)
!1329 = distinct !DISubprogram(name: "move_array", scope: !182, file: !182, line: 1104, type: !1330, scopeLine: 1105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!1330 = !DISubroutineType(types: !1331)
!1331 = !{null, !892, !1332, !138, !138}
!1332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1333, size: 64)
!1333 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1334 = !DILocalVariable(name: "dst", arg: 1, scope: !1329, file: !182, line: 1104, type: !892)
!1335 = !DILocation(line: 0, scope: !1329)
!1336 = !DILocalVariable(name: "src", arg: 2, scope: !1329, file: !182, line: 1104, type: !1332)
!1337 = !DILocalVariable(name: "n", arg: 3, scope: !1329, file: !182, line: 1104, type: !138)
!1338 = !DILocalVariable(name: "size", arg: 4, scope: !1329, file: !182, line: 1104, type: !138)
!1339 = !DILocation(line: 1106, column: 6, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1329, file: !182, line: 1106, column: 6)
!1341 = !DILocation(line: 1106, column: 6, scope: !1329)
!1342 = !DILocation(line: 1107, column: 3, scope: !1340)
!1343 = !DILocation(line: 1108, column: 1, scope: !1329)
!1344 = distinct !DISubprogram(name: "st_mult", scope: !182, file: !182, line: 990, type: !1345, scopeLine: 991, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!1345 = !DISubroutineType(types: !1346)
!1346 = !{!138, !138, !138}
!1347 = !DILocalVariable(name: "a", arg: 1, scope: !1344, file: !182, line: 990, type: !138)
!1348 = !DILocation(line: 0, scope: !1344)
!1349 = !DILocalVariable(name: "b", arg: 2, scope: !1344, file: !182, line: 990, type: !138)
!1350 = !DILocation(line: 992, column: 6, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1344, file: !182, line: 992, column: 6)
!1352 = !DILocation(line: 992, column: 6, scope: !1344)
!1353 = !DILocation(line: 993, column: 3, scope: !1351)
!1354 = !DILocation(line: 995, column: 11, scope: !1344)
!1355 = !DILocation(line: 995, column: 2, scope: !1344)
!1356 = distinct !DISubprogram(name: "copy_array", scope: !182, file: !182, line: 1096, type: !1330, scopeLine: 1097, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!1357 = !DILocalVariable(name: "dst", arg: 1, scope: !1356, file: !182, line: 1096, type: !892)
!1358 = !DILocation(line: 0, scope: !1356)
!1359 = !DILocalVariable(name: "src", arg: 2, scope: !1356, file: !182, line: 1096, type: !1332)
!1360 = !DILocalVariable(name: "n", arg: 3, scope: !1356, file: !182, line: 1096, type: !138)
!1361 = !DILocalVariable(name: "size", arg: 4, scope: !1356, file: !182, line: 1096, type: !138)
!1362 = !DILocation(line: 1098, column: 6, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1356, file: !182, line: 1098, column: 6)
!1364 = !DILocation(line: 1098, column: 6, scope: !1356)
!1365 = !DILocation(line: 1099, column: 3, scope: !1363)
!1366 = !DILocation(line: 1100, column: 1, scope: !1356)
!1367 = distinct !DISubprogram(name: "list_builtins", scope: !3, file: !3, line: 651, type: !1368, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!1368 = !DISubroutineType(types: !1369)
!1369 = !{null, !1370, !33}
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!1371 = !DILocalVariable(name: "out", arg: 1, scope: !1367, file: !3, line: 651, type: !1370)
!1372 = !DILocation(line: 0, scope: !1367)
!1373 = !DILocalVariable(name: "exclude_option", arg: 2, scope: !1367, file: !3, line: 651, type: !33)
!1374 = !DILocalVariable(name: "i", scope: !1367, file: !3, line: 653, type: !19)
!1375 = !DILocation(line: 654, column: 7, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 654, column: 2)
!1377 = !DILocation(line: 0, scope: !1376)
!1378 = !DILocation(line: 654, column: 14, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1376, file: !3, line: 654, column: 2)
!1380 = !DILocation(line: 654, column: 16, scope: !1379)
!1381 = !DILocation(line: 654, column: 2, scope: !1376)
!1382 = !DILocation(line: 655, column: 7, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 655, column: 7)
!1384 = distinct !DILexicalBlock(scope: !1379, file: !3, line: 654, column: 45)
!1385 = !DILocation(line: 655, column: 22, scope: !1383)
!1386 = !DILocation(line: 656, column: 8, scope: !1383)
!1387 = !DILocation(line: 656, column: 20, scope: !1383)
!1388 = !DILocation(line: 656, column: 27, scope: !1383)
!1389 = !DILocation(line: 655, column: 7, scope: !1384)
!1390 = !DILocation(line: 657, column: 4, scope: !1383)
!1391 = !DILocation(line: 658, column: 27, scope: !1384)
!1392 = !DILocation(line: 658, column: 39, scope: !1384)
!1393 = !DILocation(line: 658, column: 3, scope: !1384)
!1394 = !DILocation(line: 659, column: 2, scope: !1384)
!1395 = !DILocation(line: 654, column: 41, scope: !1379)
!1396 = !DILocation(line: 654, column: 2, scope: !1379)
!1397 = distinct !{!1397, !1381, !1398, !120}
!1398 = !DILocation(line: 659, column: 2, scope: !1376)
!1399 = !DILocation(line: 660, column: 1, scope: !1367)
!1400 = distinct !DISubprogram(name: "list_cmds", scope: !3, file: !3, line: 64, type: !84, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!1401 = !DILocalVariable(name: "spec", arg: 1, scope: !1400, file: !3, line: 64, type: !26)
!1402 = !DILocation(line: 0, scope: !1400)
!1403 = !DILocalVariable(name: "list", scope: !1400, file: !3, line: 66, type: !883)
!1404 = !DILocation(line: 66, column: 21, scope: !1400)
!1405 = !DILocalVariable(name: "nongit", scope: !1400, file: !3, line: 68, type: !19)
!1406 = !DILocation(line: 68, column: 6, scope: !1400)
!1407 = !DILocation(line: 74, column: 2, scope: !1400)
!1408 = !DILocation(line: 76, column: 2, scope: !1400)
!1409 = !DILocation(line: 76, column: 9, scope: !1400)
!1410 = !DILocation(line: 77, column: 21, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 76, column: 16)
!1412 = !DILocalVariable(name: "sep", scope: !1411, file: !3, line: 77, type: !26)
!1413 = !DILocation(line: 0, scope: !1411)
!1414 = !DILocation(line: 78, column: 17, scope: !1411)
!1415 = !DILocation(line: 78, column: 13, scope: !1411)
!1416 = !DILocalVariable(name: "len", scope: !1411, file: !3, line: 78, type: !19)
!1417 = !DILocation(line: 80, column: 7, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 80, column: 7)
!1419 = !DILocation(line: 80, column: 7, scope: !1411)
!1420 = !DILocation(line: 81, column: 4, scope: !1418)
!1421 = !DILocation(line: 82, column: 12, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 82, column: 12)
!1423 = !DILocation(line: 82, column: 12, scope: !1418)
!1424 = !DILocation(line: 83, column: 4, scope: !1422)
!1425 = !DILocation(line: 84, column: 12, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 84, column: 12)
!1427 = !DILocation(line: 84, column: 12, scope: !1422)
!1428 = !DILocation(line: 85, column: 4, scope: !1426)
!1429 = !DILocation(line: 86, column: 12, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 86, column: 12)
!1431 = !DILocation(line: 86, column: 12, scope: !1426)
!1432 = !DILocation(line: 87, column: 4, scope: !1430)
!1433 = !DILocation(line: 88, column: 12, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 88, column: 12)
!1435 = !DILocation(line: 88, column: 12, scope: !1430)
!1436 = !DILocation(line: 89, column: 4, scope: !1434)
!1437 = !DILocation(line: 90, column: 12, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 90, column: 12)
!1439 = !DILocation(line: 90, column: 12, scope: !1434)
!1440 = !DILocation(line: 91, column: 4, scope: !1438)
!1441 = !DILocation(line: 92, column: 16, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1438, file: !3, line: 92, column: 12)
!1443 = !DILocation(line: 92, column: 20, scope: !1442)
!1444 = !DILocation(line: 92, column: 24, scope: !1442)
!1445 = !DILocation(line: 92, column: 12, scope: !1438)
!1446 = !DILocalVariable(name: "sb", scope: !1447, file: !3, line: 93, type: !1063)
!1447 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 92, column: 51)
!1448 = !DILocation(line: 93, column: 18, scope: !1447)
!1449 = !DILocation(line: 95, column: 25, scope: !1447)
!1450 = !DILocation(line: 95, column: 34, scope: !1447)
!1451 = !DILocation(line: 95, column: 30, scope: !1447)
!1452 = !DILocation(line: 95, column: 4, scope: !1447)
!1453 = !DILocation(line: 96, column: 36, scope: !1447)
!1454 = !DILocation(line: 96, column: 4, scope: !1447)
!1455 = !DILocation(line: 97, column: 4, scope: !1447)
!1456 = !DILocation(line: 98, column: 3, scope: !1447)
!1457 = !DILocation(line: 100, column: 8, scope: !1442)
!1458 = !DILocation(line: 100, column: 4, scope: !1442)
!1459 = !DILocation(line: 101, column: 8, scope: !1411)
!1460 = !DILocation(line: 102, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 102, column: 7)
!1462 = !DILocation(line: 102, column: 13, scope: !1461)
!1463 = !DILocation(line: 102, column: 7, scope: !1411)
!1464 = !DILocation(line: 103, column: 8, scope: !1461)
!1465 = !DILocation(line: 103, column: 4, scope: !1461)
!1466 = distinct !{!1466, !1408, !1467, !120}
!1467 = !DILocation(line: 104, column: 2, scope: !1400)
!1468 = !DILocalVariable(name: "i", scope: !1400, file: !3, line: 67, type: !19)
!1469 = !DILocation(line: 105, column: 7, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 105, column: 2)
!1471 = !DILocation(line: 0, scope: !1470)
!1472 = !DILocation(line: 105, column: 14, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1470, file: !3, line: 105, column: 2)
!1474 = !DILocation(line: 105, column: 23, scope: !1473)
!1475 = !DILocation(line: 105, column: 16, scope: !1473)
!1476 = !DILocation(line: 105, column: 2, scope: !1470)
!1477 = !DILocation(line: 106, column: 13, scope: !1473)
!1478 = !DILocation(line: 106, column: 8, scope: !1473)
!1479 = !DILocation(line: 106, column: 22, scope: !1473)
!1480 = !DILocation(line: 106, column: 3, scope: !1473)
!1481 = !DILocation(line: 105, column: 28, scope: !1473)
!1482 = !DILocation(line: 105, column: 2, scope: !1473)
!1483 = distinct !{!1483, !1476, !1484, !120}
!1484 = !DILocation(line: 106, column: 28, scope: !1470)
!1485 = !DILocation(line: 107, column: 2, scope: !1400)
!1486 = !DILocation(line: 108, column: 2, scope: !1400)
!1487 = distinct !DISubprogram(name: "gitstrchrnul", scope: !182, file: !182, line: 959, type: !1488, scopeLine: 960, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!5, !26, !19}
!1490 = !DILocalVariable(name: "s", arg: 1, scope: !1487, file: !182, line: 959, type: !26)
!1491 = !DILocation(line: 0, scope: !1487)
!1492 = !DILocalVariable(name: "c", arg: 2, scope: !1487, file: !182, line: 959, type: !19)
!1493 = !DILocation(line: 961, column: 2, scope: !1487)
!1494 = !DILocation(line: 961, column: 9, scope: !1487)
!1495 = !DILocation(line: 961, column: 12, scope: !1487)
!1496 = !DILocation(line: 961, column: 15, scope: !1487)
!1497 = !DILocation(line: 961, column: 18, scope: !1487)
!1498 = !DILocation(line: 962, column: 4, scope: !1487)
!1499 = distinct !{!1499, !1493, !1498, !120}
!1500 = !DILocation(line: 963, column: 2, scope: !1487)
!1501 = distinct !DISubprogram(name: "match_token", scope: !3, file: !3, line: 57, type: !1502, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!19, !26, !19, !26}
!1504 = !DILocalVariable(name: "spec", arg: 1, scope: !1501, file: !3, line: 57, type: !26)
!1505 = !DILocation(line: 0, scope: !1501)
!1506 = !DILocalVariable(name: "len", arg: 2, scope: !1501, file: !3, line: 57, type: !19)
!1507 = !DILocalVariable(name: "token", arg: 3, scope: !1501, file: !3, line: 57, type: !26)
!1508 = !DILocation(line: 59, column: 18, scope: !1501)
!1509 = !DILocalVariable(name: "token_len", scope: !1501, file: !3, line: 59, type: !19)
!1510 = !DILocation(line: 61, column: 13, scope: !1501)
!1511 = !DILocation(line: 61, column: 26, scope: !1501)
!1512 = !DILocation(line: 61, column: 51, scope: !1501)
!1513 = !DILocation(line: 61, column: 30, scope: !1501)
!1514 = !DILocation(line: 61, column: 29, scope: !1501)
!1515 = !DILocation(line: 61, column: 2, scope: !1501)
!1516 = distinct !DISubprogram(name: "exclude_helpers_from_list", scope: !3, file: !3, line: 45, type: !1517, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{null, !1370}
!1519 = !DILocalVariable(name: "list", arg: 1, scope: !1516, file: !3, line: 45, type: !1370)
!1520 = !DILocation(line: 0, scope: !1516)
!1521 = !DILocalVariable(name: "i", scope: !1516, file: !3, line: 47, type: !19)
!1522 = !DILocation(line: 49, column: 2, scope: !1516)
!1523 = !DILocation(line: 47, column: 6, scope: !1516)
!1524 = !DILocation(line: 49, column: 9, scope: !1516)
!1525 = !DILocation(line: 49, column: 19, scope: !1516)
!1526 = !DILocation(line: 49, column: 11, scope: !1516)
!1527 = !DILocation(line: 50, column: 20, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 50, column: 7)
!1529 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 49, column: 23)
!1530 = !DILocation(line: 50, column: 14, scope: !1528)
!1531 = !DILocation(line: 50, column: 29, scope: !1528)
!1532 = !DILocation(line: 50, column: 7, scope: !1528)
!1533 = !DILocation(line: 50, column: 7, scope: !1529)
!1534 = !DILocation(line: 51, column: 4, scope: !1528)
!1535 = !DILocation(line: 53, column: 5, scope: !1528)
!1536 = distinct !{!1536, !1522, !1537, !120}
!1537 = !DILocation(line: 54, column: 2, scope: !1516)
!1538 = !DILocation(line: 55, column: 1, scope: !1516)
!1539 = distinct !DISubprogram(name: "run_builtin", scope: !3, file: !3, line: 420, type: !1540, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !50)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!19, !95, !19, !31}
!1542 = !DILocalVariable(name: "p", arg: 1, scope: !1539, file: !3, line: 420, type: !95)
!1543 = !DILocation(line: 0, scope: !1539)
!1544 = !DILocalVariable(name: "argc", arg: 2, scope: !1539, file: !3, line: 420, type: !19)
!1545 = !DILocalVariable(name: "argv", arg: 3, scope: !1539, file: !3, line: 420, type: !31)
!1546 = !DILocalVariable(name: "st", scope: !1539, file: !3, line: 423, type: !1547)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1548, line: 182, size: 1152, elements: !1549)
!1548 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/stat.h", directory: "")
!1549 = !{!1550, !1554, !1560, !1563, !1566, !1571, !1575, !1576, !1584, !1585, !1586, !1587, !1593, !1597, !1601, !1602, !1603, !1604}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1547, file: !1548, line: 182, baseType: !1551, size: 32)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !1552, line: 31, baseType: !1553)
!1552 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_dev_t.h", directory: "")
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_dev_t", file: !972, line: 57, baseType: !973)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1547, file: !1548, line: 182, baseType: !1555, size: 16, offset: 32)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "mode_t", file: !1556, line: 31, baseType: !1557)
!1556 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mode_t.h", directory: "")
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_mode_t", file: !972, line: 70, baseType: !1558)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !141, line: 45, baseType: !1559)
!1559 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1547, file: !1548, line: 182, baseType: !1561, size: 16, offset: 48)
!1561 = !DIDerivedType(tag: DW_TAG_typedef, name: "nlink_t", file: !1562, line: 31, baseType: !1558)
!1562 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_nlink_t.h", directory: "")
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1547, file: !1548, line: 182, baseType: !1564, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ino64_t", file: !972, line: 62, baseType: !1565)
!1565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !141, line: 49, baseType: !978)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1547, file: !1548, line: 182, baseType: !1567, size: 32, offset: 128)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !1568, line: 31, baseType: !1569)
!1568 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uid_t.h", directory: "")
!1569 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_uid_t", file: !972, line: 75, baseType: !1570)
!1570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !141, line: 47, baseType: !33)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1547, file: !1548, line: 182, baseType: !1572, size: 32, offset: 160)
!1572 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !1573, line: 31, baseType: !1574)
!1573 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_gid_t.h", directory: "")
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_gid_t", file: !972, line: 60, baseType: !1570)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1547, file: !1548, line: 182, baseType: !1551, size: 32, offset: 192)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "st_atimespec", scope: !1547, file: !1548, line: 182, baseType: !1577, size: 128, offset: 256)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1578, line: 33, size: 128, elements: !1579)
!1578 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_timespec.h", directory: "")
!1579 = !{!1580, !1583}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1577, file: !1578, line: 35, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !141, line: 122, baseType: !1582)
!1582 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1577, file: !1578, line: 36, baseType: !1582, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtimespec", scope: !1547, file: !1548, line: 182, baseType: !1577, size: 128, offset: 384)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctimespec", scope: !1547, file: !1548, line: 182, baseType: !1577, size: 128, offset: 512)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "st_birthtimespec", scope: !1547, file: !1548, line: 182, baseType: !1577, size: 128, offset: 640)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1547, file: !1548, line: 182, baseType: !1588, size: 64, offset: 768)
!1588 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !1589, line: 31, baseType: !1590)
!1589 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_off_t.h", directory: "")
!1590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !972, line: 71, baseType: !1591)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !141, line: 48, baseType: !1592)
!1592 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1547, file: !1548, line: 182, baseType: !1594, size: 64, offset: 832)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "blkcnt_t", file: !1595, line: 31, baseType: !1596)
!1595 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blkcnt_t.h", directory: "")
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blkcnt_t", file: !972, line: 55, baseType: !1591)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1547, file: !1548, line: 182, baseType: !1598, size: 32, offset: 896)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "blksize_t", file: !1599, line: 31, baseType: !1600)
!1599 = !DIFile(filename: "/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_blksize_t.h", directory: "")
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_blksize_t", file: !972, line: 56, baseType: !973)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "st_flags", scope: !1547, file: !1548, line: 182, baseType: !1570, size: 32, offset: 928)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "st_gen", scope: !1547, file: !1548, line: 182, baseType: !1570, size: 32, offset: 960)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "st_lspare", scope: !1547, file: !1548, line: 182, baseType: !973, size: 32, offset: 992)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "st_qspare", scope: !1547, file: !1548, line: 182, baseType: !1605, size: 128, offset: 1024)
!1605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1591, size: 128, elements: !1606)
!1606 = !{!1607}
!1607 = !DISubrange(count: 2)
!1608 = !DILocation(line: 423, column: 14, scope: !1539)
!1609 = !DILocation(line: 425, column: 22, scope: !1539)
!1610 = !DILocation(line: 425, column: 29, scope: !1539)
!1611 = !DILocalVariable(name: "run_setup", scope: !1539, file: !3, line: 425, type: !19)
!1612 = !DILocation(line: 427, column: 14, scope: !1539)
!1613 = !DILocation(line: 427, column: 19, scope: !1539)
!1614 = !DILocation(line: 427, column: 30, scope: !1539)
!1615 = !DILocation(line: 427, column: 23, scope: !1539)
!1616 = !DILocation(line: 427, column: 22, scope: !1539)
!1617 = !DILocalVariable(name: "help", scope: !1539, file: !3, line: 422, type: !19)
!1618 = !DILocation(line: 428, column: 6, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 428, column: 6)
!1620 = !DILocation(line: 428, column: 11, scope: !1619)
!1621 = !DILocation(line: 428, column: 25, scope: !1619)
!1622 = !DILocation(line: 428, column: 6, scope: !1539)
!1623 = !DILocation(line: 430, column: 3, scope: !1619)
!1624 = !DILocation(line: 432, column: 16, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 432, column: 6)
!1626 = !DILocation(line: 432, column: 6, scope: !1539)
!1627 = !DILocation(line: 433, column: 12, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 432, column: 29)
!1629 = !DILocalVariable(name: "prefix", scope: !1539, file: !3, line: 424, type: !26)
!1630 = !DILocation(line: 434, column: 2, scope: !1628)
!1631 = !DILocation(line: 434, column: 23, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 434, column: 13)
!1633 = !DILocation(line: 434, column: 13, scope: !1625)
!1634 = !DILocalVariable(name: "nongit_ok", scope: !1635, file: !3, line: 435, type: !19)
!1635 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 434, column: 43)
!1636 = !DILocation(line: 435, column: 7, scope: !1635)
!1637 = !DILocation(line: 436, column: 12, scope: !1635)
!1638 = !DILocation(line: 437, column: 2, scope: !1635)
!1639 = !DILocation(line: 0, scope: !1632)
!1640 = !DILocation(line: 0, scope: !1625)
!1641 = !DILocation(line: 440, column: 2, scope: !1539)
!1642 = !DILocation(line: 441, column: 2, scope: !1539)
!1643 = !DILocation(line: 442, column: 6, scope: !1644)
!1644 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 442, column: 6)
!1645 = !DILocation(line: 442, column: 16, scope: !1644)
!1646 = !DILocation(line: 442, column: 22, scope: !1644)
!1647 = !DILocation(line: 442, column: 25, scope: !1644)
!1648 = !DILocation(line: 442, column: 35, scope: !1644)
!1649 = !DILocation(line: 443, column: 8, scope: !1644)
!1650 = !DILocation(line: 443, column: 15, scope: !1644)
!1651 = !DILocation(line: 442, column: 6, scope: !1539)
!1652 = !DILocation(line: 444, column: 37, scope: !1644)
!1653 = !DILocation(line: 444, column: 15, scope: !1644)
!1654 = !DILocation(line: 444, column: 13, scope: !1644)
!1655 = !DILocation(line: 444, column: 3, scope: !1644)
!1656 = !DILocation(line: 445, column: 6, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 445, column: 6)
!1658 = !DILocation(line: 445, column: 16, scope: !1657)
!1659 = !DILocation(line: 445, column: 22, scope: !1657)
!1660 = !DILocation(line: 445, column: 28, scope: !1657)
!1661 = !DILocation(line: 445, column: 35, scope: !1657)
!1662 = !DILocation(line: 445, column: 6, scope: !1539)
!1663 = !DILocation(line: 446, column: 13, scope: !1657)
!1664 = !DILocation(line: 446, column: 3, scope: !1657)
!1665 = !DILocation(line: 447, column: 6, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 447, column: 6)
!1667 = !DILocation(line: 447, column: 16, scope: !1666)
!1668 = !DILocation(line: 447, column: 19, scope: !1666)
!1669 = !DILocation(line: 447, column: 33, scope: !1666)
!1670 = !DILocation(line: 447, column: 6, scope: !1539)
!1671 = !DILocation(line: 449, column: 3, scope: !1666)
!1672 = !DILocation(line: 450, column: 2, scope: !1539)
!1673 = !DILocation(line: 452, column: 7, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 452, column: 6)
!1675 = !DILocation(line: 452, column: 12, scope: !1674)
!1676 = !DILocation(line: 452, column: 15, scope: !1674)
!1677 = !DILocation(line: 452, column: 6, scope: !1539)
!1678 = !DILocation(line: 453, column: 12, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1680, file: !3, line: 453, column: 7)
!1680 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 452, column: 35)
!1681 = !DILocation(line: 453, column: 19, scope: !1679)
!1682 = !DILocation(line: 453, column: 7, scope: !1680)
!1683 = !DILocation(line: 454, column: 8, scope: !1679)
!1684 = !DILocation(line: 454, column: 51, scope: !1679)
!1685 = !DILocation(line: 454, column: 4, scope: !1679)
!1686 = !DILocation(line: 455, column: 2, scope: !1680)
!1687 = !DILocation(line: 457, column: 7, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 457, column: 6)
!1689 = !DILocation(line: 457, column: 12, scope: !1688)
!1690 = !DILocation(line: 457, column: 18, scope: !1688)
!1691 = !DILocation(line: 457, column: 25, scope: !1688)
!1692 = !DILocation(line: 457, column: 6, scope: !1539)
!1693 = !DILocation(line: 458, column: 3, scope: !1688)
!1694 = !DILocation(line: 460, column: 2, scope: !1539)
!1695 = !DILocation(line: 460, column: 2, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !3, line: 460, column: 2)
!1697 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 460, column: 2)
!1698 = !DILocation(line: 460, column: 2, scope: !1697)
!1699 = !DILocation(line: 461, column: 2, scope: !1539)
!1700 = !DILocation(line: 462, column: 2, scope: !1539)
!1701 = !DILocation(line: 463, column: 2, scope: !1539)
!1702 = !DILocation(line: 465, column: 25, scope: !1539)
!1703 = !DILocation(line: 465, column: 41, scope: !1539)
!1704 = !DILocation(line: 465, column: 2, scope: !1539)
!1705 = !DILocation(line: 466, column: 14, scope: !1539)
!1706 = !DILocation(line: 466, column: 11, scope: !1539)
!1707 = !DILocalVariable(name: "status", scope: !1539, file: !3, line: 422, type: !19)
!1708 = !DILocation(line: 467, column: 25, scope: !1539)
!1709 = !DILocation(line: 467, column: 41, scope: !1539)
!1710 = !DILocation(line: 467, column: 2, scope: !1539)
!1711 = !DILocation(line: 469, column: 6, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 469, column: 6)
!1713 = !DILocation(line: 469, column: 6, scope: !1539)
!1714 = !DILocation(line: 470, column: 3, scope: !1712)
!1715 = !DILocation(line: 473, column: 19, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 473, column: 6)
!1717 = !DILocation(line: 473, column: 12, scope: !1716)
!1718 = !DILocation(line: 473, column: 6, scope: !1716)
!1719 = !DILocation(line: 473, column: 6, scope: !1539)
!1720 = !DILocation(line: 474, column: 3, scope: !1716)
!1721 = !DILocation(line: 476, column: 6, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 476, column: 6)
!1723 = !DILocation(line: 476, column: 27, scope: !1722)
!1724 = !DILocation(line: 476, column: 30, scope: !1722)
!1725 = !DILocation(line: 476, column: 6, scope: !1539)
!1726 = !DILocation(line: 477, column: 3, scope: !1722)
!1727 = !DILocation(line: 480, column: 13, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 480, column: 6)
!1729 = !DILocation(line: 480, column: 6, scope: !1728)
!1730 = !DILocation(line: 480, column: 6, scope: !1539)
!1731 = !DILocation(line: 481, column: 13, scope: !1728)
!1732 = !DILocation(line: 481, column: 3, scope: !1728)
!1733 = !DILocation(line: 482, column: 13, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 482, column: 6)
!1735 = !DILocation(line: 482, column: 6, scope: !1734)
!1736 = !DILocation(line: 482, column: 6, scope: !1539)
!1737 = !DILocation(line: 483, column: 7, scope: !1734)
!1738 = !DILocation(line: 483, column: 3, scope: !1734)
!1739 = !DILocation(line: 484, column: 13, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 484, column: 6)
!1741 = !DILocation(line: 484, column: 6, scope: !1740)
!1742 = !DILocation(line: 484, column: 6, scope: !1539)
!1743 = !DILocation(line: 485, column: 13, scope: !1740)
!1744 = !DILocation(line: 485, column: 3, scope: !1740)
!1745 = !DILocation(line: 486, column: 2, scope: !1539)
!1746 = !DILocation(line: 487, column: 1, scope: !1539)
