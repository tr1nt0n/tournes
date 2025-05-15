import random
import math


def form_percolation(p, number_of_frames, number_of_materials=5, seed=1):
    chart = open(r"percolation_form.txt", "w")
    for _ in range(0, number_of_frames):
        print(f"Frame {_}", file=chart)
        # seed_counter = seed
        for _ in range(0, number_of_materials):
            print(f"Material {_}", file=chart)
            # random.seed(seed_counter)
            random_float = random.random()

            if random_float <= p:
                print("1", file=chart)
            else:
                print("0", file=chart)

            # seed_counter += 1
        print("_______________________________", file=chart)


form_percolation(p=0.45, number_of_frames=36, seed=3)
