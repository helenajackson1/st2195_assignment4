# Radius; pi is already built in
r <- 2 

#Function to compute the volume of a sphere with radius r 
volume <- function(r) {
  4/3*pi*r^3
}

#check that the function is running correctly; it should return approx 33.51 
volume(r)

#Function to compute the volumes of the spheres with radius r, r^2 and r^3
volume_vector <- function(r) {
  for (ii in 1:3){
    print(volume(r**ii))
  }
}
#run the function and check correct results are returned
volume_vector(r)



#Function to compute the volumes of the spheres with radius r, r^2 and r^3
volume_vector <- function(r) {
  #previous function was fine, but to avoid enclosing print() within the function
  #we use an empty list() called l_volumes
  l_volumes <- list()
  for (ii in 1:3){
    print(volume(r**ii))
    #and then append the volume results to it (add elements to the vector)
    l_volumes <- append(l_volumes, volume(r**ii))
  }
  return(l_volumes)
}
#Run volume_vector(r) and print the volumes of spheres with radius r, r^2, r^3
volume_vector(r)

#OR this returns l_volumes for the volume_vestor where r=2
l_volumes <- volume_vector(2)
volume_vector(r)

