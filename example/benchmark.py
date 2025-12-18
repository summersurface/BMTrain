import bmtrain as bmt
import bmtrain.benchmark as benchmark

def main():
    bmt.init_distributed()
    bmt.print_rank("======= All Gather =======")
    benchmark.all_gather()
    bmt.print_rank("===== Reduce Scatter =====")
    benchmark.reduce_scatter()
    

if __name__ == '__main__':
    main()
