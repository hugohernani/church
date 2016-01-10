class PhoneCategory < EnumerateIt::Base
  associate_values personal: 0, work: 1, other: 2
end
