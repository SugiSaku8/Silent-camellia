
#include <stdint.h>

#ifndef __UC64_CSP_H__
#define __UC64_CSP_H__

uint64_t volatile * const uc64_csp_mtime    ;
uint64_t volatile * const uc64_csp_mtimecmp ;

inline uint64_t uc64_csp_rd_mtime() {
    return uc64_csp_mtime[0];
}

inline uint64_t uc64_csp_rd_mtimecmp() {
    return uc64_csp_mtimecmp[0];
}

inline void uc64_csp_wr_mtime(uint64_t new_value) {
    uc64_csp_mtime[0] = new_value;
}

inline void uc64_csp_wr_mtimecmp(uint64_t new_value) {
    uc64_csp_mtimecmp[0] = new_value;
}

inline          void     uc64_csp_wfi() {
    asm volatile("wfi");
}

#endif

