# Run the APP
1. In Terminal, `cd` into `veterinary_clinic`
2. Run `bundle install`
2. Run  `ruby ./bin/run.rb` to start the CLI
3. If the following error message is returned: `zsh: permission denied: ./bin/run.rb`, run the following command: `chmod +x ruby ./bin/run.rb`

If you see `welcome to phase-3` printed in your Terminal, you should be good to go!

# Deliverables 
A local veterinary clinic has asked you to make a CLI app to help them track patients and other nearby clinics.

You will be doing all of the following in `lib/cli.rb`

## Break Out Activity #1

1. Create an array inside of the `initialize_app` called `patients`. Each `patient` should be a hash with the following key / value pairs: `id` (Integer), `species` (String), `name` (String), `owner` (String), `phone` (String)

2. Create a menu. Start by using `puts` to print a few strings: "Welcome to Flatiron Veterinary Clinic" ,  "Please Choose an Option:", "1. List All Patients", "0. Exit"

3. Use `gets.strip` to get an input from a user. Create an `if` or `case` statement with the following conditions: 
    - If the user inputs `1`, iterate over the `patients` array and `puts` each Patient's information (i.e., `id`, `species`, `name`, `owner`, `phone`).
    - If the user inputs `0`, output a message saying `Goodbye!` before exiting out of the program.

4. Practice using `binding.pry`. 
    - First, put a `binding.pry` before `patients`. 
    - Next, put one inside of each iteration over `patients` (You'll need to break the `each` into multiple lines). Run the app. When you get to the first `pry`, type `patients` in Terminal to verify the `patients` array. Type `exit` to continue to the next `pry`. Type `patient` to verify the Patient. Type `exit` to continue to the next `pry` until you've looped through the entire array. Remove / comment out any `binding.pry`s once done.

## Break Out Activity #2

5. Below the `patients` array, create a `clinics` array with a few clinics in it. Each `clinic` should be a hash with the following key / value pairs: `id` (Integer), `clinic_name` (String), `address` (String), `phone` (String).

6. Add a `puts` to your menu: `2. List All Clinics`. Add a case `2` to your case statement that iterates over the `clinics` array and `puts` each Clinic's full information (i.e., `id`, `clinic_name`, `address`, `phone`).

7. Add a `puts` to your menu: `3. List Patient Names`. Add a case `3` to your case statement that `puts` an array of the `name`s of all Patients. (`.map`)

7. Add a `puts` to your menu: `4. List Clinic Names`. Add a case `4` to your case statement that `puts` an array of the `clinic_name`s of all Clinics. (`.map`)

### Bonus

Add more complexity via the following:

1. Change `patients` / `clinics` to Global Variables stored outside of `initialize_app`
2. Add an option to list all Clinic addresses (`address`)
3. Write a method that will create a Patient using user inputs for `species`, `name`, `owner`, and `phone`. Add `puts '4. Add Patient'` along with a case that calls that method.
4. Once a `patient` is created, add the `patient` to the `patients` array.
